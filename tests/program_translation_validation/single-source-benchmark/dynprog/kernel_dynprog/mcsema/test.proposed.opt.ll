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
  %RDX.i387 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RDX.i387, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %RCX.i384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RCX.i384, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %R8.i, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R9.i, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -60
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -44
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %3, align 8
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
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400a78

block_.L_400a78:                                  ; preds = %block_.L_400c7b, %entry
  %64 = phi i64 [ %1212, %block_.L_400c7b ], [ %.pre, %entry ]
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -44
  %67 = add i64 %64, 3
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %RAX.i373, align 8
  %71 = add i64 %65, -4
  %72 = add i64 %64, 6
  store i64 %72, i64* %3, align 8
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
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  store i32 0, i32* %104, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400a8b

block_.L_400a8b:                                  ; preds = %block_.L_400adf, %block_400a84
  %105 = phi i64 [ %293, %block_.L_400adf ], [ %.pre1, %block_400a84 ]
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -48
  %108 = add i64 %105, 3
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX.i373, align 8
  %112 = add i64 %106, -8
  %113 = add i64 %105, 6
  store i64 %113, i64* %3, align 8
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
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  store i32 0, i32* %147, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400aa3

block_.L_400aa3:                                  ; preds = %block_400ab4, %block_400a9c
  %148 = phi i64 [ %263, %block_400ab4 ], [ %.pre2, %block_400a9c ]
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -52
  %151 = add i64 %148, 3
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i373, align 8
  %155 = add i64 %149, -8
  %156 = add i64 %148, 6
  store i64 %156, i64* %3, align 8
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
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RAX.i373, align 8
  %192 = add i64 %149, -48
  %193 = add i64 %187, 8
  store i64 %193, i64* %3, align 8
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
  store i64 %225, i64* %3, align 8
  %226 = load i32, i32* %152, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RCX.i384, align 8
  %228 = shl nsw i64 %227, 2
  %229 = add i64 %228, %199
  %230 = add i64 %187, 29
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i32*
  store i32 0, i32* %231, align 4
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -52
  %234 = load i64, i64* %3, align 8
  %235 = add i64 %234, 3
  store i64 %235, i64* %3, align 8
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
  %253 = zext i1 %241 to i8
  store i8 %253, i8* %61, align 1
  %254 = lshr i32 %238, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %62, align 1
  %256 = lshr i32 %237, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %254
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %63, align 1
  %261 = add i64 %234, 9
  store i64 %261, i64* %3, align 8
  store i32 %238, i32* %236, align 4
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, -55
  store i64 %263, i64* %3, align 8
  br label %block_.L_400aa3

block_.L_400adf:                                  ; preds = %block_.L_400aa3
  %264 = add i64 %149, -48
  %265 = add i64 %187, 8
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, 1
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RAX.i373, align 8
  %270 = icmp eq i32 %267, -1
  %271 = icmp eq i32 %268, 0
  %272 = or i1 %270, %271
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %58, align 1
  %274 = and i32 %268, 255
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %59, align 1
  %279 = xor i32 %267, %268
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %60, align 1
  %283 = zext i1 %271 to i8
  store i8 %283, i8* %61, align 1
  %284 = lshr i32 %268, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %62, align 1
  %286 = lshr i32 %267, 31
  %287 = xor i32 %284, %286
  %288 = add nuw nsw i32 %287, %284
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %63, align 1
  %291 = add i64 %187, 14
  store i64 %291, i64* %3, align 8
  store i32 %268, i32* %266, align 4
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, -98
  store i64 %293, i64* %3, align 8
  br label %block_.L_400a8b

block_.L_400af2:                                  ; preds = %block_.L_400a8b
  %294 = add i64 %144, 7
  store i64 %294, i64* %3, align 8
  store i32 0, i32* %109, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400af9

