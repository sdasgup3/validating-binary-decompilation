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
define %struct.Memory* @bitrv2(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %EDI.i1227 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i1227, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i1224, align 8
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %RDX.i1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i1221, align 8
  %25 = load i64, i64* %PC.i, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC.i, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -16
  %30 = load i64, i64* %PC.i, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %PC.i, align 8
  %32 = inttoptr i64 %29 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RDX.i1221, align 8
  %34 = add i64 %30, 10
  store i64 %34, i64* %PC.i, align 8
  %35 = inttoptr i64 %33 to i32*
  store i32 0, i32* %35, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -4
  %38 = load i64, i64* %PC.i, align 8
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC.i, align 8
  %40 = inttoptr i64 %37 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RDI.i, align 8
  %43 = add i64 %36, -44
  %44 = add i64 %38, 6
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -48
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 1, i32* %50, align 4
  %RAX.i1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4011e6

block_.L_4011e6:                                  ; preds = %block_.L_40123d, %entry
  %57 = phi i64 [ %309, %block_.L_40123d ], [ %.pre, %entry ]
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = add i64 %57, 3
  store i64 %60, i64* %PC.i, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 3
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RAX.i1207, align 8
  %65 = lshr i32 %62, 29
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %51, align 1
  %68 = and i32 %63, 248
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %73 = icmp eq i32 %63, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %54, align 1
  %75 = lshr i32 %62, 28
  %76 = and i32 %75, 1
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %78 = add i64 %58, -44
  %79 = add i64 %57, 9
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %63, %81
  %83 = icmp ult i32 %63, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %51, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %52, align 1
  %90 = xor i32 %81, %63
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %53, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %54, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %55, align 1
  %99 = lshr i32 %81, 31
  %100 = xor i32 %99, %76
  %101 = xor i32 %97, %76
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %56, align 1
  %105 = icmp ne i8 %98, 0
  %106 = xor i1 %105, %103
  %.v = select i1 %106, i64 15, i64 101
  %107 = add i64 %57, %.v
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC.i, align 8
  br i1 %106, label %block_4011f5, label %block_.L_40124b

block_4011f5:                                     ; preds = %block_.L_4011e6
  %109 = load i32, i32* %80, align 4
  %110 = zext i32 %109 to i64
  %111 = shl nuw i64 %110, 32
  %112 = ashr i64 %111, 33
  %113 = trunc i32 %109 to i8
  %114 = and i8 %113, 1
  %115 = trunc i64 %112 to i32
  %116 = and i64 %112, 4294967295
  store i64 %116, i64* %RAX.i1207, align 8
  store i8 %114, i8* %51, align 1
  %117 = and i32 %115, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %122 = icmp eq i32 %115, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %54, align 1
  %124 = lshr i64 %112, 31
  %125 = trunc i64 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %127 = trunc i64 %112 to i32
  %128 = add i64 %107, 8
  store i64 %128, i64* %PC.i, align 8
  store i32 %127, i32* %80, align 4
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -28
  %131 = load i64, i64* %PC.i, align 8
  %132 = add i64 %131, 7
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %130 to i32*
  store i32 0, i32* %133, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_401205

block_.L_401205:                                  ; preds = %block_401211, %block_4011f5
  %134 = phi i64 [ %287, %block_401211 ], [ %.pre1, %block_4011f5 ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -28
  %137 = add i64 %134, 3
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX.i1207, align 8
  %141 = add i64 %135, -48
  %142 = add i64 %134, 6
  store i64 %142, i64* %PC.i, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sub i32 %139, %144
  %146 = icmp ult i32 %139, %144
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %51, align 1
  %148 = and i32 %145, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148)
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %52, align 1
  %153 = xor i32 %144, %139
  %154 = xor i32 %153, %145
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %53, align 1
  %158 = icmp eq i32 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %54, align 1
  %160 = lshr i32 %145, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %55, align 1
  %162 = lshr i32 %139, 31
  %163 = lshr i32 %144, 31
  %164 = xor i32 %163, %162
  %165 = xor i32 %160, %162
  %166 = add nuw nsw i32 %165, %164
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %56, align 1
  %169 = icmp ne i8 %161, 0
  %170 = xor i1 %169, %167
  %.v7 = select i1 %170, i64 12, i64 56
  %171 = add i64 %134, %.v7
  store i64 %171, i64* %3, align 8
  br i1 %170, label %block_401211, label %block_.L_40123d

block_401211:                                     ; preds = %block_.L_401205
  %172 = add i64 %135, -16
  %173 = add i64 %171, 4
  store i64 %173, i64* %PC.i, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RAX.i1207, align 8
  %176 = add i64 %171, 8
  store i64 %176, i64* %PC.i, align 8
  %177 = load i32, i32* %138, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RCX.i1178, align 8
  %179 = shl nsw i64 %178, 2
  %180 = add i64 %179, %175
  %181 = add i64 %171, 11
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RDX.i1221, align 8
  %185 = add i64 %135, -44
  %186 = add i64 %171, 14
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, %183
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RDX.i1221, align 8
  %191 = icmp ult i32 %189, %183
  %192 = icmp ult i32 %189, %188
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %51, align 1
  %195 = and i32 %189, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %52, align 1
  %200 = xor i32 %188, %183
  %201 = xor i32 %200, %189
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %53, align 1
  %205 = icmp eq i32 %189, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %54, align 1
  %207 = lshr i32 %189, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %55, align 1
  %209 = lshr i32 %183, 31
  %210 = lshr i32 %188, 31
  %211 = xor i32 %207, %209
  %212 = xor i32 %207, %210
  %213 = add nuw nsw i32 %211, %212
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %56, align 1
  %216 = add i64 %171, 18
  store i64 %216, i64* %PC.i, align 8
  %217 = load i64, i64* %174, align 8
  store i64 %217, i64* %RAX.i1207, align 8
  %218 = add i64 %171, 21
  store i64 %218, i64* %PC.i, align 8
  %219 = load i32, i32* %143, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RSI.i1224, align 8
  %221 = add i64 %171, 24
  store i64 %221, i64* %PC.i, align 8
  %222 = load i32, i32* %138, align 4
  %223 = add i32 %222, %219
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RSI.i1224, align 8
  %225 = icmp ult i32 %223, %219
  %226 = icmp ult i32 %223, %222
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %51, align 1
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %52, align 1
  %234 = xor i32 %222, %219
  %235 = xor i32 %234, %223
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %53, align 1
  %239 = icmp eq i32 %223, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %54, align 1
  %241 = lshr i32 %223, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %55, align 1
  %243 = lshr i32 %219, 31
  %244 = lshr i32 %222, 31
  %245 = xor i32 %241, %243
  %246 = xor i32 %241, %244
  %247 = add nuw nsw i32 %245, %246
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %56, align 1
  %250 = sext i32 %223 to i64
  store i64 %250, i64* %RCX.i1178, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add i64 %251, %217
  %253 = add i64 %171, 30
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i32*
  store i32 %189, i32* %254, align 4
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -28
  %257 = load i64, i64* %PC.i, align 8
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, 1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX.i1207, align 8
  %263 = icmp eq i32 %260, -1
  %264 = icmp eq i32 %261, 0
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %51, align 1
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %52, align 1
  %272 = xor i32 %260, %261
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %53, align 1
  %276 = icmp eq i32 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %54, align 1
  %278 = lshr i32 %261, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %55, align 1
  %280 = lshr i32 %260, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %56, align 1
  %285 = add i64 %257, 9
  store i64 %285, i64* %PC.i, align 8
  store i32 %261, i32* %259, align 4
  %286 = load i64, i64* %PC.i, align 8
  %287 = add i64 %286, -51
  store i64 %287, i64* %3, align 8
  br label %block_.L_401205

block_.L_40123d:                                  ; preds = %block_.L_401205
  %288 = add i64 %171, 3
  store i64 %288, i64* %PC.i, align 8
  %289 = load i32, i32* %143, align 4
  %290 = shl i32 %289, 1
  %291 = icmp slt i32 %289, 0
  %292 = icmp slt i32 %290, 0
  %293 = xor i1 %291, %292
  %294 = zext i32 %290 to i64
  store i64 %294, i64* %RAX.i1207, align 8
  %.lobit = lshr i32 %289, 31
  %295 = trunc i32 %.lobit to i8
  store i8 %295, i8* %51, align 1
  %296 = and i32 %290, 254
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %301 = icmp eq i32 %290, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %54, align 1
  %303 = lshr i32 %289, 30
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %55, align 1
  %306 = zext i1 %293 to i8
  store i8 %306, i8* %56, align 1
  %307 = add i64 %171, 8
  store i64 %307, i64* %PC.i, align 8
  store i32 %290, i32* %143, align 4
  %308 = load i64, i64* %PC.i, align 8
  %309 = add i64 %308, -96
  store i64 %309, i64* %3, align 8
  br label %block_.L_4011e6

block_.L_40124b:                                  ; preds = %block_.L_4011e6
  %310 = load i32, i32* %61, align 4
  %311 = shl i32 %310, 1
  %312 = icmp slt i32 %310, 0
  %313 = icmp slt i32 %311, 0
  %314 = xor i1 %312, %313
  %315 = zext i32 %311 to i64
  store i64 %315, i64* %RAX.i1207, align 8
  %.lobit8 = lshr i32 %310, 31
  %316 = trunc i32 %.lobit8 to i8
  store i8 %316, i8* %51, align 1
  %317 = and i32 %311, 254
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %322 = icmp eq i32 %311, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %54, align 1
  %324 = lshr i32 %310, 30
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %55, align 1
  %327 = zext i1 %314 to i8
  store i8 %327, i8* %56, align 1
  %328 = add i64 %58, -52
  %329 = add i64 %107, 8
  store i64 %329, i64* %PC.i, align 8
  %330 = inttoptr i64 %328 to i32*
  store i32 %311, i32* %330, align 4
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -48
  %333 = load i64, i64* %PC.i, align 8
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC.i, align 8
  %335 = inttoptr i64 %332 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = shl i32 %336, 3
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX.i1207, align 8
  %339 = lshr i32 %336, 29
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %51, align 1
  %342 = and i32 %337, 248
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %347 = icmp eq i32 %337, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %54, align 1
  %349 = lshr i32 %336, 28
  %350 = and i32 %349, 1
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %352 = add i64 %331, -44
  %353 = add i64 %333, 9
  store i64 %353, i64* %PC.i, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = sub i32 %337, %355
  %357 = icmp ult i32 %337, %355
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %51, align 1
  %359 = and i32 %356, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %52, align 1
  %364 = xor i32 %355, %337
  %365 = xor i32 %364, %356
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %53, align 1
  %369 = icmp eq i32 %356, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %54, align 1
  %371 = lshr i32 %356, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %55, align 1
  %373 = lshr i32 %355, 31
  %374 = xor i32 %373, %350
  %375 = xor i32 %371, %350
  %376 = add nuw nsw i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %56, align 1
  %.v10 = select i1 %369, i64 15, i64 1040
  %379 = add i64 %333, %.v10
  %380 = add i64 %331, -36
  %381 = add i64 %379, 7
  store i64 %381, i64* %PC.i, align 8
  %382 = inttoptr i64 %380 to i32*
  br i1 %369, label %block_401263, label %block_.L_401664

block_401263:                                     ; preds = %block_.L_40124b
  store i32 0, i32* %382, align 4
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %385 = bitcast i64* %384 to double*
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_40126a

block_.L_40126a:                                  ; preds = %block_.L_40158d, %block_401263
  %386 = phi i64 [ %2329, %block_.L_40158d ], [ %.pre2, %block_401263 ]
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -36
  %389 = add i64 %386, 3
  store i64 %389, i64* %PC.i, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RAX.i1207, align 8
  %393 = add i64 %387, -48
  %394 = add i64 %386, 6
  store i64 %394, i64* %PC.i, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sub i32 %391, %396
  %398 = icmp ult i32 %391, %396
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %51, align 1
  %400 = and i32 %397, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %52, align 1
  %405 = xor i32 %396, %391
  %406 = xor i32 %405, %397
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %53, align 1
  %410 = icmp eq i32 %397, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %54, align 1
  %412 = lshr i32 %397, 31
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %55, align 1
  %414 = lshr i32 %391, 31
  %415 = lshr i32 %396, 31
  %416 = xor i32 %415, %414
  %417 = xor i32 %412, %414
  %418 = add nuw nsw i32 %417, %416
  %419 = icmp eq i32 %418, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %56, align 1
  %421 = icmp ne i8 %413, 0
  %422 = xor i1 %421, %419
  %.v11 = select i1 %422, i64 12, i64 1013
  %423 = add i64 %386, %.v11
  store i64 %423, i64* %3, align 8
  br i1 %422, label %block_401276, label %block_.L_40165f

block_401276:                                     ; preds = %block_.L_40126a
  %424 = add i64 %387, -28
  %425 = add i64 %423, 7
  store i64 %425, i64* %PC.i, align 8
  %426 = inttoptr i64 %424 to i32*
  store i32 0, i32* %426, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_40127d

block_.L_40127d:                                  ; preds = %block_401289, %block_401276
  %427 = phi i64 [ %1909, %block_401289 ], [ %.pre3, %block_401276 ]
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -28
  %430 = add i64 %427, 3
  store i64 %430, i64* %PC.i, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RAX.i1207, align 8
  %434 = add i64 %428, -36
  %435 = add i64 %427, 6
  store i64 %435, i64* %PC.i, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sub i32 %432, %437
  %439 = icmp ult i32 %432, %437
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %51, align 1
  %441 = and i32 %438, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %52, align 1
  %446 = xor i32 %437, %432
  %447 = xor i32 %446, %438
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %53, align 1
  %451 = icmp eq i32 %438, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %54, align 1
  %453 = lshr i32 %438, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %55, align 1
  %455 = lshr i32 %432, 31
  %456 = lshr i32 %437, 31
  %457 = xor i32 %456, %455
  %458 = xor i32 %453, %455
  %459 = add nuw nsw i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %56, align 1
  %462 = icmp ne i8 %454, 0
  %463 = xor i1 %462, %460
  %.v12 = select i1 %463, i64 12, i64 784
  %464 = add i64 %427, %.v12
  %465 = add i64 %464, 3
  store i64 %465, i64* %PC.i, align 8
  br i1 %463, label %block_401289, label %block_.L_40158d

block_401289:                                     ; preds = %block_.L_40127d
  %466 = load i32, i32* %431, align 4
  %467 = shl i32 %466, 1
  %468 = icmp slt i32 %466, 0
  %469 = icmp slt i32 %467, 0
  %470 = xor i1 %468, %469
  %471 = zext i32 %467 to i64
  store i64 %471, i64* %RAX.i1207, align 8
  %.lobit13 = lshr i32 %466, 31
  %472 = trunc i32 %.lobit13 to i8
  store i8 %472, i8* %51, align 1
  %473 = and i32 %467, 254
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %478 = icmp eq i32 %467, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %54, align 1
  %480 = lshr i32 %466, 30
  %481 = and i32 %480, 1
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %55, align 1
  %483 = zext i1 %470 to i8
  store i8 %483, i8* %56, align 1
  %484 = add i64 %428, -16
  %485 = add i64 %464, 9
  store i64 %485, i64* %PC.i, align 8
  %486 = inttoptr i64 %484 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RCX.i1178, align 8
  %488 = add i64 %464, 13
  store i64 %488, i64* %PC.i, align 8
  %489 = load i32, i32* %436, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RDX.i1221, align 8
  %491 = shl nsw i64 %490, 2
  %492 = add i64 %491, %487
  %493 = add i64 %464, 16
  store i64 %493, i64* %PC.i, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, %467
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i1207, align 8
  %498 = icmp ult i32 %496, %467
  %499 = icmp ult i32 %496, %495
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %51, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %52, align 1
  %507 = xor i32 %495, %467
  %508 = xor i32 %507, %496
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %53, align 1
  %512 = icmp eq i32 %496, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %54, align 1
  %514 = lshr i32 %496, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %55, align 1
  %516 = lshr i32 %495, 31
  %517 = xor i32 %514, %481
  %518 = xor i32 %514, %516
  %519 = add nuw nsw i32 %517, %518
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %56, align 1
  %522 = add i64 %428, -32
  %523 = add i64 %464, 19
  store i64 %523, i64* %PC.i, align 8
  %524 = inttoptr i64 %522 to i32*
  store i32 %496, i32* %524, align 4
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -36
  %527 = load i64, i64* %PC.i, align 8
  %528 = add i64 %527, 3
  store i64 %528, i64* %PC.i, align 8
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = shl i32 %530, 1
  %532 = icmp slt i32 %530, 0
  %533 = icmp slt i32 %531, 0
  %534 = xor i1 %532, %533
  %535 = zext i32 %531 to i64
  store i64 %535, i64* %RAX.i1207, align 8
  %.lobit14 = lshr i32 %530, 31
  %536 = trunc i32 %.lobit14 to i8
  store i8 %536, i8* %51, align 1
  %537 = and i32 %531, 254
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %542 = icmp eq i32 %531, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %54, align 1
  %544 = lshr i32 %530, 30
  %545 = and i32 %544, 1
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %55, align 1
  %547 = zext i1 %534 to i8
  store i8 %547, i8* %56, align 1
  %548 = add i64 %525, -16
  %549 = add i64 %527, 9
  store i64 %549, i64* %PC.i, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RCX.i1178, align 8
  %552 = add i64 %525, -28
  %553 = add i64 %527, 13
  store i64 %553, i64* %PC.i, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %RDX.i1221, align 8
  %557 = shl nsw i64 %556, 2
  %558 = add i64 %557, %551
  %559 = add i64 %527, 16
  store i64 %559, i64* %PC.i, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, %531
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RAX.i1207, align 8
  %564 = icmp ult i32 %562, %531
  %565 = icmp ult i32 %562, %561
  %566 = or i1 %564, %565
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %51, align 1
  %568 = and i32 %562, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %52, align 1
  %573 = xor i32 %561, %531
  %574 = xor i32 %573, %562
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %53, align 1
  %578 = icmp eq i32 %562, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %54, align 1
  %580 = lshr i32 %562, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %55, align 1
  %582 = lshr i32 %561, 31
  %583 = xor i32 %580, %545
  %584 = xor i32 %580, %582
  %585 = add nuw nsw i32 %583, %584
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %56, align 1
  %588 = add i64 %525, -40
  %589 = add i64 %527, 19
  store i64 %589, i64* %PC.i, align 8
  %590 = inttoptr i64 %588 to i32*
  store i32 %562, i32* %590, align 4
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -24
  %593 = load i64, i64* %PC.i, align 8
  %594 = add i64 %593, 4
  store i64 %594, i64* %PC.i, align 8
  %595 = inttoptr i64 %592 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RCX.i1178, align 8
  %597 = add i64 %591, -32
  %598 = add i64 %593, 8
  store i64 %598, i64* %PC.i, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RDX.i1221, align 8
  %602 = shl nsw i64 %601, 3
  %603 = add i64 %602, %596
  %604 = add i64 %593, 13
  store i64 %604, i64* %PC.i, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  %607 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %606, i64* %607, align 1
  store double 0.000000e+00, double* %385, align 1
  %608 = add i64 %591, -64
  %609 = add i64 %593, 18
  store i64 %609, i64* %PC.i, align 8
  %610 = inttoptr i64 %608 to i64*
  store i64 %606, i64* %610, align 8
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -24
  %613 = load i64, i64* %PC.i, align 8
  %614 = add i64 %613, 4
  store i64 %614, i64* %PC.i, align 8
  %615 = inttoptr i64 %612 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %RCX.i1178, align 8
  %617 = add i64 %611, -32
  %618 = add i64 %613, 7
  store i64 %618, i64* %PC.i, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = add i32 %620, 1
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i1207, align 8
  %623 = icmp eq i32 %620, -1
  %624 = icmp eq i32 %621, 0
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %51, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %52, align 1
  %632 = xor i32 %620, %621
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %53, align 1
  %636 = icmp eq i32 %621, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %54, align 1
  %638 = lshr i32 %621, 31
  %639 = trunc i32 %638 to i8
  store i8 %639, i8* %55, align 1
  %640 = lshr i32 %620, 31
  %641 = xor i32 %638, %640
  %642 = add nuw nsw i32 %641, %638
  %643 = icmp eq i32 %642, 2
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %56, align 1
  %645 = sext i32 %621 to i64
  store i64 %645, i64* %RDX.i1221, align 8
  %646 = shl nsw i64 %645, 3
  %647 = add i64 %646, %616
  %648 = add i64 %613, 18
  store i64 %648, i64* %PC.i, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  %651 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %650, i64* %651, align 1
  store double 0.000000e+00, double* %385, align 1
  %652 = add i64 %611, -72
  %653 = add i64 %613, 23
  store i64 %653, i64* %PC.i, align 8
  %654 = inttoptr i64 %652 to i64*
  store i64 %650, i64* %654, align 8
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -24
  %657 = load i64, i64* %PC.i, align 8
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RCX.i1178, align 8
  %661 = add i64 %655, -40
  %662 = add i64 %657, 8
  store i64 %662, i64* %PC.i, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = sext i32 %664 to i64
  store i64 %665, i64* %RDX.i1221, align 8
  %666 = shl nsw i64 %665, 3
  %667 = add i64 %666, %660
  %668 = add i64 %657, 13
  store i64 %668, i64* %PC.i, align 8
  %669 = inttoptr i64 %667 to i64*
  %670 = load i64, i64* %669, align 8
  %671 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %670, i64* %671, align 1
  store double 0.000000e+00, double* %385, align 1
  %672 = add i64 %655, -80
  %673 = add i64 %657, 18
  store i64 %673, i64* %PC.i, align 8
  %674 = inttoptr i64 %672 to i64*
  store i64 %670, i64* %674, align 8
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -24
  %677 = load i64, i64* %PC.i, align 8
  %678 = add i64 %677, 4
  store i64 %678, i64* %PC.i, align 8
  %679 = inttoptr i64 %676 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RCX.i1178, align 8
  %681 = add i64 %675, -40
  %682 = add i64 %677, 7
  store i64 %682, i64* %PC.i, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = add i32 %684, 1
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RAX.i1207, align 8
  %687 = icmp eq i32 %684, -1
  %688 = icmp eq i32 %685, 0
  %689 = or i1 %687, %688
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %51, align 1
  %691 = and i32 %685, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %52, align 1
  %696 = xor i32 %684, %685
  %697 = lshr i32 %696, 4
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  store i8 %699, i8* %53, align 1
  %700 = icmp eq i32 %685, 0
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %54, align 1
  %702 = lshr i32 %685, 31
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %55, align 1
  %704 = lshr i32 %684, 31
  %705 = xor i32 %702, %704
  %706 = add nuw nsw i32 %705, %702
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %56, align 1
  %709 = sext i32 %685 to i64
  store i64 %709, i64* %RDX.i1221, align 8
  %710 = shl nsw i64 %709, 3
  %711 = add i64 %710, %680
  %712 = add i64 %677, 18
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  %715 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %714, i64* %715, align 1
  store double 0.000000e+00, double* %385, align 1
  %716 = add i64 %675, -88
  %717 = add i64 %677, 23
  store i64 %717, i64* %PC.i, align 8
  %718 = inttoptr i64 %716 to i64*
  store i64 %714, i64* %718, align 8
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -80
  %721 = load i64, i64* %PC.i, align 8
  %722 = add i64 %721, 5
  store i64 %722, i64* %PC.i, align 8
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723, align 8
  %725 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %724, i64* %725, align 1
  store double 0.000000e+00, double* %385, align 1
  %726 = add i64 %719, -24
  %727 = add i64 %721, 9
  store i64 %727, i64* %PC.i, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RCX.i1178, align 8
  %730 = add i64 %719, -32
  %731 = add i64 %721, 13
  store i64 %731, i64* %PC.i, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RDX.i1221, align 8
  %735 = shl nsw i64 %734, 3
  %736 = add i64 %735, %729
  %737 = add i64 %721, 18
  store i64 %737, i64* %PC.i, align 8
  %738 = inttoptr i64 %736 to i64*
  store i64 %724, i64* %738, align 8
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -88
  %741 = load i64, i64* %PC.i, align 8
  %742 = add i64 %741, 5
  store i64 %742, i64* %PC.i, align 8
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743, align 8
  %745 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %744, i64* %745, align 1
  store double 0.000000e+00, double* %385, align 1
  %746 = add i64 %739, -24
  %747 = add i64 %741, 9
  store i64 %747, i64* %PC.i, align 8
  %748 = inttoptr i64 %746 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %RCX.i1178, align 8
  %750 = add i64 %739, -32
  %751 = add i64 %741, 12
  store i64 %751, i64* %PC.i, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = add i32 %753, 1
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RAX.i1207, align 8
  %756 = icmp eq i32 %753, -1
  %757 = icmp eq i32 %754, 0
  %758 = or i1 %756, %757
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %51, align 1
  %760 = and i32 %754, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %52, align 1
  %765 = xor i32 %753, %754
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %53, align 1
  %769 = icmp eq i32 %754, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %54, align 1
  %771 = lshr i32 %754, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %55, align 1
  %773 = lshr i32 %753, 31
  %774 = xor i32 %771, %773
  %775 = add nuw nsw i32 %774, %771
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %56, align 1
  %778 = sext i32 %754 to i64
  store i64 %778, i64* %RDX.i1221, align 8
  %779 = shl nsw i64 %778, 3
  %780 = add i64 %779, %749
  %781 = add i64 %741, 23
  store i64 %781, i64* %PC.i, align 8
  %782 = inttoptr i64 %780 to i64*
  store i64 %744, i64* %782, align 8
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -64
  %785 = load i64, i64* %PC.i, align 8
  %786 = add i64 %785, 5
  store i64 %786, i64* %PC.i, align 8
  %787 = inttoptr i64 %784 to i64*
  %788 = load i64, i64* %787, align 8
  %789 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %788, i64* %789, align 1
  store double 0.000000e+00, double* %385, align 1
  %790 = add i64 %783, -24
  %791 = add i64 %785, 9
  store i64 %791, i64* %PC.i, align 8
  %792 = inttoptr i64 %790 to i64*
  %793 = load i64, i64* %792, align 8
  store i64 %793, i64* %RCX.i1178, align 8
  %794 = add i64 %783, -40
  %795 = add i64 %785, 13
  store i64 %795, i64* %PC.i, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %797 to i64
  store i64 %798, i64* %RDX.i1221, align 8
  %799 = shl nsw i64 %798, 3
  %800 = add i64 %799, %793
  %801 = add i64 %785, 18
  store i64 %801, i64* %PC.i, align 8
  %802 = inttoptr i64 %800 to i64*
  store i64 %788, i64* %802, align 8
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -72
  %805 = load i64, i64* %PC.i, align 8
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC.i, align 8
  %807 = inttoptr i64 %804 to i64*
  %808 = load i64, i64* %807, align 8
  %809 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %808, i64* %809, align 1
  store double 0.000000e+00, double* %385, align 1
  %810 = add i64 %803, -24
  %811 = add i64 %805, 9
  store i64 %811, i64* %PC.i, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RCX.i1178, align 8
  %814 = add i64 %803, -40
  %815 = add i64 %805, 12
  store i64 %815, i64* %PC.i, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = add i32 %817, 1
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX.i1207, align 8
  %820 = icmp eq i32 %817, -1
  %821 = icmp eq i32 %818, 0
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %51, align 1
  %824 = and i32 %818, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %52, align 1
  %829 = xor i32 %817, %818
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %53, align 1
  %833 = icmp eq i32 %818, 0
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %54, align 1
  %835 = lshr i32 %818, 31
  %836 = trunc i32 %835 to i8
  store i8 %836, i8* %55, align 1
  %837 = lshr i32 %817, 31
  %838 = xor i32 %835, %837
  %839 = add nuw nsw i32 %838, %835
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %56, align 1
  %842 = sext i32 %818 to i64
  store i64 %842, i64* %RDX.i1221, align 8
  %843 = shl nsw i64 %842, 3
  %844 = add i64 %843, %813
  %845 = add i64 %805, 23
  store i64 %845, i64* %PC.i, align 8
  %846 = inttoptr i64 %844 to i64*
  store i64 %808, i64* %846, align 8
  %847 = load i64, i64* %RBP.i, align 8
  %848 = add i64 %847, -52
  %849 = load i64, i64* %PC.i, align 8
  %850 = add i64 %849, 3
  store i64 %850, i64* %PC.i, align 8
  %851 = inttoptr i64 %848 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RAX.i1207, align 8
  %854 = add i64 %847, -32
  %855 = add i64 %849, 6
  store i64 %855, i64* %PC.i, align 8
  %856 = inttoptr i64 %854 to i32*
  %857 = load i32, i32* %856, align 4
  %858 = add i32 %857, %852
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RAX.i1207, align 8
  %860 = icmp ult i32 %858, %852
  %861 = icmp ult i32 %858, %857
  %862 = or i1 %860, %861
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %51, align 1
  %864 = and i32 %858, 255
  %865 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  store i8 %868, i8* %52, align 1
  %869 = xor i32 %857, %852
  %870 = xor i32 %869, %858
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %53, align 1
  %874 = icmp eq i32 %858, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %54, align 1
  %876 = lshr i32 %858, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %55, align 1
  %878 = lshr i32 %852, 31
  %879 = lshr i32 %857, 31
  %880 = xor i32 %876, %878
  %881 = xor i32 %876, %879
  %882 = add nuw nsw i32 %880, %881
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %56, align 1
  %885 = add i64 %849, 9
  store i64 %885, i64* %PC.i, align 8
  store i32 %858, i32* %856, align 4
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -52
  %888 = load i64, i64* %PC.i, align 8
  %889 = add i64 %888, 3
  store i64 %889, i64* %PC.i, align 8
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = shl i32 %891, 1
  %893 = icmp slt i32 %891, 0
  %894 = icmp slt i32 %892, 0
  %895 = xor i1 %893, %894
  %896 = zext i32 %892 to i64
  store i64 %896, i64* %RAX.i1207, align 8
  %.lobit15 = lshr i32 %891, 31
  %897 = trunc i32 %.lobit15 to i8
  store i8 %897, i8* %51, align 1
  %898 = and i32 %892, 254
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %903 = icmp eq i32 %892, 0
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %54, align 1
  %905 = lshr i32 %891, 30
  %906 = and i32 %905, 1
  %907 = trunc i32 %906 to i8
  store i8 %907, i8* %55, align 1
  %908 = zext i1 %895 to i8
  store i8 %908, i8* %56, align 1
  %909 = add i64 %886, -40
  %910 = add i64 %888, 8
  store i64 %910, i64* %PC.i, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = add i32 %912, %892
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i1207, align 8
  %915 = icmp ult i32 %913, %892
  %916 = icmp ult i32 %913, %912
  %917 = or i1 %915, %916
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %51, align 1
  %919 = and i32 %913, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %52, align 1
  %924 = xor i32 %912, %892
  %925 = xor i32 %924, %913
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %53, align 1
  %929 = icmp eq i32 %913, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %54, align 1
  %931 = lshr i32 %913, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %55, align 1
  %933 = lshr i32 %912, 31
  %934 = xor i32 %931, %906
  %935 = xor i32 %931, %933
  %936 = add nuw nsw i32 %934, %935
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %56, align 1
  %939 = add i64 %888, 11
  store i64 %939, i64* %PC.i, align 8
  store i32 %913, i32* %911, align 4
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -24
  %942 = load i64, i64* %PC.i, align 8
  %943 = add i64 %942, 4
  store i64 %943, i64* %PC.i, align 8
  %944 = inttoptr i64 %941 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RCX.i1178, align 8
  %946 = add i64 %940, -32
  %947 = add i64 %942, 8
  store i64 %947, i64* %PC.i, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RDX.i1221, align 8
  %951 = shl nsw i64 %950, 3
  %952 = add i64 %951, %945
  %953 = add i64 %942, 13
  store i64 %953, i64* %PC.i, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  %956 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %955, i64* %956, align 1
  store double 0.000000e+00, double* %385, align 1
  %957 = add i64 %940, -64
  %958 = add i64 %942, 18
  store i64 %958, i64* %PC.i, align 8
  %959 = inttoptr i64 %957 to i64*
  store i64 %955, i64* %959, align 8
  %960 = load i64, i64* %RBP.i, align 8
  %961 = add i64 %960, -24
  %962 = load i64, i64* %PC.i, align 8
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC.i, align 8
  %964 = inttoptr i64 %961 to i64*
  %965 = load i64, i64* %964, align 8
  store i64 %965, i64* %RCX.i1178, align 8
  %966 = add i64 %960, -32
  %967 = add i64 %962, 7
  store i64 %967, i64* %PC.i, align 8
  %968 = inttoptr i64 %966 to i32*
  %969 = load i32, i32* %968, align 4
  %970 = add i32 %969, 1
  %971 = zext i32 %970 to i64
  store i64 %971, i64* %RAX.i1207, align 8
  %972 = icmp eq i32 %969, -1
  %973 = icmp eq i32 %970, 0
  %974 = or i1 %972, %973
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %51, align 1
  %976 = and i32 %970, 255
  %977 = tail call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  store i8 %980, i8* %52, align 1
  %981 = xor i32 %969, %970
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %53, align 1
  %985 = icmp eq i32 %970, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %54, align 1
  %987 = lshr i32 %970, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %55, align 1
  %989 = lshr i32 %969, 31
  %990 = xor i32 %987, %989
  %991 = add nuw nsw i32 %990, %987
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %56, align 1
  %994 = sext i32 %970 to i64
  store i64 %994, i64* %RDX.i1221, align 8
  %995 = shl nsw i64 %994, 3
  %996 = add i64 %995, %965
  %997 = add i64 %962, 18
  store i64 %997, i64* %PC.i, align 8
  %998 = inttoptr i64 %996 to i64*
  %999 = load i64, i64* %998, align 8
  %1000 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %999, i64* %1000, align 1
  store double 0.000000e+00, double* %385, align 1
  %1001 = add i64 %960, -72
  %1002 = add i64 %962, 23
  store i64 %1002, i64* %PC.i, align 8
  %1003 = inttoptr i64 %1001 to i64*
  store i64 %999, i64* %1003, align 8
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -24
  %1006 = load i64, i64* %PC.i, align 8
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %PC.i, align 8
  %1008 = inttoptr i64 %1005 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RCX.i1178, align 8
  %1010 = add i64 %1004, -40
  %1011 = add i64 %1006, 8
  store i64 %1011, i64* %PC.i, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RDX.i1221, align 8
  %1015 = shl nsw i64 %1014, 3
  %1016 = add i64 %1015, %1009
  %1017 = add i64 %1006, 13
  store i64 %1017, i64* %PC.i, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  %1020 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1019, i64* %1020, align 1
  store double 0.000000e+00, double* %385, align 1
  %1021 = add i64 %1004, -80
  %1022 = add i64 %1006, 18
  store i64 %1022, i64* %PC.i, align 8
  %1023 = inttoptr i64 %1021 to i64*
  store i64 %1019, i64* %1023, align 8
  %1024 = load i64, i64* %RBP.i, align 8
  %1025 = add i64 %1024, -24
  %1026 = load i64, i64* %PC.i, align 8
  %1027 = add i64 %1026, 4
  store i64 %1027, i64* %PC.i, align 8
  %1028 = inttoptr i64 %1025 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %RCX.i1178, align 8
  %1030 = add i64 %1024, -40
  %1031 = add i64 %1026, 7
  store i64 %1031, i64* %PC.i, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = add i32 %1033, 1
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %RAX.i1207, align 8
  %1036 = icmp eq i32 %1033, -1
  %1037 = icmp eq i32 %1034, 0
  %1038 = or i1 %1036, %1037
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %51, align 1
  %1040 = and i32 %1034, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %52, align 1
  %1045 = xor i32 %1033, %1034
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %53, align 1
  %1049 = icmp eq i32 %1034, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %54, align 1
  %1051 = lshr i32 %1034, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %55, align 1
  %1053 = lshr i32 %1033, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1051
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %56, align 1
  %1058 = sext i32 %1034 to i64
  store i64 %1058, i64* %RDX.i1221, align 8
  %1059 = shl nsw i64 %1058, 3
  %1060 = add i64 %1059, %1029
  %1061 = add i64 %1026, 18
  store i64 %1061, i64* %PC.i, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  %1064 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1063, i64* %1064, align 1
  store double 0.000000e+00, double* %385, align 1
  %1065 = add i64 %1024, -88
  %1066 = add i64 %1026, 23
  store i64 %1066, i64* %PC.i, align 8
  %1067 = inttoptr i64 %1065 to i64*
  store i64 %1063, i64* %1067, align 8
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -80
  %1070 = load i64, i64* %PC.i, align 8
  %1071 = add i64 %1070, 5
  store i64 %1071, i64* %PC.i, align 8
  %1072 = inttoptr i64 %1069 to i64*
  %1073 = load i64, i64* %1072, align 8
  %1074 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1073, i64* %1074, align 1
  store double 0.000000e+00, double* %385, align 1
  %1075 = add i64 %1068, -24
  %1076 = add i64 %1070, 9
  store i64 %1076, i64* %PC.i, align 8
  %1077 = inttoptr i64 %1075 to i64*
  %1078 = load i64, i64* %1077, align 8
  store i64 %1078, i64* %RCX.i1178, align 8
  %1079 = add i64 %1068, -32
  %1080 = add i64 %1070, 13
  store i64 %1080, i64* %PC.i, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %RDX.i1221, align 8
  %1084 = shl nsw i64 %1083, 3
  %1085 = add i64 %1084, %1078
  %1086 = add i64 %1070, 18
  store i64 %1086, i64* %PC.i, align 8
  %1087 = inttoptr i64 %1085 to i64*
  store i64 %1073, i64* %1087, align 8
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -88
  %1090 = load i64, i64* %PC.i, align 8
  %1091 = add i64 %1090, 5
  store i64 %1091, i64* %PC.i, align 8
  %1092 = inttoptr i64 %1089 to i64*
  %1093 = load i64, i64* %1092, align 8
  %1094 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1093, i64* %1094, align 1
  store double 0.000000e+00, double* %385, align 1
  %1095 = add i64 %1088, -24
  %1096 = add i64 %1090, 9
  store i64 %1096, i64* %PC.i, align 8
  %1097 = inttoptr i64 %1095 to i64*
  %1098 = load i64, i64* %1097, align 8
  store i64 %1098, i64* %RCX.i1178, align 8
  %1099 = add i64 %1088, -32
  %1100 = add i64 %1090, 12
  store i64 %1100, i64* %PC.i, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = add i32 %1102, 1
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i1207, align 8
  %1105 = icmp eq i32 %1102, -1
  %1106 = icmp eq i32 %1103, 0
  %1107 = or i1 %1105, %1106
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %51, align 1
  %1109 = and i32 %1103, 255
  %1110 = tail call i32 @llvm.ctpop.i32(i32 %1109)
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = xor i8 %1112, 1
  store i8 %1113, i8* %52, align 1
  %1114 = xor i32 %1102, %1103
  %1115 = lshr i32 %1114, 4
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, i8* %53, align 1
  %1118 = icmp eq i32 %1103, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %54, align 1
  %1120 = lshr i32 %1103, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %55, align 1
  %1122 = lshr i32 %1102, 31
  %1123 = xor i32 %1120, %1122
  %1124 = add nuw nsw i32 %1123, %1120
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %56, align 1
  %1127 = sext i32 %1103 to i64
  store i64 %1127, i64* %RDX.i1221, align 8
  %1128 = shl nsw i64 %1127, 3
  %1129 = add i64 %1128, %1098
  %1130 = add i64 %1090, 23
  store i64 %1130, i64* %PC.i, align 8
  %1131 = inttoptr i64 %1129 to i64*
  store i64 %1093, i64* %1131, align 8
  %1132 = load i64, i64* %RBP.i, align 8
  %1133 = add i64 %1132, -64
  %1134 = load i64, i64* %PC.i, align 8
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC.i, align 8
  %1136 = inttoptr i64 %1133 to i64*
  %1137 = load i64, i64* %1136, align 8
  %1138 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1137, i64* %1138, align 1
  store double 0.000000e+00, double* %385, align 1
  %1139 = add i64 %1132, -24
  %1140 = add i64 %1134, 9
  store i64 %1140, i64* %PC.i, align 8
  %1141 = inttoptr i64 %1139 to i64*
  %1142 = load i64, i64* %1141, align 8
  store i64 %1142, i64* %RCX.i1178, align 8
  %1143 = add i64 %1132, -40
  %1144 = add i64 %1134, 13
  store i64 %1144, i64* %PC.i, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = sext i32 %1146 to i64
  store i64 %1147, i64* %RDX.i1221, align 8
  %1148 = shl nsw i64 %1147, 3
  %1149 = add i64 %1148, %1142
  %1150 = add i64 %1134, 18
  store i64 %1150, i64* %PC.i, align 8
  %1151 = inttoptr i64 %1149 to i64*
  store i64 %1137, i64* %1151, align 8
  %1152 = load i64, i64* %RBP.i, align 8
  %1153 = add i64 %1152, -72
  %1154 = load i64, i64* %PC.i, align 8
  %1155 = add i64 %1154, 5
  store i64 %1155, i64* %PC.i, align 8
  %1156 = inttoptr i64 %1153 to i64*
  %1157 = load i64, i64* %1156, align 8
  %1158 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1157, i64* %1158, align 1
  store double 0.000000e+00, double* %385, align 1
  %1159 = add i64 %1152, -24
  %1160 = add i64 %1154, 9
  store i64 %1160, i64* %PC.i, align 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RCX.i1178, align 8
  %1163 = add i64 %1152, -40
  %1164 = add i64 %1154, 12
  store i64 %1164, i64* %PC.i, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = add i32 %1166, 1
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i1207, align 8
  %1169 = icmp eq i32 %1166, -1
  %1170 = icmp eq i32 %1167, 0
  %1171 = or i1 %1169, %1170
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %51, align 1
  %1173 = and i32 %1167, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %52, align 1
  %1178 = xor i32 %1166, %1167
  %1179 = lshr i32 %1178, 4
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  store i8 %1181, i8* %53, align 1
  %1182 = icmp eq i32 %1167, 0
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %54, align 1
  %1184 = lshr i32 %1167, 31
  %1185 = trunc i32 %1184 to i8
  store i8 %1185, i8* %55, align 1
  %1186 = lshr i32 %1166, 31
  %1187 = xor i32 %1184, %1186
  %1188 = add nuw nsw i32 %1187, %1184
  %1189 = icmp eq i32 %1188, 2
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %56, align 1
  %1191 = sext i32 %1167 to i64
  store i64 %1191, i64* %RDX.i1221, align 8
  %1192 = shl nsw i64 %1191, 3
  %1193 = add i64 %1192, %1162
  %1194 = add i64 %1154, 23
  store i64 %1194, i64* %PC.i, align 8
  %1195 = inttoptr i64 %1193 to i64*
  store i64 %1157, i64* %1195, align 8
  %1196 = load i64, i64* %RBP.i, align 8
  %1197 = add i64 %1196, -52
  %1198 = load i64, i64* %PC.i, align 8
  %1199 = add i64 %1198, 3
  store i64 %1199, i64* %PC.i, align 8
  %1200 = inttoptr i64 %1197 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RAX.i1207, align 8
  %1203 = add i64 %1196, -32
  %1204 = add i64 %1198, 6
  store i64 %1204, i64* %PC.i, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = add i32 %1206, %1201
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RAX.i1207, align 8
  %1209 = icmp ult i32 %1207, %1201
  %1210 = icmp ult i32 %1207, %1206
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %51, align 1
  %1213 = and i32 %1207, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %52, align 1
  %1218 = xor i32 %1206, %1201
  %1219 = xor i32 %1218, %1207
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %53, align 1
  %1223 = icmp eq i32 %1207, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %54, align 1
  %1225 = lshr i32 %1207, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %55, align 1
  %1227 = lshr i32 %1201, 31
  %1228 = lshr i32 %1206, 31
  %1229 = xor i32 %1225, %1227
  %1230 = xor i32 %1225, %1228
  %1231 = add nuw nsw i32 %1229, %1230
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %56, align 1
  %1234 = add i64 %1198, 9
  store i64 %1234, i64* %PC.i, align 8
  store i32 %1207, i32* %1205, align 4
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -52
  %1237 = load i64, i64* %PC.i, align 8
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %PC.i, align 8
  %1239 = inttoptr i64 %1236 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i1207, align 8
  %1242 = add i64 %1235, -40
  %1243 = add i64 %1237, 6
  store i64 %1243, i64* %PC.i, align 8
  %1244 = inttoptr i64 %1242 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = sub i32 %1245, %1240
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RSI.i1224, align 8
  %1248 = icmp ult i32 %1245, %1240
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %51, align 1
  %1250 = and i32 %1246, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250)
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %52, align 1
  %1255 = xor i32 %1240, %1245
  %1256 = xor i32 %1255, %1246
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %53, align 1
  %1260 = icmp eq i32 %1246, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %54, align 1
  %1262 = lshr i32 %1246, 31
  %1263 = trunc i32 %1262 to i8
  store i8 %1263, i8* %55, align 1
  %1264 = lshr i32 %1245, 31
  %1265 = lshr i32 %1240, 31
  %1266 = xor i32 %1265, %1264
  %1267 = xor i32 %1262, %1264
  %1268 = add nuw nsw i32 %1267, %1266
  %1269 = icmp eq i32 %1268, 2
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %56, align 1
  %1271 = add i64 %1237, 11
  store i64 %1271, i64* %PC.i, align 8
  store i32 %1246, i32* %1244, align 4
  %1272 = load i64, i64* %RBP.i, align 8
  %1273 = add i64 %1272, -24
  %1274 = load i64, i64* %PC.i, align 8
  %1275 = add i64 %1274, 4
  store i64 %1275, i64* %PC.i, align 8
  %1276 = inttoptr i64 %1273 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RCX.i1178, align 8
  %1278 = add i64 %1272, -32
  %1279 = add i64 %1274, 8
  store i64 %1279, i64* %PC.i, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = sext i32 %1281 to i64
  store i64 %1282, i64* %RDX.i1221, align 8
  %1283 = shl nsw i64 %1282, 3
  %1284 = add i64 %1283, %1277
  %1285 = add i64 %1274, 13
  store i64 %1285, i64* %PC.i, align 8
  %1286 = inttoptr i64 %1284 to i64*
  %1287 = load i64, i64* %1286, align 8
  %1288 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1287, i64* %1288, align 1
  store double 0.000000e+00, double* %385, align 1
  %1289 = add i64 %1272, -64
  %1290 = add i64 %1274, 18
  store i64 %1290, i64* %PC.i, align 8
  %1291 = inttoptr i64 %1289 to i64*
  store i64 %1287, i64* %1291, align 8
  %1292 = load i64, i64* %RBP.i, align 8
  %1293 = add i64 %1292, -24
  %1294 = load i64, i64* %PC.i, align 8
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %PC.i, align 8
  %1296 = inttoptr i64 %1293 to i64*
  %1297 = load i64, i64* %1296, align 8
  store i64 %1297, i64* %RCX.i1178, align 8
  %1298 = add i64 %1292, -32
  %1299 = add i64 %1294, 7
  store i64 %1299, i64* %PC.i, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = add i32 %1301, 1
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RAX.i1207, align 8
  %1304 = icmp eq i32 %1301, -1
  %1305 = icmp eq i32 %1302, 0
  %1306 = or i1 %1304, %1305
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %51, align 1
  %1308 = and i32 %1302, 255
  %1309 = tail call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  store i8 %1312, i8* %52, align 1
  %1313 = xor i32 %1301, %1302
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %53, align 1
  %1317 = icmp eq i32 %1302, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %54, align 1
  %1319 = lshr i32 %1302, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %55, align 1
  %1321 = lshr i32 %1301, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %56, align 1
  %1326 = sext i32 %1302 to i64
  store i64 %1326, i64* %RDX.i1221, align 8
  %1327 = shl nsw i64 %1326, 3
  %1328 = add i64 %1327, %1297
  %1329 = add i64 %1294, 18
  store i64 %1329, i64* %PC.i, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  %1332 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1331, i64* %1332, align 1
  store double 0.000000e+00, double* %385, align 1
  %1333 = add i64 %1292, -72
  %1334 = add i64 %1294, 23
  store i64 %1334, i64* %PC.i, align 8
  %1335 = inttoptr i64 %1333 to i64*
  store i64 %1331, i64* %1335, align 8
  %1336 = load i64, i64* %RBP.i, align 8
  %1337 = add i64 %1336, -24
  %1338 = load i64, i64* %PC.i, align 8
  %1339 = add i64 %1338, 4
  store i64 %1339, i64* %PC.i, align 8
  %1340 = inttoptr i64 %1337 to i64*
  %1341 = load i64, i64* %1340, align 8
  store i64 %1341, i64* %RCX.i1178, align 8
  %1342 = add i64 %1336, -40
  %1343 = add i64 %1338, 8
  store i64 %1343, i64* %PC.i, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = sext i32 %1345 to i64
  store i64 %1346, i64* %RDX.i1221, align 8
  %1347 = shl nsw i64 %1346, 3
  %1348 = add i64 %1347, %1341
  %1349 = add i64 %1338, 13
  store i64 %1349, i64* %PC.i, align 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  %1352 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1351, i64* %1352, align 1
  store double 0.000000e+00, double* %385, align 1
  %1353 = add i64 %1336, -80
  %1354 = add i64 %1338, 18
  store i64 %1354, i64* %PC.i, align 8
  %1355 = inttoptr i64 %1353 to i64*
  store i64 %1351, i64* %1355, align 8
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -24
  %1358 = load i64, i64* %PC.i, align 8
  %1359 = add i64 %1358, 4
  store i64 %1359, i64* %PC.i, align 8
  %1360 = inttoptr i64 %1357 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RCX.i1178, align 8
  %1362 = add i64 %1356, -40
  %1363 = add i64 %1358, 7
  store i64 %1363, i64* %PC.i, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = add i32 %1365, 1
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RAX.i1207, align 8
  %1368 = icmp eq i32 %1365, -1
  %1369 = icmp eq i32 %1366, 0
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %51, align 1
  %1372 = and i32 %1366, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %52, align 1
  %1377 = xor i32 %1365, %1366
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  store i8 %1380, i8* %53, align 1
  %1381 = icmp eq i32 %1366, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %54, align 1
  %1383 = lshr i32 %1366, 31
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, i8* %55, align 1
  %1385 = lshr i32 %1365, 31
  %1386 = xor i32 %1383, %1385
  %1387 = add nuw nsw i32 %1386, %1383
  %1388 = icmp eq i32 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %56, align 1
  %1390 = sext i32 %1366 to i64
  store i64 %1390, i64* %RDX.i1221, align 8
  %1391 = shl nsw i64 %1390, 3
  %1392 = add i64 %1391, %1361
  %1393 = add i64 %1358, 18
  store i64 %1393, i64* %PC.i, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  %1396 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1395, i64* %1396, align 1
  store double 0.000000e+00, double* %385, align 1
  %1397 = add i64 %1356, -88
  %1398 = add i64 %1358, 23
  store i64 %1398, i64* %PC.i, align 8
  %1399 = inttoptr i64 %1397 to i64*
  store i64 %1395, i64* %1399, align 8
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -80
  %1402 = load i64, i64* %PC.i, align 8
  %1403 = add i64 %1402, 5
  store i64 %1403, i64* %PC.i, align 8
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404, align 8
  %1406 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1405, i64* %1406, align 1
  store double 0.000000e+00, double* %385, align 1
  %1407 = add i64 %1400, -24
  %1408 = add i64 %1402, 9
  store i64 %1408, i64* %PC.i, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RCX.i1178, align 8
  %1411 = add i64 %1400, -32
  %1412 = add i64 %1402, 13
  store i64 %1412, i64* %PC.i, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = sext i32 %1414 to i64
  store i64 %1415, i64* %RDX.i1221, align 8
  %1416 = shl nsw i64 %1415, 3
  %1417 = add i64 %1416, %1410
  %1418 = add i64 %1402, 18
  store i64 %1418, i64* %PC.i, align 8
  %1419 = inttoptr i64 %1417 to i64*
  store i64 %1405, i64* %1419, align 8
  %1420 = load i64, i64* %RBP.i, align 8
  %1421 = add i64 %1420, -88
  %1422 = load i64, i64* %PC.i, align 8
  %1423 = add i64 %1422, 5
  store i64 %1423, i64* %PC.i, align 8
  %1424 = inttoptr i64 %1421 to i64*
  %1425 = load i64, i64* %1424, align 8
  %1426 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1425, i64* %1426, align 1
  store double 0.000000e+00, double* %385, align 1
  %1427 = add i64 %1420, -24
  %1428 = add i64 %1422, 9
  store i64 %1428, i64* %PC.i, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RCX.i1178, align 8
  %1431 = add i64 %1420, -32
  %1432 = add i64 %1422, 12
  store i64 %1432, i64* %PC.i, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = add i32 %1434, 1
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i1207, align 8
  %1437 = icmp eq i32 %1434, -1
  %1438 = icmp eq i32 %1435, 0
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %51, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %52, align 1
  %1446 = xor i32 %1434, %1435
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %53, align 1
  %1450 = icmp eq i32 %1435, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %54, align 1
  %1452 = lshr i32 %1435, 31
  %1453 = trunc i32 %1452 to i8
  store i8 %1453, i8* %55, align 1
  %1454 = lshr i32 %1434, 31
  %1455 = xor i32 %1452, %1454
  %1456 = add nuw nsw i32 %1455, %1452
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %56, align 1
  %1459 = sext i32 %1435 to i64
  store i64 %1459, i64* %RDX.i1221, align 8
  %1460 = shl nsw i64 %1459, 3
  %1461 = add i64 %1460, %1430
  %1462 = add i64 %1422, 23
  store i64 %1462, i64* %PC.i, align 8
  %1463 = inttoptr i64 %1461 to i64*
  store i64 %1425, i64* %1463, align 8
  %1464 = load i64, i64* %RBP.i, align 8
  %1465 = add i64 %1464, -64
  %1466 = load i64, i64* %PC.i, align 8
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i, align 8
  %1468 = inttoptr i64 %1465 to i64*
  %1469 = load i64, i64* %1468, align 8
  %1470 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1469, i64* %1470, align 1
  store double 0.000000e+00, double* %385, align 1
  %1471 = add i64 %1464, -24
  %1472 = add i64 %1466, 9
  store i64 %1472, i64* %PC.i, align 8
  %1473 = inttoptr i64 %1471 to i64*
  %1474 = load i64, i64* %1473, align 8
  store i64 %1474, i64* %RCX.i1178, align 8
  %1475 = add i64 %1464, -40
  %1476 = add i64 %1466, 13
  store i64 %1476, i64* %PC.i, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  %1479 = sext i32 %1478 to i64
  store i64 %1479, i64* %RDX.i1221, align 8
  %1480 = shl nsw i64 %1479, 3
  %1481 = add i64 %1480, %1474
  %1482 = add i64 %1466, 18
  store i64 %1482, i64* %PC.i, align 8
  %1483 = inttoptr i64 %1481 to i64*
  store i64 %1469, i64* %1483, align 8
  %1484 = load i64, i64* %RBP.i, align 8
  %1485 = add i64 %1484, -72
  %1486 = load i64, i64* %PC.i, align 8
  %1487 = add i64 %1486, 5
  store i64 %1487, i64* %PC.i, align 8
  %1488 = inttoptr i64 %1485 to i64*
  %1489 = load i64, i64* %1488, align 8
  %1490 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1489, i64* %1490, align 1
  store double 0.000000e+00, double* %385, align 1
  %1491 = add i64 %1484, -24
  %1492 = add i64 %1486, 9
  store i64 %1492, i64* %PC.i, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RCX.i1178, align 8
  %1495 = add i64 %1484, -40
  %1496 = add i64 %1486, 12
  store i64 %1496, i64* %PC.i, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = add i32 %1498, 1
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RAX.i1207, align 8
  %1501 = icmp eq i32 %1498, -1
  %1502 = icmp eq i32 %1499, 0
  %1503 = or i1 %1501, %1502
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %51, align 1
  %1505 = and i32 %1499, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %52, align 1
  %1510 = xor i32 %1498, %1499
  %1511 = lshr i32 %1510, 4
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  store i8 %1513, i8* %53, align 1
  %1514 = icmp eq i32 %1499, 0
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %54, align 1
  %1516 = lshr i32 %1499, 31
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, i8* %55, align 1
  %1518 = lshr i32 %1498, 31
  %1519 = xor i32 %1516, %1518
  %1520 = add nuw nsw i32 %1519, %1516
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %56, align 1
  %1523 = sext i32 %1499 to i64
  store i64 %1523, i64* %RDX.i1221, align 8
  %1524 = shl nsw i64 %1523, 3
  %1525 = add i64 %1524, %1494
  %1526 = add i64 %1486, 23
  store i64 %1526, i64* %PC.i, align 8
  %1527 = inttoptr i64 %1525 to i64*
  store i64 %1489, i64* %1527, align 8
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -52
  %1530 = load i64, i64* %PC.i, align 8
  %1531 = add i64 %1530, 3
  store i64 %1531, i64* %PC.i, align 8
  %1532 = inttoptr i64 %1529 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RAX.i1207, align 8
  %1535 = add i64 %1528, -32
  %1536 = add i64 %1530, 6
  store i64 %1536, i64* %PC.i, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = add i32 %1538, %1533
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RAX.i1207, align 8
  %1541 = icmp ult i32 %1539, %1533
  %1542 = icmp ult i32 %1539, %1538
  %1543 = or i1 %1541, %1542
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %51, align 1
  %1545 = and i32 %1539, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %52, align 1
  %1550 = xor i32 %1538, %1533
  %1551 = xor i32 %1550, %1539
  %1552 = lshr i32 %1551, 4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  store i8 %1554, i8* %53, align 1
  %1555 = icmp eq i32 %1539, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %54, align 1
  %1557 = lshr i32 %1539, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %55, align 1
  %1559 = lshr i32 %1533, 31
  %1560 = lshr i32 %1538, 31
  %1561 = xor i32 %1557, %1559
  %1562 = xor i32 %1557, %1560
  %1563 = add nuw nsw i32 %1561, %1562
  %1564 = icmp eq i32 %1563, 2
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %56, align 1
  %1566 = add i64 %1530, 9
  store i64 %1566, i64* %PC.i, align 8
  store i32 %1539, i32* %1537, align 4
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -52
  %1569 = load i64, i64* %PC.i, align 8
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %PC.i, align 8
  %1571 = inttoptr i64 %1568 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = shl i32 %1572, 1
  %1574 = icmp slt i32 %1572, 0
  %1575 = icmp slt i32 %1573, 0
  %1576 = xor i1 %1574, %1575
  %1577 = zext i32 %1573 to i64
  store i64 %1577, i64* %RAX.i1207, align 8
  %.lobit16 = lshr i32 %1572, 31
  %1578 = trunc i32 %.lobit16 to i8
  store i8 %1578, i8* %51, align 1
  %1579 = and i32 %1573, 254
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1584 = icmp eq i32 %1573, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %54, align 1
  %1586 = lshr i32 %1572, 30
  %1587 = and i32 %1586, 1
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %55, align 1
  %1589 = zext i1 %1576 to i8
  store i8 %1589, i8* %56, align 1
  %1590 = add i64 %1567, -40
  %1591 = add i64 %1569, 8
  store i64 %1591, i64* %PC.i, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = add i32 %1593, %1573
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i1207, align 8
  %1596 = icmp ult i32 %1594, %1573
  %1597 = icmp ult i32 %1594, %1593
  %1598 = or i1 %1596, %1597
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %51, align 1
  %1600 = and i32 %1594, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %52, align 1
  %1605 = xor i32 %1593, %1573
  %1606 = xor i32 %1605, %1594
  %1607 = lshr i32 %1606, 4
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  store i8 %1609, i8* %53, align 1
  %1610 = icmp eq i32 %1594, 0
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %54, align 1
  %1612 = lshr i32 %1594, 31
  %1613 = trunc i32 %1612 to i8
  store i8 %1613, i8* %55, align 1
  %1614 = lshr i32 %1593, 31
  %1615 = xor i32 %1612, %1587
  %1616 = xor i32 %1612, %1614
  %1617 = add nuw nsw i32 %1615, %1616
  %1618 = icmp eq i32 %1617, 2
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %56, align 1
  %1620 = add i64 %1569, 11
  store i64 %1620, i64* %PC.i, align 8
  store i32 %1594, i32* %1592, align 4
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -24
  %1623 = load i64, i64* %PC.i, align 8
  %1624 = add i64 %1623, 4
  store i64 %1624, i64* %PC.i, align 8
  %1625 = inttoptr i64 %1622 to i64*
  %1626 = load i64, i64* %1625, align 8
  store i64 %1626, i64* %RCX.i1178, align 8
  %1627 = add i64 %1621, -32
  %1628 = add i64 %1623, 8
  store i64 %1628, i64* %PC.i, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  %1631 = sext i32 %1630 to i64
  store i64 %1631, i64* %RDX.i1221, align 8
  %1632 = shl nsw i64 %1631, 3
  %1633 = add i64 %1632, %1626
  %1634 = add i64 %1623, 13
  store i64 %1634, i64* %PC.i, align 8
  %1635 = inttoptr i64 %1633 to i64*
  %1636 = load i64, i64* %1635, align 8
  %1637 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1636, i64* %1637, align 1
  store double 0.000000e+00, double* %385, align 1
  %1638 = add i64 %1621, -64
  %1639 = add i64 %1623, 18
  store i64 %1639, i64* %PC.i, align 8
  %1640 = inttoptr i64 %1638 to i64*
  store i64 %1636, i64* %1640, align 8
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -24
  %1643 = load i64, i64* %PC.i, align 8
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %PC.i, align 8
  %1645 = inttoptr i64 %1642 to i64*
  %1646 = load i64, i64* %1645, align 8
  store i64 %1646, i64* %RCX.i1178, align 8
  %1647 = add i64 %1641, -32
  %1648 = add i64 %1643, 7
  store i64 %1648, i64* %PC.i, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = add i32 %1650, 1
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RAX.i1207, align 8
  %1653 = icmp eq i32 %1650, -1
  %1654 = icmp eq i32 %1651, 0
  %1655 = or i1 %1653, %1654
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %51, align 1
  %1657 = and i32 %1651, 255
  %1658 = tail call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  store i8 %1661, i8* %52, align 1
  %1662 = xor i32 %1650, %1651
  %1663 = lshr i32 %1662, 4
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %53, align 1
  %1666 = icmp eq i32 %1651, 0
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %54, align 1
  %1668 = lshr i32 %1651, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %55, align 1
  %1670 = lshr i32 %1650, 31
  %1671 = xor i32 %1668, %1670
  %1672 = add nuw nsw i32 %1671, %1668
  %1673 = icmp eq i32 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %56, align 1
  %1675 = sext i32 %1651 to i64
  store i64 %1675, i64* %RDX.i1221, align 8
  %1676 = shl nsw i64 %1675, 3
  %1677 = add i64 %1676, %1646
  %1678 = add i64 %1643, 18
  store i64 %1678, i64* %PC.i, align 8
  %1679 = inttoptr i64 %1677 to i64*
  %1680 = load i64, i64* %1679, align 8
  %1681 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1680, i64* %1681, align 1
  store double 0.000000e+00, double* %385, align 1
  %1682 = add i64 %1641, -72
  %1683 = add i64 %1643, 23
  store i64 %1683, i64* %PC.i, align 8
  %1684 = inttoptr i64 %1682 to i64*
  store i64 %1680, i64* %1684, align 8
  %1685 = load i64, i64* %RBP.i, align 8
  %1686 = add i64 %1685, -24
  %1687 = load i64, i64* %PC.i, align 8
  %1688 = add i64 %1687, 4
  store i64 %1688, i64* %PC.i, align 8
  %1689 = inttoptr i64 %1686 to i64*
  %1690 = load i64, i64* %1689, align 8
  store i64 %1690, i64* %RCX.i1178, align 8
  %1691 = add i64 %1685, -40
  %1692 = add i64 %1687, 8
  store i64 %1692, i64* %PC.i, align 8
  %1693 = inttoptr i64 %1691 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = sext i32 %1694 to i64
  store i64 %1695, i64* %RDX.i1221, align 8
  %1696 = shl nsw i64 %1695, 3
  %1697 = add i64 %1696, %1690
  %1698 = add i64 %1687, 13
  store i64 %1698, i64* %PC.i, align 8
  %1699 = inttoptr i64 %1697 to i64*
  %1700 = load i64, i64* %1699, align 8
  %1701 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1700, i64* %1701, align 1
  store double 0.000000e+00, double* %385, align 1
  %1702 = add i64 %1685, -80
  %1703 = add i64 %1687, 18
  store i64 %1703, i64* %PC.i, align 8
  %1704 = inttoptr i64 %1702 to i64*
  store i64 %1700, i64* %1704, align 8
  %1705 = load i64, i64* %RBP.i, align 8
  %1706 = add i64 %1705, -24
  %1707 = load i64, i64* %PC.i, align 8
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %PC.i, align 8
  %1709 = inttoptr i64 %1706 to i64*
  %1710 = load i64, i64* %1709, align 8
  store i64 %1710, i64* %RCX.i1178, align 8
  %1711 = add i64 %1705, -40
  %1712 = add i64 %1707, 7
  store i64 %1712, i64* %PC.i, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = add i32 %1714, 1
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RAX.i1207, align 8
  %1717 = icmp eq i32 %1714, -1
  %1718 = icmp eq i32 %1715, 0
  %1719 = or i1 %1717, %1718
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %51, align 1
  %1721 = and i32 %1715, 255
  %1722 = tail call i32 @llvm.ctpop.i32(i32 %1721)
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = xor i8 %1724, 1
  store i8 %1725, i8* %52, align 1
  %1726 = xor i32 %1714, %1715
  %1727 = lshr i32 %1726, 4
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  store i8 %1729, i8* %53, align 1
  %1730 = icmp eq i32 %1715, 0
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %54, align 1
  %1732 = lshr i32 %1715, 31
  %1733 = trunc i32 %1732 to i8
  store i8 %1733, i8* %55, align 1
  %1734 = lshr i32 %1714, 31
  %1735 = xor i32 %1732, %1734
  %1736 = add nuw nsw i32 %1735, %1732
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %56, align 1
  %1739 = sext i32 %1715 to i64
  store i64 %1739, i64* %RDX.i1221, align 8
  %1740 = shl nsw i64 %1739, 3
  %1741 = add i64 %1740, %1710
  %1742 = add i64 %1707, 18
  store i64 %1742, i64* %PC.i, align 8
  %1743 = inttoptr i64 %1741 to i64*
  %1744 = load i64, i64* %1743, align 8
  %1745 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1744, i64* %1745, align 1
  store double 0.000000e+00, double* %385, align 1
  %1746 = add i64 %1705, -88
  %1747 = add i64 %1707, 23
  store i64 %1747, i64* %PC.i, align 8
  %1748 = inttoptr i64 %1746 to i64*
  store i64 %1744, i64* %1748, align 8
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -80
  %1751 = load i64, i64* %PC.i, align 8
  %1752 = add i64 %1751, 5
  store i64 %1752, i64* %PC.i, align 8
  %1753 = inttoptr i64 %1750 to i64*
  %1754 = load i64, i64* %1753, align 8
  %1755 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1754, i64* %1755, align 1
  store double 0.000000e+00, double* %385, align 1
  %1756 = add i64 %1749, -24
  %1757 = add i64 %1751, 9
  store i64 %1757, i64* %PC.i, align 8
  %1758 = inttoptr i64 %1756 to i64*
  %1759 = load i64, i64* %1758, align 8
  store i64 %1759, i64* %RCX.i1178, align 8
  %1760 = add i64 %1749, -32
  %1761 = add i64 %1751, 13
  store i64 %1761, i64* %PC.i, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RDX.i1221, align 8
  %1765 = shl nsw i64 %1764, 3
  %1766 = add i64 %1765, %1759
  %1767 = add i64 %1751, 18
  store i64 %1767, i64* %PC.i, align 8
  %1768 = inttoptr i64 %1766 to i64*
  store i64 %1754, i64* %1768, align 8
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -88
  %1771 = load i64, i64* %PC.i, align 8
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %PC.i, align 8
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773, align 8
  %1775 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1774, i64* %1775, align 1
  store double 0.000000e+00, double* %385, align 1
  %1776 = add i64 %1769, -24
  %1777 = add i64 %1771, 9
  store i64 %1777, i64* %PC.i, align 8
  %1778 = inttoptr i64 %1776 to i64*
  %1779 = load i64, i64* %1778, align 8
  store i64 %1779, i64* %RCX.i1178, align 8
  %1780 = add i64 %1769, -32
  %1781 = add i64 %1771, 12
  store i64 %1781, i64* %PC.i, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = add i32 %1783, 1
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RAX.i1207, align 8
  %1786 = icmp eq i32 %1783, -1
  %1787 = icmp eq i32 %1784, 0
  %1788 = or i1 %1786, %1787
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %51, align 1
  %1790 = and i32 %1784, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %52, align 1
  %1795 = xor i32 %1783, %1784
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %53, align 1
  %1799 = icmp eq i32 %1784, 0
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %54, align 1
  %1801 = lshr i32 %1784, 31
  %1802 = trunc i32 %1801 to i8
  store i8 %1802, i8* %55, align 1
  %1803 = lshr i32 %1783, 31
  %1804 = xor i32 %1801, %1803
  %1805 = add nuw nsw i32 %1804, %1801
  %1806 = icmp eq i32 %1805, 2
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %56, align 1
  %1808 = sext i32 %1784 to i64
  store i64 %1808, i64* %RDX.i1221, align 8
  %1809 = shl nsw i64 %1808, 3
  %1810 = add i64 %1809, %1779
  %1811 = add i64 %1771, 23
  store i64 %1811, i64* %PC.i, align 8
  %1812 = inttoptr i64 %1810 to i64*
  store i64 %1774, i64* %1812, align 8
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -64
  %1815 = load i64, i64* %PC.i, align 8
  %1816 = add i64 %1815, 5
  store i64 %1816, i64* %PC.i, align 8
  %1817 = inttoptr i64 %1814 to i64*
  %1818 = load i64, i64* %1817, align 8
  %1819 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1818, i64* %1819, align 1
  store double 0.000000e+00, double* %385, align 1
  %1820 = add i64 %1813, -24
  %1821 = add i64 %1815, 9
  store i64 %1821, i64* %PC.i, align 8
  %1822 = inttoptr i64 %1820 to i64*
  %1823 = load i64, i64* %1822, align 8
  store i64 %1823, i64* %RCX.i1178, align 8
  %1824 = add i64 %1813, -40
  %1825 = add i64 %1815, 13
  store i64 %1825, i64* %PC.i, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  %1828 = sext i32 %1827 to i64
  store i64 %1828, i64* %RDX.i1221, align 8
  %1829 = shl nsw i64 %1828, 3
  %1830 = add i64 %1829, %1823
  %1831 = add i64 %1815, 18
  store i64 %1831, i64* %PC.i, align 8
  %1832 = inttoptr i64 %1830 to i64*
  store i64 %1818, i64* %1832, align 8
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -72
  %1835 = load i64, i64* %PC.i, align 8
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i, align 8
  %1837 = inttoptr i64 %1834 to i64*
  %1838 = load i64, i64* %1837, align 8
  %1839 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1838, i64* %1839, align 1
  store double 0.000000e+00, double* %385, align 1
  %1840 = add i64 %1833, -24
  %1841 = add i64 %1835, 9
  store i64 %1841, i64* %PC.i, align 8
  %1842 = inttoptr i64 %1840 to i64*
  %1843 = load i64, i64* %1842, align 8
  store i64 %1843, i64* %RCX.i1178, align 8
  %1844 = add i64 %1833, -40
  %1845 = add i64 %1835, 12
  store i64 %1845, i64* %PC.i, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = add i32 %1847, 1
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RAX.i1207, align 8
  %1850 = icmp eq i32 %1847, -1
  %1851 = icmp eq i32 %1848, 0
  %1852 = or i1 %1850, %1851
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %51, align 1
  %1854 = and i32 %1848, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %52, align 1
  %1859 = xor i32 %1847, %1848
  %1860 = lshr i32 %1859, 4
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  store i8 %1862, i8* %53, align 1
  %1863 = icmp eq i32 %1848, 0
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %54, align 1
  %1865 = lshr i32 %1848, 31
  %1866 = trunc i32 %1865 to i8
  store i8 %1866, i8* %55, align 1
  %1867 = lshr i32 %1847, 31
  %1868 = xor i32 %1865, %1867
  %1869 = add nuw nsw i32 %1868, %1865
  %1870 = icmp eq i32 %1869, 2
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %56, align 1
  %1872 = sext i32 %1848 to i64
  store i64 %1872, i64* %RDX.i1221, align 8
  %1873 = shl nsw i64 %1872, 3
  %1874 = add i64 %1873, %1843
  %1875 = add i64 %1835, 23
  store i64 %1875, i64* %PC.i, align 8
  %1876 = inttoptr i64 %1874 to i64*
  store i64 %1838, i64* %1876, align 8
  %1877 = load i64, i64* %RBP.i, align 8
  %1878 = add i64 %1877, -28
  %1879 = load i64, i64* %PC.i, align 8
  %1880 = add i64 %1879, 3
  store i64 %1880, i64* %PC.i, align 8
  %1881 = inttoptr i64 %1878 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = add i32 %1882, 1
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RAX.i1207, align 8
  %1885 = icmp eq i32 %1882, -1
  %1886 = icmp eq i32 %1883, 0
  %1887 = or i1 %1885, %1886
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %51, align 1
  %1889 = and i32 %1883, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %52, align 1
  %1894 = xor i32 %1882, %1883
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %53, align 1
  %1898 = icmp eq i32 %1883, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %54, align 1
  %1900 = lshr i32 %1883, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %55, align 1
  %1902 = lshr i32 %1882, 31
  %1903 = xor i32 %1900, %1902
  %1904 = add nuw nsw i32 %1903, %1900
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %56, align 1
  %1907 = add i64 %1879, 9
  store i64 %1907, i64* %PC.i, align 8
  store i32 %1883, i32* %1881, align 4
  %1908 = load i64, i64* %PC.i, align 8
  %1909 = add i64 %1908, -779
  store i64 %1909, i64* %3, align 8
  br label %block_.L_40127d

