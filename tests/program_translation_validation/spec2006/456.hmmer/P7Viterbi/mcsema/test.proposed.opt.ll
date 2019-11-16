; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_407480.ResizePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4086e0.P7ViterbiTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7Viterbi(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -280
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 272
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
  %RAX.i1421 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -64
  store i64 %41, i64* %RAX.i1421, align 8
  %R9.i1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %42 = add i64 %7, -72
  store i64 %42, i64* %R9.i1419, align 8
  %R10.i1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %43 = add i64 %7, -80
  store i64 %43, i64* %R10.i1416, align 8
  %R11.i1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %44 = add i64 %7, -88
  store i64 %44, i64* %R11.i1413, align 8
  %RDI.i1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %45 = add i64 %7, -16
  %46 = load i64, i64* %RDI.i1409, align 8
  %47 = add i64 %10, 30
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1406 = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -12
  %52 = load i32, i32* %ESI.i1406, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1403 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RDX.i1403, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1400 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %RCX.i1400, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %R8.i1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -40
  %72 = load i64, i64* %R8.i1398, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -32
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RDI.i1409, align 8
  %RSI.i1391 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %82 = add i64 %76, -12
  %83 = add i64 %78, 7
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RSI.i1391, align 8
  %87 = add i64 %76, -24
  %88 = add i64 %78, 11
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RCX.i1400, align 8
  %91 = add i64 %90, 136
  %92 = add i64 %78, 17
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDX.i1403, align 8
  %96 = load i64, i64* %RAX.i1421, align 8
  store i64 %96, i64* %RCX.i1400, align 8
  %97 = load i64, i64* %R9.i1419, align 8
  store i64 %97, i64* %R8.i1398, align 8
  %98 = load i64, i64* %R10.i1416, align 8
  store i64 %98, i64* %R9.i1419, align 8
  %99 = bitcast i64* %6 to i64**
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %R11.i1413, align 8
  %102 = add i64 %78, 30
  store i64 %102, i64* %3, align 8
  store i64 %101, i64* %100, align 8
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, -58604
  %105 = add i64 %103, 5
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %108, align 8
  store i64 %107, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  %call2_41596c = tail call %struct.Memory* @sub_407480.ResizePlan7Matrix(%struct.State* %0, i64 %104, %struct.Memory* %2)
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -56
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i1421, align 8
  %115 = add i64 %111, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RAX.i1421, align 8
  %118 = add i64 %117, 16
  %119 = add i64 %111, 14
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  store i32 0, i32* %120, align 4
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -24
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RAX.i1421, align 8
  %127 = add i64 %126, 336
  %128 = add i64 %123, 10
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RDX.i1403, align 8
  %132 = add i64 %121, -56
  %133 = add i64 %123, 14
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RAX.i1421, align 8
  %136 = add i64 %123, 17
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %RAX.i1421, align 8
  %EDX.i1354 = bitcast %union.anon* %56 to i32*
  %139 = add i64 %123, 19
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  store i32 %130, i32* %140, align 4
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -56
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX.i1421, align 8
  %147 = add i64 %143, 7
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RAX.i1421, align 8
  %150 = add i64 %149, 12
  %151 = add i64 %143, 14
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  store i32 -987654321, i32* %152, align 4
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -56
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 4
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %154 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RAX.i1421, align 8
  %159 = add i64 %155, 7
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX.i1421, align 8
  %162 = add i64 %161, 8
  %163 = add i64 %155, 14
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  store i32 -987654321, i32* %164, align 4
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -56
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 4
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RAX.i1421, align 8
  %171 = add i64 %167, 7
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RAX.i1421, align 8
  %174 = add i64 %173, 4
  %175 = add i64 %167, 14
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 -987654321, i32* %176, align 4
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -88
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 7
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181, align 4
  %EAX.i1322 = bitcast %union.anon* %40 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4159c3

block_.L_4159c3:                                  ; preds = %block_4159d6, %entry
  %182 = phi i64 [ %305, %block_4159d6 ], [ %.pre, %entry ]
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -88
  %185 = add i64 %182, 3
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i1421, align 8
  %189 = add i64 %183, -24
  %190 = add i64 %182, 7
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RCX.i1400, align 8
  %193 = add i64 %192, 136
  %194 = add i64 %182, 13
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = sub i32 %187, %196
  %198 = icmp ult i32 %187, %196
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %14, align 1
  %200 = and i32 %197, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %21, align 1
  %205 = xor i32 %196, %187
  %206 = xor i32 %205, %197
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %27, align 1
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %30, align 1
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %33, align 1
  %214 = lshr i32 %187, 31
  %215 = lshr i32 %196, 31
  %216 = xor i32 %215, %214
  %217 = xor i32 %212, %214
  %218 = add nuw nsw i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %39, align 1
  %221 = icmp ne i8 %213, 0
  %222 = xor i1 %221, %219
  %.demorgan = or i1 %210, %222
  %.v = select i1 %.demorgan, i64 19, i64 87
  %223 = add i64 %182, %.v
  store i64 %223, i64* %3, align 8
  br i1 %.demorgan, label %block_4159d6, label %block_.L_415a1a

block_4159d6:                                     ; preds = %block_.L_4159c3
  %224 = add i64 %183, -80
  %225 = add i64 %223, 4
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RAX.i1421, align 8
  %228 = add i64 %223, 7
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RAX.i1421, align 8
  %231 = add i64 %223, 11
  store i64 %231, i64* %3, align 8
  %232 = load i32, i32* %186, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX.i1400, align 8
  %234 = shl nsw i64 %233, 2
  %235 = add i64 %234, %230
  %236 = add i64 %223, 18
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  store i32 -987654321, i32* %237, align 4
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -72
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX.i1421, align 8
  %244 = add i64 %240, 7
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RAX.i1421, align 8
  %247 = add i64 %238, -88
  %248 = add i64 %240, 11
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %RCX.i1400, align 8
  %252 = shl nsw i64 %251, 2
  %253 = add i64 %252, %246
  %254 = add i64 %240, 18
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  store i32 -987654321, i32* %255, align 4
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -64
  %258 = load i64, i64* %3, align 8
  %259 = add i64 %258, 4
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %257 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX.i1421, align 8
  %262 = add i64 %258, 7
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX.i1421, align 8
  %265 = add i64 %256, -88
  %266 = add i64 %258, 11
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %RCX.i1400, align 8
  %270 = shl nsw i64 %269, 2
  %271 = add i64 %270, %264
  %272 = add i64 %258, 18
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  store i32 -987654321, i32* %273, align 4
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -88
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 3
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = add i32 %279, 1
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX.i1421, align 8
  %282 = icmp eq i32 %279, -1
  %283 = icmp eq i32 %280, 0
  %284 = or i1 %282, %283
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %14, align 1
  %286 = and i32 %280, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  %291 = xor i32 %280, %279
  %292 = lshr i32 %291, 4
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %27, align 1
  %295 = zext i1 %283 to i8
  store i8 %295, i8* %30, align 1
  %296 = lshr i32 %280, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %33, align 1
  %298 = lshr i32 %279, 31
  %299 = xor i32 %296, %298
  %300 = add nuw nsw i32 %299, %296
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %39, align 1
  %303 = add i64 %276, 9
  store i64 %303, i64* %3, align 8
  store i32 %280, i32* %278, align 4
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, -82
  store i64 %305, i64* %3, align 8
  br label %block_.L_4159c3

block_.L_415a1a:                                  ; preds = %block_.L_4159c3
  %306 = add i64 %223, 4
  store i64 %306, i64* %3, align 8
  %307 = load i64, i64* %191, align 8
  store i64 %307, i64* %RAX.i1421, align 8
  %308 = add i64 %307, 136
  %309 = add i64 %223, 10
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RCX.i1400, align 8
  %ECX.i1270 = bitcast %union.anon* %63 to i32*
  %313 = add i64 %183, -252
  %314 = add i64 %223, 16
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  store i32 %311, i32* %315, align 4
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -24
  %318 = load i64, i64* %3, align 8
  %319 = add i64 %318, 4
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RAX.i1421, align 8
  %322 = add i64 %321, 312
  %323 = add i64 %318, 11
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RAX.i1421, align 8
  %326 = add i64 %318, 14
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RAX.i1421, align 8
  %329 = add i64 %316, -200
  %330 = add i64 %318, 21
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i64*
  store i64 %328, i64* %331, align 8
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -24
  %334 = load i64, i64* %3, align 8
  %335 = add i64 %334, 4
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %333 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RAX.i1421, align 8
  %338 = add i64 %337, 312
  %339 = add i64 %334, 11
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RAX.i1421, align 8
  %342 = add i64 %341, 24
  %343 = add i64 %334, 15
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RAX.i1421, align 8
  %346 = add i64 %332, -224
  %347 = add i64 %334, 22
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  store i64 %345, i64* %348, align 8
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -24
  %351 = load i64, i64* %3, align 8
  %352 = add i64 %351, 4
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RAX.i1421, align 8
  %355 = add i64 %354, 312
  %356 = add i64 %351, 11
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RAX.i1421, align 8
  %359 = add i64 %358, 40
  %360 = add i64 %351, 15
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %RAX.i1421, align 8
  %363 = add i64 %349, -240
  %364 = add i64 %351, 22
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  store i64 %362, i64* %365, align 8
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -24
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 4
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RAX.i1421, align 8
  %372 = add i64 %371, 312
  %373 = add i64 %368, 11
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RAX.i1421, align 8
  %376 = add i64 %375, 16
  %377 = add i64 %368, 15
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i1421, align 8
  %380 = add i64 %366, -216
  %381 = add i64 %368, 22
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i64*
  store i64 %379, i64* %382, align 8
  %383 = load i64, i64* %RBP.i, align 8
  %384 = add i64 %383, -24
  %385 = load i64, i64* %3, align 8
  %386 = add i64 %385, 4
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %384 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RAX.i1421, align 8
  %389 = add i64 %388, 312
  %390 = add i64 %385, 11
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i1421, align 8
  %393 = add i64 %392, 48
  %394 = add i64 %385, 15
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX.i1421, align 8
  %397 = add i64 %383, -248
  %398 = add i64 %385, 22
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i64*
  store i64 %396, i64* %399, align 8
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -24
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 4
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %401 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RAX.i1421, align 8
  %406 = add i64 %405, 312
  %407 = add i64 %402, 11
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RAX.i1421, align 8
  %410 = add i64 %409, 8
  %411 = add i64 %402, 15
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RAX.i1421, align 8
  %414 = add i64 %400, -208
  %415 = add i64 %402, 22
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  store i64 %413, i64* %416, align 8
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -24
  %419 = load i64, i64* %3, align 8
  %420 = add i64 %419, 4
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %418 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RAX.i1421, align 8
  %423 = add i64 %422, 312
  %424 = add i64 %419, 11
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RAX.i1421, align 8
  %427 = add i64 %426, 32
  %428 = add i64 %419, 15
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RAX.i1421, align 8
  %431 = add i64 %417, -232
  %432 = add i64 %419, 22
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i64*
  store i64 %430, i64* %433, align 8
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -24
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, 4
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RAX.i1421, align 8
  %440 = add i64 %439, 368
  %441 = add i64 %436, 11
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RAX.i1421, align 8
  %444 = add i64 %434, -168
  %445 = add i64 %436, 18
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i64*
  store i64 %443, i64* %446, align 8
  %447 = load i64, i64* %RBP.i, align 8
  %448 = add i64 %447, -84
  %449 = load i64, i64* %3, align 8
  %450 = add i64 %449, 7
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %448 to i32*
  store i32 1, i32* %451, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_415adc

block_.L_415adc:                                  ; preds = %block_.L_416137, %block_.L_415a1a
  %452 = phi i64 [ %3308, %block_.L_416137 ], [ %.pre36, %block_.L_415a1a ]
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -84
  %455 = add i64 %452, 3
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i1421, align 8
  %459 = add i64 %453, -12
  %460 = add i64 %452, 6
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sub i32 %457, %462
  %464 = icmp ult i32 %457, %462
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %14, align 1
  %466 = and i32 %463, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  %471 = xor i32 %462, %457
  %472 = xor i32 %471, %463
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %27, align 1
  %476 = icmp eq i32 %463, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %30, align 1
  %478 = lshr i32 %463, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %33, align 1
  %480 = lshr i32 %457, 31
  %481 = lshr i32 %462, 31
  %482 = xor i32 %481, %480
  %483 = xor i32 %478, %480
  %484 = add nuw nsw i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %39, align 1
  %487 = icmp ne i8 %479, 0
  %488 = xor i1 %487, %485
  %.demorgan70 = or i1 %476, %488
  %.v73 = select i1 %.demorgan70, i64 12, i64 1646
  %489 = add i64 %452, %.v73
  store i64 %489, i64* %3, align 8
  br i1 %.demorgan70, label %block_415ae8, label %block_.L_41614a

block_415ae8:                                     ; preds = %block_.L_415adc
  %490 = add i64 %453, -64
  %491 = add i64 %489, 4
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i64*
  %493 = load i64, i64* %492, align 8
  store i64 %493, i64* %RAX.i1421, align 8
  %494 = add i64 %489, 8
  store i64 %494, i64* %3, align 8
  %495 = load i32, i32* %456, align 4
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %RCX.i1400, align 8
  %497 = shl nsw i64 %496, 3
  %498 = add i64 %497, %493
  %499 = add i64 %489, 12
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RAX.i1421, align 8
  %502 = add i64 %453, -104
  %503 = add i64 %489, 16
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  store i64 %501, i64* %504, align 8
  %505 = load i64, i64* %RBP.i, align 8
  %506 = add i64 %505, -80
  %507 = load i64, i64* %3, align 8
  %508 = add i64 %507, 4
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %506 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RAX.i1421, align 8
  %511 = add i64 %505, -84
  %512 = add i64 %507, 8
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %RCX.i1400, align 8
  %516 = shl nsw i64 %515, 3
  %517 = add i64 %516, %510
  %518 = add i64 %507, 12
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RAX.i1421, align 8
  %521 = add i64 %505, -112
  %522 = add i64 %507, 16
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  store i64 %520, i64* %523, align 8
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -72
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 4
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RAX.i1421, align 8
  %530 = add i64 %524, -84
  %531 = add i64 %526, 8
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = sext i32 %533 to i64
  store i64 %534, i64* %RCX.i1400, align 8
  %535 = shl nsw i64 %534, 3
  %536 = add i64 %535, %529
  %537 = add i64 %526, 12
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i1421, align 8
  %540 = add i64 %524, -120
  %541 = add i64 %526, 16
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  store i64 %539, i64* %542, align 8
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -64
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 4
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %544 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RAX.i1421, align 8
  %549 = add i64 %543, -84
  %550 = add i64 %545, 7
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %552, -1
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RDX.i1403, align 8
  %555 = icmp eq i32 %552, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %14, align 1
  %557 = and i32 %553, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  %562 = xor i32 %553, %552
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %27, align 1
  %566 = icmp eq i32 %553, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %30, align 1
  %568 = lshr i32 %553, 31
  %569 = trunc i32 %568 to i8
  store i8 %569, i8* %33, align 1
  %570 = lshr i32 %552, 31
  %571 = xor i32 %568, %570
  %572 = add nuw nsw i32 %571, %570
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %39, align 1
  %575 = sext i32 %553 to i64
  store i64 %575, i64* %RCX.i1400, align 8
  %576 = shl nsw i64 %575, 3
  %577 = add i64 %548, %576
  %578 = add i64 %545, 17
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RAX.i1421, align 8
  %581 = add i64 %543, -144
  %582 = add i64 %545, 24
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i64*
  store i64 %580, i64* %583, align 8
  %584 = load i64, i64* %RBP.i, align 8
  %585 = add i64 %584, -80
  %586 = load i64, i64* %3, align 8
  %587 = add i64 %586, 4
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %585 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX.i1421, align 8
  %590 = add i64 %584, -84
  %591 = add i64 %586, 7
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = add i32 %593, -1
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RDX.i1403, align 8
  %596 = icmp eq i32 %593, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %14, align 1
  %598 = and i32 %594, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %21, align 1
  %603 = xor i32 %594, %593
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %27, align 1
  %607 = icmp eq i32 %594, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %30, align 1
  %609 = lshr i32 %594, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %33, align 1
  %611 = lshr i32 %593, 31
  %612 = xor i32 %609, %611
  %613 = add nuw nsw i32 %612, %611
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %39, align 1
  %616 = sext i32 %594 to i64
  store i64 %616, i64* %RCX.i1400, align 8
  %617 = shl nsw i64 %616, 3
  %618 = add i64 %589, %617
  %619 = add i64 %586, 17
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RAX.i1421, align 8
  %622 = add i64 %584, -192
  %623 = add i64 %586, 24
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i64*
  store i64 %621, i64* %624, align 8
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -72
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 4
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX.i1421, align 8
  %631 = add i64 %625, -84
  %632 = add i64 %627, 7
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = add i32 %634, -1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RDX.i1403, align 8
  %637 = icmp eq i32 %634, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %14, align 1
  %639 = and i32 %635, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i32 %635, %634
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %27, align 1
  %648 = icmp eq i32 %635, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %30, align 1
  %650 = lshr i32 %635, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %33, align 1
  %652 = lshr i32 %634, 31
  %653 = xor i32 %650, %652
  %654 = add nuw nsw i32 %653, %652
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %39, align 1
  %657 = sext i32 %635 to i64
  store i64 %657, i64* %RCX.i1400, align 8
  %658 = shl nsw i64 %657, 3
  %659 = add i64 %630, %658
  %660 = add i64 %627, 17
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RAX.i1421, align 8
  %663 = add i64 %625, -160
  %664 = add i64 %627, 24
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  store i64 %662, i64* %665, align 8
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -56
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 4
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RAX.i1421, align 8
  %672 = add i64 %666, -84
  %673 = add i64 %668, 7
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = add i32 %675, -1
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RDX.i1403, align 8
  %678 = icmp eq i32 %675, 0
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %14, align 1
  %680 = and i32 %676, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %21, align 1
  %685 = xor i32 %676, %675
  %686 = lshr i32 %685, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %27, align 1
  %689 = icmp eq i32 %676, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %30, align 1
  %691 = lshr i32 %676, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %33, align 1
  %693 = lshr i32 %675, 31
  %694 = xor i32 %691, %693
  %695 = add nuw nsw i32 %694, %693
  %696 = icmp eq i32 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %39, align 1
  %698 = sext i32 %676 to i64
  store i64 %698, i64* %RCX.i1400, align 8
  %699 = shl nsw i64 %698, 3
  %700 = add i64 %671, %699
  %701 = add i64 %668, 17
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %RAX.i1421, align 8
  %704 = add i64 %668, 19
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RDX.i1403, align 8
  %708 = add i64 %666, -180
  %709 = add i64 %668, 25
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  store i32 %706, i32* %710, align 4
  %711 = load i64, i64* %RBP.i, align 8
  %712 = add i64 %711, -24
  %713 = load i64, i64* %3, align 8
  %714 = add i64 %713, 4
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %712 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RAX.i1421, align 8
  %717 = add i64 %716, 320
  %718 = add i64 %713, 11
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %RAX.i1421, align 8
  %721 = add i64 %711, -8
  %722 = add i64 %713, 15
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RCX.i1400, align 8
  %725 = add i64 %711, -84
  %726 = add i64 %713, 19
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  store i64 %729, i64* %RSI.i1391, align 8
  %730 = add i64 %724, %729
  %731 = add i64 %713, 23
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i8*
  %733 = load i8, i8* %732, align 1
  %734 = sext i8 %733 to i64
  %735 = and i64 %734, 4294967295
  store i64 %735, i64* %RDX.i1403, align 8
  %736 = sext i8 %733 to i64
  store i64 %736, i64* %RCX.i1400, align 8
  %737 = shl nsw i64 %736, 3
  %738 = add i64 %720, %737
  %739 = add i64 %713, 30
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX.i1421, align 8
  %742 = add i64 %711, -128
  %743 = add i64 %713, 34
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  store i64 %741, i64* %744, align 8
  %745 = load i64, i64* %RBP.i, align 8
  %746 = add i64 %745, -24
  %747 = load i64, i64* %3, align 8
  %748 = add i64 %747, 4
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RAX.i1421, align 8
  %751 = add i64 %750, 328
  %752 = add i64 %747, 11
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RAX.i1421, align 8
  %755 = add i64 %745, -8
  %756 = add i64 %747, 15
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RCX.i1400, align 8
  %759 = add i64 %745, -84
  %760 = add i64 %747, 19
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = sext i32 %762 to i64
  store i64 %763, i64* %RSI.i1391, align 8
  %764 = add i64 %758, %763
  %765 = add i64 %747, 23
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i8*
  %767 = load i8, i8* %766, align 1
  %768 = sext i8 %767 to i64
  %769 = and i64 %768, 4294967295
  store i64 %769, i64* %RDX.i1403, align 8
  %770 = sext i8 %767 to i64
  store i64 %770, i64* %RCX.i1400, align 8
  %771 = shl nsw i64 %770, 3
  %772 = add i64 %754, %771
  %773 = add i64 %747, 30
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %RAX.i1421, align 8
  %776 = add i64 %745, -136
  %777 = add i64 %747, 37
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i64*
  store i64 %775, i64* %778, align 8
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -104
  %781 = load i64, i64* %3, align 8
  %782 = add i64 %781, 4
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %780 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %RAX.i1421, align 8
  %785 = add i64 %781, 10
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  store i32 -987654321, i32* %786, align 4
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -112
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 4
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RAX.i1421, align 8
  %793 = add i64 %789, 10
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  store i32 -987654321, i32* %794, align 4
  %795 = load i64, i64* %RBP.i, align 8
  %796 = add i64 %795, -120
  %797 = load i64, i64* %3, align 8
  %798 = add i64 %797, 4
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %796 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RAX.i1421, align 8
  %801 = add i64 %797, 10
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  store i32 -987654321, i32* %802, align 4
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -88
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 7
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %804 to i32*
  store i32 1, i32* %807, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_415be5

block_.L_415be5:                                  ; preds = %block_.L_415e78, %block_415ae8
  %808 = phi i64 [ %2185, %block_.L_415e78 ], [ %.pre37, %block_415ae8 ]
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -88
  %811 = add i64 %808, 3
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RAX.i1421, align 8
  %815 = add i64 %809, -252
  %816 = add i64 %808, 9
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = sub i32 %813, %818
  %820 = icmp ult i32 %813, %818
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %14, align 1
  %822 = and i32 %819, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %21, align 1
  %827 = xor i32 %818, %813
  %828 = xor i32 %827, %819
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %27, align 1
  %832 = icmp eq i32 %819, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %30, align 1
  %834 = lshr i32 %819, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %33, align 1
  %836 = lshr i32 %813, 31
  %837 = lshr i32 %818, 31
  %838 = xor i32 %837, %836
  %839 = xor i32 %834, %836
  %840 = add nuw nsw i32 %839, %838
  %841 = icmp eq i32 %840, 2
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %39, align 1
  %843 = icmp ne i8 %835, 0
  %844 = xor i1 %843, %841
  %.demorgan71 = or i1 %832, %844
  %.v75 = select i1 %.demorgan71, i64 15, i64 678
  %845 = add i64 %808, %.v75
  store i64 %845, i64* %3, align 8
  br i1 %.demorgan71, label %block_415bf4, label %block_.L_415e8b

block_415bf4:                                     ; preds = %block_.L_415be5
  %846 = add i64 %809, -144
  %847 = add i64 %845, 7
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %RAX.i1421, align 8
  %850 = add i64 %845, 10
  store i64 %850, i64* %3, align 8
  %851 = load i32, i32* %812, align 4
  %852 = add i32 %851, -1
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RCX.i1400, align 8
  %854 = icmp eq i32 %851, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %14, align 1
  %856 = and i32 %852, 255
  %857 = tail call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %21, align 1
  %861 = xor i32 %852, %851
  %862 = lshr i32 %861, 4
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  store i8 %864, i8* %27, align 1
  %865 = icmp eq i32 %852, 0
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %30, align 1
  %867 = lshr i32 %852, 31
  %868 = trunc i32 %867 to i8
  store i8 %868, i8* %33, align 1
  %869 = lshr i32 %851, 31
  %870 = xor i32 %867, %869
  %871 = add nuw nsw i32 %870, %869
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %39, align 1
  %874 = sext i32 %852 to i64
  store i64 %874, i64* %RDX.i1403, align 8
  %875 = shl nsw i64 %874, 2
  %876 = add i64 %849, %875
  %877 = add i64 %845, 19
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RCX.i1400, align 8
  %881 = add i64 %809, -200
  %882 = add i64 %845, 26
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RAX.i1421, align 8
  %885 = add i64 %845, 29
  store i64 %885, i64* %3, align 8
  %886 = load i32, i32* %812, align 4
  %887 = add i32 %886, -1
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RSI.i1391, align 8
  %889 = icmp eq i32 %886, 0
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
  %909 = sext i32 %887 to i64
  store i64 %909, i64* %RDX.i1403, align 8
  %910 = shl nsw i64 %909, 2
  %911 = add i64 %884, %910
  %912 = add i64 %845, 38
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, %879
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RCX.i1400, align 8
  %917 = icmp ult i32 %915, %879
  %918 = icmp ult i32 %915, %914
  %919 = or i1 %917, %918
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = and i32 %915, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  %926 = xor i32 %914, %879
  %927 = xor i32 %926, %915
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %27, align 1
  %931 = icmp eq i32 %915, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %30, align 1
  %933 = lshr i32 %915, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %33, align 1
  %935 = lshr i32 %879, 31
  %936 = lshr i32 %914, 31
  %937 = xor i32 %933, %935
  %938 = xor i32 %933, %936
  %939 = add nuw nsw i32 %937, %938
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %39, align 1
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -104
  %944 = add i64 %845, 42
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RAX.i1421, align 8
  %947 = add i64 %942, -88
  %948 = add i64 %845, 46
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = sext i32 %950 to i64
  store i64 %951, i64* %RDX.i1403, align 8
  %952 = shl nsw i64 %951, 2
  %953 = add i64 %952, %946
  %954 = add i64 %845, 49
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  store i32 %915, i32* %955, align 4
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -160
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 7
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RAX.i1421, align 8
  %962 = add i64 %956, -88
  %963 = add i64 %958, 10
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = add i32 %965, -1
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RCX.i1400, align 8
  %968 = icmp eq i32 %965, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %14, align 1
  %970 = and i32 %966, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %21, align 1
  %975 = xor i32 %966, %965
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %27, align 1
  %979 = icmp eq i32 %966, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %30, align 1
  %981 = lshr i32 %966, 31
  %982 = trunc i32 %981 to i8
  store i8 %982, i8* %33, align 1
  %983 = lshr i32 %965, 31
  %984 = xor i32 %981, %983
  %985 = add nuw nsw i32 %984, %983
  %986 = icmp eq i32 %985, 2
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %39, align 1
  %988 = sext i32 %966 to i64
  store i64 %988, i64* %RDX.i1403, align 8
  %989 = shl nsw i64 %988, 2
  %990 = add i64 %961, %989
  %991 = add i64 %958, 19
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RCX.i1400, align 8
  %995 = add i64 %956, -224
  %996 = add i64 %958, 26
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  %998 = load i64, i64* %997, align 8
  store i64 %998, i64* %RAX.i1421, align 8
  %999 = add i64 %958, 29
  store i64 %999, i64* %3, align 8
  %1000 = load i32, i32* %964, align 4
  %1001 = add i32 %1000, -1
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RSI.i1391, align 8
  %1003 = icmp eq i32 %1000, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %14, align 1
  %1005 = and i32 %1001, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  %1010 = xor i32 %1001, %1000
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %27, align 1
  %1014 = icmp eq i32 %1001, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %30, align 1
  %1016 = lshr i32 %1001, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %33, align 1
  %1018 = lshr i32 %1000, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %39, align 1
  %1023 = sext i32 %1001 to i64
  store i64 %1023, i64* %RDX.i1403, align 8
  %1024 = shl nsw i64 %1023, 2
  %1025 = add i64 %998, %1024
  %1026 = add i64 %958, 38
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = add i32 %1028, %993
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RCX.i1400, align 8
  %1031 = icmp ult i32 %1029, %993
  %1032 = icmp ult i32 %1029, %1028
  %1033 = or i1 %1031, %1032
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %14, align 1
  %1035 = and i32 %1029, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %21, align 1
  %1040 = xor i32 %1028, %993
  %1041 = xor i32 %1040, %1029
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  store i8 %1044, i8* %27, align 1
  %1045 = icmp eq i32 %1029, 0
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %30, align 1
  %1047 = lshr i32 %1029, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %33, align 1
  %1049 = lshr i32 %993, 31
  %1050 = lshr i32 %1028, 31
  %1051 = xor i32 %1047, %1049
  %1052 = xor i32 %1047, %1050
  %1053 = add nuw nsw i32 %1051, %1052
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %39, align 1
  %1056 = load i64, i64* %RBP.i, align 8
  %1057 = add i64 %1056, -92
  %1058 = add i64 %958, 41
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  store i32 %1029, i32* %1059, align 4
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -104
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RAX.i1421, align 8
  %1066 = add i64 %1060, -88
  %1067 = add i64 %1062, 8
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = sext i32 %1069 to i64
  store i64 %1070, i64* %RDX.i1403, align 8
  %1071 = load i32, i32* %ECX.i1270, align 4
  %1072 = shl nsw i64 %1070, 2
  %1073 = add i64 %1065, %1072
  %1074 = add i64 %1062, 11
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sub i32 %1071, %1076
  %1078 = icmp ult i32 %1071, %1076
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = and i32 %1077, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i32 %1076, %1071
  %1086 = xor i32 %1085, %1077
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %27, align 1
  %1090 = icmp eq i32 %1077, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %30, align 1
  %1092 = lshr i32 %1077, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %33, align 1
  %1094 = lshr i32 %1071, 31
  %1095 = lshr i32 %1076, 31
  %1096 = xor i32 %1095, %1094
  %1097 = xor i32 %1092, %1094
  %1098 = add nuw nsw i32 %1097, %1096
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %39, align 1
  %1101 = icmp ne i8 %1093, 0
  %1102 = xor i1 %1101, %1099
  %1103 = or i1 %1090, %1102
  %.v85 = select i1 %1103, i64 31, i64 17
  %1104 = add i64 %1062, %.v85
  store i64 %1104, i64* %3, align 8
  br i1 %1103, label %block_.L_415c6d, label %block_415c5f

block_415c5f:                                     ; preds = %block_415bf4
  %1105 = add i64 %1060, -92
  %1106 = add i64 %1104, 3
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RAX.i1421, align 8
  %1110 = add i64 %1104, 7
  store i64 %1110, i64* %3, align 8
  %1111 = load i64, i64* %1064, align 8
  store i64 %1111, i64* %RCX.i1400, align 8
  %1112 = add i64 %1104, 11
  store i64 %1112, i64* %3, align 8
  %1113 = load i32, i32* %1068, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RDX.i1403, align 8
  %1115 = shl nsw i64 %1114, 2
  %1116 = add i64 %1115, %1111
  %1117 = add i64 %1104, 14
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  store i32 %1108, i32* %1118, align 4
  %.pre38 = load i64, i64* %RBP.i, align 8
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_415c6d

block_.L_415c6d:                                  ; preds = %block_415c5f, %block_415bf4
  %1119 = phi i64 [ %.pre39, %block_415c5f ], [ %1104, %block_415bf4 ]
  %1120 = phi i64 [ %.pre38, %block_415c5f ], [ %1060, %block_415bf4 ]
  %1121 = add i64 %1120, -192
  %1122 = add i64 %1119, 7
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RAX.i1421, align 8
  %1125 = add i64 %1120, -88
  %1126 = add i64 %1119, 10
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i32 %1128, -1
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RCX.i1400, align 8
  %1131 = icmp eq i32 %1128, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %14, align 1
  %1133 = and i32 %1129, 255
  %1134 = tail call i32 @llvm.ctpop.i32(i32 %1133)
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = xor i8 %1136, 1
  store i8 %1137, i8* %21, align 1
  %1138 = xor i32 %1129, %1128
  %1139 = lshr i32 %1138, 4
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  store i8 %1141, i8* %27, align 1
  %1142 = icmp eq i32 %1129, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %30, align 1
  %1144 = lshr i32 %1129, 31
  %1145 = trunc i32 %1144 to i8
  store i8 %1145, i8* %33, align 1
  %1146 = lshr i32 %1128, 31
  %1147 = xor i32 %1144, %1146
  %1148 = add nuw nsw i32 %1147, %1146
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %39, align 1
  %1151 = sext i32 %1129 to i64
  store i64 %1151, i64* %RDX.i1403, align 8
  %1152 = shl nsw i64 %1151, 2
  %1153 = add i64 %1124, %1152
  %1154 = add i64 %1119, 19
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i32*
  %1156 = load i32, i32* %1155, align 4
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RCX.i1400, align 8
  %1158 = add i64 %1120, -240
  %1159 = add i64 %1119, 26
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RAX.i1421, align 8
  %1162 = add i64 %1119, 29
  store i64 %1162, i64* %3, align 8
  %1163 = load i32, i32* %1127, align 4
  %1164 = add i32 %1163, -1
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RSI.i1391, align 8
  %1166 = icmp eq i32 %1163, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %14, align 1
  %1168 = and i32 %1164, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  %1173 = xor i32 %1164, %1163
  %1174 = lshr i32 %1173, 4
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %27, align 1
  %1177 = icmp eq i32 %1164, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %30, align 1
  %1179 = lshr i32 %1164, 31
  %1180 = trunc i32 %1179 to i8
  store i8 %1180, i8* %33, align 1
  %1181 = lshr i32 %1163, 31
  %1182 = xor i32 %1179, %1181
  %1183 = add nuw nsw i32 %1182, %1181
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %39, align 1
  %1186 = sext i32 %1164 to i64
  store i64 %1186, i64* %RDX.i1403, align 8
  %1187 = shl nsw i64 %1186, 2
  %1188 = add i64 %1161, %1187
  %1189 = add i64 %1119, 38
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = add i32 %1191, %1156
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RCX.i1400, align 8
  %1194 = icmp ult i32 %1192, %1156
  %1195 = icmp ult i32 %1192, %1191
  %1196 = or i1 %1194, %1195
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %14, align 1
  %1198 = and i32 %1192, 255
  %1199 = tail call i32 @llvm.ctpop.i32(i32 %1198)
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  store i8 %1202, i8* %21, align 1
  %1203 = xor i32 %1191, %1156
  %1204 = xor i32 %1203, %1192
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %27, align 1
  %1208 = icmp eq i32 %1192, 0
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %30, align 1
  %1210 = lshr i32 %1192, 31
  %1211 = trunc i32 %1210 to i8
  store i8 %1211, i8* %33, align 1
  %1212 = lshr i32 %1156, 31
  %1213 = lshr i32 %1191, 31
  %1214 = xor i32 %1210, %1212
  %1215 = xor i32 %1210, %1213
  %1216 = add nuw nsw i32 %1214, %1215
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %39, align 1
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -92
  %1221 = add i64 %1119, 41
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  store i32 %1192, i32* %1222, align 4
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -104
  %1225 = load i64, i64* %3, align 8
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1224 to i64*
  %1228 = load i64, i64* %1227, align 8
  store i64 %1228, i64* %RAX.i1421, align 8
  %1229 = add i64 %1223, -88
  %1230 = add i64 %1225, 8
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sext i32 %1232 to i64
  store i64 %1233, i64* %RDX.i1403, align 8
  %1234 = load i32, i32* %ECX.i1270, align 4
  %1235 = shl nsw i64 %1233, 2
  %1236 = add i64 %1228, %1235
  %1237 = add i64 %1225, 11
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = sub i32 %1234, %1239
  %1241 = icmp ult i32 %1234, %1239
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %14, align 1
  %1243 = and i32 %1240, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %21, align 1
  %1248 = xor i32 %1239, %1234
  %1249 = xor i32 %1248, %1240
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %27, align 1
  %1253 = icmp eq i32 %1240, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %30, align 1
  %1255 = lshr i32 %1240, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %33, align 1
  %1257 = lshr i32 %1234, 31
  %1258 = lshr i32 %1239, 31
  %1259 = xor i32 %1258, %1257
  %1260 = xor i32 %1255, %1257
  %1261 = add nuw nsw i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %39, align 1
  %1264 = icmp ne i8 %1256, 0
  %1265 = xor i1 %1264, %1262
  %1266 = or i1 %1253, %1265
  %.v86 = select i1 %1266, i64 31, i64 17
  %1267 = add i64 %1225, %.v86
  store i64 %1267, i64* %3, align 8
  br i1 %1266, label %block_.L_415cb5, label %block_415ca7

block_415ca7:                                     ; preds = %block_.L_415c6d
  %1268 = add i64 %1223, -92
  %1269 = add i64 %1267, 3
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RAX.i1421, align 8
  %1273 = add i64 %1267, 7
  store i64 %1273, i64* %3, align 8
  %1274 = load i64, i64* %1227, align 8
  store i64 %1274, i64* %RCX.i1400, align 8
  %1275 = add i64 %1267, 11
  store i64 %1275, i64* %3, align 8
  %1276 = load i32, i32* %1231, align 4
  %1277 = sext i32 %1276 to i64
  store i64 %1277, i64* %RDX.i1403, align 8
  %1278 = shl nsw i64 %1277, 2
  %1279 = add i64 %1278, %1274
  %1280 = add i64 %1267, 14
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  store i32 %1271, i32* %1281, align 4
  %.pre40 = load i64, i64* %RBP.i, align 8
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_415cb5

block_.L_415cb5:                                  ; preds = %block_415ca7, %block_.L_415c6d
  %1282 = phi i64 [ %.pre41, %block_415ca7 ], [ %1267, %block_.L_415c6d ]
  %1283 = phi i64 [ %.pre40, %block_415ca7 ], [ %1223, %block_.L_415c6d ]
  %1284 = add i64 %1283, -180
  %1285 = add i64 %1282, 6
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RAX.i1421, align 8
  %1289 = add i64 %1283, -168
  %1290 = add i64 %1282, 13
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RCX.i1400, align 8
  %1293 = add i64 %1283, -88
  %1294 = add i64 %1282, 17
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RDX.i1403, align 8
  %1298 = shl nsw i64 %1297, 2
  %1299 = add i64 %1292, %1298
  %1300 = add i64 %1282, 20
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, %1287
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RAX.i1421, align 8
  %1305 = icmp ult i32 %1303, %1287
  %1306 = icmp ult i32 %1303, %1302
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %14, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %21, align 1
  %1314 = xor i32 %1302, %1287
  %1315 = xor i32 %1314, %1303
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  store i8 %1318, i8* %27, align 1
  %1319 = icmp eq i32 %1303, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %30, align 1
  %1321 = lshr i32 %1303, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %33, align 1
  %1323 = lshr i32 %1287, 31
  %1324 = lshr i32 %1302, 31
  %1325 = xor i32 %1321, %1323
  %1326 = xor i32 %1321, %1324
  %1327 = add nuw nsw i32 %1325, %1326
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %39, align 1
  %1330 = add i64 %1283, -92
  %1331 = add i64 %1282, 23
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  store i32 %1303, i32* %1332, align 4
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -104
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1334 to i64*
  %1338 = load i64, i64* %1337, align 8
  store i64 %1338, i64* %RCX.i1400, align 8
  %1339 = add i64 %1333, -88
  %1340 = add i64 %1335, 8
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RDX.i1403, align 8
  %1344 = load i32, i32* %EAX.i1322, align 4
  %1345 = shl nsw i64 %1343, 2
  %1346 = add i64 %1338, %1345
  %1347 = add i64 %1335, 11
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = sub i32 %1344, %1349
  %1351 = icmp ult i32 %1344, %1349
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %14, align 1
  %1353 = and i32 %1350, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  %1358 = xor i32 %1349, %1344
  %1359 = xor i32 %1358, %1350
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %27, align 1
  %1363 = icmp eq i32 %1350, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %30, align 1
  %1365 = lshr i32 %1350, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %33, align 1
  %1367 = lshr i32 %1344, 31
  %1368 = lshr i32 %1349, 31
  %1369 = xor i32 %1368, %1367
  %1370 = xor i32 %1365, %1367
  %1371 = add nuw nsw i32 %1370, %1369
  %1372 = icmp eq i32 %1371, 2
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %39, align 1
  %1374 = icmp ne i8 %1366, 0
  %1375 = xor i1 %1374, %1372
  %1376 = or i1 %1363, %1375
  %.v87 = select i1 %1376, i64 31, i64 17
  %1377 = add i64 %1335, %.v87
  store i64 %1377, i64* %3, align 8
  br i1 %1376, label %block_.L_415ceb, label %block_415cdd

block_415cdd:                                     ; preds = %block_.L_415cb5
  %1378 = add i64 %1333, -92
  %1379 = add i64 %1377, 3
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RAX.i1421, align 8
  %1383 = add i64 %1377, 7
  store i64 %1383, i64* %3, align 8
  %1384 = load i64, i64* %1337, align 8
  store i64 %1384, i64* %RCX.i1400, align 8
  %1385 = add i64 %1377, 11
  store i64 %1385, i64* %3, align 8
  %1386 = load i32, i32* %1341, align 4
  %1387 = sext i32 %1386 to i64
  store i64 %1387, i64* %RDX.i1403, align 8
  %1388 = shl nsw i64 %1387, 2
  %1389 = add i64 %1388, %1384
  %1390 = add i64 %1377, 14
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  store i32 %1381, i32* %1391, align 4
  %.pre42 = load i64, i64* %RBP.i, align 8
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_415ceb

block_.L_415ceb:                                  ; preds = %block_415cdd, %block_.L_415cb5
  %1392 = phi i64 [ %.pre43, %block_415cdd ], [ %1377, %block_.L_415cb5 ]
  %1393 = phi i64 [ %.pre42, %block_415cdd ], [ %1333, %block_.L_415cb5 ]
  %1394 = add i64 %1393, -128
  %1395 = add i64 %1392, 4
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RAX.i1421, align 8
  %1398 = add i64 %1393, -88
  %1399 = add i64 %1392, 8
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = sext i32 %1401 to i64
  store i64 %1402, i64* %RCX.i1400, align 8
  %1403 = shl nsw i64 %1402, 2
  %1404 = add i64 %1403, %1397
  %1405 = add i64 %1392, 11
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RDX.i1403, align 8
  %1409 = add i64 %1393, -104
  %1410 = add i64 %1392, 15
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i64*
  %1412 = load i64, i64* %1411, align 8
  store i64 %1412, i64* %RAX.i1421, align 8
  %1413 = add i64 %1392, 19
  store i64 %1413, i64* %3, align 8
  %1414 = load i32, i32* %1400, align 4
  %1415 = sext i32 %1414 to i64
  store i64 %1415, i64* %RCX.i1400, align 8
  %1416 = shl nsw i64 %1415, 2
  %1417 = add i64 %1412, %1416
  %1418 = add i64 %1392, 22
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = add i32 %1420, %1407
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RDX.i1403, align 8
  %1423 = icmp ult i32 %1421, %1407
  %1424 = icmp ult i32 %1421, %1420
  %1425 = or i1 %1423, %1424
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %14, align 1
  %1427 = and i32 %1421, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  %1432 = xor i32 %1420, %1407
  %1433 = xor i32 %1432, %1421
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %27, align 1
  %1437 = icmp eq i32 %1421, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %30, align 1
  %1439 = lshr i32 %1421, 31
  %1440 = trunc i32 %1439 to i8
  store i8 %1440, i8* %33, align 1
  %1441 = lshr i32 %1407, 31
  %1442 = lshr i32 %1420, 31
  %1443 = xor i32 %1439, %1441
  %1444 = xor i32 %1439, %1442
  %1445 = add nuw nsw i32 %1443, %1444
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %39, align 1
  %1448 = add i64 %1392, 25
  store i64 %1448, i64* %3, align 8
  store i32 %1421, i32* %1419, align 4
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -104
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 4
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1450 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %RAX.i1421, align 8
  %1455 = add i64 %1449, -88
  %1456 = add i64 %1451, 8
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i1400, align 8
  %1460 = shl nsw i64 %1459, 2
  %1461 = add i64 %1460, %1454
  %1462 = add i64 %1451, 15
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = add i32 %1464, 987654321
  %1466 = icmp ult i32 %1464, -987654321
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %14, align 1
  %1468 = and i32 %1465, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %21, align 1
  %1473 = xor i32 %1465, %1464
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %27, align 1
  %1477 = icmp eq i32 %1465, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %30, align 1
  %1479 = lshr i32 %1465, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %33, align 1
  %1481 = lshr i32 %1464, 31
  %1482 = xor i32 %1481, 1
  %1483 = xor i32 %1479, %1481
  %1484 = add nuw nsw i32 %1483, %1482
  %1485 = icmp eq i32 %1484, 2
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %39, align 1
  %1487 = icmp ne i8 %1480, 0
  %1488 = xor i1 %1487, %1485
  %.v88 = select i1 %1488, i64 21, i64 36
  %1489 = add i64 %1451, %.v88
  store i64 %1489, i64* %3, align 8
  br i1 %1488, label %block_415d19, label %block_.L_415d28

block_415d19:                                     ; preds = %block_.L_415ceb
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %3, align 8
  %1491 = load i64, i64* %1453, align 8
  store i64 %1491, i64* %RAX.i1421, align 8
  %1492 = add i64 %1489, 8
  store i64 %1492, i64* %3, align 8
  %1493 = load i32, i32* %1457, align 4
  %1494 = sext i32 %1493 to i64
  store i64 %1494, i64* %RCX.i1400, align 8
  %1495 = shl nsw i64 %1494, 2
  %1496 = add i64 %1495, %1491
  %1497 = add i64 %1489, 15
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  store i32 -987654321, i32* %1498, align 4
  %.pre44 = load i64, i64* %RBP.i, align 8
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_415d28

block_.L_415d28:                                  ; preds = %block_.L_415ceb, %block_415d19
  %1499 = phi i64 [ %1489, %block_.L_415ceb ], [ %.pre45, %block_415d19 ]
  %1500 = phi i64 [ %1449, %block_.L_415ceb ], [ %.pre44, %block_415d19 ]
  %1501 = add i64 %1500, -112
  %1502 = add i64 %1499, 4
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RAX.i1421, align 8
  %1505 = add i64 %1500, -88
  %1506 = add i64 %1499, 7
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = add i32 %1508, -1
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i1400, align 8
  %1511 = icmp eq i32 %1508, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %14, align 1
  %1513 = and i32 %1509, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %21, align 1
  %1518 = xor i32 %1509, %1508
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %27, align 1
  %1522 = icmp eq i32 %1509, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %30, align 1
  %1524 = lshr i32 %1509, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %33, align 1
  %1526 = lshr i32 %1508, 31
  %1527 = xor i32 %1524, %1526
  %1528 = add nuw nsw i32 %1527, %1526
  %1529 = icmp eq i32 %1528, 2
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %39, align 1
  %1531 = sext i32 %1509 to i64
  store i64 %1531, i64* %RDX.i1403, align 8
  %1532 = shl nsw i64 %1531, 2
  %1533 = add i64 %1504, %1532
  %1534 = add i64 %1499, 16
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RCX.i1400, align 8
  %1538 = add i64 %1500, -248
  %1539 = add i64 %1499, 23
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RAX.i1421, align 8
  %1542 = add i64 %1499, 26
  store i64 %1542, i64* %3, align 8
  %1543 = load i32, i32* %1507, align 4
  %1544 = add i32 %1543, -1
  %1545 = zext i32 %1544 to i64
  store i64 %1545, i64* %RSI.i1391, align 8
  %1546 = icmp eq i32 %1543, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %14, align 1
  %1548 = and i32 %1544, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %21, align 1
  %1553 = xor i32 %1544, %1543
  %1554 = lshr i32 %1553, 4
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %27, align 1
  %1557 = icmp eq i32 %1544, 0
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %30, align 1
  %1559 = lshr i32 %1544, 31
  %1560 = trunc i32 %1559 to i8
  store i8 %1560, i8* %33, align 1
  %1561 = lshr i32 %1543, 31
  %1562 = xor i32 %1559, %1561
  %1563 = add nuw nsw i32 %1562, %1561
  %1564 = icmp eq i32 %1563, 2
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %39, align 1
  %1566 = sext i32 %1544 to i64
  store i64 %1566, i64* %RDX.i1403, align 8
  %1567 = shl nsw i64 %1566, 2
  %1568 = add i64 %1541, %1567
  %1569 = add i64 %1499, 35
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = add i32 %1571, %1536
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i1400, align 8
  %1574 = icmp ult i32 %1572, %1536
  %1575 = icmp ult i32 %1572, %1571
  %1576 = or i1 %1574, %1575
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %14, align 1
  %1578 = and i32 %1572, 255
  %1579 = tail call i32 @llvm.ctpop.i32(i32 %1578)
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = xor i8 %1581, 1
  store i8 %1582, i8* %21, align 1
  %1583 = xor i32 %1571, %1536
  %1584 = xor i32 %1583, %1572
  %1585 = lshr i32 %1584, 4
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  store i8 %1587, i8* %27, align 1
  %1588 = icmp eq i32 %1572, 0
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %30, align 1
  %1590 = lshr i32 %1572, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %33, align 1
  %1592 = lshr i32 %1536, 31
  %1593 = lshr i32 %1571, 31
  %1594 = xor i32 %1590, %1592
  %1595 = xor i32 %1590, %1593
  %1596 = add nuw nsw i32 %1594, %1595
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %39, align 1
  %1599 = load i64, i64* %RBP.i, align 8
  %1600 = add i64 %1599, -112
  %1601 = add i64 %1499, 39
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX.i1421, align 8
  %1604 = add i64 %1599, -88
  %1605 = add i64 %1499, 43
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sext i32 %1607 to i64
  store i64 %1608, i64* %RDX.i1403, align 8
  %1609 = shl nsw i64 %1608, 2
  %1610 = add i64 %1609, %1603
  %1611 = add i64 %1499, 46
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i32*
  store i32 %1572, i32* %1612, align 4
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -104
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, 4
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1614 to i64*
  %1618 = load i64, i64* %1617, align 8
  store i64 %1618, i64* %RAX.i1421, align 8
  %1619 = add i64 %1613, -88
  %1620 = add i64 %1615, 7
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = add i32 %1622, -1
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RCX.i1400, align 8
  %1625 = icmp eq i32 %1622, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %14, align 1
  %1627 = and i32 %1623, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i32 %1623, %1622
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %27, align 1
  %1636 = icmp eq i32 %1623, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %30, align 1
  %1638 = lshr i32 %1623, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %33, align 1
  %1640 = lshr i32 %1622, 31
  %1641 = xor i32 %1638, %1640
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %39, align 1
  %1645 = sext i32 %1623 to i64
  store i64 %1645, i64* %RDX.i1403, align 8
  %1646 = shl nsw i64 %1645, 2
  %1647 = add i64 %1618, %1646
  %1648 = add i64 %1615, 16
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RCX.i1400, align 8
  %1652 = add i64 %1613, -216
  %1653 = add i64 %1615, 23
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RAX.i1421, align 8
  %1656 = add i64 %1615, 26
  store i64 %1656, i64* %3, align 8
  %1657 = load i32, i32* %1621, align 4
  %1658 = add i32 %1657, -1
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RSI.i1391, align 8
  %1660 = icmp eq i32 %1657, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %14, align 1
  %1662 = and i32 %1658, 255
  %1663 = tail call i32 @llvm.ctpop.i32(i32 %1662)
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  store i8 %1666, i8* %21, align 1
  %1667 = xor i32 %1658, %1657
  %1668 = lshr i32 %1667, 4
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  store i8 %1670, i8* %27, align 1
  %1671 = icmp eq i32 %1658, 0
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %30, align 1
  %1673 = lshr i32 %1658, 31
  %1674 = trunc i32 %1673 to i8
  store i8 %1674, i8* %33, align 1
  %1675 = lshr i32 %1657, 31
  %1676 = xor i32 %1673, %1675
  %1677 = add nuw nsw i32 %1676, %1675
  %1678 = icmp eq i32 %1677, 2
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %39, align 1
  %1680 = sext i32 %1658 to i64
  store i64 %1680, i64* %RDX.i1403, align 8
  %1681 = shl nsw i64 %1680, 2
  %1682 = add i64 %1655, %1681
  %1683 = add i64 %1615, 35
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = add i32 %1685, %1650
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RCX.i1400, align 8
  %1688 = icmp ult i32 %1686, %1650
  %1689 = icmp ult i32 %1686, %1685
  %1690 = or i1 %1688, %1689
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %14, align 1
  %1692 = and i32 %1686, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %21, align 1
  %1697 = xor i32 %1685, %1650
  %1698 = xor i32 %1697, %1686
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %27, align 1
  %1702 = icmp eq i32 %1686, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %30, align 1
  %1704 = lshr i32 %1686, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %33, align 1
  %1706 = lshr i32 %1650, 31
  %1707 = lshr i32 %1685, 31
  %1708 = xor i32 %1704, %1706
  %1709 = xor i32 %1704, %1707
  %1710 = add nuw nsw i32 %1708, %1709
  %1711 = icmp eq i32 %1710, 2
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %39, align 1
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -92
  %1715 = add i64 %1615, 38
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  store i32 %1686, i32* %1716, align 4
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -112
  %1719 = load i64, i64* %3, align 8
  %1720 = add i64 %1719, 4
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1718 to i64*
  %1722 = load i64, i64* %1721, align 8
  store i64 %1722, i64* %RAX.i1421, align 8
  %1723 = add i64 %1717, -88
  %1724 = add i64 %1719, 8
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i32*
  %1726 = load i32, i32* %1725, align 4
  %1727 = sext i32 %1726 to i64
  store i64 %1727, i64* %RDX.i1403, align 8
  %1728 = load i32, i32* %ECX.i1270, align 4
  %1729 = shl nsw i64 %1727, 2
  %1730 = add i64 %1722, %1729
  %1731 = add i64 %1719, 11
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = sub i32 %1728, %1733
  %1735 = icmp ult i32 %1728, %1733
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %14, align 1
  %1737 = and i32 %1734, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %21, align 1
  %1742 = xor i32 %1733, %1728
  %1743 = xor i32 %1742, %1734
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %27, align 1
  %1747 = icmp eq i32 %1734, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %30, align 1
  %1749 = lshr i32 %1734, 31
  %1750 = trunc i32 %1749 to i8
  store i8 %1750, i8* %33, align 1
  %1751 = lshr i32 %1728, 31
  %1752 = lshr i32 %1733, 31
  %1753 = xor i32 %1752, %1751
  %1754 = xor i32 %1749, %1751
  %1755 = add nuw nsw i32 %1754, %1753
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %39, align 1
  %1758 = icmp ne i8 %1750, 0
  %1759 = xor i1 %1758, %1756
  %1760 = or i1 %1747, %1759
  %.v89 = select i1 %1760, i64 31, i64 17
  %1761 = add i64 %1719, %.v89
  store i64 %1761, i64* %3, align 8
  br i1 %1760, label %block_.L_415d9b, label %block_415d8d

block_415d8d:                                     ; preds = %block_.L_415d28
  %1762 = add i64 %1717, -92
  %1763 = add i64 %1761, 3
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RAX.i1421, align 8
  %1767 = add i64 %1761, 7
  store i64 %1767, i64* %3, align 8
  %1768 = load i64, i64* %1721, align 8
  store i64 %1768, i64* %RCX.i1400, align 8
  %1769 = add i64 %1761, 11
  store i64 %1769, i64* %3, align 8
  %1770 = load i32, i32* %1725, align 4
  %1771 = sext i32 %1770 to i64
  store i64 %1771, i64* %RDX.i1403, align 8
  %1772 = shl nsw i64 %1771, 2
  %1773 = add i64 %1772, %1768
  %1774 = add i64 %1761, 14
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  store i32 %1765, i32* %1775, align 4
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_415d9b

block_.L_415d9b:                                  ; preds = %block_415d8d, %block_.L_415d28
  %1776 = phi i64 [ %.pre47, %block_415d8d ], [ %1761, %block_.L_415d28 ]
  %1777 = phi i64 [ %.pre46, %block_415d8d ], [ %1717, %block_.L_415d28 ]
  %1778 = add i64 %1777, -112
  %1779 = add i64 %1776, 4
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i64*
  %1781 = load i64, i64* %1780, align 8
  store i64 %1781, i64* %RAX.i1421, align 8
  %1782 = add i64 %1777, -88
  %1783 = add i64 %1776, 8
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = sext i32 %1785 to i64
  store i64 %1786, i64* %RCX.i1400, align 8
  %1787 = shl nsw i64 %1786, 2
  %1788 = add i64 %1787, %1781
  %1789 = add i64 %1776, 15
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i32*
  %1791 = load i32, i32* %1790, align 4
  %1792 = add i32 %1791, 987654321
  %1793 = icmp ult i32 %1791, -987654321
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %14, align 1
  %1795 = and i32 %1792, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  %1800 = xor i32 %1792, %1791
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %27, align 1
  %1804 = icmp eq i32 %1792, 0
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %30, align 1
  %1806 = lshr i32 %1792, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %33, align 1
  %1808 = lshr i32 %1791, 31
  %1809 = xor i32 %1808, 1
  %1810 = xor i32 %1806, %1808
  %1811 = add nuw nsw i32 %1810, %1809
  %1812 = icmp eq i32 %1811, 2
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %39, align 1
  %1814 = icmp ne i8 %1807, 0
  %1815 = xor i1 %1814, %1812
  %.v90 = select i1 %1815, i64 21, i64 36
  %1816 = add i64 %1776, %.v90
  store i64 %1816, i64* %3, align 8
  br i1 %1815, label %block_415db0, label %block_.L_415dbf

block_415db0:                                     ; preds = %block_.L_415d9b
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %3, align 8
  %1818 = load i64, i64* %1780, align 8
  store i64 %1818, i64* %RAX.i1421, align 8
  %1819 = add i64 %1816, 8
  store i64 %1819, i64* %3, align 8
  %1820 = load i32, i32* %1784, align 4
  %1821 = sext i32 %1820 to i64
  store i64 %1821, i64* %RCX.i1400, align 8
  %1822 = shl nsw i64 %1821, 2
  %1823 = add i64 %1822, %1818
  %1824 = add i64 %1816, 15
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  store i32 -987654321, i32* %1825, align 4
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_415dbf

block_.L_415dbf:                                  ; preds = %block_.L_415d9b, %block_415db0
  %1826 = phi i64 [ %1816, %block_.L_415d9b ], [ %.pre49, %block_415db0 ]
  %1827 = phi i64 [ %1777, %block_.L_415d9b ], [ %.pre48, %block_415db0 ]
  %1828 = add i64 %1827, -88
  %1829 = add i64 %1826, 3
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RAX.i1421, align 8
  %1833 = add i64 %1827, -252
  %1834 = add i64 %1826, 9
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i32*
  %1836 = load i32, i32* %1835, align 4
  %1837 = sub i32 %1831, %1836
  %1838 = icmp ult i32 %1831, %1836
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %14, align 1
  %1840 = and i32 %1837, 255
  %1841 = tail call i32 @llvm.ctpop.i32(i32 %1840)
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  store i8 %1844, i8* %21, align 1
  %1845 = xor i32 %1836, %1831
  %1846 = xor i32 %1845, %1837
  %1847 = lshr i32 %1846, 4
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  store i8 %1849, i8* %27, align 1
  %1850 = icmp eq i32 %1837, 0
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %30, align 1
  %1852 = lshr i32 %1837, 31
  %1853 = trunc i32 %1852 to i8
  store i8 %1853, i8* %33, align 1
  %1854 = lshr i32 %1831, 31
  %1855 = lshr i32 %1836, 31
  %1856 = xor i32 %1855, %1854
  %1857 = xor i32 %1852, %1854
  %1858 = add nuw nsw i32 %1857, %1856
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %39, align 1
  %1861 = icmp ne i8 %1853, 0
  %1862 = xor i1 %1861, %1859
  %.v91 = select i1 %1862, i64 15, i64 185
  %1863 = add i64 %1826, %.v91
  store i64 %1863, i64* %3, align 8
  br i1 %1862, label %block_415dce, label %block_.L_415e78

block_415dce:                                     ; preds = %block_.L_415dbf
  %1864 = add i64 %1827, -144
  %1865 = add i64 %1863, 7
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i64*
  %1867 = load i64, i64* %1866, align 8
  store i64 %1867, i64* %RAX.i1421, align 8
  %1868 = add i64 %1863, 11
  store i64 %1868, i64* %3, align 8
  %1869 = load i32, i32* %1830, align 4
  %1870 = sext i32 %1869 to i64
  store i64 %1870, i64* %RCX.i1400, align 8
  %1871 = shl nsw i64 %1870, 2
  %1872 = add i64 %1871, %1867
  %1873 = add i64 %1863, 14
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = zext i32 %1875 to i64
  store i64 %1876, i64* %RDX.i1403, align 8
  %1877 = add i64 %1827, -208
  %1878 = add i64 %1863, 21
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i64*
  %1880 = load i64, i64* %1879, align 8
  store i64 %1880, i64* %RAX.i1421, align 8
  %1881 = add i64 %1863, 25
  store i64 %1881, i64* %3, align 8
  %1882 = load i32, i32* %1830, align 4
  %1883 = sext i32 %1882 to i64
  store i64 %1883, i64* %RCX.i1400, align 8
  %1884 = shl nsw i64 %1883, 2
  %1885 = add i64 %1880, %1884
  %1886 = add i64 %1863, 28
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = add i32 %1888, %1875
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RDX.i1403, align 8
  %1891 = icmp ult i32 %1889, %1875
  %1892 = icmp ult i32 %1889, %1888
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %14, align 1
  %1895 = and i32 %1889, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %21, align 1
  %1900 = xor i32 %1888, %1875
  %1901 = xor i32 %1900, %1889
  %1902 = lshr i32 %1901, 4
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %27, align 1
  %1905 = icmp eq i32 %1889, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %30, align 1
  %1907 = lshr i32 %1889, 31
  %1908 = trunc i32 %1907 to i8
  store i8 %1908, i8* %33, align 1
  %1909 = lshr i32 %1875, 31
  %1910 = lshr i32 %1888, 31
  %1911 = xor i32 %1907, %1909
  %1912 = xor i32 %1907, %1910
  %1913 = add nuw nsw i32 %1911, %1912
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %39, align 1
  %1916 = add i64 %1827, -120
  %1917 = add i64 %1863, 32
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i1421, align 8
  %1920 = add i64 %1863, 36
  store i64 %1920, i64* %3, align 8
  %1921 = load i32, i32* %1830, align 4
  %1922 = sext i32 %1921 to i64
  store i64 %1922, i64* %RCX.i1400, align 8
  %1923 = shl nsw i64 %1922, 2
  %1924 = add i64 %1923, %1919
  %1925 = add i64 %1863, 39
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  store i32 %1889, i32* %1926, align 4
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -160
  %1929 = load i64, i64* %3, align 8
  %1930 = add i64 %1929, 7
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1928 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RAX.i1421, align 8
  %1933 = add i64 %1927, -88
  %1934 = add i64 %1929, 11
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = sext i32 %1936 to i64
  store i64 %1937, i64* %RCX.i1400, align 8
  %1938 = shl nsw i64 %1937, 2
  %1939 = add i64 %1938, %1932
  %1940 = add i64 %1929, 14
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RDX.i1403, align 8
  %1944 = add i64 %1927, -232
  %1945 = add i64 %1929, 21
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RAX.i1421, align 8
  %1948 = add i64 %1929, 25
  store i64 %1948, i64* %3, align 8
  %1949 = load i32, i32* %1935, align 4
  %1950 = sext i32 %1949 to i64
  store i64 %1950, i64* %RCX.i1400, align 8
  %1951 = shl nsw i64 %1950, 2
  %1952 = add i64 %1947, %1951
  %1953 = add i64 %1929, 28
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = add i32 %1955, %1942
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %RDX.i1403, align 8
  %1958 = icmp ult i32 %1956, %1942
  %1959 = icmp ult i32 %1956, %1955
  %1960 = or i1 %1958, %1959
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %14, align 1
  %1962 = and i32 %1956, 255
  %1963 = tail call i32 @llvm.ctpop.i32(i32 %1962)
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  store i8 %1966, i8* %21, align 1
  %1967 = xor i32 %1955, %1942
  %1968 = xor i32 %1967, %1956
  %1969 = lshr i32 %1968, 4
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  store i8 %1971, i8* %27, align 1
  %1972 = icmp eq i32 %1956, 0
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %30, align 1
  %1974 = lshr i32 %1956, 31
  %1975 = trunc i32 %1974 to i8
  store i8 %1975, i8* %33, align 1
  %1976 = lshr i32 %1942, 31
  %1977 = lshr i32 %1955, 31
  %1978 = xor i32 %1974, %1976
  %1979 = xor i32 %1974, %1977
  %1980 = add nuw nsw i32 %1978, %1979
  %1981 = icmp eq i32 %1980, 2
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %39, align 1
  %1983 = add i64 %1927, -92
  %1984 = add i64 %1929, 31
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  store i32 %1956, i32* %1985, align 4
  %1986 = load i64, i64* %RBP.i, align 8
  %1987 = add i64 %1986, -120
  %1988 = load i64, i64* %3, align 8
  %1989 = add i64 %1988, 4
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1987 to i64*
  %1991 = load i64, i64* %1990, align 8
  store i64 %1991, i64* %RAX.i1421, align 8
  %1992 = add i64 %1986, -88
  %1993 = add i64 %1988, 8
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = sext i32 %1995 to i64
  store i64 %1996, i64* %RCX.i1400, align 8
  %1997 = load i32, i32* %EDX.i1354, align 4
  %1998 = shl nsw i64 %1996, 2
  %1999 = add i64 %1991, %1998
  %2000 = add i64 %1988, 11
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = sub i32 %1997, %2002
  %2004 = icmp ult i32 %1997, %2002
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %14, align 1
  %2006 = and i32 %2003, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %21, align 1
  %2011 = xor i32 %2002, %1997
  %2012 = xor i32 %2011, %2003
  %2013 = lshr i32 %2012, 4
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  store i8 %2015, i8* %27, align 1
  %2016 = icmp eq i32 %2003, 0
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %30, align 1
  %2018 = lshr i32 %2003, 31
  %2019 = trunc i32 %2018 to i8
  store i8 %2019, i8* %33, align 1
  %2020 = lshr i32 %1997, 31
  %2021 = lshr i32 %2002, 31
  %2022 = xor i32 %2021, %2020
  %2023 = xor i32 %2018, %2020
  %2024 = add nuw nsw i32 %2023, %2022
  %2025 = icmp eq i32 %2024, 2
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %39, align 1
  %2027 = icmp ne i8 %2019, 0
  %2028 = xor i1 %2027, %2025
  %2029 = or i1 %2016, %2028
  %.v92 = select i1 %2029, i64 31, i64 17
  %2030 = add i64 %1988, %.v92
  store i64 %2030, i64* %3, align 8
  br i1 %2029, label %block_.L_415e33, label %block_415e25

block_415e25:                                     ; preds = %block_415dce
  %2031 = add i64 %1986, -92
  %2032 = add i64 %2030, 3
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = zext i32 %2034 to i64
  store i64 %2035, i64* %RAX.i1421, align 8
  %2036 = add i64 %2030, 7
  store i64 %2036, i64* %3, align 8
  %2037 = load i64, i64* %1990, align 8
  store i64 %2037, i64* %RCX.i1400, align 8
  %2038 = add i64 %2030, 11
  store i64 %2038, i64* %3, align 8
  %2039 = load i32, i32* %1994, align 4
  %2040 = sext i32 %2039 to i64
  store i64 %2040, i64* %RDX.i1403, align 8
  %2041 = shl nsw i64 %2040, 2
  %2042 = add i64 %2041, %2037
  %2043 = add i64 %2030, 14
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i32*
  store i32 %2034, i32* %2044, align 4
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_415e33

block_.L_415e33:                                  ; preds = %block_415e25, %block_415dce
  %2045 = phi i64 [ %.pre51, %block_415e25 ], [ %2030, %block_415dce ]
  %2046 = phi i64 [ %.pre50, %block_415e25 ], [ %1986, %block_415dce ]
  %2047 = add i64 %2046, -136
  %2048 = add i64 %2045, 7
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i64*
  %2050 = load i64, i64* %2049, align 8
  store i64 %2050, i64* %RAX.i1421, align 8
  %2051 = add i64 %2046, -88
  %2052 = add i64 %2045, 11
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = sext i32 %2054 to i64
  store i64 %2055, i64* %RCX.i1400, align 8
  %2056 = shl nsw i64 %2055, 2
  %2057 = add i64 %2056, %2050
  %2058 = add i64 %2045, 14
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %RDX.i1403, align 8
  %2062 = add i64 %2046, -120
  %2063 = add i64 %2045, 18
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i64*
  %2065 = load i64, i64* %2064, align 8
  store i64 %2065, i64* %RAX.i1421, align 8
  %2066 = add i64 %2045, 22
  store i64 %2066, i64* %3, align 8
  %2067 = load i32, i32* %2053, align 4
  %2068 = sext i32 %2067 to i64
  store i64 %2068, i64* %RCX.i1400, align 8
  %2069 = shl nsw i64 %2068, 2
  %2070 = add i64 %2065, %2069
  %2071 = add i64 %2045, 25
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = add i32 %2073, %2060
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RDX.i1403, align 8
  %2076 = icmp ult i32 %2074, %2060
  %2077 = icmp ult i32 %2074, %2073
  %2078 = or i1 %2076, %2077
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %14, align 1
  %2080 = and i32 %2074, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i32 %2073, %2060
  %2086 = xor i32 %2085, %2074
  %2087 = lshr i32 %2086, 4
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  store i8 %2089, i8* %27, align 1
  %2090 = icmp eq i32 %2074, 0
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %30, align 1
  %2092 = lshr i32 %2074, 31
  %2093 = trunc i32 %2092 to i8
  store i8 %2093, i8* %33, align 1
  %2094 = lshr i32 %2060, 31
  %2095 = lshr i32 %2073, 31
  %2096 = xor i32 %2092, %2094
  %2097 = xor i32 %2092, %2095
  %2098 = add nuw nsw i32 %2096, %2097
  %2099 = icmp eq i32 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %39, align 1
  %2101 = add i64 %2045, 28
  store i64 %2101, i64* %3, align 8
  store i32 %2074, i32* %2072, align 4
  %2102 = load i64, i64* %RBP.i, align 8
  %2103 = add i64 %2102, -120
  %2104 = load i64, i64* %3, align 8
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2103 to i64*
  %2107 = load i64, i64* %2106, align 8
  store i64 %2107, i64* %RAX.i1421, align 8
  %2108 = add i64 %2102, -88
  %2109 = add i64 %2104, 8
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = sext i32 %2111 to i64
  store i64 %2112, i64* %RCX.i1400, align 8
  %2113 = shl nsw i64 %2112, 2
  %2114 = add i64 %2113, %2107
  %2115 = add i64 %2104, 15
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = add i32 %2117, 987654321
  %2119 = icmp ult i32 %2117, -987654321
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %14, align 1
  %2121 = and i32 %2118, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %21, align 1
  %2126 = xor i32 %2118, %2117
  %2127 = lshr i32 %2126, 4
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  store i8 %2129, i8* %27, align 1
  %2130 = icmp eq i32 %2118, 0
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %30, align 1
  %2132 = lshr i32 %2118, 31
  %2133 = trunc i32 %2132 to i8
  store i8 %2133, i8* %33, align 1
  %2134 = lshr i32 %2117, 31
  %2135 = xor i32 %2134, 1
  %2136 = xor i32 %2132, %2134
  %2137 = add nuw nsw i32 %2136, %2135
  %2138 = icmp eq i32 %2137, 2
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %39, align 1
  %2140 = icmp ne i8 %2133, 0
  %2141 = xor i1 %2140, %2138
  %.v93 = select i1 %2141, i64 21, i64 36
  %2142 = add i64 %2104, %.v93
  store i64 %2142, i64* %3, align 8
  br i1 %2141, label %block_415e64, label %block_.L_415e73

block_415e64:                                     ; preds = %block_.L_415e33
  %2143 = add i64 %2142, 4
  store i64 %2143, i64* %3, align 8
  %2144 = load i64, i64* %2106, align 8
  store i64 %2144, i64* %RAX.i1421, align 8
  %2145 = add i64 %2142, 8
  store i64 %2145, i64* %3, align 8
  %2146 = load i32, i32* %2110, align 4
  %2147 = sext i32 %2146 to i64
  store i64 %2147, i64* %RCX.i1400, align 8
  %2148 = shl nsw i64 %2147, 2
  %2149 = add i64 %2148, %2144
  %2150 = add i64 %2142, 15
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  store i32 -987654321, i32* %2151, align 4
  %.pre52 = load i64, i64* %3, align 8
  %.pre53.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_415e73

block_.L_415e73:                                  ; preds = %block_.L_415e33, %block_415e64
  %.pre53 = phi i64 [ %2102, %block_.L_415e33 ], [ %.pre53.pre, %block_415e64 ]
  %2152 = phi i64 [ %2142, %block_.L_415e33 ], [ %.pre52, %block_415e64 ]
  %2153 = add i64 %2152, 5
  store i64 %2153, i64* %3, align 8
  br label %block_.L_415e78

block_.L_415e78:                                  ; preds = %block_.L_415dbf, %block_.L_415e73
  %2154 = phi i64 [ %1827, %block_.L_415dbf ], [ %.pre53, %block_.L_415e73 ]
  %2155 = phi i64 [ %1863, %block_.L_415dbf ], [ %2153, %block_.L_415e73 ]
  %2156 = add i64 %2154, -88
  %2157 = add i64 %2155, 8
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = add i32 %2159, 1
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RAX.i1421, align 8
  %2162 = icmp eq i32 %2159, -1
  %2163 = icmp eq i32 %2160, 0
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %14, align 1
  %2166 = and i32 %2160, 255
  %2167 = tail call i32 @llvm.ctpop.i32(i32 %2166)
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  %2170 = xor i8 %2169, 1
  store i8 %2170, i8* %21, align 1
  %2171 = xor i32 %2160, %2159
  %2172 = lshr i32 %2171, 4
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  store i8 %2174, i8* %27, align 1
  %2175 = zext i1 %2163 to i8
  store i8 %2175, i8* %30, align 1
  %2176 = lshr i32 %2160, 31
  %2177 = trunc i32 %2176 to i8
  store i8 %2177, i8* %33, align 1
  %2178 = lshr i32 %2159, 31
  %2179 = xor i32 %2176, %2178
  %2180 = add nuw nsw i32 %2179, %2176
  %2181 = icmp eq i32 %2180, 2
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %39, align 1
  %2183 = add i64 %2155, 14
  store i64 %2183, i64* %3, align 8
  store i32 %2160, i32* %2158, align 4
  %2184 = load i64, i64* %3, align 8
  %2185 = add i64 %2184, -673
  store i64 %2185, i64* %3, align 8
  br label %block_.L_415be5

block_.L_415e8b:                                  ; preds = %block_.L_415be5
  %2186 = add i64 %809, -56
  %2187 = add i64 %845, 4
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i64*
  %2189 = load i64, i64* %2188, align 8
  store i64 %2189, i64* %RAX.i1421, align 8
  %2190 = add i64 %809, -84
  %2191 = add i64 %845, 8
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = sext i32 %2193 to i64
  store i64 %2194, i64* %RCX.i1400, align 8
  %2195 = shl nsw i64 %2194, 3
  %2196 = add i64 %2195, %2189
  %2197 = add i64 %845, 12
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %RAX.i1421, align 8
  %2200 = add i64 %2199, 16
  %2201 = add i64 %845, 19
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  store i32 -987654321, i32* %2202, align 4
  %2203 = load i64, i64* %RBP.i, align 8
  %2204 = add i64 %2203, -56
  %2205 = load i64, i64* %3, align 8
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2204 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %RAX.i1421, align 8
  %2209 = add i64 %2203, -84
  %2210 = add i64 %2205, 7
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = add i32 %2212, -1
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RDX.i1403, align 8
  %2215 = icmp eq i32 %2212, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %14, align 1
  %2217 = and i32 %2213, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %21, align 1
  %2222 = xor i32 %2213, %2212
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %27, align 1
  %2226 = icmp eq i32 %2213, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %30, align 1
  %2228 = lshr i32 %2213, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %33, align 1
  %2230 = lshr i32 %2212, 31
  %2231 = xor i32 %2228, %2230
  %2232 = add nuw nsw i32 %2231, %2230
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %39, align 1
  %2235 = sext i32 %2213 to i64
  store i64 %2235, i64* %RCX.i1400, align 8
  %2236 = shl nsw i64 %2235, 3
  %2237 = add i64 %2208, %2236
  %2238 = add i64 %2205, 17
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i64*
  %2240 = load i64, i64* %2239, align 8
  store i64 %2240, i64* %RAX.i1421, align 8
  %2241 = add i64 %2240, 16
  %2242 = add i64 %2205, 20
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  %2244 = load i32, i32* %2243, align 4
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RDX.i1403, align 8
  %2246 = add i64 %2203, -24
  %2247 = add i64 %2205, 24
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i64*
  %2249 = load i64, i64* %2248, align 8
  store i64 %2249, i64* %RAX.i1421, align 8
  %2250 = add i64 %2249, 340
  %2251 = add i64 %2205, 30
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i32*
  %2253 = load i32, i32* %2252, align 4
  %2254 = add i32 %2253, %2244
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RDX.i1403, align 8
  %2256 = load i64, i64* %RBP.i, align 8
  %2257 = add i64 %2256, -92
  %2258 = add i64 %2205, 33
  store i64 %2258, i64* %3, align 8
  %2259 = inttoptr i64 %2257 to i32*
  store i32 %2254, i32* %2259, align 4
  %2260 = load i32, i32* %EDX.i1354, align 4
  %2261 = load i64, i64* %3, align 8
  %2262 = add i32 %2260, 987654321
  %2263 = icmp ult i32 %2260, -987654321
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %14, align 1
  %2265 = and i32 %2262, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %21, align 1
  %2270 = xor i32 %2262, %2260
  %2271 = lshr i32 %2270, 4
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  store i8 %2273, i8* %27, align 1
  %2274 = icmp eq i32 %2262, 0
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %30, align 1
  %2276 = lshr i32 %2262, 31
  %2277 = trunc i32 %2276 to i8
  store i8 %2277, i8* %33, align 1
  %2278 = lshr i32 %2260, 31
  %2279 = xor i32 %2278, 1
  %2280 = xor i32 %2276, %2278
  %2281 = add nuw nsw i32 %2280, %2279
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %39, align 1
  %2284 = icmp ne i8 %2277, 0
  %2285 = xor i1 %2284, %2282
  %2286 = or i1 %2274, %2285
  %.v76 = select i1 %2286, i64 30, i64 12
  %2287 = add i64 %2261, %.v76
  store i64 %2287, i64* %3, align 8
  br i1 %2286, label %block_.L_415edd, label %block_415ecb

block_415ecb:                                     ; preds = %block_.L_415e8b
  %2288 = load i64, i64* %RBP.i, align 8
  %2289 = add i64 %2288, -92
  %2290 = add i64 %2287, 3
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  %2292 = load i32, i32* %2291, align 4
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RAX.i1421, align 8
  %2294 = add i64 %2288, -56
  %2295 = add i64 %2287, 7
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i64*
  %2297 = load i64, i64* %2296, align 8
  store i64 %2297, i64* %RCX.i1400, align 8
  %2298 = add i64 %2288, -84
  %2299 = add i64 %2287, 11
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  %2301 = load i32, i32* %2300, align 4
  %2302 = sext i32 %2301 to i64
  store i64 %2302, i64* %RDX.i1403, align 8
  %2303 = shl nsw i64 %2302, 3
  %2304 = add i64 %2303, %2297
  %2305 = add i64 %2287, 15
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i64*
  %2307 = load i64, i64* %2306, align 8
  store i64 %2307, i64* %RCX.i1400, align 8
  %2308 = add i64 %2307, 16
  %2309 = add i64 %2287, 18
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i32*
  store i32 %2292, i32* %2310, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_415edd

block_.L_415edd:                                  ; preds = %block_415ecb, %block_.L_415e8b
  %2311 = phi i64 [ %.pre54, %block_415ecb ], [ %2287, %block_.L_415e8b ]
  %2312 = load i64, i64* %RBP.i, align 8
  %2313 = add i64 %2312, -184
  %2314 = add i64 %2311, 10
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  store i32 -987654321, i32* %2315, align 4
  %2316 = load i64, i64* %RBP.i, align 8
  %2317 = add i64 %2316, -64
  %2318 = load i64, i64* %3, align 8
  %2319 = add i64 %2318, 4
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2317 to i64*
  %2321 = load i64, i64* %2320, align 8
  store i64 %2321, i64* %RAX.i1421, align 8
  %2322 = add i64 %2316, -84
  %2323 = add i64 %2318, 8
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = sext i32 %2325 to i64
  store i64 %2326, i64* %RCX.i1400, align 8
  %2327 = shl nsw i64 %2326, 3
  %2328 = add i64 %2327, %2321
  %2329 = add i64 %2318, 12
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i64*
  %2331 = load i64, i64* %2330, align 8
  store i64 %2331, i64* %RAX.i1421, align 8
  %2332 = add i64 %2316, -152
  %2333 = add i64 %2318, 19
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i64*
  store i64 %2331, i64* %2334, align 8
  %2335 = load i64, i64* %RBP.i, align 8
  %2336 = add i64 %2335, -24
  %2337 = load i64, i64* %3, align 8
  %2338 = add i64 %2337, 4
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2336 to i64*
  %2340 = load i64, i64* %2339, align 8
  store i64 %2340, i64* %RAX.i1421, align 8
  %2341 = add i64 %2340, 376
  %2342 = add i64 %2337, 11
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i64*
  %2344 = load i64, i64* %2343, align 8
  store i64 %2344, i64* %RAX.i1421, align 8
  %2345 = add i64 %2335, -176
  %2346 = add i64 %2337, 18
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i64*
  store i64 %2344, i64* %2347, align 8
  %2348 = load i64, i64* %RBP.i, align 8
  %2349 = add i64 %2348, -88
  %2350 = load i64, i64* %3, align 8
  %2351 = add i64 %2350, 7
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2349 to i32*
  store i32 1, i32* %2352, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_415f13

block_.L_415f13:                                  ; preds = %block_.L_415f5a, %block_.L_415edd
  %2353 = phi i64 [ %2522, %block_.L_415f5a ], [ %.pre55, %block_.L_415edd ]
  %2354 = load i64, i64* %RBP.i, align 8
  %2355 = add i64 %2354, -88
  %2356 = add i64 %2353, 3
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = zext i32 %2358 to i64
  store i64 %2359, i64* %RAX.i1421, align 8
  %2360 = add i64 %2354, -24
  %2361 = add i64 %2353, 7
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i64*
  %2363 = load i64, i64* %2362, align 8
  store i64 %2363, i64* %RCX.i1400, align 8
  %2364 = add i64 %2363, 136
  %2365 = add i64 %2353, 13
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i32*
  %2367 = load i32, i32* %2366, align 4
  %2368 = sub i32 %2358, %2367
  %2369 = icmp ult i32 %2358, %2367
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %14, align 1
  %2371 = and i32 %2368, 255
  %2372 = tail call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  store i8 %2375, i8* %21, align 1
  %2376 = xor i32 %2367, %2358
  %2377 = xor i32 %2376, %2368
  %2378 = lshr i32 %2377, 4
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  store i8 %2380, i8* %27, align 1
  %2381 = icmp eq i32 %2368, 0
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %30, align 1
  %2383 = lshr i32 %2368, 31
  %2384 = trunc i32 %2383 to i8
  store i8 %2384, i8* %33, align 1
  %2385 = lshr i32 %2358, 31
  %2386 = lshr i32 %2367, 31
  %2387 = xor i32 %2386, %2385
  %2388 = xor i32 %2383, %2385
  %2389 = add nuw nsw i32 %2388, %2387
  %2390 = icmp eq i32 %2389, 2
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %39, align 1
  %2392 = icmp ne i8 %2384, 0
  %2393 = xor i1 %2392, %2390
  %.demorgan72 = or i1 %2381, %2393
  %.v77 = select i1 %.demorgan72, i64 19, i64 90
  %2394 = add i64 %2353, %.v77
  store i64 %2394, i64* %3, align 8
  br i1 %.demorgan72, label %block_415f26, label %block_.L_415f6d

block_415f26:                                     ; preds = %block_.L_415f13
  %2395 = add i64 %2354, -152
  %2396 = add i64 %2394, 7
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i64*
  %2398 = load i64, i64* %2397, align 8
  store i64 %2398, i64* %RAX.i1421, align 8
  %2399 = add i64 %2394, 11
  store i64 %2399, i64* %3, align 8
  %2400 = load i32, i32* %2357, align 4
  %2401 = sext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i1400, align 8
  %2402 = shl nsw i64 %2401, 2
  %2403 = add i64 %2402, %2398
  %2404 = add i64 %2394, 14
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i32*
  %2406 = load i32, i32* %2405, align 4
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RDX.i1403, align 8
  %2408 = add i64 %2354, -176
  %2409 = add i64 %2394, 21
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %RAX.i1421, align 8
  %2412 = add i64 %2394, 25
  store i64 %2412, i64* %3, align 8
  %2413 = load i32, i32* %2357, align 4
  %2414 = sext i32 %2413 to i64
  store i64 %2414, i64* %RCX.i1400, align 8
  %2415 = shl nsw i64 %2414, 2
  %2416 = add i64 %2411, %2415
  %2417 = add i64 %2394, 28
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = add i32 %2419, %2406
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RDX.i1403, align 8
  %2422 = icmp ult i32 %2420, %2406
  %2423 = icmp ult i32 %2420, %2419
  %2424 = or i1 %2422, %2423
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %14, align 1
  %2426 = and i32 %2420, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %21, align 1
  %2431 = xor i32 %2419, %2406
  %2432 = xor i32 %2431, %2420
  %2433 = lshr i32 %2432, 4
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  store i8 %2435, i8* %27, align 1
  %2436 = icmp eq i32 %2420, 0
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %30, align 1
  %2438 = lshr i32 %2420, 31
  %2439 = trunc i32 %2438 to i8
  store i8 %2439, i8* %33, align 1
  %2440 = lshr i32 %2406, 31
  %2441 = lshr i32 %2419, 31
  %2442 = xor i32 %2438, %2440
  %2443 = xor i32 %2438, %2441
  %2444 = add nuw nsw i32 %2442, %2443
  %2445 = icmp eq i32 %2444, 2
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %39, align 1
  %2447 = add i64 %2354, -92
  %2448 = add i64 %2394, 31
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  store i32 %2420, i32* %2449, align 4
  %2450 = load i32, i32* %EDX.i1354, align 4
  %2451 = load i64, i64* %RBP.i, align 8
  %2452 = add i64 %2451, -184
  %2453 = load i64, i64* %3, align 8
  %2454 = add i64 %2453, 6
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2452 to i32*
  %2456 = load i32, i32* %2455, align 4
  %2457 = sub i32 %2450, %2456
  %2458 = icmp ult i32 %2450, %2456
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %14, align 1
  %2460 = and i32 %2457, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %21, align 1
  %2465 = xor i32 %2456, %2450
  %2466 = xor i32 %2465, %2457
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %27, align 1
  %2470 = icmp eq i32 %2457, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %30, align 1
  %2472 = lshr i32 %2457, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %33, align 1
  %2474 = lshr i32 %2450, 31
  %2475 = lshr i32 %2456, 31
  %2476 = xor i32 %2475, %2474
  %2477 = xor i32 %2472, %2474
  %2478 = add nuw nsw i32 %2477, %2476
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %39, align 1
  %2481 = icmp ne i8 %2473, 0
  %2482 = xor i1 %2481, %2479
  %2483 = or i1 %2470, %2482
  %.v84 = select i1 %2483, i64 21, i64 12
  %2484 = add i64 %2453, %.v84
  store i64 %2484, i64* %3, align 8
  br i1 %2483, label %block_.L_415f5a, label %block_415f51

block_415f51:                                     ; preds = %block_415f26
  %2485 = add i64 %2451, -92
  %2486 = add i64 %2484, 3
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = zext i32 %2488 to i64
  store i64 %2489, i64* %RAX.i1421, align 8
  %2490 = add i64 %2484, 9
  store i64 %2490, i64* %3, align 8
  store i32 %2488, i32* %2455, align 4
  %.pre56 = load i64, i64* %3, align 8
  %.pre57 = load i64, i64* %RBP.i, align 8
  br label %block_.L_415f5a

block_.L_415f5a:                                  ; preds = %block_415f51, %block_415f26
  %2491 = phi i64 [ %.pre57, %block_415f51 ], [ %2451, %block_415f26 ]
  %2492 = phi i64 [ %.pre56, %block_415f51 ], [ %2484, %block_415f26 ]
  %2493 = add i64 %2491, -88
  %2494 = add i64 %2492, 8
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i32*
  %2496 = load i32, i32* %2495, align 4
  %2497 = add i32 %2496, 1
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX.i1421, align 8
  %2499 = icmp eq i32 %2496, -1
  %2500 = icmp eq i32 %2497, 0
  %2501 = or i1 %2499, %2500
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %14, align 1
  %2503 = and i32 %2497, 255
  %2504 = tail call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  store i8 %2507, i8* %21, align 1
  %2508 = xor i32 %2497, %2496
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  store i8 %2511, i8* %27, align 1
  %2512 = zext i1 %2500 to i8
  store i8 %2512, i8* %30, align 1
  %2513 = lshr i32 %2497, 31
  %2514 = trunc i32 %2513 to i8
  store i8 %2514, i8* %33, align 1
  %2515 = lshr i32 %2496, 31
  %2516 = xor i32 %2513, %2515
  %2517 = add nuw nsw i32 %2516, %2513
  %2518 = icmp eq i32 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %39, align 1
  %2520 = add i64 %2492, 14
  store i64 %2520, i64* %3, align 8
  store i32 %2497, i32* %2495, align 4
  %2521 = load i64, i64* %3, align 8
  %2522 = add i64 %2521, -85
  store i64 %2522, i64* %3, align 8
  br label %block_.L_415f13

block_.L_415f6d:                                  ; preds = %block_.L_415f13
  %2523 = add i64 %2354, -184
  %2524 = add i64 %2394, 6
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  %2526 = load i32, i32* %2525, align 4
  %2527 = zext i32 %2526 to i64
  store i64 %2527, i64* %RAX.i1421, align 8
  %2528 = add i64 %2354, -56
  %2529 = add i64 %2394, 10
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i64 %2531, i64* %RCX.i1400, align 8
  %2532 = add i64 %2354, -84
  %2533 = add i64 %2394, 14
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = sext i32 %2535 to i64
  store i64 %2536, i64* %RDX.i1403, align 8
  %2537 = shl nsw i64 %2536, 3
  %2538 = add i64 %2537, %2531
  %2539 = add i64 %2394, 18
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i64*
  %2541 = load i64, i64* %2540, align 8
  store i64 %2541, i64* %RCX.i1400, align 8
  %2542 = add i64 %2541, 4
  %2543 = add i64 %2394, 21
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  store i32 %2526, i32* %2544, align 4
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -56
  %2547 = load i64, i64* %3, align 8
  %2548 = add i64 %2547, 4
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2546 to i64*
  %2550 = load i64, i64* %2549, align 8
  store i64 %2550, i64* %RCX.i1400, align 8
  %2551 = add i64 %2545, -84
  %2552 = add i64 %2547, 8
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = sext i32 %2554 to i64
  store i64 %2555, i64* %RDX.i1403, align 8
  %2556 = shl nsw i64 %2555, 3
  %2557 = add i64 %2556, %2550
  %2558 = add i64 %2547, 12
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i64*
  %2560 = load i64, i64* %2559, align 8
  store i64 %2560, i64* %RCX.i1400, align 8
  %2561 = add i64 %2560, 12
  %2562 = add i64 %2547, 19
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i32*
  store i32 -987654321, i32* %2563, align 4
  %2564 = load i64, i64* %RBP.i, align 8
  %2565 = add i64 %2564, -56
  %2566 = load i64, i64* %3, align 8
  %2567 = add i64 %2566, 4
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2565 to i64*
  %2569 = load i64, i64* %2568, align 8
  store i64 %2569, i64* %RCX.i1400, align 8
  %2570 = add i64 %2564, -84
  %2571 = add i64 %2566, 7
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = add i32 %2573, -1
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RAX.i1421, align 8
  %2576 = icmp eq i32 %2573, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %14, align 1
  %2578 = and i32 %2574, 255
  %2579 = tail call i32 @llvm.ctpop.i32(i32 %2578)
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = xor i8 %2581, 1
  store i8 %2582, i8* %21, align 1
  %2583 = xor i32 %2574, %2573
  %2584 = lshr i32 %2583, 4
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  store i8 %2586, i8* %27, align 1
  %2587 = icmp eq i32 %2574, 0
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %30, align 1
  %2589 = lshr i32 %2574, 31
  %2590 = trunc i32 %2589 to i8
  store i8 %2590, i8* %33, align 1
  %2591 = lshr i32 %2573, 31
  %2592 = xor i32 %2589, %2591
  %2593 = add nuw nsw i32 %2592, %2591
  %2594 = icmp eq i32 %2593, 2
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %39, align 1
  %2596 = sext i32 %2574 to i64
  store i64 %2596, i64* %RDX.i1403, align 8
  %2597 = shl nsw i64 %2596, 3
  %2598 = add i64 %2569, %2597
  %2599 = add i64 %2566, 17
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2598 to i64*
  %2601 = load i64, i64* %2600, align 8
  store i64 %2601, i64* %RCX.i1400, align 8
  %2602 = add i64 %2601, 12
  %2603 = add i64 %2566, 20
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RAX.i1421, align 8
  %2607 = add i64 %2564, -24
  %2608 = add i64 %2566, 24
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i64*
  %2610 = load i64, i64* %2609, align 8
  store i64 %2610, i64* %RCX.i1400, align 8
  %2611 = add i64 %2610, 364
  %2612 = add i64 %2566, 30
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = add i32 %2614, %2605
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RAX.i1421, align 8
  %2617 = load i64, i64* %RBP.i, align 8
  %2618 = add i64 %2617, -92
  %2619 = add i64 %2566, 33
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  store i32 %2615, i32* %2620, align 4
  %2621 = load i32, i32* %EAX.i1322, align 4
  %2622 = load i64, i64* %3, align 8
  %2623 = add i32 %2621, 987654321
  %2624 = icmp ult i32 %2621, -987654321
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %14, align 1
  %2626 = and i32 %2623, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %21, align 1
  %2631 = xor i32 %2623, %2621
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %27, align 1
  %2635 = icmp eq i32 %2623, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %30, align 1
  %2637 = lshr i32 %2623, 31
  %2638 = trunc i32 %2637 to i8
  store i8 %2638, i8* %33, align 1
  %2639 = lshr i32 %2621, 31
  %2640 = xor i32 %2639, 1
  %2641 = xor i32 %2637, %2639
  %2642 = add nuw nsw i32 %2641, %2640
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %39, align 1
  %2645 = icmp ne i8 %2638, 0
  %2646 = xor i1 %2645, %2643
  %2647 = or i1 %2635, %2646
  %.v78 = select i1 %2647, i64 29, i64 11
  %2648 = add i64 %2622, %.v78
  store i64 %2648, i64* %3, align 8
  br i1 %2647, label %block_.L_415fd3, label %block_415fc1

block_415fc1:                                     ; preds = %block_.L_415f6d
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -92
  %2651 = add i64 %2648, 3
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = zext i32 %2653 to i64
  store i64 %2654, i64* %RAX.i1421, align 8
  %2655 = add i64 %2649, -56
  %2656 = add i64 %2648, 7
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i64*
  %2658 = load i64, i64* %2657, align 8
  store i64 %2658, i64* %RCX.i1400, align 8
  %2659 = add i64 %2649, -84
  %2660 = add i64 %2648, 11
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = sext i32 %2662 to i64
  store i64 %2663, i64* %RDX.i1403, align 8
  %2664 = shl nsw i64 %2663, 3
  %2665 = add i64 %2664, %2658
  %2666 = add i64 %2648, 15
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i64*
  %2668 = load i64, i64* %2667, align 8
  store i64 %2668, i64* %RCX.i1400, align 8
  %2669 = add i64 %2668, 12
  %2670 = add i64 %2648, 18
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  store i32 %2653, i32* %2671, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_415fd3

block_.L_415fd3:                                  ; preds = %block_415fc1, %block_.L_415f6d
  %2672 = phi i64 [ %.pre58, %block_415fc1 ], [ %2648, %block_.L_415f6d ]
  %2673 = load i64, i64* %RBP.i, align 8
  %2674 = add i64 %2673, -56
  %2675 = add i64 %2672, 4
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i64*
  %2677 = load i64, i64* %2676, align 8
  store i64 %2677, i64* %RAX.i1421, align 8
  %2678 = add i64 %2673, -84
  %2679 = add i64 %2672, 8
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = sext i32 %2681 to i64
  store i64 %2682, i64* %RCX.i1400, align 8
  %2683 = shl nsw i64 %2682, 3
  %2684 = add i64 %2683, %2677
  %2685 = add i64 %2672, 12
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i64*
  %2687 = load i64, i64* %2686, align 8
  store i64 %2687, i64* %RAX.i1421, align 8
  %2688 = add i64 %2687, 4
  %2689 = add i64 %2672, 15
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = zext i32 %2691 to i64
  store i64 %2692, i64* %RDX.i1403, align 8
  %2693 = add i64 %2673, -24
  %2694 = add i64 %2672, 19
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i64*
  %2696 = load i64, i64* %2695, align 8
  store i64 %2696, i64* %RAX.i1421, align 8
  %2697 = add i64 %2696, 348
  %2698 = add i64 %2672, 25
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = add i32 %2700, %2691
  %2702 = zext i32 %2701 to i64
  store i64 %2702, i64* %RDX.i1403, align 8
  %2703 = icmp ult i32 %2701, %2691
  %2704 = icmp ult i32 %2701, %2700
  %2705 = or i1 %2703, %2704
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %14, align 1
  %2707 = and i32 %2701, 255
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707)
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %21, align 1
  %2712 = xor i32 %2700, %2691
  %2713 = xor i32 %2712, %2701
  %2714 = lshr i32 %2713, 4
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %27, align 1
  %2717 = icmp eq i32 %2701, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %30, align 1
  %2719 = lshr i32 %2701, 31
  %2720 = trunc i32 %2719 to i8
  store i8 %2720, i8* %33, align 1
  %2721 = lshr i32 %2691, 31
  %2722 = lshr i32 %2700, 31
  %2723 = xor i32 %2719, %2721
  %2724 = xor i32 %2719, %2722
  %2725 = add nuw nsw i32 %2723, %2724
  %2726 = icmp eq i32 %2725, 2
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %39, align 1
  %2728 = add i64 %2673, -92
  %2729 = add i64 %2672, 28
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  store i32 %2701, i32* %2730, align 4
  %2731 = load i64, i64* %RBP.i, align 8
  %2732 = add i64 %2731, -56
  %2733 = load i64, i64* %3, align 8
  %2734 = add i64 %2733, 4
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2732 to i64*
  %2736 = load i64, i64* %2735, align 8
  store i64 %2736, i64* %RAX.i1421, align 8
  %2737 = add i64 %2731, -84
  %2738 = add i64 %2733, 8
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = sext i32 %2740 to i64
  store i64 %2741, i64* %RCX.i1400, align 8
  %2742 = shl nsw i64 %2741, 3
  %2743 = add i64 %2742, %2736
  %2744 = add i64 %2733, 12
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i64*
  %2746 = load i64, i64* %2745, align 8
  store i64 %2746, i64* %RAX.i1421, align 8
  %2747 = load i32, i32* %EDX.i1354, align 4
  %2748 = add i64 %2746, 12
  %2749 = add i64 %2733, 15
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  %2751 = load i32, i32* %2750, align 4
  %2752 = sub i32 %2747, %2751
  %2753 = icmp ult i32 %2747, %2751
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %14, align 1
  %2755 = and i32 %2752, 255
  %2756 = tail call i32 @llvm.ctpop.i32(i32 %2755)
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  %2759 = xor i8 %2758, 1
  store i8 %2759, i8* %21, align 1
  %2760 = xor i32 %2751, %2747
  %2761 = xor i32 %2760, %2752
  %2762 = lshr i32 %2761, 4
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  store i8 %2764, i8* %27, align 1
  %2765 = icmp eq i32 %2752, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %30, align 1
  %2767 = lshr i32 %2752, 31
  %2768 = trunc i32 %2767 to i8
  store i8 %2768, i8* %33, align 1
  %2769 = lshr i32 %2747, 31
  %2770 = lshr i32 %2751, 31
  %2771 = xor i32 %2770, %2769
  %2772 = xor i32 %2767, %2769
  %2773 = add nuw nsw i32 %2772, %2771
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %39, align 1
  %2776 = icmp ne i8 %2768, 0
  %2777 = xor i1 %2776, %2774
  %2778 = or i1 %2765, %2777
  %.v79 = select i1 %2778, i64 39, i64 21
  %2779 = add i64 %2733, %.v79
  store i64 %2779, i64* %3, align 8
  br i1 %2778, label %block_.L_416016, label %block_416004