block_.L_400af9:                                  ; preds = %block_.L_400c68, %block_.L_400af2
  %295 = phi i64 [ %1113, %block_.L_400c68 ], [ %.pre3, %block_.L_400af2 ]
  %296 = load i64, i64* %RBP.i, align 8
  %297 = add i64 %296, -48
  %298 = add i64 %295, 3
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RAX.i373, align 8
  %302 = add i64 %296, -8
  %303 = add i64 %295, 6
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, -2
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RCX.i384, align 8
  %308 = lshr i32 %306, 31
  %309 = sub i32 %300, %306
  %310 = icmp ult i32 %300, %306
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %58, align 1
  %312 = and i32 %309, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %59, align 1
  %317 = xor i32 %306, %300
  %318 = xor i32 %317, %309
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %60, align 1
  %322 = icmp eq i32 %309, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %61, align 1
  %324 = lshr i32 %309, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %62, align 1
  %326 = lshr i32 %300, 31
  %327 = xor i32 %308, %326
  %328 = xor i32 %324, %326
  %329 = add nuw nsw i32 %328, %327
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %63, align 1
  %332 = icmp ne i8 %325, 0
  %333 = xor i1 %332, %330
  %.demorgan9 = or i1 %322, %333
  %.v10 = select i1 %.demorgan9, i64 17, i64 386
  %334 = add i64 %295, %.v10
  store i64 %334, i64* %3, align 8
  br i1 %.demorgan9, label %block_400b0a, label %block_.L_400c7b

block_400b0a:                                     ; preds = %block_.L_400af9
  %335 = add i64 %334, 3
  store i64 %335, i64* %3, align 8
  %336 = load i32, i32* %299, align 4
  %337 = add i32 %336, 1
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX.i373, align 8
  %339 = icmp eq i32 %336, -1
  %340 = icmp eq i32 %337, 0
  %341 = or i1 %339, %340
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %58, align 1
  %343 = and i32 %337, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %59, align 1
  %348 = xor i32 %336, %337
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %60, align 1
  %352 = zext i1 %340 to i8
  store i8 %352, i8* %61, align 1
  %353 = lshr i32 %337, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %62, align 1
  %355 = lshr i32 %336, 31
  %356 = xor i32 %353, %355
  %357 = add nuw nsw i32 %356, %353
  %358 = icmp eq i32 %357, 2
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %63, align 1
  %360 = add i64 %296, -52
  %361 = add i64 %334, 9
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  store i32 %337, i32* %362, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400b13

block_.L_400b13:                                  ; preds = %block_.L_400bfc, %block_400b0a
  %363 = phi i64 [ %1083, %block_.L_400bfc ], [ %.pre4, %block_400b0a ]
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -52
  %366 = add i64 %363, 3
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX.i373, align 8
  %370 = add i64 %364, -8
  %371 = add i64 %363, 6
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = add i32 %373, -1
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RCX.i384, align 8
  %376 = lshr i32 %374, 31
  %377 = sub i32 %368, %374
  %378 = icmp ult i32 %368, %374
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %58, align 1
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %59, align 1
  %385 = xor i32 %374, %368
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %60, align 1
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %61, align 1
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %62, align 1
  %394 = lshr i32 %368, 31
  %395 = xor i32 %376, %394
  %396 = xor i32 %392, %394
  %397 = add nuw nsw i32 %396, %395
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %63, align 1
  %400 = icmp ne i8 %393, 0
  %401 = xor i1 %400, %398
  %.demorgan11 = or i1 %390, %401
  %.v12 = select i1 %.demorgan11, i64 17, i64 341
  %402 = add i64 %363, %.v12
  store i64 %402, i64* %3, align 8
  br i1 %.demorgan11, label %block_400b24, label %block_.L_400c68