block_.L_40158d:                                  ; preds = %block_.L_40127d
  %1910 = load i32, i32* %436, align 4
  %1911 = shl i32 %1910, 1
  %1912 = icmp slt i32 %1910, 0
  %1913 = icmp slt i32 %1911, 0
  %1914 = xor i1 %1912, %1913
  %1915 = zext i32 %1911 to i64
  store i64 %1915, i64* %RAX.i1207, align 8
  %.lobit17 = lshr i32 %1910, 31
  %1916 = trunc i32 %.lobit17 to i8
  store i8 %1916, i8* %51, align 1
  %1917 = and i32 %1911, 254
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1922 = icmp eq i32 %1911, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %54, align 1
  %1924 = lshr i32 %1910, 30
  %1925 = and i32 %1924, 1
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %55, align 1
  %1927 = zext i1 %1914 to i8
  store i8 %1927, i8* %56, align 1
  %1928 = add i64 %428, -52
  %1929 = add i64 %464, 8
  store i64 %1929, i64* %PC.i, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = add i32 %1931, %1911
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i1207, align 8
  %1934 = icmp ult i32 %1932, %1911
  %1935 = icmp ult i32 %1932, %1931
  %1936 = or i1 %1934, %1935
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %51, align 1
  %1938 = and i32 %1932, 255
  %1939 = tail call i32 @llvm.ctpop.i32(i32 %1938)
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = xor i8 %1941, 1
  store i8 %1942, i8* %52, align 1
  %1943 = xor i32 %1931, %1911
  %1944 = xor i32 %1943, %1932
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  store i8 %1947, i8* %53, align 1
  %1948 = icmp eq i32 %1932, 0
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %54, align 1
  %1950 = lshr i32 %1932, 31
  %1951 = trunc i32 %1950 to i8
  store i8 %1951, i8* %55, align 1
  %1952 = lshr i32 %1931, 31
  %1953 = xor i32 %1950, %1925
  %1954 = xor i32 %1950, %1952
  %1955 = add nuw nsw i32 %1953, %1954
  %1956 = icmp eq i32 %1955, 2
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %56, align 1
  %1958 = add i64 %428, -16
  %1959 = add i64 %464, 12
  store i64 %1959, i64* %PC.i, align 8
  %1960 = inttoptr i64 %1958 to i64*
  %1961 = load i64, i64* %1960, align 8
  store i64 %1961, i64* %RCX.i1178, align 8
  %1962 = add i64 %464, 16
  store i64 %1962, i64* %PC.i, align 8
  %1963 = load i32, i32* %436, align 4
  %1964 = sext i32 %1963 to i64
  store i64 %1964, i64* %RDX.i1221, align 8
  %1965 = shl nsw i64 %1964, 2
  %1966 = add i64 %1965, %1961
  %1967 = add i64 %464, 19
  store i64 %1967, i64* %PC.i, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = add i32 %1969, %1932
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i1207, align 8
  %1972 = icmp ult i32 %1970, %1932
  %1973 = icmp ult i32 %1970, %1969
  %1974 = or i1 %1972, %1973
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %51, align 1
  %1976 = and i32 %1970, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %52, align 1
  %1981 = xor i32 %1969, %1932
  %1982 = xor i32 %1981, %1970
  %1983 = lshr i32 %1982, 4
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  store i8 %1985, i8* %53, align 1
  %1986 = icmp eq i32 %1970, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %54, align 1
  %1988 = lshr i32 %1970, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %55, align 1
  %1990 = lshr i32 %1969, 31
  %1991 = xor i32 %1988, %1950
  %1992 = xor i32 %1988, %1990
  %1993 = add nuw nsw i32 %1991, %1992
  %1994 = icmp eq i32 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %56, align 1
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -32
  %1998 = add i64 %464, 22
  store i64 %1998, i64* %PC.i, align 8
  %1999 = inttoptr i64 %1997 to i32*
  store i32 %1970, i32* %1999, align 4
  %2000 = load i64, i64* %RBP.i, align 8
  %2001 = add i64 %2000, -32
  %2002 = load i64, i64* %PC.i, align 8
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i, align 8
  %2004 = inttoptr i64 %2001 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RAX.i1207, align 8
  %2007 = add i64 %2000, -52
  %2008 = add i64 %2002, 6
  store i64 %2008, i64* %PC.i, align 8
  %2009 = inttoptr i64 %2007 to i32*
  %2010 = load i32, i32* %2009, align 4
  %2011 = add i32 %2010, %2005
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i1207, align 8
  %2013 = icmp ult i32 %2011, %2005
  %2014 = icmp ult i32 %2011, %2010
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %51, align 1
  %2017 = and i32 %2011, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %52, align 1
  %2022 = xor i32 %2010, %2005
  %2023 = xor i32 %2022, %2011
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %53, align 1
  %2027 = icmp eq i32 %2011, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %54, align 1
  %2029 = lshr i32 %2011, 31
  %2030 = trunc i32 %2029 to i8
  store i8 %2030, i8* %55, align 1
  %2031 = lshr i32 %2005, 31
  %2032 = lshr i32 %2010, 31
  %2033 = xor i32 %2029, %2031
  %2034 = xor i32 %2029, %2032
  %2035 = add nuw nsw i32 %2033, %2034
  %2036 = icmp eq i32 %2035, 2
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %56, align 1
  %2038 = add i64 %2000, -40
  %2039 = add i64 %2002, 9
  store i64 %2039, i64* %PC.i, align 8
  %2040 = inttoptr i64 %2038 to i32*
  store i32 %2011, i32* %2040, align 4
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, -24
  %2043 = load i64, i64* %PC.i, align 8
  %2044 = add i64 %2043, 4
  store i64 %2044, i64* %PC.i, align 8
  %2045 = inttoptr i64 %2042 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %RCX.i1178, align 8
  %2047 = add i64 %2041, -32
  %2048 = add i64 %2043, 8
  store i64 %2048, i64* %PC.i, align 8
  %2049 = inttoptr i64 %2047 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = sext i32 %2050 to i64
  store i64 %2051, i64* %RDX.i1221, align 8
  %2052 = shl nsw i64 %2051, 3
  %2053 = add i64 %2052, %2046
  %2054 = add i64 %2043, 13
  store i64 %2054, i64* %PC.i, align 8
  %2055 = inttoptr i64 %2053 to i64*
  %2056 = load i64, i64* %2055, align 8
  %2057 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2056, i64* %2057, align 1
  store double 0.000000e+00, double* %385, align 1
  %2058 = add i64 %2041, -64
  %2059 = add i64 %2043, 18
  store i64 %2059, i64* %PC.i, align 8
  %2060 = inttoptr i64 %2058 to i64*
  store i64 %2056, i64* %2060, align 8
  %2061 = load i64, i64* %RBP.i, align 8
  %2062 = add i64 %2061, -24
  %2063 = load i64, i64* %PC.i, align 8
  %2064 = add i64 %2063, 4
  store i64 %2064, i64* %PC.i, align 8
  %2065 = inttoptr i64 %2062 to i64*
  %2066 = load i64, i64* %2065, align 8
  store i64 %2066, i64* %RCX.i1178, align 8
  %2067 = add i64 %2061, -32
  %2068 = add i64 %2063, 7
  store i64 %2068, i64* %PC.i, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = add i32 %2070, 1
  %2072 = zext i32 %2071 to i64
  store i64 %2072, i64* %RAX.i1207, align 8
  %2073 = icmp eq i32 %2070, -1
  %2074 = icmp eq i32 %2071, 0
  %2075 = or i1 %2073, %2074
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %51, align 1
  %2077 = and i32 %2071, 255
  %2078 = tail call i32 @llvm.ctpop.i32(i32 %2077)
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  %2081 = xor i8 %2080, 1
  store i8 %2081, i8* %52, align 1
  %2082 = xor i32 %2070, %2071
  %2083 = lshr i32 %2082, 4
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  store i8 %2085, i8* %53, align 1
  %2086 = icmp eq i32 %2071, 0
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %54, align 1
  %2088 = lshr i32 %2071, 31
  %2089 = trunc i32 %2088 to i8
  store i8 %2089, i8* %55, align 1
  %2090 = lshr i32 %2070, 31
  %2091 = xor i32 %2088, %2090
  %2092 = add nuw nsw i32 %2091, %2088
  %2093 = icmp eq i32 %2092, 2
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %56, align 1
  %2095 = sext i32 %2071 to i64
  store i64 %2095, i64* %RDX.i1221, align 8
  %2096 = shl nsw i64 %2095, 3
  %2097 = add i64 %2096, %2066
  %2098 = add i64 %2063, 18
  store i64 %2098, i64* %PC.i, align 8
  %2099 = inttoptr i64 %2097 to i64*
  %2100 = load i64, i64* %2099, align 8
  %2101 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2100, i64* %2101, align 1
  store double 0.000000e+00, double* %385, align 1
  %2102 = add i64 %2061, -72
  %2103 = add i64 %2063, 23
  store i64 %2103, i64* %PC.i, align 8
  %2104 = inttoptr i64 %2102 to i64*
  store i64 %2100, i64* %2104, align 8
  %2105 = load i64, i64* %RBP.i, align 8
  %2106 = add i64 %2105, -24
  %2107 = load i64, i64* %PC.i, align 8
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i, align 8
  %2109 = inttoptr i64 %2106 to i64*
  %2110 = load i64, i64* %2109, align 8
  store i64 %2110, i64* %RCX.i1178, align 8
  %2111 = add i64 %2105, -40
  %2112 = add i64 %2107, 8
  store i64 %2112, i64* %PC.i, align 8
  %2113 = inttoptr i64 %2111 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = sext i32 %2114 to i64
  store i64 %2115, i64* %RDX.i1221, align 8
  %2116 = shl nsw i64 %2115, 3
  %2117 = add i64 %2116, %2110
  %2118 = add i64 %2107, 13
  store i64 %2118, i64* %PC.i, align 8
  %2119 = inttoptr i64 %2117 to i64*
  %2120 = load i64, i64* %2119, align 8
  %2121 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2120, i64* %2121, align 1
  store double 0.000000e+00, double* %385, align 1
  %2122 = add i64 %2105, -80
  %2123 = add i64 %2107, 18
  store i64 %2123, i64* %PC.i, align 8
  %2124 = inttoptr i64 %2122 to i64*
  store i64 %2120, i64* %2124, align 8
  %2125 = load i64, i64* %RBP.i, align 8
  %2126 = add i64 %2125, -24
  %2127 = load i64, i64* %PC.i, align 8
  %2128 = add i64 %2127, 4
  store i64 %2128, i64* %PC.i, align 8
  %2129 = inttoptr i64 %2126 to i64*
  %2130 = load i64, i64* %2129, align 8
  store i64 %2130, i64* %RCX.i1178, align 8
  %2131 = add i64 %2125, -40
  %2132 = add i64 %2127, 7
  store i64 %2132, i64* %PC.i, align 8
  %2133 = inttoptr i64 %2131 to i32*
  %2134 = load i32, i32* %2133, align 4
  %2135 = add i32 %2134, 1
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RAX.i1207, align 8
  %2137 = icmp eq i32 %2134, -1
  %2138 = icmp eq i32 %2135, 0
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %51, align 1
  %2141 = and i32 %2135, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %52, align 1
  %2146 = xor i32 %2134, %2135
  %2147 = lshr i32 %2146, 4
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  store i8 %2149, i8* %53, align 1
  %2150 = icmp eq i32 %2135, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %54, align 1
  %2152 = lshr i32 %2135, 31
  %2153 = trunc i32 %2152 to i8
  store i8 %2153, i8* %55, align 1
  %2154 = lshr i32 %2134, 31
  %2155 = xor i32 %2152, %2154
  %2156 = add nuw nsw i32 %2155, %2152
  %2157 = icmp eq i32 %2156, 2
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %56, align 1
  %2159 = sext i32 %2135 to i64
  store i64 %2159, i64* %RDX.i1221, align 8
  %2160 = shl nsw i64 %2159, 3
  %2161 = add i64 %2160, %2130
  %2162 = add i64 %2127, 18
  store i64 %2162, i64* %PC.i, align 8
  %2163 = inttoptr i64 %2161 to i64*
  %2164 = load i64, i64* %2163, align 8
  %2165 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2164, i64* %2165, align 1
  store double 0.000000e+00, double* %385, align 1
  %2166 = add i64 %2125, -88
  %2167 = add i64 %2127, 23
  store i64 %2167, i64* %PC.i, align 8
  %2168 = inttoptr i64 %2166 to i64*
  store i64 %2164, i64* %2168, align 8
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -80
  %2171 = load i64, i64* %PC.i, align 8
  %2172 = add i64 %2171, 5
  store i64 %2172, i64* %PC.i, align 8
  %2173 = inttoptr i64 %2170 to i64*
  %2174 = load i64, i64* %2173, align 8
  %2175 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2174, i64* %2175, align 1
  store double 0.000000e+00, double* %385, align 1
  %2176 = add i64 %2169, -24
  %2177 = add i64 %2171, 9
  store i64 %2177, i64* %PC.i, align 8
  %2178 = inttoptr i64 %2176 to i64*
  %2179 = load i64, i64* %2178, align 8
  store i64 %2179, i64* %RCX.i1178, align 8
  %2180 = add i64 %2169, -32
  %2181 = add i64 %2171, 13
  store i64 %2181, i64* %PC.i, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = sext i32 %2183 to i64
  store i64 %2184, i64* %RDX.i1221, align 8
  %2185 = shl nsw i64 %2184, 3
  %2186 = add i64 %2185, %2179
  %2187 = add i64 %2171, 18
  store i64 %2187, i64* %PC.i, align 8
  %2188 = inttoptr i64 %2186 to i64*
  store i64 %2174, i64* %2188, align 8
  %2189 = load i64, i64* %RBP.i, align 8
  %2190 = add i64 %2189, -88
  %2191 = load i64, i64* %PC.i, align 8
  %2192 = add i64 %2191, 5
  store i64 %2192, i64* %PC.i, align 8
  %2193 = inttoptr i64 %2190 to i64*
  %2194 = load i64, i64* %2193, align 8
  %2195 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2194, i64* %2195, align 1
  store double 0.000000e+00, double* %385, align 1
  %2196 = add i64 %2189, -24
  %2197 = add i64 %2191, 9
  store i64 %2197, i64* %PC.i, align 8
  %2198 = inttoptr i64 %2196 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %RCX.i1178, align 8
  %2200 = add i64 %2189, -32
  %2201 = add i64 %2191, 12
  store i64 %2201, i64* %PC.i, align 8
  %2202 = inttoptr i64 %2200 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = add i32 %2203, 1
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RAX.i1207, align 8
  %2206 = icmp eq i32 %2203, -1
  %2207 = icmp eq i32 %2204, 0
  %2208 = or i1 %2206, %2207
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %51, align 1
  %2210 = and i32 %2204, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %52, align 1
  %2215 = xor i32 %2203, %2204
  %2216 = lshr i32 %2215, 4
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %53, align 1
  %2219 = icmp eq i32 %2204, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %54, align 1
  %2221 = lshr i32 %2204, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %55, align 1
  %2223 = lshr i32 %2203, 31
  %2224 = xor i32 %2221, %2223
  %2225 = add nuw nsw i32 %2224, %2221
  %2226 = icmp eq i32 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %56, align 1
  %2228 = sext i32 %2204 to i64
  store i64 %2228, i64* %RDX.i1221, align 8
  %2229 = shl nsw i64 %2228, 3
  %2230 = add i64 %2229, %2199
  %2231 = add i64 %2191, 23
  store i64 %2231, i64* %PC.i, align 8
  %2232 = inttoptr i64 %2230 to i64*
  store i64 %2194, i64* %2232, align 8
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -64
  %2235 = load i64, i64* %PC.i, align 8
  %2236 = add i64 %2235, 5
  store i64 %2236, i64* %PC.i, align 8
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237, align 8
  %2239 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2238, i64* %2239, align 1
  store double 0.000000e+00, double* %385, align 1
  %2240 = add i64 %2233, -24
  %2241 = add i64 %2235, 9
  store i64 %2241, i64* %PC.i, align 8
  %2242 = inttoptr i64 %2240 to i64*
  %2243 = load i64, i64* %2242, align 8
  store i64 %2243, i64* %RCX.i1178, align 8
  %2244 = add i64 %2233, -40
  %2245 = add i64 %2235, 13
  store i64 %2245, i64* %PC.i, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = sext i32 %2247 to i64
  store i64 %2248, i64* %RDX.i1221, align 8
  %2249 = shl nsw i64 %2248, 3
  %2250 = add i64 %2249, %2243
  %2251 = add i64 %2235, 18
  store i64 %2251, i64* %PC.i, align 8
  %2252 = inttoptr i64 %2250 to i64*
  store i64 %2238, i64* %2252, align 8
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -72
  %2255 = load i64, i64* %PC.i, align 8
  %2256 = add i64 %2255, 5
  store i64 %2256, i64* %PC.i, align 8
  %2257 = inttoptr i64 %2254 to i64*
  %2258 = load i64, i64* %2257, align 8
  %2259 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2258, i64* %2259, align 1
  store double 0.000000e+00, double* %385, align 1
  %2260 = add i64 %2253, -24
  %2261 = add i64 %2255, 9
  store i64 %2261, i64* %PC.i, align 8
  %2262 = inttoptr i64 %2260 to i64*
  %2263 = load i64, i64* %2262, align 8
  store i64 %2263, i64* %RCX.i1178, align 8
  %2264 = add i64 %2253, -40
  %2265 = add i64 %2255, 12
  store i64 %2265, i64* %PC.i, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = add i32 %2267, 1
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RAX.i1207, align 8
  %2270 = icmp eq i32 %2267, -1
  %2271 = icmp eq i32 %2268, 0
  %2272 = or i1 %2270, %2271
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %51, align 1
  %2274 = and i32 %2268, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %52, align 1
  %2279 = xor i32 %2267, %2268
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %53, align 1
  %2283 = icmp eq i32 %2268, 0
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %54, align 1
  %2285 = lshr i32 %2268, 31
  %2286 = trunc i32 %2285 to i8
  store i8 %2286, i8* %55, align 1
  %2287 = lshr i32 %2267, 31
  %2288 = xor i32 %2285, %2287
  %2289 = add nuw nsw i32 %2288, %2285
  %2290 = icmp eq i32 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %56, align 1
  %2292 = sext i32 %2268 to i64
  store i64 %2292, i64* %RDX.i1221, align 8
  %2293 = shl nsw i64 %2292, 3
  %2294 = add i64 %2293, %2263
  %2295 = add i64 %2255, 23
  store i64 %2295, i64* %PC.i, align 8
  %2296 = inttoptr i64 %2294 to i64*
  store i64 %2258, i64* %2296, align 8
  %2297 = load i64, i64* %RBP.i, align 8
  %2298 = add i64 %2297, -36
  %2299 = load i64, i64* %PC.i, align 8
  %2300 = add i64 %2299, 3
  store i64 %2300, i64* %PC.i, align 8
  %2301 = inttoptr i64 %2298 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = add i32 %2302, 1
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RAX.i1207, align 8
  %2305 = icmp eq i32 %2302, -1
  %2306 = icmp eq i32 %2303, 0
  %2307 = or i1 %2305, %2306
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %51, align 1
  %2309 = and i32 %2303, 255
  %2310 = tail call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %52, align 1
  %2314 = xor i32 %2302, %2303
  %2315 = lshr i32 %2314, 4
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  store i8 %2317, i8* %53, align 1
  %2318 = icmp eq i32 %2303, 0
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %54, align 1
  %2320 = lshr i32 %2303, 31
  %2321 = trunc i32 %2320 to i8
  store i8 %2321, i8* %55, align 1
  %2322 = lshr i32 %2302, 31
  %2323 = xor i32 %2320, %2322
  %2324 = add nuw nsw i32 %2323, %2320
  %2325 = icmp eq i32 %2324, 2
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %56, align 1
  %2327 = add i64 %2299, 9
  store i64 %2327, i64* %PC.i, align 8
  store i32 %2303, i32* %2301, align 4
  %2328 = load i64, i64* %PC.i, align 8
  %2329 = add i64 %2328, -1008
  store i64 %2329, i64* %3, align 8
  br label %block_.L_40126a