block_416004:                                     ; preds = %block_.L_415fd3
  %2780 = add i64 %2731, -92
  %2781 = add i64 %2779, 3
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RAX.i1421, align 8
  %2785 = add i64 %2779, 7
  store i64 %2785, i64* %3, align 8
  %2786 = load i64, i64* %2735, align 8
  store i64 %2786, i64* %RCX.i1400, align 8
  %2787 = add i64 %2779, 11
  store i64 %2787, i64* %3, align 8
  %2788 = load i32, i32* %2739, align 4
  %2789 = sext i32 %2788 to i64
  store i64 %2789, i64* %RDX.i1403, align 8
  %2790 = shl nsw i64 %2789, 3
  %2791 = add i64 %2790, %2786
  %2792 = add i64 %2779, 15
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i64*
  %2794 = load i64, i64* %2793, align 8
  store i64 %2794, i64* %RCX.i1400, align 8
  %2795 = add i64 %2794, 12
  %2796 = add i64 %2779, 18
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i32*
  store i32 %2783, i32* %2797, align 4
  %.pre59 = load i64, i64* %RBP.i, align 8
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_416016

block_.L_416016:                                  ; preds = %block_416004, %block_.L_415fd3
  %2798 = phi i64 [ %.pre60, %block_416004 ], [ %2779, %block_.L_415fd3 ]
  %2799 = phi i64 [ %.pre59, %block_416004 ], [ %2731, %block_.L_415fd3 ]
  %2800 = add i64 %2799, -56
  %2801 = add i64 %2798, 4
  store i64 %2801, i64* %3, align 8
  %2802 = inttoptr i64 %2800 to i64*
  %2803 = load i64, i64* %2802, align 8
  store i64 %2803, i64* %RAX.i1421, align 8
  %2804 = add i64 %2799, -84
  %2805 = add i64 %2798, 8
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = sext i32 %2807 to i64
  store i64 %2808, i64* %RCX.i1400, align 8
  %2809 = shl nsw i64 %2808, 3
  %2810 = add i64 %2809, %2803
  %2811 = add i64 %2798, 12
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i64*
  %2813 = load i64, i64* %2812, align 8
  store i64 %2813, i64* %RAX.i1421, align 8
  %2814 = add i64 %2798, 18
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  store i32 -987654321, i32* %2815, align 4
  %2816 = load i64, i64* %RBP.i, align 8
  %2817 = add i64 %2816, -56
  %2818 = load i64, i64* %3, align 8
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2817 to i64*
  %2821 = load i64, i64* %2820, align 8
  store i64 %2821, i64* %RAX.i1421, align 8
  %2822 = add i64 %2816, -84
  %2823 = add i64 %2818, 8
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = sext i32 %2825 to i64
  store i64 %2826, i64* %RCX.i1400, align 8
  %2827 = shl nsw i64 %2826, 3
  %2828 = add i64 %2827, %2821
  %2829 = add i64 %2818, 12
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i64*
  %2831 = load i64, i64* %2830, align 8
  store i64 %2831, i64* %RAX.i1421, align 8
  %2832 = add i64 %2831, 16
  %2833 = add i64 %2818, 15
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RDX.i1403, align 8
  %2837 = add i64 %2816, -24
  %2838 = add i64 %2818, 19
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i64*
  %2840 = load i64, i64* %2839, align 8
  store i64 %2840, i64* %RAX.i1421, align 8
  %2841 = add i64 %2840, 336
  %2842 = add i64 %2818, 25
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = add i32 %2844, %2835
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RDX.i1403, align 8
  %2847 = add i64 %2816, -92
  %2848 = add i64 %2818, 28
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  store i32 %2845, i32* %2849, align 4
  %2850 = load i32, i32* %EDX.i1354, align 4
  %2851 = load i64, i64* %3, align 8
  %2852 = add i32 %2850, 987654321
  %2853 = icmp ult i32 %2850, -987654321
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %14, align 1
  %2855 = and i32 %2852, 255
  %2856 = tail call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  store i8 %2859, i8* %21, align 1
  %2860 = xor i32 %2852, %2850
  %2861 = lshr i32 %2860, 4
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  store i8 %2863, i8* %27, align 1
  %2864 = icmp eq i32 %2852, 0
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %30, align 1
  %2866 = lshr i32 %2852, 31
  %2867 = trunc i32 %2866 to i8
  store i8 %2867, i8* %33, align 1
  %2868 = lshr i32 %2850, 31
  %2869 = xor i32 %2868, 1
  %2870 = xor i32 %2866, %2868
  %2871 = add nuw nsw i32 %2870, %2869
  %2872 = icmp eq i32 %2871, 2
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %39, align 1
  %2874 = icmp ne i8 %2867, 0
  %2875 = xor i1 %2874, %2872
  %2876 = or i1 %2864, %2875
  %.v80 = select i1 %2876, i64 29, i64 12
  %2877 = add i64 %2851, %.v80
  store i64 %2877, i64* %3, align 8
  br i1 %2876, label %block_.L_416061, label %block_416050