block_400b24:                                     ; preds = %block_.L_400b13
  %403 = add i64 %364, -32
  %404 = add i64 %402, 4
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i373, align 8
  %407 = add i64 %364, -48
  %408 = add i64 %402, 8
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = mul nsw i64 %411, 10000
  store i64 %412, i64* %RCX.i384, align 8
  %413 = lshr i64 %412, 63
  %414 = add i64 %412, %406
  store i64 %414, i64* %RAX.i373, align 8
  %415 = icmp ult i64 %414, %406
  %416 = icmp ult i64 %414, %412
  %417 = or i1 %415, %416
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %58, align 1
  %419 = trunc i64 %414 to i32
  %420 = and i32 %419, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %59, align 1
  %425 = xor i64 %412, %406
  %426 = xor i64 %425, %414
  %427 = lshr i64 %426, 4
  %428 = trunc i64 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %60, align 1
  %430 = icmp eq i64 %414, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %61, align 1
  %432 = lshr i64 %414, 63
  %433 = trunc i64 %432 to i8
  store i8 %433, i8* %62, align 1
  %434 = lshr i64 %406, 63
  %435 = xor i64 %432, %434
  %436 = xor i64 %432, %413
  %437 = add nuw nsw i64 %435, %436
  %438 = icmp eq i64 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %63, align 1
  %440 = add i64 %402, 22
  store i64 %440, i64* %3, align 8
  %441 = load i32, i32* %367, align 4
  %442 = sext i32 %441 to i64
  %443 = mul nsw i64 %442, 200
  store i64 %443, i64* %RCX.i384, align 8
  %444 = lshr i64 %443, 63
  %445 = add i64 %443, %414
  store i64 %445, i64* %RAX.i373, align 8
  %446 = icmp ult i64 %445, %414
  %447 = icmp ult i64 %445, %443
  %448 = or i1 %446, %447
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %58, align 1
  %450 = trunc i64 %445 to i32
  %451 = and i32 %450, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %59, align 1
  %456 = xor i64 %443, %414
  %457 = xor i64 %456, %445
  %458 = lshr i64 %457, 4
  %459 = trunc i64 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %60, align 1
  %461 = icmp eq i64 %445, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %61, align 1
  %463 = lshr i64 %445, 63
  %464 = trunc i64 %463 to i8
  store i8 %464, i8* %62, align 1
  %465 = xor i64 %463, %432
  %466 = xor i64 %463, %444
  %467 = add nuw nsw i64 %465, %466
  %468 = icmp eq i64 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %63, align 1
  %470 = add i64 %402, 36
  store i64 %470, i64* %3, align 8
  %471 = load i32, i32* %409, align 4
  %472 = sext i32 %471 to i64
  store i64 %472, i64* %RCX.i384, align 8
  %473 = shl nsw i64 %472, 2
  %474 = add i64 %473, %445
  %475 = add i64 %402, 43
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  store i32 0, i32* %476, align 4
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -48
  %479 = load i64, i64* %3, align 8
  %480 = add i64 %479, 3
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %478 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = add i32 %482, 1
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RDX.i387, align 8
  %485 = icmp eq i32 %482, -1
  %486 = icmp eq i32 %483, 0
  %487 = or i1 %485, %486
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %58, align 1
  %489 = and i32 %483, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %59, align 1
  %494 = xor i32 %482, %483
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %60, align 1
  %498 = zext i1 %486 to i8
  store i8 %498, i8* %61, align 1
  %499 = lshr i32 %483, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %62, align 1
  %501 = lshr i32 %482, 31
  %502 = xor i32 %499, %501
  %503 = add nuw nsw i32 %502, %499
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %63, align 1
  %506 = add i64 %477, -56
  %507 = add i64 %479, 9
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i32*
  store i32 %483, i32* %508, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400b58

block_.L_400b58:                                  ; preds = %block_400b69, %block_400b24
  %509 = phi i64 [ %901, %block_400b69 ], [ %.pre5, %block_400b24 ]
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -56
  %512 = add i64 %509, 3
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i373, align 8
  %516 = add i64 %510, -52
  %517 = add i64 %509, 6
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = add i32 %519, -1
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX.i384, align 8
  %522 = lshr i32 %520, 31
  %523 = sub i32 %514, %520
  %524 = icmp ult i32 %514, %520
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %58, align 1
  %526 = and i32 %523, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %59, align 1
  %531 = xor i32 %520, %514
  %532 = xor i32 %531, %523
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %60, align 1
  %536 = icmp eq i32 %523, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %61, align 1
  %538 = lshr i32 %523, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %62, align 1
  %540 = lshr i32 %514, 31
  %541 = xor i32 %522, %540
  %542 = xor i32 %538, %540
  %543 = add nuw nsw i32 %542, %541
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %63, align 1
  %546 = icmp ne i8 %539, 0
  %547 = xor i1 %546, %544
  %.demorgan13 = or i1 %536, %547
  %.v14 = select i1 %.demorgan13, i64 17, i64 164
  %548 = add i64 %509, %.v14
  %549 = add i64 %510, -32
  %550 = add i64 %548, 4
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RAX.i373, align 8
  %553 = add i64 %510, -48
  %554 = add i64 %548, 8
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  %558 = mul nsw i64 %557, 10000
  store i64 %558, i64* %RCX.i384, align 8
  %559 = lshr i64 %558, 63
  %560 = add i64 %558, %552
  store i64 %560, i64* %RAX.i373, align 8
  %561 = icmp ult i64 %560, %552
  %562 = icmp ult i64 %560, %558
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %58, align 1
  %565 = trunc i64 %560 to i32
  %566 = and i32 %565, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %59, align 1
  %571 = xor i64 %558, %552
  %572 = xor i64 %571, %560
  %573 = lshr i64 %572, 4
  %574 = trunc i64 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %60, align 1
  %576 = icmp eq i64 %560, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %61, align 1
  %578 = lshr i64 %560, 63
  %579 = trunc i64 %578 to i8
  store i8 %579, i8* %62, align 1
  %580 = lshr i64 %552, 63
  %581 = xor i64 %578, %580
  %582 = xor i64 %578, %559
  %583 = add nuw nsw i64 %581, %582
  %584 = icmp eq i64 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %63, align 1
  %586 = add i64 %548, 22
  store i64 %586, i64* %3, align 8
  %587 = load i32, i32* %518, align 4
  %588 = sext i32 %587 to i64
  %589 = mul nsw i64 %588, 200
  store i64 %589, i64* %RCX.i384, align 8
  %590 = lshr i64 %589, 63
  %591 = add i64 %548, 32
  store i64 %591, i64* %3, align 8
  %592 = add i64 %589, %560
  store i64 %592, i64* %RAX.i373, align 8
  %593 = icmp ult i64 %592, %560
  %594 = icmp ult i64 %592, %589
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %58, align 1
  %597 = trunc i64 %592 to i32
  %598 = and i32 %597, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %59, align 1
  %603 = xor i64 %589, %560
  %604 = xor i64 %603, %592
  %605 = lshr i64 %604, 4
  %606 = trunc i64 %605 to i8
  %607 = and i8 %606, 1
  store i8 %607, i8* %60, align 1
  %608 = icmp eq i64 %592, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %61, align 1
  %610 = lshr i64 %592, 63
  %611 = trunc i64 %610 to i8
  store i8 %611, i8* %62, align 1
  %612 = xor i64 %610, %578
  %613 = xor i64 %610, %590
  %614 = add nuw nsw i64 %612, %613
  %615 = icmp eq i64 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %63, align 1
  %617 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan13, label %block_400b69, label %block_.L_400bfc

