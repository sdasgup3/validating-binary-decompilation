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

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_dynprog(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %PC.i, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC.i, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i387 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RDX.i387, align 8
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %RCX.i384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RCX.i384, align 8
  %33 = load i64, i64* %PC.i, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %PC.i, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %R8.i, align 8
  %39 = load i64, i64* %PC.i, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R9.i, align 8
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -60
  %50 = load i64, i64* %PC.i, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -44
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 0, i32* %57, align 4
  %RAX.i373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %EDX.i238 = bitcast %union.anon* %23 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400a78

block_.L_400a78:                                  ; preds = %block_.L_400c7b, %entry
  %64 = phi i64 [ %1240, %block_.L_400c7b ], [ %.pre, %entry ]
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -44
  %67 = add i64 %64, 3
  store i64 %67, i64* %PC.i, align 8
  %68 = inttoptr i64 %66 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %RAX.i373, align 8
  %71 = add i64 %65, -4
  %72 = add i64 %64, 6
  store i64 %72, i64* %PC.i, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = sub i32 %69, %74
  %76 = icmp ult i32 %69, %74
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %58, align 1
  %78 = and i32 %75, 255
  %79 = tail call i32 @llvm.ctpop.i32(i32 %78)
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %59, align 1
  %83 = xor i32 %74, %69
  %84 = xor i32 %83, %75
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %60, align 1
  %88 = icmp eq i32 %75, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %61, align 1
  %90 = lshr i32 %75, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %62, align 1
  %92 = lshr i32 %69, 31
  %93 = lshr i32 %74, 31
  %94 = xor i32 %93, %92
  %95 = xor i32 %90, %92
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %63, align 1
  %99 = icmp ne i8 %91, 0
  %100 = xor i1 %99, %97
  %.v = select i1 %100, i64 12, i64 551
  %101 = add i64 %64, %.v
  store i64 %101, i64* %3, align 8
  br i1 %100, label %block_400a84, label %block_.L_400c9f

block_400a84:                                     ; preds = %block_.L_400a78
  %102 = add i64 %65, -48
  %103 = add i64 %101, 7
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %102 to i32*
  store i32 0, i32* %104, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a8b

block_.L_400a8b:                                  ; preds = %block_.L_400adf, %block_400a84
  %105 = phi i64 [ %295, %block_.L_400adf ], [ %.pre1, %block_400a84 ]
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -48
  %108 = add i64 %105, 3
  store i64 %108, i64* %PC.i, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX.i373, align 8
  %112 = add i64 %106, -8
  %113 = add i64 %105, 6
  store i64 %113, i64* %PC.i, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, -1
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RCX.i384, align 8
  %118 = lshr i32 %116, 31
  %119 = sub i32 %110, %116
  %120 = icmp ult i32 %110, %116
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %58, align 1
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %59, align 1
  %127 = xor i32 %116, %110
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %60, align 1
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %61, align 1
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %62, align 1
  %136 = lshr i32 %110, 31
  %137 = xor i32 %118, %136
  %138 = xor i32 %134, %136
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %63, align 1
  %142 = icmp ne i8 %135, 0
  %143 = xor i1 %142, %140
  %.demorgan = or i1 %132, %143
  %.v6 = select i1 %.demorgan, i64 17, i64 103
  %144 = add i64 %105, %.v6
  store i64 %144, i64* %3, align 8
  br i1 %.demorgan, label %block_400a9c, label %block_.L_400af2

block_400a9c:                                     ; preds = %block_.L_400a8b
  %145 = add i64 %106, -52
  %146 = add i64 %144, 7
  store i64 %146, i64* %PC.i, align 8
  %147 = inttoptr i64 %145 to i32*
  store i32 0, i32* %147, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400aa3

block_.L_400aa3:                                  ; preds = %block_400ab4, %block_400a9c
  %148 = phi i64 [ %264, %block_400ab4 ], [ %.pre2, %block_400a9c ]
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -52
  %151 = add i64 %148, 3
  store i64 %151, i64* %PC.i, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i373, align 8
  %155 = add i64 %149, -8
  %156 = add i64 %148, 6
  store i64 %156, i64* %PC.i, align 8
  %157 = inttoptr i64 %155 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %158, -1
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RCX.i384, align 8
  %161 = lshr i32 %159, 31
  %162 = sub i32 %153, %159
  %163 = icmp ult i32 %153, %159
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %58, align 1
  %165 = and i32 %162, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %59, align 1
  %170 = xor i32 %159, %153
  %171 = xor i32 %170, %162
  %172 = lshr i32 %171, 4
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  store i8 %174, i8* %60, align 1
  %175 = icmp eq i32 %162, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %61, align 1
  %177 = lshr i32 %162, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %62, align 1
  %179 = lshr i32 %153, 31
  %180 = xor i32 %161, %179
  %181 = xor i32 %177, %179
  %182 = add nuw nsw i32 %181, %180
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %63, align 1
  %185 = icmp ne i8 %178, 0
  %186 = xor i1 %185, %183
  %.demorgan7 = or i1 %175, %186
  %.v8 = select i1 %.demorgan7, i64 17, i64 60
  %187 = add i64 %148, %.v8
  store i64 %187, i64* %3, align 8
  br i1 %.demorgan7, label %block_400ab4, label %block_.L_400adf

block_400ab4:                                     ; preds = %block_.L_400aa3
  %188 = add i64 %149, -16
  %189 = add i64 %187, 4
  store i64 %189, i64* %PC.i, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RAX.i373, align 8
  %192 = add i64 %149, -48
  %193 = add i64 %187, 8
  store i64 %193, i64* %PC.i, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, 200
  store i64 %197, i64* %RCX.i384, align 8
  %198 = lshr i64 %197, 63
  %199 = add i64 %197, %191
  store i64 %199, i64* %RAX.i373, align 8
  %200 = icmp ult i64 %199, %191
  %201 = icmp ult i64 %199, %197
  %202 = or i1 %200, %201
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %58, align 1
  %204 = trunc i64 %199 to i32
  %205 = and i32 %204, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %59, align 1
  %210 = xor i64 %197, %191
  %211 = xor i64 %210, %199
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %60, align 1
  %215 = icmp eq i64 %199, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %61, align 1
  %217 = lshr i64 %199, 63
  %218 = trunc i64 %217 to i8
  store i8 %218, i8* %62, align 1
  %219 = lshr i64 %191, 63
  %220 = xor i64 %217, %219
  %221 = xor i64 %217, %198
  %222 = add nuw nsw i64 %220, %221
  %223 = icmp eq i64 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %63, align 1
  %225 = add i64 %187, 22
  store i64 %225, i64* %PC.i, align 8
  %226 = load i32, i32* %152, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RCX.i384, align 8
  %228 = shl nsw i64 %227, 2
  %229 = add i64 %228, %199
  %230 = add i64 %187, 29
  store i64 %230, i64* %PC.i, align 8
  %231 = inttoptr i64 %229 to i32*
  store i32 0, i32* %231, align 4
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -52
  %234 = load i64, i64* %PC.i, align 8
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC.i, align 8
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = add i32 %237, 1
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX.i373, align 8
  %240 = icmp eq i32 %237, -1
  %241 = icmp eq i32 %238, 0
  %242 = or i1 %240, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %58, align 1
  %244 = and i32 %238, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %59, align 1
  %249 = xor i32 %237, %238
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %60, align 1
  %253 = icmp eq i32 %238, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %61, align 1
  %255 = lshr i32 %238, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %62, align 1
  %257 = lshr i32 %237, 31
  %258 = xor i32 %255, %257
  %259 = add nuw nsw i32 %258, %255
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %63, align 1
  %262 = add i64 %234, 9
  store i64 %262, i64* %PC.i, align 8
  store i32 %238, i32* %236, align 4
  %263 = load i64, i64* %PC.i, align 8
  %264 = add i64 %263, -55
  store i64 %264, i64* %3, align 8
  br label %block_.L_400aa3

block_.L_400adf:                                  ; preds = %block_.L_400aa3
  %265 = add i64 %149, -48
  %266 = add i64 %187, 8
  store i64 %266, i64* %PC.i, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = add i32 %268, 1
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i373, align 8
  %271 = icmp eq i32 %268, -1
  %272 = icmp eq i32 %269, 0
  %273 = or i1 %271, %272
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %58, align 1
  %275 = and i32 %269, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %59, align 1
  %280 = xor i32 %268, %269
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %60, align 1
  %284 = icmp eq i32 %269, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %61, align 1
  %286 = lshr i32 %269, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %62, align 1
  %288 = lshr i32 %268, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %286
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %63, align 1
  %293 = add i64 %187, 14
  store i64 %293, i64* %PC.i, align 8
  store i32 %269, i32* %267, align 4
  %294 = load i64, i64* %PC.i, align 8
  %295 = add i64 %294, -98
  store i64 %295, i64* %3, align 8
  br label %block_.L_400a8b

block_.L_400af2:                                  ; preds = %block_.L_400a8b
  %296 = add i64 %144, 7
  store i64 %296, i64* %PC.i, align 8
  store i32 0, i32* %109, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400af9

block_.L_400af9:                                  ; preds = %block_.L_400c68, %block_.L_400af2
  %297 = phi i64 [ %1140, %block_.L_400c68 ], [ %.pre3, %block_.L_400af2 ]
  %298 = load i64, i64* %RBP.i, align 8
  %299 = add i64 %298, -48
  %300 = add i64 %297, 3
  store i64 %300, i64* %PC.i, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i373, align 8
  %304 = add i64 %298, -8
  %305 = add i64 %297, 6
  store i64 %305, i64* %PC.i, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, -2
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RCX.i384, align 8
  %310 = lshr i32 %308, 31
  %311 = sub i32 %302, %308
  %312 = icmp ult i32 %302, %308
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %58, align 1
  %314 = and i32 %311, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %59, align 1
  %319 = xor i32 %308, %302
  %320 = xor i32 %319, %311
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %60, align 1
  %324 = icmp eq i32 %311, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %61, align 1
  %326 = lshr i32 %311, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %62, align 1
  %328 = lshr i32 %302, 31
  %329 = xor i32 %310, %328
  %330 = xor i32 %326, %328
  %331 = add nuw nsw i32 %330, %329
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %63, align 1
  %334 = icmp ne i8 %327, 0
  %335 = xor i1 %334, %332
  %.demorgan9 = or i1 %324, %335
  %.v10 = select i1 %.demorgan9, i64 17, i64 386
  %336 = add i64 %297, %.v10
  store i64 %336, i64* %3, align 8
  br i1 %.demorgan9, label %block_400b0a, label %block_.L_400c7b

block_400b0a:                                     ; preds = %block_.L_400af9
  %337 = add i64 %336, 3
  store i64 %337, i64* %PC.i, align 8
  %338 = load i32, i32* %301, align 4
  %339 = add i32 %338, 1
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RAX.i373, align 8
  %341 = icmp eq i32 %338, -1
  %342 = icmp eq i32 %339, 0
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %58, align 1
  %345 = and i32 %339, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %59, align 1
  %350 = xor i32 %338, %339
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %60, align 1
  %354 = icmp eq i32 %339, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %61, align 1
  %356 = lshr i32 %339, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %62, align 1
  %358 = lshr i32 %338, 31
  %359 = xor i32 %356, %358
  %360 = add nuw nsw i32 %359, %356
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %63, align 1
  %363 = add i64 %298, -52
  %364 = add i64 %336, 9
  store i64 %364, i64* %PC.i, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 %339, i32* %365, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b13

block_.L_400b13:                                  ; preds = %block_.L_400bfc, %block_400b0a
  %366 = phi i64 [ %1109, %block_.L_400bfc ], [ %.pre4, %block_400b0a ]
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -52
  %369 = add i64 %366, 3
  store i64 %369, i64* %PC.i, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX.i373, align 8
  %373 = add i64 %367, -8
  %374 = add i64 %366, 6
  store i64 %374, i64* %PC.i, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, -1
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RCX.i384, align 8
  %379 = lshr i32 %377, 31
  %380 = sub i32 %371, %377
  %381 = icmp ult i32 %371, %377
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %58, align 1
  %383 = and i32 %380, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %59, align 1
  %388 = xor i32 %377, %371
  %389 = xor i32 %388, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %60, align 1
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %61, align 1
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %62, align 1
  %397 = lshr i32 %371, 31
  %398 = xor i32 %379, %397
  %399 = xor i32 %395, %397
  %400 = add nuw nsw i32 %399, %398
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %63, align 1
  %403 = icmp ne i8 %396, 0
  %404 = xor i1 %403, %401
  %.demorgan11 = or i1 %393, %404
  %.v12 = select i1 %.demorgan11, i64 17, i64 341
  %405 = add i64 %366, %.v12
  store i64 %405, i64* %3, align 8
  br i1 %.demorgan11, label %block_400b24, label %block_.L_400c68

block_400b24:                                     ; preds = %block_.L_400b13
  %406 = add i64 %367, -32
  %407 = add i64 %405, 4
  store i64 %407, i64* %PC.i, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RAX.i373, align 8
  %410 = add i64 %367, -48
  %411 = add i64 %405, 8
  store i64 %411, i64* %PC.i, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = mul nsw i64 %414, 10000
  store i64 %415, i64* %RCX.i384, align 8
  %416 = lshr i64 %415, 63
  %417 = add i64 %415, %409
  store i64 %417, i64* %RAX.i373, align 8
  %418 = icmp ult i64 %417, %409
  %419 = icmp ult i64 %417, %415
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %58, align 1
  %422 = trunc i64 %417 to i32
  %423 = and i32 %422, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %59, align 1
  %428 = xor i64 %415, %409
  %429 = xor i64 %428, %417
  %430 = lshr i64 %429, 4
  %431 = trunc i64 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %60, align 1
  %433 = icmp eq i64 %417, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %61, align 1
  %435 = lshr i64 %417, 63
  %436 = trunc i64 %435 to i8
  store i8 %436, i8* %62, align 1
  %437 = lshr i64 %409, 63
  %438 = xor i64 %435, %437
  %439 = xor i64 %435, %416
  %440 = add nuw nsw i64 %438, %439
  %441 = icmp eq i64 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %63, align 1
  %443 = add i64 %405, 22
  store i64 %443, i64* %PC.i, align 8
  %444 = load i32, i32* %370, align 4
  %445 = sext i32 %444 to i64
  %446 = mul nsw i64 %445, 200
  store i64 %446, i64* %RCX.i384, align 8
  %447 = lshr i64 %446, 63
  %448 = add i64 %446, %417
  store i64 %448, i64* %RAX.i373, align 8
  %449 = icmp ult i64 %448, %417
  %450 = icmp ult i64 %448, %446
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %58, align 1
  %453 = trunc i64 %448 to i32
  %454 = and i32 %453, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %59, align 1
  %459 = xor i64 %446, %417
  %460 = xor i64 %459, %448
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %60, align 1
  %464 = icmp eq i64 %448, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %61, align 1
  %466 = lshr i64 %448, 63
  %467 = trunc i64 %466 to i8
  store i8 %467, i8* %62, align 1
  %468 = xor i64 %466, %435
  %469 = xor i64 %466, %447
  %470 = add nuw nsw i64 %468, %469
  %471 = icmp eq i64 %470, 2
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %63, align 1
  %473 = load i64, i64* %RBP.i, align 8
  %474 = add i64 %473, -48
  %475 = add i64 %405, 36
  store i64 %475, i64* %PC.i, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX.i384, align 8
  %479 = shl nsw i64 %478, 2
  %480 = add i64 %479, %448
  %481 = add i64 %405, 43
  store i64 %481, i64* %PC.i, align 8
  %482 = inttoptr i64 %480 to i32*
  store i32 0, i32* %482, align 4
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -48
  %485 = load i64, i64* %PC.i, align 8
  %486 = add i64 %485, 3
  store i64 %486, i64* %PC.i, align 8
  %487 = inttoptr i64 %484 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, 1
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RDX.i387, align 8
  %491 = icmp eq i32 %488, -1
  %492 = icmp eq i32 %489, 0
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %58, align 1
  %495 = and i32 %489, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %59, align 1
  %500 = xor i32 %488, %489
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %60, align 1
  %504 = icmp eq i32 %489, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %61, align 1
  %506 = lshr i32 %489, 31
  %507 = trunc i32 %506 to i8
  store i8 %507, i8* %62, align 1
  %508 = lshr i32 %488, 31
  %509 = xor i32 %506, %508
  %510 = add nuw nsw i32 %509, %506
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %63, align 1
  %513 = add i64 %483, -56
  %514 = add i64 %485, 9
  store i64 %514, i64* %PC.i, align 8
  %515 = inttoptr i64 %513 to i32*
  store i32 %489, i32* %515, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b58

block_.L_400b58:                                  ; preds = %block_400b69, %block_400b24
  %516 = phi i64 [ %920, %block_400b69 ], [ %.pre5, %block_400b24 ]
  %517 = load i64, i64* %RBP.i, align 8
  %518 = add i64 %517, -56
  %519 = add i64 %516, 3
  store i64 %519, i64* %PC.i, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX.i373, align 8
  %523 = add i64 %517, -52
  %524 = add i64 %516, 6
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = add i32 %526, -1
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RCX.i384, align 8
  %529 = lshr i32 %527, 31
  %530 = sub i32 %521, %527
  %531 = icmp ult i32 %521, %527
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %58, align 1
  %533 = and i32 %530, 255
  %534 = tail call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %59, align 1
  %538 = xor i32 %527, %521
  %539 = xor i32 %538, %530
  %540 = lshr i32 %539, 4
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %60, align 1
  %543 = icmp eq i32 %530, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %61, align 1
  %545 = lshr i32 %530, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %62, align 1
  %547 = lshr i32 %521, 31
  %548 = xor i32 %529, %547
  %549 = xor i32 %545, %547
  %550 = add nuw nsw i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %63, align 1
  %553 = icmp ne i8 %546, 0
  %554 = xor i1 %553, %551
  %.demorgan13 = or i1 %543, %554
  %.v14 = select i1 %.demorgan13, i64 17, i64 164
  %555 = add i64 %516, %.v14
  %556 = add i64 %517, -32
  %557 = add i64 %555, 4
  store i64 %557, i64* %PC.i, align 8
  %558 = inttoptr i64 %556 to i64*
  %559 = load i64, i64* %558, align 8
  store i64 %559, i64* %RAX.i373, align 8
  %560 = add i64 %517, -48
  %561 = add i64 %555, 8
  store i64 %561, i64* %PC.i, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  %565 = mul nsw i64 %564, 10000
  store i64 %565, i64* %RCX.i384, align 8
  %566 = lshr i64 %565, 63
  %567 = add i64 %565, %559
  store i64 %567, i64* %RAX.i373, align 8
  %568 = icmp ult i64 %567, %559
  %569 = icmp ult i64 %567, %565
  %570 = or i1 %568, %569
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %58, align 1
  %572 = trunc i64 %567 to i32
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %59, align 1
  %578 = xor i64 %565, %559
  %579 = xor i64 %578, %567
  %580 = lshr i64 %579, 4
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %60, align 1
  %583 = icmp eq i64 %567, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %61, align 1
  %585 = lshr i64 %567, 63
  %586 = trunc i64 %585 to i8
  store i8 %586, i8* %62, align 1
  %587 = lshr i64 %559, 63
  %588 = xor i64 %585, %587
  %589 = xor i64 %585, %566
  %590 = add nuw nsw i64 %588, %589
  %591 = icmp eq i64 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %63, align 1
  %593 = add i64 %555, 22
  store i64 %593, i64* %PC.i, align 8
  %594 = load i32, i32* %525, align 4
  %595 = sext i32 %594 to i64
  %596 = mul nsw i64 %595, 200
  store i64 %596, i64* %RCX.i384, align 8
  %597 = lshr i64 %596, 63
  %598 = add i64 %555, 32
  store i64 %598, i64* %PC.i, align 8
  %599 = add i64 %596, %567
  store i64 %599, i64* %RAX.i373, align 8
  %600 = icmp ult i64 %599, %567
  %601 = icmp ult i64 %599, %596
  %602 = or i1 %600, %601
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %58, align 1
  %604 = trunc i64 %599 to i32
  %605 = and i32 %604, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %59, align 1
  %610 = xor i64 %596, %567
  %611 = xor i64 %610, %599
  %612 = lshr i64 %611, 4
  %613 = trunc i64 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %60, align 1
  %615 = icmp eq i64 %599, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %61, align 1
  %617 = lshr i64 %599, 63
  %618 = trunc i64 %617 to i8
  store i8 %618, i8* %62, align 1
  %619 = xor i64 %617, %585
  %620 = xor i64 %617, %597
  %621 = add nuw nsw i64 %619, %620
  %622 = icmp eq i64 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %63, align 1
  %624 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan13, label %block_400b69, label %block_.L_400bfc

block_400b69:                                     ; preds = %block_.L_400b58
  %625 = add i64 %624, -56
  %626 = add i64 %555, 35
  store i64 %626, i64* %PC.i, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = add i32 %628, -1
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RDX.i387, align 8
  %631 = icmp eq i32 %628, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %58, align 1
  %633 = and i32 %629, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %59, align 1
  %638 = xor i32 %628, %629
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %60, align 1
  %642 = icmp eq i32 %629, 0
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %61, align 1
  %644 = lshr i32 %629, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %62, align 1
  %646 = lshr i32 %628, 31
  %647 = xor i32 %644, %646
  %648 = add nuw nsw i32 %647, %646
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %63, align 1
  %651 = sext i32 %629 to i64
  store i64 %651, i64* %RCX.i384, align 8
  %652 = shl nsw i64 %651, 2
  %653 = add i64 %652, %599
  %654 = add i64 %555, 44
  store i64 %654, i64* %PC.i, align 8
  %655 = inttoptr i64 %653 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RDX.i387, align 8
  %658 = add i64 %624, -16
  %659 = add i64 %555, 48
  store i64 %659, i64* %PC.i, align 8
  %660 = inttoptr i64 %658 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RAX.i373, align 8
  %662 = add i64 %624, -48
  %663 = add i64 %555, 52
  store i64 %663, i64* %PC.i, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  %667 = mul nsw i64 %666, 200
  store i64 %667, i64* %RCX.i384, align 8
  %668 = lshr i64 %667, 63
  %669 = add i64 %667, %661
  store i64 %669, i64* %RAX.i373, align 8
  %670 = icmp ult i64 %669, %661
  %671 = icmp ult i64 %669, %667
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %58, align 1
  %674 = trunc i64 %669 to i32
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %59, align 1
  %680 = xor i64 %667, %661
  %681 = xor i64 %680, %669
  %682 = lshr i64 %681, 4
  %683 = trunc i64 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %60, align 1
  %685 = icmp eq i64 %669, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %61, align 1
  %687 = lshr i64 %669, 63
  %688 = trunc i64 %687 to i8
  store i8 %688, i8* %62, align 1
  %689 = lshr i64 %661, 63
  %690 = xor i64 %687, %689
  %691 = xor i64 %687, %668
  %692 = add nuw nsw i64 %690, %691
  %693 = icmp eq i64 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %63, align 1
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -56
  %697 = add i64 %555, 66
  store i64 %697, i64* %PC.i, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RCX.i384, align 8
  %701 = shl nsw i64 %700, 2
  %702 = add i64 %701, %669
  %703 = add i64 %555, 69
  store i64 %703, i64* %PC.i, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = add i32 %705, %656
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RDX.i387, align 8
  %708 = icmp ult i32 %706, %656
  %709 = icmp ult i32 %706, %705
  %710 = or i1 %708, %709
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %58, align 1
  %712 = and i32 %706, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %59, align 1
  %717 = xor i32 %705, %656
  %718 = xor i32 %717, %706
  %719 = lshr i32 %718, 4
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %60, align 1
  %722 = icmp eq i32 %706, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %61, align 1
  %724 = lshr i32 %706, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %62, align 1
  %726 = lshr i32 %656, 31
  %727 = lshr i32 %705, 31
  %728 = xor i32 %724, %726
  %729 = xor i32 %724, %727
  %730 = add nuw nsw i32 %728, %729
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %63, align 1
  %733 = add i64 %695, -16
  %734 = add i64 %555, 73
  store i64 %734, i64* %PC.i, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %RAX.i373, align 8
  %737 = add i64 %555, 77
  store i64 %737, i64* %PC.i, align 8
  %738 = load i32, i32* %698, align 4
  %739 = sext i32 %738 to i64
  %740 = mul nsw i64 %739, 200
  store i64 %740, i64* %RCX.i384, align 8
  %741 = lshr i64 %740, 63
  %742 = add i64 %740, %736
  store i64 %742, i64* %RAX.i373, align 8
  %743 = icmp ult i64 %742, %736
  %744 = icmp ult i64 %742, %740
  %745 = or i1 %743, %744
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %58, align 1
  %747 = trunc i64 %742 to i32
  %748 = and i32 %747, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %59, align 1
  %753 = xor i64 %740, %736
  %754 = xor i64 %753, %742
  %755 = lshr i64 %754, 4
  %756 = trunc i64 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %60, align 1
  %758 = icmp eq i64 %742, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %61, align 1
  %760 = lshr i64 %742, 63
  %761 = trunc i64 %760 to i8
  store i8 %761, i8* %62, align 1
  %762 = lshr i64 %736, 63
  %763 = xor i64 %760, %762
  %764 = xor i64 %760, %741
  %765 = add nuw nsw i64 %763, %764
  %766 = icmp eq i64 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %63, align 1
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -52
  %770 = add i64 %555, 91
  store i64 %770, i64* %PC.i, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sext i32 %772 to i64
  store i64 %773, i64* %RCX.i384, align 8
  %774 = load i64, i64* %RDX.i387, align 8
  %775 = shl nsw i64 %773, 2
  %776 = add i64 %775, %742
  %777 = add i64 %555, 94
  store i64 %777, i64* %PC.i, align 8
  %778 = trunc i64 %774 to i32
  %779 = inttoptr i64 %776 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = add i32 %780, %778
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RDX.i387, align 8
  %783 = icmp ult i32 %781, %778
  %784 = icmp ult i32 %781, %780
  %785 = or i1 %783, %784
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %58, align 1
  %787 = and i32 %781, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %59, align 1
  %792 = xor i32 %780, %778
  %793 = xor i32 %792, %781
  %794 = lshr i32 %793, 4
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  store i8 %796, i8* %60, align 1
  %797 = icmp eq i32 %781, 0
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %61, align 1
  %799 = lshr i32 %781, 31
  %800 = trunc i32 %799 to i8
  store i8 %800, i8* %62, align 1
  %801 = lshr i32 %778, 31
  %802 = lshr i32 %780, 31
  %803 = xor i32 %799, %801
  %804 = xor i32 %799, %802
  %805 = add nuw nsw i32 %803, %804
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %63, align 1
  %808 = add i64 %768, -32
  %809 = add i64 %555, 98
  store i64 %809, i64* %PC.i, align 8
  %810 = inttoptr i64 %808 to i64*
  %811 = load i64, i64* %810, align 8
  store i64 %811, i64* %RAX.i373, align 8
  %812 = add i64 %768, -48
  %813 = add i64 %555, 102
  store i64 %813, i64* %PC.i, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sext i32 %815 to i64
  %817 = mul nsw i64 %816, 10000
  store i64 %817, i64* %RCX.i384, align 8
  %818 = lshr i64 %817, 63
  %819 = add i64 %817, %811
  store i64 %819, i64* %RAX.i373, align 8
  %820 = icmp ult i64 %819, %811
  %821 = icmp ult i64 %819, %817
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %58, align 1
  %824 = trunc i64 %819 to i32
  %825 = and i32 %824, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %59, align 1
  %830 = xor i64 %817, %811
  %831 = xor i64 %830, %819
  %832 = lshr i64 %831, 4
  %833 = trunc i64 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %60, align 1
  %835 = icmp eq i64 %819, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %61, align 1
  %837 = lshr i64 %819, 63
  %838 = trunc i64 %837 to i8
  store i8 %838, i8* %62, align 1
  %839 = lshr i64 %811, 63
  %840 = xor i64 %837, %839
  %841 = xor i64 %837, %818
  %842 = add nuw nsw i64 %840, %841
  %843 = icmp eq i64 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %63, align 1
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -52
  %847 = add i64 %555, 116
  store i64 %847, i64* %PC.i, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = sext i32 %849 to i64
  %851 = mul nsw i64 %850, 200
  store i64 %851, i64* %RCX.i384, align 8
  %852 = lshr i64 %851, 63
  %853 = add i64 %851, %819
  store i64 %853, i64* %RAX.i373, align 8
  %854 = icmp ult i64 %853, %819
  %855 = icmp ult i64 %853, %851
  %856 = or i1 %854, %855
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %58, align 1
  %858 = trunc i64 %853 to i32
  %859 = and i32 %858, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %59, align 1
  %864 = xor i64 %851, %819
  %865 = xor i64 %864, %853
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %60, align 1
  %869 = icmp eq i64 %853, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %61, align 1
  %871 = lshr i64 %853, 63
  %872 = trunc i64 %871 to i8
  store i8 %872, i8* %62, align 1
  %873 = xor i64 %871, %837
  %874 = xor i64 %871, %852
  %875 = add nuw nsw i64 %873, %874
  %876 = icmp eq i64 %875, 2
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %63, align 1
  %878 = add i64 %845, -56
  %879 = add i64 %555, 130
  store i64 %879, i64* %PC.i, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = sext i32 %881 to i64
  store i64 %882, i64* %RCX.i384, align 8
  %883 = shl nsw i64 %882, 2
  %884 = add i64 %883, %853
  %885 = load i32, i32* %EDX.i238, align 4
  %886 = add i64 %555, 133
  store i64 %886, i64* %PC.i, align 8
  %887 = inttoptr i64 %884 to i32*
  store i32 %885, i32* %887, align 4
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -56
  %890 = load i64, i64* %PC.i, align 8
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC.i, align 8
  %892 = inttoptr i64 %889 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = add i32 %893, 1
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX.i373, align 8
  %896 = icmp eq i32 %893, -1
  %897 = icmp eq i32 %894, 0
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %58, align 1
  %900 = and i32 %894, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %59, align 1
  %905 = xor i32 %893, %894
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %60, align 1
  %909 = icmp eq i32 %894, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %61, align 1
  %911 = lshr i32 %894, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %62, align 1
  %913 = lshr i32 %893, 31
  %914 = xor i32 %911, %913
  %915 = add nuw nsw i32 %914, %911
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %63, align 1
  %918 = add i64 %890, 9
  store i64 %918, i64* %PC.i, align 8
  store i32 %894, i32* %892, align 4
  %919 = load i64, i64* %PC.i, align 8
  %920 = add i64 %919, -159
  store i64 %920, i64* %3, align 8
  br label %block_.L_400b58

block_.L_400bfc:                                  ; preds = %block_.L_400b58
  %921 = add i64 %624, -52
  %922 = add i64 %555, 35
  store i64 %922, i64* %PC.i, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = add i32 %924, -1
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RDX.i387, align 8
  %927 = icmp eq i32 %924, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %58, align 1
  %929 = and i32 %925, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %59, align 1
  %934 = xor i32 %924, %925
  %935 = lshr i32 %934, 4
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %60, align 1
  %938 = icmp eq i32 %925, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %61, align 1
  %940 = lshr i32 %925, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %62, align 1
  %942 = lshr i32 %924, 31
  %943 = xor i32 %940, %942
  %944 = add nuw nsw i32 %943, %942
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %63, align 1
  %947 = sext i32 %925 to i64
  store i64 %947, i64* %RCX.i384, align 8
  %948 = shl nsw i64 %947, 2
  %949 = add i64 %948, %599
  %950 = add i64 %555, 44
  store i64 %950, i64* %PC.i, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RDX.i387, align 8
  %954 = add i64 %624, -24
  %955 = add i64 %555, 48
  store i64 %955, i64* %PC.i, align 8
  %956 = inttoptr i64 %954 to i64*
  %957 = load i64, i64* %956, align 8
  store i64 %957, i64* %RAX.i373, align 8
  %958 = add i64 %624, -48
  %959 = add i64 %555, 52
  store i64 %959, i64* %PC.i, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = sext i32 %961 to i64
  %963 = mul nsw i64 %962, 200
  store i64 %963, i64* %RCX.i384, align 8
  %964 = lshr i64 %963, 63
  %965 = add i64 %963, %957
  store i64 %965, i64* %RAX.i373, align 8
  %966 = icmp ult i64 %965, %957
  %967 = icmp ult i64 %965, %963
  %968 = or i1 %966, %967
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %58, align 1
  %970 = trunc i64 %965 to i32
  %971 = and i32 %970, 255
  %972 = tail call i32 @llvm.ctpop.i32(i32 %971)
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = xor i8 %974, 1
  store i8 %975, i8* %59, align 1
  %976 = xor i64 %963, %957
  %977 = xor i64 %976, %965
  %978 = lshr i64 %977, 4
  %979 = trunc i64 %978 to i8
  %980 = and i8 %979, 1
  store i8 %980, i8* %60, align 1
  %981 = icmp eq i64 %965, 0
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %61, align 1
  %983 = lshr i64 %965, 63
  %984 = trunc i64 %983 to i8
  store i8 %984, i8* %62, align 1
  %985 = lshr i64 %957, 63
  %986 = xor i64 %983, %985
  %987 = xor i64 %983, %964
  %988 = add nuw nsw i64 %986, %987
  %989 = icmp eq i64 %988, 2
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %63, align 1
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -52
  %993 = add i64 %555, 66
  store i64 %993, i64* %PC.i, align 8
  %994 = inttoptr i64 %992 to i32*
  %995 = load i32, i32* %994, align 4
  %996 = sext i32 %995 to i64
  store i64 %996, i64* %RCX.i384, align 8
  %997 = shl nsw i64 %996, 2
  %998 = add i64 %997, %965
  %999 = add i64 %555, 69
  store i64 %999, i64* %PC.i, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = add i32 %1001, %952
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RDX.i387, align 8
  %1004 = icmp ult i32 %1002, %952
  %1005 = icmp ult i32 %1002, %1001
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %58, align 1
  %1008 = and i32 %1002, 255
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %59, align 1
  %1013 = xor i32 %1001, %952
  %1014 = xor i32 %1013, %1002
  %1015 = lshr i32 %1014, 4
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  store i8 %1017, i8* %60, align 1
  %1018 = icmp eq i32 %1002, 0
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %61, align 1
  %1020 = lshr i32 %1002, 31
  %1021 = trunc i32 %1020 to i8
  store i8 %1021, i8* %62, align 1
  %1022 = lshr i32 %952, 31
  %1023 = lshr i32 %1001, 31
  %1024 = xor i32 %1020, %1022
  %1025 = xor i32 %1020, %1023
  %1026 = add nuw nsw i32 %1024, %1025
  %1027 = icmp eq i32 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %63, align 1
  %1029 = add i64 %991, -16
  %1030 = add i64 %555, 73
  store i64 %1030, i64* %PC.i, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %RAX.i373, align 8
  %1033 = add i64 %991, -48
  %1034 = add i64 %555, 77
  store i64 %1034, i64* %PC.i, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = mul nsw i64 %1037, 200
  store i64 %1038, i64* %RCX.i384, align 8
  %1039 = lshr i64 %1038, 63
  %1040 = add i64 %1038, %1032
  store i64 %1040, i64* %RAX.i373, align 8
  %1041 = icmp ult i64 %1040, %1032
  %1042 = icmp ult i64 %1040, %1038
  %1043 = or i1 %1041, %1042
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %58, align 1
  %1045 = trunc i64 %1040 to i32
  %1046 = and i32 %1045, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %59, align 1
  %1051 = xor i64 %1038, %1032
  %1052 = xor i64 %1051, %1040
  %1053 = lshr i64 %1052, 4
  %1054 = trunc i64 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %60, align 1
  %1056 = icmp eq i64 %1040, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %61, align 1
  %1058 = lshr i64 %1040, 63
  %1059 = trunc i64 %1058 to i8
  store i8 %1059, i8* %62, align 1
  %1060 = lshr i64 %1032, 63
  %1061 = xor i64 %1058, %1060
  %1062 = xor i64 %1058, %1039
  %1063 = add nuw nsw i64 %1061, %1062
  %1064 = icmp eq i64 %1063, 2
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %63, align 1
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -52
  %1068 = add i64 %555, 91
  store i64 %1068, i64* %PC.i, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = sext i32 %1070 to i64
  store i64 %1071, i64* %RCX.i384, align 8
  %1072 = shl nsw i64 %1071, 2
  %1073 = add i64 %1072, %1040
  %1074 = load i32, i32* %EDX.i238, align 4
  %1075 = add i64 %555, 94
  store i64 %1075, i64* %PC.i, align 8
  %1076 = inttoptr i64 %1073 to i32*
  store i32 %1074, i32* %1076, align 4
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -52
  %1079 = load i64, i64* %PC.i, align 8
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %PC.i, align 8
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = add i32 %1082, 1
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i373, align 8
  %1085 = icmp eq i32 %1082, -1
  %1086 = icmp eq i32 %1083, 0
  %1087 = or i1 %1085, %1086
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %58, align 1
  %1089 = and i32 %1083, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %59, align 1
  %1094 = xor i32 %1082, %1083
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %60, align 1
  %1098 = icmp eq i32 %1083, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %61, align 1
  %1100 = lshr i32 %1083, 31
  %1101 = trunc i32 %1100 to i8
  store i8 %1101, i8* %62, align 1
  %1102 = lshr i32 %1082, 31
  %1103 = xor i32 %1100, %1102
  %1104 = add nuw nsw i32 %1103, %1100
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %63, align 1
  %1107 = add i64 %1079, 9
  store i64 %1107, i64* %PC.i, align 8
  store i32 %1083, i32* %1081, align 4
  %1108 = load i64, i64* %PC.i, align 8
  %1109 = add i64 %1108, -336
  store i64 %1109, i64* %3, align 8
  br label %block_.L_400b13

block_.L_400c68:                                  ; preds = %block_.L_400b13
  %1110 = add i64 %367, -48
  %1111 = add i64 %405, 8
  store i64 %1111, i64* %PC.i, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = add i32 %1113, 1
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RAX.i373, align 8
  %1116 = icmp eq i32 %1113, -1
  %1117 = icmp eq i32 %1114, 0
  %1118 = or i1 %1116, %1117
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %58, align 1
  %1120 = and i32 %1114, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %59, align 1
  %1125 = xor i32 %1113, %1114
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %60, align 1
  %1129 = icmp eq i32 %1114, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %61, align 1
  %1131 = lshr i32 %1114, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %62, align 1
  %1133 = lshr i32 %1113, 31
  %1134 = xor i32 %1131, %1133
  %1135 = add nuw nsw i32 %1134, %1131
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %63, align 1
  %1138 = add i64 %405, 14
  store i64 %1138, i64* %PC.i, align 8
  store i32 %1114, i32* %1112, align 4
  %1139 = load i64, i64* %PC.i, align 8
  %1140 = add i64 %1139, -381
  store i64 %1140, i64* %3, align 8
  br label %block_.L_400af9

block_.L_400c7b:                                  ; preds = %block_.L_400af9
  %1141 = add i64 %298, -16
  %1142 = add i64 %336, 4
  store i64 %1142, i64* %PC.i, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RAX.i373, align 8
  %1145 = add i64 %336, 7
  store i64 %1145, i64* %PC.i, align 8
  %1146 = load i32, i32* %306, align 4
  %1147 = add i32 %1146, -1
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RCX.i384, align 8
  %1149 = icmp eq i32 %1146, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %58, align 1
  %1151 = and i32 %1147, 255
  %1152 = tail call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %59, align 1
  %1156 = xor i32 %1146, %1147
  %1157 = lshr i32 %1156, 4
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %60, align 1
  %1160 = icmp eq i32 %1147, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %61, align 1
  %1162 = lshr i32 %1147, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %62, align 1
  %1164 = lshr i32 %1146, 31
  %1165 = xor i32 %1162, %1164
  %1166 = add nuw nsw i32 %1165, %1164
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %63, align 1
  %1169 = sext i32 %1147 to i64
  store i64 %1169, i64* %RDX.i387, align 8
  %1170 = shl nsw i64 %1169, 2
  %1171 = add i64 %1170, %1144
  %1172 = add i64 %336, 16
  store i64 %1172, i64* %PC.i, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i384, align 8
  %1176 = add i64 %298, -60
  %1177 = add i64 %336, 19
  store i64 %1177, i64* %PC.i, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = add i32 %1179, %1174
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RCX.i384, align 8
  %1182 = icmp ult i32 %1180, %1174
  %1183 = icmp ult i32 %1180, %1179
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %58, align 1
  %1186 = and i32 %1180, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %59, align 1
  %1191 = xor i32 %1179, %1174
  %1192 = xor i32 %1191, %1180
  %1193 = lshr i32 %1192, 4
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %60, align 1
  %1196 = icmp eq i32 %1180, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %61, align 1
  %1198 = lshr i32 %1180, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %62, align 1
  %1200 = lshr i32 %1174, 31
  %1201 = lshr i32 %1179, 31
  %1202 = xor i32 %1198, %1200
  %1203 = xor i32 %1198, %1201
  %1204 = add nuw nsw i32 %1202, %1203
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %63, align 1
  %1207 = add i64 %336, 22
  store i64 %1207, i64* %PC.i, align 8
  store i32 %1180, i32* %1178, align 4
  %1208 = load i64, i64* %RBP.i, align 8
  %1209 = add i64 %1208, -44
  %1210 = load i64, i64* %PC.i, align 8
  %1211 = add i64 %1210, 3
  store i64 %1211, i64* %PC.i, align 8
  %1212 = inttoptr i64 %1209 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = add i32 %1213, 1
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i373, align 8
  %1216 = icmp eq i32 %1213, -1
  %1217 = icmp eq i32 %1214, 0
  %1218 = or i1 %1216, %1217
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %58, align 1
  %1220 = and i32 %1214, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %59, align 1
  %1225 = xor i32 %1213, %1214
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %60, align 1
  %1229 = icmp eq i32 %1214, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %61, align 1
  %1231 = lshr i32 %1214, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %62, align 1
  %1233 = lshr i32 %1213, 31
  %1234 = xor i32 %1231, %1233
  %1235 = add nuw nsw i32 %1234, %1231
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %63, align 1
  %1238 = add i64 %1210, 9
  store i64 %1238, i64* %PC.i, align 8
  store i32 %1214, i32* %1212, align 4
  %1239 = load i64, i64* %PC.i, align 8
  %1240 = add i64 %1239, -546
  store i64 %1240, i64* %3, align 8
  br label %block_.L_400a78

block_.L_400c9f:                                  ; preds = %block_.L_400a78
  %1241 = add i64 %65, -60
  %1242 = add i64 %101, 3
  store i64 %1242, i64* %PC.i, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RAX.i373, align 8
  %1246 = add i64 %65, -40
  %1247 = add i64 %101, 7
  store i64 %1247, i64* %PC.i, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %RCX.i384, align 8
  %1250 = add i64 %101, 9
  store i64 %1250, i64* %PC.i, align 8
  %1251 = inttoptr i64 %1249 to i32*
  store i32 %1244, i32* %1251, align 4
  %1252 = load i64, i64* %PC.i, align 8
  %1253 = add i64 %1252, 1
  store i64 %1253, i64* %PC.i, align 8
  %1254 = load i64, i64* %6, align 8
  %1255 = add i64 %1254, 8
  %1256 = inttoptr i64 %1254 to i64*
  %1257 = load i64, i64* %1256, align 8
  store i64 %1257, i64* %RBP.i, align 8
  store i64 %1255, i64* %6, align 8
  %1258 = add i64 %1252, 2
  store i64 %1258, i64* %PC.i, align 8
  %1259 = inttoptr i64 %1255 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %3, align 8
  %1261 = add i64 %1254, 16
  store i64 %1261, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400c9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400af2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400adf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0xc8___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 200
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400aa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ae4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400a8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400c7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400c68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x2710___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 10000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400bfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400b58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400b13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400af9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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

define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400a78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