block_416050:                                     ; preds = %block_.L_416016
  %2878 = load i64, i64* %RBP.i, align 8
  %2879 = add i64 %2878, -92
  %2880 = add i64 %2877, 3
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i1421, align 8
  %2884 = add i64 %2878, -56
  %2885 = add i64 %2877, 7
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i64*
  %2887 = load i64, i64* %2886, align 8
  store i64 %2887, i64* %RCX.i1400, align 8
  %2888 = add i64 %2878, -84
  %2889 = add i64 %2877, 11
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = sext i32 %2891 to i64
  store i64 %2892, i64* %RDX.i1403, align 8
  %2893 = shl nsw i64 %2892, 3
  %2894 = add i64 %2893, %2887
  %2895 = add i64 %2877, 15
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i64*
  %2897 = load i64, i64* %2896, align 8
  store i64 %2897, i64* %RCX.i1400, align 8
  %2898 = add i64 %2877, 17
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  store i32 %2882, i32* %2899, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_416061

block_.L_416061:                                  ; preds = %block_416050, %block_.L_416016
  %2900 = phi i64 [ %.pre61, %block_416050 ], [ %2877, %block_.L_416016 ]
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -56
  %2903 = add i64 %2900, 4
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i64*
  %2905 = load i64, i64* %2904, align 8
  store i64 %2905, i64* %RAX.i1421, align 8
  %2906 = add i64 %2901, -84
  %2907 = add i64 %2900, 8
  store i64 %2907, i64* %3, align 8
  %2908 = inttoptr i64 %2906 to i32*
  %2909 = load i32, i32* %2908, align 4
  %2910 = sext i32 %2909 to i64
  store i64 %2910, i64* %RCX.i1400, align 8
  %2911 = shl nsw i64 %2910, 3
  %2912 = add i64 %2911, %2905
  %2913 = add i64 %2900, 12
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i64*
  %2915 = load i64, i64* %2914, align 8
  store i64 %2915, i64* %RAX.i1421, align 8
  %2916 = add i64 %2915, 12
  %2917 = add i64 %2900, 15
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  %2919 = load i32, i32* %2918, align 4
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RDX.i1403, align 8
  %2921 = add i64 %2901, -24
  %2922 = add i64 %2900, 19
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i64*
  %2924 = load i64, i64* %2923, align 8
  store i64 %2924, i64* %RAX.i1421, align 8
  %2925 = add i64 %2924, 360
  %2926 = add i64 %2900, 25
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = add i32 %2928, %2919
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RDX.i1403, align 8
  %2931 = icmp ult i32 %2929, %2919
  %2932 = icmp ult i32 %2929, %2928
  %2933 = or i1 %2931, %2932
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %14, align 1
  %2935 = and i32 %2929, 255
  %2936 = tail call i32 @llvm.ctpop.i32(i32 %2935)
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  %2939 = xor i8 %2938, 1
  store i8 %2939, i8* %21, align 1
  %2940 = xor i32 %2928, %2919
  %2941 = xor i32 %2940, %2929
  %2942 = lshr i32 %2941, 4
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  store i8 %2944, i8* %27, align 1
  %2945 = icmp eq i32 %2929, 0
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %30, align 1
  %2947 = lshr i32 %2929, 31
  %2948 = trunc i32 %2947 to i8
  store i8 %2948, i8* %33, align 1
  %2949 = lshr i32 %2919, 31
  %2950 = lshr i32 %2928, 31
  %2951 = xor i32 %2947, %2949
  %2952 = xor i32 %2947, %2950
  %2953 = add nuw nsw i32 %2951, %2952
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %39, align 1
  %2956 = add i64 %2901, -92
  %2957 = add i64 %2900, 28
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i32*
  store i32 %2929, i32* %2958, align 4
  %2959 = load i64, i64* %RBP.i, align 8
  %2960 = add i64 %2959, -56
  %2961 = load i64, i64* %3, align 8
  %2962 = add i64 %2961, 4
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2960 to i64*
  %2964 = load i64, i64* %2963, align 8
  store i64 %2964, i64* %RAX.i1421, align 8
  %2965 = add i64 %2959, -84
  %2966 = add i64 %2961, 8
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = sext i32 %2968 to i64
  store i64 %2969, i64* %RCX.i1400, align 8
  %2970 = shl nsw i64 %2969, 3
  %2971 = add i64 %2970, %2964
  %2972 = add i64 %2961, 12
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %RAX.i1421, align 8
  %2975 = load i32, i32* %EDX.i1354, align 4
  %2976 = add i64 %2961, 14
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2974 to i32*
  %2978 = load i32, i32* %2977, align 4
  %2979 = sub i32 %2975, %2978
  %2980 = icmp ult i32 %2975, %2978
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %14, align 1
  %2982 = and i32 %2979, 255
  %2983 = tail call i32 @llvm.ctpop.i32(i32 %2982)
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = xor i8 %2985, 1
  store i8 %2986, i8* %21, align 1
  %2987 = xor i32 %2978, %2975
  %2988 = xor i32 %2987, %2979
  %2989 = lshr i32 %2988, 4
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  store i8 %2991, i8* %27, align 1
  %2992 = icmp eq i32 %2979, 0
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %30, align 1
  %2994 = lshr i32 %2979, 31
  %2995 = trunc i32 %2994 to i8
  store i8 %2995, i8* %33, align 1
  %2996 = lshr i32 %2975, 31
  %2997 = lshr i32 %2978, 31
  %2998 = xor i32 %2997, %2996
  %2999 = xor i32 %2994, %2996
  %3000 = add nuw nsw i32 %2999, %2998
  %3001 = icmp eq i32 %3000, 2
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %39, align 1
  %3003 = icmp ne i8 %2995, 0
  %3004 = xor i1 %3003, %3001
  %3005 = or i1 %2992, %3004
  %.v81 = select i1 %3005, i64 37, i64 20
  %3006 = add i64 %2961, %.v81
  store i64 %3006, i64* %3, align 8
  br i1 %3005, label %block_.L_4160a2, label %block_416091