block_400b69:                                     ; preds = %block_.L_400b58
  %618 = add i64 %617, -56
  %619 = add i64 %548, 35
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = add i32 %621, -1
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RDX.i387, align 8
  %624 = icmp eq i32 %621, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %58, align 1
  %626 = and i32 %622, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %59, align 1
  %631 = xor i32 %621, %622
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %60, align 1
  %635 = icmp eq i32 %622, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %61, align 1
  %637 = lshr i32 %622, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %62, align 1
  %639 = lshr i32 %621, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %639
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %63, align 1
  %644 = sext i32 %622 to i64
  store i64 %644, i64* %RCX.i384, align 8
  %645 = shl nsw i64 %644, 2
  %646 = add i64 %645, %592
  %647 = add i64 %548, 44
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RDX.i387, align 8
  %651 = add i64 %617, -16
  %652 = add i64 %548, 48
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RAX.i373, align 8
  %655 = add i64 %617, -48
  %656 = add i64 %548, 52
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = sext i32 %658 to i64
  %660 = mul nsw i64 %659, 200
  store i64 %660, i64* %RCX.i384, align 8
  %661 = lshr i64 %660, 63
  %662 = add i64 %660, %654
  store i64 %662, i64* %RAX.i373, align 8
  %663 = icmp ult i64 %662, %654
  %664 = icmp ult i64 %662, %660
  %665 = or i1 %663, %664
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %58, align 1
  %667 = trunc i64 %662 to i32
  %668 = and i32 %667, 255
  %669 = tail call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  store i8 %672, i8* %59, align 1
  %673 = xor i64 %660, %654
  %674 = xor i64 %673, %662
  %675 = lshr i64 %674, 4
  %676 = trunc i64 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %60, align 1
  %678 = icmp eq i64 %662, 0
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %61, align 1
  %680 = lshr i64 %662, 63
  %681 = trunc i64 %680 to i8
  store i8 %681, i8* %62, align 1
  %682 = lshr i64 %654, 63
  %683 = xor i64 %680, %682
  %684 = xor i64 %680, %661
  %685 = add nuw nsw i64 %683, %684
  %686 = icmp eq i64 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %63, align 1
  %688 = add i64 %548, 66
  store i64 %688, i64* %3, align 8
  %689 = load i32, i32* %620, align 4
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %RCX.i384, align 8
  %691 = shl nsw i64 %690, 2
  %692 = add i64 %691, %662
  %693 = add i64 %548, 69
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, %649
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RDX.i387, align 8
  %698 = icmp ult i32 %696, %649
  %699 = icmp ult i32 %696, %695
  %700 = or i1 %698, %699
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %58, align 1
  %702 = and i32 %696, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %59, align 1
  %707 = xor i32 %695, %649
  %708 = xor i32 %707, %696
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %60, align 1
  %712 = icmp eq i32 %696, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %61, align 1
  %714 = lshr i32 %696, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %62, align 1
  %716 = lshr i32 %649, 31
  %717 = lshr i32 %695, 31
  %718 = xor i32 %714, %716
  %719 = xor i32 %714, %717
  %720 = add nuw nsw i32 %718, %719
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %63, align 1
  %723 = add i64 %548, 73
  store i64 %723, i64* %3, align 8
  %724 = load i64, i64* %653, align 8
  store i64 %724, i64* %RAX.i373, align 8
  %725 = add i64 %548, 77
  store i64 %725, i64* %3, align 8
  %726 = load i32, i32* %620, align 4
  %727 = sext i32 %726 to i64
  %728 = mul nsw i64 %727, 200
  store i64 %728, i64* %RCX.i384, align 8
  %729 = lshr i64 %728, 63
  %730 = add i64 %728, %724
  store i64 %730, i64* %RAX.i373, align 8
  %731 = icmp ult i64 %730, %724
  %732 = icmp ult i64 %730, %728
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %58, align 1
  %735 = trunc i64 %730 to i32
  %736 = and i32 %735, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %59, align 1
  %741 = xor i64 %728, %724
  %742 = xor i64 %741, %730
  %743 = lshr i64 %742, 4
  %744 = trunc i64 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %60, align 1
  %746 = icmp eq i64 %730, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %61, align 1
  %748 = lshr i64 %730, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %62, align 1
  %750 = lshr i64 %724, 63
  %751 = xor i64 %748, %750
  %752 = xor i64 %748, %729
  %753 = add nuw nsw i64 %751, %752
  %754 = icmp eq i64 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %63, align 1
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -52
  %758 = add i64 %548, 91
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = sext i32 %760 to i64
  store i64 %761, i64* %RCX.i384, align 8
  %762 = shl nsw i64 %761, 2
  %763 = add i64 %762, %730
  %764 = add i64 %548, 94
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = add i32 %766, %696
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RDX.i387, align 8
  %769 = icmp ult i32 %767, %696
  %770 = icmp ult i32 %767, %766
  %771 = or i1 %769, %770
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %58, align 1
  %773 = and i32 %767, 255
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %59, align 1
  %778 = xor i32 %766, %696
  %779 = xor i32 %778, %767
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %60, align 1
  %783 = icmp eq i32 %767, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %61, align 1
  %785 = lshr i32 %767, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %62, align 1
  %787 = lshr i32 %766, 31
  %788 = xor i32 %785, %714
  %789 = xor i32 %785, %787
  %790 = add nuw nsw i32 %788, %789
  %791 = icmp eq i32 %790, 2
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %63, align 1
  %793 = add i64 %756, -32
  %794 = add i64 %548, 98
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RAX.i373, align 8
  %797 = add i64 %756, -48
  %798 = add i64 %548, 102
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = sext i32 %800 to i64
  %802 = mul nsw i64 %801, 10000
  store i64 %802, i64* %RCX.i384, align 8
  %803 = lshr i64 %802, 63
  %804 = add i64 %802, %796
  store i64 %804, i64* %RAX.i373, align 8
  %805 = icmp ult i64 %804, %796
  %806 = icmp ult i64 %804, %802
  %807 = or i1 %805, %806
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %58, align 1
  %809 = trunc i64 %804 to i32
  %810 = and i32 %809, 255
  %811 = tail call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  store i8 %814, i8* %59, align 1
  %815 = xor i64 %802, %796
  %816 = xor i64 %815, %804
  %817 = lshr i64 %816, 4
  %818 = trunc i64 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %60, align 1
  %820 = icmp eq i64 %804, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %61, align 1
  %822 = lshr i64 %804, 63
  %823 = trunc i64 %822 to i8
  store i8 %823, i8* %62, align 1
  %824 = lshr i64 %796, 63
  %825 = xor i64 %822, %824
  %826 = xor i64 %822, %803
  %827 = add nuw nsw i64 %825, %826
  %828 = icmp eq i64 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %63, align 1
  %830 = add i64 %548, 116
  store i64 %830, i64* %3, align 8
  %831 = load i32, i32* %759, align 4
  %832 = sext i32 %831 to i64
  %833 = mul nsw i64 %832, 200
  store i64 %833, i64* %RCX.i384, align 8
  %834 = lshr i64 %833, 63
  %835 = add i64 %833, %804
  store i64 %835, i64* %RAX.i373, align 8
  %836 = icmp ult i64 %835, %804
  %837 = icmp ult i64 %835, %833
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %58, align 1
  %840 = trunc i64 %835 to i32
  %841 = and i32 %840, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %59, align 1
  %846 = xor i64 %833, %804
  %847 = xor i64 %846, %835
  %848 = lshr i64 %847, 4
  %849 = trunc i64 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %60, align 1
  %851 = icmp eq i64 %835, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %61, align 1
  %853 = lshr i64 %835, 63
  %854 = trunc i64 %853 to i8
  store i8 %854, i8* %62, align 1
  %855 = xor i64 %853, %822
  %856 = xor i64 %853, %834
  %857 = add nuw nsw i64 %855, %856
  %858 = icmp eq i64 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %63, align 1
  %860 = add i64 %756, -56
  %861 = add i64 %548, 130
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = sext i32 %863 to i64
  store i64 %864, i64* %RCX.i384, align 8
  %865 = shl nsw i64 %864, 2
  %866 = add i64 %865, %835
  %867 = load i32, i32* %EDX.i238, align 4
  %868 = add i64 %548, 133
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %866 to i32*
  store i32 %867, i32* %869, align 4
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -56
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, 3
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %871 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = add i32 %875, 1
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RAX.i373, align 8
  %878 = icmp eq i32 %875, -1
  %879 = icmp eq i32 %876, 0
  %880 = or i1 %878, %879
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %58, align 1
  %882 = and i32 %876, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %59, align 1
  %887 = xor i32 %875, %876
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %60, align 1
  %891 = zext i1 %879 to i8
  store i8 %891, i8* %61, align 1
  %892 = lshr i32 %876, 31
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %62, align 1
  %894 = lshr i32 %875, 31
  %895 = xor i32 %892, %894
  %896 = add nuw nsw i32 %895, %892
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %63, align 1
  %899 = add i64 %872, 9
  store i64 %899, i64* %3, align 8
  store i32 %876, i32* %874, align 4
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, -159
  store i64 %901, i64* %3, align 8
  br label %block_.L_400b58

