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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @kernel_durbin(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 8
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i499, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %16 = add i64 %10, 2023
  %17 = add i64 %10, 15
  store i64 %17, i64* %3, align 8
  %18 = inttoptr i64 %16 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = bitcast [32 x %union.VectorReg]* %15 to double*
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %15, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %19, i64* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to double*
  store double 0.000000e+00, double* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %24 to i32*
  %25 = add i64 %7, -12
  %26 = load i32, i32* %EDI.i, align 4
  %27 = add i64 %10, 18
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %28, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -16
  %31 = load i64, i64* %RSI.i, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %RDX.i490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -24
  %37 = load i64, i64* %RDX.i490, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %36 to i64*
  store i64 %37, i64* %40, align 8
  %RCX.i487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -32
  %43 = load i64, i64* %RCX.i487, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %46, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -40
  %49 = load i64, i64* %R8.i, align 8
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %52, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -48
  %55 = load i64, i64* %R9.i, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -56
  %61 = load i64, i64* %RAX.i499, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -48
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %RAX.i499, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %72 = add i64 %67, 8
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = bitcast %union.VectorReg* %71 to double*
  %76 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %71, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %74, i64* %76, align 1
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %78 = bitcast i64* %77 to double*
  store double 0.000000e+00, double* %78, align 1
  %79 = add i64 %65, -16
  %80 = add i64 %67, 12
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RAX.i499, align 8
  %83 = add i64 %67, 16
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  store i64 %74, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -40
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX.i499, align 8
  %91 = add i64 %87, 8
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %21, align 1
  %93 = inttoptr i64 %90 to i64*
  store i64 %92, i64* %93, align 8
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -48
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RAX.i499, align 8
  %100 = add i64 %96, 8
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %103 = add i64 %94, -32
  %104 = add i64 %96, 12
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RAX.i499, align 8
  %107 = add i64 %96, 16
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  store i64 %102, i64* %108, align 8
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -64
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 1, i32* %113, align 4
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400bfa

block_.L_400bfa:                                  ; preds = %block_.L_400df9, %entry
  %120 = phi i64 [ %1069, %block_.L_400df9 ], [ %.pre, %entry ]
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -64
  %123 = add i64 %120, 3
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RAX.i499, align 8
  %127 = add i64 %121, -4
  %128 = add i64 %120, 6
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %125, %130
  %132 = icmp ult i32 %125, %130
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %114, align 1
  %134 = and i32 %131, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %115, align 1
  %139 = xor i32 %130, %125
  %140 = xor i32 %139, %131
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %116, align 1
  %144 = icmp eq i32 %131, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %117, align 1
  %146 = lshr i32 %131, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %118, align 1
  %148 = lshr i32 %125, 31
  %149 = lshr i32 %130, 31
  %150 = xor i32 %149, %148
  %151 = xor i32 %146, %148
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %119, align 1
  %155 = icmp ne i8 %147, 0
  %156 = xor i1 %155, %153
  %.v = select i1 %156, i64 12, i64 565
  %157 = add i64 %120, %.v
  store i64 %157, i64* %3, align 8
  br i1 %156, label %block_400c06, label %block_.L_400e2f

block_400c06:                                     ; preds = %block_.L_400bfa
  %158 = add i64 %121, -40
  %159 = add i64 %157, 4
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX.i499, align 8
  %162 = add i64 %157, 7
  store i64 %162, i64* %3, align 8
  %163 = load i32, i32* %124, align 4
  %164 = add i32 %163, -1
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RCX.i487, align 8
  %166 = icmp eq i32 %163, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %114, align 1
  %168 = and i32 %164, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %115, align 1
  %173 = xor i32 %164, %163
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %116, align 1
  %177 = icmp eq i32 %164, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %117, align 1
  %179 = lshr i32 %164, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %118, align 1
  %181 = lshr i32 %163, 31
  %182 = xor i32 %179, %181
  %183 = add nuw nsw i32 %182, %181
  %184 = icmp eq i32 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %119, align 1
  %186 = sext i32 %164 to i64
  store i64 %186, i64* %RDX.i490, align 8
  %187 = shl nsw i64 %186, 3
  %188 = add i64 %161, %187
  %189 = add i64 %157, 18
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %192 = add i64 %121, -32
  %193 = add i64 %157, 22
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RAX.i499, align 8
  %196 = add i64 %157, 25
  store i64 %196, i64* %3, align 8
  %197 = load i32, i32* %124, align 4
  %198 = add i32 %197, -1
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RCX.i487, align 8
  %200 = icmp eq i32 %197, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %114, align 1
  %202 = and i32 %198, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %115, align 1
  %207 = xor i32 %198, %197
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %116, align 1
  %211 = icmp eq i32 %198, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %117, align 1
  %213 = lshr i32 %198, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %118, align 1
  %215 = lshr i32 %197, 31
  %216 = xor i32 %213, %215
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %119, align 1
  %220 = sext i32 %198 to i64
  store i64 %220, i64* %RDX.i490, align 8
  %221 = shl nsw i64 %220, 3
  %222 = add i64 %195, %221
  %223 = add i64 %157, 36
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -32
  %228 = add i64 %157, 40
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RAX.i499, align 8
  %231 = add i64 %226, -64
  %232 = add i64 %157, 43
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, -1
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RCX.i487, align 8
  %237 = icmp eq i32 %234, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %114, align 1
  %239 = and i32 %235, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %115, align 1
  %244 = xor i32 %235, %234
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %116, align 1
  %248 = icmp eq i32 %235, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %117, align 1
  %250 = lshr i32 %235, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %118, align 1
  %252 = lshr i32 %234, 31
  %253 = xor i32 %250, %252
  %254 = add nuw nsw i32 %253, %252
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %119, align 1
  %257 = sext i32 %235 to i64
  store i64 %257, i64* %RDX.i490, align 8
  %258 = shl nsw i64 %257, 3
  %259 = add i64 %230, %258
  %260 = add i64 %157, 54
  store i64 %260, i64* %3, align 8
  %261 = bitcast i64 %225 to double
  %262 = inttoptr i64 %259 to double*
  %263 = load double, double* %262, align 8
  %264 = fmul double %261, %263
  store double %264, double* %75, align 1
  store i64 0, i64* %77, align 1
  %265 = add i64 %226, -40
  %266 = add i64 %157, 58
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RAX.i499, align 8
  %269 = add i64 %157, 61
  store i64 %269, i64* %3, align 8
  %270 = load i32, i32* %233, align 4
  %271 = add i32 %270, -1
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RCX.i487, align 8
  %273 = icmp eq i32 %270, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %114, align 1
  %275 = and i32 %271, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %115, align 1
  %280 = xor i32 %271, %270
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %116, align 1
  %284 = icmp eq i32 %271, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %117, align 1
  %286 = lshr i32 %271, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %118, align 1
  %288 = lshr i32 %270, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %119, align 1
  %293 = sext i32 %271 to i64
  store i64 %293, i64* %RDX.i490, align 8
  %294 = shl nsw i64 %293, 3
  %295 = add i64 %268, %294
  %296 = add i64 %157, 72
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to double*
  %298 = load double, double* %297, align 8
  %299 = fmul double %264, %298
  store double %299, double* %75, align 1
  store i64 0, i64* %77, align 1
  %300 = load double, double* %20, align 1
  %301 = fsub double %300, %299
  store double %301, double* %20, align 1
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -40
  %304 = add i64 %157, 80
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RAX.i499, align 8
  %307 = add i64 %302, -64
  %308 = add i64 %157, 84
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RDX.i490, align 8
  %312 = shl nsw i64 %311, 3
  %313 = add i64 %312, %306
  %314 = add i64 %157, 89
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to double*
  store double %301, double* %315, align 8
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -48
  %318 = load i64, i64* %3, align 8
  %319 = add i64 %318, 4
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RAX.i499, align 8
  %322 = add i64 %316, -64
  %323 = add i64 %318, 8
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RDX.i490, align 8
  %327 = shl nsw i64 %326, 3
  %328 = add i64 %327, %321
  %329 = add i64 %318, 13
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %332 = add i64 %316, -24
  %333 = add i64 %318, 17
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %RAX.i499, align 8
  %336 = add i64 %318, 21
  store i64 %336, i64* %3, align 8
  %337 = load i32, i32* %324, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RDX.i490, align 8
  %339 = shl nsw i64 %338, 3
  %340 = add i64 %339, %335
  %341 = add i64 %318, 26
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i64*
  store i64 %331, i64* %342, align 8
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -60
  %345 = load i64, i64* %3, align 8
  %346 = add i64 %345, 7
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %344 to i32*
  store i32 0, i32* %347, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_400c80

block_.L_400c80:                                  ; preds = %block_400c91, %block_400c06
  %348 = phi i64 [ %622, %block_400c91 ], [ %.pre21, %block_400c06 ]
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -60
  %351 = add i64 %348, 3
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RAX.i499, align 8
  %355 = add i64 %349, -64
  %356 = add i64 %348, 6
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = add i32 %358, -1
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RCX.i487, align 8
  %361 = lshr i32 %359, 31
  %362 = sub i32 %353, %359
  %363 = icmp ult i32 %353, %359
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %114, align 1
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %115, align 1
  %370 = xor i32 %359, %353
  %371 = xor i32 %370, %362
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %116, align 1
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %117, align 1
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %118, align 1
  %379 = lshr i32 %353, 31
  %380 = xor i32 %361, %379
  %381 = xor i32 %377, %379
  %382 = add nuw nsw i32 %381, %380
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %119, align 1
  %385 = icmp ne i8 %378, 0
  %386 = xor i1 %385, %383
  %.demorgan = or i1 %375, %386
  %.v25 = select i1 %.demorgan, i64 17, i64 147
  %387 = add i64 %348, %.v25
  store i64 %387, i64* %3, align 8
  br i1 %.demorgan, label %block_400c91, label %block_.L_400d13

block_400c91:                                     ; preds = %block_.L_400c80
  %388 = add i64 %349, -24
  %389 = add i64 %387, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX.i499, align 8
  %392 = add i64 %387, 8
  store i64 %392, i64* %3, align 8
  %393 = load i32, i32* %352, align 4
  %394 = sext i32 %393 to i64
  %395 = mul nsw i64 %394, 32000
  store i64 %395, i64* %RCX.i487, align 8
  %396 = lshr i64 %395, 63
  %397 = add i64 %395, %391
  store i64 %397, i64* %RAX.i499, align 8
  %398 = icmp ult i64 %397, %391
  %399 = icmp ult i64 %397, %395
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %114, align 1
  %402 = trunc i64 %397 to i32
  %403 = and i32 %402, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %115, align 1
  %408 = xor i64 %391, %397
  %409 = lshr i64 %408, 4
  %410 = trunc i64 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %116, align 1
  %412 = icmp eq i64 %397, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %117, align 1
  %414 = lshr i64 %397, 63
  %415 = trunc i64 %414 to i8
  store i8 %415, i8* %118, align 1
  %416 = lshr i64 %391, 63
  %417 = xor i64 %414, %416
  %418 = xor i64 %414, %396
  %419 = add nuw nsw i64 %417, %418
  %420 = icmp eq i64 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %119, align 1
  %422 = add i64 %387, 22
  store i64 %422, i64* %3, align 8
  %423 = load i32, i32* %357, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RCX.i487, align 8
  %425 = shl nsw i64 %424, 3
  %426 = add i64 %425, %397
  %427 = add i64 %387, 27
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %430 = add i64 %349, -48
  %431 = add i64 %387, 31
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RAX.i499, align 8
  %434 = add i64 %387, 34
  store i64 %434, i64* %3, align 8
  %435 = load i32, i32* %357, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RDX.i490, align 8
  %437 = add i64 %387, 37
  store i64 %437, i64* %3, align 8
  %438 = load i32, i32* %352, align 4
  %439 = sub i32 %435, %438
  %440 = icmp eq i32 %439, 0
  %441 = zext i1 %440 to i8
  %442 = lshr i32 %439, 31
  %443 = add i32 %439, -1
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDX.i490, align 8
  store i8 %441, i8* %114, align 1
  %445 = and i32 %443, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %115, align 1
  %450 = xor i32 %443, %439
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %116, align 1
  %454 = icmp eq i32 %443, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %117, align 1
  %456 = lshr i32 %443, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %118, align 1
  %458 = xor i32 %456, %442
  %459 = add nuw nsw i32 %458, %442
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %119, align 1
  %462 = sext i32 %443 to i64
  store i64 %462, i64* %RCX.i487, align 8
  %463 = shl nsw i64 %462, 3
  %464 = add i64 %433, %463
  %465 = add i64 %387, 48
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -16
  %470 = add i64 %387, 52
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RAX.i499, align 8
  %473 = add i64 %468, -60
  %474 = add i64 %387, 56
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  %478 = mul nsw i64 %477, 32000
  store i64 %478, i64* %RCX.i487, align 8
  %479 = lshr i64 %478, 63
  %480 = add i64 %478, %472
  store i64 %480, i64* %RAX.i499, align 8
  %481 = icmp ult i64 %480, %472
  %482 = icmp ult i64 %480, %478
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %114, align 1
  %485 = trunc i64 %480 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %115, align 1
  %491 = xor i64 %472, %480
  %492 = lshr i64 %491, 4
  %493 = trunc i64 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %116, align 1
  %495 = icmp eq i64 %480, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %117, align 1
  %497 = lshr i64 %480, 63
  %498 = trunc i64 %497 to i8
  store i8 %498, i8* %118, align 1
  %499 = lshr i64 %472, 63
  %500 = xor i64 %497, %499
  %501 = xor i64 %497, %479
  %502 = add nuw nsw i64 %500, %501
  %503 = icmp eq i64 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %119, align 1
  %505 = add i64 %468, -64
  %506 = add i64 %387, 69
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = add i32 %508, -1
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %RDX.i490, align 8
  %511 = icmp eq i32 %508, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %114, align 1
  %513 = and i32 %509, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %115, align 1
  %518 = xor i32 %509, %508
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %116, align 1
  %522 = icmp eq i32 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %117, align 1
  %524 = lshr i32 %509, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %118, align 1
  %526 = lshr i32 %508, 31
  %527 = xor i32 %524, %526
  %528 = add nuw nsw i32 %527, %526
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %119, align 1
  %531 = sext i32 %509 to i64
  store i64 %531, i64* %RCX.i487, align 8
  %532 = shl nsw i64 %531, 3
  %533 = add i64 %480, %532
  %534 = add i64 %387, 80
  store i64 %534, i64* %3, align 8
  %535 = load double, double* %75, align 1
  %536 = inttoptr i64 %533 to double*
  %537 = load double, double* %536, align 8
  %538 = fmul double %535, %537
  store double %538, double* %75, align 1
  %539 = load double, double* %20, align 1
  %540 = fadd double %539, %538
  store double %540, double* %20, align 1
  %541 = load i64, i64* %RBP.i, align 8
  %542 = add i64 %541, -24
  %543 = add i64 %387, 88
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RAX.i499, align 8
  %546 = add i64 %541, -60
  %547 = add i64 %387, 91
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = add i32 %549, 1
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RDX.i490, align 8
  %552 = sext i32 %550 to i64
  %553 = mul nsw i64 %552, 32000
  store i64 %553, i64* %RCX.i487, align 8
  %554 = lshr i64 %553, 63
  %555 = add i64 %553, %545
  store i64 %555, i64* %RAX.i499, align 8
  %556 = icmp ult i64 %555, %545
  %557 = icmp ult i64 %555, %553
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %114, align 1
  %560 = trunc i64 %555 to i32
  %561 = and i32 %560, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %115, align 1
  %566 = xor i64 %545, %555
  %567 = lshr i64 %566, 4
  %568 = trunc i64 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %116, align 1
  %570 = icmp eq i64 %555, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %117, align 1
  %572 = lshr i64 %555, 63
  %573 = trunc i64 %572 to i8
  store i8 %573, i8* %118, align 1
  %574 = lshr i64 %545, 63
  %575 = xor i64 %572, %574
  %576 = xor i64 %572, %554
  %577 = add nuw nsw i64 %575, %576
  %578 = icmp eq i64 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %119, align 1
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -64
  %582 = add i64 %387, 111
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %RCX.i487, align 8
  %586 = shl nsw i64 %585, 3
  %587 = add i64 %586, %555
  %588 = add i64 %387, 116
  store i64 %588, i64* %3, align 8
  %589 = load i64, i64* %21, align 1
  %590 = inttoptr i64 %587 to i64*
  store i64 %589, i64* %590, align 8
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -60
  %593 = load i64, i64* %3, align 8
  %594 = add i64 %593, 3
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %592 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = add i32 %596, 1
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RAX.i499, align 8
  %599 = icmp eq i32 %596, -1
  %600 = icmp eq i32 %597, 0
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %114, align 1
  %603 = and i32 %597, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %115, align 1
  %608 = xor i32 %597, %596
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %116, align 1
  %612 = zext i1 %600 to i8
  store i8 %612, i8* %117, align 1
  %613 = lshr i32 %597, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %118, align 1
  %615 = lshr i32 %596, 31
  %616 = xor i32 %613, %615
  %617 = add nuw nsw i32 %616, %613
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %119, align 1
  %620 = add i64 %593, 9
  store i64 %620, i64* %3, align 8
  store i32 %597, i32* %595, align 4
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, -142
  store i64 %622, i64* %3, align 8
  br label %block_.L_400c80

block_.L_400d13:                                  ; preds = %block_.L_400c80
  store i64 -9223372036854775808, i64* %RAX.i499, align 8
  %623 = add i64 %349, -24
  %624 = add i64 %387, 14
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RCX.i487, align 8
  %627 = add i64 %387, 18
  store i64 %627, i64* %3, align 8
  %628 = load i32, i32* %357, align 4
  %629 = sext i32 %628 to i64
  %630 = mul nsw i64 %629, 32000
  store i64 %630, i64* %RDX.i490, align 8
  %631 = lshr i64 %630, 63
  %632 = add i64 %630, %626
  store i64 %632, i64* %RCX.i487, align 8
  %633 = icmp ult i64 %632, %626
  %634 = icmp ult i64 %632, %630
  %635 = or i1 %633, %634
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %114, align 1
  %637 = trunc i64 %632 to i32
  %638 = and i32 %637, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %115, align 1
  %643 = xor i64 %626, %632
  %644 = lshr i64 %643, 4
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %116, align 1
  %647 = icmp eq i64 %632, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %117, align 1
  %649 = lshr i64 %632, 63
  %650 = trunc i64 %649 to i8
  store i8 %650, i8* %118, align 1
  %651 = lshr i64 %626, 63
  %652 = xor i64 %649, %651
  %653 = xor i64 %649, %631
  %654 = add nuw nsw i64 %652, %653
  %655 = icmp eq i64 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %119, align 1
  %657 = add i64 %387, 32
  store i64 %657, i64* %3, align 8
  %658 = load i32, i32* %357, align 4
  %659 = sext i32 %658 to i64
  store i64 %659, i64* %RDX.i490, align 8
  %660 = shl nsw i64 %659, 3
  %661 = add i64 %660, %632
  %662 = add i64 %387, 37
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  %665 = xor i64 %664, -9223372036854775808
  store i64 %665, i64* %RCX.i487, align 8
  store i8 0, i8* %114, align 1
  %666 = trunc i64 %664 to i32
  %667 = and i32 %666, 255
  %668 = tail call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  store i8 %671, i8* %115, align 1
  %672 = icmp eq i64 %665, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %117, align 1
  %674 = lshr i64 %665, 63
  %675 = trunc i64 %674 to i8
  store i8 %675, i8* %118, align 1
  store i8 0, i8* %119, align 1
  store i8 0, i8* %116, align 1
  store i64 %665, i64* %21, align 1
  store i64 0, i64* %22, align 1
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -40
  %678 = add i64 %387, 54
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RAX.i499, align 8
  %681 = add i64 %676, -64
  %682 = add i64 %387, 58
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RCX.i487, align 8
  %686 = shl nsw i64 %685, 3
  %687 = add i64 %686, %680
  %688 = add i64 %387, 63
  store i64 %688, i64* %3, align 8
  %689 = bitcast i64 %665 to double
  %690 = inttoptr i64 %687 to double*
  %691 = load double, double* %690, align 8
  %692 = fmul double %689, %691
  store double %692, double* %20, align 1
  store i64 0, i64* %22, align 1
  %693 = add i64 %676, -32
  %694 = add i64 %387, 67
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RAX.i499, align 8
  %697 = add i64 %387, 71
  store i64 %697, i64* %3, align 8
  %698 = load i32, i32* %683, align 4
  %699 = sext i32 %698 to i64
  store i64 %699, i64* %RCX.i487, align 8
  %700 = shl nsw i64 %699, 3
  %701 = add i64 %700, %696
  %702 = add i64 %387, 76
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to double*
  store double %692, double* %703, align 8
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -60
  %706 = load i64, i64* %3, align 8
  %707 = add i64 %706, 7
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %705 to i32*
  store i32 0, i32* %708, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_400d66

block_.L_400d66:                                  ; preds = %block_400d77, %block_.L_400d13
  %709 = phi i64 [ %984, %block_400d77 ], [ %.pre22, %block_.L_400d13 ]
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -60
  %712 = add i64 %709, 3
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RAX.i499, align 8
  %716 = add i64 %710, -64
  %717 = add i64 %709, 6
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = add i32 %719, -1
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RCX.i487, align 8
  %722 = lshr i32 %720, 31
  %723 = sub i32 %714, %720
  %724 = icmp ult i32 %714, %720
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %114, align 1
  %726 = and i32 %723, 255
  %727 = tail call i32 @llvm.ctpop.i32(i32 %726)
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  store i8 %730, i8* %115, align 1
  %731 = xor i32 %720, %714
  %732 = xor i32 %731, %723
  %733 = lshr i32 %732, 4
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %116, align 1
  %736 = icmp eq i32 %723, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %117, align 1
  %738 = lshr i32 %723, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %118, align 1
  %740 = lshr i32 %714, 31
  %741 = xor i32 %722, %740
  %742 = xor i32 %738, %740
  %743 = add nuw nsw i32 %742, %741
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %119, align 1
  %746 = icmp ne i8 %739, 0
  %747 = xor i1 %746, %744
  %.demorgan23 = or i1 %736, %747
  %.v26 = select i1 %.demorgan23, i64 17, i64 147
  %748 = add i64 %709, %.v26
  store i64 %748, i64* %3, align 8
  br i1 %.demorgan23, label %block_400d77, label %block_.L_400df9

block_400d77:                                     ; preds = %block_.L_400d66
  %749 = add i64 %710, -16
  %750 = add i64 %748, 4
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RAX.i499, align 8
  %753 = add i64 %748, 8
  store i64 %753, i64* %3, align 8
  %754 = load i32, i32* %713, align 4
  %755 = sext i32 %754 to i64
  %756 = mul nsw i64 %755, 32000
  store i64 %756, i64* %RCX.i487, align 8
  %757 = lshr i64 %756, 63
  %758 = add i64 %756, %752
  store i64 %758, i64* %RAX.i499, align 8
  %759 = icmp ult i64 %758, %752
  %760 = icmp ult i64 %758, %756
  %761 = or i1 %759, %760
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %114, align 1
  %763 = trunc i64 %758 to i32
  %764 = and i32 %763, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %115, align 1
  %769 = xor i64 %752, %758
  %770 = lshr i64 %769, 4
  %771 = trunc i64 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %116, align 1
  %773 = icmp eq i64 %758, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %117, align 1
  %775 = lshr i64 %758, 63
  %776 = trunc i64 %775 to i8
  store i8 %776, i8* %118, align 1
  %777 = lshr i64 %752, 63
  %778 = xor i64 %775, %777
  %779 = xor i64 %775, %757
  %780 = add nuw nsw i64 %778, %779
  %781 = icmp eq i64 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %119, align 1
  %783 = add i64 %748, 21
  store i64 %783, i64* %3, align 8
  %784 = load i32, i32* %718, align 4
  %785 = add i32 %784, -1
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RDX.i490, align 8
  %787 = icmp eq i32 %784, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %114, align 1
  %789 = and i32 %785, 255
  %790 = tail call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  store i8 %793, i8* %115, align 1
  %794 = xor i32 %785, %784
  %795 = lshr i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  store i8 %797, i8* %116, align 1
  %798 = icmp eq i32 %785, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %117, align 1
  %800 = lshr i32 %785, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %118, align 1
  %802 = lshr i32 %784, 31
  %803 = xor i32 %800, %802
  %804 = add nuw nsw i32 %803, %802
  %805 = icmp eq i32 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %119, align 1
  %807 = sext i32 %785 to i64
  store i64 %807, i64* %RCX.i487, align 8
  %808 = shl nsw i64 %807, 3
  %809 = add i64 %758, %808
  %810 = add i64 %748, 32
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -32
  %815 = add i64 %748, 36
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RAX.i499, align 8
  %818 = add i64 %813, -64
  %819 = add i64 %748, 40
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RCX.i487, align 8
  %823 = shl nsw i64 %822, 3
  %824 = add i64 %823, %817
  %825 = add i64 %748, 45
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i64*
  %827 = load i64, i64* %826, align 8
  store i64 %827, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %828 = add i64 %813, -16
  %829 = add i64 %748, 49
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX.i499, align 8
  %832 = add i64 %748, 52
  store i64 %832, i64* %3, align 8
  %833 = load i32, i32* %820, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDX.i490, align 8
  %835 = add i64 %813, -60
  %836 = add i64 %748, 55
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sub i32 %833, %838
  %840 = add i32 %839, -1
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RDX.i490, align 8
  %842 = sext i32 %840 to i64
  %843 = mul nsw i64 %842, 32000
  store i64 %843, i64* %RCX.i487, align 8
  %844 = lshr i64 %843, 63
  %845 = add i64 %843, %831
  store i64 %845, i64* %RAX.i499, align 8
  %846 = icmp ult i64 %845, %831
  %847 = icmp ult i64 %845, %843
  %848 = or i1 %846, %847
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %114, align 1
  %850 = trunc i64 %845 to i32
  %851 = and i32 %850, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %115, align 1
  %856 = xor i64 %831, %845
  %857 = lshr i64 %856, 4
  %858 = trunc i64 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %116, align 1
  %860 = icmp eq i64 %845, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %117, align 1
  %862 = lshr i64 %845, 63
  %863 = trunc i64 %862 to i8
  store i8 %863, i8* %118, align 1
  %864 = lshr i64 %831, 63
  %865 = xor i64 %862, %864
  %866 = xor i64 %862, %844
  %867 = add nuw nsw i64 %865, %866
  %868 = icmp eq i64 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %119, align 1
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -64
  %872 = add i64 %748, 74
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = add i32 %874, -1
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RDX.i490, align 8
  %877 = icmp eq i32 %874, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %114, align 1
  %879 = and i32 %875, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %115, align 1
  %884 = xor i32 %875, %874
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %116, align 1
  %888 = icmp eq i32 %875, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %117, align 1
  %890 = lshr i32 %875, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %118, align 1
  %892 = lshr i32 %874, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %119, align 1
  %897 = sext i32 %875 to i64
  store i64 %897, i64* %RCX.i487, align 8
  %898 = shl nsw i64 %897, 3
  %899 = add i64 %845, %898
  %900 = add i64 %748, 85
  store i64 %900, i64* %3, align 8
  %901 = load double, double* %75, align 1
  %902 = inttoptr i64 %899 to double*
  %903 = load double, double* %902, align 8
  %904 = fmul double %901, %903
  store double %904, double* %75, align 1
  %905 = load double, double* %20, align 1
  %906 = fadd double %905, %904
  store double %906, double* %20, align 1
  %907 = add i64 %870, -16
  %908 = add i64 %748, 93
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RAX.i499, align 8
  %911 = add i64 %870, -60
  %912 = add i64 %748, 97
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = sext i32 %914 to i64
  %916 = mul nsw i64 %915, 32000
  store i64 %916, i64* %RCX.i487, align 8
  %917 = lshr i64 %916, 63
  %918 = add i64 %916, %910
  store i64 %918, i64* %RAX.i499, align 8
  %919 = icmp ult i64 %918, %910
  %920 = icmp ult i64 %918, %916
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %114, align 1
  %923 = trunc i64 %918 to i32
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %115, align 1
  %929 = xor i64 %910, %918
  %930 = lshr i64 %929, 4
  %931 = trunc i64 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %116, align 1
  %933 = icmp eq i64 %918, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %117, align 1
  %935 = lshr i64 %918, 63
  %936 = trunc i64 %935 to i8
  store i8 %936, i8* %118, align 1
  %937 = lshr i64 %910, 63
  %938 = xor i64 %935, %937
  %939 = xor i64 %935, %917
  %940 = add nuw nsw i64 %938, %939
  %941 = icmp eq i64 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %119, align 1
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -64
  %945 = add i64 %748, 111
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  store i64 %948, i64* %RCX.i487, align 8
  %949 = shl nsw i64 %948, 3
  %950 = add i64 %949, %918
  %951 = add i64 %748, 116
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to double*
  store double %906, double* %952, align 8
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -60
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 3
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = add i32 %958, 1
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RAX.i499, align 8
  %961 = icmp eq i32 %958, -1
  %962 = icmp eq i32 %959, 0
  %963 = or i1 %961, %962
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %114, align 1
  %965 = and i32 %959, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %115, align 1
  %970 = xor i32 %959, %958
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %116, align 1
  %974 = zext i1 %962 to i8
  store i8 %974, i8* %117, align 1
  %975 = lshr i32 %959, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %118, align 1
  %977 = lshr i32 %958, 31
  %978 = xor i32 %975, %977
  %979 = add nuw nsw i32 %978, %975
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %119, align 1
  %982 = add i64 %955, 9
  store i64 %982, i64* %3, align 8
  store i32 %959, i32* %957, align 4
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, -142
  store i64 %984, i64* %3, align 8
  br label %block_.L_400d66

block_.L_400df9:                                  ; preds = %block_.L_400d66
  %985 = add i64 %710, -32
  %986 = add i64 %748, 4
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i64*
  %988 = load i64, i64* %987, align 8
  store i64 %988, i64* %RAX.i499, align 8
  %989 = add i64 %748, 8
  store i64 %989, i64* %3, align 8
  %990 = load i32, i32* %718, align 4
  %991 = sext i32 %990 to i64
  store i64 %991, i64* %RCX.i487, align 8
  %992 = shl nsw i64 %991, 3
  %993 = add i64 %992, %988
  %994 = add i64 %748, 13
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %997 = add i64 %710, -16
  %998 = add i64 %748, 17
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %RAX.i499, align 8
  %1001 = add i64 %748, 21
  store i64 %1001, i64* %3, align 8
  %1002 = load i32, i32* %718, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = mul nsw i64 %1003, 32000
  store i64 %1004, i64* %RCX.i487, align 8
  %1005 = lshr i64 %1004, 63
  %1006 = add i64 %1004, %1000
  store i64 %1006, i64* %RAX.i499, align 8
  %1007 = icmp ult i64 %1006, %1000
  %1008 = icmp ult i64 %1006, %1004
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %114, align 1
  %1011 = trunc i64 %1006 to i32
  %1012 = and i32 %1011, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %115, align 1
  %1017 = xor i64 %1000, %1006
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %116, align 1
  %1021 = icmp eq i64 %1006, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %117, align 1
  %1023 = lshr i64 %1006, 63
  %1024 = trunc i64 %1023 to i8
  store i8 %1024, i8* %118, align 1
  %1025 = lshr i64 %1000, 63
  %1026 = xor i64 %1023, %1025
  %1027 = xor i64 %1023, %1005
  %1028 = add nuw nsw i64 %1026, %1027
  %1029 = icmp eq i64 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %119, align 1
  %1031 = add i64 %748, 35
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %718, align 4
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %RCX.i487, align 8
  %1034 = shl nsw i64 %1033, 3
  %1035 = add i64 %1034, %1006
  %1036 = add i64 %748, 40
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  store i64 %996, i64* %1037, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -64
  %1040 = load i64, i64* %3, align 8
  %1041 = add i64 %1040, 3
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1039 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = add i32 %1043, 1
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i499, align 8
  %1046 = icmp eq i32 %1043, -1
  %1047 = icmp eq i32 %1044, 0
  %1048 = or i1 %1046, %1047
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %114, align 1
  %1050 = and i32 %1044, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %115, align 1
  %1055 = xor i32 %1044, %1043
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %116, align 1
  %1059 = zext i1 %1047 to i8
  store i8 %1059, i8* %117, align 1
  %1060 = lshr i32 %1044, 31
  %1061 = trunc i32 %1060 to i8
  store i8 %1061, i8* %118, align 1
  %1062 = lshr i32 %1043, 31
  %1063 = xor i32 %1060, %1062
  %1064 = add nuw nsw i32 %1063, %1060
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %119, align 1
  %1067 = add i64 %1040, 9
  store i64 %1067, i64* %3, align 8
  store i32 %1044, i32* %1042, align 4
  %1068 = load i64, i64* %3, align 8
  %1069 = add i64 %1068, -560
  store i64 %1069, i64* %3, align 8
  br label %block_.L_400bfa

block_.L_400e2f:                                  ; preds = %block_.L_400bfa
  %1070 = add i64 %121, -60
  %1071 = add i64 %157, 7
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  store i32 0, i32* %1072, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400e36

block_.L_400e36:                                  ; preds = %block_400e42, %block_.L_400e2f
  %1073 = phi i64 [ %1220, %block_400e42 ], [ %.pre20, %block_.L_400e2f ]
  %1074 = load i64, i64* %RBP.i, align 8
  %1075 = add i64 %1074, -60
  %1076 = add i64 %1073, 3
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i499, align 8
  %1080 = add i64 %1074, -4
  %1081 = add i64 %1073, 6
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = sub i32 %1078, %1083
  %1085 = icmp ult i32 %1078, %1083
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %114, align 1
  %1087 = and i32 %1084, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %115, align 1
  %1092 = xor i32 %1083, %1078
  %1093 = xor i32 %1092, %1084
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %116, align 1
  %1097 = icmp eq i32 %1084, 0
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %117, align 1
  %1099 = lshr i32 %1084, 31
  %1100 = trunc i32 %1099 to i8
  store i8 %1100, i8* %118, align 1
  %1101 = lshr i32 %1078, 31
  %1102 = lshr i32 %1083, 31
  %1103 = xor i32 %1102, %1101
  %1104 = xor i32 %1099, %1101
  %1105 = add nuw nsw i32 %1104, %1103
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %119, align 1
  %1108 = icmp ne i8 %1100, 0
  %1109 = xor i1 %1108, %1106
  %.v24 = select i1 %1109, i64 12, i64 71
  %1110 = add i64 %1073, %.v24
  store i64 %1110, i64* %3, align 8
  br i1 %1109, label %block_400e42, label %block_.L_400e7d

block_400e42:                                     ; preds = %block_.L_400e36
  %1111 = add i64 %1074, -16
  %1112 = add i64 %1110, 4
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i64*
  %1114 = load i64, i64* %1113, align 8
  store i64 %1114, i64* %RAX.i499, align 8
  %1115 = add i64 %1110, 8
  store i64 %1115, i64* %3, align 8
  %1116 = load i32, i32* %1077, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = mul nsw i64 %1117, 32000
  store i64 %1118, i64* %RCX.i487, align 8
  %1119 = lshr i64 %1118, 63
  %1120 = add i64 %1118, %1114
  store i64 %1120, i64* %RAX.i499, align 8
  %1121 = icmp ult i64 %1120, %1114
  %1122 = icmp ult i64 %1120, %1118
  %1123 = or i1 %1121, %1122
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %114, align 1
  %1125 = trunc i64 %1120 to i32
  %1126 = and i32 %1125, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %115, align 1
  %1131 = xor i64 %1114, %1120
  %1132 = lshr i64 %1131, 4
  %1133 = trunc i64 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %116, align 1
  %1135 = icmp eq i64 %1120, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %117, align 1
  %1137 = lshr i64 %1120, 63
  %1138 = trunc i64 %1137 to i8
  store i8 %1138, i8* %118, align 1
  %1139 = lshr i64 %1114, 63
  %1140 = xor i64 %1137, %1139
  %1141 = xor i64 %1137, %1119
  %1142 = add nuw nsw i64 %1140, %1141
  %1143 = icmp eq i64 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %119, align 1
  %1145 = add i64 %1110, 21
  store i64 %1145, i64* %3, align 8
  %1146 = load i32, i32* %1082, align 4
  %1147 = add i32 %1146, -1
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RDX.i490, align 8
  %1149 = icmp eq i32 %1146, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %114, align 1
  %1151 = and i32 %1147, 255
  %1152 = tail call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %115, align 1
  %1156 = xor i32 %1147, %1146
  %1157 = lshr i32 %1156, 4
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %116, align 1
  %1160 = icmp eq i32 %1147, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %117, align 1
  %1162 = lshr i32 %1147, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %118, align 1
  %1164 = lshr i32 %1146, 31
  %1165 = xor i32 %1162, %1164
  %1166 = add nuw nsw i32 %1165, %1164
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %119, align 1
  %1169 = sext i32 %1147 to i64
  store i64 %1169, i64* %RCX.i487, align 8
  %1170 = shl nsw i64 %1169, 3
  %1171 = add i64 %1120, %1170
  %1172 = add i64 %1110, 32
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i64*
  %1174 = load i64, i64* %1173, align 8
  store i64 %1174, i64* %21, align 1
  store double 0.000000e+00, double* %23, align 1
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -56
  %1177 = add i64 %1110, 36
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i64*
  %1179 = load i64, i64* %1178, align 8
  store i64 %1179, i64* %RAX.i499, align 8
  %1180 = add i64 %1175, -60
  %1181 = add i64 %1110, 40
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = sext i32 %1183 to i64
  store i64 %1184, i64* %RCX.i487, align 8
  %1185 = shl nsw i64 %1184, 3
  %1186 = add i64 %1185, %1179
  %1187 = add i64 %1110, 45
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  store i64 %1174, i64* %1188, align 8
  %1189 = load i64, i64* %RBP.i, align 8
  %1190 = add i64 %1189, -60
  %1191 = load i64, i64* %3, align 8
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = add i32 %1194, 1
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX.i499, align 8
  %1197 = icmp eq i32 %1194, -1
  %1198 = icmp eq i32 %1195, 0
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %114, align 1
  %1201 = and i32 %1195, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %115, align 1
  %1206 = xor i32 %1195, %1194
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %116, align 1
  %1210 = zext i1 %1198 to i8
  store i8 %1210, i8* %117, align 1
  %1211 = lshr i32 %1195, 31
  %1212 = trunc i32 %1211 to i8
  store i8 %1212, i8* %118, align 1
  %1213 = lshr i32 %1194, 31
  %1214 = xor i32 %1211, %1213
  %1215 = add nuw nsw i32 %1214, %1211
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %119, align 1
  %1218 = add i64 %1191, 9
  store i64 %1218, i64* %3, align 8
  store i32 %1195, i32* %1193, align 4
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, -66
  store i64 %1220, i64* %3, align 8
  br label %block_.L_400e36

block_.L_400e7d:                                  ; preds = %block_.L_400e36
  %1221 = add i64 %1110, 1
  store i64 %1221, i64* %3, align 8
  %1222 = load i64, i64* %6, align 8
  %1223 = add i64 %1222, 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %RBP.i, align 8
  store i64 %1223, i64* %6, align 8
  %1226 = add i64 %1110, 2
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1223 to i64*
  %1228 = load i64, i64* %1227, align 8
  store i64 %1228, i64* %3, align 8
  %1229 = add i64 %1222, 16
  store i64 %1229, i64* %6, align 8
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movsd_0x7d8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2016
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movsd___rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
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
define %struct.Memory* @routine_movsd__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_400e2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jg_.L_400d13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_imulq__0x7d00___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = mul nsw i128 %9, 32000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %18, align 1
  %19 = lshr i64 %11, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %22, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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
define %struct.Memory* @routine_jmpq_.L_400c80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x7d00___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 32000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %18, align 1
  %19 = lshr i64 %11, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %22, align 1
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
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400df9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400bfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400e36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