block_416091:                                     ; preds = %block_.L_416061
  %3007 = add i64 %2959, -92
  %3008 = add i64 %3006, 3
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i32*
  %3010 = load i32, i32* %3009, align 4
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RAX.i1421, align 8
  %3012 = add i64 %3006, 7
  store i64 %3012, i64* %3, align 8
  %3013 = load i64, i64* %2963, align 8
  store i64 %3013, i64* %RCX.i1400, align 8
  %3014 = add i64 %3006, 11
  store i64 %3014, i64* %3, align 8
  %3015 = load i32, i32* %2967, align 4
  %3016 = sext i32 %3015 to i64
  store i64 %3016, i64* %RDX.i1403, align 8
  %3017 = shl nsw i64 %3016, 3
  %3018 = add i64 %3017, %3013
  %3019 = add i64 %3006, 15
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i64*
  %3021 = load i64, i64* %3020, align 8
  store i64 %3021, i64* %RCX.i1400, align 8
  %3022 = add i64 %3006, 17
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  store i32 %3010, i32* %3023, align 4
  %.pre62 = load i64, i64* %RBP.i, align 8
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_4160a2

block_.L_4160a2:                                  ; preds = %block_416091, %block_.L_416061
  %3024 = phi i64 [ %.pre63, %block_416091 ], [ %3006, %block_.L_416061 ]
  %3025 = phi i64 [ %.pre62, %block_416091 ], [ %2959, %block_.L_416061 ]
  %3026 = add i64 %3025, -56
  %3027 = add i64 %3024, 4
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %RAX.i1421, align 8
  %3030 = add i64 %3025, -84
  %3031 = add i64 %3024, 8
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = sext i32 %3033 to i64
  store i64 %3034, i64* %RCX.i1400, align 8
  %3035 = shl nsw i64 %3034, 3
  %3036 = add i64 %3035, %3029
  %3037 = add i64 %3024, 12
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i64*
  %3039 = load i64, i64* %3038, align 8
  store i64 %3039, i64* %RAX.i1421, align 8
  %3040 = add i64 %3039, 8
  %3041 = add i64 %3024, 19
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3040 to i32*
  store i32 -987654321, i32* %3042, align 4
  %3043 = load i64, i64* %RBP.i, align 8
  %3044 = add i64 %3043, -56
  %3045 = load i64, i64* %3, align 8
  %3046 = add i64 %3045, 4
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3044 to i64*
  %3048 = load i64, i64* %3047, align 8
  store i64 %3048, i64* %RAX.i1421, align 8
  %3049 = add i64 %3043, -84
  %3050 = add i64 %3045, 7
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  %3052 = load i32, i32* %3051, align 4
  %3053 = add i32 %3052, -1
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RDX.i1403, align 8
  %3055 = icmp eq i32 %3052, 0
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %14, align 1
  %3057 = and i32 %3053, 255
  %3058 = tail call i32 @llvm.ctpop.i32(i32 %3057)
  %3059 = trunc i32 %3058 to i8
  %3060 = and i8 %3059, 1
  %3061 = xor i8 %3060, 1
  store i8 %3061, i8* %21, align 1
  %3062 = xor i32 %3053, %3052
  %3063 = lshr i32 %3062, 4
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  store i8 %3065, i8* %27, align 1
  %3066 = icmp eq i32 %3053, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %30, align 1
  %3068 = lshr i32 %3053, 31
  %3069 = trunc i32 %3068 to i8
  store i8 %3069, i8* %33, align 1
  %3070 = lshr i32 %3052, 31
  %3071 = xor i32 %3068, %3070
  %3072 = add nuw nsw i32 %3071, %3070
  %3073 = icmp eq i32 %3072, 2
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %39, align 1
  %3075 = sext i32 %3053 to i64
  store i64 %3075, i64* %RCX.i1400, align 8
  %3076 = shl nsw i64 %3075, 3
  %3077 = add i64 %3048, %3076
  %3078 = add i64 %3045, 17
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %RAX.i1421, align 8
  %3081 = add i64 %3080, 8
  %3082 = add i64 %3045, 20
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RDX.i1403, align 8
  %3086 = add i64 %3043, -24
  %3087 = add i64 %3045, 24
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %RAX.i1421, align 8
  %3090 = add i64 %3089, 356
  %3091 = add i64 %3045, 30
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = add i32 %3093, %3084
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RDX.i1403, align 8
  %3096 = load i64, i64* %RBP.i, align 8
  %3097 = add i64 %3096, -92
  %3098 = add i64 %3045, 33
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to i32*
  store i32 %3094, i32* %3099, align 4
  %3100 = load i32, i32* %EDX.i1354, align 4
  %3101 = load i64, i64* %3, align 8
  %3102 = add i32 %3100, 987654321
  %3103 = icmp ult i32 %3100, -987654321
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %14, align 1
  %3105 = and i32 %3102, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105)
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %21, align 1
  %3110 = xor i32 %3102, %3100
  %3111 = lshr i32 %3110, 4
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  store i8 %3113, i8* %27, align 1
  %3114 = icmp eq i32 %3102, 0
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %30, align 1
  %3116 = lshr i32 %3102, 31
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, i8* %33, align 1
  %3118 = lshr i32 %3100, 31
  %3119 = xor i32 %3118, 1
  %3120 = xor i32 %3116, %3118
  %3121 = add nuw nsw i32 %3120, %3119
  %3122 = icmp eq i32 %3121, 2
  %3123 = zext i1 %3122 to i8
  store i8 %3123, i8* %39, align 1
  %3124 = icmp ne i8 %3117, 0
  %3125 = xor i1 %3124, %3122
  %3126 = or i1 %3114, %3125
  %.v82 = select i1 %3126, i64 30, i64 12
  %3127 = add i64 %3101, %.v82
  store i64 %3127, i64* %3, align 8
  br i1 %3126, label %block_.L_4160f4, label %block_4160e2