block_.L_400bfc:                                  ; preds = %block_.L_400b58
  %902 = add i64 %617, -52
  %903 = add i64 %548, 35
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = add i32 %905, -1
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RDX.i387, align 8
  %908 = icmp eq i32 %905, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %58, align 1
  %910 = and i32 %906, 255
  %911 = tail call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  store i8 %914, i8* %59, align 1
  %915 = xor i32 %905, %906
  %916 = lshr i32 %915, 4
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %60, align 1
  %919 = icmp eq i32 %906, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %61, align 1
  %921 = lshr i32 %906, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %62, align 1
  %923 = lshr i32 %905, 31
  %924 = xor i32 %921, %923
  %925 = add nuw nsw i32 %924, %923
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %63, align 1
  %928 = sext i32 %906 to i64
  store i64 %928, i64* %RCX.i384, align 8
  %929 = shl nsw i64 %928, 2
  %930 = add i64 %929, %592
  %931 = add i64 %548, 44
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RDX.i387, align 8
  %935 = add i64 %617, -24
  %936 = add i64 %548, 48
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %RAX.i373, align 8
  %939 = add i64 %617, -48
  %940 = add i64 %548, 52
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = sext i32 %942 to i64
  %944 = mul nsw i64 %943, 200
  store i64 %944, i64* %RCX.i384, align 8
  %945 = lshr i64 %944, 63
  %946 = add i64 %944, %938
  store i64 %946, i64* %RAX.i373, align 8
  %947 = icmp ult i64 %946, %938
  %948 = icmp ult i64 %946, %944
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %58, align 1
  %951 = trunc i64 %946 to i32
  %952 = and i32 %951, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %59, align 1
  %957 = xor i64 %944, %938
  %958 = xor i64 %957, %946
  %959 = lshr i64 %958, 4
  %960 = trunc i64 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %60, align 1
  %962 = icmp eq i64 %946, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %61, align 1
  %964 = lshr i64 %946, 63
  %965 = trunc i64 %964 to i8
  store i8 %965, i8* %62, align 1
  %966 = lshr i64 %938, 63
  %967 = xor i64 %964, %966
  %968 = xor i64 %964, %945
  %969 = add nuw nsw i64 %967, %968
  %970 = icmp eq i64 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %63, align 1
  %972 = add i64 %548, 66
  store i64 %972, i64* %3, align 8
  %973 = load i32, i32* %904, align 4
  %974 = sext i32 %973 to i64
  store i64 %974, i64* %RCX.i384, align 8
  %975 = shl nsw i64 %974, 2
  %976 = add i64 %975, %946
  %977 = add i64 %548, 69
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = add i32 %979, %933
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RDX.i387, align 8
  %982 = icmp ult i32 %980, %933
  %983 = icmp ult i32 %980, %979
  %984 = or i1 %982, %983
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %58, align 1
  %986 = and i32 %980, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %59, align 1
  %991 = xor i32 %979, %933
  %992 = xor i32 %991, %980
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %60, align 1
  %996 = icmp eq i32 %980, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %61, align 1
  %998 = lshr i32 %980, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %62, align 1
  %1000 = lshr i32 %933, 31
  %1001 = lshr i32 %979, 31
  %1002 = xor i32 %998, %1000
  %1003 = xor i32 %998, %1001
  %1004 = add nuw nsw i32 %1002, %1003
  %1005 = icmp eq i32 %1004, 2
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %63, align 1
  %1007 = add i64 %617, -16
  %1008 = add i64 %548, 73
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i64*
  %1010 = load i64, i64* %1009, align 8
  store i64 %1010, i64* %RAX.i373, align 8
  %1011 = add i64 %548, 77
  store i64 %1011, i64* %3, align 8
  %1012 = load i32, i32* %941, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = mul nsw i64 %1013, 200
  store i64 %1014, i64* %RCX.i384, align 8
  %1015 = lshr i64 %1014, 63
  %1016 = add i64 %1014, %1010
  store i64 %1016, i64* %RAX.i373, align 8
  %1017 = icmp ult i64 %1016, %1010
  %1018 = icmp ult i64 %1016, %1014
  %1019 = or i1 %1017, %1018
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %58, align 1
  %1021 = trunc i64 %1016 to i32
  %1022 = and i32 %1021, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %59, align 1
  %1027 = xor i64 %1014, %1010
  %1028 = xor i64 %1027, %1016
  %1029 = lshr i64 %1028, 4
  %1030 = trunc i64 %1029 to i8
  %1031 = and i8 %1030, 1
  store i8 %1031, i8* %60, align 1
  %1032 = icmp eq i64 %1016, 0
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %61, align 1
  %1034 = lshr i64 %1016, 63
  %1035 = trunc i64 %1034 to i8
  store i8 %1035, i8* %62, align 1
  %1036 = lshr i64 %1010, 63
  %1037 = xor i64 %1034, %1036
  %1038 = xor i64 %1034, %1015
  %1039 = add nuw nsw i64 %1037, %1038
  %1040 = icmp eq i64 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %63, align 1
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -52
  %1044 = add i64 %548, 91
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = sext i32 %1046 to i64
  store i64 %1047, i64* %RCX.i384, align 8
  %1048 = shl nsw i64 %1047, 2
  %1049 = add i64 %1048, %1016
  %1050 = add i64 %548, 94
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %980, i32* %1051, align 4
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -52
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1053 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i32 %1057, 1
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RAX.i373, align 8
  %1060 = icmp eq i32 %1057, -1
  %1061 = icmp eq i32 %1058, 0
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %58, align 1
  %1064 = and i32 %1058, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %59, align 1
  %1069 = xor i32 %1057, %1058
  %1070 = lshr i32 %1069, 4
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %60, align 1
  %1073 = zext i1 %1061 to i8
  store i8 %1073, i8* %61, align 1
  %1074 = lshr i32 %1058, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %62, align 1
  %1076 = lshr i32 %1057, 31
  %1077 = xor i32 %1074, %1076
  %1078 = add nuw nsw i32 %1077, %1074
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %63, align 1
  %1081 = add i64 %1054, 9
  store i64 %1081, i64* %3, align 8
  store i32 %1058, i32* %1056, align 4
  %1082 = load i64, i64* %3, align 8
  %1083 = add i64 %1082, -336
  store i64 %1083, i64* %3, align 8
  br label %block_.L_400b13