block_.L_40165f:                                  ; preds = %block_.L_40126a
  %2330 = add i64 %423, 467
  br label %block_.L_401832

block_.L_401664:                                  ; preds = %block_.L_40124b
  store i32 1, i32* %382, align 4
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2333 = bitcast i64* %2332 to double*
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_40166b

block_.L_40166b:                                  ; preds = %block_.L_40181a, %block_.L_401664
  %2334 = phi i64 [ %3190, %block_.L_40181a ], [ %.pre4, %block_.L_401664 ]
  %2335 = load i64, i64* %RBP.i, align 8
  %2336 = add i64 %2335, -36
  %2337 = add i64 %2334, 3
  store i64 %2337, i64* %PC.i, align 8
  %2338 = inttoptr i64 %2336 to i32*
  %2339 = load i32, i32* %2338, align 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RAX.i1207, align 8
  %2341 = add i64 %2335, -48
  %2342 = add i64 %2334, 6
  store i64 %2342, i64* %PC.i, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = sub i32 %2339, %2344
  %2346 = icmp ult i32 %2339, %2344
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %51, align 1
  %2348 = and i32 %2345, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %52, align 1
  %2353 = xor i32 %2344, %2339
  %2354 = xor i32 %2353, %2345
  %2355 = lshr i32 %2354, 4
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  store i8 %2357, i8* %53, align 1
  %2358 = icmp eq i32 %2345, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %54, align 1
  %2360 = lshr i32 %2345, 31
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %55, align 1
  %2362 = lshr i32 %2339, 31
  %2363 = lshr i32 %2344, 31
  %2364 = xor i32 %2363, %2362
  %2365 = xor i32 %2360, %2362
  %2366 = add nuw nsw i32 %2365, %2364
  %2367 = icmp eq i32 %2366, 2
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %56, align 1
  %2369 = icmp ne i8 %2361, 0
  %2370 = xor i1 %2369, %2367
  %.v18 = select i1 %2370, i64 12, i64 450
  %2371 = add i64 %2334, %.v18
  store i64 %2371, i64* %3, align 8
  br i1 %2370, label %block_401677, label %block_.L_40182d