block_4160e2:                                     ; preds = %block_.L_4160a2
  %3128 = load i64, i64* %RBP.i, align 8
  %3129 = add i64 %3128, -92
  %3130 = add i64 %3127, 3
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to i32*
  %3132 = load i32, i32* %3131, align 4
  %3133 = zext i32 %3132 to i64
  store i64 %3133, i64* %RAX.i1421, align 8
  %3134 = add i64 %3128, -56
  %3135 = add i64 %3127, 7
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %RCX.i1400, align 8
  %3138 = add i64 %3128, -84
  %3139 = add i64 %3127, 11
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3141 to i64
  store i64 %3142, i64* %RDX.i1403, align 8
  %3143 = shl nsw i64 %3142, 3
  %3144 = add i64 %3143, %3137
  %3145 = add i64 %3127, 15
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3144 to i64*
  %3147 = load i64, i64* %3146, align 8
  store i64 %3147, i64* %RCX.i1400, align 8
  %3148 = add i64 %3147, 8
  %3149 = add i64 %3127, 18
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i32*
  store i32 %3132, i32* %3150, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4160f4

block_.L_4160f4:                                  ; preds = %block_4160e2, %block_.L_4160a2
  %3151 = phi i64 [ %.pre64, %block_4160e2 ], [ %3127, %block_.L_4160a2 ]
  %3152 = load i64, i64* %RBP.i, align 8
  %3153 = add i64 %3152, -56
  %3154 = add i64 %3151, 4
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i64*
  %3156 = load i64, i64* %3155, align 8
  store i64 %3156, i64* %RAX.i1421, align 8
  %3157 = add i64 %3152, -84
  %3158 = add i64 %3151, 8
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = sext i32 %3160 to i64
  store i64 %3161, i64* %RCX.i1400, align 8
  %3162 = shl nsw i64 %3161, 3
  %3163 = add i64 %3162, %3156
  %3164 = add i64 %3151, 12
  store i64 %3164, i64* %3, align 8
  %3165 = inttoptr i64 %3163 to i64*
  %3166 = load i64, i64* %3165, align 8
  store i64 %3166, i64* %RAX.i1421, align 8
  %3167 = add i64 %3166, 4
  %3168 = add i64 %3151, 15
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i32*
  %3170 = load i32, i32* %3169, align 4
  %3171 = zext i32 %3170 to i64
  store i64 %3171, i64* %RDX.i1403, align 8
  %3172 = add i64 %3152, -24
  %3173 = add i64 %3151, 19
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3172 to i64*
  %3175 = load i64, i64* %3174, align 8
  store i64 %3175, i64* %RAX.i1421, align 8
  %3176 = add i64 %3175, 344
  %3177 = add i64 %3151, 25
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i32*
  %3179 = load i32, i32* %3178, align 4
  %3180 = add i32 %3179, %3170
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RDX.i1403, align 8
  %3182 = icmp ult i32 %3180, %3170
  %3183 = icmp ult i32 %3180, %3179
  %3184 = or i1 %3182, %3183
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %14, align 1
  %3186 = and i32 %3180, 255
  %3187 = tail call i32 @llvm.ctpop.i32(i32 %3186)
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  %3190 = xor i8 %3189, 1
  store i8 %3190, i8* %21, align 1
  %3191 = xor i32 %3179, %3170
  %3192 = xor i32 %3191, %3180
  %3193 = lshr i32 %3192, 4
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  store i8 %3195, i8* %27, align 1
  %3196 = icmp eq i32 %3180, 0
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %30, align 1
  %3198 = lshr i32 %3180, 31
  %3199 = trunc i32 %3198 to i8
  store i8 %3199, i8* %33, align 1
  %3200 = lshr i32 %3170, 31
  %3201 = lshr i32 %3179, 31
  %3202 = xor i32 %3198, %3200
  %3203 = xor i32 %3198, %3201
  %3204 = add nuw nsw i32 %3202, %3203
  %3205 = icmp eq i32 %3204, 2
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %39, align 1
  %3207 = add i64 %3152, -92
  %3208 = add i64 %3151, 28
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  store i32 %3180, i32* %3209, align 4
  %3210 = load i64, i64* %RBP.i, align 8
  %3211 = add i64 %3210, -56
  %3212 = load i64, i64* %3, align 8
  %3213 = add i64 %3212, 4
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3211 to i64*
  %3215 = load i64, i64* %3214, align 8
  store i64 %3215, i64* %RAX.i1421, align 8
  %3216 = add i64 %3210, -84
  %3217 = add i64 %3212, 8
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i32*
  %3219 = load i32, i32* %3218, align 4
  %3220 = sext i32 %3219 to i64
  store i64 %3220, i64* %RCX.i1400, align 8
  %3221 = shl nsw i64 %3220, 3
  %3222 = add i64 %3221, %3215
  %3223 = add i64 %3212, 12
  store i64 %3223, i64* %3, align 8
  %3224 = inttoptr i64 %3222 to i64*
  %3225 = load i64, i64* %3224, align 8
  store i64 %3225, i64* %RAX.i1421, align 8
  %3226 = load i32, i32* %EDX.i1354, align 4
  %3227 = add i64 %3225, 8
  %3228 = add i64 %3212, 15
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to i32*
  %3230 = load i32, i32* %3229, align 4
  %3231 = sub i32 %3226, %3230
  %3232 = icmp ult i32 %3226, %3230
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %14, align 1
  %3234 = and i32 %3231, 255
  %3235 = tail call i32 @llvm.ctpop.i32(i32 %3234)
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  %3238 = xor i8 %3237, 1
  store i8 %3238, i8* %21, align 1
  %3239 = xor i32 %3230, %3226
  %3240 = xor i32 %3239, %3231
  %3241 = lshr i32 %3240, 4
  %3242 = trunc i32 %3241 to i8
  %3243 = and i8 %3242, 1
  store i8 %3243, i8* %27, align 1
  %3244 = icmp eq i32 %3231, 0
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %30, align 1
  %3246 = lshr i32 %3231, 31
  %3247 = trunc i32 %3246 to i8
  store i8 %3247, i8* %33, align 1
  %3248 = lshr i32 %3226, 31
  %3249 = lshr i32 %3230, 31
  %3250 = xor i32 %3249, %3248
  %3251 = xor i32 %3246, %3248
  %3252 = add nuw nsw i32 %3251, %3250
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %39, align 1
  %3255 = icmp ne i8 %3247, 0
  %3256 = xor i1 %3255, %3253
  %3257 = or i1 %3244, %3256
  %.v83 = select i1 %3257, i64 39, i64 21
  %3258 = add i64 %3212, %.v83
  store i64 %3258, i64* %3, align 8
  br i1 %3257, label %block_.L_416137, label %block_416125