block_.L_400c68:                                  ; preds = %block_.L_400b13
  %1084 = add i64 %364, -48
  %1085 = add i64 %402, 8
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = add i32 %1087, 1
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RAX.i373, align 8
  %1090 = icmp eq i32 %1087, -1
  %1091 = icmp eq i32 %1088, 0
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %58, align 1
  %1094 = and i32 %1088, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %59, align 1
  %1099 = xor i32 %1087, %1088
  %1100 = lshr i32 %1099, 4
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %60, align 1
  %1103 = zext i1 %1091 to i8
  store i8 %1103, i8* %61, align 1
  %1104 = lshr i32 %1088, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %62, align 1
  %1106 = lshr i32 %1087, 31
  %1107 = xor i32 %1104, %1106
  %1108 = add nuw nsw i32 %1107, %1104
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %63, align 1
  %1111 = add i64 %402, 14
  store i64 %1111, i64* %3, align 8
  store i32 %1088, i32* %1086, align 4
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, -381
  store i64 %1113, i64* %3, align 8
  br label %block_.L_400af9

block_.L_400c7b:                                  ; preds = %block_.L_400af9
  %1114 = add i64 %296, -16
  %1115 = add i64 %334, 4
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX.i373, align 8
  %1118 = add i64 %334, 7
  store i64 %1118, i64* %3, align 8
  %1119 = load i32, i32* %304, align 4
  %1120 = add i32 %1119, -1
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RCX.i384, align 8
  %1122 = icmp eq i32 %1119, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %58, align 1
  %1124 = and i32 %1120, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %59, align 1
  %1129 = xor i32 %1119, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %60, align 1
  %1133 = icmp eq i32 %1120, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %61, align 1
  %1135 = lshr i32 %1120, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %62, align 1
  %1137 = lshr i32 %1119, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1137
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %63, align 1
  %1142 = sext i32 %1120 to i64
  store i64 %1142, i64* %RDX.i387, align 8
  %1143 = shl nsw i64 %1142, 2
  %1144 = add i64 %1143, %1117
  %1145 = add i64 %334, 16
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RCX.i384, align 8
  %1149 = add i64 %296, -60
  %1150 = add i64 %334, 19
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = add i32 %1152, %1147
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RCX.i384, align 8
  %1155 = icmp ult i32 %1153, %1147
  %1156 = icmp ult i32 %1153, %1152
  %1157 = or i1 %1155, %1156
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %58, align 1
  %1159 = and i32 %1153, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %59, align 1
  %1164 = xor i32 %1152, %1147
  %1165 = xor i32 %1164, %1153
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %60, align 1
  %1169 = icmp eq i32 %1153, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %61, align 1
  %1171 = lshr i32 %1153, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %62, align 1
  %1173 = lshr i32 %1147, 31
  %1174 = lshr i32 %1152, 31
  %1175 = xor i32 %1171, %1173
  %1176 = xor i32 %1171, %1174
  %1177 = add nuw nsw i32 %1175, %1176
  %1178 = icmp eq i32 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %63, align 1
  %1180 = add i64 %334, 22
  store i64 %1180, i64* %3, align 8
  store i32 %1153, i32* %1151, align 4
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -44
  %1183 = load i64, i64* %3, align 8
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = add i32 %1186, 1
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX.i373, align 8
  %1189 = icmp eq i32 %1186, -1
  %1190 = icmp eq i32 %1187, 0
  %1191 = or i1 %1189, %1190
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %58, align 1
  %1193 = and i32 %1187, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %59, align 1
  %1198 = xor i32 %1186, %1187
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %60, align 1
  %1202 = zext i1 %1190 to i8
  store i8 %1202, i8* %61, align 1
  %1203 = lshr i32 %1187, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %62, align 1
  %1205 = lshr i32 %1186, 31
  %1206 = xor i32 %1203, %1205
  %1207 = add nuw nsw i32 %1206, %1203
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %63, align 1
  %1210 = add i64 %1183, 9
  store i64 %1210, i64* %3, align 8
  store i32 %1187, i32* %1185, align 4
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, -546
  store i64 %1212, i64* %3, align 8
  br label %block_.L_400a78

block_.L_400c9f:                                  ; preds = %block_.L_400a78
  %1213 = add i64 %65, -60
  %1214 = add i64 %101, 3
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RAX.i373, align 8
  %1218 = add i64 %65, -40
  %1219 = add i64 %101, 7
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %RCX.i384, align 8
  %1222 = add i64 %101, 9
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  store i32 %1216, i32* %1223, align 4
  %1224 = load i64, i64* %3, align 8
  %1225 = add i64 %1224, 1
  store i64 %1225, i64* %3, align 8
  %1226 = load i64, i64* %6, align 8
  %1227 = add i64 %1226, 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RBP.i, align 8
  store i64 %1227, i64* %6, align 8
  %1230 = add i64 %1224, 2
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1227 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %3, align 8
  %1233 = add i64 %1226, 16
  store i64 %1233, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %18 = xor i32 %6, %7
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %20 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ae4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %18 = xor i32 %6, %7
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %20 = xor i32 %6, %7
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %18 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400af9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