block_401677:                                     ; preds = %block_.L_40166b
  %2372 = add i64 %2335, -28
  %2373 = add i64 %2371, 7
  store i64 %2373, i64* %PC.i, align 8
  %2374 = inttoptr i64 %2372 to i32*
  store i32 0, i32* %2374, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_40167e

block_.L_40167e:                                  ; preds = %block_40168a, %block_401677
  %2375 = phi i64 [ %3161, %block_40168a ], [ %.pre5, %block_401677 ]
  %2376 = load i64, i64* %RBP.i, align 8
  %2377 = add i64 %2376, -28
  %2378 = add i64 %2375, 3
  store i64 %2378, i64* %PC.i, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i1207, align 8
  %2382 = add i64 %2376, -36
  %2383 = add i64 %2375, 6
  store i64 %2383, i64* %PC.i, align 8
  %2384 = inttoptr i64 %2382 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = sub i32 %2380, %2385
  %2387 = icmp ult i32 %2380, %2385
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %51, align 1
  %2389 = and i32 %2386, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %52, align 1
  %2394 = xor i32 %2385, %2380
  %2395 = xor i32 %2394, %2386
  %2396 = lshr i32 %2395, 4
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  store i8 %2398, i8* %53, align 1
  %2399 = icmp eq i32 %2386, 0
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %54, align 1
  %2401 = lshr i32 %2386, 31
  %2402 = trunc i32 %2401 to i8
  store i8 %2402, i8* %55, align 1
  %2403 = lshr i32 %2380, 31
  %2404 = lshr i32 %2385, 31
  %2405 = xor i32 %2404, %2403
  %2406 = xor i32 %2401, %2403
  %2407 = add nuw nsw i32 %2406, %2405
  %2408 = icmp eq i32 %2407, 2
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %56, align 1
  %2410 = icmp ne i8 %2402, 0
  %2411 = xor i1 %2410, %2408
  %.v19 = select i1 %2411, i64 12, i64 412
  %2412 = add i64 %2375, %.v19
  store i64 %2412, i64* %3, align 8
  br i1 %2411, label %block_40168a, label %block_.L_40181a