block_416125:                                     ; preds = %block_.L_4160f4
  %3259 = add i64 %3210, -92
  %3260 = add i64 %3258, 3
  store i64 %3260, i64* %3, align 8
  %3261 = inttoptr i64 %3259 to i32*
  %3262 = load i32, i32* %3261, align 4
  %3263 = zext i32 %3262 to i64
  store i64 %3263, i64* %RAX.i1421, align 8
  %3264 = add i64 %3258, 7
  store i64 %3264, i64* %3, align 8
  %3265 = load i64, i64* %3214, align 8
  store i64 %3265, i64* %RCX.i1400, align 8
  %3266 = add i64 %3258, 11
  store i64 %3266, i64* %3, align 8
  %3267 = load i32, i32* %3218, align 4
  %3268 = sext i32 %3267 to i64
  store i64 %3268, i64* %RDX.i1403, align 8
  %3269 = shl nsw i64 %3268, 3
  %3270 = add i64 %3269, %3265
  %3271 = add i64 %3258, 15
  store i64 %3271, i64* %3, align 8
  %3272 = inttoptr i64 %3270 to i64*
  %3273 = load i64, i64* %3272, align 8
  store i64 %3273, i64* %RCX.i1400, align 8
  %3274 = add i64 %3273, 8
  %3275 = add i64 %3258, 18
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  store i32 %3262, i32* %3276, align 4
  %.pre65 = load i64, i64* %3, align 8
  %.pre66 = load i64, i64* %RBP.i, align 8
  br label %block_.L_416137

