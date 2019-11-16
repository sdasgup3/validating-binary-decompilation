; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cc338_type = type <{ [8 x i8] }>
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
@G_0x6cc338 = local_unnamed_addr global %G_0x6cc338_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @SetupLargerBlocks(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2532 = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -12
  %26 = load i32, i32* %EDX.i2532, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %RAX.i2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %31, i64* %RAX.i2530, align 8
  %RCX.i2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -4
  %34 = add i64 %30, 12
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %33 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %RCX.i2527, align 8
  %38 = shl nsw i64 %37, 3
  %39 = add i64 %38, %31
  %40 = add i64 %30, 16
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RAX.i2530, align 8
  %43 = add i64 %32, -8
  %44 = add i64 %30, 20
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %RCX.i2527, align 8
  %48 = shl nsw i64 %47, 3
  %49 = add i64 %48, %42
  %50 = add i64 %30, 24
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RAX.i2530, align 8
  %53 = add i64 %52, 48
  %54 = add i64 %30, 28
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %32, -24
  %58 = add i64 %30, 32
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %61, i64* %RAX.i2530, align 8
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -4
  %64 = add i64 %60, 12
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %RCX.i2527, align 8
  %68 = shl nsw i64 %67, 3
  %69 = add i64 %68, %61
  %70 = add i64 %60, 16
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RAX.i2530, align 8
  %73 = add i64 %62, -8
  %74 = add i64 %60, 20
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RCX.i2527, align 8
  %78 = shl nsw i64 %77, 3
  %79 = add i64 %78, %72
  %80 = add i64 %60, 24
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RAX.i2530, align 8
  %83 = add i64 %82, 56
  %84 = add i64 %60, 28
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RAX.i2530, align 8
  %87 = add i64 %62, -32
  %88 = add i64 %60, 32
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -32
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 32
  store i64 %96, i64* %RAX.i2530, align 8
  %97 = icmp ugt i64 %95, -33
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %98, i8* %99, align 1
  %100 = trunc i64 %96 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %105, i8* %106, align 1
  %107 = xor i64 %96, %95
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %110, i8* %111, align 1
  %112 = icmp eq i64 %96, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %113, i8* %114, align 1
  %115 = lshr i64 %96, 63
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %116, i8* %117, align 1
  %118 = lshr i64 %95, 63
  %119 = xor i64 %115, %118
  %120 = add nuw nsw i64 %119, %115
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %122, i8* %123, align 1
  %124 = add i64 %90, -40
  %125 = add i64 %92, 12
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i64*
  store i64 %96, i64* %126, align 8
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -24
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RAX.i2530, align 8
  %133 = add i64 %129, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RAX.i2530, align 8
  %136 = add i64 %127, -48
  %137 = add i64 %129, 11
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i64*
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -32
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RAX.i2530, align 8
  %145 = add i64 %141, 7
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RAX.i2530, align 8
  %148 = add i64 %139, -56
  %149 = add i64 %141, 11
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  store i64 %147, i64* %150, align 8
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -40
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 4
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %RAX.i2530, align 8
  %157 = add i64 %153, 7
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RAX.i2530, align 8
  %160 = add i64 %151, -64
  %161 = add i64 %153, 11
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i64*
  store i64 %159, i64* %162, align 8
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -16
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 7
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 0, i32* %167, align 4
  %RDX.i2445 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_45acc1

block_.L_45acc1:                                  ; preds = %block_45accd, %entry
  %168 = phi i64 [ %300, %block_45accd ], [ %.pre, %entry ]
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -16
  %171 = add i64 %168, 3
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX.i2530, align 8
  %175 = add i64 %169, -12
  %176 = add i64 %168, 6
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = sub i32 %173, %178
  %180 = icmp ult i32 %173, %178
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %99, align 1
  %182 = and i32 %179, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %106, align 1
  %187 = xor i32 %178, %173
  %188 = xor i32 %187, %179
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %111, align 1
  %192 = icmp eq i32 %179, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %114, align 1
  %194 = lshr i32 %179, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %117, align 1
  %196 = lshr i32 %173, 31
  %197 = lshr i32 %178, 31
  %198 = xor i32 %197, %196
  %199 = xor i32 %194, %196
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %123, align 1
  %203 = icmp ne i8 %195, 0
  %204 = xor i1 %203, %201
  %.v = select i1 %204, i64 12, i64 59
  %205 = add i64 %168, %.v
  store i64 %205, i64* %3, align 8
  br i1 %204, label %block_45accd, label %block_.L_45acfc

block_45accd:                                     ; preds = %block_.L_45acc1
  %206 = add i64 %169, -56
  %207 = add i64 %205, 4
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX.i2530, align 8
  %210 = add i64 %205, 8
  store i64 %210, i64* %3, align 8
  %211 = load i32, i32* %172, align 4
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %RCX.i2527, align 8
  %213 = shl nsw i64 %212, 2
  %214 = add i64 %213, %209
  %215 = add i64 %205, 11
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RDX.i2445, align 8
  %219 = add i64 %169, -64
  %220 = add i64 %205, 15
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX.i2530, align 8
  %223 = add i64 %205, 19
  store i64 %223, i64* %3, align 8
  %224 = load i32, i32* %172, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %RCX.i2527, align 8
  %226 = shl nsw i64 %225, 2
  %227 = add i64 %222, %226
  %228 = add i64 %205, 22
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, %217
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RDX.i2445, align 8
  %233 = icmp ult i32 %231, %217
  %234 = icmp ult i32 %231, %230
  %235 = or i1 %233, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %99, align 1
  %237 = and i32 %231, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %106, align 1
  %242 = xor i32 %230, %217
  %243 = xor i32 %242, %231
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %111, align 1
  %247 = icmp eq i32 %231, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %114, align 1
  %249 = lshr i32 %231, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %117, align 1
  %251 = lshr i32 %217, 31
  %252 = lshr i32 %230, 31
  %253 = xor i32 %249, %251
  %254 = xor i32 %249, %252
  %255 = add nuw nsw i32 %253, %254
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %123, align 1
  %258 = add i64 %169, -48
  %259 = add i64 %205, 26
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX.i2530, align 8
  %262 = add i64 %205, 30
  store i64 %262, i64* %3, align 8
  %263 = load i32, i32* %172, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %RCX.i2527, align 8
  %265 = shl nsw i64 %264, 2
  %266 = add i64 %265, %261
  %267 = add i64 %205, 33
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 %231, i32* %268, align 4
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -16
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 3
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX.i2530, align 8
  %277 = icmp eq i32 %274, -1
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %99, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %106, align 1
  %286 = xor i32 %275, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %111, align 1
  %290 = zext i1 %278 to i8
  store i8 %290, i8* %114, align 1
  %291 = lshr i32 %275, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %117, align 1
  %293 = lshr i32 %274, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %123, align 1
  %298 = add i64 %271, 9
  store i64 %298, i64* %3, align 8
  store i32 %275, i32* %273, align 4
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, -54
  store i64 %300, i64* %3, align 8
  br label %block_.L_45acc1

block_.L_45acfc:                                  ; preds = %block_.L_45acc1
  %301 = add i64 %169, -24
  %302 = add i64 %205, 4
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  %305 = add i64 %304, 8
  store i64 %305, i64* %RAX.i2530, align 8
  %306 = icmp ugt i64 %304, -9
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %99, align 1
  %308 = trunc i64 %305 to i32
  %309 = and i32 %308, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %106, align 1
  %314 = xor i64 %305, %304
  %315 = lshr i64 %314, 4
  %316 = trunc i64 %315 to i8
  %317 = and i8 %316, 1
  store i8 %317, i8* %111, align 1
  %318 = icmp eq i64 %305, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %114, align 1
  %320 = lshr i64 %305, 63
  %321 = trunc i64 %320 to i8
  store i8 %321, i8* %117, align 1
  %322 = lshr i64 %304, 63
  %323 = xor i64 %320, %322
  %324 = add nuw nsw i64 %323, %320
  %325 = icmp eq i64 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %123, align 1
  %327 = add i64 %205, 12
  store i64 %327, i64* %3, align 8
  store i64 %305, i64* %303, align 8
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -32
  %330 = load i64, i64* %3, align 8
  %331 = add i64 %330, 4
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %329 to i64*
  %333 = load i64, i64* %332, align 8
  %334 = add i64 %333, 8
  store i64 %334, i64* %RAX.i2530, align 8
  %335 = icmp ugt i64 %333, -9
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %99, align 1
  %337 = trunc i64 %334 to i32
  %338 = and i32 %337, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %106, align 1
  %343 = xor i64 %334, %333
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %111, align 1
  %347 = icmp eq i64 %334, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %114, align 1
  %349 = lshr i64 %334, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %117, align 1
  %351 = lshr i64 %333, 63
  %352 = xor i64 %349, %351
  %353 = add nuw nsw i64 %352, %349
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %123, align 1
  %356 = add i64 %330, 12
  store i64 %356, i64* %3, align 8
  store i64 %334, i64* %332, align 8
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -40
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 4
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %358 to i64*
  %362 = load i64, i64* %361, align 8
  %363 = add i64 %362, 8
  store i64 %363, i64* %RAX.i2530, align 8
  %364 = icmp ugt i64 %362, -9
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %99, align 1
  %366 = trunc i64 %363 to i32
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %106, align 1
  %372 = xor i64 %363, %362
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %111, align 1
  %376 = icmp eq i64 %363, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %114, align 1
  %378 = lshr i64 %363, 63
  %379 = trunc i64 %378 to i8
  store i8 %379, i8* %117, align 1
  %380 = lshr i64 %362, 63
  %381 = xor i64 %378, %380
  %382 = add nuw nsw i64 %381, %378
  %383 = icmp eq i64 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %123, align 1
  %385 = add i64 %359, 12
  store i64 %385, i64* %3, align 8
  store i64 %363, i64* %361, align 8
  %386 = load i64, i64* %RBP.i, align 8
  %387 = add i64 %386, -24
  %388 = load i64, i64* %3, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX.i2530, align 8
  %392 = add i64 %388, 7
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RAX.i2530, align 8
  %395 = add i64 %386, -48
  %396 = add i64 %388, 11
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  store i64 %394, i64* %397, align 8
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -32
  %400 = load i64, i64* %3, align 8
  %401 = add i64 %400, 4
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RAX.i2530, align 8
  %404 = add i64 %400, 7
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i2530, align 8
  %407 = add i64 %398, -56
  %408 = add i64 %400, 11
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i64*
  store i64 %406, i64* %409, align 8
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -40
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 4
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RAX.i2530, align 8
  %416 = add i64 %412, 7
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RAX.i2530, align 8
  %419 = add i64 %410, -64
  %420 = add i64 %412, 11
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  store i64 %418, i64* %421, align 8
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -16
  %424 = load i64, i64* %3, align 8
  %425 = add i64 %424, 7
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %423 to i32*
  store i32 0, i32* %426, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_45ad48

block_.L_45ad48:                                  ; preds = %block_45ad54, %block_.L_45acfc
  %427 = phi i64 [ %559, %block_45ad54 ], [ %.pre111, %block_.L_45acfc ]
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -16
  %430 = add i64 %427, 3
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RAX.i2530, align 8
  %434 = add i64 %428, -12
  %435 = add i64 %427, 6
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sub i32 %432, %437
  %439 = icmp ult i32 %432, %437
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %99, align 1
  %441 = and i32 %438, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %106, align 1
  %446 = xor i32 %437, %432
  %447 = xor i32 %446, %438
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %111, align 1
  %451 = icmp eq i32 %438, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %114, align 1
  %453 = lshr i32 %438, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %117, align 1
  %455 = lshr i32 %432, 31
  %456 = lshr i32 %437, 31
  %457 = xor i32 %456, %455
  %458 = xor i32 %453, %455
  %459 = add nuw nsw i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %123, align 1
  %462 = icmp ne i8 %454, 0
  %463 = xor i1 %462, %460
  %.v135 = select i1 %463, i64 12, i64 59
  %464 = add i64 %427, %.v135
  store i64 %464, i64* %3, align 8
  br i1 %463, label %block_45ad54, label %block_.L_45ad83

block_45ad54:                                     ; preds = %block_.L_45ad48
  %465 = add i64 %428, -56
  %466 = add i64 %464, 4
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RAX.i2530, align 8
  %469 = add i64 %464, 8
  store i64 %469, i64* %3, align 8
  %470 = load i32, i32* %431, align 4
  %471 = sext i32 %470 to i64
  store i64 %471, i64* %RCX.i2527, align 8
  %472 = shl nsw i64 %471, 2
  %473 = add i64 %472, %468
  %474 = add i64 %464, 11
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RDX.i2445, align 8
  %478 = add i64 %428, -64
  %479 = add i64 %464, 15
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %RAX.i2530, align 8
  %482 = add i64 %464, 19
  store i64 %482, i64* %3, align 8
  %483 = load i32, i32* %431, align 4
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RCX.i2527, align 8
  %485 = shl nsw i64 %484, 2
  %486 = add i64 %481, %485
  %487 = add i64 %464, 22
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = add i32 %489, %476
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RDX.i2445, align 8
  %492 = icmp ult i32 %490, %476
  %493 = icmp ult i32 %490, %489
  %494 = or i1 %492, %493
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %99, align 1
  %496 = and i32 %490, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %106, align 1
  %501 = xor i32 %489, %476
  %502 = xor i32 %501, %490
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %111, align 1
  %506 = icmp eq i32 %490, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %114, align 1
  %508 = lshr i32 %490, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %117, align 1
  %510 = lshr i32 %476, 31
  %511 = lshr i32 %489, 31
  %512 = xor i32 %508, %510
  %513 = xor i32 %508, %511
  %514 = add nuw nsw i32 %512, %513
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %123, align 1
  %517 = add i64 %428, -48
  %518 = add i64 %464, 26
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RAX.i2530, align 8
  %521 = add i64 %464, 30
  store i64 %521, i64* %3, align 8
  %522 = load i32, i32* %431, align 4
  %523 = sext i32 %522 to i64
  store i64 %523, i64* %RCX.i2527, align 8
  %524 = shl nsw i64 %523, 2
  %525 = add i64 %524, %520
  %526 = add i64 %464, 33
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  store i32 %490, i32* %527, align 4
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -16
  %530 = load i64, i64* %3, align 8
  %531 = add i64 %530, 3
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %529 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = add i32 %533, 1
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RAX.i2530, align 8
  %536 = icmp eq i32 %533, -1
  %537 = icmp eq i32 %534, 0
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %99, align 1
  %540 = and i32 %534, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %106, align 1
  %545 = xor i32 %534, %533
  %546 = lshr i32 %545, 4
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  store i8 %548, i8* %111, align 1
  %549 = zext i1 %537 to i8
  store i8 %549, i8* %114, align 1
  %550 = lshr i32 %534, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %117, align 1
  %552 = lshr i32 %533, 31
  %553 = xor i32 %550, %552
  %554 = add nuw nsw i32 %553, %550
  %555 = icmp eq i32 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %123, align 1
  %557 = add i64 %530, 9
  store i64 %557, i64* %3, align 8
  store i32 %534, i32* %532, align 4
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, -54
  store i64 %559, i64* %3, align 8
  br label %block_.L_45ad48

block_.L_45ad83:                                  ; preds = %block_.L_45ad48
  %560 = add i64 %428, -24
  %561 = add i64 %464, 4
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  %564 = add i64 %563, 8
  store i64 %564, i64* %RAX.i2530, align 8
  %565 = icmp ugt i64 %563, -9
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %99, align 1
  %567 = trunc i64 %564 to i32
  %568 = and i32 %567, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %106, align 1
  %573 = xor i64 %564, %563
  %574 = lshr i64 %573, 4
  %575 = trunc i64 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %111, align 1
  %577 = icmp eq i64 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %114, align 1
  %579 = lshr i64 %564, 63
  %580 = trunc i64 %579 to i8
  store i8 %580, i8* %117, align 1
  %581 = lshr i64 %563, 63
  %582 = xor i64 %579, %581
  %583 = add nuw nsw i64 %582, %579
  %584 = icmp eq i64 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %123, align 1
  %586 = add i64 %464, 12
  store i64 %586, i64* %3, align 8
  store i64 %564, i64* %562, align 8
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -32
  %589 = load i64, i64* %3, align 8
  %590 = add i64 %589, 4
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %588 to i64*
  %592 = load i64, i64* %591, align 8
  %593 = add i64 %592, 8
  store i64 %593, i64* %RAX.i2530, align 8
  %594 = icmp ugt i64 %592, -9
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %99, align 1
  %596 = trunc i64 %593 to i32
  %597 = and i32 %596, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %106, align 1
  %602 = xor i64 %593, %592
  %603 = lshr i64 %602, 4
  %604 = trunc i64 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %111, align 1
  %606 = icmp eq i64 %593, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %114, align 1
  %608 = lshr i64 %593, 63
  %609 = trunc i64 %608 to i8
  store i8 %609, i8* %117, align 1
  %610 = lshr i64 %592, 63
  %611 = xor i64 %608, %610
  %612 = add nuw nsw i64 %611, %608
  %613 = icmp eq i64 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %123, align 1
  %615 = add i64 %589, 12
  store i64 %615, i64* %3, align 8
  store i64 %593, i64* %591, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -40
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 4
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %617 to i64*
  %621 = load i64, i64* %620, align 8
  %622 = add i64 %621, 8
  store i64 %622, i64* %RAX.i2530, align 8
  %623 = icmp ugt i64 %621, -9
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %99, align 1
  %625 = trunc i64 %622 to i32
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %106, align 1
  %631 = xor i64 %622, %621
  %632 = lshr i64 %631, 4
  %633 = trunc i64 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %111, align 1
  %635 = icmp eq i64 %622, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %114, align 1
  %637 = lshr i64 %622, 63
  %638 = trunc i64 %637 to i8
  store i8 %638, i8* %117, align 1
  %639 = lshr i64 %621, 63
  %640 = xor i64 %637, %639
  %641 = add nuw nsw i64 %640, %637
  %642 = icmp eq i64 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %123, align 1
  %644 = add i64 %618, 12
  store i64 %644, i64* %3, align 8
  store i64 %622, i64* %620, align 8
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -24
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %646 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RAX.i2530, align 8
  %651 = add i64 %647, 7
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RAX.i2530, align 8
  %654 = add i64 %645, -48
  %655 = add i64 %647, 11
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i64*
  store i64 %653, i64* %656, align 8
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -32
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, 4
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %658 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RAX.i2530, align 8
  %663 = add i64 %659, 7
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RAX.i2530, align 8
  %666 = add i64 %657, -56
  %667 = add i64 %659, 11
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i64*
  store i64 %665, i64* %668, align 8
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -40
  %671 = load i64, i64* %3, align 8
  %672 = add i64 %671, 4
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %670 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX.i2530, align 8
  %675 = add i64 %671, 7
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RAX.i2530, align 8
  %678 = add i64 %669, -64
  %679 = add i64 %671, 11
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i64*
  store i64 %677, i64* %680, align 8
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -16
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 7
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %682 to i32*
  store i32 0, i32* %685, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_45adcf

block_.L_45adcf:                                  ; preds = %block_45addb, %block_.L_45ad83
  %686 = phi i64 [ %818, %block_45addb ], [ %.pre112, %block_.L_45ad83 ]
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -16
  %689 = add i64 %686, 3
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RAX.i2530, align 8
  %693 = add i64 %687, -12
  %694 = add i64 %686, 6
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = sub i32 %691, %696
  %698 = icmp ult i32 %691, %696
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %99, align 1
  %700 = and i32 %697, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %106, align 1
  %705 = xor i32 %696, %691
  %706 = xor i32 %705, %697
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %111, align 1
  %710 = icmp eq i32 %697, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %114, align 1
  %712 = lshr i32 %697, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %117, align 1
  %714 = lshr i32 %691, 31
  %715 = lshr i32 %696, 31
  %716 = xor i32 %715, %714
  %717 = xor i32 %712, %714
  %718 = add nuw nsw i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %123, align 1
  %721 = icmp ne i8 %713, 0
  %722 = xor i1 %721, %719
  %.v136 = select i1 %722, i64 12, i64 59
  %723 = add i64 %686, %.v136
  store i64 %723, i64* %3, align 8
  br i1 %722, label %block_45addb, label %block_.L_45ae0a

block_45addb:                                     ; preds = %block_.L_45adcf
  %724 = add i64 %687, -56
  %725 = add i64 %723, 4
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RAX.i2530, align 8
  %728 = add i64 %723, 8
  store i64 %728, i64* %3, align 8
  %729 = load i32, i32* %690, align 4
  %730 = sext i32 %729 to i64
  store i64 %730, i64* %RCX.i2527, align 8
  %731 = shl nsw i64 %730, 2
  %732 = add i64 %731, %727
  %733 = add i64 %723, 11
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RDX.i2445, align 8
  %737 = add i64 %687, -64
  %738 = add i64 %723, 15
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i64*
  %740 = load i64, i64* %739, align 8
  store i64 %740, i64* %RAX.i2530, align 8
  %741 = add i64 %723, 19
  store i64 %741, i64* %3, align 8
  %742 = load i32, i32* %690, align 4
  %743 = sext i32 %742 to i64
  store i64 %743, i64* %RCX.i2527, align 8
  %744 = shl nsw i64 %743, 2
  %745 = add i64 %740, %744
  %746 = add i64 %723, 22
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = add i32 %748, %735
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RDX.i2445, align 8
  %751 = icmp ult i32 %749, %735
  %752 = icmp ult i32 %749, %748
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %99, align 1
  %755 = and i32 %749, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %106, align 1
  %760 = xor i32 %748, %735
  %761 = xor i32 %760, %749
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %111, align 1
  %765 = icmp eq i32 %749, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %114, align 1
  %767 = lshr i32 %749, 31
  %768 = trunc i32 %767 to i8
  store i8 %768, i8* %117, align 1
  %769 = lshr i32 %735, 31
  %770 = lshr i32 %748, 31
  %771 = xor i32 %767, %769
  %772 = xor i32 %767, %770
  %773 = add nuw nsw i32 %771, %772
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %123, align 1
  %776 = add i64 %687, -48
  %777 = add i64 %723, 26
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %RAX.i2530, align 8
  %780 = add i64 %723, 30
  store i64 %780, i64* %3, align 8
  %781 = load i32, i32* %690, align 4
  %782 = sext i32 %781 to i64
  store i64 %782, i64* %RCX.i2527, align 8
  %783 = shl nsw i64 %782, 2
  %784 = add i64 %783, %779
  %785 = add i64 %723, 33
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  store i32 %749, i32* %786, align 4
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -16
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 3
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = add i32 %792, 1
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i2530, align 8
  %795 = icmp eq i32 %792, -1
  %796 = icmp eq i32 %793, 0
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %99, align 1
  %799 = and i32 %793, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %106, align 1
  %804 = xor i32 %793, %792
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %111, align 1
  %808 = zext i1 %796 to i8
  store i8 %808, i8* %114, align 1
  %809 = lshr i32 %793, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %117, align 1
  %811 = lshr i32 %792, 31
  %812 = xor i32 %809, %811
  %813 = add nuw nsw i32 %812, %809
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %123, align 1
  %816 = add i64 %789, 9
  store i64 %816, i64* %3, align 8
  store i32 %793, i32* %791, align 4
  %817 = load i64, i64* %3, align 8
  %818 = add i64 %817, -54
  store i64 %818, i64* %3, align 8
  br label %block_.L_45adcf

block_.L_45ae0a:                                  ; preds = %block_.L_45adcf
  %819 = add i64 %687, -24
  %820 = add i64 %723, 4
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i64*
  %822 = load i64, i64* %821, align 8
  %823 = add i64 %822, 8
  store i64 %823, i64* %RAX.i2530, align 8
  %824 = icmp ugt i64 %822, -9
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %99, align 1
  %826 = trunc i64 %823 to i32
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %106, align 1
  %832 = xor i64 %823, %822
  %833 = lshr i64 %832, 4
  %834 = trunc i64 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %111, align 1
  %836 = icmp eq i64 %823, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %114, align 1
  %838 = lshr i64 %823, 63
  %839 = trunc i64 %838 to i8
  store i8 %839, i8* %117, align 1
  %840 = lshr i64 %822, 63
  %841 = xor i64 %838, %840
  %842 = add nuw nsw i64 %841, %838
  %843 = icmp eq i64 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %123, align 1
  %845 = add i64 %723, 12
  store i64 %845, i64* %3, align 8
  store i64 %823, i64* %821, align 8
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -32
  %848 = load i64, i64* %3, align 8
  %849 = add i64 %848, 4
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %847 to i64*
  %851 = load i64, i64* %850, align 8
  %852 = add i64 %851, 8
  store i64 %852, i64* %RAX.i2530, align 8
  %853 = icmp ugt i64 %851, -9
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %99, align 1
  %855 = trunc i64 %852 to i32
  %856 = and i32 %855, 255
  %857 = tail call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %106, align 1
  %861 = xor i64 %852, %851
  %862 = lshr i64 %861, 4
  %863 = trunc i64 %862 to i8
  %864 = and i8 %863, 1
  store i8 %864, i8* %111, align 1
  %865 = icmp eq i64 %852, 0
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %114, align 1
  %867 = lshr i64 %852, 63
  %868 = trunc i64 %867 to i8
  store i8 %868, i8* %117, align 1
  %869 = lshr i64 %851, 63
  %870 = xor i64 %867, %869
  %871 = add nuw nsw i64 %870, %867
  %872 = icmp eq i64 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %123, align 1
  %874 = add i64 %848, 12
  store i64 %874, i64* %3, align 8
  store i64 %852, i64* %850, align 8
  %875 = load i64, i64* %RBP.i, align 8
  %876 = add i64 %875, -40
  %877 = load i64, i64* %3, align 8
  %878 = add i64 %877, 4
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %876 to i64*
  %880 = load i64, i64* %879, align 8
  %881 = add i64 %880, 8
  store i64 %881, i64* %RAX.i2530, align 8
  %882 = icmp ugt i64 %880, -9
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %99, align 1
  %884 = trunc i64 %881 to i32
  %885 = and i32 %884, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %106, align 1
  %890 = xor i64 %881, %880
  %891 = lshr i64 %890, 4
  %892 = trunc i64 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %111, align 1
  %894 = icmp eq i64 %881, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %114, align 1
  %896 = lshr i64 %881, 63
  %897 = trunc i64 %896 to i8
  store i8 %897, i8* %117, align 1
  %898 = lshr i64 %880, 63
  %899 = xor i64 %896, %898
  %900 = add nuw nsw i64 %899, %896
  %901 = icmp eq i64 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %123, align 1
  %903 = add i64 %877, 12
  store i64 %903, i64* %3, align 8
  store i64 %881, i64* %879, align 8
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -24
  %906 = load i64, i64* %3, align 8
  %907 = add i64 %906, 4
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %905 to i64*
  %909 = load i64, i64* %908, align 8
  store i64 %909, i64* %RAX.i2530, align 8
  %910 = add i64 %906, 7
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %RAX.i2530, align 8
  %913 = add i64 %904, -48
  %914 = add i64 %906, 11
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i64*
  store i64 %912, i64* %915, align 8
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -32
  %918 = load i64, i64* %3, align 8
  %919 = add i64 %918, 4
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %917 to i64*
  %921 = load i64, i64* %920, align 8
  store i64 %921, i64* %RAX.i2530, align 8
  %922 = add i64 %918, 7
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i64*
  %924 = load i64, i64* %923, align 8
  store i64 %924, i64* %RAX.i2530, align 8
  %925 = add i64 %916, -56
  %926 = add i64 %918, 11
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  store i64 %924, i64* %927, align 8
  %928 = load i64, i64* %RBP.i, align 8
  %929 = add i64 %928, -40
  %930 = load i64, i64* %3, align 8
  %931 = add i64 %930, 4
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %929 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %RAX.i2530, align 8
  %934 = add i64 %930, 7
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i64*
  %936 = load i64, i64* %935, align 8
  store i64 %936, i64* %RAX.i2530, align 8
  %937 = add i64 %928, -64
  %938 = add i64 %930, 11
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i64*
  store i64 %936, i64* %939, align 8
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -16
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, 7
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %941 to i32*
  store i32 0, i32* %944, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_45ae56

block_.L_45ae56:                                  ; preds = %block_45ae62, %block_.L_45ae0a
  %945 = phi i64 [ %1077, %block_45ae62 ], [ %.pre113, %block_.L_45ae0a ]
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -16
  %948 = add i64 %945, 3
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i2530, align 8
  %952 = add i64 %946, -12
  %953 = add i64 %945, 6
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = sub i32 %950, %955
  %957 = icmp ult i32 %950, %955
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %99, align 1
  %959 = and i32 %956, 255
  %960 = tail call i32 @llvm.ctpop.i32(i32 %959)
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  store i8 %963, i8* %106, align 1
  %964 = xor i32 %955, %950
  %965 = xor i32 %964, %956
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %111, align 1
  %969 = icmp eq i32 %956, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %114, align 1
  %971 = lshr i32 %956, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %117, align 1
  %973 = lshr i32 %950, 31
  %974 = lshr i32 %955, 31
  %975 = xor i32 %974, %973
  %976 = xor i32 %971, %973
  %977 = add nuw nsw i32 %976, %975
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %123, align 1
  %980 = icmp ne i8 %972, 0
  %981 = xor i1 %980, %978
  %.v137 = select i1 %981, i64 12, i64 59
  %982 = add i64 %945, %.v137
  store i64 %982, i64* %3, align 8
  br i1 %981, label %block_45ae62, label %block_.L_45ae91

block_45ae62:                                     ; preds = %block_.L_45ae56
  %983 = add i64 %946, -56
  %984 = add i64 %982, 4
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RAX.i2530, align 8
  %987 = add i64 %982, 8
  store i64 %987, i64* %3, align 8
  %988 = load i32, i32* %949, align 4
  %989 = sext i32 %988 to i64
  store i64 %989, i64* %RCX.i2527, align 8
  %990 = shl nsw i64 %989, 2
  %991 = add i64 %990, %986
  %992 = add i64 %982, 11
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RDX.i2445, align 8
  %996 = add i64 %946, -64
  %997 = add i64 %982, 15
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i64*
  %999 = load i64, i64* %998, align 8
  store i64 %999, i64* %RAX.i2530, align 8
  %1000 = add i64 %982, 19
  store i64 %1000, i64* %3, align 8
  %1001 = load i32, i32* %949, align 4
  %1002 = sext i32 %1001 to i64
  store i64 %1002, i64* %RCX.i2527, align 8
  %1003 = shl nsw i64 %1002, 2
  %1004 = add i64 %999, %1003
  %1005 = add i64 %982, 22
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = add i32 %1007, %994
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RDX.i2445, align 8
  %1010 = icmp ult i32 %1008, %994
  %1011 = icmp ult i32 %1008, %1007
  %1012 = or i1 %1010, %1011
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %99, align 1
  %1014 = and i32 %1008, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %106, align 1
  %1019 = xor i32 %1007, %994
  %1020 = xor i32 %1019, %1008
  %1021 = lshr i32 %1020, 4
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  store i8 %1023, i8* %111, align 1
  %1024 = icmp eq i32 %1008, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %114, align 1
  %1026 = lshr i32 %1008, 31
  %1027 = trunc i32 %1026 to i8
  store i8 %1027, i8* %117, align 1
  %1028 = lshr i32 %994, 31
  %1029 = lshr i32 %1007, 31
  %1030 = xor i32 %1026, %1028
  %1031 = xor i32 %1026, %1029
  %1032 = add nuw nsw i32 %1030, %1031
  %1033 = icmp eq i32 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %123, align 1
  %1035 = add i64 %946, -48
  %1036 = add i64 %982, 26
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RAX.i2530, align 8
  %1039 = add i64 %982, 30
  store i64 %1039, i64* %3, align 8
  %1040 = load i32, i32* %949, align 4
  %1041 = sext i32 %1040 to i64
  store i64 %1041, i64* %RCX.i2527, align 8
  %1042 = shl nsw i64 %1041, 2
  %1043 = add i64 %1042, %1038
  %1044 = add i64 %982, 33
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  store i32 %1008, i32* %1045, align 4
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -16
  %1048 = load i64, i64* %3, align 8
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1047 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = add i32 %1051, 1
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RAX.i2530, align 8
  %1054 = icmp eq i32 %1051, -1
  %1055 = icmp eq i32 %1052, 0
  %1056 = or i1 %1054, %1055
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %99, align 1
  %1058 = and i32 %1052, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058)
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %106, align 1
  %1063 = xor i32 %1052, %1051
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  store i8 %1066, i8* %111, align 1
  %1067 = zext i1 %1055 to i8
  store i8 %1067, i8* %114, align 1
  %1068 = lshr i32 %1052, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %117, align 1
  %1070 = lshr i32 %1051, 31
  %1071 = xor i32 %1068, %1070
  %1072 = add nuw nsw i32 %1071, %1068
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %123, align 1
  %1075 = add i64 %1048, 9
  store i64 %1075, i64* %3, align 8
  store i32 %1052, i32* %1050, align 4
  %1076 = load i64, i64* %3, align 8
  %1077 = add i64 %1076, -54
  store i64 %1077, i64* %3, align 8
  br label %block_.L_45ae56

block_.L_45ae91:                                  ; preds = %block_.L_45ae56
  %1078 = add i64 %946, -24
  %1079 = add i64 %982, 4
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  %1082 = add i64 %1081, 40
  store i64 %1082, i64* %RAX.i2530, align 8
  %1083 = icmp ugt i64 %1081, -41
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %99, align 1
  %1085 = trunc i64 %1082 to i32
  %1086 = and i32 %1085, 255
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %106, align 1
  %1091 = xor i64 %1082, %1081
  %1092 = lshr i64 %1091, 4
  %1093 = trunc i64 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %111, align 1
  %1095 = icmp eq i64 %1082, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %114, align 1
  %1097 = lshr i64 %1082, 63
  %1098 = trunc i64 %1097 to i8
  store i8 %1098, i8* %117, align 1
  %1099 = lshr i64 %1081, 63
  %1100 = xor i64 %1097, %1099
  %1101 = add nuw nsw i64 %1100, %1097
  %1102 = icmp eq i64 %1101, 2
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %123, align 1
  %1104 = add i64 %982, 12
  store i64 %1104, i64* %3, align 8
  store i64 %1082, i64* %1080, align 8
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -32
  %1107 = load i64, i64* %3, align 8
  %1108 = add i64 %1107, 4
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1106 to i64*
  %1110 = load i64, i64* %1109, align 8
  %1111 = add i64 %1110, 40
  store i64 %1111, i64* %RAX.i2530, align 8
  %1112 = icmp ugt i64 %1110, -41
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %99, align 1
  %1114 = trunc i64 %1111 to i32
  %1115 = and i32 %1114, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %106, align 1
  %1120 = xor i64 %1111, %1110
  %1121 = lshr i64 %1120, 4
  %1122 = trunc i64 %1121 to i8
  %1123 = and i8 %1122, 1
  store i8 %1123, i8* %111, align 1
  %1124 = icmp eq i64 %1111, 0
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %114, align 1
  %1126 = lshr i64 %1111, 63
  %1127 = trunc i64 %1126 to i8
  store i8 %1127, i8* %117, align 1
  %1128 = lshr i64 %1110, 63
  %1129 = xor i64 %1126, %1128
  %1130 = add nuw nsw i64 %1129, %1126
  %1131 = icmp eq i64 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %123, align 1
  %1133 = add i64 %1107, 12
  store i64 %1133, i64* %3, align 8
  store i64 %1111, i64* %1109, align 8
  %1134 = load i64, i64* %RBP.i, align 8
  %1135 = add i64 %1134, -40
  %1136 = load i64, i64* %3, align 8
  %1137 = add i64 %1136, 4
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1135 to i64*
  %1139 = load i64, i64* %1138, align 8
  %1140 = add i64 %1139, 40
  store i64 %1140, i64* %RAX.i2530, align 8
  %1141 = icmp ugt i64 %1139, -41
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %99, align 1
  %1143 = trunc i64 %1140 to i32
  %1144 = and i32 %1143, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %106, align 1
  %1149 = xor i64 %1140, %1139
  %1150 = lshr i64 %1149, 4
  %1151 = trunc i64 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %111, align 1
  %1153 = icmp eq i64 %1140, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %114, align 1
  %1155 = lshr i64 %1140, 63
  %1156 = trunc i64 %1155 to i8
  store i8 %1156, i8* %117, align 1
  %1157 = lshr i64 %1139, 63
  %1158 = xor i64 %1155, %1157
  %1159 = add nuw nsw i64 %1158, %1155
  %1160 = icmp eq i64 %1159, 2
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %123, align 1
  %1162 = add i64 %1136, 12
  store i64 %1162, i64* %3, align 8
  store i64 %1140, i64* %1138, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -24
  %1165 = load i64, i64* %3, align 8
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RAX.i2530, align 8
  %1169 = add i64 %1165, 7
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RAX.i2530, align 8
  %1172 = add i64 %1163, -48
  %1173 = add i64 %1165, 11
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i64*
  store i64 %1171, i64* %1174, align 8
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -32
  %1177 = load i64, i64* %3, align 8
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1176 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RAX.i2530, align 8
  %1181 = add i64 %1177, 7
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RAX.i2530, align 8
  %1184 = add i64 %1175, -56
  %1185 = add i64 %1177, 11
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i64*
  store i64 %1183, i64* %1186, align 8
  %1187 = load i64, i64* %RBP.i, align 8
  %1188 = add i64 %1187, -40
  %1189 = load i64, i64* %3, align 8
  %1190 = add i64 %1189, 4
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1188 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RAX.i2530, align 8
  %1193 = add i64 %1189, 7
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RAX.i2530, align 8
  %1196 = add i64 %1187, -64
  %1197 = add i64 %1189, 11
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  store i64 %1195, i64* %1198, align 8
  %1199 = load i64, i64* %RBP.i, align 8
  %1200 = add i64 %1199, -16
  %1201 = load i64, i64* %3, align 8
  %1202 = add i64 %1201, 7
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1200 to i32*
  store i32 0, i32* %1203, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_45aedd

block_.L_45aedd:                                  ; preds = %block_45aee9, %block_.L_45ae91
  %1204 = phi i64 [ %1336, %block_45aee9 ], [ %.pre114, %block_.L_45ae91 ]
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -16
  %1207 = add i64 %1204, 3
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i2530, align 8
  %1211 = add i64 %1205, -12
  %1212 = add i64 %1204, 6
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1209, %1214
  %1216 = icmp ult i32 %1209, %1214
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %99, align 1
  %1218 = and i32 %1215, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %106, align 1
  %1223 = xor i32 %1214, %1209
  %1224 = xor i32 %1223, %1215
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %111, align 1
  %1228 = icmp eq i32 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %114, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %117, align 1
  %1232 = lshr i32 %1209, 31
  %1233 = lshr i32 %1214, 31
  %1234 = xor i32 %1233, %1232
  %1235 = xor i32 %1230, %1232
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %123, align 1
  %1239 = icmp ne i8 %1231, 0
  %1240 = xor i1 %1239, %1237
  %.v138 = select i1 %1240, i64 12, i64 59
  %1241 = add i64 %1204, %.v138
  store i64 %1241, i64* %3, align 8
  br i1 %1240, label %block_45aee9, label %block_.L_45af18

block_45aee9:                                     ; preds = %block_.L_45aedd
  %1242 = add i64 %1205, -56
  %1243 = add i64 %1241, 4
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i2530, align 8
  %1246 = add i64 %1241, 8
  store i64 %1246, i64* %3, align 8
  %1247 = load i32, i32* %1208, align 4
  %1248 = sext i32 %1247 to i64
  store i64 %1248, i64* %RCX.i2527, align 8
  %1249 = shl nsw i64 %1248, 2
  %1250 = add i64 %1249, %1245
  %1251 = add i64 %1241, 11
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RDX.i2445, align 8
  %1255 = add i64 %1205, -64
  %1256 = add i64 %1241, 15
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RAX.i2530, align 8
  %1259 = add i64 %1241, 19
  store i64 %1259, i64* %3, align 8
  %1260 = load i32, i32* %1208, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RCX.i2527, align 8
  %1262 = shl nsw i64 %1261, 2
  %1263 = add i64 %1258, %1262
  %1264 = add i64 %1241, 22
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = add i32 %1266, %1253
  %1268 = zext i32 %1267 to i64
  store i64 %1268, i64* %RDX.i2445, align 8
  %1269 = icmp ult i32 %1267, %1253
  %1270 = icmp ult i32 %1267, %1266
  %1271 = or i1 %1269, %1270
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %99, align 1
  %1273 = and i32 %1267, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %106, align 1
  %1278 = xor i32 %1266, %1253
  %1279 = xor i32 %1278, %1267
  %1280 = lshr i32 %1279, 4
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %111, align 1
  %1283 = icmp eq i32 %1267, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %114, align 1
  %1285 = lshr i32 %1267, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %117, align 1
  %1287 = lshr i32 %1253, 31
  %1288 = lshr i32 %1266, 31
  %1289 = xor i32 %1285, %1287
  %1290 = xor i32 %1285, %1288
  %1291 = add nuw nsw i32 %1289, %1290
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %123, align 1
  %1294 = add i64 %1205, -48
  %1295 = add i64 %1241, 26
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i64*
  %1297 = load i64, i64* %1296, align 8
  store i64 %1297, i64* %RAX.i2530, align 8
  %1298 = add i64 %1241, 30
  store i64 %1298, i64* %3, align 8
  %1299 = load i32, i32* %1208, align 4
  %1300 = sext i32 %1299 to i64
  store i64 %1300, i64* %RCX.i2527, align 8
  %1301 = shl nsw i64 %1300, 2
  %1302 = add i64 %1301, %1297
  %1303 = add i64 %1241, 33
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  store i32 %1267, i32* %1304, align 4
  %1305 = load i64, i64* %RBP.i, align 8
  %1306 = add i64 %1305, -16
  %1307 = load i64, i64* %3, align 8
  %1308 = add i64 %1307, 3
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1306 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = add i32 %1310, 1
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i2530, align 8
  %1313 = icmp eq i32 %1310, -1
  %1314 = icmp eq i32 %1311, 0
  %1315 = or i1 %1313, %1314
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %99, align 1
  %1317 = and i32 %1311, 255
  %1318 = tail call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  store i8 %1321, i8* %106, align 1
  %1322 = xor i32 %1311, %1310
  %1323 = lshr i32 %1322, 4
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  store i8 %1325, i8* %111, align 1
  %1326 = zext i1 %1314 to i8
  store i8 %1326, i8* %114, align 1
  %1327 = lshr i32 %1311, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %117, align 1
  %1329 = lshr i32 %1310, 31
  %1330 = xor i32 %1327, %1329
  %1331 = add nuw nsw i32 %1330, %1327
  %1332 = icmp eq i32 %1331, 2
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %123, align 1
  %1334 = add i64 %1307, 9
  store i64 %1334, i64* %3, align 8
  store i32 %1311, i32* %1309, align 4
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, -54
  store i64 %1336, i64* %3, align 8
  br label %block_.L_45aedd

block_.L_45af18:                                  ; preds = %block_.L_45aedd
  %1337 = add i64 %1205, -24
  %1338 = add i64 %1241, 4
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i64*
  %1340 = load i64, i64* %1339, align 8
  %1341 = add i64 %1340, 8
  store i64 %1341, i64* %RAX.i2530, align 8
  %1342 = icmp ugt i64 %1340, -9
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %99, align 1
  %1344 = trunc i64 %1341 to i32
  %1345 = and i32 %1344, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %106, align 1
  %1350 = xor i64 %1341, %1340
  %1351 = lshr i64 %1350, 4
  %1352 = trunc i64 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %111, align 1
  %1354 = icmp eq i64 %1341, 0
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %114, align 1
  %1356 = lshr i64 %1341, 63
  %1357 = trunc i64 %1356 to i8
  store i8 %1357, i8* %117, align 1
  %1358 = lshr i64 %1340, 63
  %1359 = xor i64 %1356, %1358
  %1360 = add nuw nsw i64 %1359, %1356
  %1361 = icmp eq i64 %1360, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %123, align 1
  %1363 = add i64 %1241, 12
  store i64 %1363, i64* %3, align 8
  store i64 %1341, i64* %1339, align 8
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -32
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  %1370 = add i64 %1369, 8
  store i64 %1370, i64* %RAX.i2530, align 8
  %1371 = icmp ugt i64 %1369, -9
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %99, align 1
  %1373 = trunc i64 %1370 to i32
  %1374 = and i32 %1373, 255
  %1375 = tail call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  store i8 %1378, i8* %106, align 1
  %1379 = xor i64 %1370, %1369
  %1380 = lshr i64 %1379, 4
  %1381 = trunc i64 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %111, align 1
  %1383 = icmp eq i64 %1370, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %114, align 1
  %1385 = lshr i64 %1370, 63
  %1386 = trunc i64 %1385 to i8
  store i8 %1386, i8* %117, align 1
  %1387 = lshr i64 %1369, 63
  %1388 = xor i64 %1385, %1387
  %1389 = add nuw nsw i64 %1388, %1385
  %1390 = icmp eq i64 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %123, align 1
  %1392 = add i64 %1366, 12
  store i64 %1392, i64* %3, align 8
  store i64 %1370, i64* %1368, align 8
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -40
  %1395 = load i64, i64* %3, align 8
  %1396 = add i64 %1395, 4
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1394 to i64*
  %1398 = load i64, i64* %1397, align 8
  %1399 = add i64 %1398, 8
  store i64 %1399, i64* %RAX.i2530, align 8
  %1400 = icmp ugt i64 %1398, -9
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %99, align 1
  %1402 = trunc i64 %1399 to i32
  %1403 = and i32 %1402, 255
  %1404 = tail call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  store i8 %1407, i8* %106, align 1
  %1408 = xor i64 %1399, %1398
  %1409 = lshr i64 %1408, 4
  %1410 = trunc i64 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %111, align 1
  %1412 = icmp eq i64 %1399, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %114, align 1
  %1414 = lshr i64 %1399, 63
  %1415 = trunc i64 %1414 to i8
  store i8 %1415, i8* %117, align 1
  %1416 = lshr i64 %1398, 63
  %1417 = xor i64 %1414, %1416
  %1418 = add nuw nsw i64 %1417, %1414
  %1419 = icmp eq i64 %1418, 2
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %123, align 1
  %1421 = add i64 %1395, 12
  store i64 %1421, i64* %3, align 8
  store i64 %1399, i64* %1397, align 8
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -24
  %1424 = load i64, i64* %3, align 8
  %1425 = add i64 %1424, 4
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1423 to i64*
  %1427 = load i64, i64* %1426, align 8
  store i64 %1427, i64* %RAX.i2530, align 8
  %1428 = add i64 %1424, 7
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RAX.i2530, align 8
  %1431 = add i64 %1422, -48
  %1432 = add i64 %1424, 11
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i64*
  store i64 %1430, i64* %1433, align 8
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -32
  %1436 = load i64, i64* %3, align 8
  %1437 = add i64 %1436, 4
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1435 to i64*
  %1439 = load i64, i64* %1438, align 8
  store i64 %1439, i64* %RAX.i2530, align 8
  %1440 = add i64 %1436, 7
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i64*
  %1442 = load i64, i64* %1441, align 8
  store i64 %1442, i64* %RAX.i2530, align 8
  %1443 = add i64 %1434, -56
  %1444 = add i64 %1436, 11
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i64*
  store i64 %1442, i64* %1445, align 8
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -40
  %1448 = load i64, i64* %3, align 8
  %1449 = add i64 %1448, 4
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1447 to i64*
  %1451 = load i64, i64* %1450, align 8
  store i64 %1451, i64* %RAX.i2530, align 8
  %1452 = add i64 %1448, 7
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %RAX.i2530, align 8
  %1455 = add i64 %1446, -64
  %1456 = add i64 %1448, 11
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  store i64 %1454, i64* %1457, align 8
  %1458 = load i64, i64* %RBP.i, align 8
  %1459 = add i64 %1458, -16
  %1460 = load i64, i64* %3, align 8
  %1461 = add i64 %1460, 7
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1459 to i32*
  store i32 0, i32* %1462, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_45af64

block_.L_45af64:                                  ; preds = %block_45af70, %block_.L_45af18
  %1463 = phi i64 [ %1595, %block_45af70 ], [ %.pre115, %block_.L_45af18 ]
  %1464 = load i64, i64* %RBP.i, align 8
  %1465 = add i64 %1464, -16
  %1466 = add i64 %1463, 3
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RAX.i2530, align 8
  %1470 = add i64 %1464, -12
  %1471 = add i64 %1463, 6
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = sub i32 %1468, %1473
  %1475 = icmp ult i32 %1468, %1473
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %99, align 1
  %1477 = and i32 %1474, 255
  %1478 = tail call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  store i8 %1481, i8* %106, align 1
  %1482 = xor i32 %1473, %1468
  %1483 = xor i32 %1482, %1474
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  store i8 %1486, i8* %111, align 1
  %1487 = icmp eq i32 %1474, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %114, align 1
  %1489 = lshr i32 %1474, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %117, align 1
  %1491 = lshr i32 %1468, 31
  %1492 = lshr i32 %1473, 31
  %1493 = xor i32 %1492, %1491
  %1494 = xor i32 %1489, %1491
  %1495 = add nuw nsw i32 %1494, %1493
  %1496 = icmp eq i32 %1495, 2
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %123, align 1
  %1498 = icmp ne i8 %1490, 0
  %1499 = xor i1 %1498, %1496
  %.v139 = select i1 %1499, i64 12, i64 59
  %1500 = add i64 %1463, %.v139
  store i64 %1500, i64* %3, align 8
  br i1 %1499, label %block_45af70, label %block_.L_45af9f

block_45af70:                                     ; preds = %block_.L_45af64
  %1501 = add i64 %1464, -56
  %1502 = add i64 %1500, 4
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RAX.i2530, align 8
  %1505 = add i64 %1500, 8
  store i64 %1505, i64* %3, align 8
  %1506 = load i32, i32* %1467, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RCX.i2527, align 8
  %1508 = shl nsw i64 %1507, 2
  %1509 = add i64 %1508, %1504
  %1510 = add i64 %1500, 11
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RDX.i2445, align 8
  %1514 = add i64 %1464, -64
  %1515 = add i64 %1500, 15
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  store i64 %1517, i64* %RAX.i2530, align 8
  %1518 = add i64 %1500, 19
  store i64 %1518, i64* %3, align 8
  %1519 = load i32, i32* %1467, align 4
  %1520 = sext i32 %1519 to i64
  store i64 %1520, i64* %RCX.i2527, align 8
  %1521 = shl nsw i64 %1520, 2
  %1522 = add i64 %1517, %1521
  %1523 = add i64 %1500, 22
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = add i32 %1525, %1512
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RDX.i2445, align 8
  %1528 = icmp ult i32 %1526, %1512
  %1529 = icmp ult i32 %1526, %1525
  %1530 = or i1 %1528, %1529
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %99, align 1
  %1532 = and i32 %1526, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %106, align 1
  %1537 = xor i32 %1525, %1512
  %1538 = xor i32 %1537, %1526
  %1539 = lshr i32 %1538, 4
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  store i8 %1541, i8* %111, align 1
  %1542 = icmp eq i32 %1526, 0
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %114, align 1
  %1544 = lshr i32 %1526, 31
  %1545 = trunc i32 %1544 to i8
  store i8 %1545, i8* %117, align 1
  %1546 = lshr i32 %1512, 31
  %1547 = lshr i32 %1525, 31
  %1548 = xor i32 %1544, %1546
  %1549 = xor i32 %1544, %1547
  %1550 = add nuw nsw i32 %1548, %1549
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %123, align 1
  %1553 = add i64 %1464, -48
  %1554 = add i64 %1500, 26
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i64*
  %1556 = load i64, i64* %1555, align 8
  store i64 %1556, i64* %RAX.i2530, align 8
  %1557 = add i64 %1500, 30
  store i64 %1557, i64* %3, align 8
  %1558 = load i32, i32* %1467, align 4
  %1559 = sext i32 %1558 to i64
  store i64 %1559, i64* %RCX.i2527, align 8
  %1560 = shl nsw i64 %1559, 2
  %1561 = add i64 %1560, %1556
  %1562 = add i64 %1500, 33
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  store i32 %1526, i32* %1563, align 4
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -16
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = add i32 %1569, 1
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RAX.i2530, align 8
  %1572 = icmp eq i32 %1569, -1
  %1573 = icmp eq i32 %1570, 0
  %1574 = or i1 %1572, %1573
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %99, align 1
  %1576 = and i32 %1570, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %106, align 1
  %1581 = xor i32 %1570, %1569
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %111, align 1
  %1585 = zext i1 %1573 to i8
  store i8 %1585, i8* %114, align 1
  %1586 = lshr i32 %1570, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %117, align 1
  %1588 = lshr i32 %1569, 31
  %1589 = xor i32 %1586, %1588
  %1590 = add nuw nsw i32 %1589, %1586
  %1591 = icmp eq i32 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %123, align 1
  %1593 = add i64 %1566, 9
  store i64 %1593, i64* %3, align 8
  store i32 %1570, i32* %1568, align 4
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, -54
  store i64 %1595, i64* %3, align 8
  br label %block_.L_45af64

block_.L_45af9f:                                  ; preds = %block_.L_45af64
  %1596 = add i64 %1464, -24
  %1597 = add i64 %1500, 4
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  %1599 = load i64, i64* %1598, align 8
  %1600 = add i64 %1599, 8
  store i64 %1600, i64* %RAX.i2530, align 8
  %1601 = icmp ugt i64 %1599, -9
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %99, align 1
  %1603 = trunc i64 %1600 to i32
  %1604 = and i32 %1603, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %106, align 1
  %1609 = xor i64 %1600, %1599
  %1610 = lshr i64 %1609, 4
  %1611 = trunc i64 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %111, align 1
  %1613 = icmp eq i64 %1600, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %114, align 1
  %1615 = lshr i64 %1600, 63
  %1616 = trunc i64 %1615 to i8
  store i8 %1616, i8* %117, align 1
  %1617 = lshr i64 %1599, 63
  %1618 = xor i64 %1615, %1617
  %1619 = add nuw nsw i64 %1618, %1615
  %1620 = icmp eq i64 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %123, align 1
  %1622 = add i64 %1500, 12
  store i64 %1622, i64* %3, align 8
  store i64 %1600, i64* %1598, align 8
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -32
  %1625 = load i64, i64* %3, align 8
  %1626 = add i64 %1625, 4
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1624 to i64*
  %1628 = load i64, i64* %1627, align 8
  %1629 = add i64 %1628, 8
  store i64 %1629, i64* %RAX.i2530, align 8
  %1630 = icmp ugt i64 %1628, -9
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %99, align 1
  %1632 = trunc i64 %1629 to i32
  %1633 = and i32 %1632, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %106, align 1
  %1638 = xor i64 %1629, %1628
  %1639 = lshr i64 %1638, 4
  %1640 = trunc i64 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %111, align 1
  %1642 = icmp eq i64 %1629, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %114, align 1
  %1644 = lshr i64 %1629, 63
  %1645 = trunc i64 %1644 to i8
  store i8 %1645, i8* %117, align 1
  %1646 = lshr i64 %1628, 63
  %1647 = xor i64 %1644, %1646
  %1648 = add nuw nsw i64 %1647, %1644
  %1649 = icmp eq i64 %1648, 2
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %123, align 1
  %1651 = add i64 %1625, 12
  store i64 %1651, i64* %3, align 8
  store i64 %1629, i64* %1627, align 8
  %1652 = load i64, i64* %RBP.i, align 8
  %1653 = add i64 %1652, -40
  %1654 = load i64, i64* %3, align 8
  %1655 = add i64 %1654, 4
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1653 to i64*
  %1657 = load i64, i64* %1656, align 8
  %1658 = add i64 %1657, 8
  store i64 %1658, i64* %RAX.i2530, align 8
  %1659 = icmp ugt i64 %1657, -9
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %99, align 1
  %1661 = trunc i64 %1658 to i32
  %1662 = and i32 %1661, 255
  %1663 = tail call i32 @llvm.ctpop.i32(i32 %1662)
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  store i8 %1666, i8* %106, align 1
  %1667 = xor i64 %1658, %1657
  %1668 = lshr i64 %1667, 4
  %1669 = trunc i64 %1668 to i8
  %1670 = and i8 %1669, 1
  store i8 %1670, i8* %111, align 1
  %1671 = icmp eq i64 %1658, 0
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %114, align 1
  %1673 = lshr i64 %1658, 63
  %1674 = trunc i64 %1673 to i8
  store i8 %1674, i8* %117, align 1
  %1675 = lshr i64 %1657, 63
  %1676 = xor i64 %1673, %1675
  %1677 = add nuw nsw i64 %1676, %1673
  %1678 = icmp eq i64 %1677, 2
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %123, align 1
  %1680 = add i64 %1654, 12
  store i64 %1680, i64* %3, align 8
  store i64 %1658, i64* %1656, align 8
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -24
  %1683 = load i64, i64* %3, align 8
  %1684 = add i64 %1683, 4
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1682 to i64*
  %1686 = load i64, i64* %1685, align 8
  store i64 %1686, i64* %RAX.i2530, align 8
  %1687 = add i64 %1683, 7
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RAX.i2530, align 8
  %1690 = add i64 %1681, -48
  %1691 = add i64 %1683, 11
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i64*
  store i64 %1689, i64* %1692, align 8
  %1693 = load i64, i64* %RBP.i, align 8
  %1694 = add i64 %1693, -32
  %1695 = load i64, i64* %3, align 8
  %1696 = add i64 %1695, 4
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1694 to i64*
  %1698 = load i64, i64* %1697, align 8
  store i64 %1698, i64* %RAX.i2530, align 8
  %1699 = add i64 %1695, 7
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i64*
  %1701 = load i64, i64* %1700, align 8
  store i64 %1701, i64* %RAX.i2530, align 8
  %1702 = add i64 %1693, -56
  %1703 = add i64 %1695, 11
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i64*
  store i64 %1701, i64* %1704, align 8
  %1705 = load i64, i64* %RBP.i, align 8
  %1706 = add i64 %1705, -40
  %1707 = load i64, i64* %3, align 8
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1706 to i64*
  %1710 = load i64, i64* %1709, align 8
  store i64 %1710, i64* %RAX.i2530, align 8
  %1711 = add i64 %1707, 7
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i64*
  %1713 = load i64, i64* %1712, align 8
  store i64 %1713, i64* %RAX.i2530, align 8
  %1714 = add i64 %1705, -64
  %1715 = add i64 %1707, 11
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i64*
  store i64 %1713, i64* %1716, align 8
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -16
  %1719 = load i64, i64* %3, align 8
  %1720 = add i64 %1719, 7
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1718 to i32*
  store i32 0, i32* %1721, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_45afeb

block_.L_45afeb:                                  ; preds = %block_45aff7, %block_.L_45af9f
  %1722 = phi i64 [ %1854, %block_45aff7 ], [ %.pre116, %block_.L_45af9f ]
  %1723 = load i64, i64* %RBP.i, align 8
  %1724 = add i64 %1723, -16
  %1725 = add i64 %1722, 3
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RAX.i2530, align 8
  %1729 = add i64 %1723, -12
  %1730 = add i64 %1722, 6
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i32*
  %1732 = load i32, i32* %1731, align 4
  %1733 = sub i32 %1727, %1732
  %1734 = icmp ult i32 %1727, %1732
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %99, align 1
  %1736 = and i32 %1733, 255
  %1737 = tail call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  store i8 %1740, i8* %106, align 1
  %1741 = xor i32 %1732, %1727
  %1742 = xor i32 %1741, %1733
  %1743 = lshr i32 %1742, 4
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  store i8 %1745, i8* %111, align 1
  %1746 = icmp eq i32 %1733, 0
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %114, align 1
  %1748 = lshr i32 %1733, 31
  %1749 = trunc i32 %1748 to i8
  store i8 %1749, i8* %117, align 1
  %1750 = lshr i32 %1727, 31
  %1751 = lshr i32 %1732, 31
  %1752 = xor i32 %1751, %1750
  %1753 = xor i32 %1748, %1750
  %1754 = add nuw nsw i32 %1753, %1752
  %1755 = icmp eq i32 %1754, 2
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %123, align 1
  %1757 = icmp ne i8 %1749, 0
  %1758 = xor i1 %1757, %1755
  %.v140 = select i1 %1758, i64 12, i64 59
  %1759 = add i64 %1722, %.v140
  store i64 %1759, i64* %3, align 8
  br i1 %1758, label %block_45aff7, label %block_.L_45b026

block_45aff7:                                     ; preds = %block_.L_45afeb
  %1760 = add i64 %1723, -56
  %1761 = add i64 %1759, 4
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i64*
  %1763 = load i64, i64* %1762, align 8
  store i64 %1763, i64* %RAX.i2530, align 8
  %1764 = add i64 %1759, 8
  store i64 %1764, i64* %3, align 8
  %1765 = load i32, i32* %1726, align 4
  %1766 = sext i32 %1765 to i64
  store i64 %1766, i64* %RCX.i2527, align 8
  %1767 = shl nsw i64 %1766, 2
  %1768 = add i64 %1767, %1763
  %1769 = add i64 %1759, 11
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RDX.i2445, align 8
  %1773 = add i64 %1723, -64
  %1774 = add i64 %1759, 15
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i64*
  %1776 = load i64, i64* %1775, align 8
  store i64 %1776, i64* %RAX.i2530, align 8
  %1777 = add i64 %1759, 19
  store i64 %1777, i64* %3, align 8
  %1778 = load i32, i32* %1726, align 4
  %1779 = sext i32 %1778 to i64
  store i64 %1779, i64* %RCX.i2527, align 8
  %1780 = shl nsw i64 %1779, 2
  %1781 = add i64 %1776, %1780
  %1782 = add i64 %1759, 22
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = add i32 %1784, %1771
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RDX.i2445, align 8
  %1787 = icmp ult i32 %1785, %1771
  %1788 = icmp ult i32 %1785, %1784
  %1789 = or i1 %1787, %1788
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %99, align 1
  %1791 = and i32 %1785, 255
  %1792 = tail call i32 @llvm.ctpop.i32(i32 %1791)
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = xor i8 %1794, 1
  store i8 %1795, i8* %106, align 1
  %1796 = xor i32 %1784, %1771
  %1797 = xor i32 %1796, %1785
  %1798 = lshr i32 %1797, 4
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  store i8 %1800, i8* %111, align 1
  %1801 = icmp eq i32 %1785, 0
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %114, align 1
  %1803 = lshr i32 %1785, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %117, align 1
  %1805 = lshr i32 %1771, 31
  %1806 = lshr i32 %1784, 31
  %1807 = xor i32 %1803, %1805
  %1808 = xor i32 %1803, %1806
  %1809 = add nuw nsw i32 %1807, %1808
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %123, align 1
  %1812 = add i64 %1723, -48
  %1813 = add i64 %1759, 26
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i64*
  %1815 = load i64, i64* %1814, align 8
  store i64 %1815, i64* %RAX.i2530, align 8
  %1816 = add i64 %1759, 30
  store i64 %1816, i64* %3, align 8
  %1817 = load i32, i32* %1726, align 4
  %1818 = sext i32 %1817 to i64
  store i64 %1818, i64* %RCX.i2527, align 8
  %1819 = shl nsw i64 %1818, 2
  %1820 = add i64 %1819, %1815
  %1821 = add i64 %1759, 33
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  store i32 %1785, i32* %1822, align 4
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -16
  %1825 = load i64, i64* %3, align 8
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1824 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = add i32 %1828, 1
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RAX.i2530, align 8
  %1831 = icmp eq i32 %1828, -1
  %1832 = icmp eq i32 %1829, 0
  %1833 = or i1 %1831, %1832
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %99, align 1
  %1835 = and i32 %1829, 255
  %1836 = tail call i32 @llvm.ctpop.i32(i32 %1835)
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = xor i8 %1838, 1
  store i8 %1839, i8* %106, align 1
  %1840 = xor i32 %1829, %1828
  %1841 = lshr i32 %1840, 4
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %111, align 1
  %1844 = zext i1 %1832 to i8
  store i8 %1844, i8* %114, align 1
  %1845 = lshr i32 %1829, 31
  %1846 = trunc i32 %1845 to i8
  store i8 %1846, i8* %117, align 1
  %1847 = lshr i32 %1828, 31
  %1848 = xor i32 %1845, %1847
  %1849 = add nuw nsw i32 %1848, %1845
  %1850 = icmp eq i32 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %123, align 1
  %1852 = add i64 %1825, 9
  store i64 %1852, i64* %3, align 8
  store i32 %1829, i32* %1827, align 4
  %1853 = load i64, i64* %3, align 8
  %1854 = add i64 %1853, -54
  store i64 %1854, i64* %3, align 8
  br label %block_.L_45afeb

block_.L_45b026:                                  ; preds = %block_.L_45afeb
  %1855 = add i64 %1723, -24
  %1856 = add i64 %1759, 4
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  %1859 = add i64 %1858, 8
  store i64 %1859, i64* %RAX.i2530, align 8
  %1860 = icmp ugt i64 %1858, -9
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %99, align 1
  %1862 = trunc i64 %1859 to i32
  %1863 = and i32 %1862, 255
  %1864 = tail call i32 @llvm.ctpop.i32(i32 %1863)
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = xor i8 %1866, 1
  store i8 %1867, i8* %106, align 1
  %1868 = xor i64 %1859, %1858
  %1869 = lshr i64 %1868, 4
  %1870 = trunc i64 %1869 to i8
  %1871 = and i8 %1870, 1
  store i8 %1871, i8* %111, align 1
  %1872 = icmp eq i64 %1859, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %114, align 1
  %1874 = lshr i64 %1859, 63
  %1875 = trunc i64 %1874 to i8
  store i8 %1875, i8* %117, align 1
  %1876 = lshr i64 %1858, 63
  %1877 = xor i64 %1874, %1876
  %1878 = add nuw nsw i64 %1877, %1874
  %1879 = icmp eq i64 %1878, 2
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %123, align 1
  %1881 = add i64 %1759, 12
  store i64 %1881, i64* %3, align 8
  store i64 %1859, i64* %1857, align 8
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -32
  %1884 = load i64, i64* %3, align 8
  %1885 = add i64 %1884, 4
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1883 to i64*
  %1887 = load i64, i64* %1886, align 8
  %1888 = add i64 %1887, 8
  store i64 %1888, i64* %RAX.i2530, align 8
  %1889 = icmp ugt i64 %1887, -9
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %99, align 1
  %1891 = trunc i64 %1888 to i32
  %1892 = and i32 %1891, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %106, align 1
  %1897 = xor i64 %1888, %1887
  %1898 = lshr i64 %1897, 4
  %1899 = trunc i64 %1898 to i8
  %1900 = and i8 %1899, 1
  store i8 %1900, i8* %111, align 1
  %1901 = icmp eq i64 %1888, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %114, align 1
  %1903 = lshr i64 %1888, 63
  %1904 = trunc i64 %1903 to i8
  store i8 %1904, i8* %117, align 1
  %1905 = lshr i64 %1887, 63
  %1906 = xor i64 %1903, %1905
  %1907 = add nuw nsw i64 %1906, %1903
  %1908 = icmp eq i64 %1907, 2
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %123, align 1
  %1910 = add i64 %1884, 12
  store i64 %1910, i64* %3, align 8
  store i64 %1888, i64* %1886, align 8
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -40
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, 4
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1912 to i64*
  %1916 = load i64, i64* %1915, align 8
  %1917 = add i64 %1916, 8
  store i64 %1917, i64* %RAX.i2530, align 8
  %1918 = icmp ugt i64 %1916, -9
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %99, align 1
  %1920 = trunc i64 %1917 to i32
  %1921 = and i32 %1920, 255
  %1922 = tail call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  store i8 %1925, i8* %106, align 1
  %1926 = xor i64 %1917, %1916
  %1927 = lshr i64 %1926, 4
  %1928 = trunc i64 %1927 to i8
  %1929 = and i8 %1928, 1
  store i8 %1929, i8* %111, align 1
  %1930 = icmp eq i64 %1917, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %114, align 1
  %1932 = lshr i64 %1917, 63
  %1933 = trunc i64 %1932 to i8
  store i8 %1933, i8* %117, align 1
  %1934 = lshr i64 %1916, 63
  %1935 = xor i64 %1932, %1934
  %1936 = add nuw nsw i64 %1935, %1932
  %1937 = icmp eq i64 %1936, 2
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %123, align 1
  %1939 = add i64 %1913, 12
  store i64 %1939, i64* %3, align 8
  store i64 %1917, i64* %1915, align 8
  %1940 = load i64, i64* %RBP.i, align 8
  %1941 = add i64 %1940, -24
  %1942 = load i64, i64* %3, align 8
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1941 to i64*
  %1945 = load i64, i64* %1944, align 8
  store i64 %1945, i64* %RAX.i2530, align 8
  %1946 = add i64 %1942, 7
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i64*
  %1948 = load i64, i64* %1947, align 8
  store i64 %1948, i64* %RAX.i2530, align 8
  %1949 = add i64 %1940, -48
  %1950 = add i64 %1942, 11
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i64*
  store i64 %1948, i64* %1951, align 8
  %1952 = load i64, i64* %RBP.i, align 8
  %1953 = add i64 %1952, -32
  %1954 = load i64, i64* %3, align 8
  %1955 = add i64 %1954, 4
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1953 to i64*
  %1957 = load i64, i64* %1956, align 8
  store i64 %1957, i64* %RAX.i2530, align 8
  %1958 = add i64 %1954, 7
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %RAX.i2530, align 8
  %1961 = add i64 %1952, -56
  %1962 = add i64 %1954, 11
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i64*
  store i64 %1960, i64* %1963, align 8
  %1964 = load i64, i64* %RBP.i, align 8
  %1965 = add i64 %1964, -40
  %1966 = load i64, i64* %3, align 8
  %1967 = add i64 %1966, 4
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1965 to i64*
  %1969 = load i64, i64* %1968, align 8
  store i64 %1969, i64* %RAX.i2530, align 8
  %1970 = add i64 %1966, 7
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to i64*
  %1972 = load i64, i64* %1971, align 8
  store i64 %1972, i64* %RAX.i2530, align 8
  %1973 = add i64 %1964, -64
  %1974 = add i64 %1966, 11
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i64*
  store i64 %1972, i64* %1975, align 8
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -16
  %1978 = load i64, i64* %3, align 8
  %1979 = add i64 %1978, 7
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1977 to i32*
  store i32 0, i32* %1980, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_45b072

block_.L_45b072:                                  ; preds = %block_45b07e, %block_.L_45b026
  %1981 = phi i64 [ %2113, %block_45b07e ], [ %.pre117, %block_.L_45b026 ]
  %1982 = load i64, i64* %RBP.i, align 8
  %1983 = add i64 %1982, -16
  %1984 = add i64 %1981, 3
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RAX.i2530, align 8
  %1988 = add i64 %1982, -12
  %1989 = add i64 %1981, 6
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i32*
  %1991 = load i32, i32* %1990, align 4
  %1992 = sub i32 %1986, %1991
  %1993 = icmp ult i32 %1986, %1991
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %99, align 1
  %1995 = and i32 %1992, 255
  %1996 = tail call i32 @llvm.ctpop.i32(i32 %1995)
  %1997 = trunc i32 %1996 to i8
  %1998 = and i8 %1997, 1
  %1999 = xor i8 %1998, 1
  store i8 %1999, i8* %106, align 1
  %2000 = xor i32 %1991, %1986
  %2001 = xor i32 %2000, %1992
  %2002 = lshr i32 %2001, 4
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  store i8 %2004, i8* %111, align 1
  %2005 = icmp eq i32 %1992, 0
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %114, align 1
  %2007 = lshr i32 %1992, 31
  %2008 = trunc i32 %2007 to i8
  store i8 %2008, i8* %117, align 1
  %2009 = lshr i32 %1986, 31
  %2010 = lshr i32 %1991, 31
  %2011 = xor i32 %2010, %2009
  %2012 = xor i32 %2007, %2009
  %2013 = add nuw nsw i32 %2012, %2011
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %123, align 1
  %2016 = icmp ne i8 %2008, 0
  %2017 = xor i1 %2016, %2014
  %.v141 = select i1 %2017, i64 12, i64 59
  %2018 = add i64 %1981, %.v141
  store i64 %2018, i64* %3, align 8
  br i1 %2017, label %block_45b07e, label %block_.L_45b0ad

block_45b07e:                                     ; preds = %block_.L_45b072
  %2019 = add i64 %1982, -56
  %2020 = add i64 %2018, 4
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i64*
  %2022 = load i64, i64* %2021, align 8
  store i64 %2022, i64* %RAX.i2530, align 8
  %2023 = add i64 %2018, 8
  store i64 %2023, i64* %3, align 8
  %2024 = load i32, i32* %1985, align 4
  %2025 = sext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i2527, align 8
  %2026 = shl nsw i64 %2025, 2
  %2027 = add i64 %2026, %2022
  %2028 = add i64 %2018, 11
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RDX.i2445, align 8
  %2032 = add i64 %1982, -64
  %2033 = add i64 %2018, 15
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2032 to i64*
  %2035 = load i64, i64* %2034, align 8
  store i64 %2035, i64* %RAX.i2530, align 8
  %2036 = add i64 %2018, 19
  store i64 %2036, i64* %3, align 8
  %2037 = load i32, i32* %1985, align 4
  %2038 = sext i32 %2037 to i64
  store i64 %2038, i64* %RCX.i2527, align 8
  %2039 = shl nsw i64 %2038, 2
  %2040 = add i64 %2035, %2039
  %2041 = add i64 %2018, 22
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i32*
  %2043 = load i32, i32* %2042, align 4
  %2044 = add i32 %2043, %2030
  %2045 = zext i32 %2044 to i64
  store i64 %2045, i64* %RDX.i2445, align 8
  %2046 = icmp ult i32 %2044, %2030
  %2047 = icmp ult i32 %2044, %2043
  %2048 = or i1 %2046, %2047
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %99, align 1
  %2050 = and i32 %2044, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %106, align 1
  %2055 = xor i32 %2043, %2030
  %2056 = xor i32 %2055, %2044
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %111, align 1
  %2060 = icmp eq i32 %2044, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %114, align 1
  %2062 = lshr i32 %2044, 31
  %2063 = trunc i32 %2062 to i8
  store i8 %2063, i8* %117, align 1
  %2064 = lshr i32 %2030, 31
  %2065 = lshr i32 %2043, 31
  %2066 = xor i32 %2062, %2064
  %2067 = xor i32 %2062, %2065
  %2068 = add nuw nsw i32 %2066, %2067
  %2069 = icmp eq i32 %2068, 2
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %123, align 1
  %2071 = add i64 %1982, -48
  %2072 = add i64 %2018, 26
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i64*
  %2074 = load i64, i64* %2073, align 8
  store i64 %2074, i64* %RAX.i2530, align 8
  %2075 = add i64 %2018, 30
  store i64 %2075, i64* %3, align 8
  %2076 = load i32, i32* %1985, align 4
  %2077 = sext i32 %2076 to i64
  store i64 %2077, i64* %RCX.i2527, align 8
  %2078 = shl nsw i64 %2077, 2
  %2079 = add i64 %2078, %2074
  %2080 = add i64 %2018, 33
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  store i32 %2044, i32* %2081, align 4
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -16
  %2084 = load i64, i64* %3, align 8
  %2085 = add i64 %2084, 3
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2083 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = add i32 %2087, 1
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RAX.i2530, align 8
  %2090 = icmp eq i32 %2087, -1
  %2091 = icmp eq i32 %2088, 0
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %99, align 1
  %2094 = and i32 %2088, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %106, align 1
  %2099 = xor i32 %2088, %2087
  %2100 = lshr i32 %2099, 4
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  store i8 %2102, i8* %111, align 1
  %2103 = zext i1 %2091 to i8
  store i8 %2103, i8* %114, align 1
  %2104 = lshr i32 %2088, 31
  %2105 = trunc i32 %2104 to i8
  store i8 %2105, i8* %117, align 1
  %2106 = lshr i32 %2087, 31
  %2107 = xor i32 %2104, %2106
  %2108 = add nuw nsw i32 %2107, %2104
  %2109 = icmp eq i32 %2108, 2
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %123, align 1
  %2111 = add i64 %2084, 9
  store i64 %2111, i64* %3, align 8
  store i32 %2088, i32* %2086, align 4
  %2112 = load i64, i64* %3, align 8
  %2113 = add i64 %2112, -54
  store i64 %2113, i64* %3, align 8
  br label %block_.L_45b072

block_.L_45b0ad:                                  ; preds = %block_.L_45b072
  %2114 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %2114, i64* %RAX.i2530, align 8
  %2115 = add i64 %1982, -4
  %2116 = add i64 %2018, 12
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2115 to i32*
  %2118 = load i32, i32* %2117, align 4
  %2119 = sext i32 %2118 to i64
  store i64 %2119, i64* %RCX.i2527, align 8
  %2120 = shl nsw i64 %2119, 3
  %2121 = add i64 %2120, %2114
  %2122 = add i64 %2018, 16
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i64*
  %2124 = load i64, i64* %2123, align 8
  store i64 %2124, i64* %RAX.i2530, align 8
  %2125 = add i64 %1982, -8
  %2126 = add i64 %2018, 20
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  %2128 = load i32, i32* %2127, align 4
  %2129 = sext i32 %2128 to i64
  store i64 %2129, i64* %RCX.i2527, align 8
  %2130 = shl nsw i64 %2129, 3
  %2131 = add i64 %2130, %2124
  %2132 = add i64 %2018, 24
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %RAX.i2530, align 8
  %2135 = add i64 %2134, 40
  %2136 = add i64 %2018, 28
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i64*
  %2138 = load i64, i64* %2137, align 8
  %2139 = add i64 %1982, -24
  %2140 = add i64 %2018, 32
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i64*
  store i64 %2138, i64* %2141, align 8
  %2142 = load i64, i64* %3, align 8
  %2143 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %2143, i64* %RAX.i2530, align 8
  %2144 = load i64, i64* %RBP.i, align 8
  %2145 = add i64 %2144, -4
  %2146 = add i64 %2142, 12
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = sext i32 %2148 to i64
  store i64 %2149, i64* %RCX.i2527, align 8
  %2150 = shl nsw i64 %2149, 3
  %2151 = add i64 %2150, %2143
  %2152 = add i64 %2142, 16
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i64*
  %2154 = load i64, i64* %2153, align 8
  store i64 %2154, i64* %RAX.i2530, align 8
  %2155 = add i64 %2144, -8
  %2156 = add i64 %2142, 20
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = sext i32 %2158 to i64
  store i64 %2159, i64* %RCX.i2527, align 8
  %2160 = shl nsw i64 %2159, 3
  %2161 = add i64 %2160, %2154
  %2162 = add i64 %2142, 24
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i64*
  %2164 = load i64, i64* %2163, align 8
  store i64 %2164, i64* %RAX.i2530, align 8
  %2165 = add i64 %2164, 56
  %2166 = add i64 %2142, 28
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %RAX.i2530, align 8
  %2169 = add i64 %2144, -32
  %2170 = add i64 %2142, 32
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i64*
  store i64 %2168, i64* %2171, align 8
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -32
  %2174 = load i64, i64* %3, align 8
  %2175 = add i64 %2174, 4
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2173 to i64*
  %2177 = load i64, i64* %2176, align 8
  %2178 = add i64 %2177, 8
  store i64 %2178, i64* %RAX.i2530, align 8
  %2179 = icmp ugt i64 %2177, -9
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %99, align 1
  %2181 = trunc i64 %2178 to i32
  %2182 = and i32 %2181, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %106, align 1
  %2187 = xor i64 %2178, %2177
  %2188 = lshr i64 %2187, 4
  %2189 = trunc i64 %2188 to i8
  %2190 = and i8 %2189, 1
  store i8 %2190, i8* %111, align 1
  %2191 = icmp eq i64 %2178, 0
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %114, align 1
  %2193 = lshr i64 %2178, 63
  %2194 = trunc i64 %2193 to i8
  store i8 %2194, i8* %117, align 1
  %2195 = lshr i64 %2177, 63
  %2196 = xor i64 %2193, %2195
  %2197 = add nuw nsw i64 %2196, %2193
  %2198 = icmp eq i64 %2197, 2
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %123, align 1
  %2200 = add i64 %2172, -40
  %2201 = add i64 %2174, 12
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i64*
  store i64 %2178, i64* %2202, align 8
  %2203 = load i64, i64* %RBP.i, align 8
  %2204 = add i64 %2203, -24
  %2205 = load i64, i64* %3, align 8
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2204 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %RAX.i2530, align 8
  %2209 = add i64 %2205, 7
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i64*
  %2211 = load i64, i64* %2210, align 8
  store i64 %2211, i64* %RAX.i2530, align 8
  %2212 = add i64 %2203, -48
  %2213 = add i64 %2205, 11
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i64*
  store i64 %2211, i64* %2214, align 8
  %2215 = load i64, i64* %RBP.i, align 8
  %2216 = add i64 %2215, -32
  %2217 = load i64, i64* %3, align 8
  %2218 = add i64 %2217, 4
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2216 to i64*
  %2220 = load i64, i64* %2219, align 8
  store i64 %2220, i64* %RAX.i2530, align 8
  %2221 = add i64 %2217, 7
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i64*
  %2223 = load i64, i64* %2222, align 8
  store i64 %2223, i64* %RAX.i2530, align 8
  %2224 = add i64 %2215, -56
  %2225 = add i64 %2217, 11
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i64*
  store i64 %2223, i64* %2226, align 8
  %2227 = load i64, i64* %RBP.i, align 8
  %2228 = add i64 %2227, -40
  %2229 = load i64, i64* %3, align 8
  %2230 = add i64 %2229, 4
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2228 to i64*
  %2232 = load i64, i64* %2231, align 8
  store i64 %2232, i64* %RAX.i2530, align 8
  %2233 = add i64 %2229, 7
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i64*
  %2235 = load i64, i64* %2234, align 8
  store i64 %2235, i64* %RAX.i2530, align 8
  %2236 = add i64 %2227, -64
  %2237 = add i64 %2229, 11
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i64*
  store i64 %2235, i64* %2238, align 8
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -16
  %2241 = load i64, i64* %3, align 8
  %2242 = add i64 %2241, 7
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2240 to i32*
  store i32 0, i32* %2243, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_45b121

block_.L_45b121:                                  ; preds = %block_45b12d, %block_.L_45b0ad
  %2244 = phi i64 [ %2376, %block_45b12d ], [ %.pre118, %block_.L_45b0ad ]
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -16
  %2247 = add i64 %2244, 3
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = zext i32 %2249 to i64
  store i64 %2250, i64* %RAX.i2530, align 8
  %2251 = add i64 %2245, -12
  %2252 = add i64 %2244, 6
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = sub i32 %2249, %2254
  %2256 = icmp ult i32 %2249, %2254
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %99, align 1
  %2258 = and i32 %2255, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %106, align 1
  %2263 = xor i32 %2254, %2249
  %2264 = xor i32 %2263, %2255
  %2265 = lshr i32 %2264, 4
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  store i8 %2267, i8* %111, align 1
  %2268 = icmp eq i32 %2255, 0
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %114, align 1
  %2270 = lshr i32 %2255, 31
  %2271 = trunc i32 %2270 to i8
  store i8 %2271, i8* %117, align 1
  %2272 = lshr i32 %2249, 31
  %2273 = lshr i32 %2254, 31
  %2274 = xor i32 %2273, %2272
  %2275 = xor i32 %2270, %2272
  %2276 = add nuw nsw i32 %2275, %2274
  %2277 = icmp eq i32 %2276, 2
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %123, align 1
  %2279 = icmp ne i8 %2271, 0
  %2280 = xor i1 %2279, %2277
  %.v142 = select i1 %2280, i64 12, i64 59
  %2281 = add i64 %2244, %.v142
  store i64 %2281, i64* %3, align 8
  br i1 %2280, label %block_45b12d, label %block_.L_45b15c

block_45b12d:                                     ; preds = %block_.L_45b121
  %2282 = add i64 %2245, -56
  %2283 = add i64 %2281, 4
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i64*
  %2285 = load i64, i64* %2284, align 8
  store i64 %2285, i64* %RAX.i2530, align 8
  %2286 = add i64 %2281, 8
  store i64 %2286, i64* %3, align 8
  %2287 = load i32, i32* %2248, align 4
  %2288 = sext i32 %2287 to i64
  store i64 %2288, i64* %RCX.i2527, align 8
  %2289 = shl nsw i64 %2288, 2
  %2290 = add i64 %2289, %2285
  %2291 = add i64 %2281, 11
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RDX.i2445, align 8
  %2295 = add i64 %2245, -64
  %2296 = add i64 %2281, 15
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i64*
  %2298 = load i64, i64* %2297, align 8
  store i64 %2298, i64* %RAX.i2530, align 8
  %2299 = add i64 %2281, 19
  store i64 %2299, i64* %3, align 8
  %2300 = load i32, i32* %2248, align 4
  %2301 = sext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i2527, align 8
  %2302 = shl nsw i64 %2301, 2
  %2303 = add i64 %2298, %2302
  %2304 = add i64 %2281, 22
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i32*
  %2306 = load i32, i32* %2305, align 4
  %2307 = add i32 %2306, %2293
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RDX.i2445, align 8
  %2309 = icmp ult i32 %2307, %2293
  %2310 = icmp ult i32 %2307, %2306
  %2311 = or i1 %2309, %2310
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %99, align 1
  %2313 = and i32 %2307, 255
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %106, align 1
  %2318 = xor i32 %2306, %2293
  %2319 = xor i32 %2318, %2307
  %2320 = lshr i32 %2319, 4
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  store i8 %2322, i8* %111, align 1
  %2323 = icmp eq i32 %2307, 0
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %114, align 1
  %2325 = lshr i32 %2307, 31
  %2326 = trunc i32 %2325 to i8
  store i8 %2326, i8* %117, align 1
  %2327 = lshr i32 %2293, 31
  %2328 = lshr i32 %2306, 31
  %2329 = xor i32 %2325, %2327
  %2330 = xor i32 %2325, %2328
  %2331 = add nuw nsw i32 %2329, %2330
  %2332 = icmp eq i32 %2331, 2
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %123, align 1
  %2334 = add i64 %2245, -48
  %2335 = add i64 %2281, 26
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %RAX.i2530, align 8
  %2338 = add i64 %2281, 30
  store i64 %2338, i64* %3, align 8
  %2339 = load i32, i32* %2248, align 4
  %2340 = sext i32 %2339 to i64
  store i64 %2340, i64* %RCX.i2527, align 8
  %2341 = shl nsw i64 %2340, 2
  %2342 = add i64 %2341, %2337
  %2343 = add i64 %2281, 33
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  store i32 %2307, i32* %2344, align 4
  %2345 = load i64, i64* %RBP.i, align 8
  %2346 = add i64 %2345, -16
  %2347 = load i64, i64* %3, align 8
  %2348 = add i64 %2347, 3
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = add i32 %2350, 1
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RAX.i2530, align 8
  %2353 = icmp eq i32 %2350, -1
  %2354 = icmp eq i32 %2351, 0
  %2355 = or i1 %2353, %2354
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %99, align 1
  %2357 = and i32 %2351, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %106, align 1
  %2362 = xor i32 %2351, %2350
  %2363 = lshr i32 %2362, 4
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  store i8 %2365, i8* %111, align 1
  %2366 = zext i1 %2354 to i8
  store i8 %2366, i8* %114, align 1
  %2367 = lshr i32 %2351, 31
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %117, align 1
  %2369 = lshr i32 %2350, 31
  %2370 = xor i32 %2367, %2369
  %2371 = add nuw nsw i32 %2370, %2367
  %2372 = icmp eq i32 %2371, 2
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %123, align 1
  %2374 = add i64 %2347, 9
  store i64 %2374, i64* %3, align 8
  store i32 %2351, i32* %2349, align 4
  %2375 = load i64, i64* %3, align 8
  %2376 = add i64 %2375, -54
  store i64 %2376, i64* %3, align 8
  br label %block_.L_45b121

block_.L_45b15c:                                  ; preds = %block_.L_45b121
  %2377 = add i64 %2245, -24
  %2378 = add i64 %2281, 4
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i64*
  %2380 = load i64, i64* %2379, align 8
  %2381 = add i64 %2380, 16
  store i64 %2381, i64* %RAX.i2530, align 8
  %2382 = icmp ugt i64 %2380, -17
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %99, align 1
  %2384 = trunc i64 %2381 to i32
  %2385 = and i32 %2384, 255
  %2386 = tail call i32 @llvm.ctpop.i32(i32 %2385)
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  %2389 = xor i8 %2388, 1
  store i8 %2389, i8* %106, align 1
  %2390 = xor i64 %2380, 16
  %2391 = xor i64 %2390, %2381
  %2392 = lshr i64 %2391, 4
  %2393 = trunc i64 %2392 to i8
  %2394 = and i8 %2393, 1
  store i8 %2394, i8* %111, align 1
  %2395 = icmp eq i64 %2381, 0
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %114, align 1
  %2397 = lshr i64 %2381, 63
  %2398 = trunc i64 %2397 to i8
  store i8 %2398, i8* %117, align 1
  %2399 = lshr i64 %2380, 63
  %2400 = xor i64 %2397, %2399
  %2401 = add nuw nsw i64 %2400, %2397
  %2402 = icmp eq i64 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %123, align 1
  %2404 = add i64 %2281, 12
  store i64 %2404, i64* %3, align 8
  store i64 %2381, i64* %2379, align 8
  %2405 = load i64, i64* %RBP.i, align 8
  %2406 = add i64 %2405, -32
  %2407 = load i64, i64* %3, align 8
  %2408 = add i64 %2407, 4
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2406 to i64*
  %2410 = load i64, i64* %2409, align 8
  %2411 = add i64 %2410, 16
  store i64 %2411, i64* %RAX.i2530, align 8
  %2412 = icmp ugt i64 %2410, -17
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %99, align 1
  %2414 = trunc i64 %2411 to i32
  %2415 = and i32 %2414, 255
  %2416 = tail call i32 @llvm.ctpop.i32(i32 %2415)
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = xor i8 %2418, 1
  store i8 %2419, i8* %106, align 1
  %2420 = xor i64 %2410, 16
  %2421 = xor i64 %2420, %2411
  %2422 = lshr i64 %2421, 4
  %2423 = trunc i64 %2422 to i8
  %2424 = and i8 %2423, 1
  store i8 %2424, i8* %111, align 1
  %2425 = icmp eq i64 %2411, 0
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %114, align 1
  %2427 = lshr i64 %2411, 63
  %2428 = trunc i64 %2427 to i8
  store i8 %2428, i8* %117, align 1
  %2429 = lshr i64 %2410, 63
  %2430 = xor i64 %2427, %2429
  %2431 = add nuw nsw i64 %2430, %2427
  %2432 = icmp eq i64 %2431, 2
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %123, align 1
  %2434 = add i64 %2407, 12
  store i64 %2434, i64* %3, align 8
  store i64 %2411, i64* %2409, align 8
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, -40
  %2437 = load i64, i64* %3, align 8
  %2438 = add i64 %2437, 4
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2436 to i64*
  %2440 = load i64, i64* %2439, align 8
  %2441 = add i64 %2440, 16
  store i64 %2441, i64* %RAX.i2530, align 8
  %2442 = icmp ugt i64 %2440, -17
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %99, align 1
  %2444 = trunc i64 %2441 to i32
  %2445 = and i32 %2444, 255
  %2446 = tail call i32 @llvm.ctpop.i32(i32 %2445)
  %2447 = trunc i32 %2446 to i8
  %2448 = and i8 %2447, 1
  %2449 = xor i8 %2448, 1
  store i8 %2449, i8* %106, align 1
  %2450 = xor i64 %2440, 16
  %2451 = xor i64 %2450, %2441
  %2452 = lshr i64 %2451, 4
  %2453 = trunc i64 %2452 to i8
  %2454 = and i8 %2453, 1
  store i8 %2454, i8* %111, align 1
  %2455 = icmp eq i64 %2441, 0
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %114, align 1
  %2457 = lshr i64 %2441, 63
  %2458 = trunc i64 %2457 to i8
  store i8 %2458, i8* %117, align 1
  %2459 = lshr i64 %2440, 63
  %2460 = xor i64 %2457, %2459
  %2461 = add nuw nsw i64 %2460, %2457
  %2462 = icmp eq i64 %2461, 2
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %123, align 1
  %2464 = add i64 %2437, 12
  store i64 %2464, i64* %3, align 8
  store i64 %2441, i64* %2439, align 8
  %2465 = load i64, i64* %RBP.i, align 8
  %2466 = add i64 %2465, -24
  %2467 = load i64, i64* %3, align 8
  %2468 = add i64 %2467, 4
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2466 to i64*
  %2470 = load i64, i64* %2469, align 8
  store i64 %2470, i64* %RAX.i2530, align 8
  %2471 = add i64 %2467, 7
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i64*
  %2473 = load i64, i64* %2472, align 8
  store i64 %2473, i64* %RAX.i2530, align 8
  %2474 = add i64 %2465, -48
  %2475 = add i64 %2467, 11
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i64*
  store i64 %2473, i64* %2476, align 8
  %2477 = load i64, i64* %RBP.i, align 8
  %2478 = add i64 %2477, -32
  %2479 = load i64, i64* %3, align 8
  %2480 = add i64 %2479, 4
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2478 to i64*
  %2482 = load i64, i64* %2481, align 8
  store i64 %2482, i64* %RAX.i2530, align 8
  %2483 = add i64 %2479, 7
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i64*
  %2485 = load i64, i64* %2484, align 8
  store i64 %2485, i64* %RAX.i2530, align 8
  %2486 = add i64 %2477, -56
  %2487 = add i64 %2479, 11
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i64*
  store i64 %2485, i64* %2488, align 8
  %2489 = load i64, i64* %RBP.i, align 8
  %2490 = add i64 %2489, -40
  %2491 = load i64, i64* %3, align 8
  %2492 = add i64 %2491, 4
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2490 to i64*
  %2494 = load i64, i64* %2493, align 8
  store i64 %2494, i64* %RAX.i2530, align 8
  %2495 = add i64 %2491, 7
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i64*
  %2497 = load i64, i64* %2496, align 8
  store i64 %2497, i64* %RAX.i2530, align 8
  %2498 = add i64 %2489, -64
  %2499 = add i64 %2491, 11
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i64*
  store i64 %2497, i64* %2500, align 8
  %2501 = load i64, i64* %RBP.i, align 8
  %2502 = add i64 %2501, -16
  %2503 = load i64, i64* %3, align 8
  %2504 = add i64 %2503, 7
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2502 to i32*
  store i32 0, i32* %2505, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_45b1a8

block_.L_45b1a8:                                  ; preds = %block_45b1b4, %block_.L_45b15c
  %2506 = phi i64 [ %2638, %block_45b1b4 ], [ %.pre119, %block_.L_45b15c ]
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -16
  %2509 = add i64 %2506, 3
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RAX.i2530, align 8
  %2513 = add i64 %2507, -12
  %2514 = add i64 %2506, 6
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = sub i32 %2511, %2516
  %2518 = icmp ult i32 %2511, %2516
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %99, align 1
  %2520 = and i32 %2517, 255
  %2521 = tail call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  store i8 %2524, i8* %106, align 1
  %2525 = xor i32 %2516, %2511
  %2526 = xor i32 %2525, %2517
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  store i8 %2529, i8* %111, align 1
  %2530 = icmp eq i32 %2517, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %114, align 1
  %2532 = lshr i32 %2517, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %117, align 1
  %2534 = lshr i32 %2511, 31
  %2535 = lshr i32 %2516, 31
  %2536 = xor i32 %2535, %2534
  %2537 = xor i32 %2532, %2534
  %2538 = add nuw nsw i32 %2537, %2536
  %2539 = icmp eq i32 %2538, 2
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %123, align 1
  %2541 = icmp ne i8 %2533, 0
  %2542 = xor i1 %2541, %2539
  %.v143 = select i1 %2542, i64 12, i64 59
  %2543 = add i64 %2506, %.v143
  store i64 %2543, i64* %3, align 8
  br i1 %2542, label %block_45b1b4, label %block_.L_45b1e3

block_45b1b4:                                     ; preds = %block_.L_45b1a8
  %2544 = add i64 %2507, -56
  %2545 = add i64 %2543, 4
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i64 %2547, i64* %RAX.i2530, align 8
  %2548 = add i64 %2543, 8
  store i64 %2548, i64* %3, align 8
  %2549 = load i32, i32* %2510, align 4
  %2550 = sext i32 %2549 to i64
  store i64 %2550, i64* %RCX.i2527, align 8
  %2551 = shl nsw i64 %2550, 2
  %2552 = add i64 %2551, %2547
  %2553 = add i64 %2543, 11
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i32*
  %2555 = load i32, i32* %2554, align 4
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RDX.i2445, align 8
  %2557 = add i64 %2507, -64
  %2558 = add i64 %2543, 15
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i64*
  %2560 = load i64, i64* %2559, align 8
  store i64 %2560, i64* %RAX.i2530, align 8
  %2561 = add i64 %2543, 19
  store i64 %2561, i64* %3, align 8
  %2562 = load i32, i32* %2510, align 4
  %2563 = sext i32 %2562 to i64
  store i64 %2563, i64* %RCX.i2527, align 8
  %2564 = shl nsw i64 %2563, 2
  %2565 = add i64 %2560, %2564
  %2566 = add i64 %2543, 22
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i32*
  %2568 = load i32, i32* %2567, align 4
  %2569 = add i32 %2568, %2555
  %2570 = zext i32 %2569 to i64
  store i64 %2570, i64* %RDX.i2445, align 8
  %2571 = icmp ult i32 %2569, %2555
  %2572 = icmp ult i32 %2569, %2568
  %2573 = or i1 %2571, %2572
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %99, align 1
  %2575 = and i32 %2569, 255
  %2576 = tail call i32 @llvm.ctpop.i32(i32 %2575)
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  %2579 = xor i8 %2578, 1
  store i8 %2579, i8* %106, align 1
  %2580 = xor i32 %2568, %2555
  %2581 = xor i32 %2580, %2569
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  store i8 %2584, i8* %111, align 1
  %2585 = icmp eq i32 %2569, 0
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %114, align 1
  %2587 = lshr i32 %2569, 31
  %2588 = trunc i32 %2587 to i8
  store i8 %2588, i8* %117, align 1
  %2589 = lshr i32 %2555, 31
  %2590 = lshr i32 %2568, 31
  %2591 = xor i32 %2587, %2589
  %2592 = xor i32 %2587, %2590
  %2593 = add nuw nsw i32 %2591, %2592
  %2594 = icmp eq i32 %2593, 2
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %123, align 1
  %2596 = add i64 %2507, -48
  %2597 = add i64 %2543, 26
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i64*
  %2599 = load i64, i64* %2598, align 8
  store i64 %2599, i64* %RAX.i2530, align 8
  %2600 = add i64 %2543, 30
  store i64 %2600, i64* %3, align 8
  %2601 = load i32, i32* %2510, align 4
  %2602 = sext i32 %2601 to i64
  store i64 %2602, i64* %RCX.i2527, align 8
  %2603 = shl nsw i64 %2602, 2
  %2604 = add i64 %2603, %2599
  %2605 = add i64 %2543, 33
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  store i32 %2569, i32* %2606, align 4
  %2607 = load i64, i64* %RBP.i, align 8
  %2608 = add i64 %2607, -16
  %2609 = load i64, i64* %3, align 8
  %2610 = add i64 %2609, 3
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2608 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = add i32 %2612, 1
  %2614 = zext i32 %2613 to i64
  store i64 %2614, i64* %RAX.i2530, align 8
  %2615 = icmp eq i32 %2612, -1
  %2616 = icmp eq i32 %2613, 0
  %2617 = or i1 %2615, %2616
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %99, align 1
  %2619 = and i32 %2613, 255
  %2620 = tail call i32 @llvm.ctpop.i32(i32 %2619)
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  %2623 = xor i8 %2622, 1
  store i8 %2623, i8* %106, align 1
  %2624 = xor i32 %2613, %2612
  %2625 = lshr i32 %2624, 4
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  store i8 %2627, i8* %111, align 1
  %2628 = zext i1 %2616 to i8
  store i8 %2628, i8* %114, align 1
  %2629 = lshr i32 %2613, 31
  %2630 = trunc i32 %2629 to i8
  store i8 %2630, i8* %117, align 1
  %2631 = lshr i32 %2612, 31
  %2632 = xor i32 %2629, %2631
  %2633 = add nuw nsw i32 %2632, %2629
  %2634 = icmp eq i32 %2633, 2
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %123, align 1
  %2636 = add i64 %2609, 9
  store i64 %2636, i64* %3, align 8
  store i32 %2613, i32* %2611, align 4
  %2637 = load i64, i64* %3, align 8
  %2638 = add i64 %2637, -54
  store i64 %2638, i64* %3, align 8
  br label %block_.L_45b1a8

block_.L_45b1e3:                                  ; preds = %block_.L_45b1a8
  %2639 = add i64 %2507, -24
  %2640 = add i64 %2543, 4
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i64*
  %2642 = load i64, i64* %2641, align 8
  %2643 = add i64 %2642, 16
  store i64 %2643, i64* %RAX.i2530, align 8
  %2644 = icmp ugt i64 %2642, -17
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %99, align 1
  %2646 = trunc i64 %2643 to i32
  %2647 = and i32 %2646, 255
  %2648 = tail call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  store i8 %2651, i8* %106, align 1
  %2652 = xor i64 %2642, 16
  %2653 = xor i64 %2652, %2643
  %2654 = lshr i64 %2653, 4
  %2655 = trunc i64 %2654 to i8
  %2656 = and i8 %2655, 1
  store i8 %2656, i8* %111, align 1
  %2657 = icmp eq i64 %2643, 0
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %114, align 1
  %2659 = lshr i64 %2643, 63
  %2660 = trunc i64 %2659 to i8
  store i8 %2660, i8* %117, align 1
  %2661 = lshr i64 %2642, 63
  %2662 = xor i64 %2659, %2661
  %2663 = add nuw nsw i64 %2662, %2659
  %2664 = icmp eq i64 %2663, 2
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %123, align 1
  %2666 = add i64 %2543, 12
  store i64 %2666, i64* %3, align 8
  store i64 %2643, i64* %2641, align 8
  %2667 = load i64, i64* %RBP.i, align 8
  %2668 = add i64 %2667, -32
  %2669 = load i64, i64* %3, align 8
  %2670 = add i64 %2669, 4
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2668 to i64*
  %2672 = load i64, i64* %2671, align 8
  %2673 = add i64 %2672, 16
  store i64 %2673, i64* %RAX.i2530, align 8
  %2674 = icmp ugt i64 %2672, -17
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %99, align 1
  %2676 = trunc i64 %2673 to i32
  %2677 = and i32 %2676, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %106, align 1
  %2682 = xor i64 %2672, 16
  %2683 = xor i64 %2682, %2673
  %2684 = lshr i64 %2683, 4
  %2685 = trunc i64 %2684 to i8
  %2686 = and i8 %2685, 1
  store i8 %2686, i8* %111, align 1
  %2687 = icmp eq i64 %2673, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %114, align 1
  %2689 = lshr i64 %2673, 63
  %2690 = trunc i64 %2689 to i8
  store i8 %2690, i8* %117, align 1
  %2691 = lshr i64 %2672, 63
  %2692 = xor i64 %2689, %2691
  %2693 = add nuw nsw i64 %2692, %2689
  %2694 = icmp eq i64 %2693, 2
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %123, align 1
  %2696 = add i64 %2669, 12
  store i64 %2696, i64* %3, align 8
  store i64 %2673, i64* %2671, align 8
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -40
  %2699 = load i64, i64* %3, align 8
  %2700 = add i64 %2699, 4
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2698 to i64*
  %2702 = load i64, i64* %2701, align 8
  %2703 = add i64 %2702, 16
  store i64 %2703, i64* %RAX.i2530, align 8
  %2704 = icmp ugt i64 %2702, -17
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %99, align 1
  %2706 = trunc i64 %2703 to i32
  %2707 = and i32 %2706, 255
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707)
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %106, align 1
  %2712 = xor i64 %2702, 16
  %2713 = xor i64 %2712, %2703
  %2714 = lshr i64 %2713, 4
  %2715 = trunc i64 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %111, align 1
  %2717 = icmp eq i64 %2703, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %114, align 1
  %2719 = lshr i64 %2703, 63
  %2720 = trunc i64 %2719 to i8
  store i8 %2720, i8* %117, align 1
  %2721 = lshr i64 %2702, 63
  %2722 = xor i64 %2719, %2721
  %2723 = add nuw nsw i64 %2722, %2719
  %2724 = icmp eq i64 %2723, 2
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %123, align 1
  %2726 = add i64 %2699, 12
  store i64 %2726, i64* %3, align 8
  store i64 %2703, i64* %2701, align 8
  %2727 = load i64, i64* %RBP.i, align 8
  %2728 = add i64 %2727, -24
  %2729 = load i64, i64* %3, align 8
  %2730 = add i64 %2729, 4
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2728 to i64*
  %2732 = load i64, i64* %2731, align 8
  store i64 %2732, i64* %RAX.i2530, align 8
  %2733 = add i64 %2729, 7
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i64*
  %2735 = load i64, i64* %2734, align 8
  store i64 %2735, i64* %RAX.i2530, align 8
  %2736 = add i64 %2727, -48
  %2737 = add i64 %2729, 11
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i64*
  store i64 %2735, i64* %2738, align 8
  %2739 = load i64, i64* %RBP.i, align 8
  %2740 = add i64 %2739, -32
  %2741 = load i64, i64* %3, align 8
  %2742 = add i64 %2741, 4
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2740 to i64*
  %2744 = load i64, i64* %2743, align 8
  store i64 %2744, i64* %RAX.i2530, align 8
  %2745 = add i64 %2741, 7
  store i64 %2745, i64* %3, align 8
  %2746 = inttoptr i64 %2744 to i64*
  %2747 = load i64, i64* %2746, align 8
  store i64 %2747, i64* %RAX.i2530, align 8
  %2748 = add i64 %2739, -56
  %2749 = add i64 %2741, 11
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i64*
  store i64 %2747, i64* %2750, align 8
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -40
  %2753 = load i64, i64* %3, align 8
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2752 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RAX.i2530, align 8
  %2757 = add i64 %2753, 7
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i64*
  %2759 = load i64, i64* %2758, align 8
  store i64 %2759, i64* %RAX.i2530, align 8
  %2760 = add i64 %2751, -64
  %2761 = add i64 %2753, 11
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i64*
  store i64 %2759, i64* %2762, align 8
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -16
  %2765 = load i64, i64* %3, align 8
  %2766 = add i64 %2765, 7
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2764 to i32*
  store i32 0, i32* %2767, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_45b22f

block_.L_45b22f:                                  ; preds = %block_45b23b, %block_.L_45b1e3
  %2768 = phi i64 [ %2900, %block_45b23b ], [ %.pre120, %block_.L_45b1e3 ]
  %2769 = load i64, i64* %RBP.i, align 8
  %2770 = add i64 %2769, -16
  %2771 = add i64 %2768, 3
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  %2773 = load i32, i32* %2772, align 4
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RAX.i2530, align 8
  %2775 = add i64 %2769, -12
  %2776 = add i64 %2768, 6
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = sub i32 %2773, %2778
  %2780 = icmp ult i32 %2773, %2778
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %99, align 1
  %2782 = and i32 %2779, 255
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %106, align 1
  %2787 = xor i32 %2778, %2773
  %2788 = xor i32 %2787, %2779
  %2789 = lshr i32 %2788, 4
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %111, align 1
  %2792 = icmp eq i32 %2779, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %114, align 1
  %2794 = lshr i32 %2779, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %117, align 1
  %2796 = lshr i32 %2773, 31
  %2797 = lshr i32 %2778, 31
  %2798 = xor i32 %2797, %2796
  %2799 = xor i32 %2794, %2796
  %2800 = add nuw nsw i32 %2799, %2798
  %2801 = icmp eq i32 %2800, 2
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %123, align 1
  %2803 = icmp ne i8 %2795, 0
  %2804 = xor i1 %2803, %2801
  %.v144 = select i1 %2804, i64 12, i64 59
  %2805 = add i64 %2768, %.v144
  store i64 %2805, i64* %3, align 8
  br i1 %2804, label %block_45b23b, label %block_.L_45b26a

block_45b23b:                                     ; preds = %block_.L_45b22f
  %2806 = add i64 %2769, -56
  %2807 = add i64 %2805, 4
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i64*
  %2809 = load i64, i64* %2808, align 8
  store i64 %2809, i64* %RAX.i2530, align 8
  %2810 = add i64 %2805, 8
  store i64 %2810, i64* %3, align 8
  %2811 = load i32, i32* %2772, align 4
  %2812 = sext i32 %2811 to i64
  store i64 %2812, i64* %RCX.i2527, align 8
  %2813 = shl nsw i64 %2812, 2
  %2814 = add i64 %2813, %2809
  %2815 = add i64 %2805, 11
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RDX.i2445, align 8
  %2819 = add i64 %2769, -64
  %2820 = add i64 %2805, 15
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RAX.i2530, align 8
  %2823 = add i64 %2805, 19
  store i64 %2823, i64* %3, align 8
  %2824 = load i32, i32* %2772, align 4
  %2825 = sext i32 %2824 to i64
  store i64 %2825, i64* %RCX.i2527, align 8
  %2826 = shl nsw i64 %2825, 2
  %2827 = add i64 %2822, %2826
  %2828 = add i64 %2805, 22
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = add i32 %2830, %2817
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RDX.i2445, align 8
  %2833 = icmp ult i32 %2831, %2817
  %2834 = icmp ult i32 %2831, %2830
  %2835 = or i1 %2833, %2834
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %99, align 1
  %2837 = and i32 %2831, 255
  %2838 = tail call i32 @llvm.ctpop.i32(i32 %2837)
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = xor i8 %2840, 1
  store i8 %2841, i8* %106, align 1
  %2842 = xor i32 %2830, %2817
  %2843 = xor i32 %2842, %2831
  %2844 = lshr i32 %2843, 4
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %111, align 1
  %2847 = icmp eq i32 %2831, 0
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %114, align 1
  %2849 = lshr i32 %2831, 31
  %2850 = trunc i32 %2849 to i8
  store i8 %2850, i8* %117, align 1
  %2851 = lshr i32 %2817, 31
  %2852 = lshr i32 %2830, 31
  %2853 = xor i32 %2849, %2851
  %2854 = xor i32 %2849, %2852
  %2855 = add nuw nsw i32 %2853, %2854
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %123, align 1
  %2858 = add i64 %2769, -48
  %2859 = add i64 %2805, 26
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i64*
  %2861 = load i64, i64* %2860, align 8
  store i64 %2861, i64* %RAX.i2530, align 8
  %2862 = add i64 %2805, 30
  store i64 %2862, i64* %3, align 8
  %2863 = load i32, i32* %2772, align 4
  %2864 = sext i32 %2863 to i64
  store i64 %2864, i64* %RCX.i2527, align 8
  %2865 = shl nsw i64 %2864, 2
  %2866 = add i64 %2865, %2861
  %2867 = add i64 %2805, 33
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  store i32 %2831, i32* %2868, align 4
  %2869 = load i64, i64* %RBP.i, align 8
  %2870 = add i64 %2869, -16
  %2871 = load i64, i64* %3, align 8
  %2872 = add i64 %2871, 3
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2870 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = add i32 %2874, 1
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RAX.i2530, align 8
  %2877 = icmp eq i32 %2874, -1
  %2878 = icmp eq i32 %2875, 0
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %99, align 1
  %2881 = and i32 %2875, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %106, align 1
  %2886 = xor i32 %2875, %2874
  %2887 = lshr i32 %2886, 4
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  store i8 %2889, i8* %111, align 1
  %2890 = zext i1 %2878 to i8
  store i8 %2890, i8* %114, align 1
  %2891 = lshr i32 %2875, 31
  %2892 = trunc i32 %2891 to i8
  store i8 %2892, i8* %117, align 1
  %2893 = lshr i32 %2874, 31
  %2894 = xor i32 %2891, %2893
  %2895 = add nuw nsw i32 %2894, %2891
  %2896 = icmp eq i32 %2895, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %123, align 1
  %2898 = add i64 %2871, 9
  store i64 %2898, i64* %3, align 8
  store i32 %2875, i32* %2873, align 4
  %2899 = load i64, i64* %3, align 8
  %2900 = add i64 %2899, -54
  store i64 %2900, i64* %3, align 8
  br label %block_.L_45b22f

block_.L_45b26a:                                  ; preds = %block_.L_45b22f
  %2901 = add i64 %2769, -24
  %2902 = add i64 %2805, 4
  store i64 %2902, i64* %3, align 8
  %2903 = inttoptr i64 %2901 to i64*
  %2904 = load i64, i64* %2903, align 8
  %2905 = add i64 %2904, 16
  store i64 %2905, i64* %RAX.i2530, align 8
  %2906 = icmp ugt i64 %2904, -17
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %99, align 1
  %2908 = trunc i64 %2905 to i32
  %2909 = and i32 %2908, 255
  %2910 = tail call i32 @llvm.ctpop.i32(i32 %2909)
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  store i8 %2913, i8* %106, align 1
  %2914 = xor i64 %2904, 16
  %2915 = xor i64 %2914, %2905
  %2916 = lshr i64 %2915, 4
  %2917 = trunc i64 %2916 to i8
  %2918 = and i8 %2917, 1
  store i8 %2918, i8* %111, align 1
  %2919 = icmp eq i64 %2905, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %114, align 1
  %2921 = lshr i64 %2905, 63
  %2922 = trunc i64 %2921 to i8
  store i8 %2922, i8* %117, align 1
  %2923 = lshr i64 %2904, 63
  %2924 = xor i64 %2921, %2923
  %2925 = add nuw nsw i64 %2924, %2921
  %2926 = icmp eq i64 %2925, 2
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %123, align 1
  %2928 = add i64 %2805, 12
  store i64 %2928, i64* %3, align 8
  store i64 %2905, i64* %2903, align 8
  %2929 = load i64, i64* %RBP.i, align 8
  %2930 = add i64 %2929, -32
  %2931 = load i64, i64* %3, align 8
  %2932 = add i64 %2931, 4
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2930 to i64*
  %2934 = load i64, i64* %2933, align 8
  %2935 = add i64 %2934, 16
  store i64 %2935, i64* %RAX.i2530, align 8
  %2936 = icmp ugt i64 %2934, -17
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %99, align 1
  %2938 = trunc i64 %2935 to i32
  %2939 = and i32 %2938, 255
  %2940 = tail call i32 @llvm.ctpop.i32(i32 %2939)
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %106, align 1
  %2944 = xor i64 %2934, 16
  %2945 = xor i64 %2944, %2935
  %2946 = lshr i64 %2945, 4
  %2947 = trunc i64 %2946 to i8
  %2948 = and i8 %2947, 1
  store i8 %2948, i8* %111, align 1
  %2949 = icmp eq i64 %2935, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %114, align 1
  %2951 = lshr i64 %2935, 63
  %2952 = trunc i64 %2951 to i8
  store i8 %2952, i8* %117, align 1
  %2953 = lshr i64 %2934, 63
  %2954 = xor i64 %2951, %2953
  %2955 = add nuw nsw i64 %2954, %2951
  %2956 = icmp eq i64 %2955, 2
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %123, align 1
  %2958 = add i64 %2931, 12
  store i64 %2958, i64* %3, align 8
  store i64 %2935, i64* %2933, align 8
  %2959 = load i64, i64* %RBP.i, align 8
  %2960 = add i64 %2959, -40
  %2961 = load i64, i64* %3, align 8
  %2962 = add i64 %2961, 4
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2960 to i64*
  %2964 = load i64, i64* %2963, align 8
  %2965 = add i64 %2964, 16
  store i64 %2965, i64* %RAX.i2530, align 8
  %2966 = icmp ugt i64 %2964, -17
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %99, align 1
  %2968 = trunc i64 %2965 to i32
  %2969 = and i32 %2968, 255
  %2970 = tail call i32 @llvm.ctpop.i32(i32 %2969)
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = xor i8 %2972, 1
  store i8 %2973, i8* %106, align 1
  %2974 = xor i64 %2964, 16
  %2975 = xor i64 %2974, %2965
  %2976 = lshr i64 %2975, 4
  %2977 = trunc i64 %2976 to i8
  %2978 = and i8 %2977, 1
  store i8 %2978, i8* %111, align 1
  %2979 = icmp eq i64 %2965, 0
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %114, align 1
  %2981 = lshr i64 %2965, 63
  %2982 = trunc i64 %2981 to i8
  store i8 %2982, i8* %117, align 1
  %2983 = lshr i64 %2964, 63
  %2984 = xor i64 %2981, %2983
  %2985 = add nuw nsw i64 %2984, %2981
  %2986 = icmp eq i64 %2985, 2
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %123, align 1
  %2988 = add i64 %2961, 12
  store i64 %2988, i64* %3, align 8
  store i64 %2965, i64* %2963, align 8
  %2989 = load i64, i64* %RBP.i, align 8
  %2990 = add i64 %2989, -24
  %2991 = load i64, i64* %3, align 8
  %2992 = add i64 %2991, 4
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2990 to i64*
  %2994 = load i64, i64* %2993, align 8
  store i64 %2994, i64* %RAX.i2530, align 8
  %2995 = add i64 %2991, 7
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i64*
  %2997 = load i64, i64* %2996, align 8
  store i64 %2997, i64* %RAX.i2530, align 8
  %2998 = add i64 %2989, -48
  %2999 = add i64 %2991, 11
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to i64*
  store i64 %2997, i64* %3000, align 8
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = add i64 %3001, -32
  %3003 = load i64, i64* %3, align 8
  %3004 = add i64 %3003, 4
  store i64 %3004, i64* %3, align 8
  %3005 = inttoptr i64 %3002 to i64*
  %3006 = load i64, i64* %3005, align 8
  store i64 %3006, i64* %RAX.i2530, align 8
  %3007 = add i64 %3003, 7
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3006 to i64*
  %3009 = load i64, i64* %3008, align 8
  store i64 %3009, i64* %RAX.i2530, align 8
  %3010 = add i64 %3001, -56
  %3011 = add i64 %3003, 11
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i64*
  store i64 %3009, i64* %3012, align 8
  %3013 = load i64, i64* %RBP.i, align 8
  %3014 = add i64 %3013, -40
  %3015 = load i64, i64* %3, align 8
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3014 to i64*
  %3018 = load i64, i64* %3017, align 8
  store i64 %3018, i64* %RAX.i2530, align 8
  %3019 = add i64 %3015, 7
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i64*
  %3021 = load i64, i64* %3020, align 8
  store i64 %3021, i64* %RAX.i2530, align 8
  %3022 = add i64 %3013, -64
  %3023 = add i64 %3015, 11
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i64*
  store i64 %3021, i64* %3024, align 8
  %3025 = load i64, i64* %RBP.i, align 8
  %3026 = add i64 %3025, -16
  %3027 = load i64, i64* %3, align 8
  %3028 = add i64 %3027, 7
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3026 to i32*
  store i32 0, i32* %3029, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_45b2b6

block_.L_45b2b6:                                  ; preds = %block_45b2c2, %block_.L_45b26a
  %3030 = phi i64 [ %3162, %block_45b2c2 ], [ %.pre121, %block_.L_45b26a ]
  %3031 = load i64, i64* %RBP.i, align 8
  %3032 = add i64 %3031, -16
  %3033 = add i64 %3030, 3
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i32*
  %3035 = load i32, i32* %3034, align 4
  %3036 = zext i32 %3035 to i64
  store i64 %3036, i64* %RAX.i2530, align 8
  %3037 = add i64 %3031, -12
  %3038 = add i64 %3030, 6
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i32*
  %3040 = load i32, i32* %3039, align 4
  %3041 = sub i32 %3035, %3040
  %3042 = icmp ult i32 %3035, %3040
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %99, align 1
  %3044 = and i32 %3041, 255
  %3045 = tail call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %106, align 1
  %3049 = xor i32 %3040, %3035
  %3050 = xor i32 %3049, %3041
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  store i8 %3053, i8* %111, align 1
  %3054 = icmp eq i32 %3041, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %114, align 1
  %3056 = lshr i32 %3041, 31
  %3057 = trunc i32 %3056 to i8
  store i8 %3057, i8* %117, align 1
  %3058 = lshr i32 %3035, 31
  %3059 = lshr i32 %3040, 31
  %3060 = xor i32 %3059, %3058
  %3061 = xor i32 %3056, %3058
  %3062 = add nuw nsw i32 %3061, %3060
  %3063 = icmp eq i32 %3062, 2
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %123, align 1
  %3065 = icmp ne i8 %3057, 0
  %3066 = xor i1 %3065, %3063
  %.v145 = select i1 %3066, i64 12, i64 59
  %3067 = add i64 %3030, %.v145
  store i64 %3067, i64* %3, align 8
  br i1 %3066, label %block_45b2c2, label %block_.L_45b2f1

block_45b2c2:                                     ; preds = %block_.L_45b2b6
  %3068 = add i64 %3031, -56
  %3069 = add i64 %3067, 4
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i64*
  %3071 = load i64, i64* %3070, align 8
  store i64 %3071, i64* %RAX.i2530, align 8
  %3072 = add i64 %3067, 8
  store i64 %3072, i64* %3, align 8
  %3073 = load i32, i32* %3034, align 4
  %3074 = sext i32 %3073 to i64
  store i64 %3074, i64* %RCX.i2527, align 8
  %3075 = shl nsw i64 %3074, 2
  %3076 = add i64 %3075, %3071
  %3077 = add i64 %3067, 11
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RDX.i2445, align 8
  %3081 = add i64 %3031, -64
  %3082 = add i64 %3067, 15
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %RAX.i2530, align 8
  %3085 = add i64 %3067, 19
  store i64 %3085, i64* %3, align 8
  %3086 = load i32, i32* %3034, align 4
  %3087 = sext i32 %3086 to i64
  store i64 %3087, i64* %RCX.i2527, align 8
  %3088 = shl nsw i64 %3087, 2
  %3089 = add i64 %3084, %3088
  %3090 = add i64 %3067, 22
  store i64 %3090, i64* %3, align 8
  %3091 = inttoptr i64 %3089 to i32*
  %3092 = load i32, i32* %3091, align 4
  %3093 = add i32 %3092, %3079
  %3094 = zext i32 %3093 to i64
  store i64 %3094, i64* %RDX.i2445, align 8
  %3095 = icmp ult i32 %3093, %3079
  %3096 = icmp ult i32 %3093, %3092
  %3097 = or i1 %3095, %3096
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %99, align 1
  %3099 = and i32 %3093, 255
  %3100 = tail call i32 @llvm.ctpop.i32(i32 %3099)
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  store i8 %3103, i8* %106, align 1
  %3104 = xor i32 %3092, %3079
  %3105 = xor i32 %3104, %3093
  %3106 = lshr i32 %3105, 4
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  store i8 %3108, i8* %111, align 1
  %3109 = icmp eq i32 %3093, 0
  %3110 = zext i1 %3109 to i8
  store i8 %3110, i8* %114, align 1
  %3111 = lshr i32 %3093, 31
  %3112 = trunc i32 %3111 to i8
  store i8 %3112, i8* %117, align 1
  %3113 = lshr i32 %3079, 31
  %3114 = lshr i32 %3092, 31
  %3115 = xor i32 %3111, %3113
  %3116 = xor i32 %3111, %3114
  %3117 = add nuw nsw i32 %3115, %3116
  %3118 = icmp eq i32 %3117, 2
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %123, align 1
  %3120 = add i64 %3031, -48
  %3121 = add i64 %3067, 26
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i64*
  %3123 = load i64, i64* %3122, align 8
  store i64 %3123, i64* %RAX.i2530, align 8
  %3124 = add i64 %3067, 30
  store i64 %3124, i64* %3, align 8
  %3125 = load i32, i32* %3034, align 4
  %3126 = sext i32 %3125 to i64
  store i64 %3126, i64* %RCX.i2527, align 8
  %3127 = shl nsw i64 %3126, 2
  %3128 = add i64 %3127, %3123
  %3129 = add i64 %3067, 33
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  store i32 %3093, i32* %3130, align 4
  %3131 = load i64, i64* %RBP.i, align 8
  %3132 = add i64 %3131, -16
  %3133 = load i64, i64* %3, align 8
  %3134 = add i64 %3133, 3
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3132 to i32*
  %3136 = load i32, i32* %3135, align 4
  %3137 = add i32 %3136, 1
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RAX.i2530, align 8
  %3139 = icmp eq i32 %3136, -1
  %3140 = icmp eq i32 %3137, 0
  %3141 = or i1 %3139, %3140
  %3142 = zext i1 %3141 to i8
  store i8 %3142, i8* %99, align 1
  %3143 = and i32 %3137, 255
  %3144 = tail call i32 @llvm.ctpop.i32(i32 %3143)
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  %3147 = xor i8 %3146, 1
  store i8 %3147, i8* %106, align 1
  %3148 = xor i32 %3137, %3136
  %3149 = lshr i32 %3148, 4
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  store i8 %3151, i8* %111, align 1
  %3152 = zext i1 %3140 to i8
  store i8 %3152, i8* %114, align 1
  %3153 = lshr i32 %3137, 31
  %3154 = trunc i32 %3153 to i8
  store i8 %3154, i8* %117, align 1
  %3155 = lshr i32 %3136, 31
  %3156 = xor i32 %3153, %3155
  %3157 = add nuw nsw i32 %3156, %3153
  %3158 = icmp eq i32 %3157, 2
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %123, align 1
  %3160 = add i64 %3133, 9
  store i64 %3160, i64* %3, align 8
  store i32 %3137, i32* %3135, align 4
  %3161 = load i64, i64* %3, align 8
  %3162 = add i64 %3161, -54
  store i64 %3162, i64* %3, align 8
  br label %block_.L_45b2b6

block_.L_45b2f1:                                  ; preds = %block_.L_45b2b6
  %3163 = add i64 %3031, -24
  %3164 = add i64 %3067, 4
  store i64 %3164, i64* %3, align 8
  %3165 = inttoptr i64 %3163 to i64*
  %3166 = load i64, i64* %3165, align 8
  %3167 = add i64 %3166, 16
  store i64 %3167, i64* %RAX.i2530, align 8
  %3168 = icmp ugt i64 %3166, -17
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %99, align 1
  %3170 = trunc i64 %3167 to i32
  %3171 = and i32 %3170, 255
  %3172 = tail call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  store i8 %3175, i8* %106, align 1
  %3176 = xor i64 %3166, 16
  %3177 = xor i64 %3176, %3167
  %3178 = lshr i64 %3177, 4
  %3179 = trunc i64 %3178 to i8
  %3180 = and i8 %3179, 1
  store i8 %3180, i8* %111, align 1
  %3181 = icmp eq i64 %3167, 0
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %114, align 1
  %3183 = lshr i64 %3167, 63
  %3184 = trunc i64 %3183 to i8
  store i8 %3184, i8* %117, align 1
  %3185 = lshr i64 %3166, 63
  %3186 = xor i64 %3183, %3185
  %3187 = add nuw nsw i64 %3186, %3183
  %3188 = icmp eq i64 %3187, 2
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %123, align 1
  %3190 = add i64 %3067, 12
  store i64 %3190, i64* %3, align 8
  store i64 %3167, i64* %3165, align 8
  %3191 = load i64, i64* %RBP.i, align 8
  %3192 = add i64 %3191, -32
  %3193 = load i64, i64* %3, align 8
  %3194 = add i64 %3193, 4
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3192 to i64*
  %3196 = load i64, i64* %3195, align 8
  %3197 = add i64 %3196, 16
  store i64 %3197, i64* %RAX.i2530, align 8
  %3198 = icmp ugt i64 %3196, -17
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %99, align 1
  %3200 = trunc i64 %3197 to i32
  %3201 = and i32 %3200, 255
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %106, align 1
  %3206 = xor i64 %3196, 16
  %3207 = xor i64 %3206, %3197
  %3208 = lshr i64 %3207, 4
  %3209 = trunc i64 %3208 to i8
  %3210 = and i8 %3209, 1
  store i8 %3210, i8* %111, align 1
  %3211 = icmp eq i64 %3197, 0
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %114, align 1
  %3213 = lshr i64 %3197, 63
  %3214 = trunc i64 %3213 to i8
  store i8 %3214, i8* %117, align 1
  %3215 = lshr i64 %3196, 63
  %3216 = xor i64 %3213, %3215
  %3217 = add nuw nsw i64 %3216, %3213
  %3218 = icmp eq i64 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %123, align 1
  %3220 = add i64 %3193, 12
  store i64 %3220, i64* %3, align 8
  store i64 %3197, i64* %3195, align 8
  %3221 = load i64, i64* %RBP.i, align 8
  %3222 = add i64 %3221, -40
  %3223 = load i64, i64* %3, align 8
  %3224 = add i64 %3223, 4
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3222 to i64*
  %3226 = load i64, i64* %3225, align 8
  %3227 = add i64 %3226, 16
  store i64 %3227, i64* %RAX.i2530, align 8
  %3228 = icmp ugt i64 %3226, -17
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %99, align 1
  %3230 = trunc i64 %3227 to i32
  %3231 = and i32 %3230, 255
  %3232 = tail call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  store i8 %3235, i8* %106, align 1
  %3236 = xor i64 %3226, 16
  %3237 = xor i64 %3236, %3227
  %3238 = lshr i64 %3237, 4
  %3239 = trunc i64 %3238 to i8
  %3240 = and i8 %3239, 1
  store i8 %3240, i8* %111, align 1
  %3241 = icmp eq i64 %3227, 0
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %114, align 1
  %3243 = lshr i64 %3227, 63
  %3244 = trunc i64 %3243 to i8
  store i8 %3244, i8* %117, align 1
  %3245 = lshr i64 %3226, 63
  %3246 = xor i64 %3243, %3245
  %3247 = add nuw nsw i64 %3246, %3243
  %3248 = icmp eq i64 %3247, 2
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %123, align 1
  %3250 = add i64 %3223, 12
  store i64 %3250, i64* %3, align 8
  store i64 %3227, i64* %3225, align 8
  %3251 = load i64, i64* %RBP.i, align 8
  %3252 = add i64 %3251, -24
  %3253 = load i64, i64* %3, align 8
  %3254 = add i64 %3253, 4
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3252 to i64*
  %3256 = load i64, i64* %3255, align 8
  store i64 %3256, i64* %RAX.i2530, align 8
  %3257 = add i64 %3253, 7
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i64*
  %3259 = load i64, i64* %3258, align 8
  store i64 %3259, i64* %RAX.i2530, align 8
  %3260 = add i64 %3251, -48
  %3261 = add i64 %3253, 11
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i64*
  store i64 %3259, i64* %3262, align 8
  %3263 = load i64, i64* %RBP.i, align 8
  %3264 = add i64 %3263, -32
  %3265 = load i64, i64* %3, align 8
  %3266 = add i64 %3265, 4
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3264 to i64*
  %3268 = load i64, i64* %3267, align 8
  store i64 %3268, i64* %RAX.i2530, align 8
  %3269 = add i64 %3265, 7
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RAX.i2530, align 8
  %3272 = add i64 %3263, -56
  %3273 = add i64 %3265, 11
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i64*
  store i64 %3271, i64* %3274, align 8
  %3275 = load i64, i64* %RBP.i, align 8
  %3276 = add i64 %3275, -40
  %3277 = load i64, i64* %3, align 8
  %3278 = add i64 %3277, 4
  store i64 %3278, i64* %3, align 8
  %3279 = inttoptr i64 %3276 to i64*
  %3280 = load i64, i64* %3279, align 8
  store i64 %3280, i64* %RAX.i2530, align 8
  %3281 = add i64 %3277, 7
  store i64 %3281, i64* %3, align 8
  %3282 = inttoptr i64 %3280 to i64*
  %3283 = load i64, i64* %3282, align 8
  store i64 %3283, i64* %RAX.i2530, align 8
  %3284 = add i64 %3275, -64
  %3285 = add i64 %3277, 11
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i64*
  store i64 %3283, i64* %3286, align 8
  %3287 = load i64, i64* %RBP.i, align 8
  %3288 = add i64 %3287, -16
  %3289 = load i64, i64* %3, align 8
  %3290 = add i64 %3289, 7
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3288 to i32*
  store i32 0, i32* %3291, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_45b33d

block_.L_45b33d:                                  ; preds = %block_45b349, %block_.L_45b2f1
  %3292 = phi i64 [ %3424, %block_45b349 ], [ %.pre122, %block_.L_45b2f1 ]
  %3293 = load i64, i64* %RBP.i, align 8
  %3294 = add i64 %3293, -16
  %3295 = add i64 %3292, 3
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RAX.i2530, align 8
  %3299 = add i64 %3293, -12
  %3300 = add i64 %3292, 6
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i32*
  %3302 = load i32, i32* %3301, align 4
  %3303 = sub i32 %3297, %3302
  %3304 = icmp ult i32 %3297, %3302
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %99, align 1
  %3306 = and i32 %3303, 255
  %3307 = tail call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  store i8 %3310, i8* %106, align 1
  %3311 = xor i32 %3302, %3297
  %3312 = xor i32 %3311, %3303
  %3313 = lshr i32 %3312, 4
  %3314 = trunc i32 %3313 to i8
  %3315 = and i8 %3314, 1
  store i8 %3315, i8* %111, align 1
  %3316 = icmp eq i32 %3303, 0
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %114, align 1
  %3318 = lshr i32 %3303, 31
  %3319 = trunc i32 %3318 to i8
  store i8 %3319, i8* %117, align 1
  %3320 = lshr i32 %3297, 31
  %3321 = lshr i32 %3302, 31
  %3322 = xor i32 %3321, %3320
  %3323 = xor i32 %3318, %3320
  %3324 = add nuw nsw i32 %3323, %3322
  %3325 = icmp eq i32 %3324, 2
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %123, align 1
  %3327 = icmp ne i8 %3319, 0
  %3328 = xor i1 %3327, %3325
  %.v146 = select i1 %3328, i64 12, i64 59
  %3329 = add i64 %3292, %.v146
  store i64 %3329, i64* %3, align 8
  br i1 %3328, label %block_45b349, label %block_.L_45b378

block_45b349:                                     ; preds = %block_.L_45b33d
  %3330 = add i64 %3293, -56
  %3331 = add i64 %3329, 4
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i64*
  %3333 = load i64, i64* %3332, align 8
  store i64 %3333, i64* %RAX.i2530, align 8
  %3334 = add i64 %3329, 8
  store i64 %3334, i64* %3, align 8
  %3335 = load i32, i32* %3296, align 4
  %3336 = sext i32 %3335 to i64
  store i64 %3336, i64* %RCX.i2527, align 8
  %3337 = shl nsw i64 %3336, 2
  %3338 = add i64 %3337, %3333
  %3339 = add i64 %3329, 11
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i32*
  %3341 = load i32, i32* %3340, align 4
  %3342 = zext i32 %3341 to i64
  store i64 %3342, i64* %RDX.i2445, align 8
  %3343 = add i64 %3293, -64
  %3344 = add i64 %3329, 15
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3343 to i64*
  %3346 = load i64, i64* %3345, align 8
  store i64 %3346, i64* %RAX.i2530, align 8
  %3347 = add i64 %3329, 19
  store i64 %3347, i64* %3, align 8
  %3348 = load i32, i32* %3296, align 4
  %3349 = sext i32 %3348 to i64
  store i64 %3349, i64* %RCX.i2527, align 8
  %3350 = shl nsw i64 %3349, 2
  %3351 = add i64 %3346, %3350
  %3352 = add i64 %3329, 22
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = add i32 %3354, %3341
  %3356 = zext i32 %3355 to i64
  store i64 %3356, i64* %RDX.i2445, align 8
  %3357 = icmp ult i32 %3355, %3341
  %3358 = icmp ult i32 %3355, %3354
  %3359 = or i1 %3357, %3358
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %99, align 1
  %3361 = and i32 %3355, 255
  %3362 = tail call i32 @llvm.ctpop.i32(i32 %3361)
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = xor i8 %3364, 1
  store i8 %3365, i8* %106, align 1
  %3366 = xor i32 %3354, %3341
  %3367 = xor i32 %3366, %3355
  %3368 = lshr i32 %3367, 4
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  store i8 %3370, i8* %111, align 1
  %3371 = icmp eq i32 %3355, 0
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %114, align 1
  %3373 = lshr i32 %3355, 31
  %3374 = trunc i32 %3373 to i8
  store i8 %3374, i8* %117, align 1
  %3375 = lshr i32 %3341, 31
  %3376 = lshr i32 %3354, 31
  %3377 = xor i32 %3373, %3375
  %3378 = xor i32 %3373, %3376
  %3379 = add nuw nsw i32 %3377, %3378
  %3380 = icmp eq i32 %3379, 2
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %123, align 1
  %3382 = add i64 %3293, -48
  %3383 = add i64 %3329, 26
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %RAX.i2530, align 8
  %3386 = add i64 %3329, 30
  store i64 %3386, i64* %3, align 8
  %3387 = load i32, i32* %3296, align 4
  %3388 = sext i32 %3387 to i64
  store i64 %3388, i64* %RCX.i2527, align 8
  %3389 = shl nsw i64 %3388, 2
  %3390 = add i64 %3389, %3385
  %3391 = add i64 %3329, 33
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i32*
  store i32 %3355, i32* %3392, align 4
  %3393 = load i64, i64* %RBP.i, align 8
  %3394 = add i64 %3393, -16
  %3395 = load i64, i64* %3, align 8
  %3396 = add i64 %3395, 3
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3394 to i32*
  %3398 = load i32, i32* %3397, align 4
  %3399 = add i32 %3398, 1
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RAX.i2530, align 8
  %3401 = icmp eq i32 %3398, -1
  %3402 = icmp eq i32 %3399, 0
  %3403 = or i1 %3401, %3402
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %99, align 1
  %3405 = and i32 %3399, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %106, align 1
  %3410 = xor i32 %3399, %3398
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  store i8 %3413, i8* %111, align 1
  %3414 = zext i1 %3402 to i8
  store i8 %3414, i8* %114, align 1
  %3415 = lshr i32 %3399, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %117, align 1
  %3417 = lshr i32 %3398, 31
  %3418 = xor i32 %3415, %3417
  %3419 = add nuw nsw i32 %3418, %3415
  %3420 = icmp eq i32 %3419, 2
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %123, align 1
  %3422 = add i64 %3395, 9
  store i64 %3422, i64* %3, align 8
  store i32 %3399, i32* %3397, align 4
  %3423 = load i64, i64* %3, align 8
  %3424 = add i64 %3423, -54
  store i64 %3424, i64* %3, align 8
  br label %block_.L_45b33d

block_.L_45b378:                                  ; preds = %block_.L_45b33d
  %3425 = add i64 %3293, -24
  %3426 = add i64 %3329, 4
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i64*
  %3428 = load i64, i64* %3427, align 8
  %3429 = add i64 %3428, 16
  store i64 %3429, i64* %RAX.i2530, align 8
  %3430 = icmp ugt i64 %3428, -17
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %99, align 1
  %3432 = trunc i64 %3429 to i32
  %3433 = and i32 %3432, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %106, align 1
  %3438 = xor i64 %3428, 16
  %3439 = xor i64 %3438, %3429
  %3440 = lshr i64 %3439, 4
  %3441 = trunc i64 %3440 to i8
  %3442 = and i8 %3441, 1
  store i8 %3442, i8* %111, align 1
  %3443 = icmp eq i64 %3429, 0
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %114, align 1
  %3445 = lshr i64 %3429, 63
  %3446 = trunc i64 %3445 to i8
  store i8 %3446, i8* %117, align 1
  %3447 = lshr i64 %3428, 63
  %3448 = xor i64 %3445, %3447
  %3449 = add nuw nsw i64 %3448, %3445
  %3450 = icmp eq i64 %3449, 2
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %123, align 1
  %3452 = add i64 %3329, 12
  store i64 %3452, i64* %3, align 8
  store i64 %3429, i64* %3427, align 8
  %3453 = load i64, i64* %RBP.i, align 8
  %3454 = add i64 %3453, -32
  %3455 = load i64, i64* %3, align 8
  %3456 = add i64 %3455, 4
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3454 to i64*
  %3458 = load i64, i64* %3457, align 8
  %3459 = add i64 %3458, 16
  store i64 %3459, i64* %RAX.i2530, align 8
  %3460 = icmp ugt i64 %3458, -17
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %99, align 1
  %3462 = trunc i64 %3459 to i32
  %3463 = and i32 %3462, 255
  %3464 = tail call i32 @llvm.ctpop.i32(i32 %3463)
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  %3467 = xor i8 %3466, 1
  store i8 %3467, i8* %106, align 1
  %3468 = xor i64 %3458, 16
  %3469 = xor i64 %3468, %3459
  %3470 = lshr i64 %3469, 4
  %3471 = trunc i64 %3470 to i8
  %3472 = and i8 %3471, 1
  store i8 %3472, i8* %111, align 1
  %3473 = icmp eq i64 %3459, 0
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %114, align 1
  %3475 = lshr i64 %3459, 63
  %3476 = trunc i64 %3475 to i8
  store i8 %3476, i8* %117, align 1
  %3477 = lshr i64 %3458, 63
  %3478 = xor i64 %3475, %3477
  %3479 = add nuw nsw i64 %3478, %3475
  %3480 = icmp eq i64 %3479, 2
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %123, align 1
  %3482 = add i64 %3455, 12
  store i64 %3482, i64* %3, align 8
  store i64 %3459, i64* %3457, align 8
  %3483 = load i64, i64* %RBP.i, align 8
  %3484 = add i64 %3483, -40
  %3485 = load i64, i64* %3, align 8
  %3486 = add i64 %3485, 4
  store i64 %3486, i64* %3, align 8
  %3487 = inttoptr i64 %3484 to i64*
  %3488 = load i64, i64* %3487, align 8
  %3489 = add i64 %3488, 16
  store i64 %3489, i64* %RAX.i2530, align 8
  %3490 = icmp ugt i64 %3488, -17
  %3491 = zext i1 %3490 to i8
  store i8 %3491, i8* %99, align 1
  %3492 = trunc i64 %3489 to i32
  %3493 = and i32 %3492, 255
  %3494 = tail call i32 @llvm.ctpop.i32(i32 %3493)
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = xor i8 %3496, 1
  store i8 %3497, i8* %106, align 1
  %3498 = xor i64 %3488, 16
  %3499 = xor i64 %3498, %3489
  %3500 = lshr i64 %3499, 4
  %3501 = trunc i64 %3500 to i8
  %3502 = and i8 %3501, 1
  store i8 %3502, i8* %111, align 1
  %3503 = icmp eq i64 %3489, 0
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %114, align 1
  %3505 = lshr i64 %3489, 63
  %3506 = trunc i64 %3505 to i8
  store i8 %3506, i8* %117, align 1
  %3507 = lshr i64 %3488, 63
  %3508 = xor i64 %3505, %3507
  %3509 = add nuw nsw i64 %3508, %3505
  %3510 = icmp eq i64 %3509, 2
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %123, align 1
  %3512 = add i64 %3485, 12
  store i64 %3512, i64* %3, align 8
  store i64 %3489, i64* %3487, align 8
  %3513 = load i64, i64* %RBP.i, align 8
  %3514 = add i64 %3513, -24
  %3515 = load i64, i64* %3, align 8
  %3516 = add i64 %3515, 4
  store i64 %3516, i64* %3, align 8
  %3517 = inttoptr i64 %3514 to i64*
  %3518 = load i64, i64* %3517, align 8
  store i64 %3518, i64* %RAX.i2530, align 8
  %3519 = add i64 %3515, 7
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i64*
  %3521 = load i64, i64* %3520, align 8
  store i64 %3521, i64* %RAX.i2530, align 8
  %3522 = add i64 %3513, -48
  %3523 = add i64 %3515, 11
  store i64 %3523, i64* %3, align 8
  %3524 = inttoptr i64 %3522 to i64*
  store i64 %3521, i64* %3524, align 8
  %3525 = load i64, i64* %RBP.i, align 8
  %3526 = add i64 %3525, -32
  %3527 = load i64, i64* %3, align 8
  %3528 = add i64 %3527, 4
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3526 to i64*
  %3530 = load i64, i64* %3529, align 8
  store i64 %3530, i64* %RAX.i2530, align 8
  %3531 = add i64 %3527, 7
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3530 to i64*
  %3533 = load i64, i64* %3532, align 8
  store i64 %3533, i64* %RAX.i2530, align 8
  %3534 = add i64 %3525, -56
  %3535 = add i64 %3527, 11
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i64*
  store i64 %3533, i64* %3536, align 8
  %3537 = load i64, i64* %RBP.i, align 8
  %3538 = add i64 %3537, -40
  %3539 = load i64, i64* %3, align 8
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3538 to i64*
  %3542 = load i64, i64* %3541, align 8
  store i64 %3542, i64* %RAX.i2530, align 8
  %3543 = add i64 %3539, 7
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3542 to i64*
  %3545 = load i64, i64* %3544, align 8
  store i64 %3545, i64* %RAX.i2530, align 8
  %3546 = add i64 %3537, -64
  %3547 = add i64 %3539, 11
  store i64 %3547, i64* %3, align 8
  %3548 = inttoptr i64 %3546 to i64*
  store i64 %3545, i64* %3548, align 8
  %3549 = load i64, i64* %RBP.i, align 8
  %3550 = add i64 %3549, -16
  %3551 = load i64, i64* %3, align 8
  %3552 = add i64 %3551, 7
  store i64 %3552, i64* %3, align 8
  %3553 = inttoptr i64 %3550 to i32*
  store i32 0, i32* %3553, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_45b3c4

block_.L_45b3c4:                                  ; preds = %block_45b3d0, %block_.L_45b378
  %3554 = phi i64 [ %3686, %block_45b3d0 ], [ %.pre123, %block_.L_45b378 ]
  %3555 = load i64, i64* %RBP.i, align 8
  %3556 = add i64 %3555, -16
  %3557 = add i64 %3554, 3
  store i64 %3557, i64* %3, align 8
  %3558 = inttoptr i64 %3556 to i32*
  %3559 = load i32, i32* %3558, align 4
  %3560 = zext i32 %3559 to i64
  store i64 %3560, i64* %RAX.i2530, align 8
  %3561 = add i64 %3555, -12
  %3562 = add i64 %3554, 6
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i32*
  %3564 = load i32, i32* %3563, align 4
  %3565 = sub i32 %3559, %3564
  %3566 = icmp ult i32 %3559, %3564
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %99, align 1
  %3568 = and i32 %3565, 255
  %3569 = tail call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  store i8 %3572, i8* %106, align 1
  %3573 = xor i32 %3564, %3559
  %3574 = xor i32 %3573, %3565
  %3575 = lshr i32 %3574, 4
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  store i8 %3577, i8* %111, align 1
  %3578 = icmp eq i32 %3565, 0
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %114, align 1
  %3580 = lshr i32 %3565, 31
  %3581 = trunc i32 %3580 to i8
  store i8 %3581, i8* %117, align 1
  %3582 = lshr i32 %3559, 31
  %3583 = lshr i32 %3564, 31
  %3584 = xor i32 %3583, %3582
  %3585 = xor i32 %3580, %3582
  %3586 = add nuw nsw i32 %3585, %3584
  %3587 = icmp eq i32 %3586, 2
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %123, align 1
  %3589 = icmp ne i8 %3581, 0
  %3590 = xor i1 %3589, %3587
  %.v147 = select i1 %3590, i64 12, i64 59
  %3591 = add i64 %3554, %.v147
  store i64 %3591, i64* %3, align 8
  br i1 %3590, label %block_45b3d0, label %block_.L_45b3ff

block_45b3d0:                                     ; preds = %block_.L_45b3c4
  %3592 = add i64 %3555, -56
  %3593 = add i64 %3591, 4
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3592 to i64*
  %3595 = load i64, i64* %3594, align 8
  store i64 %3595, i64* %RAX.i2530, align 8
  %3596 = add i64 %3591, 8
  store i64 %3596, i64* %3, align 8
  %3597 = load i32, i32* %3558, align 4
  %3598 = sext i32 %3597 to i64
  store i64 %3598, i64* %RCX.i2527, align 8
  %3599 = shl nsw i64 %3598, 2
  %3600 = add i64 %3599, %3595
  %3601 = add i64 %3591, 11
  store i64 %3601, i64* %3, align 8
  %3602 = inttoptr i64 %3600 to i32*
  %3603 = load i32, i32* %3602, align 4
  %3604 = zext i32 %3603 to i64
  store i64 %3604, i64* %RDX.i2445, align 8
  %3605 = add i64 %3555, -64
  %3606 = add i64 %3591, 15
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i64*
  %3608 = load i64, i64* %3607, align 8
  store i64 %3608, i64* %RAX.i2530, align 8
  %3609 = add i64 %3591, 19
  store i64 %3609, i64* %3, align 8
  %3610 = load i32, i32* %3558, align 4
  %3611 = sext i32 %3610 to i64
  store i64 %3611, i64* %RCX.i2527, align 8
  %3612 = shl nsw i64 %3611, 2
  %3613 = add i64 %3608, %3612
  %3614 = add i64 %3591, 22
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3613 to i32*
  %3616 = load i32, i32* %3615, align 4
  %3617 = add i32 %3616, %3603
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RDX.i2445, align 8
  %3619 = icmp ult i32 %3617, %3603
  %3620 = icmp ult i32 %3617, %3616
  %3621 = or i1 %3619, %3620
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %99, align 1
  %3623 = and i32 %3617, 255
  %3624 = tail call i32 @llvm.ctpop.i32(i32 %3623)
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  %3627 = xor i8 %3626, 1
  store i8 %3627, i8* %106, align 1
  %3628 = xor i32 %3616, %3603
  %3629 = xor i32 %3628, %3617
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  store i8 %3632, i8* %111, align 1
  %3633 = icmp eq i32 %3617, 0
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %114, align 1
  %3635 = lshr i32 %3617, 31
  %3636 = trunc i32 %3635 to i8
  store i8 %3636, i8* %117, align 1
  %3637 = lshr i32 %3603, 31
  %3638 = lshr i32 %3616, 31
  %3639 = xor i32 %3635, %3637
  %3640 = xor i32 %3635, %3638
  %3641 = add nuw nsw i32 %3639, %3640
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %123, align 1
  %3644 = add i64 %3555, -48
  %3645 = add i64 %3591, 26
  store i64 %3645, i64* %3, align 8
  %3646 = inttoptr i64 %3644 to i64*
  %3647 = load i64, i64* %3646, align 8
  store i64 %3647, i64* %RAX.i2530, align 8
  %3648 = add i64 %3591, 30
  store i64 %3648, i64* %3, align 8
  %3649 = load i32, i32* %3558, align 4
  %3650 = sext i32 %3649 to i64
  store i64 %3650, i64* %RCX.i2527, align 8
  %3651 = shl nsw i64 %3650, 2
  %3652 = add i64 %3651, %3647
  %3653 = add i64 %3591, 33
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i32*
  store i32 %3617, i32* %3654, align 4
  %3655 = load i64, i64* %RBP.i, align 8
  %3656 = add i64 %3655, -16
  %3657 = load i64, i64* %3, align 8
  %3658 = add i64 %3657, 3
  store i64 %3658, i64* %3, align 8
  %3659 = inttoptr i64 %3656 to i32*
  %3660 = load i32, i32* %3659, align 4
  %3661 = add i32 %3660, 1
  %3662 = zext i32 %3661 to i64
  store i64 %3662, i64* %RAX.i2530, align 8
  %3663 = icmp eq i32 %3660, -1
  %3664 = icmp eq i32 %3661, 0
  %3665 = or i1 %3663, %3664
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %99, align 1
  %3667 = and i32 %3661, 255
  %3668 = tail call i32 @llvm.ctpop.i32(i32 %3667)
  %3669 = trunc i32 %3668 to i8
  %3670 = and i8 %3669, 1
  %3671 = xor i8 %3670, 1
  store i8 %3671, i8* %106, align 1
  %3672 = xor i32 %3661, %3660
  %3673 = lshr i32 %3672, 4
  %3674 = trunc i32 %3673 to i8
  %3675 = and i8 %3674, 1
  store i8 %3675, i8* %111, align 1
  %3676 = zext i1 %3664 to i8
  store i8 %3676, i8* %114, align 1
  %3677 = lshr i32 %3661, 31
  %3678 = trunc i32 %3677 to i8
  store i8 %3678, i8* %117, align 1
  %3679 = lshr i32 %3660, 31
  %3680 = xor i32 %3677, %3679
  %3681 = add nuw nsw i32 %3680, %3677
  %3682 = icmp eq i32 %3681, 2
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %123, align 1
  %3684 = add i64 %3657, 9
  store i64 %3684, i64* %3, align 8
  store i32 %3661, i32* %3659, align 4
  %3685 = load i64, i64* %3, align 8
  %3686 = add i64 %3685, -54
  store i64 %3686, i64* %3, align 8
  br label %block_.L_45b3c4

block_.L_45b3ff:                                  ; preds = %block_.L_45b3c4
  %3687 = add i64 %3555, -24
  %3688 = add i64 %3591, 4
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i64*
  %3690 = load i64, i64* %3689, align 8
  %3691 = add i64 %3690, 16
  store i64 %3691, i64* %RAX.i2530, align 8
  %3692 = icmp ugt i64 %3690, -17
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %99, align 1
  %3694 = trunc i64 %3691 to i32
  %3695 = and i32 %3694, 255
  %3696 = tail call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  store i8 %3699, i8* %106, align 1
  %3700 = xor i64 %3690, 16
  %3701 = xor i64 %3700, %3691
  %3702 = lshr i64 %3701, 4
  %3703 = trunc i64 %3702 to i8
  %3704 = and i8 %3703, 1
  store i8 %3704, i8* %111, align 1
  %3705 = icmp eq i64 %3691, 0
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %114, align 1
  %3707 = lshr i64 %3691, 63
  %3708 = trunc i64 %3707 to i8
  store i8 %3708, i8* %117, align 1
  %3709 = lshr i64 %3690, 63
  %3710 = xor i64 %3707, %3709
  %3711 = add nuw nsw i64 %3710, %3707
  %3712 = icmp eq i64 %3711, 2
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %123, align 1
  %3714 = add i64 %3591, 12
  store i64 %3714, i64* %3, align 8
  store i64 %3691, i64* %3689, align 8
  %3715 = load i64, i64* %RBP.i, align 8
  %3716 = add i64 %3715, -32
  %3717 = load i64, i64* %3, align 8
  %3718 = add i64 %3717, 4
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3716 to i64*
  %3720 = load i64, i64* %3719, align 8
  %3721 = add i64 %3720, 16
  store i64 %3721, i64* %RAX.i2530, align 8
  %3722 = icmp ugt i64 %3720, -17
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %99, align 1
  %3724 = trunc i64 %3721 to i32
  %3725 = and i32 %3724, 255
  %3726 = tail call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  store i8 %3729, i8* %106, align 1
  %3730 = xor i64 %3720, 16
  %3731 = xor i64 %3730, %3721
  %3732 = lshr i64 %3731, 4
  %3733 = trunc i64 %3732 to i8
  %3734 = and i8 %3733, 1
  store i8 %3734, i8* %111, align 1
  %3735 = icmp eq i64 %3721, 0
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %114, align 1
  %3737 = lshr i64 %3721, 63
  %3738 = trunc i64 %3737 to i8
  store i8 %3738, i8* %117, align 1
  %3739 = lshr i64 %3720, 63
  %3740 = xor i64 %3737, %3739
  %3741 = add nuw nsw i64 %3740, %3737
  %3742 = icmp eq i64 %3741, 2
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %123, align 1
  %3744 = add i64 %3717, 12
  store i64 %3744, i64* %3, align 8
  store i64 %3721, i64* %3719, align 8
  %3745 = load i64, i64* %RBP.i, align 8
  %3746 = add i64 %3745, -40
  %3747 = load i64, i64* %3, align 8
  %3748 = add i64 %3747, 4
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3746 to i64*
  %3750 = load i64, i64* %3749, align 8
  %3751 = add i64 %3750, 16
  store i64 %3751, i64* %RAX.i2530, align 8
  %3752 = icmp ugt i64 %3750, -17
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %99, align 1
  %3754 = trunc i64 %3751 to i32
  %3755 = and i32 %3754, 255
  %3756 = tail call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  store i8 %3759, i8* %106, align 1
  %3760 = xor i64 %3750, 16
  %3761 = xor i64 %3760, %3751
  %3762 = lshr i64 %3761, 4
  %3763 = trunc i64 %3762 to i8
  %3764 = and i8 %3763, 1
  store i8 %3764, i8* %111, align 1
  %3765 = icmp eq i64 %3751, 0
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %114, align 1
  %3767 = lshr i64 %3751, 63
  %3768 = trunc i64 %3767 to i8
  store i8 %3768, i8* %117, align 1
  %3769 = lshr i64 %3750, 63
  %3770 = xor i64 %3767, %3769
  %3771 = add nuw nsw i64 %3770, %3767
  %3772 = icmp eq i64 %3771, 2
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %123, align 1
  %3774 = add i64 %3747, 12
  store i64 %3774, i64* %3, align 8
  store i64 %3751, i64* %3749, align 8
  %3775 = load i64, i64* %RBP.i, align 8
  %3776 = add i64 %3775, -24
  %3777 = load i64, i64* %3, align 8
  %3778 = add i64 %3777, 4
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3776 to i64*
  %3780 = load i64, i64* %3779, align 8
  store i64 %3780, i64* %RAX.i2530, align 8
  %3781 = add i64 %3777, 7
  store i64 %3781, i64* %3, align 8
  %3782 = inttoptr i64 %3780 to i64*
  %3783 = load i64, i64* %3782, align 8
  store i64 %3783, i64* %RAX.i2530, align 8
  %3784 = add i64 %3775, -48
  %3785 = add i64 %3777, 11
  store i64 %3785, i64* %3, align 8
  %3786 = inttoptr i64 %3784 to i64*
  store i64 %3783, i64* %3786, align 8
  %3787 = load i64, i64* %RBP.i, align 8
  %3788 = add i64 %3787, -32
  %3789 = load i64, i64* %3, align 8
  %3790 = add i64 %3789, 4
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3788 to i64*
  %3792 = load i64, i64* %3791, align 8
  store i64 %3792, i64* %RAX.i2530, align 8
  %3793 = add i64 %3789, 7
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3792 to i64*
  %3795 = load i64, i64* %3794, align 8
  store i64 %3795, i64* %RAX.i2530, align 8
  %3796 = add i64 %3787, -56
  %3797 = add i64 %3789, 11
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3796 to i64*
  store i64 %3795, i64* %3798, align 8
  %3799 = load i64, i64* %RBP.i, align 8
  %3800 = add i64 %3799, -40
  %3801 = load i64, i64* %3, align 8
  %3802 = add i64 %3801, 4
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3800 to i64*
  %3804 = load i64, i64* %3803, align 8
  store i64 %3804, i64* %RAX.i2530, align 8
  %3805 = add i64 %3801, 7
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3804 to i64*
  %3807 = load i64, i64* %3806, align 8
  store i64 %3807, i64* %RAX.i2530, align 8
  %3808 = add i64 %3799, -64
  %3809 = add i64 %3801, 11
  store i64 %3809, i64* %3, align 8
  %3810 = inttoptr i64 %3808 to i64*
  store i64 %3807, i64* %3810, align 8
  %3811 = load i64, i64* %RBP.i, align 8
  %3812 = add i64 %3811, -16
  %3813 = load i64, i64* %3, align 8
  %3814 = add i64 %3813, 7
  store i64 %3814, i64* %3, align 8
  %3815 = inttoptr i64 %3812 to i32*
  store i32 0, i32* %3815, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_45b44b

block_.L_45b44b:                                  ; preds = %block_45b457, %block_.L_45b3ff
  %3816 = phi i64 [ %3948, %block_45b457 ], [ %.pre124, %block_.L_45b3ff ]
  %3817 = load i64, i64* %RBP.i, align 8
  %3818 = add i64 %3817, -16
  %3819 = add i64 %3816, 3
  store i64 %3819, i64* %3, align 8
  %3820 = inttoptr i64 %3818 to i32*
  %3821 = load i32, i32* %3820, align 4
  %3822 = zext i32 %3821 to i64
  store i64 %3822, i64* %RAX.i2530, align 8
  %3823 = add i64 %3817, -12
  %3824 = add i64 %3816, 6
  store i64 %3824, i64* %3, align 8
  %3825 = inttoptr i64 %3823 to i32*
  %3826 = load i32, i32* %3825, align 4
  %3827 = sub i32 %3821, %3826
  %3828 = icmp ult i32 %3821, %3826
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %99, align 1
  %3830 = and i32 %3827, 255
  %3831 = tail call i32 @llvm.ctpop.i32(i32 %3830)
  %3832 = trunc i32 %3831 to i8
  %3833 = and i8 %3832, 1
  %3834 = xor i8 %3833, 1
  store i8 %3834, i8* %106, align 1
  %3835 = xor i32 %3826, %3821
  %3836 = xor i32 %3835, %3827
  %3837 = lshr i32 %3836, 4
  %3838 = trunc i32 %3837 to i8
  %3839 = and i8 %3838, 1
  store i8 %3839, i8* %111, align 1
  %3840 = icmp eq i32 %3827, 0
  %3841 = zext i1 %3840 to i8
  store i8 %3841, i8* %114, align 1
  %3842 = lshr i32 %3827, 31
  %3843 = trunc i32 %3842 to i8
  store i8 %3843, i8* %117, align 1
  %3844 = lshr i32 %3821, 31
  %3845 = lshr i32 %3826, 31
  %3846 = xor i32 %3845, %3844
  %3847 = xor i32 %3842, %3844
  %3848 = add nuw nsw i32 %3847, %3846
  %3849 = icmp eq i32 %3848, 2
  %3850 = zext i1 %3849 to i8
  store i8 %3850, i8* %123, align 1
  %3851 = icmp ne i8 %3843, 0
  %3852 = xor i1 %3851, %3849
  %.v148 = select i1 %3852, i64 12, i64 59
  %3853 = add i64 %3816, %.v148
  store i64 %3853, i64* %3, align 8
  br i1 %3852, label %block_45b457, label %block_.L_45b486

block_45b457:                                     ; preds = %block_.L_45b44b
  %3854 = add i64 %3817, -56
  %3855 = add i64 %3853, 4
  store i64 %3855, i64* %3, align 8
  %3856 = inttoptr i64 %3854 to i64*
  %3857 = load i64, i64* %3856, align 8
  store i64 %3857, i64* %RAX.i2530, align 8
  %3858 = add i64 %3853, 8
  store i64 %3858, i64* %3, align 8
  %3859 = load i32, i32* %3820, align 4
  %3860 = sext i32 %3859 to i64
  store i64 %3860, i64* %RCX.i2527, align 8
  %3861 = shl nsw i64 %3860, 2
  %3862 = add i64 %3861, %3857
  %3863 = add i64 %3853, 11
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  %3865 = load i32, i32* %3864, align 4
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RDX.i2445, align 8
  %3867 = add i64 %3817, -64
  %3868 = add i64 %3853, 15
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3867 to i64*
  %3870 = load i64, i64* %3869, align 8
  store i64 %3870, i64* %RAX.i2530, align 8
  %3871 = add i64 %3853, 19
  store i64 %3871, i64* %3, align 8
  %3872 = load i32, i32* %3820, align 4
  %3873 = sext i32 %3872 to i64
  store i64 %3873, i64* %RCX.i2527, align 8
  %3874 = shl nsw i64 %3873, 2
  %3875 = add i64 %3870, %3874
  %3876 = add i64 %3853, 22
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i32*
  %3878 = load i32, i32* %3877, align 4
  %3879 = add i32 %3878, %3865
  %3880 = zext i32 %3879 to i64
  store i64 %3880, i64* %RDX.i2445, align 8
  %3881 = icmp ult i32 %3879, %3865
  %3882 = icmp ult i32 %3879, %3878
  %3883 = or i1 %3881, %3882
  %3884 = zext i1 %3883 to i8
  store i8 %3884, i8* %99, align 1
  %3885 = and i32 %3879, 255
  %3886 = tail call i32 @llvm.ctpop.i32(i32 %3885)
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  %3889 = xor i8 %3888, 1
  store i8 %3889, i8* %106, align 1
  %3890 = xor i32 %3878, %3865
  %3891 = xor i32 %3890, %3879
  %3892 = lshr i32 %3891, 4
  %3893 = trunc i32 %3892 to i8
  %3894 = and i8 %3893, 1
  store i8 %3894, i8* %111, align 1
  %3895 = icmp eq i32 %3879, 0
  %3896 = zext i1 %3895 to i8
  store i8 %3896, i8* %114, align 1
  %3897 = lshr i32 %3879, 31
  %3898 = trunc i32 %3897 to i8
  store i8 %3898, i8* %117, align 1
  %3899 = lshr i32 %3865, 31
  %3900 = lshr i32 %3878, 31
  %3901 = xor i32 %3897, %3899
  %3902 = xor i32 %3897, %3900
  %3903 = add nuw nsw i32 %3901, %3902
  %3904 = icmp eq i32 %3903, 2
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %123, align 1
  %3906 = add i64 %3817, -48
  %3907 = add i64 %3853, 26
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i64*
  %3909 = load i64, i64* %3908, align 8
  store i64 %3909, i64* %RAX.i2530, align 8
  %3910 = add i64 %3853, 30
  store i64 %3910, i64* %3, align 8
  %3911 = load i32, i32* %3820, align 4
  %3912 = sext i32 %3911 to i64
  store i64 %3912, i64* %RCX.i2527, align 8
  %3913 = shl nsw i64 %3912, 2
  %3914 = add i64 %3913, %3909
  %3915 = add i64 %3853, 33
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3914 to i32*
  store i32 %3879, i32* %3916, align 4
  %3917 = load i64, i64* %RBP.i, align 8
  %3918 = add i64 %3917, -16
  %3919 = load i64, i64* %3, align 8
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3918 to i32*
  %3922 = load i32, i32* %3921, align 4
  %3923 = add i32 %3922, 1
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RAX.i2530, align 8
  %3925 = icmp eq i32 %3922, -1
  %3926 = icmp eq i32 %3923, 0
  %3927 = or i1 %3925, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %99, align 1
  %3929 = and i32 %3923, 255
  %3930 = tail call i32 @llvm.ctpop.i32(i32 %3929)
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  store i8 %3933, i8* %106, align 1
  %3934 = xor i32 %3923, %3922
  %3935 = lshr i32 %3934, 4
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  store i8 %3937, i8* %111, align 1
  %3938 = zext i1 %3926 to i8
  store i8 %3938, i8* %114, align 1
  %3939 = lshr i32 %3923, 31
  %3940 = trunc i32 %3939 to i8
  store i8 %3940, i8* %117, align 1
  %3941 = lshr i32 %3922, 31
  %3942 = xor i32 %3939, %3941
  %3943 = add nuw nsw i32 %3942, %3939
  %3944 = icmp eq i32 %3943, 2
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %123, align 1
  %3946 = add i64 %3919, 9
  store i64 %3946, i64* %3, align 8
  store i32 %3923, i32* %3921, align 4
  %3947 = load i64, i64* %3, align 8
  %3948 = add i64 %3947, -54
  store i64 %3948, i64* %3, align 8
  br label %block_.L_45b44b

block_.L_45b486:                                  ; preds = %block_.L_45b44b
  %3949 = add i64 %3817, -24
  %3950 = add i64 %3853, 4
  store i64 %3950, i64* %3, align 8
  %3951 = inttoptr i64 %3949 to i64*
  %3952 = load i64, i64* %3951, align 8
  %3953 = add i64 %3952, 16
  store i64 %3953, i64* %RAX.i2530, align 8
  %3954 = icmp ugt i64 %3952, -17
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %99, align 1
  %3956 = trunc i64 %3953 to i32
  %3957 = and i32 %3956, 255
  %3958 = tail call i32 @llvm.ctpop.i32(i32 %3957)
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  %3961 = xor i8 %3960, 1
  store i8 %3961, i8* %106, align 1
  %3962 = xor i64 %3952, 16
  %3963 = xor i64 %3962, %3953
  %3964 = lshr i64 %3963, 4
  %3965 = trunc i64 %3964 to i8
  %3966 = and i8 %3965, 1
  store i8 %3966, i8* %111, align 1
  %3967 = icmp eq i64 %3953, 0
  %3968 = zext i1 %3967 to i8
  store i8 %3968, i8* %114, align 1
  %3969 = lshr i64 %3953, 63
  %3970 = trunc i64 %3969 to i8
  store i8 %3970, i8* %117, align 1
  %3971 = lshr i64 %3952, 63
  %3972 = xor i64 %3969, %3971
  %3973 = add nuw nsw i64 %3972, %3969
  %3974 = icmp eq i64 %3973, 2
  %3975 = zext i1 %3974 to i8
  store i8 %3975, i8* %123, align 1
  %3976 = add i64 %3853, 12
  store i64 %3976, i64* %3, align 8
  store i64 %3953, i64* %3951, align 8
  %3977 = load i64, i64* %RBP.i, align 8
  %3978 = add i64 %3977, -32
  %3979 = load i64, i64* %3, align 8
  %3980 = add i64 %3979, 4
  store i64 %3980, i64* %3, align 8
  %3981 = inttoptr i64 %3978 to i64*
  %3982 = load i64, i64* %3981, align 8
  %3983 = add i64 %3982, 16
  store i64 %3983, i64* %RAX.i2530, align 8
  %3984 = icmp ugt i64 %3982, -17
  %3985 = zext i1 %3984 to i8
  store i8 %3985, i8* %99, align 1
  %3986 = trunc i64 %3983 to i32
  %3987 = and i32 %3986, 255
  %3988 = tail call i32 @llvm.ctpop.i32(i32 %3987)
  %3989 = trunc i32 %3988 to i8
  %3990 = and i8 %3989, 1
  %3991 = xor i8 %3990, 1
  store i8 %3991, i8* %106, align 1
  %3992 = xor i64 %3982, 16
  %3993 = xor i64 %3992, %3983
  %3994 = lshr i64 %3993, 4
  %3995 = trunc i64 %3994 to i8
  %3996 = and i8 %3995, 1
  store i8 %3996, i8* %111, align 1
  %3997 = icmp eq i64 %3983, 0
  %3998 = zext i1 %3997 to i8
  store i8 %3998, i8* %114, align 1
  %3999 = lshr i64 %3983, 63
  %4000 = trunc i64 %3999 to i8
  store i8 %4000, i8* %117, align 1
  %4001 = lshr i64 %3982, 63
  %4002 = xor i64 %3999, %4001
  %4003 = add nuw nsw i64 %4002, %3999
  %4004 = icmp eq i64 %4003, 2
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %123, align 1
  %4006 = add i64 %3979, 12
  store i64 %4006, i64* %3, align 8
  store i64 %3983, i64* %3981, align 8
  %4007 = load i64, i64* %RBP.i, align 8
  %4008 = add i64 %4007, -40
  %4009 = load i64, i64* %3, align 8
  %4010 = add i64 %4009, 4
  store i64 %4010, i64* %3, align 8
  %4011 = inttoptr i64 %4008 to i64*
  %4012 = load i64, i64* %4011, align 8
  %4013 = add i64 %4012, 16
  store i64 %4013, i64* %RAX.i2530, align 8
  %4014 = icmp ugt i64 %4012, -17
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %99, align 1
  %4016 = trunc i64 %4013 to i32
  %4017 = and i32 %4016, 255
  %4018 = tail call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  store i8 %4021, i8* %106, align 1
  %4022 = xor i64 %4012, 16
  %4023 = xor i64 %4022, %4013
  %4024 = lshr i64 %4023, 4
  %4025 = trunc i64 %4024 to i8
  %4026 = and i8 %4025, 1
  store i8 %4026, i8* %111, align 1
  %4027 = icmp eq i64 %4013, 0
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %114, align 1
  %4029 = lshr i64 %4013, 63
  %4030 = trunc i64 %4029 to i8
  store i8 %4030, i8* %117, align 1
  %4031 = lshr i64 %4012, 63
  %4032 = xor i64 %4029, %4031
  %4033 = add nuw nsw i64 %4032, %4029
  %4034 = icmp eq i64 %4033, 2
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %123, align 1
  %4036 = add i64 %4009, 12
  store i64 %4036, i64* %3, align 8
  store i64 %4013, i64* %4011, align 8
  %4037 = load i64, i64* %RBP.i, align 8
  %4038 = add i64 %4037, -24
  %4039 = load i64, i64* %3, align 8
  %4040 = add i64 %4039, 4
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4038 to i64*
  %4042 = load i64, i64* %4041, align 8
  store i64 %4042, i64* %RAX.i2530, align 8
  %4043 = add i64 %4039, 7
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i64*
  %4045 = load i64, i64* %4044, align 8
  store i64 %4045, i64* %RAX.i2530, align 8
  %4046 = add i64 %4037, -48
  %4047 = add i64 %4039, 11
  store i64 %4047, i64* %3, align 8
  %4048 = inttoptr i64 %4046 to i64*
  store i64 %4045, i64* %4048, align 8
  %4049 = load i64, i64* %RBP.i, align 8
  %4050 = add i64 %4049, -32
  %4051 = load i64, i64* %3, align 8
  %4052 = add i64 %4051, 4
  store i64 %4052, i64* %3, align 8
  %4053 = inttoptr i64 %4050 to i64*
  %4054 = load i64, i64* %4053, align 8
  store i64 %4054, i64* %RAX.i2530, align 8
  %4055 = add i64 %4051, 7
  store i64 %4055, i64* %3, align 8
  %4056 = inttoptr i64 %4054 to i64*
  %4057 = load i64, i64* %4056, align 8
  store i64 %4057, i64* %RAX.i2530, align 8
  %4058 = add i64 %4049, -56
  %4059 = add i64 %4051, 11
  store i64 %4059, i64* %3, align 8
  %4060 = inttoptr i64 %4058 to i64*
  store i64 %4057, i64* %4060, align 8
  %4061 = load i64, i64* %RBP.i, align 8
  %4062 = add i64 %4061, -40
  %4063 = load i64, i64* %3, align 8
  %4064 = add i64 %4063, 4
  store i64 %4064, i64* %3, align 8
  %4065 = inttoptr i64 %4062 to i64*
  %4066 = load i64, i64* %4065, align 8
  store i64 %4066, i64* %RAX.i2530, align 8
  %4067 = add i64 %4063, 7
  store i64 %4067, i64* %3, align 8
  %4068 = inttoptr i64 %4066 to i64*
  %4069 = load i64, i64* %4068, align 8
  store i64 %4069, i64* %RAX.i2530, align 8
  %4070 = add i64 %4061, -64
  %4071 = add i64 %4063, 11
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i64*
  store i64 %4069, i64* %4072, align 8
  %4073 = load i64, i64* %RBP.i, align 8
  %4074 = add i64 %4073, -16
  %4075 = load i64, i64* %3, align 8
  %4076 = add i64 %4075, 7
  store i64 %4076, i64* %3, align 8
  %4077 = inttoptr i64 %4074 to i32*
  store i32 0, i32* %4077, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_45b4d2

block_.L_45b4d2:                                  ; preds = %block_45b4de, %block_.L_45b486
  %4078 = phi i64 [ %4210, %block_45b4de ], [ %.pre125, %block_.L_45b486 ]
  %4079 = load i64, i64* %RBP.i, align 8
  %4080 = add i64 %4079, -16
  %4081 = add i64 %4078, 3
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RAX.i2530, align 8
  %4085 = add i64 %4079, -12
  %4086 = add i64 %4078, 6
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = sub i32 %4083, %4088
  %4090 = icmp ult i32 %4083, %4088
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %99, align 1
  %4092 = and i32 %4089, 255
  %4093 = tail call i32 @llvm.ctpop.i32(i32 %4092)
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  %4096 = xor i8 %4095, 1
  store i8 %4096, i8* %106, align 1
  %4097 = xor i32 %4088, %4083
  %4098 = xor i32 %4097, %4089
  %4099 = lshr i32 %4098, 4
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  store i8 %4101, i8* %111, align 1
  %4102 = icmp eq i32 %4089, 0
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %114, align 1
  %4104 = lshr i32 %4089, 31
  %4105 = trunc i32 %4104 to i8
  store i8 %4105, i8* %117, align 1
  %4106 = lshr i32 %4083, 31
  %4107 = lshr i32 %4088, 31
  %4108 = xor i32 %4107, %4106
  %4109 = xor i32 %4104, %4106
  %4110 = add nuw nsw i32 %4109, %4108
  %4111 = icmp eq i32 %4110, 2
  %4112 = zext i1 %4111 to i8
  store i8 %4112, i8* %123, align 1
  %4113 = icmp ne i8 %4105, 0
  %4114 = xor i1 %4113, %4111
  %.v149 = select i1 %4114, i64 12, i64 59
  %4115 = add i64 %4078, %.v149
  store i64 %4115, i64* %3, align 8
  br i1 %4114, label %block_45b4de, label %block_.L_45b50d

block_45b4de:                                     ; preds = %block_.L_45b4d2
  %4116 = add i64 %4079, -56
  %4117 = add i64 %4115, 4
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4116 to i64*
  %4119 = load i64, i64* %4118, align 8
  store i64 %4119, i64* %RAX.i2530, align 8
  %4120 = add i64 %4115, 8
  store i64 %4120, i64* %3, align 8
  %4121 = load i32, i32* %4082, align 4
  %4122 = sext i32 %4121 to i64
  store i64 %4122, i64* %RCX.i2527, align 8
  %4123 = shl nsw i64 %4122, 2
  %4124 = add i64 %4123, %4119
  %4125 = add i64 %4115, 11
  store i64 %4125, i64* %3, align 8
  %4126 = inttoptr i64 %4124 to i32*
  %4127 = load i32, i32* %4126, align 4
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RDX.i2445, align 8
  %4129 = add i64 %4079, -64
  %4130 = add i64 %4115, 15
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i64*
  %4132 = load i64, i64* %4131, align 8
  store i64 %4132, i64* %RAX.i2530, align 8
  %4133 = add i64 %4115, 19
  store i64 %4133, i64* %3, align 8
  %4134 = load i32, i32* %4082, align 4
  %4135 = sext i32 %4134 to i64
  store i64 %4135, i64* %RCX.i2527, align 8
  %4136 = shl nsw i64 %4135, 2
  %4137 = add i64 %4132, %4136
  %4138 = add i64 %4115, 22
  store i64 %4138, i64* %3, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = add i32 %4140, %4127
  %4142 = zext i32 %4141 to i64
  store i64 %4142, i64* %RDX.i2445, align 8
  %4143 = icmp ult i32 %4141, %4127
  %4144 = icmp ult i32 %4141, %4140
  %4145 = or i1 %4143, %4144
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %99, align 1
  %4147 = and i32 %4141, 255
  %4148 = tail call i32 @llvm.ctpop.i32(i32 %4147)
  %4149 = trunc i32 %4148 to i8
  %4150 = and i8 %4149, 1
  %4151 = xor i8 %4150, 1
  store i8 %4151, i8* %106, align 1
  %4152 = xor i32 %4140, %4127
  %4153 = xor i32 %4152, %4141
  %4154 = lshr i32 %4153, 4
  %4155 = trunc i32 %4154 to i8
  %4156 = and i8 %4155, 1
  store i8 %4156, i8* %111, align 1
  %4157 = icmp eq i32 %4141, 0
  %4158 = zext i1 %4157 to i8
  store i8 %4158, i8* %114, align 1
  %4159 = lshr i32 %4141, 31
  %4160 = trunc i32 %4159 to i8
  store i8 %4160, i8* %117, align 1
  %4161 = lshr i32 %4127, 31
  %4162 = lshr i32 %4140, 31
  %4163 = xor i32 %4159, %4161
  %4164 = xor i32 %4159, %4162
  %4165 = add nuw nsw i32 %4163, %4164
  %4166 = icmp eq i32 %4165, 2
  %4167 = zext i1 %4166 to i8
  store i8 %4167, i8* %123, align 1
  %4168 = add i64 %4079, -48
  %4169 = add i64 %4115, 26
  store i64 %4169, i64* %3, align 8
  %4170 = inttoptr i64 %4168 to i64*
  %4171 = load i64, i64* %4170, align 8
  store i64 %4171, i64* %RAX.i2530, align 8
  %4172 = add i64 %4115, 30
  store i64 %4172, i64* %3, align 8
  %4173 = load i32, i32* %4082, align 4
  %4174 = sext i32 %4173 to i64
  store i64 %4174, i64* %RCX.i2527, align 8
  %4175 = shl nsw i64 %4174, 2
  %4176 = add i64 %4175, %4171
  %4177 = add i64 %4115, 33
  store i64 %4177, i64* %3, align 8
  %4178 = inttoptr i64 %4176 to i32*
  store i32 %4141, i32* %4178, align 4
  %4179 = load i64, i64* %RBP.i, align 8
  %4180 = add i64 %4179, -16
  %4181 = load i64, i64* %3, align 8
  %4182 = add i64 %4181, 3
  store i64 %4182, i64* %3, align 8
  %4183 = inttoptr i64 %4180 to i32*
  %4184 = load i32, i32* %4183, align 4
  %4185 = add i32 %4184, 1
  %4186 = zext i32 %4185 to i64
  store i64 %4186, i64* %RAX.i2530, align 8
  %4187 = icmp eq i32 %4184, -1
  %4188 = icmp eq i32 %4185, 0
  %4189 = or i1 %4187, %4188
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %99, align 1
  %4191 = and i32 %4185, 255
  %4192 = tail call i32 @llvm.ctpop.i32(i32 %4191)
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  %4195 = xor i8 %4194, 1
  store i8 %4195, i8* %106, align 1
  %4196 = xor i32 %4185, %4184
  %4197 = lshr i32 %4196, 4
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  store i8 %4199, i8* %111, align 1
  %4200 = zext i1 %4188 to i8
  store i8 %4200, i8* %114, align 1
  %4201 = lshr i32 %4185, 31
  %4202 = trunc i32 %4201 to i8
  store i8 %4202, i8* %117, align 1
  %4203 = lshr i32 %4184, 31
  %4204 = xor i32 %4201, %4203
  %4205 = add nuw nsw i32 %4204, %4201
  %4206 = icmp eq i32 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %123, align 1
  %4208 = add i64 %4181, 9
  store i64 %4208, i64* %3, align 8
  store i32 %4185, i32* %4183, align 4
  %4209 = load i64, i64* %3, align 8
  %4210 = add i64 %4209, -54
  store i64 %4210, i64* %3, align 8
  br label %block_.L_45b4d2

block_.L_45b50d:                                  ; preds = %block_.L_45b4d2
  %4211 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %4211, i64* %RAX.i2530, align 8
  %4212 = add i64 %4079, -4
  %4213 = add i64 %4115, 12
  store i64 %4213, i64* %3, align 8
  %4214 = inttoptr i64 %4212 to i32*
  %4215 = load i32, i32* %4214, align 4
  %4216 = sext i32 %4215 to i64
  store i64 %4216, i64* %RCX.i2527, align 8
  %4217 = shl nsw i64 %4216, 3
  %4218 = add i64 %4217, %4211
  %4219 = add i64 %4115, 16
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4218 to i64*
  %4221 = load i64, i64* %4220, align 8
  store i64 %4221, i64* %RAX.i2530, align 8
  %4222 = add i64 %4079, -8
  %4223 = add i64 %4115, 20
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4222 to i32*
  %4225 = load i32, i32* %4224, align 4
  %4226 = sext i32 %4225 to i64
  store i64 %4226, i64* %RCX.i2527, align 8
  %4227 = shl nsw i64 %4226, 3
  %4228 = add i64 %4227, %4221
  %4229 = add i64 %4115, 24
  store i64 %4229, i64* %3, align 8
  %4230 = inttoptr i64 %4228 to i64*
  %4231 = load i64, i64* %4230, align 8
  store i64 %4231, i64* %RAX.i2530, align 8
  %4232 = add i64 %4231, 32
  %4233 = add i64 %4115, 28
  store i64 %4233, i64* %3, align 8
  %4234 = inttoptr i64 %4232 to i64*
  %4235 = load i64, i64* %4234, align 8
  %4236 = add i64 %4079, -24
  %4237 = add i64 %4115, 32
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i64*
  store i64 %4235, i64* %4238, align 8
  %4239 = load i64, i64* %3, align 8
  %4240 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %4240, i64* %RAX.i2530, align 8
  %4241 = load i64, i64* %RBP.i, align 8
  %4242 = add i64 %4241, -4
  %4243 = add i64 %4239, 12
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4242 to i32*
  %4245 = load i32, i32* %4244, align 4
  %4246 = sext i32 %4245 to i64
  store i64 %4246, i64* %RCX.i2527, align 8
  %4247 = shl nsw i64 %4246, 3
  %4248 = add i64 %4247, %4240
  %4249 = add i64 %4239, 16
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i64*
  %4251 = load i64, i64* %4250, align 8
  store i64 %4251, i64* %RAX.i2530, align 8
  %4252 = add i64 %4241, -8
  %4253 = add i64 %4239, 20
  store i64 %4253, i64* %3, align 8
  %4254 = inttoptr i64 %4252 to i32*
  %4255 = load i32, i32* %4254, align 4
  %4256 = sext i32 %4255 to i64
  store i64 %4256, i64* %RCX.i2527, align 8
  %4257 = shl nsw i64 %4256, 3
  %4258 = add i64 %4257, %4251
  %4259 = add i64 %4239, 24
  store i64 %4259, i64* %3, align 8
  %4260 = inttoptr i64 %4258 to i64*
  %4261 = load i64, i64* %4260, align 8
  store i64 %4261, i64* %RAX.i2530, align 8
  %4262 = add i64 %4261, 48
  %4263 = add i64 %4239, 28
  store i64 %4263, i64* %3, align 8
  %4264 = inttoptr i64 %4262 to i64*
  %4265 = load i64, i64* %4264, align 8
  store i64 %4265, i64* %RAX.i2530, align 8
  %4266 = add i64 %4241, -32
  %4267 = add i64 %4239, 32
  store i64 %4267, i64* %3, align 8
  %4268 = inttoptr i64 %4266 to i64*
  store i64 %4265, i64* %4268, align 8
  %4269 = load i64, i64* %RBP.i, align 8
  %4270 = add i64 %4269, -32
  %4271 = load i64, i64* %3, align 8
  %4272 = add i64 %4271, 4
  store i64 %4272, i64* %3, align 8
  %4273 = inttoptr i64 %4270 to i64*
  %4274 = load i64, i64* %4273, align 8
  %4275 = add i64 %4274, 8
  store i64 %4275, i64* %RAX.i2530, align 8
  %4276 = icmp ugt i64 %4274, -9
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %99, align 1
  %4278 = trunc i64 %4275 to i32
  %4279 = and i32 %4278, 255
  %4280 = tail call i32 @llvm.ctpop.i32(i32 %4279)
  %4281 = trunc i32 %4280 to i8
  %4282 = and i8 %4281, 1
  %4283 = xor i8 %4282, 1
  store i8 %4283, i8* %106, align 1
  %4284 = xor i64 %4275, %4274
  %4285 = lshr i64 %4284, 4
  %4286 = trunc i64 %4285 to i8
  %4287 = and i8 %4286, 1
  store i8 %4287, i8* %111, align 1
  %4288 = icmp eq i64 %4275, 0
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %114, align 1
  %4290 = lshr i64 %4275, 63
  %4291 = trunc i64 %4290 to i8
  store i8 %4291, i8* %117, align 1
  %4292 = lshr i64 %4274, 63
  %4293 = xor i64 %4290, %4292
  %4294 = add nuw nsw i64 %4293, %4290
  %4295 = icmp eq i64 %4294, 2
  %4296 = zext i1 %4295 to i8
  store i8 %4296, i8* %123, align 1
  %4297 = add i64 %4269, -40
  %4298 = add i64 %4271, 12
  store i64 %4298, i64* %3, align 8
  %4299 = inttoptr i64 %4297 to i64*
  store i64 %4275, i64* %4299, align 8
  %4300 = load i64, i64* %RBP.i, align 8
  %4301 = add i64 %4300, -24
  %4302 = load i64, i64* %3, align 8
  %4303 = add i64 %4302, 4
  store i64 %4303, i64* %3, align 8
  %4304 = inttoptr i64 %4301 to i64*
  %4305 = load i64, i64* %4304, align 8
  store i64 %4305, i64* %RAX.i2530, align 8
  %4306 = add i64 %4302, 7
  store i64 %4306, i64* %3, align 8
  %4307 = inttoptr i64 %4305 to i64*
  %4308 = load i64, i64* %4307, align 8
  store i64 %4308, i64* %RAX.i2530, align 8
  %4309 = add i64 %4300, -48
  %4310 = add i64 %4302, 11
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4309 to i64*
  store i64 %4308, i64* %4311, align 8
  %4312 = load i64, i64* %RBP.i, align 8
  %4313 = add i64 %4312, -32
  %4314 = load i64, i64* %3, align 8
  %4315 = add i64 %4314, 4
  store i64 %4315, i64* %3, align 8
  %4316 = inttoptr i64 %4313 to i64*
  %4317 = load i64, i64* %4316, align 8
  store i64 %4317, i64* %RAX.i2530, align 8
  %4318 = add i64 %4314, 7
  store i64 %4318, i64* %3, align 8
  %4319 = inttoptr i64 %4317 to i64*
  %4320 = load i64, i64* %4319, align 8
  store i64 %4320, i64* %RAX.i2530, align 8
  %4321 = add i64 %4312, -56
  %4322 = add i64 %4314, 11
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4321 to i64*
  store i64 %4320, i64* %4323, align 8
  %4324 = load i64, i64* %RBP.i, align 8
  %4325 = add i64 %4324, -40
  %4326 = load i64, i64* %3, align 8
  %4327 = add i64 %4326, 4
  store i64 %4327, i64* %3, align 8
  %4328 = inttoptr i64 %4325 to i64*
  %4329 = load i64, i64* %4328, align 8
  store i64 %4329, i64* %RAX.i2530, align 8
  %4330 = add i64 %4326, 7
  store i64 %4330, i64* %3, align 8
  %4331 = inttoptr i64 %4329 to i64*
  %4332 = load i64, i64* %4331, align 8
  store i64 %4332, i64* %RAX.i2530, align 8
  %4333 = add i64 %4324, -64
  %4334 = add i64 %4326, 11
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i64*
  store i64 %4332, i64* %4335, align 8
  %4336 = load i64, i64* %RBP.i, align 8
  %4337 = add i64 %4336, -16
  %4338 = load i64, i64* %3, align 8
  %4339 = add i64 %4338, 7
  store i64 %4339, i64* %3, align 8
  %4340 = inttoptr i64 %4337 to i32*
  store i32 0, i32* %4340, align 4
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_45b581

block_.L_45b581:                                  ; preds = %block_45b58d, %block_.L_45b50d
  %4341 = phi i64 [ %4473, %block_45b58d ], [ %.pre126, %block_.L_45b50d ]
  %4342 = load i64, i64* %RBP.i, align 8
  %4343 = add i64 %4342, -16
  %4344 = add i64 %4341, 3
  store i64 %4344, i64* %3, align 8
  %4345 = inttoptr i64 %4343 to i32*
  %4346 = load i32, i32* %4345, align 4
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RAX.i2530, align 8
  %4348 = add i64 %4342, -12
  %4349 = add i64 %4341, 6
  store i64 %4349, i64* %3, align 8
  %4350 = inttoptr i64 %4348 to i32*
  %4351 = load i32, i32* %4350, align 4
  %4352 = sub i32 %4346, %4351
  %4353 = icmp ult i32 %4346, %4351
  %4354 = zext i1 %4353 to i8
  store i8 %4354, i8* %99, align 1
  %4355 = and i32 %4352, 255
  %4356 = tail call i32 @llvm.ctpop.i32(i32 %4355)
  %4357 = trunc i32 %4356 to i8
  %4358 = and i8 %4357, 1
  %4359 = xor i8 %4358, 1
  store i8 %4359, i8* %106, align 1
  %4360 = xor i32 %4351, %4346
  %4361 = xor i32 %4360, %4352
  %4362 = lshr i32 %4361, 4
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  store i8 %4364, i8* %111, align 1
  %4365 = icmp eq i32 %4352, 0
  %4366 = zext i1 %4365 to i8
  store i8 %4366, i8* %114, align 1
  %4367 = lshr i32 %4352, 31
  %4368 = trunc i32 %4367 to i8
  store i8 %4368, i8* %117, align 1
  %4369 = lshr i32 %4346, 31
  %4370 = lshr i32 %4351, 31
  %4371 = xor i32 %4370, %4369
  %4372 = xor i32 %4367, %4369
  %4373 = add nuw nsw i32 %4372, %4371
  %4374 = icmp eq i32 %4373, 2
  %4375 = zext i1 %4374 to i8
  store i8 %4375, i8* %123, align 1
  %4376 = icmp ne i8 %4368, 0
  %4377 = xor i1 %4376, %4374
  %.v150 = select i1 %4377, i64 12, i64 59
  %4378 = add i64 %4341, %.v150
  store i64 %4378, i64* %3, align 8
  br i1 %4377, label %block_45b58d, label %block_.L_45b5bc

block_45b58d:                                     ; preds = %block_.L_45b581
  %4379 = add i64 %4342, -56
  %4380 = add i64 %4378, 4
  store i64 %4380, i64* %3, align 8
  %4381 = inttoptr i64 %4379 to i64*
  %4382 = load i64, i64* %4381, align 8
  store i64 %4382, i64* %RAX.i2530, align 8
  %4383 = add i64 %4378, 8
  store i64 %4383, i64* %3, align 8
  %4384 = load i32, i32* %4345, align 4
  %4385 = sext i32 %4384 to i64
  store i64 %4385, i64* %RCX.i2527, align 8
  %4386 = shl nsw i64 %4385, 2
  %4387 = add i64 %4386, %4382
  %4388 = add i64 %4378, 11
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = zext i32 %4390 to i64
  store i64 %4391, i64* %RDX.i2445, align 8
  %4392 = add i64 %4342, -64
  %4393 = add i64 %4378, 15
  store i64 %4393, i64* %3, align 8
  %4394 = inttoptr i64 %4392 to i64*
  %4395 = load i64, i64* %4394, align 8
  store i64 %4395, i64* %RAX.i2530, align 8
  %4396 = add i64 %4378, 19
  store i64 %4396, i64* %3, align 8
  %4397 = load i32, i32* %4345, align 4
  %4398 = sext i32 %4397 to i64
  store i64 %4398, i64* %RCX.i2527, align 8
  %4399 = shl nsw i64 %4398, 2
  %4400 = add i64 %4395, %4399
  %4401 = add i64 %4378, 22
  store i64 %4401, i64* %3, align 8
  %4402 = inttoptr i64 %4400 to i32*
  %4403 = load i32, i32* %4402, align 4
  %4404 = add i32 %4403, %4390
  %4405 = zext i32 %4404 to i64
  store i64 %4405, i64* %RDX.i2445, align 8
  %4406 = icmp ult i32 %4404, %4390
  %4407 = icmp ult i32 %4404, %4403
  %4408 = or i1 %4406, %4407
  %4409 = zext i1 %4408 to i8
  store i8 %4409, i8* %99, align 1
  %4410 = and i32 %4404, 255
  %4411 = tail call i32 @llvm.ctpop.i32(i32 %4410)
  %4412 = trunc i32 %4411 to i8
  %4413 = and i8 %4412, 1
  %4414 = xor i8 %4413, 1
  store i8 %4414, i8* %106, align 1
  %4415 = xor i32 %4403, %4390
  %4416 = xor i32 %4415, %4404
  %4417 = lshr i32 %4416, 4
  %4418 = trunc i32 %4417 to i8
  %4419 = and i8 %4418, 1
  store i8 %4419, i8* %111, align 1
  %4420 = icmp eq i32 %4404, 0
  %4421 = zext i1 %4420 to i8
  store i8 %4421, i8* %114, align 1
  %4422 = lshr i32 %4404, 31
  %4423 = trunc i32 %4422 to i8
  store i8 %4423, i8* %117, align 1
  %4424 = lshr i32 %4390, 31
  %4425 = lshr i32 %4403, 31
  %4426 = xor i32 %4422, %4424
  %4427 = xor i32 %4422, %4425
  %4428 = add nuw nsw i32 %4426, %4427
  %4429 = icmp eq i32 %4428, 2
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %123, align 1
  %4431 = add i64 %4342, -48
  %4432 = add i64 %4378, 26
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i64*
  %4434 = load i64, i64* %4433, align 8
  store i64 %4434, i64* %RAX.i2530, align 8
  %4435 = add i64 %4378, 30
  store i64 %4435, i64* %3, align 8
  %4436 = load i32, i32* %4345, align 4
  %4437 = sext i32 %4436 to i64
  store i64 %4437, i64* %RCX.i2527, align 8
  %4438 = shl nsw i64 %4437, 2
  %4439 = add i64 %4438, %4434
  %4440 = add i64 %4378, 33
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to i32*
  store i32 %4404, i32* %4441, align 4
  %4442 = load i64, i64* %RBP.i, align 8
  %4443 = add i64 %4442, -16
  %4444 = load i64, i64* %3, align 8
  %4445 = add i64 %4444, 3
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4443 to i32*
  %4447 = load i32, i32* %4446, align 4
  %4448 = add i32 %4447, 1
  %4449 = zext i32 %4448 to i64
  store i64 %4449, i64* %RAX.i2530, align 8
  %4450 = icmp eq i32 %4447, -1
  %4451 = icmp eq i32 %4448, 0
  %4452 = or i1 %4450, %4451
  %4453 = zext i1 %4452 to i8
  store i8 %4453, i8* %99, align 1
  %4454 = and i32 %4448, 255
  %4455 = tail call i32 @llvm.ctpop.i32(i32 %4454)
  %4456 = trunc i32 %4455 to i8
  %4457 = and i8 %4456, 1
  %4458 = xor i8 %4457, 1
  store i8 %4458, i8* %106, align 1
  %4459 = xor i32 %4448, %4447
  %4460 = lshr i32 %4459, 4
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  store i8 %4462, i8* %111, align 1
  %4463 = zext i1 %4451 to i8
  store i8 %4463, i8* %114, align 1
  %4464 = lshr i32 %4448, 31
  %4465 = trunc i32 %4464 to i8
  store i8 %4465, i8* %117, align 1
  %4466 = lshr i32 %4447, 31
  %4467 = xor i32 %4464, %4466
  %4468 = add nuw nsw i32 %4467, %4464
  %4469 = icmp eq i32 %4468, 2
  %4470 = zext i1 %4469 to i8
  store i8 %4470, i8* %123, align 1
  %4471 = add i64 %4444, 9
  store i64 %4471, i64* %3, align 8
  store i32 %4448, i32* %4446, align 4
  %4472 = load i64, i64* %3, align 8
  %4473 = add i64 %4472, -54
  store i64 %4473, i64* %3, align 8
  br label %block_.L_45b581

block_.L_45b5bc:                                  ; preds = %block_.L_45b581
  %4474 = add i64 %4342, -24
  %4475 = add i64 %4378, 4
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i64*
  %4477 = load i64, i64* %4476, align 8
  %4478 = add i64 %4477, 16
  store i64 %4478, i64* %RAX.i2530, align 8
  %4479 = icmp ugt i64 %4477, -17
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %99, align 1
  %4481 = trunc i64 %4478 to i32
  %4482 = and i32 %4481, 255
  %4483 = tail call i32 @llvm.ctpop.i32(i32 %4482)
  %4484 = trunc i32 %4483 to i8
  %4485 = and i8 %4484, 1
  %4486 = xor i8 %4485, 1
  store i8 %4486, i8* %106, align 1
  %4487 = xor i64 %4477, 16
  %4488 = xor i64 %4487, %4478
  %4489 = lshr i64 %4488, 4
  %4490 = trunc i64 %4489 to i8
  %4491 = and i8 %4490, 1
  store i8 %4491, i8* %111, align 1
  %4492 = icmp eq i64 %4478, 0
  %4493 = zext i1 %4492 to i8
  store i8 %4493, i8* %114, align 1
  %4494 = lshr i64 %4478, 63
  %4495 = trunc i64 %4494 to i8
  store i8 %4495, i8* %117, align 1
  %4496 = lshr i64 %4477, 63
  %4497 = xor i64 %4494, %4496
  %4498 = add nuw nsw i64 %4497, %4494
  %4499 = icmp eq i64 %4498, 2
  %4500 = zext i1 %4499 to i8
  store i8 %4500, i8* %123, align 1
  %4501 = add i64 %4378, 12
  store i64 %4501, i64* %3, align 8
  store i64 %4478, i64* %4476, align 8
  %4502 = load i64, i64* %RBP.i, align 8
  %4503 = add i64 %4502, -32
  %4504 = load i64, i64* %3, align 8
  %4505 = add i64 %4504, 4
  store i64 %4505, i64* %3, align 8
  %4506 = inttoptr i64 %4503 to i64*
  %4507 = load i64, i64* %4506, align 8
  %4508 = add i64 %4507, 16
  store i64 %4508, i64* %RAX.i2530, align 8
  %4509 = icmp ugt i64 %4507, -17
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %99, align 1
  %4511 = trunc i64 %4508 to i32
  %4512 = and i32 %4511, 255
  %4513 = tail call i32 @llvm.ctpop.i32(i32 %4512)
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = xor i8 %4515, 1
  store i8 %4516, i8* %106, align 1
  %4517 = xor i64 %4507, 16
  %4518 = xor i64 %4517, %4508
  %4519 = lshr i64 %4518, 4
  %4520 = trunc i64 %4519 to i8
  %4521 = and i8 %4520, 1
  store i8 %4521, i8* %111, align 1
  %4522 = icmp eq i64 %4508, 0
  %4523 = zext i1 %4522 to i8
  store i8 %4523, i8* %114, align 1
  %4524 = lshr i64 %4508, 63
  %4525 = trunc i64 %4524 to i8
  store i8 %4525, i8* %117, align 1
  %4526 = lshr i64 %4507, 63
  %4527 = xor i64 %4524, %4526
  %4528 = add nuw nsw i64 %4527, %4524
  %4529 = icmp eq i64 %4528, 2
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %123, align 1
  %4531 = add i64 %4504, 12
  store i64 %4531, i64* %3, align 8
  store i64 %4508, i64* %4506, align 8
  %4532 = load i64, i64* %RBP.i, align 8
  %4533 = add i64 %4532, -40
  %4534 = load i64, i64* %3, align 8
  %4535 = add i64 %4534, 4
  store i64 %4535, i64* %3, align 8
  %4536 = inttoptr i64 %4533 to i64*
  %4537 = load i64, i64* %4536, align 8
  %4538 = add i64 %4537, 16
  store i64 %4538, i64* %RAX.i2530, align 8
  %4539 = icmp ugt i64 %4537, -17
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %99, align 1
  %4541 = trunc i64 %4538 to i32
  %4542 = and i32 %4541, 255
  %4543 = tail call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  store i8 %4546, i8* %106, align 1
  %4547 = xor i64 %4537, 16
  %4548 = xor i64 %4547, %4538
  %4549 = lshr i64 %4548, 4
  %4550 = trunc i64 %4549 to i8
  %4551 = and i8 %4550, 1
  store i8 %4551, i8* %111, align 1
  %4552 = icmp eq i64 %4538, 0
  %4553 = zext i1 %4552 to i8
  store i8 %4553, i8* %114, align 1
  %4554 = lshr i64 %4538, 63
  %4555 = trunc i64 %4554 to i8
  store i8 %4555, i8* %117, align 1
  %4556 = lshr i64 %4537, 63
  %4557 = xor i64 %4554, %4556
  %4558 = add nuw nsw i64 %4557, %4554
  %4559 = icmp eq i64 %4558, 2
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %123, align 1
  %4561 = add i64 %4534, 12
  store i64 %4561, i64* %3, align 8
  store i64 %4538, i64* %4536, align 8
  %4562 = load i64, i64* %RBP.i, align 8
  %4563 = add i64 %4562, -24
  %4564 = load i64, i64* %3, align 8
  %4565 = add i64 %4564, 4
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4563 to i64*
  %4567 = load i64, i64* %4566, align 8
  store i64 %4567, i64* %RAX.i2530, align 8
  %4568 = add i64 %4564, 7
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to i64*
  %4570 = load i64, i64* %4569, align 8
  store i64 %4570, i64* %RAX.i2530, align 8
  %4571 = add i64 %4562, -48
  %4572 = add i64 %4564, 11
  store i64 %4572, i64* %3, align 8
  %4573 = inttoptr i64 %4571 to i64*
  store i64 %4570, i64* %4573, align 8
  %4574 = load i64, i64* %RBP.i, align 8
  %4575 = add i64 %4574, -32
  %4576 = load i64, i64* %3, align 8
  %4577 = add i64 %4576, 4
  store i64 %4577, i64* %3, align 8
  %4578 = inttoptr i64 %4575 to i64*
  %4579 = load i64, i64* %4578, align 8
  store i64 %4579, i64* %RAX.i2530, align 8
  %4580 = add i64 %4576, 7
  store i64 %4580, i64* %3, align 8
  %4581 = inttoptr i64 %4579 to i64*
  %4582 = load i64, i64* %4581, align 8
  store i64 %4582, i64* %RAX.i2530, align 8
  %4583 = add i64 %4574, -56
  %4584 = add i64 %4576, 11
  store i64 %4584, i64* %3, align 8
  %4585 = inttoptr i64 %4583 to i64*
  store i64 %4582, i64* %4585, align 8
  %4586 = load i64, i64* %RBP.i, align 8
  %4587 = add i64 %4586, -40
  %4588 = load i64, i64* %3, align 8
  %4589 = add i64 %4588, 4
  store i64 %4589, i64* %3, align 8
  %4590 = inttoptr i64 %4587 to i64*
  %4591 = load i64, i64* %4590, align 8
  store i64 %4591, i64* %RAX.i2530, align 8
  %4592 = add i64 %4588, 7
  store i64 %4592, i64* %3, align 8
  %4593 = inttoptr i64 %4591 to i64*
  %4594 = load i64, i64* %4593, align 8
  store i64 %4594, i64* %RAX.i2530, align 8
  %4595 = add i64 %4586, -64
  %4596 = add i64 %4588, 11
  store i64 %4596, i64* %3, align 8
  %4597 = inttoptr i64 %4595 to i64*
  store i64 %4594, i64* %4597, align 8
  %4598 = load i64, i64* %RBP.i, align 8
  %4599 = add i64 %4598, -16
  %4600 = load i64, i64* %3, align 8
  %4601 = add i64 %4600, 7
  store i64 %4601, i64* %3, align 8
  %4602 = inttoptr i64 %4599 to i32*
  store i32 0, i32* %4602, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_45b608

block_.L_45b608:                                  ; preds = %block_45b614, %block_.L_45b5bc
  %4603 = phi i64 [ %4735, %block_45b614 ], [ %.pre127, %block_.L_45b5bc ]
  %4604 = load i64, i64* %RBP.i, align 8
  %4605 = add i64 %4604, -16
  %4606 = add i64 %4603, 3
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i32*
  %4608 = load i32, i32* %4607, align 4
  %4609 = zext i32 %4608 to i64
  store i64 %4609, i64* %RAX.i2530, align 8
  %4610 = add i64 %4604, -12
  %4611 = add i64 %4603, 6
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to i32*
  %4613 = load i32, i32* %4612, align 4
  %4614 = sub i32 %4608, %4613
  %4615 = icmp ult i32 %4608, %4613
  %4616 = zext i1 %4615 to i8
  store i8 %4616, i8* %99, align 1
  %4617 = and i32 %4614, 255
  %4618 = tail call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  store i8 %4621, i8* %106, align 1
  %4622 = xor i32 %4613, %4608
  %4623 = xor i32 %4622, %4614
  %4624 = lshr i32 %4623, 4
  %4625 = trunc i32 %4624 to i8
  %4626 = and i8 %4625, 1
  store i8 %4626, i8* %111, align 1
  %4627 = icmp eq i32 %4614, 0
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %114, align 1
  %4629 = lshr i32 %4614, 31
  %4630 = trunc i32 %4629 to i8
  store i8 %4630, i8* %117, align 1
  %4631 = lshr i32 %4608, 31
  %4632 = lshr i32 %4613, 31
  %4633 = xor i32 %4632, %4631
  %4634 = xor i32 %4629, %4631
  %4635 = add nuw nsw i32 %4634, %4633
  %4636 = icmp eq i32 %4635, 2
  %4637 = zext i1 %4636 to i8
  store i8 %4637, i8* %123, align 1
  %4638 = icmp ne i8 %4630, 0
  %4639 = xor i1 %4638, %4636
  %.v151 = select i1 %4639, i64 12, i64 59
  %4640 = add i64 %4603, %.v151
  store i64 %4640, i64* %3, align 8
  br i1 %4639, label %block_45b614, label %block_.L_45b643

block_45b614:                                     ; preds = %block_.L_45b608
  %4641 = add i64 %4604, -56
  %4642 = add i64 %4640, 4
  store i64 %4642, i64* %3, align 8
  %4643 = inttoptr i64 %4641 to i64*
  %4644 = load i64, i64* %4643, align 8
  store i64 %4644, i64* %RAX.i2530, align 8
  %4645 = add i64 %4640, 8
  store i64 %4645, i64* %3, align 8
  %4646 = load i32, i32* %4607, align 4
  %4647 = sext i32 %4646 to i64
  store i64 %4647, i64* %RCX.i2527, align 8
  %4648 = shl nsw i64 %4647, 2
  %4649 = add i64 %4648, %4644
  %4650 = add i64 %4640, 11
  store i64 %4650, i64* %3, align 8
  %4651 = inttoptr i64 %4649 to i32*
  %4652 = load i32, i32* %4651, align 4
  %4653 = zext i32 %4652 to i64
  store i64 %4653, i64* %RDX.i2445, align 8
  %4654 = add i64 %4604, -64
  %4655 = add i64 %4640, 15
  store i64 %4655, i64* %3, align 8
  %4656 = inttoptr i64 %4654 to i64*
  %4657 = load i64, i64* %4656, align 8
  store i64 %4657, i64* %RAX.i2530, align 8
  %4658 = add i64 %4640, 19
  store i64 %4658, i64* %3, align 8
  %4659 = load i32, i32* %4607, align 4
  %4660 = sext i32 %4659 to i64
  store i64 %4660, i64* %RCX.i2527, align 8
  %4661 = shl nsw i64 %4660, 2
  %4662 = add i64 %4657, %4661
  %4663 = add i64 %4640, 22
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i32*
  %4665 = load i32, i32* %4664, align 4
  %4666 = add i32 %4665, %4652
  %4667 = zext i32 %4666 to i64
  store i64 %4667, i64* %RDX.i2445, align 8
  %4668 = icmp ult i32 %4666, %4652
  %4669 = icmp ult i32 %4666, %4665
  %4670 = or i1 %4668, %4669
  %4671 = zext i1 %4670 to i8
  store i8 %4671, i8* %99, align 1
  %4672 = and i32 %4666, 255
  %4673 = tail call i32 @llvm.ctpop.i32(i32 %4672)
  %4674 = trunc i32 %4673 to i8
  %4675 = and i8 %4674, 1
  %4676 = xor i8 %4675, 1
  store i8 %4676, i8* %106, align 1
  %4677 = xor i32 %4665, %4652
  %4678 = xor i32 %4677, %4666
  %4679 = lshr i32 %4678, 4
  %4680 = trunc i32 %4679 to i8
  %4681 = and i8 %4680, 1
  store i8 %4681, i8* %111, align 1
  %4682 = icmp eq i32 %4666, 0
  %4683 = zext i1 %4682 to i8
  store i8 %4683, i8* %114, align 1
  %4684 = lshr i32 %4666, 31
  %4685 = trunc i32 %4684 to i8
  store i8 %4685, i8* %117, align 1
  %4686 = lshr i32 %4652, 31
  %4687 = lshr i32 %4665, 31
  %4688 = xor i32 %4684, %4686
  %4689 = xor i32 %4684, %4687
  %4690 = add nuw nsw i32 %4688, %4689
  %4691 = icmp eq i32 %4690, 2
  %4692 = zext i1 %4691 to i8
  store i8 %4692, i8* %123, align 1
  %4693 = add i64 %4604, -48
  %4694 = add i64 %4640, 26
  store i64 %4694, i64* %3, align 8
  %4695 = inttoptr i64 %4693 to i64*
  %4696 = load i64, i64* %4695, align 8
  store i64 %4696, i64* %RAX.i2530, align 8
  %4697 = add i64 %4640, 30
  store i64 %4697, i64* %3, align 8
  %4698 = load i32, i32* %4607, align 4
  %4699 = sext i32 %4698 to i64
  store i64 %4699, i64* %RCX.i2527, align 8
  %4700 = shl nsw i64 %4699, 2
  %4701 = add i64 %4700, %4696
  %4702 = add i64 %4640, 33
  store i64 %4702, i64* %3, align 8
  %4703 = inttoptr i64 %4701 to i32*
  store i32 %4666, i32* %4703, align 4
  %4704 = load i64, i64* %RBP.i, align 8
  %4705 = add i64 %4704, -16
  %4706 = load i64, i64* %3, align 8
  %4707 = add i64 %4706, 3
  store i64 %4707, i64* %3, align 8
  %4708 = inttoptr i64 %4705 to i32*
  %4709 = load i32, i32* %4708, align 4
  %4710 = add i32 %4709, 1
  %4711 = zext i32 %4710 to i64
  store i64 %4711, i64* %RAX.i2530, align 8
  %4712 = icmp eq i32 %4709, -1
  %4713 = icmp eq i32 %4710, 0
  %4714 = or i1 %4712, %4713
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %99, align 1
  %4716 = and i32 %4710, 255
  %4717 = tail call i32 @llvm.ctpop.i32(i32 %4716)
  %4718 = trunc i32 %4717 to i8
  %4719 = and i8 %4718, 1
  %4720 = xor i8 %4719, 1
  store i8 %4720, i8* %106, align 1
  %4721 = xor i32 %4710, %4709
  %4722 = lshr i32 %4721, 4
  %4723 = trunc i32 %4722 to i8
  %4724 = and i8 %4723, 1
  store i8 %4724, i8* %111, align 1
  %4725 = zext i1 %4713 to i8
  store i8 %4725, i8* %114, align 1
  %4726 = lshr i32 %4710, 31
  %4727 = trunc i32 %4726 to i8
  store i8 %4727, i8* %117, align 1
  %4728 = lshr i32 %4709, 31
  %4729 = xor i32 %4726, %4728
  %4730 = add nuw nsw i32 %4729, %4726
  %4731 = icmp eq i32 %4730, 2
  %4732 = zext i1 %4731 to i8
  store i8 %4732, i8* %123, align 1
  %4733 = add i64 %4706, 9
  store i64 %4733, i64* %3, align 8
  store i32 %4710, i32* %4708, align 4
  %4734 = load i64, i64* %3, align 8
  %4735 = add i64 %4734, -54
  store i64 %4735, i64* %3, align 8
  br label %block_.L_45b608

block_.L_45b643:                                  ; preds = %block_.L_45b608
  %4736 = add i64 %4604, -24
  %4737 = add i64 %4640, 4
  store i64 %4737, i64* %3, align 8
  %4738 = inttoptr i64 %4736 to i64*
  %4739 = load i64, i64* %4738, align 8
  %4740 = add i64 %4739, 48
  store i64 %4740, i64* %RAX.i2530, align 8
  %4741 = icmp ugt i64 %4739, -49
  %4742 = zext i1 %4741 to i8
  store i8 %4742, i8* %99, align 1
  %4743 = trunc i64 %4740 to i32
  %4744 = and i32 %4743, 255
  %4745 = tail call i32 @llvm.ctpop.i32(i32 %4744)
  %4746 = trunc i32 %4745 to i8
  %4747 = and i8 %4746, 1
  %4748 = xor i8 %4747, 1
  store i8 %4748, i8* %106, align 1
  %4749 = xor i64 %4739, 16
  %4750 = xor i64 %4749, %4740
  %4751 = lshr i64 %4750, 4
  %4752 = trunc i64 %4751 to i8
  %4753 = and i8 %4752, 1
  store i8 %4753, i8* %111, align 1
  %4754 = icmp eq i64 %4740, 0
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %114, align 1
  %4756 = lshr i64 %4740, 63
  %4757 = trunc i64 %4756 to i8
  store i8 %4757, i8* %117, align 1
  %4758 = lshr i64 %4739, 63
  %4759 = xor i64 %4756, %4758
  %4760 = add nuw nsw i64 %4759, %4756
  %4761 = icmp eq i64 %4760, 2
  %4762 = zext i1 %4761 to i8
  store i8 %4762, i8* %123, align 1
  %4763 = add i64 %4640, 12
  store i64 %4763, i64* %3, align 8
  store i64 %4740, i64* %4738, align 8
  %4764 = load i64, i64* %RBP.i, align 8
  %4765 = add i64 %4764, -32
  %4766 = load i64, i64* %3, align 8
  %4767 = add i64 %4766, 4
  store i64 %4767, i64* %3, align 8
  %4768 = inttoptr i64 %4765 to i64*
  %4769 = load i64, i64* %4768, align 8
  %4770 = add i64 %4769, 48
  store i64 %4770, i64* %RAX.i2530, align 8
  %4771 = icmp ugt i64 %4769, -49
  %4772 = zext i1 %4771 to i8
  store i8 %4772, i8* %99, align 1
  %4773 = trunc i64 %4770 to i32
  %4774 = and i32 %4773, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %106, align 1
  %4779 = xor i64 %4769, 16
  %4780 = xor i64 %4779, %4770
  %4781 = lshr i64 %4780, 4
  %4782 = trunc i64 %4781 to i8
  %4783 = and i8 %4782, 1
  store i8 %4783, i8* %111, align 1
  %4784 = icmp eq i64 %4770, 0
  %4785 = zext i1 %4784 to i8
  store i8 %4785, i8* %114, align 1
  %4786 = lshr i64 %4770, 63
  %4787 = trunc i64 %4786 to i8
  store i8 %4787, i8* %117, align 1
  %4788 = lshr i64 %4769, 63
  %4789 = xor i64 %4786, %4788
  %4790 = add nuw nsw i64 %4789, %4786
  %4791 = icmp eq i64 %4790, 2
  %4792 = zext i1 %4791 to i8
  store i8 %4792, i8* %123, align 1
  %4793 = add i64 %4766, 12
  store i64 %4793, i64* %3, align 8
  store i64 %4770, i64* %4768, align 8
  %4794 = load i64, i64* %RBP.i, align 8
  %4795 = add i64 %4794, -40
  %4796 = load i64, i64* %3, align 8
  %4797 = add i64 %4796, 4
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4795 to i64*
  %4799 = load i64, i64* %4798, align 8
  %4800 = add i64 %4799, 48
  store i64 %4800, i64* %RAX.i2530, align 8
  %4801 = icmp ugt i64 %4799, -49
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %99, align 1
  %4803 = trunc i64 %4800 to i32
  %4804 = and i32 %4803, 255
  %4805 = tail call i32 @llvm.ctpop.i32(i32 %4804)
  %4806 = trunc i32 %4805 to i8
  %4807 = and i8 %4806, 1
  %4808 = xor i8 %4807, 1
  store i8 %4808, i8* %106, align 1
  %4809 = xor i64 %4799, 16
  %4810 = xor i64 %4809, %4800
  %4811 = lshr i64 %4810, 4
  %4812 = trunc i64 %4811 to i8
  %4813 = and i8 %4812, 1
  store i8 %4813, i8* %111, align 1
  %4814 = icmp eq i64 %4800, 0
  %4815 = zext i1 %4814 to i8
  store i8 %4815, i8* %114, align 1
  %4816 = lshr i64 %4800, 63
  %4817 = trunc i64 %4816 to i8
  store i8 %4817, i8* %117, align 1
  %4818 = lshr i64 %4799, 63
  %4819 = xor i64 %4816, %4818
  %4820 = add nuw nsw i64 %4819, %4816
  %4821 = icmp eq i64 %4820, 2
  %4822 = zext i1 %4821 to i8
  store i8 %4822, i8* %123, align 1
  %4823 = add i64 %4796, 12
  store i64 %4823, i64* %3, align 8
  store i64 %4800, i64* %4798, align 8
  %4824 = load i64, i64* %RBP.i, align 8
  %4825 = add i64 %4824, -24
  %4826 = load i64, i64* %3, align 8
  %4827 = add i64 %4826, 4
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4825 to i64*
  %4829 = load i64, i64* %4828, align 8
  store i64 %4829, i64* %RAX.i2530, align 8
  %4830 = add i64 %4826, 7
  store i64 %4830, i64* %3, align 8
  %4831 = inttoptr i64 %4829 to i64*
  %4832 = load i64, i64* %4831, align 8
  store i64 %4832, i64* %RAX.i2530, align 8
  %4833 = add i64 %4824, -48
  %4834 = add i64 %4826, 11
  store i64 %4834, i64* %3, align 8
  %4835 = inttoptr i64 %4833 to i64*
  store i64 %4832, i64* %4835, align 8
  %4836 = load i64, i64* %RBP.i, align 8
  %4837 = add i64 %4836, -32
  %4838 = load i64, i64* %3, align 8
  %4839 = add i64 %4838, 4
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4837 to i64*
  %4841 = load i64, i64* %4840, align 8
  store i64 %4841, i64* %RAX.i2530, align 8
  %4842 = add i64 %4838, 7
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i64*
  %4844 = load i64, i64* %4843, align 8
  store i64 %4844, i64* %RAX.i2530, align 8
  %4845 = add i64 %4836, -56
  %4846 = add i64 %4838, 11
  store i64 %4846, i64* %3, align 8
  %4847 = inttoptr i64 %4845 to i64*
  store i64 %4844, i64* %4847, align 8
  %4848 = load i64, i64* %RBP.i, align 8
  %4849 = add i64 %4848, -40
  %4850 = load i64, i64* %3, align 8
  %4851 = add i64 %4850, 4
  store i64 %4851, i64* %3, align 8
  %4852 = inttoptr i64 %4849 to i64*
  %4853 = load i64, i64* %4852, align 8
  store i64 %4853, i64* %RAX.i2530, align 8
  %4854 = add i64 %4850, 7
  store i64 %4854, i64* %3, align 8
  %4855 = inttoptr i64 %4853 to i64*
  %4856 = load i64, i64* %4855, align 8
  store i64 %4856, i64* %RAX.i2530, align 8
  %4857 = add i64 %4848, -64
  %4858 = add i64 %4850, 11
  store i64 %4858, i64* %3, align 8
  %4859 = inttoptr i64 %4857 to i64*
  store i64 %4856, i64* %4859, align 8
  %4860 = load i64, i64* %RBP.i, align 8
  %4861 = add i64 %4860, -16
  %4862 = load i64, i64* %3, align 8
  %4863 = add i64 %4862, 7
  store i64 %4863, i64* %3, align 8
  %4864 = inttoptr i64 %4861 to i32*
  store i32 0, i32* %4864, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_45b68f

block_.L_45b68f:                                  ; preds = %block_45b69b, %block_.L_45b643
  %4865 = phi i64 [ %4997, %block_45b69b ], [ %.pre128, %block_.L_45b643 ]
  %4866 = load i64, i64* %RBP.i, align 8
  %4867 = add i64 %4866, -16
  %4868 = add i64 %4865, 3
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4867 to i32*
  %4870 = load i32, i32* %4869, align 4
  %4871 = zext i32 %4870 to i64
  store i64 %4871, i64* %RAX.i2530, align 8
  %4872 = add i64 %4866, -12
  %4873 = add i64 %4865, 6
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = sub i32 %4870, %4875
  %4877 = icmp ult i32 %4870, %4875
  %4878 = zext i1 %4877 to i8
  store i8 %4878, i8* %99, align 1
  %4879 = and i32 %4876, 255
  %4880 = tail call i32 @llvm.ctpop.i32(i32 %4879)
  %4881 = trunc i32 %4880 to i8
  %4882 = and i8 %4881, 1
  %4883 = xor i8 %4882, 1
  store i8 %4883, i8* %106, align 1
  %4884 = xor i32 %4875, %4870
  %4885 = xor i32 %4884, %4876
  %4886 = lshr i32 %4885, 4
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  store i8 %4888, i8* %111, align 1
  %4889 = icmp eq i32 %4876, 0
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %114, align 1
  %4891 = lshr i32 %4876, 31
  %4892 = trunc i32 %4891 to i8
  store i8 %4892, i8* %117, align 1
  %4893 = lshr i32 %4870, 31
  %4894 = lshr i32 %4875, 31
  %4895 = xor i32 %4894, %4893
  %4896 = xor i32 %4891, %4893
  %4897 = add nuw nsw i32 %4896, %4895
  %4898 = icmp eq i32 %4897, 2
  %4899 = zext i1 %4898 to i8
  store i8 %4899, i8* %123, align 1
  %4900 = icmp ne i8 %4892, 0
  %4901 = xor i1 %4900, %4898
  %.v152 = select i1 %4901, i64 12, i64 59
  %4902 = add i64 %4865, %.v152
  store i64 %4902, i64* %3, align 8
  br i1 %4901, label %block_45b69b, label %block_.L_45b6ca

block_45b69b:                                     ; preds = %block_.L_45b68f
  %4903 = add i64 %4866, -56
  %4904 = add i64 %4902, 4
  store i64 %4904, i64* %3, align 8
  %4905 = inttoptr i64 %4903 to i64*
  %4906 = load i64, i64* %4905, align 8
  store i64 %4906, i64* %RAX.i2530, align 8
  %4907 = add i64 %4902, 8
  store i64 %4907, i64* %3, align 8
  %4908 = load i32, i32* %4869, align 4
  %4909 = sext i32 %4908 to i64
  store i64 %4909, i64* %RCX.i2527, align 8
  %4910 = shl nsw i64 %4909, 2
  %4911 = add i64 %4910, %4906
  %4912 = add i64 %4902, 11
  store i64 %4912, i64* %3, align 8
  %4913 = inttoptr i64 %4911 to i32*
  %4914 = load i32, i32* %4913, align 4
  %4915 = zext i32 %4914 to i64
  store i64 %4915, i64* %RDX.i2445, align 8
  %4916 = add i64 %4866, -64
  %4917 = add i64 %4902, 15
  store i64 %4917, i64* %3, align 8
  %4918 = inttoptr i64 %4916 to i64*
  %4919 = load i64, i64* %4918, align 8
  store i64 %4919, i64* %RAX.i2530, align 8
  %4920 = add i64 %4902, 19
  store i64 %4920, i64* %3, align 8
  %4921 = load i32, i32* %4869, align 4
  %4922 = sext i32 %4921 to i64
  store i64 %4922, i64* %RCX.i2527, align 8
  %4923 = shl nsw i64 %4922, 2
  %4924 = add i64 %4919, %4923
  %4925 = add i64 %4902, 22
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  %4927 = load i32, i32* %4926, align 4
  %4928 = add i32 %4927, %4914
  %4929 = zext i32 %4928 to i64
  store i64 %4929, i64* %RDX.i2445, align 8
  %4930 = icmp ult i32 %4928, %4914
  %4931 = icmp ult i32 %4928, %4927
  %4932 = or i1 %4930, %4931
  %4933 = zext i1 %4932 to i8
  store i8 %4933, i8* %99, align 1
  %4934 = and i32 %4928, 255
  %4935 = tail call i32 @llvm.ctpop.i32(i32 %4934)
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = xor i8 %4937, 1
  store i8 %4938, i8* %106, align 1
  %4939 = xor i32 %4927, %4914
  %4940 = xor i32 %4939, %4928
  %4941 = lshr i32 %4940, 4
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  store i8 %4943, i8* %111, align 1
  %4944 = icmp eq i32 %4928, 0
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %114, align 1
  %4946 = lshr i32 %4928, 31
  %4947 = trunc i32 %4946 to i8
  store i8 %4947, i8* %117, align 1
  %4948 = lshr i32 %4914, 31
  %4949 = lshr i32 %4927, 31
  %4950 = xor i32 %4946, %4948
  %4951 = xor i32 %4946, %4949
  %4952 = add nuw nsw i32 %4950, %4951
  %4953 = icmp eq i32 %4952, 2
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %123, align 1
  %4955 = add i64 %4866, -48
  %4956 = add i64 %4902, 26
  store i64 %4956, i64* %3, align 8
  %4957 = inttoptr i64 %4955 to i64*
  %4958 = load i64, i64* %4957, align 8
  store i64 %4958, i64* %RAX.i2530, align 8
  %4959 = add i64 %4902, 30
  store i64 %4959, i64* %3, align 8
  %4960 = load i32, i32* %4869, align 4
  %4961 = sext i32 %4960 to i64
  store i64 %4961, i64* %RCX.i2527, align 8
  %4962 = shl nsw i64 %4961, 2
  %4963 = add i64 %4962, %4958
  %4964 = add i64 %4902, 33
  store i64 %4964, i64* %3, align 8
  %4965 = inttoptr i64 %4963 to i32*
  store i32 %4928, i32* %4965, align 4
  %4966 = load i64, i64* %RBP.i, align 8
  %4967 = add i64 %4966, -16
  %4968 = load i64, i64* %3, align 8
  %4969 = add i64 %4968, 3
  store i64 %4969, i64* %3, align 8
  %4970 = inttoptr i64 %4967 to i32*
  %4971 = load i32, i32* %4970, align 4
  %4972 = add i32 %4971, 1
  %4973 = zext i32 %4972 to i64
  store i64 %4973, i64* %RAX.i2530, align 8
  %4974 = icmp eq i32 %4971, -1
  %4975 = icmp eq i32 %4972, 0
  %4976 = or i1 %4974, %4975
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %99, align 1
  %4978 = and i32 %4972, 255
  %4979 = tail call i32 @llvm.ctpop.i32(i32 %4978)
  %4980 = trunc i32 %4979 to i8
  %4981 = and i8 %4980, 1
  %4982 = xor i8 %4981, 1
  store i8 %4982, i8* %106, align 1
  %4983 = xor i32 %4972, %4971
  %4984 = lshr i32 %4983, 4
  %4985 = trunc i32 %4984 to i8
  %4986 = and i8 %4985, 1
  store i8 %4986, i8* %111, align 1
  %4987 = zext i1 %4975 to i8
  store i8 %4987, i8* %114, align 1
  %4988 = lshr i32 %4972, 31
  %4989 = trunc i32 %4988 to i8
  store i8 %4989, i8* %117, align 1
  %4990 = lshr i32 %4971, 31
  %4991 = xor i32 %4988, %4990
  %4992 = add nuw nsw i32 %4991, %4988
  %4993 = icmp eq i32 %4992, 2
  %4994 = zext i1 %4993 to i8
  store i8 %4994, i8* %123, align 1
  %4995 = add i64 %4968, 9
  store i64 %4995, i64* %3, align 8
  store i32 %4972, i32* %4970, align 4
  %4996 = load i64, i64* %3, align 8
  %4997 = add i64 %4996, -54
  store i64 %4997, i64* %3, align 8
  br label %block_.L_45b68f

block_.L_45b6ca:                                  ; preds = %block_.L_45b68f
  %4998 = add i64 %4866, -24
  %4999 = add i64 %4902, 4
  store i64 %4999, i64* %3, align 8
  %5000 = inttoptr i64 %4998 to i64*
  %5001 = load i64, i64* %5000, align 8
  %5002 = add i64 %5001, 16
  store i64 %5002, i64* %RAX.i2530, align 8
  %5003 = icmp ugt i64 %5001, -17
  %5004 = zext i1 %5003 to i8
  store i8 %5004, i8* %99, align 1
  %5005 = trunc i64 %5002 to i32
  %5006 = and i32 %5005, 255
  %5007 = tail call i32 @llvm.ctpop.i32(i32 %5006)
  %5008 = trunc i32 %5007 to i8
  %5009 = and i8 %5008, 1
  %5010 = xor i8 %5009, 1
  store i8 %5010, i8* %106, align 1
  %5011 = xor i64 %5001, 16
  %5012 = xor i64 %5011, %5002
  %5013 = lshr i64 %5012, 4
  %5014 = trunc i64 %5013 to i8
  %5015 = and i8 %5014, 1
  store i8 %5015, i8* %111, align 1
  %5016 = icmp eq i64 %5002, 0
  %5017 = zext i1 %5016 to i8
  store i8 %5017, i8* %114, align 1
  %5018 = lshr i64 %5002, 63
  %5019 = trunc i64 %5018 to i8
  store i8 %5019, i8* %117, align 1
  %5020 = lshr i64 %5001, 63
  %5021 = xor i64 %5018, %5020
  %5022 = add nuw nsw i64 %5021, %5018
  %5023 = icmp eq i64 %5022, 2
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %123, align 1
  %5025 = add i64 %4902, 12
  store i64 %5025, i64* %3, align 8
  store i64 %5002, i64* %5000, align 8
  %5026 = load i64, i64* %RBP.i, align 8
  %5027 = add i64 %5026, -32
  %5028 = load i64, i64* %3, align 8
  %5029 = add i64 %5028, 4
  store i64 %5029, i64* %3, align 8
  %5030 = inttoptr i64 %5027 to i64*
  %5031 = load i64, i64* %5030, align 8
  %5032 = add i64 %5031, 16
  store i64 %5032, i64* %RAX.i2530, align 8
  %5033 = icmp ugt i64 %5031, -17
  %5034 = zext i1 %5033 to i8
  store i8 %5034, i8* %99, align 1
  %5035 = trunc i64 %5032 to i32
  %5036 = and i32 %5035, 255
  %5037 = tail call i32 @llvm.ctpop.i32(i32 %5036)
  %5038 = trunc i32 %5037 to i8
  %5039 = and i8 %5038, 1
  %5040 = xor i8 %5039, 1
  store i8 %5040, i8* %106, align 1
  %5041 = xor i64 %5031, 16
  %5042 = xor i64 %5041, %5032
  %5043 = lshr i64 %5042, 4
  %5044 = trunc i64 %5043 to i8
  %5045 = and i8 %5044, 1
  store i8 %5045, i8* %111, align 1
  %5046 = icmp eq i64 %5032, 0
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %114, align 1
  %5048 = lshr i64 %5032, 63
  %5049 = trunc i64 %5048 to i8
  store i8 %5049, i8* %117, align 1
  %5050 = lshr i64 %5031, 63
  %5051 = xor i64 %5048, %5050
  %5052 = add nuw nsw i64 %5051, %5048
  %5053 = icmp eq i64 %5052, 2
  %5054 = zext i1 %5053 to i8
  store i8 %5054, i8* %123, align 1
  %5055 = add i64 %5028, 12
  store i64 %5055, i64* %3, align 8
  store i64 %5032, i64* %5030, align 8
  %5056 = load i64, i64* %RBP.i, align 8
  %5057 = add i64 %5056, -40
  %5058 = load i64, i64* %3, align 8
  %5059 = add i64 %5058, 4
  store i64 %5059, i64* %3, align 8
  %5060 = inttoptr i64 %5057 to i64*
  %5061 = load i64, i64* %5060, align 8
  %5062 = add i64 %5061, 16
  store i64 %5062, i64* %RAX.i2530, align 8
  %5063 = icmp ugt i64 %5061, -17
  %5064 = zext i1 %5063 to i8
  store i8 %5064, i8* %99, align 1
  %5065 = trunc i64 %5062 to i32
  %5066 = and i32 %5065, 255
  %5067 = tail call i32 @llvm.ctpop.i32(i32 %5066)
  %5068 = trunc i32 %5067 to i8
  %5069 = and i8 %5068, 1
  %5070 = xor i8 %5069, 1
  store i8 %5070, i8* %106, align 1
  %5071 = xor i64 %5061, 16
  %5072 = xor i64 %5071, %5062
  %5073 = lshr i64 %5072, 4
  %5074 = trunc i64 %5073 to i8
  %5075 = and i8 %5074, 1
  store i8 %5075, i8* %111, align 1
  %5076 = icmp eq i64 %5062, 0
  %5077 = zext i1 %5076 to i8
  store i8 %5077, i8* %114, align 1
  %5078 = lshr i64 %5062, 63
  %5079 = trunc i64 %5078 to i8
  store i8 %5079, i8* %117, align 1
  %5080 = lshr i64 %5061, 63
  %5081 = xor i64 %5078, %5080
  %5082 = add nuw nsw i64 %5081, %5078
  %5083 = icmp eq i64 %5082, 2
  %5084 = zext i1 %5083 to i8
  store i8 %5084, i8* %123, align 1
  %5085 = add i64 %5058, 12
  store i64 %5085, i64* %3, align 8
  store i64 %5062, i64* %5060, align 8
  %5086 = load i64, i64* %RBP.i, align 8
  %5087 = add i64 %5086, -24
  %5088 = load i64, i64* %3, align 8
  %5089 = add i64 %5088, 4
  store i64 %5089, i64* %3, align 8
  %5090 = inttoptr i64 %5087 to i64*
  %5091 = load i64, i64* %5090, align 8
  store i64 %5091, i64* %RAX.i2530, align 8
  %5092 = add i64 %5088, 7
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i64*
  %5094 = load i64, i64* %5093, align 8
  store i64 %5094, i64* %RAX.i2530, align 8
  %5095 = add i64 %5086, -48
  %5096 = add i64 %5088, 11
  store i64 %5096, i64* %3, align 8
  %5097 = inttoptr i64 %5095 to i64*
  store i64 %5094, i64* %5097, align 8
  %5098 = load i64, i64* %RBP.i, align 8
  %5099 = add i64 %5098, -32
  %5100 = load i64, i64* %3, align 8
  %5101 = add i64 %5100, 4
  store i64 %5101, i64* %3, align 8
  %5102 = inttoptr i64 %5099 to i64*
  %5103 = load i64, i64* %5102, align 8
  store i64 %5103, i64* %RAX.i2530, align 8
  %5104 = add i64 %5100, 7
  store i64 %5104, i64* %3, align 8
  %5105 = inttoptr i64 %5103 to i64*
  %5106 = load i64, i64* %5105, align 8
  store i64 %5106, i64* %RAX.i2530, align 8
  %5107 = add i64 %5098, -56
  %5108 = add i64 %5100, 11
  store i64 %5108, i64* %3, align 8
  %5109 = inttoptr i64 %5107 to i64*
  store i64 %5106, i64* %5109, align 8
  %5110 = load i64, i64* %RBP.i, align 8
  %5111 = add i64 %5110, -40
  %5112 = load i64, i64* %3, align 8
  %5113 = add i64 %5112, 4
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5111 to i64*
  %5115 = load i64, i64* %5114, align 8
  store i64 %5115, i64* %RAX.i2530, align 8
  %5116 = add i64 %5112, 7
  store i64 %5116, i64* %3, align 8
  %5117 = inttoptr i64 %5115 to i64*
  %5118 = load i64, i64* %5117, align 8
  store i64 %5118, i64* %RAX.i2530, align 8
  %5119 = add i64 %5110, -64
  %5120 = add i64 %5112, 11
  store i64 %5120, i64* %3, align 8
  %5121 = inttoptr i64 %5119 to i64*
  store i64 %5118, i64* %5121, align 8
  %5122 = load i64, i64* %RBP.i, align 8
  %5123 = add i64 %5122, -16
  %5124 = load i64, i64* %3, align 8
  %5125 = add i64 %5124, 7
  store i64 %5125, i64* %3, align 8
  %5126 = inttoptr i64 %5123 to i32*
  store i32 0, i32* %5126, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_45b716

block_.L_45b716:                                  ; preds = %block_45b722, %block_.L_45b6ca
  %5127 = phi i64 [ %5259, %block_45b722 ], [ %.pre129, %block_.L_45b6ca ]
  %5128 = load i64, i64* %RBP.i, align 8
  %5129 = add i64 %5128, -16
  %5130 = add i64 %5127, 3
  store i64 %5130, i64* %3, align 8
  %5131 = inttoptr i64 %5129 to i32*
  %5132 = load i32, i32* %5131, align 4
  %5133 = zext i32 %5132 to i64
  store i64 %5133, i64* %RAX.i2530, align 8
  %5134 = add i64 %5128, -12
  %5135 = add i64 %5127, 6
  store i64 %5135, i64* %3, align 8
  %5136 = inttoptr i64 %5134 to i32*
  %5137 = load i32, i32* %5136, align 4
  %5138 = sub i32 %5132, %5137
  %5139 = icmp ult i32 %5132, %5137
  %5140 = zext i1 %5139 to i8
  store i8 %5140, i8* %99, align 1
  %5141 = and i32 %5138, 255
  %5142 = tail call i32 @llvm.ctpop.i32(i32 %5141)
  %5143 = trunc i32 %5142 to i8
  %5144 = and i8 %5143, 1
  %5145 = xor i8 %5144, 1
  store i8 %5145, i8* %106, align 1
  %5146 = xor i32 %5137, %5132
  %5147 = xor i32 %5146, %5138
  %5148 = lshr i32 %5147, 4
  %5149 = trunc i32 %5148 to i8
  %5150 = and i8 %5149, 1
  store i8 %5150, i8* %111, align 1
  %5151 = icmp eq i32 %5138, 0
  %5152 = zext i1 %5151 to i8
  store i8 %5152, i8* %114, align 1
  %5153 = lshr i32 %5138, 31
  %5154 = trunc i32 %5153 to i8
  store i8 %5154, i8* %117, align 1
  %5155 = lshr i32 %5132, 31
  %5156 = lshr i32 %5137, 31
  %5157 = xor i32 %5156, %5155
  %5158 = xor i32 %5153, %5155
  %5159 = add nuw nsw i32 %5158, %5157
  %5160 = icmp eq i32 %5159, 2
  %5161 = zext i1 %5160 to i8
  store i8 %5161, i8* %123, align 1
  %5162 = icmp ne i8 %5154, 0
  %5163 = xor i1 %5162, %5160
  %.v153 = select i1 %5163, i64 12, i64 59
  %5164 = add i64 %5127, %.v153
  store i64 %5164, i64* %3, align 8
  br i1 %5163, label %block_45b722, label %block_.L_45b751

block_45b722:                                     ; preds = %block_.L_45b716
  %5165 = add i64 %5128, -56
  %5166 = add i64 %5164, 4
  store i64 %5166, i64* %3, align 8
  %5167 = inttoptr i64 %5165 to i64*
  %5168 = load i64, i64* %5167, align 8
  store i64 %5168, i64* %RAX.i2530, align 8
  %5169 = add i64 %5164, 8
  store i64 %5169, i64* %3, align 8
  %5170 = load i32, i32* %5131, align 4
  %5171 = sext i32 %5170 to i64
  store i64 %5171, i64* %RCX.i2527, align 8
  %5172 = shl nsw i64 %5171, 2
  %5173 = add i64 %5172, %5168
  %5174 = add i64 %5164, 11
  store i64 %5174, i64* %3, align 8
  %5175 = inttoptr i64 %5173 to i32*
  %5176 = load i32, i32* %5175, align 4
  %5177 = zext i32 %5176 to i64
  store i64 %5177, i64* %RDX.i2445, align 8
  %5178 = add i64 %5128, -64
  %5179 = add i64 %5164, 15
  store i64 %5179, i64* %3, align 8
  %5180 = inttoptr i64 %5178 to i64*
  %5181 = load i64, i64* %5180, align 8
  store i64 %5181, i64* %RAX.i2530, align 8
  %5182 = add i64 %5164, 19
  store i64 %5182, i64* %3, align 8
  %5183 = load i32, i32* %5131, align 4
  %5184 = sext i32 %5183 to i64
  store i64 %5184, i64* %RCX.i2527, align 8
  %5185 = shl nsw i64 %5184, 2
  %5186 = add i64 %5181, %5185
  %5187 = add i64 %5164, 22
  store i64 %5187, i64* %3, align 8
  %5188 = inttoptr i64 %5186 to i32*
  %5189 = load i32, i32* %5188, align 4
  %5190 = add i32 %5189, %5176
  %5191 = zext i32 %5190 to i64
  store i64 %5191, i64* %RDX.i2445, align 8
  %5192 = icmp ult i32 %5190, %5176
  %5193 = icmp ult i32 %5190, %5189
  %5194 = or i1 %5192, %5193
  %5195 = zext i1 %5194 to i8
  store i8 %5195, i8* %99, align 1
  %5196 = and i32 %5190, 255
  %5197 = tail call i32 @llvm.ctpop.i32(i32 %5196)
  %5198 = trunc i32 %5197 to i8
  %5199 = and i8 %5198, 1
  %5200 = xor i8 %5199, 1
  store i8 %5200, i8* %106, align 1
  %5201 = xor i32 %5189, %5176
  %5202 = xor i32 %5201, %5190
  %5203 = lshr i32 %5202, 4
  %5204 = trunc i32 %5203 to i8
  %5205 = and i8 %5204, 1
  store i8 %5205, i8* %111, align 1
  %5206 = icmp eq i32 %5190, 0
  %5207 = zext i1 %5206 to i8
  store i8 %5207, i8* %114, align 1
  %5208 = lshr i32 %5190, 31
  %5209 = trunc i32 %5208 to i8
  store i8 %5209, i8* %117, align 1
  %5210 = lshr i32 %5176, 31
  %5211 = lshr i32 %5189, 31
  %5212 = xor i32 %5208, %5210
  %5213 = xor i32 %5208, %5211
  %5214 = add nuw nsw i32 %5212, %5213
  %5215 = icmp eq i32 %5214, 2
  %5216 = zext i1 %5215 to i8
  store i8 %5216, i8* %123, align 1
  %5217 = add i64 %5128, -48
  %5218 = add i64 %5164, 26
  store i64 %5218, i64* %3, align 8
  %5219 = inttoptr i64 %5217 to i64*
  %5220 = load i64, i64* %5219, align 8
  store i64 %5220, i64* %RAX.i2530, align 8
  %5221 = add i64 %5164, 30
  store i64 %5221, i64* %3, align 8
  %5222 = load i32, i32* %5131, align 4
  %5223 = sext i32 %5222 to i64
  store i64 %5223, i64* %RCX.i2527, align 8
  %5224 = shl nsw i64 %5223, 2
  %5225 = add i64 %5224, %5220
  %5226 = add i64 %5164, 33
  store i64 %5226, i64* %3, align 8
  %5227 = inttoptr i64 %5225 to i32*
  store i32 %5190, i32* %5227, align 4
  %5228 = load i64, i64* %RBP.i, align 8
  %5229 = add i64 %5228, -16
  %5230 = load i64, i64* %3, align 8
  %5231 = add i64 %5230, 3
  store i64 %5231, i64* %3, align 8
  %5232 = inttoptr i64 %5229 to i32*
  %5233 = load i32, i32* %5232, align 4
  %5234 = add i32 %5233, 1
  %5235 = zext i32 %5234 to i64
  store i64 %5235, i64* %RAX.i2530, align 8
  %5236 = icmp eq i32 %5233, -1
  %5237 = icmp eq i32 %5234, 0
  %5238 = or i1 %5236, %5237
  %5239 = zext i1 %5238 to i8
  store i8 %5239, i8* %99, align 1
  %5240 = and i32 %5234, 255
  %5241 = tail call i32 @llvm.ctpop.i32(i32 %5240)
  %5242 = trunc i32 %5241 to i8
  %5243 = and i8 %5242, 1
  %5244 = xor i8 %5243, 1
  store i8 %5244, i8* %106, align 1
  %5245 = xor i32 %5234, %5233
  %5246 = lshr i32 %5245, 4
  %5247 = trunc i32 %5246 to i8
  %5248 = and i8 %5247, 1
  store i8 %5248, i8* %111, align 1
  %5249 = zext i1 %5237 to i8
  store i8 %5249, i8* %114, align 1
  %5250 = lshr i32 %5234, 31
  %5251 = trunc i32 %5250 to i8
  store i8 %5251, i8* %117, align 1
  %5252 = lshr i32 %5233, 31
  %5253 = xor i32 %5250, %5252
  %5254 = add nuw nsw i32 %5253, %5250
  %5255 = icmp eq i32 %5254, 2
  %5256 = zext i1 %5255 to i8
  store i8 %5256, i8* %123, align 1
  %5257 = add i64 %5230, 9
  store i64 %5257, i64* %3, align 8
  store i32 %5234, i32* %5232, align 4
  %5258 = load i64, i64* %3, align 8
  %5259 = add i64 %5258, -54
  store i64 %5259, i64* %3, align 8
  br label %block_.L_45b716

block_.L_45b751:                                  ; preds = %block_.L_45b716
  %5260 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %5260, i64* %RAX.i2530, align 8
  %5261 = add i64 %5128, -4
  %5262 = add i64 %5164, 12
  store i64 %5262, i64* %3, align 8
  %5263 = inttoptr i64 %5261 to i32*
  %5264 = load i32, i32* %5263, align 4
  %5265 = sext i32 %5264 to i64
  store i64 %5265, i64* %RCX.i2527, align 8
  %5266 = shl nsw i64 %5265, 3
  %5267 = add i64 %5266, %5260
  %5268 = add i64 %5164, 16
  store i64 %5268, i64* %3, align 8
  %5269 = inttoptr i64 %5267 to i64*
  %5270 = load i64, i64* %5269, align 8
  store i64 %5270, i64* %RAX.i2530, align 8
  %5271 = add i64 %5128, -8
  %5272 = add i64 %5164, 20
  store i64 %5272, i64* %3, align 8
  %5273 = inttoptr i64 %5271 to i32*
  %5274 = load i32, i32* %5273, align 4
  %5275 = sext i32 %5274 to i64
  store i64 %5275, i64* %RCX.i2527, align 8
  %5276 = shl nsw i64 %5275, 3
  %5277 = add i64 %5276, %5270
  %5278 = add i64 %5164, 24
  store i64 %5278, i64* %3, align 8
  %5279 = inttoptr i64 %5277 to i64*
  %5280 = load i64, i64* %5279, align 8
  store i64 %5280, i64* %RAX.i2530, align 8
  %5281 = add i64 %5280, 24
  %5282 = add i64 %5164, 28
  store i64 %5282, i64* %3, align 8
  %5283 = inttoptr i64 %5281 to i64*
  %5284 = load i64, i64* %5283, align 8
  %5285 = add i64 %5128, -24
  %5286 = add i64 %5164, 32
  store i64 %5286, i64* %3, align 8
  %5287 = inttoptr i64 %5285 to i64*
  store i64 %5284, i64* %5287, align 8
  %5288 = load i64, i64* %3, align 8
  %5289 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %5289, i64* %RAX.i2530, align 8
  %5290 = load i64, i64* %RBP.i, align 8
  %5291 = add i64 %5290, -4
  %5292 = add i64 %5288, 12
  store i64 %5292, i64* %3, align 8
  %5293 = inttoptr i64 %5291 to i32*
  %5294 = load i32, i32* %5293, align 4
  %5295 = sext i32 %5294 to i64
  store i64 %5295, i64* %RCX.i2527, align 8
  %5296 = shl nsw i64 %5295, 3
  %5297 = add i64 %5296, %5289
  %5298 = add i64 %5288, 16
  store i64 %5298, i64* %3, align 8
  %5299 = inttoptr i64 %5297 to i64*
  %5300 = load i64, i64* %5299, align 8
  store i64 %5300, i64* %RAX.i2530, align 8
  %5301 = add i64 %5290, -8
  %5302 = add i64 %5288, 20
  store i64 %5302, i64* %3, align 8
  %5303 = inttoptr i64 %5301 to i32*
  %5304 = load i32, i32* %5303, align 4
  %5305 = sext i32 %5304 to i64
  store i64 %5305, i64* %RCX.i2527, align 8
  %5306 = shl nsw i64 %5305, 3
  %5307 = add i64 %5306, %5300
  %5308 = add i64 %5288, 24
  store i64 %5308, i64* %3, align 8
  %5309 = inttoptr i64 %5307 to i64*
  %5310 = load i64, i64* %5309, align 8
  store i64 %5310, i64* %RAX.i2530, align 8
  %5311 = add i64 %5310, 32
  %5312 = add i64 %5288, 28
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5311 to i64*
  %5314 = load i64, i64* %5313, align 8
  store i64 %5314, i64* %RAX.i2530, align 8
  %5315 = add i64 %5290, -32
  %5316 = add i64 %5288, 32
  store i64 %5316, i64* %3, align 8
  %5317 = inttoptr i64 %5315 to i64*
  store i64 %5314, i64* %5317, align 8
  %5318 = load i64, i64* %RBP.i, align 8
  %5319 = add i64 %5318, -32
  %5320 = load i64, i64* %3, align 8
  %5321 = add i64 %5320, 4
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5319 to i64*
  %5323 = load i64, i64* %5322, align 8
  %5324 = add i64 %5323, 64
  store i64 %5324, i64* %RAX.i2530, align 8
  %5325 = icmp ugt i64 %5323, -65
  %5326 = zext i1 %5325 to i8
  store i8 %5326, i8* %99, align 1
  %5327 = trunc i64 %5324 to i32
  %5328 = and i32 %5327, 255
  %5329 = tail call i32 @llvm.ctpop.i32(i32 %5328)
  %5330 = trunc i32 %5329 to i8
  %5331 = and i8 %5330, 1
  %5332 = xor i8 %5331, 1
  store i8 %5332, i8* %106, align 1
  %5333 = xor i64 %5324, %5323
  %5334 = lshr i64 %5333, 4
  %5335 = trunc i64 %5334 to i8
  %5336 = and i8 %5335, 1
  store i8 %5336, i8* %111, align 1
  %5337 = icmp eq i64 %5324, 0
  %5338 = zext i1 %5337 to i8
  store i8 %5338, i8* %114, align 1
  %5339 = lshr i64 %5324, 63
  %5340 = trunc i64 %5339 to i8
  store i8 %5340, i8* %117, align 1
  %5341 = lshr i64 %5323, 63
  %5342 = xor i64 %5339, %5341
  %5343 = add nuw nsw i64 %5342, %5339
  %5344 = icmp eq i64 %5343, 2
  %5345 = zext i1 %5344 to i8
  store i8 %5345, i8* %123, align 1
  %5346 = add i64 %5318, -40
  %5347 = add i64 %5320, 12
  store i64 %5347, i64* %3, align 8
  %5348 = inttoptr i64 %5346 to i64*
  store i64 %5324, i64* %5348, align 8
  %5349 = load i64, i64* %RBP.i, align 8
  %5350 = add i64 %5349, -24
  %5351 = load i64, i64* %3, align 8
  %5352 = add i64 %5351, 4
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5350 to i64*
  %5354 = load i64, i64* %5353, align 8
  store i64 %5354, i64* %RAX.i2530, align 8
  %5355 = add i64 %5351, 7
  store i64 %5355, i64* %3, align 8
  %5356 = inttoptr i64 %5354 to i64*
  %5357 = load i64, i64* %5356, align 8
  store i64 %5357, i64* %RAX.i2530, align 8
  %5358 = add i64 %5349, -48
  %5359 = add i64 %5351, 11
  store i64 %5359, i64* %3, align 8
  %5360 = inttoptr i64 %5358 to i64*
  store i64 %5357, i64* %5360, align 8
  %5361 = load i64, i64* %RBP.i, align 8
  %5362 = add i64 %5361, -32
  %5363 = load i64, i64* %3, align 8
  %5364 = add i64 %5363, 4
  store i64 %5364, i64* %3, align 8
  %5365 = inttoptr i64 %5362 to i64*
  %5366 = load i64, i64* %5365, align 8
  store i64 %5366, i64* %RAX.i2530, align 8
  %5367 = add i64 %5363, 7
  store i64 %5367, i64* %3, align 8
  %5368 = inttoptr i64 %5366 to i64*
  %5369 = load i64, i64* %5368, align 8
  store i64 %5369, i64* %RAX.i2530, align 8
  %5370 = add i64 %5361, -56
  %5371 = add i64 %5363, 11
  store i64 %5371, i64* %3, align 8
  %5372 = inttoptr i64 %5370 to i64*
  store i64 %5369, i64* %5372, align 8
  %5373 = load i64, i64* %RBP.i, align 8
  %5374 = add i64 %5373, -40
  %5375 = load i64, i64* %3, align 8
  %5376 = add i64 %5375, 4
  store i64 %5376, i64* %3, align 8
  %5377 = inttoptr i64 %5374 to i64*
  %5378 = load i64, i64* %5377, align 8
  store i64 %5378, i64* %RAX.i2530, align 8
  %5379 = add i64 %5375, 7
  store i64 %5379, i64* %3, align 8
  %5380 = inttoptr i64 %5378 to i64*
  %5381 = load i64, i64* %5380, align 8
  store i64 %5381, i64* %RAX.i2530, align 8
  %5382 = add i64 %5373, -64
  %5383 = add i64 %5375, 11
  store i64 %5383, i64* %3, align 8
  %5384 = inttoptr i64 %5382 to i64*
  store i64 %5381, i64* %5384, align 8
  %5385 = load i64, i64* %RBP.i, align 8
  %5386 = add i64 %5385, -16
  %5387 = load i64, i64* %3, align 8
  %5388 = add i64 %5387, 7
  store i64 %5388, i64* %3, align 8
  %5389 = inttoptr i64 %5386 to i32*
  store i32 0, i32* %5389, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_45b7c5

block_.L_45b7c5:                                  ; preds = %block_45b7d1, %block_.L_45b751
  %5390 = phi i64 [ %5522, %block_45b7d1 ], [ %.pre130, %block_.L_45b751 ]
  %5391 = load i64, i64* %RBP.i, align 8
  %5392 = add i64 %5391, -16
  %5393 = add i64 %5390, 3
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = zext i32 %5395 to i64
  store i64 %5396, i64* %RAX.i2530, align 8
  %5397 = add i64 %5391, -12
  %5398 = add i64 %5390, 6
  store i64 %5398, i64* %3, align 8
  %5399 = inttoptr i64 %5397 to i32*
  %5400 = load i32, i32* %5399, align 4
  %5401 = sub i32 %5395, %5400
  %5402 = icmp ult i32 %5395, %5400
  %5403 = zext i1 %5402 to i8
  store i8 %5403, i8* %99, align 1
  %5404 = and i32 %5401, 255
  %5405 = tail call i32 @llvm.ctpop.i32(i32 %5404)
  %5406 = trunc i32 %5405 to i8
  %5407 = and i8 %5406, 1
  %5408 = xor i8 %5407, 1
  store i8 %5408, i8* %106, align 1
  %5409 = xor i32 %5400, %5395
  %5410 = xor i32 %5409, %5401
  %5411 = lshr i32 %5410, 4
  %5412 = trunc i32 %5411 to i8
  %5413 = and i8 %5412, 1
  store i8 %5413, i8* %111, align 1
  %5414 = icmp eq i32 %5401, 0
  %5415 = zext i1 %5414 to i8
  store i8 %5415, i8* %114, align 1
  %5416 = lshr i32 %5401, 31
  %5417 = trunc i32 %5416 to i8
  store i8 %5417, i8* %117, align 1
  %5418 = lshr i32 %5395, 31
  %5419 = lshr i32 %5400, 31
  %5420 = xor i32 %5419, %5418
  %5421 = xor i32 %5416, %5418
  %5422 = add nuw nsw i32 %5421, %5420
  %5423 = icmp eq i32 %5422, 2
  %5424 = zext i1 %5423 to i8
  store i8 %5424, i8* %123, align 1
  %5425 = icmp ne i8 %5417, 0
  %5426 = xor i1 %5425, %5423
  %.v154 = select i1 %5426, i64 12, i64 59
  %5427 = add i64 %5390, %.v154
  store i64 %5427, i64* %3, align 8
  br i1 %5426, label %block_45b7d1, label %block_.L_45b800

block_45b7d1:                                     ; preds = %block_.L_45b7c5
  %5428 = add i64 %5391, -56
  %5429 = add i64 %5427, 4
  store i64 %5429, i64* %3, align 8
  %5430 = inttoptr i64 %5428 to i64*
  %5431 = load i64, i64* %5430, align 8
  store i64 %5431, i64* %RAX.i2530, align 8
  %5432 = add i64 %5427, 8
  store i64 %5432, i64* %3, align 8
  %5433 = load i32, i32* %5394, align 4
  %5434 = sext i32 %5433 to i64
  store i64 %5434, i64* %RCX.i2527, align 8
  %5435 = shl nsw i64 %5434, 2
  %5436 = add i64 %5435, %5431
  %5437 = add i64 %5427, 11
  store i64 %5437, i64* %3, align 8
  %5438 = inttoptr i64 %5436 to i32*
  %5439 = load i32, i32* %5438, align 4
  %5440 = zext i32 %5439 to i64
  store i64 %5440, i64* %RDX.i2445, align 8
  %5441 = add i64 %5391, -64
  %5442 = add i64 %5427, 15
  store i64 %5442, i64* %3, align 8
  %5443 = inttoptr i64 %5441 to i64*
  %5444 = load i64, i64* %5443, align 8
  store i64 %5444, i64* %RAX.i2530, align 8
  %5445 = add i64 %5427, 19
  store i64 %5445, i64* %3, align 8
  %5446 = load i32, i32* %5394, align 4
  %5447 = sext i32 %5446 to i64
  store i64 %5447, i64* %RCX.i2527, align 8
  %5448 = shl nsw i64 %5447, 2
  %5449 = add i64 %5444, %5448
  %5450 = add i64 %5427, 22
  store i64 %5450, i64* %3, align 8
  %5451 = inttoptr i64 %5449 to i32*
  %5452 = load i32, i32* %5451, align 4
  %5453 = add i32 %5452, %5439
  %5454 = zext i32 %5453 to i64
  store i64 %5454, i64* %RDX.i2445, align 8
  %5455 = icmp ult i32 %5453, %5439
  %5456 = icmp ult i32 %5453, %5452
  %5457 = or i1 %5455, %5456
  %5458 = zext i1 %5457 to i8
  store i8 %5458, i8* %99, align 1
  %5459 = and i32 %5453, 255
  %5460 = tail call i32 @llvm.ctpop.i32(i32 %5459)
  %5461 = trunc i32 %5460 to i8
  %5462 = and i8 %5461, 1
  %5463 = xor i8 %5462, 1
  store i8 %5463, i8* %106, align 1
  %5464 = xor i32 %5452, %5439
  %5465 = xor i32 %5464, %5453
  %5466 = lshr i32 %5465, 4
  %5467 = trunc i32 %5466 to i8
  %5468 = and i8 %5467, 1
  store i8 %5468, i8* %111, align 1
  %5469 = icmp eq i32 %5453, 0
  %5470 = zext i1 %5469 to i8
  store i8 %5470, i8* %114, align 1
  %5471 = lshr i32 %5453, 31
  %5472 = trunc i32 %5471 to i8
  store i8 %5472, i8* %117, align 1
  %5473 = lshr i32 %5439, 31
  %5474 = lshr i32 %5452, 31
  %5475 = xor i32 %5471, %5473
  %5476 = xor i32 %5471, %5474
  %5477 = add nuw nsw i32 %5475, %5476
  %5478 = icmp eq i32 %5477, 2
  %5479 = zext i1 %5478 to i8
  store i8 %5479, i8* %123, align 1
  %5480 = add i64 %5391, -48
  %5481 = add i64 %5427, 26
  store i64 %5481, i64* %3, align 8
  %5482 = inttoptr i64 %5480 to i64*
  %5483 = load i64, i64* %5482, align 8
  store i64 %5483, i64* %RAX.i2530, align 8
  %5484 = add i64 %5427, 30
  store i64 %5484, i64* %3, align 8
  %5485 = load i32, i32* %5394, align 4
  %5486 = sext i32 %5485 to i64
  store i64 %5486, i64* %RCX.i2527, align 8
  %5487 = shl nsw i64 %5486, 2
  %5488 = add i64 %5487, %5483
  %5489 = add i64 %5427, 33
  store i64 %5489, i64* %3, align 8
  %5490 = inttoptr i64 %5488 to i32*
  store i32 %5453, i32* %5490, align 4
  %5491 = load i64, i64* %RBP.i, align 8
  %5492 = add i64 %5491, -16
  %5493 = load i64, i64* %3, align 8
  %5494 = add i64 %5493, 3
  store i64 %5494, i64* %3, align 8
  %5495 = inttoptr i64 %5492 to i32*
  %5496 = load i32, i32* %5495, align 4
  %5497 = add i32 %5496, 1
  %5498 = zext i32 %5497 to i64
  store i64 %5498, i64* %RAX.i2530, align 8
  %5499 = icmp eq i32 %5496, -1
  %5500 = icmp eq i32 %5497, 0
  %5501 = or i1 %5499, %5500
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %99, align 1
  %5503 = and i32 %5497, 255
  %5504 = tail call i32 @llvm.ctpop.i32(i32 %5503)
  %5505 = trunc i32 %5504 to i8
  %5506 = and i8 %5505, 1
  %5507 = xor i8 %5506, 1
  store i8 %5507, i8* %106, align 1
  %5508 = xor i32 %5497, %5496
  %5509 = lshr i32 %5508, 4
  %5510 = trunc i32 %5509 to i8
  %5511 = and i8 %5510, 1
  store i8 %5511, i8* %111, align 1
  %5512 = zext i1 %5500 to i8
  store i8 %5512, i8* %114, align 1
  %5513 = lshr i32 %5497, 31
  %5514 = trunc i32 %5513 to i8
  store i8 %5514, i8* %117, align 1
  %5515 = lshr i32 %5496, 31
  %5516 = xor i32 %5513, %5515
  %5517 = add nuw nsw i32 %5516, %5513
  %5518 = icmp eq i32 %5517, 2
  %5519 = zext i1 %5518 to i8
  store i8 %5519, i8* %123, align 1
  %5520 = add i64 %5493, 9
  store i64 %5520, i64* %3, align 8
  store i32 %5497, i32* %5495, align 4
  %5521 = load i64, i64* %3, align 8
  %5522 = add i64 %5521, -54
  store i64 %5522, i64* %3, align 8
  br label %block_.L_45b7c5

block_.L_45b800:                                  ; preds = %block_.L_45b7c5
  %5523 = add i64 %5391, -24
  %5524 = add i64 %5427, 4
  store i64 %5524, i64* %3, align 8
  %5525 = inttoptr i64 %5523 to i64*
  %5526 = load i64, i64* %5525, align 8
  %5527 = add i64 %5526, 16
  store i64 %5527, i64* %RAX.i2530, align 8
  %5528 = icmp ugt i64 %5526, -17
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %99, align 1
  %5530 = trunc i64 %5527 to i32
  %5531 = and i32 %5530, 255
  %5532 = tail call i32 @llvm.ctpop.i32(i32 %5531)
  %5533 = trunc i32 %5532 to i8
  %5534 = and i8 %5533, 1
  %5535 = xor i8 %5534, 1
  store i8 %5535, i8* %106, align 1
  %5536 = xor i64 %5526, 16
  %5537 = xor i64 %5536, %5527
  %5538 = lshr i64 %5537, 4
  %5539 = trunc i64 %5538 to i8
  %5540 = and i8 %5539, 1
  store i8 %5540, i8* %111, align 1
  %5541 = icmp eq i64 %5527, 0
  %5542 = zext i1 %5541 to i8
  store i8 %5542, i8* %114, align 1
  %5543 = lshr i64 %5527, 63
  %5544 = trunc i64 %5543 to i8
  store i8 %5544, i8* %117, align 1
  %5545 = lshr i64 %5526, 63
  %5546 = xor i64 %5543, %5545
  %5547 = add nuw nsw i64 %5546, %5543
  %5548 = icmp eq i64 %5547, 2
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %123, align 1
  %5550 = add i64 %5427, 12
  store i64 %5550, i64* %3, align 8
  store i64 %5527, i64* %5525, align 8
  %5551 = load i64, i64* %RBP.i, align 8
  %5552 = add i64 %5551, -32
  %5553 = load i64, i64* %3, align 8
  %5554 = add i64 %5553, 4
  store i64 %5554, i64* %3, align 8
  %5555 = inttoptr i64 %5552 to i64*
  %5556 = load i64, i64* %5555, align 8
  %5557 = add i64 %5556, 16
  store i64 %5557, i64* %RAX.i2530, align 8
  %5558 = icmp ugt i64 %5556, -17
  %5559 = zext i1 %5558 to i8
  store i8 %5559, i8* %99, align 1
  %5560 = trunc i64 %5557 to i32
  %5561 = and i32 %5560, 255
  %5562 = tail call i32 @llvm.ctpop.i32(i32 %5561)
  %5563 = trunc i32 %5562 to i8
  %5564 = and i8 %5563, 1
  %5565 = xor i8 %5564, 1
  store i8 %5565, i8* %106, align 1
  %5566 = xor i64 %5556, 16
  %5567 = xor i64 %5566, %5557
  %5568 = lshr i64 %5567, 4
  %5569 = trunc i64 %5568 to i8
  %5570 = and i8 %5569, 1
  store i8 %5570, i8* %111, align 1
  %5571 = icmp eq i64 %5557, 0
  %5572 = zext i1 %5571 to i8
  store i8 %5572, i8* %114, align 1
  %5573 = lshr i64 %5557, 63
  %5574 = trunc i64 %5573 to i8
  store i8 %5574, i8* %117, align 1
  %5575 = lshr i64 %5556, 63
  %5576 = xor i64 %5573, %5575
  %5577 = add nuw nsw i64 %5576, %5573
  %5578 = icmp eq i64 %5577, 2
  %5579 = zext i1 %5578 to i8
  store i8 %5579, i8* %123, align 1
  %5580 = add i64 %5553, 12
  store i64 %5580, i64* %3, align 8
  store i64 %5557, i64* %5555, align 8
  %5581 = load i64, i64* %RBP.i, align 8
  %5582 = add i64 %5581, -40
  %5583 = load i64, i64* %3, align 8
  %5584 = add i64 %5583, 4
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5582 to i64*
  %5586 = load i64, i64* %5585, align 8
  %5587 = add i64 %5586, 16
  store i64 %5587, i64* %RAX.i2530, align 8
  %5588 = icmp ugt i64 %5586, -17
  %5589 = zext i1 %5588 to i8
  store i8 %5589, i8* %99, align 1
  %5590 = trunc i64 %5587 to i32
  %5591 = and i32 %5590, 255
  %5592 = tail call i32 @llvm.ctpop.i32(i32 %5591)
  %5593 = trunc i32 %5592 to i8
  %5594 = and i8 %5593, 1
  %5595 = xor i8 %5594, 1
  store i8 %5595, i8* %106, align 1
  %5596 = xor i64 %5586, 16
  %5597 = xor i64 %5596, %5587
  %5598 = lshr i64 %5597, 4
  %5599 = trunc i64 %5598 to i8
  %5600 = and i8 %5599, 1
  store i8 %5600, i8* %111, align 1
  %5601 = icmp eq i64 %5587, 0
  %5602 = zext i1 %5601 to i8
  store i8 %5602, i8* %114, align 1
  %5603 = lshr i64 %5587, 63
  %5604 = trunc i64 %5603 to i8
  store i8 %5604, i8* %117, align 1
  %5605 = lshr i64 %5586, 63
  %5606 = xor i64 %5603, %5605
  %5607 = add nuw nsw i64 %5606, %5603
  %5608 = icmp eq i64 %5607, 2
  %5609 = zext i1 %5608 to i8
  store i8 %5609, i8* %123, align 1
  %5610 = add i64 %5583, 12
  store i64 %5610, i64* %3, align 8
  store i64 %5587, i64* %5585, align 8
  %5611 = load i64, i64* %RBP.i, align 8
  %5612 = add i64 %5611, -24
  %5613 = load i64, i64* %3, align 8
  %5614 = add i64 %5613, 4
  store i64 %5614, i64* %3, align 8
  %5615 = inttoptr i64 %5612 to i64*
  %5616 = load i64, i64* %5615, align 8
  store i64 %5616, i64* %RAX.i2530, align 8
  %5617 = add i64 %5613, 7
  store i64 %5617, i64* %3, align 8
  %5618 = inttoptr i64 %5616 to i64*
  %5619 = load i64, i64* %5618, align 8
  store i64 %5619, i64* %RAX.i2530, align 8
  %5620 = add i64 %5611, -48
  %5621 = add i64 %5613, 11
  store i64 %5621, i64* %3, align 8
  %5622 = inttoptr i64 %5620 to i64*
  store i64 %5619, i64* %5622, align 8
  %5623 = load i64, i64* %RBP.i, align 8
  %5624 = add i64 %5623, -32
  %5625 = load i64, i64* %3, align 8
  %5626 = add i64 %5625, 4
  store i64 %5626, i64* %3, align 8
  %5627 = inttoptr i64 %5624 to i64*
  %5628 = load i64, i64* %5627, align 8
  store i64 %5628, i64* %RAX.i2530, align 8
  %5629 = add i64 %5625, 7
  store i64 %5629, i64* %3, align 8
  %5630 = inttoptr i64 %5628 to i64*
  %5631 = load i64, i64* %5630, align 8
  store i64 %5631, i64* %RAX.i2530, align 8
  %5632 = add i64 %5623, -56
  %5633 = add i64 %5625, 11
  store i64 %5633, i64* %3, align 8
  %5634 = inttoptr i64 %5632 to i64*
  store i64 %5631, i64* %5634, align 8
  %5635 = load i64, i64* %RBP.i, align 8
  %5636 = add i64 %5635, -40
  %5637 = load i64, i64* %3, align 8
  %5638 = add i64 %5637, 4
  store i64 %5638, i64* %3, align 8
  %5639 = inttoptr i64 %5636 to i64*
  %5640 = load i64, i64* %5639, align 8
  store i64 %5640, i64* %RAX.i2530, align 8
  %5641 = add i64 %5637, 7
  store i64 %5641, i64* %3, align 8
  %5642 = inttoptr i64 %5640 to i64*
  %5643 = load i64, i64* %5642, align 8
  store i64 %5643, i64* %RAX.i2530, align 8
  %5644 = add i64 %5635, -64
  %5645 = add i64 %5637, 11
  store i64 %5645, i64* %3, align 8
  %5646 = inttoptr i64 %5644 to i64*
  store i64 %5643, i64* %5646, align 8
  %5647 = load i64, i64* %RBP.i, align 8
  %5648 = add i64 %5647, -16
  %5649 = load i64, i64* %3, align 8
  %5650 = add i64 %5649, 7
  store i64 %5650, i64* %3, align 8
  %5651 = inttoptr i64 %5648 to i32*
  store i32 0, i32* %5651, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_45b84c

block_.L_45b84c:                                  ; preds = %block_45b858, %block_.L_45b800
  %5652 = phi i64 [ %5784, %block_45b858 ], [ %.pre131, %block_.L_45b800 ]
  %5653 = load i64, i64* %RBP.i, align 8
  %5654 = add i64 %5653, -16
  %5655 = add i64 %5652, 3
  store i64 %5655, i64* %3, align 8
  %5656 = inttoptr i64 %5654 to i32*
  %5657 = load i32, i32* %5656, align 4
  %5658 = zext i32 %5657 to i64
  store i64 %5658, i64* %RAX.i2530, align 8
  %5659 = add i64 %5653, -12
  %5660 = add i64 %5652, 6
  store i64 %5660, i64* %3, align 8
  %5661 = inttoptr i64 %5659 to i32*
  %5662 = load i32, i32* %5661, align 4
  %5663 = sub i32 %5657, %5662
  %5664 = icmp ult i32 %5657, %5662
  %5665 = zext i1 %5664 to i8
  store i8 %5665, i8* %99, align 1
  %5666 = and i32 %5663, 255
  %5667 = tail call i32 @llvm.ctpop.i32(i32 %5666)
  %5668 = trunc i32 %5667 to i8
  %5669 = and i8 %5668, 1
  %5670 = xor i8 %5669, 1
  store i8 %5670, i8* %106, align 1
  %5671 = xor i32 %5662, %5657
  %5672 = xor i32 %5671, %5663
  %5673 = lshr i32 %5672, 4
  %5674 = trunc i32 %5673 to i8
  %5675 = and i8 %5674, 1
  store i8 %5675, i8* %111, align 1
  %5676 = icmp eq i32 %5663, 0
  %5677 = zext i1 %5676 to i8
  store i8 %5677, i8* %114, align 1
  %5678 = lshr i32 %5663, 31
  %5679 = trunc i32 %5678 to i8
  store i8 %5679, i8* %117, align 1
  %5680 = lshr i32 %5657, 31
  %5681 = lshr i32 %5662, 31
  %5682 = xor i32 %5681, %5680
  %5683 = xor i32 %5678, %5680
  %5684 = add nuw nsw i32 %5683, %5682
  %5685 = icmp eq i32 %5684, 2
  %5686 = zext i1 %5685 to i8
  store i8 %5686, i8* %123, align 1
  %5687 = icmp ne i8 %5679, 0
  %5688 = xor i1 %5687, %5685
  %.v155 = select i1 %5688, i64 12, i64 59
  %5689 = add i64 %5652, %.v155
  store i64 %5689, i64* %3, align 8
  br i1 %5688, label %block_45b858, label %block_.L_45b887

block_45b858:                                     ; preds = %block_.L_45b84c
  %5690 = add i64 %5653, -56
  %5691 = add i64 %5689, 4
  store i64 %5691, i64* %3, align 8
  %5692 = inttoptr i64 %5690 to i64*
  %5693 = load i64, i64* %5692, align 8
  store i64 %5693, i64* %RAX.i2530, align 8
  %5694 = add i64 %5689, 8
  store i64 %5694, i64* %3, align 8
  %5695 = load i32, i32* %5656, align 4
  %5696 = sext i32 %5695 to i64
  store i64 %5696, i64* %RCX.i2527, align 8
  %5697 = shl nsw i64 %5696, 2
  %5698 = add i64 %5697, %5693
  %5699 = add i64 %5689, 11
  store i64 %5699, i64* %3, align 8
  %5700 = inttoptr i64 %5698 to i32*
  %5701 = load i32, i32* %5700, align 4
  %5702 = zext i32 %5701 to i64
  store i64 %5702, i64* %RDX.i2445, align 8
  %5703 = add i64 %5653, -64
  %5704 = add i64 %5689, 15
  store i64 %5704, i64* %3, align 8
  %5705 = inttoptr i64 %5703 to i64*
  %5706 = load i64, i64* %5705, align 8
  store i64 %5706, i64* %RAX.i2530, align 8
  %5707 = add i64 %5689, 19
  store i64 %5707, i64* %3, align 8
  %5708 = load i32, i32* %5656, align 4
  %5709 = sext i32 %5708 to i64
  store i64 %5709, i64* %RCX.i2527, align 8
  %5710 = shl nsw i64 %5709, 2
  %5711 = add i64 %5706, %5710
  %5712 = add i64 %5689, 22
  store i64 %5712, i64* %3, align 8
  %5713 = inttoptr i64 %5711 to i32*
  %5714 = load i32, i32* %5713, align 4
  %5715 = add i32 %5714, %5701
  %5716 = zext i32 %5715 to i64
  store i64 %5716, i64* %RDX.i2445, align 8
  %5717 = icmp ult i32 %5715, %5701
  %5718 = icmp ult i32 %5715, %5714
  %5719 = or i1 %5717, %5718
  %5720 = zext i1 %5719 to i8
  store i8 %5720, i8* %99, align 1
  %5721 = and i32 %5715, 255
  %5722 = tail call i32 @llvm.ctpop.i32(i32 %5721)
  %5723 = trunc i32 %5722 to i8
  %5724 = and i8 %5723, 1
  %5725 = xor i8 %5724, 1
  store i8 %5725, i8* %106, align 1
  %5726 = xor i32 %5714, %5701
  %5727 = xor i32 %5726, %5715
  %5728 = lshr i32 %5727, 4
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  store i8 %5730, i8* %111, align 1
  %5731 = icmp eq i32 %5715, 0
  %5732 = zext i1 %5731 to i8
  store i8 %5732, i8* %114, align 1
  %5733 = lshr i32 %5715, 31
  %5734 = trunc i32 %5733 to i8
  store i8 %5734, i8* %117, align 1
  %5735 = lshr i32 %5701, 31
  %5736 = lshr i32 %5714, 31
  %5737 = xor i32 %5733, %5735
  %5738 = xor i32 %5733, %5736
  %5739 = add nuw nsw i32 %5737, %5738
  %5740 = icmp eq i32 %5739, 2
  %5741 = zext i1 %5740 to i8
  store i8 %5741, i8* %123, align 1
  %5742 = add i64 %5653, -48
  %5743 = add i64 %5689, 26
  store i64 %5743, i64* %3, align 8
  %5744 = inttoptr i64 %5742 to i64*
  %5745 = load i64, i64* %5744, align 8
  store i64 %5745, i64* %RAX.i2530, align 8
  %5746 = add i64 %5689, 30
  store i64 %5746, i64* %3, align 8
  %5747 = load i32, i32* %5656, align 4
  %5748 = sext i32 %5747 to i64
  store i64 %5748, i64* %RCX.i2527, align 8
  %5749 = shl nsw i64 %5748, 2
  %5750 = add i64 %5749, %5745
  %5751 = add i64 %5689, 33
  store i64 %5751, i64* %3, align 8
  %5752 = inttoptr i64 %5750 to i32*
  store i32 %5715, i32* %5752, align 4
  %5753 = load i64, i64* %RBP.i, align 8
  %5754 = add i64 %5753, -16
  %5755 = load i64, i64* %3, align 8
  %5756 = add i64 %5755, 3
  store i64 %5756, i64* %3, align 8
  %5757 = inttoptr i64 %5754 to i32*
  %5758 = load i32, i32* %5757, align 4
  %5759 = add i32 %5758, 1
  %5760 = zext i32 %5759 to i64
  store i64 %5760, i64* %RAX.i2530, align 8
  %5761 = icmp eq i32 %5758, -1
  %5762 = icmp eq i32 %5759, 0
  %5763 = or i1 %5761, %5762
  %5764 = zext i1 %5763 to i8
  store i8 %5764, i8* %99, align 1
  %5765 = and i32 %5759, 255
  %5766 = tail call i32 @llvm.ctpop.i32(i32 %5765)
  %5767 = trunc i32 %5766 to i8
  %5768 = and i8 %5767, 1
  %5769 = xor i8 %5768, 1
  store i8 %5769, i8* %106, align 1
  %5770 = xor i32 %5759, %5758
  %5771 = lshr i32 %5770, 4
  %5772 = trunc i32 %5771 to i8
  %5773 = and i8 %5772, 1
  store i8 %5773, i8* %111, align 1
  %5774 = zext i1 %5762 to i8
  store i8 %5774, i8* %114, align 1
  %5775 = lshr i32 %5759, 31
  %5776 = trunc i32 %5775 to i8
  store i8 %5776, i8* %117, align 1
  %5777 = lshr i32 %5758, 31
  %5778 = xor i32 %5775, %5777
  %5779 = add nuw nsw i32 %5778, %5775
  %5780 = icmp eq i32 %5779, 2
  %5781 = zext i1 %5780 to i8
  store i8 %5781, i8* %123, align 1
  %5782 = add i64 %5755, 9
  store i64 %5782, i64* %3, align 8
  store i32 %5759, i32* %5757, align 4
  %5783 = load i64, i64* %3, align 8
  %5784 = add i64 %5783, -54
  store i64 %5784, i64* %3, align 8
  br label %block_.L_45b84c

block_.L_45b887:                                  ; preds = %block_.L_45b84c
  %5785 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %5785, i64* %RAX.i2530, align 8
  %5786 = add i64 %5653, -4
  %5787 = add i64 %5689, 12
  store i64 %5787, i64* %3, align 8
  %5788 = inttoptr i64 %5786 to i32*
  %5789 = load i32, i32* %5788, align 4
  %5790 = sext i32 %5789 to i64
  store i64 %5790, i64* %RCX.i2527, align 8
  %5791 = shl nsw i64 %5790, 3
  %5792 = add i64 %5791, %5785
  %5793 = add i64 %5689, 16
  store i64 %5793, i64* %3, align 8
  %5794 = inttoptr i64 %5792 to i64*
  %5795 = load i64, i64* %5794, align 8
  store i64 %5795, i64* %RAX.i2530, align 8
  %5796 = add i64 %5653, -8
  %5797 = add i64 %5689, 20
  store i64 %5797, i64* %3, align 8
  %5798 = inttoptr i64 %5796 to i32*
  %5799 = load i32, i32* %5798, align 4
  %5800 = sext i32 %5799 to i64
  store i64 %5800, i64* %RCX.i2527, align 8
  %5801 = shl nsw i64 %5800, 3
  %5802 = add i64 %5801, %5795
  %5803 = add i64 %5689, 24
  store i64 %5803, i64* %3, align 8
  %5804 = inttoptr i64 %5802 to i64*
  %5805 = load i64, i64* %5804, align 8
  store i64 %5805, i64* %RAX.i2530, align 8
  %5806 = add i64 %5805, 16
  %5807 = add i64 %5689, 28
  store i64 %5807, i64* %3, align 8
  %5808 = inttoptr i64 %5806 to i64*
  %5809 = load i64, i64* %5808, align 8
  %5810 = add i64 %5653, -24
  %5811 = add i64 %5689, 32
  store i64 %5811, i64* %3, align 8
  %5812 = inttoptr i64 %5810 to i64*
  store i64 %5809, i64* %5812, align 8
  %5813 = load i64, i64* %3, align 8
  %5814 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %5814, i64* %RAX.i2530, align 8
  %5815 = load i64, i64* %RBP.i, align 8
  %5816 = add i64 %5815, -4
  %5817 = add i64 %5813, 12
  store i64 %5817, i64* %3, align 8
  %5818 = inttoptr i64 %5816 to i32*
  %5819 = load i32, i32* %5818, align 4
  %5820 = sext i32 %5819 to i64
  store i64 %5820, i64* %RCX.i2527, align 8
  %5821 = shl nsw i64 %5820, 3
  %5822 = add i64 %5821, %5814
  %5823 = add i64 %5813, 16
  store i64 %5823, i64* %3, align 8
  %5824 = inttoptr i64 %5822 to i64*
  %5825 = load i64, i64* %5824, align 8
  store i64 %5825, i64* %RAX.i2530, align 8
  %5826 = add i64 %5815, -8
  %5827 = add i64 %5813, 20
  store i64 %5827, i64* %3, align 8
  %5828 = inttoptr i64 %5826 to i32*
  %5829 = load i32, i32* %5828, align 4
  %5830 = sext i32 %5829 to i64
  store i64 %5830, i64* %RCX.i2527, align 8
  %5831 = shl nsw i64 %5830, 3
  %5832 = add i64 %5831, %5825
  %5833 = add i64 %5813, 24
  store i64 %5833, i64* %3, align 8
  %5834 = inttoptr i64 %5832 to i64*
  %5835 = load i64, i64* %5834, align 8
  store i64 %5835, i64* %RAX.i2530, align 8
  %5836 = add i64 %5835, 32
  %5837 = add i64 %5813, 28
  store i64 %5837, i64* %3, align 8
  %5838 = inttoptr i64 %5836 to i64*
  %5839 = load i64, i64* %5838, align 8
  store i64 %5839, i64* %RAX.i2530, align 8
  %5840 = add i64 %5815, -32
  %5841 = add i64 %5813, 32
  store i64 %5841, i64* %3, align 8
  %5842 = inttoptr i64 %5840 to i64*
  store i64 %5839, i64* %5842, align 8
  %5843 = load i64, i64* %RBP.i, align 8
  %5844 = add i64 %5843, -32
  %5845 = load i64, i64* %3, align 8
  %5846 = add i64 %5845, 4
  store i64 %5846, i64* %3, align 8
  %5847 = inttoptr i64 %5844 to i64*
  %5848 = load i64, i64* %5847, align 8
  %5849 = add i64 %5848, 16
  store i64 %5849, i64* %RAX.i2530, align 8
  %5850 = icmp ugt i64 %5848, -17
  %5851 = zext i1 %5850 to i8
  store i8 %5851, i8* %99, align 1
  %5852 = trunc i64 %5849 to i32
  %5853 = and i32 %5852, 255
  %5854 = tail call i32 @llvm.ctpop.i32(i32 %5853)
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = xor i8 %5856, 1
  store i8 %5857, i8* %106, align 1
  %5858 = xor i64 %5848, 16
  %5859 = xor i64 %5858, %5849
  %5860 = lshr i64 %5859, 4
  %5861 = trunc i64 %5860 to i8
  %5862 = and i8 %5861, 1
  store i8 %5862, i8* %111, align 1
  %5863 = icmp eq i64 %5849, 0
  %5864 = zext i1 %5863 to i8
  store i8 %5864, i8* %114, align 1
  %5865 = lshr i64 %5849, 63
  %5866 = trunc i64 %5865 to i8
  store i8 %5866, i8* %117, align 1
  %5867 = lshr i64 %5848, 63
  %5868 = xor i64 %5865, %5867
  %5869 = add nuw nsw i64 %5868, %5865
  %5870 = icmp eq i64 %5869, 2
  %5871 = zext i1 %5870 to i8
  store i8 %5871, i8* %123, align 1
  %5872 = add i64 %5843, -40
  %5873 = add i64 %5845, 12
  store i64 %5873, i64* %3, align 8
  %5874 = inttoptr i64 %5872 to i64*
  store i64 %5849, i64* %5874, align 8
  %5875 = load i64, i64* %RBP.i, align 8
  %5876 = add i64 %5875, -24
  %5877 = load i64, i64* %3, align 8
  %5878 = add i64 %5877, 4
  store i64 %5878, i64* %3, align 8
  %5879 = inttoptr i64 %5876 to i64*
  %5880 = load i64, i64* %5879, align 8
  store i64 %5880, i64* %RAX.i2530, align 8
  %5881 = add i64 %5877, 7
  store i64 %5881, i64* %3, align 8
  %5882 = inttoptr i64 %5880 to i64*
  %5883 = load i64, i64* %5882, align 8
  store i64 %5883, i64* %RAX.i2530, align 8
  %5884 = add i64 %5875, -48
  %5885 = add i64 %5877, 11
  store i64 %5885, i64* %3, align 8
  %5886 = inttoptr i64 %5884 to i64*
  store i64 %5883, i64* %5886, align 8
  %5887 = load i64, i64* %RBP.i, align 8
  %5888 = add i64 %5887, -32
  %5889 = load i64, i64* %3, align 8
  %5890 = add i64 %5889, 4
  store i64 %5890, i64* %3, align 8
  %5891 = inttoptr i64 %5888 to i64*
  %5892 = load i64, i64* %5891, align 8
  store i64 %5892, i64* %RAX.i2530, align 8
  %5893 = add i64 %5889, 7
  store i64 %5893, i64* %3, align 8
  %5894 = inttoptr i64 %5892 to i64*
  %5895 = load i64, i64* %5894, align 8
  store i64 %5895, i64* %RAX.i2530, align 8
  %5896 = add i64 %5887, -56
  %5897 = add i64 %5889, 11
  store i64 %5897, i64* %3, align 8
  %5898 = inttoptr i64 %5896 to i64*
  store i64 %5895, i64* %5898, align 8
  %5899 = load i64, i64* %RBP.i, align 8
  %5900 = add i64 %5899, -40
  %5901 = load i64, i64* %3, align 8
  %5902 = add i64 %5901, 4
  store i64 %5902, i64* %3, align 8
  %5903 = inttoptr i64 %5900 to i64*
  %5904 = load i64, i64* %5903, align 8
  store i64 %5904, i64* %RAX.i2530, align 8
  %5905 = add i64 %5901, 7
  store i64 %5905, i64* %3, align 8
  %5906 = inttoptr i64 %5904 to i64*
  %5907 = load i64, i64* %5906, align 8
  store i64 %5907, i64* %RAX.i2530, align 8
  %5908 = add i64 %5899, -64
  %5909 = add i64 %5901, 11
  store i64 %5909, i64* %3, align 8
  %5910 = inttoptr i64 %5908 to i64*
  store i64 %5907, i64* %5910, align 8
  %5911 = load i64, i64* %RBP.i, align 8
  %5912 = add i64 %5911, -16
  %5913 = load i64, i64* %3, align 8
  %5914 = add i64 %5913, 7
  store i64 %5914, i64* %3, align 8
  %5915 = inttoptr i64 %5912 to i32*
  store i32 0, i32* %5915, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_45b8fb

block_.L_45b8fb:                                  ; preds = %block_45b907, %block_.L_45b887
  %5916 = phi i64 [ %6048, %block_45b907 ], [ %.pre132, %block_.L_45b887 ]
  %5917 = load i64, i64* %RBP.i, align 8
  %5918 = add i64 %5917, -16
  %5919 = add i64 %5916, 3
  store i64 %5919, i64* %3, align 8
  %5920 = inttoptr i64 %5918 to i32*
  %5921 = load i32, i32* %5920, align 4
  %5922 = zext i32 %5921 to i64
  store i64 %5922, i64* %RAX.i2530, align 8
  %5923 = add i64 %5917, -12
  %5924 = add i64 %5916, 6
  store i64 %5924, i64* %3, align 8
  %5925 = inttoptr i64 %5923 to i32*
  %5926 = load i32, i32* %5925, align 4
  %5927 = sub i32 %5921, %5926
  %5928 = icmp ult i32 %5921, %5926
  %5929 = zext i1 %5928 to i8
  store i8 %5929, i8* %99, align 1
  %5930 = and i32 %5927, 255
  %5931 = tail call i32 @llvm.ctpop.i32(i32 %5930)
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = xor i8 %5933, 1
  store i8 %5934, i8* %106, align 1
  %5935 = xor i32 %5926, %5921
  %5936 = xor i32 %5935, %5927
  %5937 = lshr i32 %5936, 4
  %5938 = trunc i32 %5937 to i8
  %5939 = and i8 %5938, 1
  store i8 %5939, i8* %111, align 1
  %5940 = icmp eq i32 %5927, 0
  %5941 = zext i1 %5940 to i8
  store i8 %5941, i8* %114, align 1
  %5942 = lshr i32 %5927, 31
  %5943 = trunc i32 %5942 to i8
  store i8 %5943, i8* %117, align 1
  %5944 = lshr i32 %5921, 31
  %5945 = lshr i32 %5926, 31
  %5946 = xor i32 %5945, %5944
  %5947 = xor i32 %5942, %5944
  %5948 = add nuw nsw i32 %5947, %5946
  %5949 = icmp eq i32 %5948, 2
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %123, align 1
  %5951 = icmp ne i8 %5943, 0
  %5952 = xor i1 %5951, %5949
  %.v156 = select i1 %5952, i64 12, i64 59
  %5953 = add i64 %5916, %.v156
  store i64 %5953, i64* %3, align 8
  br i1 %5952, label %block_45b907, label %block_.L_45b936

block_45b907:                                     ; preds = %block_.L_45b8fb
  %5954 = add i64 %5917, -56
  %5955 = add i64 %5953, 4
  store i64 %5955, i64* %3, align 8
  %5956 = inttoptr i64 %5954 to i64*
  %5957 = load i64, i64* %5956, align 8
  store i64 %5957, i64* %RAX.i2530, align 8
  %5958 = add i64 %5953, 8
  store i64 %5958, i64* %3, align 8
  %5959 = load i32, i32* %5920, align 4
  %5960 = sext i32 %5959 to i64
  store i64 %5960, i64* %RCX.i2527, align 8
  %5961 = shl nsw i64 %5960, 2
  %5962 = add i64 %5961, %5957
  %5963 = add i64 %5953, 11
  store i64 %5963, i64* %3, align 8
  %5964 = inttoptr i64 %5962 to i32*
  %5965 = load i32, i32* %5964, align 4
  %5966 = zext i32 %5965 to i64
  store i64 %5966, i64* %RDX.i2445, align 8
  %5967 = add i64 %5917, -64
  %5968 = add i64 %5953, 15
  store i64 %5968, i64* %3, align 8
  %5969 = inttoptr i64 %5967 to i64*
  %5970 = load i64, i64* %5969, align 8
  store i64 %5970, i64* %RAX.i2530, align 8
  %5971 = add i64 %5953, 19
  store i64 %5971, i64* %3, align 8
  %5972 = load i32, i32* %5920, align 4
  %5973 = sext i32 %5972 to i64
  store i64 %5973, i64* %RCX.i2527, align 8
  %5974 = shl nsw i64 %5973, 2
  %5975 = add i64 %5970, %5974
  %5976 = add i64 %5953, 22
  store i64 %5976, i64* %3, align 8
  %5977 = inttoptr i64 %5975 to i32*
  %5978 = load i32, i32* %5977, align 4
  %5979 = add i32 %5978, %5965
  %5980 = zext i32 %5979 to i64
  store i64 %5980, i64* %RDX.i2445, align 8
  %5981 = icmp ult i32 %5979, %5965
  %5982 = icmp ult i32 %5979, %5978
  %5983 = or i1 %5981, %5982
  %5984 = zext i1 %5983 to i8
  store i8 %5984, i8* %99, align 1
  %5985 = and i32 %5979, 255
  %5986 = tail call i32 @llvm.ctpop.i32(i32 %5985)
  %5987 = trunc i32 %5986 to i8
  %5988 = and i8 %5987, 1
  %5989 = xor i8 %5988, 1
  store i8 %5989, i8* %106, align 1
  %5990 = xor i32 %5978, %5965
  %5991 = xor i32 %5990, %5979
  %5992 = lshr i32 %5991, 4
  %5993 = trunc i32 %5992 to i8
  %5994 = and i8 %5993, 1
  store i8 %5994, i8* %111, align 1
  %5995 = icmp eq i32 %5979, 0
  %5996 = zext i1 %5995 to i8
  store i8 %5996, i8* %114, align 1
  %5997 = lshr i32 %5979, 31
  %5998 = trunc i32 %5997 to i8
  store i8 %5998, i8* %117, align 1
  %5999 = lshr i32 %5965, 31
  %6000 = lshr i32 %5978, 31
  %6001 = xor i32 %5997, %5999
  %6002 = xor i32 %5997, %6000
  %6003 = add nuw nsw i32 %6001, %6002
  %6004 = icmp eq i32 %6003, 2
  %6005 = zext i1 %6004 to i8
  store i8 %6005, i8* %123, align 1
  %6006 = add i64 %5917, -48
  %6007 = add i64 %5953, 26
  store i64 %6007, i64* %3, align 8
  %6008 = inttoptr i64 %6006 to i64*
  %6009 = load i64, i64* %6008, align 8
  store i64 %6009, i64* %RAX.i2530, align 8
  %6010 = add i64 %5953, 30
  store i64 %6010, i64* %3, align 8
  %6011 = load i32, i32* %5920, align 4
  %6012 = sext i32 %6011 to i64
  store i64 %6012, i64* %RCX.i2527, align 8
  %6013 = shl nsw i64 %6012, 2
  %6014 = add i64 %6013, %6009
  %6015 = add i64 %5953, 33
  store i64 %6015, i64* %3, align 8
  %6016 = inttoptr i64 %6014 to i32*
  store i32 %5979, i32* %6016, align 4
  %6017 = load i64, i64* %RBP.i, align 8
  %6018 = add i64 %6017, -16
  %6019 = load i64, i64* %3, align 8
  %6020 = add i64 %6019, 3
  store i64 %6020, i64* %3, align 8
  %6021 = inttoptr i64 %6018 to i32*
  %6022 = load i32, i32* %6021, align 4
  %6023 = add i32 %6022, 1
  %6024 = zext i32 %6023 to i64
  store i64 %6024, i64* %RAX.i2530, align 8
  %6025 = icmp eq i32 %6022, -1
  %6026 = icmp eq i32 %6023, 0
  %6027 = or i1 %6025, %6026
  %6028 = zext i1 %6027 to i8
  store i8 %6028, i8* %99, align 1
  %6029 = and i32 %6023, 255
  %6030 = tail call i32 @llvm.ctpop.i32(i32 %6029)
  %6031 = trunc i32 %6030 to i8
  %6032 = and i8 %6031, 1
  %6033 = xor i8 %6032, 1
  store i8 %6033, i8* %106, align 1
  %6034 = xor i32 %6023, %6022
  %6035 = lshr i32 %6034, 4
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  store i8 %6037, i8* %111, align 1
  %6038 = zext i1 %6026 to i8
  store i8 %6038, i8* %114, align 1
  %6039 = lshr i32 %6023, 31
  %6040 = trunc i32 %6039 to i8
  store i8 %6040, i8* %117, align 1
  %6041 = lshr i32 %6022, 31
  %6042 = xor i32 %6039, %6041
  %6043 = add nuw nsw i32 %6042, %6039
  %6044 = icmp eq i32 %6043, 2
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %123, align 1
  %6046 = add i64 %6019, 9
  store i64 %6046, i64* %3, align 8
  store i32 %6023, i32* %6021, align 4
  %6047 = load i64, i64* %3, align 8
  %6048 = add i64 %6047, -54
  store i64 %6048, i64* %3, align 8
  br label %block_.L_45b8fb

block_.L_45b936:                                  ; preds = %block_.L_45b8fb
  %6049 = add i64 %5917, -24
  %6050 = add i64 %5953, 4
  store i64 %6050, i64* %3, align 8
  %6051 = inttoptr i64 %6049 to i64*
  %6052 = load i64, i64* %6051, align 8
  %6053 = add i64 %6052, 64
  store i64 %6053, i64* %RAX.i2530, align 8
  %6054 = icmp ugt i64 %6052, -65
  %6055 = zext i1 %6054 to i8
  store i8 %6055, i8* %99, align 1
  %6056 = trunc i64 %6053 to i32
  %6057 = and i32 %6056, 255
  %6058 = tail call i32 @llvm.ctpop.i32(i32 %6057)
  %6059 = trunc i32 %6058 to i8
  %6060 = and i8 %6059, 1
  %6061 = xor i8 %6060, 1
  store i8 %6061, i8* %106, align 1
  %6062 = xor i64 %6053, %6052
  %6063 = lshr i64 %6062, 4
  %6064 = trunc i64 %6063 to i8
  %6065 = and i8 %6064, 1
  store i8 %6065, i8* %111, align 1
  %6066 = icmp eq i64 %6053, 0
  %6067 = zext i1 %6066 to i8
  store i8 %6067, i8* %114, align 1
  %6068 = lshr i64 %6053, 63
  %6069 = trunc i64 %6068 to i8
  store i8 %6069, i8* %117, align 1
  %6070 = lshr i64 %6052, 63
  %6071 = xor i64 %6068, %6070
  %6072 = add nuw nsw i64 %6071, %6068
  %6073 = icmp eq i64 %6072, 2
  %6074 = zext i1 %6073 to i8
  store i8 %6074, i8* %123, align 1
  %6075 = add i64 %5953, 12
  store i64 %6075, i64* %3, align 8
  store i64 %6053, i64* %6051, align 8
  %6076 = load i64, i64* %RBP.i, align 8
  %6077 = add i64 %6076, -32
  %6078 = load i64, i64* %3, align 8
  %6079 = add i64 %6078, 4
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6077 to i64*
  %6081 = load i64, i64* %6080, align 8
  %6082 = add i64 %6081, 64
  store i64 %6082, i64* %RAX.i2530, align 8
  %6083 = icmp ugt i64 %6081, -65
  %6084 = zext i1 %6083 to i8
  store i8 %6084, i8* %99, align 1
  %6085 = trunc i64 %6082 to i32
  %6086 = and i32 %6085, 255
  %6087 = tail call i32 @llvm.ctpop.i32(i32 %6086)
  %6088 = trunc i32 %6087 to i8
  %6089 = and i8 %6088, 1
  %6090 = xor i8 %6089, 1
  store i8 %6090, i8* %106, align 1
  %6091 = xor i64 %6082, %6081
  %6092 = lshr i64 %6091, 4
  %6093 = trunc i64 %6092 to i8
  %6094 = and i8 %6093, 1
  store i8 %6094, i8* %111, align 1
  %6095 = icmp eq i64 %6082, 0
  %6096 = zext i1 %6095 to i8
  store i8 %6096, i8* %114, align 1
  %6097 = lshr i64 %6082, 63
  %6098 = trunc i64 %6097 to i8
  store i8 %6098, i8* %117, align 1
  %6099 = lshr i64 %6081, 63
  %6100 = xor i64 %6097, %6099
  %6101 = add nuw nsw i64 %6100, %6097
  %6102 = icmp eq i64 %6101, 2
  %6103 = zext i1 %6102 to i8
  store i8 %6103, i8* %123, align 1
  %6104 = add i64 %6078, 12
  store i64 %6104, i64* %3, align 8
  store i64 %6082, i64* %6080, align 8
  %6105 = load i64, i64* %RBP.i, align 8
  %6106 = add i64 %6105, -40
  %6107 = load i64, i64* %3, align 8
  %6108 = add i64 %6107, 4
  store i64 %6108, i64* %3, align 8
  %6109 = inttoptr i64 %6106 to i64*
  %6110 = load i64, i64* %6109, align 8
  %6111 = add i64 %6110, 64
  store i64 %6111, i64* %RAX.i2530, align 8
  %6112 = icmp ugt i64 %6110, -65
  %6113 = zext i1 %6112 to i8
  store i8 %6113, i8* %99, align 1
  %6114 = trunc i64 %6111 to i32
  %6115 = and i32 %6114, 255
  %6116 = tail call i32 @llvm.ctpop.i32(i32 %6115)
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  %6119 = xor i8 %6118, 1
  store i8 %6119, i8* %106, align 1
  %6120 = xor i64 %6111, %6110
  %6121 = lshr i64 %6120, 4
  %6122 = trunc i64 %6121 to i8
  %6123 = and i8 %6122, 1
  store i8 %6123, i8* %111, align 1
  %6124 = icmp eq i64 %6111, 0
  %6125 = zext i1 %6124 to i8
  store i8 %6125, i8* %114, align 1
  %6126 = lshr i64 %6111, 63
  %6127 = trunc i64 %6126 to i8
  store i8 %6127, i8* %117, align 1
  %6128 = lshr i64 %6110, 63
  %6129 = xor i64 %6126, %6128
  %6130 = add nuw nsw i64 %6129, %6126
  %6131 = icmp eq i64 %6130, 2
  %6132 = zext i1 %6131 to i8
  store i8 %6132, i8* %123, align 1
  %6133 = add i64 %6107, 12
  store i64 %6133, i64* %3, align 8
  store i64 %6111, i64* %6109, align 8
  %6134 = load i64, i64* %RBP.i, align 8
  %6135 = add i64 %6134, -24
  %6136 = load i64, i64* %3, align 8
  %6137 = add i64 %6136, 4
  store i64 %6137, i64* %3, align 8
  %6138 = inttoptr i64 %6135 to i64*
  %6139 = load i64, i64* %6138, align 8
  store i64 %6139, i64* %RAX.i2530, align 8
  %6140 = add i64 %6136, 7
  store i64 %6140, i64* %3, align 8
  %6141 = inttoptr i64 %6139 to i64*
  %6142 = load i64, i64* %6141, align 8
  store i64 %6142, i64* %RAX.i2530, align 8
  %6143 = add i64 %6134, -48
  %6144 = add i64 %6136, 11
  store i64 %6144, i64* %3, align 8
  %6145 = inttoptr i64 %6143 to i64*
  store i64 %6142, i64* %6145, align 8
  %6146 = load i64, i64* %RBP.i, align 8
  %6147 = add i64 %6146, -32
  %6148 = load i64, i64* %3, align 8
  %6149 = add i64 %6148, 4
  store i64 %6149, i64* %3, align 8
  %6150 = inttoptr i64 %6147 to i64*
  %6151 = load i64, i64* %6150, align 8
  store i64 %6151, i64* %RAX.i2530, align 8
  %6152 = add i64 %6148, 7
  store i64 %6152, i64* %3, align 8
  %6153 = inttoptr i64 %6151 to i64*
  %6154 = load i64, i64* %6153, align 8
  store i64 %6154, i64* %RAX.i2530, align 8
  %6155 = add i64 %6146, -56
  %6156 = add i64 %6148, 11
  store i64 %6156, i64* %3, align 8
  %6157 = inttoptr i64 %6155 to i64*
  store i64 %6154, i64* %6157, align 8
  %6158 = load i64, i64* %RBP.i, align 8
  %6159 = add i64 %6158, -40
  %6160 = load i64, i64* %3, align 8
  %6161 = add i64 %6160, 4
  store i64 %6161, i64* %3, align 8
  %6162 = inttoptr i64 %6159 to i64*
  %6163 = load i64, i64* %6162, align 8
  store i64 %6163, i64* %RAX.i2530, align 8
  %6164 = add i64 %6160, 7
  store i64 %6164, i64* %3, align 8
  %6165 = inttoptr i64 %6163 to i64*
  %6166 = load i64, i64* %6165, align 8
  store i64 %6166, i64* %RAX.i2530, align 8
  %6167 = add i64 %6158, -64
  %6168 = add i64 %6160, 11
  store i64 %6168, i64* %3, align 8
  %6169 = inttoptr i64 %6167 to i64*
  store i64 %6166, i64* %6169, align 8
  %6170 = load i64, i64* %RBP.i, align 8
  %6171 = add i64 %6170, -16
  %6172 = load i64, i64* %3, align 8
  %6173 = add i64 %6172, 7
  store i64 %6173, i64* %3, align 8
  %6174 = inttoptr i64 %6171 to i32*
  store i32 0, i32* %6174, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_45b982

block_.L_45b982:                                  ; preds = %block_45b98e, %block_.L_45b936
  %6175 = phi i64 [ %6307, %block_45b98e ], [ %.pre133, %block_.L_45b936 ]
  %6176 = load i64, i64* %RBP.i, align 8
  %6177 = add i64 %6176, -16
  %6178 = add i64 %6175, 3
  store i64 %6178, i64* %3, align 8
  %6179 = inttoptr i64 %6177 to i32*
  %6180 = load i32, i32* %6179, align 4
  %6181 = zext i32 %6180 to i64
  store i64 %6181, i64* %RAX.i2530, align 8
  %6182 = add i64 %6176, -12
  %6183 = add i64 %6175, 6
  store i64 %6183, i64* %3, align 8
  %6184 = inttoptr i64 %6182 to i32*
  %6185 = load i32, i32* %6184, align 4
  %6186 = sub i32 %6180, %6185
  %6187 = icmp ult i32 %6180, %6185
  %6188 = zext i1 %6187 to i8
  store i8 %6188, i8* %99, align 1
  %6189 = and i32 %6186, 255
  %6190 = tail call i32 @llvm.ctpop.i32(i32 %6189)
  %6191 = trunc i32 %6190 to i8
  %6192 = and i8 %6191, 1
  %6193 = xor i8 %6192, 1
  store i8 %6193, i8* %106, align 1
  %6194 = xor i32 %6185, %6180
  %6195 = xor i32 %6194, %6186
  %6196 = lshr i32 %6195, 4
  %6197 = trunc i32 %6196 to i8
  %6198 = and i8 %6197, 1
  store i8 %6198, i8* %111, align 1
  %6199 = icmp eq i32 %6186, 0
  %6200 = zext i1 %6199 to i8
  store i8 %6200, i8* %114, align 1
  %6201 = lshr i32 %6186, 31
  %6202 = trunc i32 %6201 to i8
  store i8 %6202, i8* %117, align 1
  %6203 = lshr i32 %6180, 31
  %6204 = lshr i32 %6185, 31
  %6205 = xor i32 %6204, %6203
  %6206 = xor i32 %6201, %6203
  %6207 = add nuw nsw i32 %6206, %6205
  %6208 = icmp eq i32 %6207, 2
  %6209 = zext i1 %6208 to i8
  store i8 %6209, i8* %123, align 1
  %6210 = icmp ne i8 %6202, 0
  %6211 = xor i1 %6210, %6208
  %.v157 = select i1 %6211, i64 12, i64 59
  %6212 = add i64 %6175, %.v157
  store i64 %6212, i64* %3, align 8
  br i1 %6211, label %block_45b98e, label %block_.L_45b9bd

block_45b98e:                                     ; preds = %block_.L_45b982
  %6213 = add i64 %6176, -56
  %6214 = add i64 %6212, 4
  store i64 %6214, i64* %3, align 8
  %6215 = inttoptr i64 %6213 to i64*
  %6216 = load i64, i64* %6215, align 8
  store i64 %6216, i64* %RAX.i2530, align 8
  %6217 = add i64 %6212, 8
  store i64 %6217, i64* %3, align 8
  %6218 = load i32, i32* %6179, align 4
  %6219 = sext i32 %6218 to i64
  store i64 %6219, i64* %RCX.i2527, align 8
  %6220 = shl nsw i64 %6219, 2
  %6221 = add i64 %6220, %6216
  %6222 = add i64 %6212, 11
  store i64 %6222, i64* %3, align 8
  %6223 = inttoptr i64 %6221 to i32*
  %6224 = load i32, i32* %6223, align 4
  %6225 = zext i32 %6224 to i64
  store i64 %6225, i64* %RDX.i2445, align 8
  %6226 = add i64 %6176, -64
  %6227 = add i64 %6212, 15
  store i64 %6227, i64* %3, align 8
  %6228 = inttoptr i64 %6226 to i64*
  %6229 = load i64, i64* %6228, align 8
  store i64 %6229, i64* %RAX.i2530, align 8
  %6230 = add i64 %6212, 19
  store i64 %6230, i64* %3, align 8
  %6231 = load i32, i32* %6179, align 4
  %6232 = sext i32 %6231 to i64
  store i64 %6232, i64* %RCX.i2527, align 8
  %6233 = shl nsw i64 %6232, 2
  %6234 = add i64 %6229, %6233
  %6235 = add i64 %6212, 22
  store i64 %6235, i64* %3, align 8
  %6236 = inttoptr i64 %6234 to i32*
  %6237 = load i32, i32* %6236, align 4
  %6238 = add i32 %6237, %6224
  %6239 = zext i32 %6238 to i64
  store i64 %6239, i64* %RDX.i2445, align 8
  %6240 = icmp ult i32 %6238, %6224
  %6241 = icmp ult i32 %6238, %6237
  %6242 = or i1 %6240, %6241
  %6243 = zext i1 %6242 to i8
  store i8 %6243, i8* %99, align 1
  %6244 = and i32 %6238, 255
  %6245 = tail call i32 @llvm.ctpop.i32(i32 %6244)
  %6246 = trunc i32 %6245 to i8
  %6247 = and i8 %6246, 1
  %6248 = xor i8 %6247, 1
  store i8 %6248, i8* %106, align 1
  %6249 = xor i32 %6237, %6224
  %6250 = xor i32 %6249, %6238
  %6251 = lshr i32 %6250, 4
  %6252 = trunc i32 %6251 to i8
  %6253 = and i8 %6252, 1
  store i8 %6253, i8* %111, align 1
  %6254 = icmp eq i32 %6238, 0
  %6255 = zext i1 %6254 to i8
  store i8 %6255, i8* %114, align 1
  %6256 = lshr i32 %6238, 31
  %6257 = trunc i32 %6256 to i8
  store i8 %6257, i8* %117, align 1
  %6258 = lshr i32 %6224, 31
  %6259 = lshr i32 %6237, 31
  %6260 = xor i32 %6256, %6258
  %6261 = xor i32 %6256, %6259
  %6262 = add nuw nsw i32 %6260, %6261
  %6263 = icmp eq i32 %6262, 2
  %6264 = zext i1 %6263 to i8
  store i8 %6264, i8* %123, align 1
  %6265 = add i64 %6176, -48
  %6266 = add i64 %6212, 26
  store i64 %6266, i64* %3, align 8
  %6267 = inttoptr i64 %6265 to i64*
  %6268 = load i64, i64* %6267, align 8
  store i64 %6268, i64* %RAX.i2530, align 8
  %6269 = add i64 %6212, 30
  store i64 %6269, i64* %3, align 8
  %6270 = load i32, i32* %6179, align 4
  %6271 = sext i32 %6270 to i64
  store i64 %6271, i64* %RCX.i2527, align 8
  %6272 = shl nsw i64 %6271, 2
  %6273 = add i64 %6272, %6268
  %6274 = add i64 %6212, 33
  store i64 %6274, i64* %3, align 8
  %6275 = inttoptr i64 %6273 to i32*
  store i32 %6238, i32* %6275, align 4
  %6276 = load i64, i64* %RBP.i, align 8
  %6277 = add i64 %6276, -16
  %6278 = load i64, i64* %3, align 8
  %6279 = add i64 %6278, 3
  store i64 %6279, i64* %3, align 8
  %6280 = inttoptr i64 %6277 to i32*
  %6281 = load i32, i32* %6280, align 4
  %6282 = add i32 %6281, 1
  %6283 = zext i32 %6282 to i64
  store i64 %6283, i64* %RAX.i2530, align 8
  %6284 = icmp eq i32 %6281, -1
  %6285 = icmp eq i32 %6282, 0
  %6286 = or i1 %6284, %6285
  %6287 = zext i1 %6286 to i8
  store i8 %6287, i8* %99, align 1
  %6288 = and i32 %6282, 255
  %6289 = tail call i32 @llvm.ctpop.i32(i32 %6288)
  %6290 = trunc i32 %6289 to i8
  %6291 = and i8 %6290, 1
  %6292 = xor i8 %6291, 1
  store i8 %6292, i8* %106, align 1
  %6293 = xor i32 %6282, %6281
  %6294 = lshr i32 %6293, 4
  %6295 = trunc i32 %6294 to i8
  %6296 = and i8 %6295, 1
  store i8 %6296, i8* %111, align 1
  %6297 = zext i1 %6285 to i8
  store i8 %6297, i8* %114, align 1
  %6298 = lshr i32 %6282, 31
  %6299 = trunc i32 %6298 to i8
  store i8 %6299, i8* %117, align 1
  %6300 = lshr i32 %6281, 31
  %6301 = xor i32 %6298, %6300
  %6302 = add nuw nsw i32 %6301, %6298
  %6303 = icmp eq i32 %6302, 2
  %6304 = zext i1 %6303 to i8
  store i8 %6304, i8* %123, align 1
  %6305 = add i64 %6278, 9
  store i64 %6305, i64* %3, align 8
  store i32 %6282, i32* %6280, align 4
  %6306 = load i64, i64* %3, align 8
  %6307 = add i64 %6306, -54
  store i64 %6307, i64* %3, align 8
  br label %block_.L_45b982

block_.L_45b9bd:                                  ; preds = %block_.L_45b982
  %6308 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %6308, i64* %RAX.i2530, align 8
  %6309 = add i64 %6176, -4
  %6310 = add i64 %6212, 12
  store i64 %6310, i64* %3, align 8
  %6311 = inttoptr i64 %6309 to i32*
  %6312 = load i32, i32* %6311, align 4
  %6313 = sext i32 %6312 to i64
  store i64 %6313, i64* %RCX.i2527, align 8
  %6314 = shl nsw i64 %6313, 3
  %6315 = add i64 %6314, %6308
  %6316 = add i64 %6212, 16
  store i64 %6316, i64* %3, align 8
  %6317 = inttoptr i64 %6315 to i64*
  %6318 = load i64, i64* %6317, align 8
  store i64 %6318, i64* %RAX.i2530, align 8
  %6319 = add i64 %6176, -8
  %6320 = add i64 %6212, 20
  store i64 %6320, i64* %3, align 8
  %6321 = inttoptr i64 %6319 to i32*
  %6322 = load i32, i32* %6321, align 4
  %6323 = sext i32 %6322 to i64
  store i64 %6323, i64* %RCX.i2527, align 8
  %6324 = shl nsw i64 %6323, 3
  %6325 = add i64 %6324, %6318
  %6326 = add i64 %6212, 24
  store i64 %6326, i64* %3, align 8
  %6327 = inttoptr i64 %6325 to i64*
  %6328 = load i64, i64* %6327, align 8
  store i64 %6328, i64* %RAX.i2530, align 8
  %6329 = add i64 %6328, 8
  %6330 = add i64 %6212, 28
  store i64 %6330, i64* %3, align 8
  %6331 = inttoptr i64 %6329 to i64*
  %6332 = load i64, i64* %6331, align 8
  %6333 = add i64 %6176, -24
  %6334 = add i64 %6212, 32
  store i64 %6334, i64* %3, align 8
  %6335 = inttoptr i64 %6333 to i64*
  store i64 %6332, i64* %6335, align 8
  %6336 = load i64, i64* %3, align 8
  %6337 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %6337, i64* %RAX.i2530, align 8
  %6338 = load i64, i64* %RBP.i, align 8
  %6339 = add i64 %6338, -4
  %6340 = add i64 %6336, 12
  store i64 %6340, i64* %3, align 8
  %6341 = inttoptr i64 %6339 to i32*
  %6342 = load i32, i32* %6341, align 4
  %6343 = sext i32 %6342 to i64
  store i64 %6343, i64* %RCX.i2527, align 8
  %6344 = shl nsw i64 %6343, 3
  %6345 = add i64 %6344, %6337
  %6346 = add i64 %6336, 16
  store i64 %6346, i64* %3, align 8
  %6347 = inttoptr i64 %6345 to i64*
  %6348 = load i64, i64* %6347, align 8
  store i64 %6348, i64* %RAX.i2530, align 8
  %6349 = add i64 %6338, -8
  %6350 = add i64 %6336, 20
  store i64 %6350, i64* %3, align 8
  %6351 = inttoptr i64 %6349 to i32*
  %6352 = load i32, i32* %6351, align 4
  %6353 = sext i32 %6352 to i64
  store i64 %6353, i64* %RCX.i2527, align 8
  %6354 = shl nsw i64 %6353, 3
  %6355 = add i64 %6354, %6348
  %6356 = add i64 %6336, 24
  store i64 %6356, i64* %3, align 8
  %6357 = inttoptr i64 %6355 to i64*
  %6358 = load i64, i64* %6357, align 8
  store i64 %6358, i64* %RAX.i2530, align 8
  %6359 = add i64 %6358, 24
  %6360 = add i64 %6336, 28
  store i64 %6360, i64* %3, align 8
  %6361 = inttoptr i64 %6359 to i64*
  %6362 = load i64, i64* %6361, align 8
  store i64 %6362, i64* %RAX.i2530, align 8
  %6363 = add i64 %6338, -32
  %6364 = add i64 %6336, 32
  store i64 %6364, i64* %3, align 8
  %6365 = inttoptr i64 %6363 to i64*
  store i64 %6362, i64* %6365, align 8
  %6366 = load i64, i64* %RBP.i, align 8
  %6367 = add i64 %6366, -32
  %6368 = load i64, i64* %3, align 8
  %6369 = add i64 %6368, 4
  store i64 %6369, i64* %3, align 8
  %6370 = inttoptr i64 %6367 to i64*
  %6371 = load i64, i64* %6370, align 8
  %6372 = add i64 %6371, 16
  store i64 %6372, i64* %RAX.i2530, align 8
  %6373 = icmp ugt i64 %6371, -17
  %6374 = zext i1 %6373 to i8
  store i8 %6374, i8* %99, align 1
  %6375 = trunc i64 %6372 to i32
  %6376 = and i32 %6375, 255
  %6377 = tail call i32 @llvm.ctpop.i32(i32 %6376)
  %6378 = trunc i32 %6377 to i8
  %6379 = and i8 %6378, 1
  %6380 = xor i8 %6379, 1
  store i8 %6380, i8* %106, align 1
  %6381 = xor i64 %6371, 16
  %6382 = xor i64 %6381, %6372
  %6383 = lshr i64 %6382, 4
  %6384 = trunc i64 %6383 to i8
  %6385 = and i8 %6384, 1
  store i8 %6385, i8* %111, align 1
  %6386 = icmp eq i64 %6372, 0
  %6387 = zext i1 %6386 to i8
  store i8 %6387, i8* %114, align 1
  %6388 = lshr i64 %6372, 63
  %6389 = trunc i64 %6388 to i8
  store i8 %6389, i8* %117, align 1
  %6390 = lshr i64 %6371, 63
  %6391 = xor i64 %6388, %6390
  %6392 = add nuw nsw i64 %6391, %6388
  %6393 = icmp eq i64 %6392, 2
  %6394 = zext i1 %6393 to i8
  store i8 %6394, i8* %123, align 1
  %6395 = add i64 %6366, -40
  %6396 = add i64 %6368, 12
  store i64 %6396, i64* %3, align 8
  %6397 = inttoptr i64 %6395 to i64*
  store i64 %6372, i64* %6397, align 8
  %6398 = load i64, i64* %RBP.i, align 8
  %6399 = add i64 %6398, -24
  %6400 = load i64, i64* %3, align 8
  %6401 = add i64 %6400, 4
  store i64 %6401, i64* %3, align 8
  %6402 = inttoptr i64 %6399 to i64*
  %6403 = load i64, i64* %6402, align 8
  store i64 %6403, i64* %RAX.i2530, align 8
  %6404 = add i64 %6400, 7
  store i64 %6404, i64* %3, align 8
  %6405 = inttoptr i64 %6403 to i64*
  %6406 = load i64, i64* %6405, align 8
  store i64 %6406, i64* %RAX.i2530, align 8
  %6407 = add i64 %6398, -48
  %6408 = add i64 %6400, 11
  store i64 %6408, i64* %3, align 8
  %6409 = inttoptr i64 %6407 to i64*
  store i64 %6406, i64* %6409, align 8
  %6410 = load i64, i64* %RBP.i, align 8
  %6411 = add i64 %6410, -32
  %6412 = load i64, i64* %3, align 8
  %6413 = add i64 %6412, 4
  store i64 %6413, i64* %3, align 8
  %6414 = inttoptr i64 %6411 to i64*
  %6415 = load i64, i64* %6414, align 8
  store i64 %6415, i64* %RAX.i2530, align 8
  %6416 = add i64 %6412, 7
  store i64 %6416, i64* %3, align 8
  %6417 = inttoptr i64 %6415 to i64*
  %6418 = load i64, i64* %6417, align 8
  store i64 %6418, i64* %RAX.i2530, align 8
  %6419 = add i64 %6410, -56
  %6420 = add i64 %6412, 11
  store i64 %6420, i64* %3, align 8
  %6421 = inttoptr i64 %6419 to i64*
  store i64 %6418, i64* %6421, align 8
  %6422 = load i64, i64* %RBP.i, align 8
  %6423 = add i64 %6422, -40
  %6424 = load i64, i64* %3, align 8
  %6425 = add i64 %6424, 4
  store i64 %6425, i64* %3, align 8
  %6426 = inttoptr i64 %6423 to i64*
  %6427 = load i64, i64* %6426, align 8
  store i64 %6427, i64* %RAX.i2530, align 8
  %6428 = add i64 %6424, 7
  store i64 %6428, i64* %3, align 8
  %6429 = inttoptr i64 %6427 to i64*
  %6430 = load i64, i64* %6429, align 8
  store i64 %6430, i64* %RAX.i2530, align 8
  %6431 = add i64 %6422, -64
  %6432 = add i64 %6424, 11
  store i64 %6432, i64* %3, align 8
  %6433 = inttoptr i64 %6431 to i64*
  store i64 %6430, i64* %6433, align 8
  %6434 = load i64, i64* %RBP.i, align 8
  %6435 = add i64 %6434, -16
  %6436 = load i64, i64* %3, align 8
  %6437 = add i64 %6436, 7
  store i64 %6437, i64* %3, align 8
  %6438 = inttoptr i64 %6435 to i32*
  store i32 0, i32* %6438, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_45ba31

block_.L_45ba31:                                  ; preds = %block_45ba3d, %block_.L_45b9bd
  %6439 = phi i64 [ %6571, %block_45ba3d ], [ %.pre134, %block_.L_45b9bd ]
  %6440 = load i64, i64* %RBP.i, align 8
  %6441 = add i64 %6440, -16
  %6442 = add i64 %6439, 3
  store i64 %6442, i64* %3, align 8
  %6443 = inttoptr i64 %6441 to i32*
  %6444 = load i32, i32* %6443, align 4
  %6445 = zext i32 %6444 to i64
  store i64 %6445, i64* %RAX.i2530, align 8
  %6446 = add i64 %6440, -12
  %6447 = add i64 %6439, 6
  store i64 %6447, i64* %3, align 8
  %6448 = inttoptr i64 %6446 to i32*
  %6449 = load i32, i32* %6448, align 4
  %6450 = sub i32 %6444, %6449
  %6451 = icmp ult i32 %6444, %6449
  %6452 = zext i1 %6451 to i8
  store i8 %6452, i8* %99, align 1
  %6453 = and i32 %6450, 255
  %6454 = tail call i32 @llvm.ctpop.i32(i32 %6453)
  %6455 = trunc i32 %6454 to i8
  %6456 = and i8 %6455, 1
  %6457 = xor i8 %6456, 1
  store i8 %6457, i8* %106, align 1
  %6458 = xor i32 %6449, %6444
  %6459 = xor i32 %6458, %6450
  %6460 = lshr i32 %6459, 4
  %6461 = trunc i32 %6460 to i8
  %6462 = and i8 %6461, 1
  store i8 %6462, i8* %111, align 1
  %6463 = icmp eq i32 %6450, 0
  %6464 = zext i1 %6463 to i8
  store i8 %6464, i8* %114, align 1
  %6465 = lshr i32 %6450, 31
  %6466 = trunc i32 %6465 to i8
  store i8 %6466, i8* %117, align 1
  %6467 = lshr i32 %6444, 31
  %6468 = lshr i32 %6449, 31
  %6469 = xor i32 %6468, %6467
  %6470 = xor i32 %6465, %6467
  %6471 = add nuw nsw i32 %6470, %6469
  %6472 = icmp eq i32 %6471, 2
  %6473 = zext i1 %6472 to i8
  store i8 %6473, i8* %123, align 1
  %6474 = icmp ne i8 %6466, 0
  %6475 = xor i1 %6474, %6472
  %.v158 = select i1 %6475, i64 12, i64 59
  %6476 = add i64 %6439, %.v158
  store i64 %6476, i64* %3, align 8
  br i1 %6475, label %block_45ba3d, label %block_.L_45ba6c

block_45ba3d:                                     ; preds = %block_.L_45ba31
  %6477 = add i64 %6440, -56
  %6478 = add i64 %6476, 4
  store i64 %6478, i64* %3, align 8
  %6479 = inttoptr i64 %6477 to i64*
  %6480 = load i64, i64* %6479, align 8
  store i64 %6480, i64* %RAX.i2530, align 8
  %6481 = add i64 %6476, 8
  store i64 %6481, i64* %3, align 8
  %6482 = load i32, i32* %6443, align 4
  %6483 = sext i32 %6482 to i64
  store i64 %6483, i64* %RCX.i2527, align 8
  %6484 = shl nsw i64 %6483, 2
  %6485 = add i64 %6484, %6480
  %6486 = add i64 %6476, 11
  store i64 %6486, i64* %3, align 8
  %6487 = inttoptr i64 %6485 to i32*
  %6488 = load i32, i32* %6487, align 4
  %6489 = zext i32 %6488 to i64
  store i64 %6489, i64* %RDX.i2445, align 8
  %6490 = add i64 %6440, -64
  %6491 = add i64 %6476, 15
  store i64 %6491, i64* %3, align 8
  %6492 = inttoptr i64 %6490 to i64*
  %6493 = load i64, i64* %6492, align 8
  store i64 %6493, i64* %RAX.i2530, align 8
  %6494 = add i64 %6476, 19
  store i64 %6494, i64* %3, align 8
  %6495 = load i32, i32* %6443, align 4
  %6496 = sext i32 %6495 to i64
  store i64 %6496, i64* %RCX.i2527, align 8
  %6497 = shl nsw i64 %6496, 2
  %6498 = add i64 %6493, %6497
  %6499 = add i64 %6476, 22
  store i64 %6499, i64* %3, align 8
  %6500 = inttoptr i64 %6498 to i32*
  %6501 = load i32, i32* %6500, align 4
  %6502 = add i32 %6501, %6488
  %6503 = zext i32 %6502 to i64
  store i64 %6503, i64* %RDX.i2445, align 8
  %6504 = icmp ult i32 %6502, %6488
  %6505 = icmp ult i32 %6502, %6501
  %6506 = or i1 %6504, %6505
  %6507 = zext i1 %6506 to i8
  store i8 %6507, i8* %99, align 1
  %6508 = and i32 %6502, 255
  %6509 = tail call i32 @llvm.ctpop.i32(i32 %6508)
  %6510 = trunc i32 %6509 to i8
  %6511 = and i8 %6510, 1
  %6512 = xor i8 %6511, 1
  store i8 %6512, i8* %106, align 1
  %6513 = xor i32 %6501, %6488
  %6514 = xor i32 %6513, %6502
  %6515 = lshr i32 %6514, 4
  %6516 = trunc i32 %6515 to i8
  %6517 = and i8 %6516, 1
  store i8 %6517, i8* %111, align 1
  %6518 = icmp eq i32 %6502, 0
  %6519 = zext i1 %6518 to i8
  store i8 %6519, i8* %114, align 1
  %6520 = lshr i32 %6502, 31
  %6521 = trunc i32 %6520 to i8
  store i8 %6521, i8* %117, align 1
  %6522 = lshr i32 %6488, 31
  %6523 = lshr i32 %6501, 31
  %6524 = xor i32 %6520, %6522
  %6525 = xor i32 %6520, %6523
  %6526 = add nuw nsw i32 %6524, %6525
  %6527 = icmp eq i32 %6526, 2
  %6528 = zext i1 %6527 to i8
  store i8 %6528, i8* %123, align 1
  %6529 = add i64 %6440, -48
  %6530 = add i64 %6476, 26
  store i64 %6530, i64* %3, align 8
  %6531 = inttoptr i64 %6529 to i64*
  %6532 = load i64, i64* %6531, align 8
  store i64 %6532, i64* %RAX.i2530, align 8
  %6533 = add i64 %6476, 30
  store i64 %6533, i64* %3, align 8
  %6534 = load i32, i32* %6443, align 4
  %6535 = sext i32 %6534 to i64
  store i64 %6535, i64* %RCX.i2527, align 8
  %6536 = shl nsw i64 %6535, 2
  %6537 = add i64 %6536, %6532
  %6538 = add i64 %6476, 33
  store i64 %6538, i64* %3, align 8
  %6539 = inttoptr i64 %6537 to i32*
  store i32 %6502, i32* %6539, align 4
  %6540 = load i64, i64* %RBP.i, align 8
  %6541 = add i64 %6540, -16
  %6542 = load i64, i64* %3, align 8
  %6543 = add i64 %6542, 3
  store i64 %6543, i64* %3, align 8
  %6544 = inttoptr i64 %6541 to i32*
  %6545 = load i32, i32* %6544, align 4
  %6546 = add i32 %6545, 1
  %6547 = zext i32 %6546 to i64
  store i64 %6547, i64* %RAX.i2530, align 8
  %6548 = icmp eq i32 %6545, -1
  %6549 = icmp eq i32 %6546, 0
  %6550 = or i1 %6548, %6549
  %6551 = zext i1 %6550 to i8
  store i8 %6551, i8* %99, align 1
  %6552 = and i32 %6546, 255
  %6553 = tail call i32 @llvm.ctpop.i32(i32 %6552)
  %6554 = trunc i32 %6553 to i8
  %6555 = and i8 %6554, 1
  %6556 = xor i8 %6555, 1
  store i8 %6556, i8* %106, align 1
  %6557 = xor i32 %6546, %6545
  %6558 = lshr i32 %6557, 4
  %6559 = trunc i32 %6558 to i8
  %6560 = and i8 %6559, 1
  store i8 %6560, i8* %111, align 1
  %6561 = zext i1 %6549 to i8
  store i8 %6561, i8* %114, align 1
  %6562 = lshr i32 %6546, 31
  %6563 = trunc i32 %6562 to i8
  store i8 %6563, i8* %117, align 1
  %6564 = lshr i32 %6545, 31
  %6565 = xor i32 %6562, %6564
  %6566 = add nuw nsw i32 %6565, %6562
  %6567 = icmp eq i32 %6566, 2
  %6568 = zext i1 %6567 to i8
  store i8 %6568, i8* %123, align 1
  %6569 = add i64 %6542, 9
  store i64 %6569, i64* %3, align 8
  store i32 %6546, i32* %6544, align 4
  %6570 = load i64, i64* %3, align 8
  %6571 = add i64 %6570, -54
  store i64 %6571, i64* %3, align 8
  br label %block_.L_45ba31

block_.L_45ba6c:                                  ; preds = %block_.L_45ba31
  %6572 = add i64 %6476, 1
  store i64 %6572, i64* %3, align 8
  %6573 = load i64, i64* %6, align 8
  %6574 = add i64 %6573, 8
  %6575 = inttoptr i64 %6573 to i64*
  %6576 = load i64, i64* %6575, align 8
  store i64 %6576, i64* %RBP.i, align 8
  store i64 %6574, i64* %6, align 8
  %6577 = add i64 %6476, 2
  store i64 %6577, i64* %3, align 8
  %6578 = inttoptr i64 %6574 to i64*
  %6579 = load i64, i64* %6578, align 8
  store i64 %6579, i64* %3, align 8
  %6580 = add i64 %6573, 16
  store i64 %6580, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cc338___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cc338_type* @G_0x6cc338 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jge_.L_45acfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jmpq_.L_45acc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45ad83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45ad48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45ae0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45adcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45ae91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45ae56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 40
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -41
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
define %struct.Memory* @routine_jge_.L_45af18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45aedd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45af9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45af64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b026(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45afeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b0ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b072(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_45b15c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b121(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_jge_.L_45b1e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b1a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b26a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b22f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b2f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b2b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b33d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b3ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b3c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b486(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b44b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b50d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b4d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_45b5bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b581(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b643(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b608(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -49
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
define %struct.Memory* @routine_jge_.L_45b6ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b68f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b751(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b716(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -65
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
define %struct.Memory* @routine_jge_.L_45b800(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b7c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b84c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_45b936(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b8fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45b9bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45b982(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_45ba6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45ba31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