block_40168a:                                     ; preds = %block_.L_40167e
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC.i, align 8
  %2414 = load i32, i32* %2379, align 4
  %2415 = shl i32 %2414, 1
  %2416 = icmp slt i32 %2414, 0
  %2417 = icmp slt i32 %2415, 0
  %2418 = xor i1 %2416, %2417
  %2419 = zext i32 %2415 to i64
  store i64 %2419, i64* %RAX.i1207, align 8
  %.lobit20 = lshr i32 %2414, 31
  %2420 = trunc i32 %.lobit20 to i8
  store i8 %2420, i8* %51, align 1
  %2421 = and i32 %2415, 254
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2426 = icmp eq i32 %2415, 0
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %54, align 1
  %2428 = lshr i32 %2414, 30
  %2429 = and i32 %2428, 1
  %2430 = trunc i32 %2429 to i8
  store i8 %2430, i8* %55, align 1
  %2431 = zext i1 %2418 to i8
  store i8 %2431, i8* %56, align 1
  %2432 = add i64 %2376, -16
  %2433 = add i64 %2412, 9
  store i64 %2433, i64* %PC.i, align 8
  %2434 = inttoptr i64 %2432 to i64*
  %2435 = load i64, i64* %2434, align 8
  store i64 %2435, i64* %RCX.i1178, align 8
  %2436 = add i64 %2412, 13
  store i64 %2436, i64* %PC.i, align 8
  %2437 = load i32, i32* %2384, align 4
  %2438 = sext i32 %2437 to i64
  store i64 %2438, i64* %RDX.i1221, align 8
  %2439 = shl nsw i64 %2438, 2
  %2440 = add i64 %2439, %2435
  %2441 = add i64 %2412, 16
  store i64 %2441, i64* %PC.i, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = add i32 %2443, %2415
  %2445 = zext i32 %2444 to i64
  store i64 %2445, i64* %RAX.i1207, align 8
  %2446 = icmp ult i32 %2444, %2415
  %2447 = icmp ult i32 %2444, %2443
  %2448 = or i1 %2446, %2447
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %51, align 1
  %2450 = and i32 %2444, 255
  %2451 = tail call i32 @llvm.ctpop.i32(i32 %2450)
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = xor i8 %2453, 1
  store i8 %2454, i8* %52, align 1
  %2455 = xor i32 %2443, %2415
  %2456 = xor i32 %2455, %2444
  %2457 = lshr i32 %2456, 4
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  store i8 %2459, i8* %53, align 1
  %2460 = icmp eq i32 %2444, 0
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %54, align 1
  %2462 = lshr i32 %2444, 31
  %2463 = trunc i32 %2462 to i8
  store i8 %2463, i8* %55, align 1
  %2464 = lshr i32 %2443, 31
  %2465 = xor i32 %2462, %2429
  %2466 = xor i32 %2462, %2464
  %2467 = add nuw nsw i32 %2465, %2466
  %2468 = icmp eq i32 %2467, 2
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %56, align 1
  %2470 = add i64 %2376, -32
  %2471 = add i64 %2412, 19
  store i64 %2471, i64* %PC.i, align 8
  %2472 = inttoptr i64 %2470 to i32*
  store i32 %2444, i32* %2472, align 4
  %2473 = load i64, i64* %RBP.i, align 8
  %2474 = add i64 %2473, -36
  %2475 = load i64, i64* %PC.i, align 8
  %2476 = add i64 %2475, 3
  store i64 %2476, i64* %PC.i, align 8
  %2477 = inttoptr i64 %2474 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = shl i32 %2478, 1
  %2480 = icmp slt i32 %2478, 0
  %2481 = icmp slt i32 %2479, 0
  %2482 = xor i1 %2480, %2481
  %2483 = zext i32 %2479 to i64
  store i64 %2483, i64* %RAX.i1207, align 8
  %.lobit21 = lshr i32 %2478, 31
  %2484 = trunc i32 %.lobit21 to i8
  store i8 %2484, i8* %51, align 1
  %2485 = and i32 %2479, 254
  %2486 = tail call i32 @llvm.ctpop.i32(i32 %2485)
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  %2489 = xor i8 %2488, 1
  store i8 %2489, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2490 = icmp eq i32 %2479, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %54, align 1
  %2492 = lshr i32 %2478, 30
  %2493 = and i32 %2492, 1
  %2494 = trunc i32 %2493 to i8
  store i8 %2494, i8* %55, align 1
  %2495 = zext i1 %2482 to i8
  store i8 %2495, i8* %56, align 1
  %2496 = add i64 %2473, -16
  %2497 = add i64 %2475, 9
  store i64 %2497, i64* %PC.i, align 8
  %2498 = inttoptr i64 %2496 to i64*
  %2499 = load i64, i64* %2498, align 8
  store i64 %2499, i64* %RCX.i1178, align 8
  %2500 = add i64 %2473, -28
  %2501 = add i64 %2475, 13
  store i64 %2501, i64* %PC.i, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = sext i32 %2503 to i64
  store i64 %2504, i64* %RDX.i1221, align 8
  %2505 = shl nsw i64 %2504, 2
  %2506 = add i64 %2505, %2499
  %2507 = add i64 %2475, 16
  store i64 %2507, i64* %PC.i, align 8
  %2508 = inttoptr i64 %2506 to i32*
  %2509 = load i32, i32* %2508, align 4
  %2510 = add i32 %2509, %2479
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RAX.i1207, align 8
  %2512 = icmp ult i32 %2510, %2479
  %2513 = icmp ult i32 %2510, %2509
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %51, align 1
  %2516 = and i32 %2510, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %52, align 1
  %2521 = xor i32 %2509, %2479
  %2522 = xor i32 %2521, %2510
  %2523 = lshr i32 %2522, 4
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  store i8 %2525, i8* %53, align 1
  %2526 = icmp eq i32 %2510, 0
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %54, align 1
  %2528 = lshr i32 %2510, 31
  %2529 = trunc i32 %2528 to i8
  store i8 %2529, i8* %55, align 1
  %2530 = lshr i32 %2509, 31
  %2531 = xor i32 %2528, %2493
  %2532 = xor i32 %2528, %2530
  %2533 = add nuw nsw i32 %2531, %2532
  %2534 = icmp eq i32 %2533, 2
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %56, align 1
  %2536 = add i64 %2473, -40
  %2537 = add i64 %2475, 19
  store i64 %2537, i64* %PC.i, align 8
  %2538 = inttoptr i64 %2536 to i32*
  store i32 %2510, i32* %2538, align 4
  %2539 = load i64, i64* %RBP.i, align 8
  %2540 = add i64 %2539, -24
  %2541 = load i64, i64* %PC.i, align 8
  %2542 = add i64 %2541, 4
  store i64 %2542, i64* %PC.i, align 8
  %2543 = inttoptr i64 %2540 to i64*
  %2544 = load i64, i64* %2543, align 8
  store i64 %2544, i64* %RCX.i1178, align 8
  %2545 = add i64 %2539, -32
  %2546 = add i64 %2541, 8
  store i64 %2546, i64* %PC.i, align 8
  %2547 = inttoptr i64 %2545 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = sext i32 %2548 to i64
  store i64 %2549, i64* %RDX.i1221, align 8
  %2550 = shl nsw i64 %2549, 3
  %2551 = add i64 %2550, %2544
  %2552 = add i64 %2541, 13
  store i64 %2552, i64* %PC.i, align 8
  %2553 = inttoptr i64 %2551 to i64*
  %2554 = load i64, i64* %2553, align 8
  %2555 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2554, i64* %2555, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2556 = add i64 %2539, -64
  %2557 = add i64 %2541, 18
  store i64 %2557, i64* %PC.i, align 8
  %2558 = inttoptr i64 %2556 to i64*
  store i64 %2554, i64* %2558, align 8
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -24
  %2561 = load i64, i64* %PC.i, align 8
  %2562 = add i64 %2561, 4
  store i64 %2562, i64* %PC.i, align 8
  %2563 = inttoptr i64 %2560 to i64*
  %2564 = load i64, i64* %2563, align 8
  store i64 %2564, i64* %RCX.i1178, align 8
  %2565 = add i64 %2559, -32
  %2566 = add i64 %2561, 7
  store i64 %2566, i64* %PC.i, align 8
  %2567 = inttoptr i64 %2565 to i32*
  %2568 = load i32, i32* %2567, align 4
  %2569 = add i32 %2568, 1
  %2570 = zext i32 %2569 to i64
  store i64 %2570, i64* %RAX.i1207, align 8
  %2571 = icmp eq i32 %2568, -1
  %2572 = icmp eq i32 %2569, 0
  %2573 = or i1 %2571, %2572
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %51, align 1
  %2575 = and i32 %2569, 255
  %2576 = tail call i32 @llvm.ctpop.i32(i32 %2575)
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  %2579 = xor i8 %2578, 1
  store i8 %2579, i8* %52, align 1
  %2580 = xor i32 %2568, %2569
  %2581 = lshr i32 %2580, 4
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  store i8 %2583, i8* %53, align 1
  %2584 = icmp eq i32 %2569, 0
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %54, align 1
  %2586 = lshr i32 %2569, 31
  %2587 = trunc i32 %2586 to i8
  store i8 %2587, i8* %55, align 1
  %2588 = lshr i32 %2568, 31
  %2589 = xor i32 %2586, %2588
  %2590 = add nuw nsw i32 %2589, %2586
  %2591 = icmp eq i32 %2590, 2
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %56, align 1
  %2593 = sext i32 %2569 to i64
  store i64 %2593, i64* %RDX.i1221, align 8
  %2594 = shl nsw i64 %2593, 3
  %2595 = add i64 %2594, %2564
  %2596 = add i64 %2561, 18
  store i64 %2596, i64* %PC.i, align 8
  %2597 = inttoptr i64 %2595 to i64*
  %2598 = load i64, i64* %2597, align 8
  %2599 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2598, i64* %2599, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2600 = add i64 %2559, -72
  %2601 = add i64 %2561, 23
  store i64 %2601, i64* %PC.i, align 8
  %2602 = inttoptr i64 %2600 to i64*
  store i64 %2598, i64* %2602, align 8
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -24
  %2605 = load i64, i64* %PC.i, align 8
  %2606 = add i64 %2605, 4
  store i64 %2606, i64* %PC.i, align 8
  %2607 = inttoptr i64 %2604 to i64*
  %2608 = load i64, i64* %2607, align 8
  store i64 %2608, i64* %RCX.i1178, align 8
  %2609 = add i64 %2603, -40
  %2610 = add i64 %2605, 8
  store i64 %2610, i64* %PC.i, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = sext i32 %2612 to i64
  store i64 %2613, i64* %RDX.i1221, align 8
  %2614 = shl nsw i64 %2613, 3
  %2615 = add i64 %2614, %2608
  %2616 = add i64 %2605, 13
  store i64 %2616, i64* %PC.i, align 8
  %2617 = inttoptr i64 %2615 to i64*
  %2618 = load i64, i64* %2617, align 8
  %2619 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2618, i64* %2619, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2620 = add i64 %2603, -80
  %2621 = add i64 %2605, 18
  store i64 %2621, i64* %PC.i, align 8
  %2622 = inttoptr i64 %2620 to i64*
  store i64 %2618, i64* %2622, align 8
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -24
  %2625 = load i64, i64* %PC.i, align 8
  %2626 = add i64 %2625, 4
  store i64 %2626, i64* %PC.i, align 8
  %2627 = inttoptr i64 %2624 to i64*
  %2628 = load i64, i64* %2627, align 8
  store i64 %2628, i64* %RCX.i1178, align 8
  %2629 = add i64 %2623, -40
  %2630 = add i64 %2625, 7
  store i64 %2630, i64* %PC.i, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = add i32 %2632, 1
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX.i1207, align 8
  %2635 = icmp eq i32 %2632, -1
  %2636 = icmp eq i32 %2633, 0
  %2637 = or i1 %2635, %2636
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %51, align 1
  %2639 = and i32 %2633, 255
  %2640 = tail call i32 @llvm.ctpop.i32(i32 %2639)
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = xor i8 %2642, 1
  store i8 %2643, i8* %52, align 1
  %2644 = xor i32 %2632, %2633
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  store i8 %2647, i8* %53, align 1
  %2648 = icmp eq i32 %2633, 0
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %54, align 1
  %2650 = lshr i32 %2633, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %55, align 1
  %2652 = lshr i32 %2632, 31
  %2653 = xor i32 %2650, %2652
  %2654 = add nuw nsw i32 %2653, %2650
  %2655 = icmp eq i32 %2654, 2
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %56, align 1
  %2657 = sext i32 %2633 to i64
  store i64 %2657, i64* %RDX.i1221, align 8
  %2658 = shl nsw i64 %2657, 3
  %2659 = add i64 %2658, %2628
  %2660 = add i64 %2625, 18
  store i64 %2660, i64* %PC.i, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  %2663 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2662, i64* %2663, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2664 = add i64 %2623, -88
  %2665 = add i64 %2625, 23
  store i64 %2665, i64* %PC.i, align 8
  %2666 = inttoptr i64 %2664 to i64*
  store i64 %2662, i64* %2666, align 8
  %2667 = load i64, i64* %RBP.i, align 8
  %2668 = add i64 %2667, -80
  %2669 = load i64, i64* %PC.i, align 8
  %2670 = add i64 %2669, 5
  store i64 %2670, i64* %PC.i, align 8
  %2671 = inttoptr i64 %2668 to i64*
  %2672 = load i64, i64* %2671, align 8
  %2673 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2672, i64* %2673, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2674 = add i64 %2667, -24
  %2675 = add i64 %2669, 9
  store i64 %2675, i64* %PC.i, align 8
  %2676 = inttoptr i64 %2674 to i64*
  %2677 = load i64, i64* %2676, align 8
  store i64 %2677, i64* %RCX.i1178, align 8
  %2678 = add i64 %2667, -32
  %2679 = add i64 %2669, 13
  store i64 %2679, i64* %PC.i, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = sext i32 %2681 to i64
  store i64 %2682, i64* %RDX.i1221, align 8
  %2683 = shl nsw i64 %2682, 3
  %2684 = add i64 %2683, %2677
  %2685 = add i64 %2669, 18
  store i64 %2685, i64* %PC.i, align 8
  %2686 = inttoptr i64 %2684 to i64*
  store i64 %2672, i64* %2686, align 8
  %2687 = load i64, i64* %RBP.i, align 8
  %2688 = add i64 %2687, -88
  %2689 = load i64, i64* %PC.i, align 8
  %2690 = add i64 %2689, 5
  store i64 %2690, i64* %PC.i, align 8
  %2691 = inttoptr i64 %2688 to i64*
  %2692 = load i64, i64* %2691, align 8
  %2693 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2692, i64* %2693, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2694 = add i64 %2687, -24
  %2695 = add i64 %2689, 9
  store i64 %2695, i64* %PC.i, align 8
  %2696 = inttoptr i64 %2694 to i64*
  %2697 = load i64, i64* %2696, align 8
  store i64 %2697, i64* %RCX.i1178, align 8
  %2698 = add i64 %2687, -32
  %2699 = add i64 %2689, 12
  store i64 %2699, i64* %PC.i, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = add i32 %2701, 1
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RAX.i1207, align 8
  %2704 = icmp eq i32 %2701, -1
  %2705 = icmp eq i32 %2702, 0
  %2706 = or i1 %2704, %2705
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %51, align 1
  %2708 = and i32 %2702, 255
  %2709 = tail call i32 @llvm.ctpop.i32(i32 %2708)
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  %2712 = xor i8 %2711, 1
  store i8 %2712, i8* %52, align 1
  %2713 = xor i32 %2701, %2702
  %2714 = lshr i32 %2713, 4
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %53, align 1
  %2717 = icmp eq i32 %2702, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %54, align 1
  %2719 = lshr i32 %2702, 31
  %2720 = trunc i32 %2719 to i8
  store i8 %2720, i8* %55, align 1
  %2721 = lshr i32 %2701, 31
  %2722 = xor i32 %2719, %2721
  %2723 = add nuw nsw i32 %2722, %2719
  %2724 = icmp eq i32 %2723, 2
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %56, align 1
  %2726 = sext i32 %2702 to i64
  store i64 %2726, i64* %RDX.i1221, align 8
  %2727 = shl nsw i64 %2726, 3
  %2728 = add i64 %2727, %2697
  %2729 = add i64 %2689, 23
  store i64 %2729, i64* %PC.i, align 8
  %2730 = inttoptr i64 %2728 to i64*
  store i64 %2692, i64* %2730, align 8
  %2731 = load i64, i64* %RBP.i, align 8
  %2732 = add i64 %2731, -64
  %2733 = load i64, i64* %PC.i, align 8
  %2734 = add i64 %2733, 5
  store i64 %2734, i64* %PC.i, align 8
  %2735 = inttoptr i64 %2732 to i64*
  %2736 = load i64, i64* %2735, align 8
  %2737 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2736, i64* %2737, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2738 = add i64 %2731, -24
  %2739 = add i64 %2733, 9
  store i64 %2739, i64* %PC.i, align 8
  %2740 = inttoptr i64 %2738 to i64*
  %2741 = load i64, i64* %2740, align 8
  store i64 %2741, i64* %RCX.i1178, align 8
  %2742 = add i64 %2731, -40
  %2743 = add i64 %2733, 13
  store i64 %2743, i64* %PC.i, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = sext i32 %2745 to i64
  store i64 %2746, i64* %RDX.i1221, align 8
  %2747 = shl nsw i64 %2746, 3
  %2748 = add i64 %2747, %2741
  %2749 = add i64 %2733, 18
  store i64 %2749, i64* %PC.i, align 8
  %2750 = inttoptr i64 %2748 to i64*
  store i64 %2736, i64* %2750, align 8
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -72
  %2753 = load i64, i64* %PC.i, align 8
  %2754 = add i64 %2753, 5
  store i64 %2754, i64* %PC.i, align 8
  %2755 = inttoptr i64 %2752 to i64*
  %2756 = load i64, i64* %2755, align 8
  %2757 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2756, i64* %2757, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2758 = add i64 %2751, -24
  %2759 = add i64 %2753, 9
  store i64 %2759, i64* %PC.i, align 8
  %2760 = inttoptr i64 %2758 to i64*
  %2761 = load i64, i64* %2760, align 8
  store i64 %2761, i64* %RCX.i1178, align 8
  %2762 = add i64 %2751, -40
  %2763 = add i64 %2753, 12
  store i64 %2763, i64* %PC.i, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = add i32 %2765, 1
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %RAX.i1207, align 8
  %2768 = icmp eq i32 %2765, -1
  %2769 = icmp eq i32 %2766, 0
  %2770 = or i1 %2768, %2769
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %51, align 1
  %2772 = and i32 %2766, 255
  %2773 = tail call i32 @llvm.ctpop.i32(i32 %2772)
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  %2776 = xor i8 %2775, 1
  store i8 %2776, i8* %52, align 1
  %2777 = xor i32 %2765, %2766
  %2778 = lshr i32 %2777, 4
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  store i8 %2780, i8* %53, align 1
  %2781 = icmp eq i32 %2766, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %54, align 1
  %2783 = lshr i32 %2766, 31
  %2784 = trunc i32 %2783 to i8
  store i8 %2784, i8* %55, align 1
  %2785 = lshr i32 %2765, 31
  %2786 = xor i32 %2783, %2785
  %2787 = add nuw nsw i32 %2786, %2783
  %2788 = icmp eq i32 %2787, 2
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %56, align 1
  %2790 = sext i32 %2766 to i64
  store i64 %2790, i64* %RDX.i1221, align 8
  %2791 = shl nsw i64 %2790, 3
  %2792 = add i64 %2791, %2761
  %2793 = add i64 %2753, 23
  store i64 %2793, i64* %PC.i, align 8
  %2794 = inttoptr i64 %2792 to i64*
  store i64 %2756, i64* %2794, align 8
  %2795 = load i64, i64* %RBP.i, align 8
  %2796 = add i64 %2795, -52
  %2797 = load i64, i64* %PC.i, align 8
  %2798 = add i64 %2797, 3
  store i64 %2798, i64* %PC.i, align 8
  %2799 = inttoptr i64 %2796 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = zext i32 %2800 to i64
  store i64 %2801, i64* %RAX.i1207, align 8
  %2802 = add i64 %2795, -32
  %2803 = add i64 %2797, 6
  store i64 %2803, i64* %PC.i, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = add i32 %2805, %2800
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RAX.i1207, align 8
  %2808 = icmp ult i32 %2806, %2800
  %2809 = icmp ult i32 %2806, %2805
  %2810 = or i1 %2808, %2809
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %51, align 1
  %2812 = and i32 %2806, 255
  %2813 = tail call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  store i8 %2816, i8* %52, align 1
  %2817 = xor i32 %2805, %2800
  %2818 = xor i32 %2817, %2806
  %2819 = lshr i32 %2818, 4
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  store i8 %2821, i8* %53, align 1
  %2822 = icmp eq i32 %2806, 0
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %54, align 1
  %2824 = lshr i32 %2806, 31
  %2825 = trunc i32 %2824 to i8
  store i8 %2825, i8* %55, align 1
  %2826 = lshr i32 %2800, 31
  %2827 = lshr i32 %2805, 31
  %2828 = xor i32 %2824, %2826
  %2829 = xor i32 %2824, %2827
  %2830 = add nuw nsw i32 %2828, %2829
  %2831 = icmp eq i32 %2830, 2
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %56, align 1
  %2833 = add i64 %2797, 9
  store i64 %2833, i64* %PC.i, align 8
  store i32 %2806, i32* %2804, align 4
  %2834 = load i64, i64* %RBP.i, align 8
  %2835 = add i64 %2834, -52
  %2836 = load i64, i64* %PC.i, align 8
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i, align 8
  %2838 = inttoptr i64 %2835 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RAX.i1207, align 8
  %2841 = add i64 %2834, -40
  %2842 = add i64 %2836, 6
  store i64 %2842, i64* %PC.i, align 8
  %2843 = inttoptr i64 %2841 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = add i32 %2844, %2839
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i1207, align 8
  %2847 = icmp ult i32 %2845, %2839
  %2848 = icmp ult i32 %2845, %2844
  %2849 = or i1 %2847, %2848
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %51, align 1
  %2851 = and i32 %2845, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %52, align 1
  %2856 = xor i32 %2844, %2839
  %2857 = xor i32 %2856, %2845
  %2858 = lshr i32 %2857, 4
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  store i8 %2860, i8* %53, align 1
  %2861 = icmp eq i32 %2845, 0
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %54, align 1
  %2863 = lshr i32 %2845, 31
  %2864 = trunc i32 %2863 to i8
  store i8 %2864, i8* %55, align 1
  %2865 = lshr i32 %2839, 31
  %2866 = lshr i32 %2844, 31
  %2867 = xor i32 %2863, %2865
  %2868 = xor i32 %2863, %2866
  %2869 = add nuw nsw i32 %2867, %2868
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %56, align 1
  %2872 = add i64 %2836, 9
  store i64 %2872, i64* %PC.i, align 8
  store i32 %2845, i32* %2843, align 4
  %2873 = load i64, i64* %RBP.i, align 8
  %2874 = add i64 %2873, -24
  %2875 = load i64, i64* %PC.i, align 8
  %2876 = add i64 %2875, 4
  store i64 %2876, i64* %PC.i, align 8
  %2877 = inttoptr i64 %2874 to i64*
  %2878 = load i64, i64* %2877, align 8
  store i64 %2878, i64* %RCX.i1178, align 8
  %2879 = add i64 %2873, -32
  %2880 = add i64 %2875, 8
  store i64 %2880, i64* %PC.i, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = sext i32 %2882 to i64
  store i64 %2883, i64* %RDX.i1221, align 8
  %2884 = shl nsw i64 %2883, 3
  %2885 = add i64 %2884, %2878
  %2886 = add i64 %2875, 13
  store i64 %2886, i64* %PC.i, align 8
  %2887 = inttoptr i64 %2885 to i64*
  %2888 = load i64, i64* %2887, align 8
  %2889 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2888, i64* %2889, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2890 = add i64 %2873, -64
  %2891 = add i64 %2875, 18
  store i64 %2891, i64* %PC.i, align 8
  %2892 = inttoptr i64 %2890 to i64*
  store i64 %2888, i64* %2892, align 8
  %2893 = load i64, i64* %RBP.i, align 8
  %2894 = add i64 %2893, -24
  %2895 = load i64, i64* %PC.i, align 8
  %2896 = add i64 %2895, 4
  store i64 %2896, i64* %PC.i, align 8
  %2897 = inttoptr i64 %2894 to i64*
  %2898 = load i64, i64* %2897, align 8
  store i64 %2898, i64* %RCX.i1178, align 8
  %2899 = add i64 %2893, -32
  %2900 = add i64 %2895, 7
  store i64 %2900, i64* %PC.i, align 8
  %2901 = inttoptr i64 %2899 to i32*
  %2902 = load i32, i32* %2901, align 4
  %2903 = add i32 %2902, 1
  %2904 = zext i32 %2903 to i64
  store i64 %2904, i64* %RAX.i1207, align 8
  %2905 = icmp eq i32 %2902, -1
  %2906 = icmp eq i32 %2903, 0
  %2907 = or i1 %2905, %2906
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %51, align 1
  %2909 = and i32 %2903, 255
  %2910 = tail call i32 @llvm.ctpop.i32(i32 %2909)
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  store i8 %2913, i8* %52, align 1
  %2914 = xor i32 %2902, %2903
  %2915 = lshr i32 %2914, 4
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  store i8 %2917, i8* %53, align 1
  %2918 = icmp eq i32 %2903, 0
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %54, align 1
  %2920 = lshr i32 %2903, 31
  %2921 = trunc i32 %2920 to i8
  store i8 %2921, i8* %55, align 1
  %2922 = lshr i32 %2902, 31
  %2923 = xor i32 %2920, %2922
  %2924 = add nuw nsw i32 %2923, %2920
  %2925 = icmp eq i32 %2924, 2
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %56, align 1
  %2927 = sext i32 %2903 to i64
  store i64 %2927, i64* %RDX.i1221, align 8
  %2928 = shl nsw i64 %2927, 3
  %2929 = add i64 %2928, %2898
  %2930 = add i64 %2895, 18
  store i64 %2930, i64* %PC.i, align 8
  %2931 = inttoptr i64 %2929 to i64*
  %2932 = load i64, i64* %2931, align 8
  %2933 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2932, i64* %2933, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2934 = add i64 %2893, -72
  %2935 = add i64 %2895, 23
  store i64 %2935, i64* %PC.i, align 8
  %2936 = inttoptr i64 %2934 to i64*
  store i64 %2932, i64* %2936, align 8
  %2937 = load i64, i64* %RBP.i, align 8
  %2938 = add i64 %2937, -24
  %2939 = load i64, i64* %PC.i, align 8
  %2940 = add i64 %2939, 4
  store i64 %2940, i64* %PC.i, align 8
  %2941 = inttoptr i64 %2938 to i64*
  %2942 = load i64, i64* %2941, align 8
  store i64 %2942, i64* %RCX.i1178, align 8
  %2943 = add i64 %2937, -40
  %2944 = add i64 %2939, 8
  store i64 %2944, i64* %PC.i, align 8
  %2945 = inttoptr i64 %2943 to i32*
  %2946 = load i32, i32* %2945, align 4
  %2947 = sext i32 %2946 to i64
  store i64 %2947, i64* %RDX.i1221, align 8
  %2948 = shl nsw i64 %2947, 3
  %2949 = add i64 %2948, %2942
  %2950 = add i64 %2939, 13
  store i64 %2950, i64* %PC.i, align 8
  %2951 = inttoptr i64 %2949 to i64*
  %2952 = load i64, i64* %2951, align 8
  %2953 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2952, i64* %2953, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2954 = add i64 %2937, -80
  %2955 = add i64 %2939, 18
  store i64 %2955, i64* %PC.i, align 8
  %2956 = inttoptr i64 %2954 to i64*
  store i64 %2952, i64* %2956, align 8
  %2957 = load i64, i64* %RBP.i, align 8
  %2958 = add i64 %2957, -24
  %2959 = load i64, i64* %PC.i, align 8
  %2960 = add i64 %2959, 4
  store i64 %2960, i64* %PC.i, align 8
  %2961 = inttoptr i64 %2958 to i64*
  %2962 = load i64, i64* %2961, align 8
  store i64 %2962, i64* %RCX.i1178, align 8
  %2963 = add i64 %2957, -40
  %2964 = add i64 %2959, 7
  store i64 %2964, i64* %PC.i, align 8
  %2965 = inttoptr i64 %2963 to i32*
  %2966 = load i32, i32* %2965, align 4
  %2967 = add i32 %2966, 1
  %2968 = zext i32 %2967 to i64
  store i64 %2968, i64* %RAX.i1207, align 8
  %2969 = icmp eq i32 %2966, -1
  %2970 = icmp eq i32 %2967, 0
  %2971 = or i1 %2969, %2970
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %51, align 1
  %2973 = and i32 %2967, 255
  %2974 = tail call i32 @llvm.ctpop.i32(i32 %2973)
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  store i8 %2977, i8* %52, align 1
  %2978 = xor i32 %2966, %2967
  %2979 = lshr i32 %2978, 4
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  store i8 %2981, i8* %53, align 1
  %2982 = icmp eq i32 %2967, 0
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %54, align 1
  %2984 = lshr i32 %2967, 31
  %2985 = trunc i32 %2984 to i8
  store i8 %2985, i8* %55, align 1
  %2986 = lshr i32 %2966, 31
  %2987 = xor i32 %2984, %2986
  %2988 = add nuw nsw i32 %2987, %2984
  %2989 = icmp eq i32 %2988, 2
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %56, align 1
  %2991 = sext i32 %2967 to i64
  store i64 %2991, i64* %RDX.i1221, align 8
  %2992 = shl nsw i64 %2991, 3
  %2993 = add i64 %2992, %2962
  %2994 = add i64 %2959, 18
  store i64 %2994, i64* %PC.i, align 8
  %2995 = inttoptr i64 %2993 to i64*
  %2996 = load i64, i64* %2995, align 8
  %2997 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2996, i64* %2997, align 1
  store double 0.000000e+00, double* %2333, align 1
  %2998 = add i64 %2957, -88
  %2999 = add i64 %2959, 23
  store i64 %2999, i64* %PC.i, align 8
  %3000 = inttoptr i64 %2998 to i64*
  store i64 %2996, i64* %3000, align 8
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = add i64 %3001, -80
  %3003 = load i64, i64* %PC.i, align 8
  %3004 = add i64 %3003, 5
  store i64 %3004, i64* %PC.i, align 8
  %3005 = inttoptr i64 %3002 to i64*
  %3006 = load i64, i64* %3005, align 8
  %3007 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3006, i64* %3007, align 1
  store double 0.000000e+00, double* %2333, align 1
  %3008 = add i64 %3001, -24
  %3009 = add i64 %3003, 9
  store i64 %3009, i64* %PC.i, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  store i64 %3011, i64* %RCX.i1178, align 8
  %3012 = add i64 %3001, -32
  %3013 = add i64 %3003, 13
  store i64 %3013, i64* %PC.i, align 8
  %3014 = inttoptr i64 %3012 to i32*
  %3015 = load i32, i32* %3014, align 4
  %3016 = sext i32 %3015 to i64
  store i64 %3016, i64* %RDX.i1221, align 8
  %3017 = shl nsw i64 %3016, 3
  %3018 = add i64 %3017, %3011
  %3019 = add i64 %3003, 18
  store i64 %3019, i64* %PC.i, align 8
  %3020 = inttoptr i64 %3018 to i64*
  store i64 %3006, i64* %3020, align 8
  %3021 = load i64, i64* %RBP.i, align 8
  %3022 = add i64 %3021, -88
  %3023 = load i64, i64* %PC.i, align 8
  %3024 = add i64 %3023, 5
  store i64 %3024, i64* %PC.i, align 8
  %3025 = inttoptr i64 %3022 to i64*
  %3026 = load i64, i64* %3025, align 8
  %3027 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3026, i64* %3027, align 1
  store double 0.000000e+00, double* %2333, align 1
  %3028 = add i64 %3021, -24
  %3029 = add i64 %3023, 9
  store i64 %3029, i64* %PC.i, align 8
  %3030 = inttoptr i64 %3028 to i64*
  %3031 = load i64, i64* %3030, align 8
  store i64 %3031, i64* %RCX.i1178, align 8
  %3032 = add i64 %3021, -32
  %3033 = add i64 %3023, 12
  store i64 %3033, i64* %PC.i, align 8
  %3034 = inttoptr i64 %3032 to i32*
  %3035 = load i32, i32* %3034, align 4
  %3036 = add i32 %3035, 1
  %3037 = zext i32 %3036 to i64
  store i64 %3037, i64* %RAX.i1207, align 8
  %3038 = icmp eq i32 %3035, -1
  %3039 = icmp eq i32 %3036, 0
  %3040 = or i1 %3038, %3039
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %51, align 1
  %3042 = and i32 %3036, 255
  %3043 = tail call i32 @llvm.ctpop.i32(i32 %3042)
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  store i8 %3046, i8* %52, align 1
  %3047 = xor i32 %3035, %3036
  %3048 = lshr i32 %3047, 4
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  store i8 %3050, i8* %53, align 1
  %3051 = icmp eq i32 %3036, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %54, align 1
  %3053 = lshr i32 %3036, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %55, align 1
  %3055 = lshr i32 %3035, 31
  %3056 = xor i32 %3053, %3055
  %3057 = add nuw nsw i32 %3056, %3053
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %56, align 1
  %3060 = sext i32 %3036 to i64
  store i64 %3060, i64* %RDX.i1221, align 8
  %3061 = shl nsw i64 %3060, 3
  %3062 = add i64 %3061, %3031
  %3063 = add i64 %3023, 23
  store i64 %3063, i64* %PC.i, align 8
  %3064 = inttoptr i64 %3062 to i64*
  store i64 %3026, i64* %3064, align 8
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -64
  %3067 = load i64, i64* %PC.i, align 8
  %3068 = add i64 %3067, 5
  store i64 %3068, i64* %PC.i, align 8
  %3069 = inttoptr i64 %3066 to i64*
  %3070 = load i64, i64* %3069, align 8
  %3071 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3070, i64* %3071, align 1
  store double 0.000000e+00, double* %2333, align 1
  %3072 = add i64 %3065, -24
  %3073 = add i64 %3067, 9
  store i64 %3073, i64* %PC.i, align 8
  %3074 = inttoptr i64 %3072 to i64*
  %3075 = load i64, i64* %3074, align 8
  store i64 %3075, i64* %RCX.i1178, align 8
  %3076 = add i64 %3065, -40
  %3077 = add i64 %3067, 13
  store i64 %3077, i64* %PC.i, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = sext i32 %3079 to i64
  store i64 %3080, i64* %RDX.i1221, align 8
  %3081 = shl nsw i64 %3080, 3
  %3082 = add i64 %3081, %3075
  %3083 = add i64 %3067, 18
  store i64 %3083, i64* %PC.i, align 8
  %3084 = inttoptr i64 %3082 to i64*
  store i64 %3070, i64* %3084, align 8
  %3085 = load i64, i64* %RBP.i, align 8
  %3086 = add i64 %3085, -72
  %3087 = load i64, i64* %PC.i, align 8
  %3088 = add i64 %3087, 5
  store i64 %3088, i64* %PC.i, align 8
  %3089 = inttoptr i64 %3086 to i64*
  %3090 = load i64, i64* %3089, align 8
  %3091 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2331, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3090, i64* %3091, align 1
  store double 0.000000e+00, double* %2333, align 1
  %3092 = add i64 %3085, -24
  %3093 = add i64 %3087, 9
  store i64 %3093, i64* %PC.i, align 8
  %3094 = inttoptr i64 %3092 to i64*
  %3095 = load i64, i64* %3094, align 8
  store i64 %3095, i64* %RCX.i1178, align 8
  %3096 = add i64 %3085, -40
  %3097 = add i64 %3087, 12
  store i64 %3097, i64* %PC.i, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = add i32 %3099, 1
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RAX.i1207, align 8
  %3102 = icmp eq i32 %3099, -1
  %3103 = icmp eq i32 %3100, 0
  %3104 = or i1 %3102, %3103
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %51, align 1
  %3106 = and i32 %3100, 255
  %3107 = tail call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  store i8 %3110, i8* %52, align 1
  %3111 = xor i32 %3099, %3100
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %53, align 1
  %3115 = icmp eq i32 %3100, 0
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %54, align 1
  %3117 = lshr i32 %3100, 31
  %3118 = trunc i32 %3117 to i8
  store i8 %3118, i8* %55, align 1
  %3119 = lshr i32 %3099, 31
  %3120 = xor i32 %3117, %3119
  %3121 = add nuw nsw i32 %3120, %3117
  %3122 = icmp eq i32 %3121, 2
  %3123 = zext i1 %3122 to i8
  store i8 %3123, i8* %56, align 1
  %3124 = sext i32 %3100 to i64
  store i64 %3124, i64* %RDX.i1221, align 8
  %3125 = shl nsw i64 %3124, 3
  %3126 = add i64 %3125, %3095
  %3127 = add i64 %3087, 23
  store i64 %3127, i64* %PC.i, align 8
  %3128 = inttoptr i64 %3126 to i64*
  store i64 %3090, i64* %3128, align 8
  %3129 = load i64, i64* %RBP.i, align 8
  %3130 = add i64 %3129, -28
  %3131 = load i64, i64* %PC.i, align 8
  %3132 = add i64 %3131, 3
  store i64 %3132, i64* %PC.i, align 8
  %3133 = inttoptr i64 %3130 to i32*
  %3134 = load i32, i32* %3133, align 4
  %3135 = add i32 %3134, 1
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RAX.i1207, align 8
  %3137 = icmp eq i32 %3134, -1
  %3138 = icmp eq i32 %3135, 0
  %3139 = or i1 %3137, %3138
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %51, align 1
  %3141 = and i32 %3135, 255
  %3142 = tail call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  store i8 %3145, i8* %52, align 1
  %3146 = xor i32 %3134, %3135
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  store i8 %3149, i8* %53, align 1
  %3150 = icmp eq i32 %3135, 0
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %54, align 1
  %3152 = lshr i32 %3135, 31
  %3153 = trunc i32 %3152 to i8
  store i8 %3153, i8* %55, align 1
  %3154 = lshr i32 %3134, 31
  %3155 = xor i32 %3152, %3154
  %3156 = add nuw nsw i32 %3155, %3152
  %3157 = icmp eq i32 %3156, 2
  %3158 = zext i1 %3157 to i8
  store i8 %3158, i8* %56, align 1
  %3159 = add i64 %3131, 9
  store i64 %3159, i64* %PC.i, align 8
  store i32 %3135, i32* %3133, align 4
  %3160 = load i64, i64* %PC.i, align 8
  %3161 = add i64 %3160, -407
  store i64 %3161, i64* %3, align 8
  br label %block_.L_40167e