block_.L_416137:                                  ; preds = %block_416125, %block_.L_4160f4
  %3277 = phi i64 [ %.pre66, %block_416125 ], [ %3210, %block_.L_4160f4 ]
  %3278 = phi i64 [ %.pre65, %block_416125 ], [ %3258, %block_.L_4160f4 ]
  %3279 = add i64 %3277, -84
  %3280 = add i64 %3278, 8
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i32*
  %3282 = load i32, i32* %3281, align 4
  %3283 = add i32 %3282, 1
  %3284 = zext i32 %3283 to i64
  store i64 %3284, i64* %RAX.i1421, align 8
  %3285 = icmp eq i32 %3282, -1
  %3286 = icmp eq i32 %3283, 0
  %3287 = or i1 %3285, %3286
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %14, align 1
  %3289 = and i32 %3283, 255
  %3290 = tail call i32 @llvm.ctpop.i32(i32 %3289)
  %3291 = trunc i32 %3290 to i8
  %3292 = and i8 %3291, 1
  %3293 = xor i8 %3292, 1
  store i8 %3293, i8* %21, align 1
  %3294 = xor i32 %3283, %3282
  %3295 = lshr i32 %3294, 4
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  store i8 %3297, i8* %27, align 1
  %3298 = zext i1 %3286 to i8
  store i8 %3298, i8* %30, align 1
  %3299 = lshr i32 %3283, 31
  %3300 = trunc i32 %3299 to i8
  store i8 %3300, i8* %33, align 1
  %3301 = lshr i32 %3282, 31
  %3302 = xor i32 %3299, %3301
  %3303 = add nuw nsw i32 %3302, %3299
  %3304 = icmp eq i32 %3303, 2
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %39, align 1
  %3306 = add i64 %3278, 14
  store i64 %3306, i64* %3, align 8
  store i32 %3283, i32* %3281, align 4
  %3307 = load i64, i64* %3, align 8
  %3308 = add i64 %3307, -1641
  store i64 %3308, i64* %3, align 8
  br label %block_.L_415adc

block_.L_41614a:                                  ; preds = %block_.L_415adc
  %3309 = add i64 %453, -56
  %3310 = add i64 %489, 4
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3309 to i64*
  %3312 = load i64, i64* %3311, align 8
  store i64 %3312, i64* %RAX.i1421, align 8
  %3313 = add i64 %489, 8
  store i64 %3313, i64* %3, align 8
  %3314 = load i32, i32* %461, align 4
  %3315 = sext i32 %3314 to i64
  store i64 %3315, i64* %RCX.i1400, align 8
  %3316 = shl nsw i64 %3315, 3
  %3317 = add i64 %3316, %3312
  %3318 = add i64 %489, 12
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3317 to i64*
  %3320 = load i64, i64* %3319, align 8
  store i64 %3320, i64* %RAX.i1421, align 8
  %3321 = add i64 %3320, 8
  %3322 = add i64 %489, 15
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3321 to i32*
  %3324 = load i32, i32* %3323, align 4
  %3325 = zext i32 %3324 to i64
  store i64 %3325, i64* %RDX.i1403, align 8
  %3326 = add i64 %453, -24
  %3327 = add i64 %489, 19
  store i64 %3327, i64* %3, align 8
  %3328 = inttoptr i64 %3326 to i64*
  %3329 = load i64, i64* %3328, align 8
  store i64 %3329, i64* %RAX.i1421, align 8
  %3330 = add i64 %3329, 352
  %3331 = add i64 %489, 25
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i32*
  %3333 = load i32, i32* %3332, align 4
  %3334 = add i32 %3333, %3324
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RDX.i1403, align 8
  %3336 = icmp ult i32 %3334, %3324
  %3337 = icmp ult i32 %3334, %3333
  %3338 = or i1 %3336, %3337
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %14, align 1
  %3340 = and i32 %3334, 255
  %3341 = tail call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %21, align 1
  %3345 = xor i32 %3333, %3324
  %3346 = xor i32 %3345, %3334
  %3347 = lshr i32 %3346, 4
  %3348 = trunc i32 %3347 to i8
  %3349 = and i8 %3348, 1
  store i8 %3349, i8* %27, align 1
  %3350 = icmp eq i32 %3334, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %30, align 1
  %3352 = lshr i32 %3334, 31
  %3353 = trunc i32 %3352 to i8
  store i8 %3353, i8* %33, align 1
  %3354 = lshr i32 %3324, 31
  %3355 = lshr i32 %3333, 31
  %3356 = xor i32 %3352, %3354
  %3357 = xor i32 %3352, %3355
  %3358 = add nuw nsw i32 %3356, %3357
  %3359 = icmp eq i32 %3358, 2
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %39, align 1
  %3361 = add i64 %453, -92
  %3362 = add i64 %489, 28
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i32*
  store i32 %3334, i32* %3363, align 4
  %3364 = load i64, i64* %RBP.i, align 8
  %3365 = add i64 %3364, -40
  %3366 = load i64, i64* %3, align 8
  %3367 = add i64 %3366, 5
  store i64 %3367, i64* %3, align 8
  %3368 = inttoptr i64 %3365 to i64*
  %3369 = load i64, i64* %3368, align 8
  store i8 0, i8* %14, align 1
  %3370 = trunc i64 %3369 to i32
  %3371 = and i32 %3370, 255
  %3372 = tail call i32 @llvm.ctpop.i32(i32 %3371)
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  %3375 = xor i8 %3374, 1
  store i8 %3375, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3376 = icmp eq i64 %3369, 0
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %30, align 1
  %3378 = lshr i64 %3369, 63
  %3379 = trunc i64 %3378 to i8
  store i8 %3379, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v74 = select i1 %3376, i64 46, i64 11
  %3380 = add i64 %3366, %.v74
  store i64 %3380, i64* %3, align 8
  br i1 %3376, label %block_.L_416194, label %block_416171

block_416171:                                     ; preds = %block_.L_41614a
  %3381 = add i64 %3364, -48
  store i64 %3381, i64* %R8.i1398, align 8
  %3382 = add i64 %3364, -24
  %3383 = add i64 %3380, 8
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %RDI.i1409, align 8
  %3386 = add i64 %3364, -8
  %3387 = add i64 %3380, 12
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i64*
  %3389 = load i64, i64* %3388, align 8
  store i64 %3389, i64* %RSI.i1391, align 8
  %3390 = add i64 %3364, -12
  %3391 = add i64 %3380, 15
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = zext i32 %3393 to i64
  store i64 %3394, i64* %RDX.i1403, align 8
  %3395 = add i64 %3364, -32
  %3396 = add i64 %3380, 19
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3395 to i64*
  %3398 = load i64, i64* %3397, align 8
  store i64 %3398, i64* %RCX.i1400, align 8
  %3399 = add i64 %3380, -55953
  %3400 = add i64 %3380, 24
  %3401 = load i64, i64* %6, align 8
  %3402 = add i64 %3401, -8
  %3403 = inttoptr i64 %3402 to i64*
  store i64 %3400, i64* %3403, align 8
  store i64 %3402, i64* %6, align 8
  store i64 %3399, i64* %3, align 8
  %call2_416184 = tail call %struct.Memory* @sub_4086e0.P7ViterbiTrace(%struct.State* nonnull %0, i64 %3399, %struct.Memory* %call2_41596c)
  %3404 = load i64, i64* %RBP.i, align 8
  %3405 = add i64 %3404, -48
  %3406 = load i64, i64* %3, align 8
  %3407 = add i64 %3406, 4
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3405 to i64*
  %3409 = load i64, i64* %3408, align 8
  store i64 %3409, i64* %RCX.i1400, align 8
  %3410 = add i64 %3404, -40
  %3411 = add i64 %3406, 8
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i64*
  %3413 = load i64, i64* %3412, align 8
  store i64 %3413, i64* %RSI.i1391, align 8
  %3414 = add i64 %3406, 11
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i64*
  store i64 %3409, i64* %3415, align 8
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_416194

block_.L_416194:                                  ; preds = %block_416171, %block_.L_41614a
  %3416 = phi i64 [ %3380, %block_.L_41614a ], [ %.pre68, %block_416171 ]
  %3417 = phi i64 [ %3364, %block_.L_41614a ], [ %.pre67, %block_416171 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_41596c, %block_.L_41614a ], [ %call2_416184, %block_416171 ]
  %3418 = add i64 %3417, -92
  %3419 = add i64 %3416, 3
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i32*
  %3421 = load i32, i32* %3420, align 4
  %3422 = zext i32 %3421 to i64
  store i64 %3422, i64* %RDI.i1409, align 8
  %3423 = add i64 %3416, 73052
  %3424 = add i64 %3416, 8
  %3425 = load i64, i64* %6, align 8
  %3426 = add i64 %3425, -8
  %3427 = inttoptr i64 %3426 to i64*
  store i64 %3424, i64* %3427, align 8
  store i64 %3426, i64* %6, align 8
  store i64 %3423, i64* %3, align 8
  %call2_416197 = tail call %struct.Memory* @sub_427ef0.Scorify(%struct.State* nonnull %0, i64 %3423, %struct.Memory* %MEMORY.21)
  %3428 = load i64, i64* %6, align 8
  %3429 = load i64, i64* %3, align 8
  %3430 = add i64 %3428, 272
  store i64 %3430, i64* %6, align 8
  %3431 = icmp ugt i64 %3428, -273
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %14, align 1
  %3433 = trunc i64 %3430 to i32
  %3434 = and i32 %3433, 255
  %3435 = tail call i32 @llvm.ctpop.i32(i32 %3434)
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  %3438 = xor i8 %3437, 1
  store i8 %3438, i8* %21, align 1
  %3439 = xor i64 %3428, 16
  %3440 = xor i64 %3439, %3430
  %3441 = lshr i64 %3440, 4
  %3442 = trunc i64 %3441 to i8
  %3443 = and i8 %3442, 1
  store i8 %3443, i8* %27, align 1
  %3444 = icmp eq i64 %3430, 0
  %3445 = zext i1 %3444 to i8
  store i8 %3445, i8* %30, align 1
  %3446 = lshr i64 %3430, 63
  %3447 = trunc i64 %3446 to i8
  store i8 %3447, i8* %33, align 1
  %3448 = lshr i64 %3428, 63
  %3449 = xor i64 %3446, %3448
  %3450 = add nuw nsw i64 %3449, %3446
  %3451 = icmp eq i64 %3450, 2
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %39, align 1
  %3453 = add i64 %3429, 8
  store i64 %3453, i64* %3, align 8
  %3454 = add i64 %3428, 280
  %3455 = inttoptr i64 %3430 to i64*
  %3456 = load i64, i64* %3455, align 8
  store i64 %3456, i64* %RBP.i, align 8
  store i64 %3454, i64* %6, align 8
  %3457 = add i64 %3429, 9
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3454 to i64*
  %3459 = load i64, i64* %3458, align 8
  store i64 %3459, i64* %3, align 8
  %3460 = add i64 %3428, 288
  store i64 %3460, i64* %6, align 8
  ret %struct.Memory* %call2_416197
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
define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 272
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
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R11, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ResizePlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl_0x150__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
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
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_415a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -987654321, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_4159c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jg_.L_41614a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
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
define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
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
define %struct.Memory* @routine_movl__0x1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xfc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -252
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
define %struct.Memory* @routine_jg_.L_415e8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
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
  store i64 %14, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415c6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415cb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
  store i64 %14, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415ceb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 987654321
  %12 = icmp ult i32 %10, -987654321
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_415d28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415d9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_415dbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_415e78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415e33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_415e73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415e78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415e7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415be5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x154__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 340
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 987654321
  %8 = icmp ult i32 %4, -987654321
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
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415edd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_415f6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xb8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -184
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
define %struct.Memory* @routine_jle_.L_415f5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415f5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415f13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0xc521974f__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x16c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 364
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 987654321
  %8 = icmp ult i32 %4, -987654321
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
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415fd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_0x15c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 348
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jle_.L_416016(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_jle_.L_416061(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 360
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4160a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x164__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 356
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_jle_.L_4160f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 344
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jle_.L_416137(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41613c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415adc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 352
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_je_.L_416194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7ViterbiTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_callq_.Scorify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -273
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