block_.L_40181a:                                  ; preds = %block_.L_40167e
  %3162 = add i64 %2412, 8
  store i64 %3162, i64* %PC.i, align 8
  %3163 = load i32, i32* %2384, align 4
  %3164 = add i32 %3163, 1
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RAX.i1207, align 8
  %3166 = icmp eq i32 %3163, -1
  %3167 = icmp eq i32 %3164, 0
  %3168 = or i1 %3166, %3167
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %51, align 1
  %3170 = and i32 %3164, 255
  %3171 = tail call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  store i8 %3174, i8* %52, align 1
  %3175 = xor i32 %3163, %3164
  %3176 = lshr i32 %3175, 4
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  store i8 %3178, i8* %53, align 1
  %3179 = icmp eq i32 %3164, 0
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %54, align 1
  %3181 = lshr i32 %3164, 31
  %3182 = trunc i32 %3181 to i8
  store i8 %3182, i8* %55, align 1
  %3183 = lshr i32 %3163, 31
  %3184 = xor i32 %3181, %3183
  %3185 = add nuw nsw i32 %3184, %3181
  %3186 = icmp eq i32 %3185, 2
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %56, align 1
  %3188 = add i64 %2412, 14
  store i64 %3188, i64* %PC.i, align 8
  store i32 %3164, i32* %2384, align 4
  %3189 = load i64, i64* %PC.i, align 8
  %3190 = add i64 %3189, -445
  store i64 %3190, i64* %3, align 8
  br label %block_.L_40166b

block_.L_40182d:                                  ; preds = %block_.L_40166b
  %3191 = add i64 %2371, 5
  br label %block_.L_401832

block_.L_401832:                                  ; preds = %block_.L_40182d, %block_.L_40165f
  %.sink = phi i64 [ %3191, %block_.L_40182d ], [ %2330, %block_.L_40165f ]
  %3192 = add i64 %.sink, 1
  store i64 %3192, i64* %PC.i, align 8
  %3193 = load i64, i64* %6, align 8
  %3194 = add i64 %3193, 8
  %3195 = inttoptr i64 %3193 to i64*
  %3196 = load i64, i64* %3195, align 8
  store i64 %3196, i64* %RBP.i, align 8
  store i64 %3194, i64* %6, align 8
  %3197 = add i64 %.sink, 2
  store i64 %3197, i64* %PC.i, align 8
  %3198 = inttoptr i64 %3194 to i64*
  %3199 = load i64, i64* %3198, align 8
  store i64 %3199, i64* %3, align 8
  %3200 = add i64 %3193, 16
  store i64 %3200, i64* %6, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
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
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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

define %struct.Memory* @routine_jge_.L_40124b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40123d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401205(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4011e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jne_.L_401664(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40165f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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

define %struct.Memory* @routine_jge_.L_40158d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
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

define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40127d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40126a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401832(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40182d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_40181a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40167e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40181f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40166b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
