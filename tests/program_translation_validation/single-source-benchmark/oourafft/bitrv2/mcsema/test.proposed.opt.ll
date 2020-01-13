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
  %EDI.i1227 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i1227, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i1224, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %RDX.i1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i1221, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -16
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %29 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RDX.i1221, align 8
  %34 = add i64 %30, 10
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %33 to i32*
  store i32 0, i32* %35, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -4
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 3
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %37 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RDI.i, align 8
  %43 = add i64 %36, -44
  %44 = add i64 %38, 6
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -48
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %3, align 8
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
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4011e6

block_.L_4011e6:                                  ; preds = %block_.L_40123d, %entry
  %57 = phi i64 [ %307, %block_.L_40123d ], [ %.pre, %entry ]
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = add i64 %57, 3
  store i64 %60, i64* %3, align 8
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
  store i64 %79, i64* %3, align 8
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
  store i64 %108, i64* %3, align 8
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
  %127 = add i64 %107, 9
  store i64 %127, i64* %3, align 8
  store i32 %115, i32* %80, align 4
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -28
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_401205

block_.L_401205:                                  ; preds = %block_401211, %block_4011f5
  %133 = phi i64 [ %285, %block_401211 ], [ %.pre1, %block_4011f5 ]
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -28
  %136 = add i64 %133, 3
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i1207, align 8
  %140 = add i64 %134, -48
  %141 = add i64 %133, 6
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sub i32 %138, %143
  %145 = icmp ult i32 %138, %143
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %51, align 1
  %147 = and i32 %144, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %52, align 1
  %152 = xor i32 %143, %138
  %153 = xor i32 %152, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %53, align 1
  %157 = icmp eq i32 %144, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %54, align 1
  %159 = lshr i32 %144, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %55, align 1
  %161 = lshr i32 %138, 31
  %162 = lshr i32 %143, 31
  %163 = xor i32 %162, %161
  %164 = xor i32 %159, %161
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %56, align 1
  %168 = icmp ne i8 %160, 0
  %169 = xor i1 %168, %166
  %.v7 = select i1 %169, i64 12, i64 56
  %170 = add i64 %133, %.v7
  store i64 %170, i64* %3, align 8
  br i1 %169, label %block_401211, label %block_.L_40123d

block_401211:                                     ; preds = %block_.L_401205
  %171 = add i64 %134, -16
  %172 = add i64 %170, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i1207, align 8
  %175 = add i64 %170, 8
  store i64 %175, i64* %3, align 8
  %176 = load i32, i32* %137, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %RCX.i1178, align 8
  %178 = shl nsw i64 %177, 2
  %179 = add i64 %178, %174
  %180 = add i64 %170, 11
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RDX.i1221, align 8
  %184 = add i64 %134, -44
  %185 = add i64 %170, 14
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, %182
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDX.i1221, align 8
  %190 = icmp ult i32 %188, %182
  %191 = icmp ult i32 %188, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %51, align 1
  %194 = and i32 %188, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %52, align 1
  %199 = xor i32 %187, %182
  %200 = xor i32 %199, %188
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %53, align 1
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %54, align 1
  %206 = lshr i32 %188, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %55, align 1
  %208 = lshr i32 %182, 31
  %209 = lshr i32 %187, 31
  %210 = xor i32 %206, %208
  %211 = xor i32 %206, %209
  %212 = add nuw nsw i32 %210, %211
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %56, align 1
  %215 = add i64 %170, 18
  store i64 %215, i64* %3, align 8
  %216 = load i64, i64* %173, align 8
  store i64 %216, i64* %RAX.i1207, align 8
  %217 = add i64 %170, 21
  store i64 %217, i64* %3, align 8
  %218 = load i32, i32* %142, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RSI.i1224, align 8
  %220 = add i64 %170, 24
  store i64 %220, i64* %3, align 8
  %221 = load i32, i32* %137, align 4
  %222 = add i32 %221, %218
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RSI.i1224, align 8
  %224 = icmp ult i32 %222, %218
  %225 = icmp ult i32 %222, %221
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %51, align 1
  %228 = and i32 %222, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %52, align 1
  %233 = xor i32 %221, %218
  %234 = xor i32 %233, %222
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %53, align 1
  %238 = icmp eq i32 %222, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %54, align 1
  %240 = lshr i32 %222, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %55, align 1
  %242 = lshr i32 %218, 31
  %243 = lshr i32 %221, 31
  %244 = xor i32 %240, %242
  %245 = xor i32 %240, %243
  %246 = add nuw nsw i32 %244, %245
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %56, align 1
  %249 = sext i32 %222 to i64
  store i64 %249, i64* %RCX.i1178, align 8
  %250 = shl nsw i64 %249, 2
  %251 = add i64 %250, %216
  %252 = add i64 %170, 30
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  store i32 %188, i32* %253, align 4
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -28
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 3
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = add i32 %259, 1
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX.i1207, align 8
  %262 = icmp eq i32 %259, -1
  %263 = icmp eq i32 %260, 0
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %51, align 1
  %266 = and i32 %260, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %52, align 1
  %271 = xor i32 %259, %260
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %53, align 1
  %275 = zext i1 %263 to i8
  store i8 %275, i8* %54, align 1
  %276 = lshr i32 %260, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %55, align 1
  %278 = lshr i32 %259, 31
  %279 = xor i32 %276, %278
  %280 = add nuw nsw i32 %279, %276
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %56, align 1
  %283 = add i64 %256, 9
  store i64 %283, i64* %3, align 8
  store i32 %260, i32* %258, align 4
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, -51
  store i64 %285, i64* %3, align 8
  br label %block_.L_401205

block_.L_40123d:                                  ; preds = %block_.L_401205
  %286 = add i64 %170, 3
  store i64 %286, i64* %3, align 8
  %287 = load i32, i32* %142, align 4
  %288 = shl i32 %287, 1
  %289 = icmp slt i32 %287, 0
  %290 = icmp slt i32 %288, 0
  %291 = xor i1 %289, %290
  %292 = zext i32 %288 to i64
  store i64 %292, i64* %RAX.i1207, align 8
  %.lobit = lshr i32 %287, 31
  %293 = trunc i32 %.lobit to i8
  store i8 %293, i8* %51, align 1
  %294 = and i32 %288, 254
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294)
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %299 = icmp eq i32 %288, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %54, align 1
  %301 = lshr i32 %287, 30
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %55, align 1
  %304 = zext i1 %291 to i8
  store i8 %304, i8* %56, align 1
  %305 = add i64 %170, 9
  store i64 %305, i64* %3, align 8
  store i32 %288, i32* %142, align 4
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, -96
  store i64 %307, i64* %3, align 8
  br label %block_.L_4011e6

block_.L_40124b:                                  ; preds = %block_.L_4011e6
  %308 = load i32, i32* %61, align 4
  %309 = shl i32 %308, 1
  %310 = icmp slt i32 %308, 0
  %311 = icmp slt i32 %309, 0
  %312 = xor i1 %310, %311
  %313 = zext i32 %309 to i64
  store i64 %313, i64* %RAX.i1207, align 8
  %.lobit8 = lshr i32 %308, 31
  %314 = trunc i32 %.lobit8 to i8
  store i8 %314, i8* %51, align 1
  %315 = and i32 %309, 254
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %320 = icmp eq i32 %309, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %54, align 1
  %322 = lshr i32 %308, 30
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %55, align 1
  %325 = zext i1 %312 to i8
  store i8 %325, i8* %56, align 1
  %326 = add i64 %58, -52
  %327 = add i64 %107, 9
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  store i32 %309, i32* %328, align 4
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -48
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 3
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = shl i32 %334, 3
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i1207, align 8
  %337 = lshr i32 %334, 29
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %51, align 1
  %340 = and i32 %335, 248
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %345 = icmp eq i32 %335, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %54, align 1
  %347 = lshr i32 %334, 28
  %348 = and i32 %347, 1
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %350 = add i64 %329, -44
  %351 = add i64 %331, 9
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = sub i32 %335, %353
  %355 = icmp ult i32 %335, %353
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %51, align 1
  %357 = and i32 %354, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %52, align 1
  %362 = xor i32 %353, %335
  %363 = xor i32 %362, %354
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %53, align 1
  %367 = icmp eq i32 %354, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %54, align 1
  %369 = lshr i32 %354, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %55, align 1
  %371 = lshr i32 %353, 31
  %372 = xor i32 %371, %348
  %373 = xor i32 %369, %348
  %374 = add nuw nsw i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %56, align 1
  %.v10 = select i1 %367, i64 15, i64 1040
  %377 = add i64 %331, %.v10
  %378 = add i64 %329, -36
  %379 = add i64 %377, 7
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  br i1 %367, label %block_401263, label %block_.L_401664

block_401263:                                     ; preds = %block_.L_40124b
  store i32 0, i32* %380, align 4
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %383 = bitcast i64* %382 to double*
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_40126a

block_.L_40126a:                                  ; preds = %block_.L_40158d, %block_401263
  %384 = phi i64 [ %2267, %block_.L_40158d ], [ %.pre2, %block_401263 ]
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -36
  %387 = add i64 %384, 3
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i1207, align 8
  %391 = add i64 %385, -48
  %392 = add i64 %384, 6
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sub i32 %389, %394
  %396 = icmp ult i32 %389, %394
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %51, align 1
  %398 = and i32 %395, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %52, align 1
  %403 = xor i32 %394, %389
  %404 = xor i32 %403, %395
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %53, align 1
  %408 = icmp eq i32 %395, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %54, align 1
  %410 = lshr i32 %395, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %55, align 1
  %412 = lshr i32 %389, 31
  %413 = lshr i32 %394, 31
  %414 = xor i32 %413, %412
  %415 = xor i32 %410, %412
  %416 = add nuw nsw i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %56, align 1
  %419 = icmp ne i8 %411, 0
  %420 = xor i1 %419, %417
  %.v11 = select i1 %420, i64 12, i64 1013
  %421 = add i64 %384, %.v11
  store i64 %421, i64* %3, align 8
  br i1 %420, label %block_401276, label %block_.L_40165f

block_401276:                                     ; preds = %block_.L_40126a
  %422 = add i64 %385, -28
  %423 = add i64 %421, 7
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 0, i32* %424, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_40127d

block_.L_40127d:                                  ; preds = %block_401289, %block_401276
  %425 = phi i64 [ %1859, %block_401289 ], [ %.pre3, %block_401276 ]
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -28
  %428 = add i64 %425, 3
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RAX.i1207, align 8
  %432 = add i64 %426, -36
  %433 = add i64 %425, 6
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sub i32 %430, %435
  %437 = icmp ult i32 %430, %435
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %51, align 1
  %439 = and i32 %436, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %52, align 1
  %444 = xor i32 %435, %430
  %445 = xor i32 %444, %436
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %53, align 1
  %449 = icmp eq i32 %436, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %54, align 1
  %451 = lshr i32 %436, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %55, align 1
  %453 = lshr i32 %430, 31
  %454 = lshr i32 %435, 31
  %455 = xor i32 %454, %453
  %456 = xor i32 %451, %453
  %457 = add nuw nsw i32 %456, %455
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %56, align 1
  %460 = icmp ne i8 %452, 0
  %461 = xor i1 %460, %458
  %.v12 = select i1 %461, i64 12, i64 784
  %462 = add i64 %425, %.v12
  %463 = add i64 %462, 3
  store i64 %463, i64* %3, align 8
  br i1 %461, label %block_401289, label %block_.L_40158d

block_401289:                                     ; preds = %block_.L_40127d
  %464 = load i32, i32* %429, align 4
  %465 = shl i32 %464, 1
  %466 = icmp slt i32 %464, 0
  %467 = icmp slt i32 %465, 0
  %468 = xor i1 %466, %467
  %469 = zext i32 %465 to i64
  store i64 %469, i64* %RAX.i1207, align 8
  %.lobit13 = lshr i32 %464, 31
  %470 = trunc i32 %.lobit13 to i8
  store i8 %470, i8* %51, align 1
  %471 = and i32 %465, 254
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %476 = icmp eq i32 %465, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %54, align 1
  %478 = lshr i32 %464, 30
  %479 = and i32 %478, 1
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %55, align 1
  %481 = zext i1 %468 to i8
  store i8 %481, i8* %56, align 1
  %482 = add i64 %426, -16
  %483 = add i64 %462, 10
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RCX.i1178, align 8
  %486 = add i64 %462, 14
  store i64 %486, i64* %3, align 8
  %487 = load i32, i32* %434, align 4
  %488 = sext i32 %487 to i64
  store i64 %488, i64* %RDX.i1221, align 8
  %489 = shl nsw i64 %488, 2
  %490 = add i64 %489, %485
  %491 = add i64 %462, 17
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = add i32 %493, %465
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RAX.i1207, align 8
  %496 = icmp ult i32 %494, %465
  %497 = icmp ult i32 %494, %493
  %498 = or i1 %496, %497
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %51, align 1
  %500 = and i32 %494, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %52, align 1
  %505 = xor i32 %493, %465
  %506 = xor i32 %505, %494
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %53, align 1
  %510 = icmp eq i32 %494, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %54, align 1
  %512 = lshr i32 %494, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %55, align 1
  %514 = lshr i32 %493, 31
  %515 = xor i32 %512, %479
  %516 = xor i32 %512, %514
  %517 = add nuw nsw i32 %515, %516
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %56, align 1
  %520 = add i64 %426, -32
  %521 = add i64 %462, 20
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  store i32 %494, i32* %522, align 4
  %523 = load i64, i64* %RBP.i, align 8
  %524 = add i64 %523, -36
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, 3
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = shl i32 %528, 1
  %530 = icmp slt i32 %528, 0
  %531 = icmp slt i32 %529, 0
  %532 = xor i1 %530, %531
  %533 = zext i32 %529 to i64
  store i64 %533, i64* %RAX.i1207, align 8
  %.lobit14 = lshr i32 %528, 31
  %534 = trunc i32 %.lobit14 to i8
  store i8 %534, i8* %51, align 1
  %535 = and i32 %529, 254
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %540 = icmp eq i32 %529, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %54, align 1
  %542 = lshr i32 %528, 30
  %543 = and i32 %542, 1
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %55, align 1
  %545 = zext i1 %532 to i8
  store i8 %545, i8* %56, align 1
  %546 = add i64 %523, -16
  %547 = add i64 %525, 10
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RCX.i1178, align 8
  %550 = add i64 %523, -28
  %551 = add i64 %525, 14
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  store i64 %554, i64* %RDX.i1221, align 8
  %555 = shl nsw i64 %554, 2
  %556 = add i64 %555, %549
  %557 = add i64 %525, 17
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = add i32 %559, %529
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RAX.i1207, align 8
  %562 = icmp ult i32 %560, %529
  %563 = icmp ult i32 %560, %559
  %564 = or i1 %562, %563
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %51, align 1
  %566 = and i32 %560, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %52, align 1
  %571 = xor i32 %559, %529
  %572 = xor i32 %571, %560
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %53, align 1
  %576 = icmp eq i32 %560, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %54, align 1
  %578 = lshr i32 %560, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %55, align 1
  %580 = lshr i32 %559, 31
  %581 = xor i32 %578, %543
  %582 = xor i32 %578, %580
  %583 = add nuw nsw i32 %581, %582
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %56, align 1
  %586 = add i64 %523, -40
  %587 = add i64 %525, 20
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  store i32 %560, i32* %588, align 4
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -24
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 4
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %590 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %RCX.i1178, align 8
  %595 = add i64 %589, -32
  %596 = add i64 %591, 8
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  store i64 %599, i64* %RDX.i1221, align 8
  %600 = shl nsw i64 %599, 3
  %601 = add i64 %600, %594
  %602 = add i64 %591, 13
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i64*
  %604 = load i64, i64* %603, align 8
  %605 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %381, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %604, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %606 = add i64 %589, -64
  %607 = add i64 %591, 18
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %608, align 8
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -24
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 4
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RCX.i1178, align 8
  %615 = add i64 %609, -32
  %616 = add i64 %611, 7
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %618, 1
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RAX.i1207, align 8
  %621 = icmp eq i32 %618, -1
  %622 = icmp eq i32 %619, 0
  %623 = or i1 %621, %622
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %51, align 1
  %625 = and i32 %619, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %52, align 1
  %630 = xor i32 %618, %619
  %631 = lshr i32 %630, 4
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %53, align 1
  %634 = zext i1 %622 to i8
  store i8 %634, i8* %54, align 1
  %635 = lshr i32 %619, 31
  %636 = trunc i32 %635 to i8
  store i8 %636, i8* %55, align 1
  %637 = lshr i32 %618, 31
  %638 = xor i32 %635, %637
  %639 = add nuw nsw i32 %638, %635
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %56, align 1
  %642 = sext i32 %619 to i64
  store i64 %642, i64* %RDX.i1221, align 8
  %643 = shl nsw i64 %642, 3
  %644 = add i64 %643, %614
  %645 = add i64 %611, 18
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %648 = add i64 %609, -72
  %649 = add i64 %611, 23
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  store i64 %647, i64* %650, align 8
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -24
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 4
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RCX.i1178, align 8
  %657 = add i64 %651, -40
  %658 = add i64 %653, 8
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RDX.i1221, align 8
  %662 = shl nsw i64 %661, 3
  %663 = add i64 %662, %656
  %664 = add i64 %653, 13
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %667 = add i64 %651, -80
  %668 = add i64 %653, 18
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  store i64 %666, i64* %669, align 8
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -24
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 4
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %671 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RCX.i1178, align 8
  %676 = add i64 %670, -40
  %677 = add i64 %672, 7
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = add i32 %679, 1
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX.i1207, align 8
  %682 = icmp eq i32 %679, -1
  %683 = icmp eq i32 %680, 0
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %51, align 1
  %686 = and i32 %680, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %52, align 1
  %691 = xor i32 %679, %680
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  store i8 %694, i8* %53, align 1
  %695 = zext i1 %683 to i8
  store i8 %695, i8* %54, align 1
  %696 = lshr i32 %680, 31
  %697 = trunc i32 %696 to i8
  store i8 %697, i8* %55, align 1
  %698 = lshr i32 %679, 31
  %699 = xor i32 %696, %698
  %700 = add nuw nsw i32 %699, %696
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %56, align 1
  %703 = sext i32 %680 to i64
  store i64 %703, i64* %RDX.i1221, align 8
  %704 = shl nsw i64 %703, 3
  %705 = add i64 %704, %675
  %706 = add i64 %672, 18
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %709 = add i64 %670, -88
  %710 = add i64 %672, 23
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i64*
  store i64 %708, i64* %711, align 8
  %712 = load i64, i64* %RBP.i, align 8
  %713 = add i64 %712, -80
  %714 = load i64, i64* %3, align 8
  %715 = add i64 %714, 5
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %713 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %717, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %718 = add i64 %712, -24
  %719 = add i64 %714, 9
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RCX.i1178, align 8
  %722 = add i64 %712, -32
  %723 = add i64 %714, 13
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RDX.i1221, align 8
  %727 = shl nsw i64 %726, 3
  %728 = add i64 %727, %721
  %729 = add i64 %714, 18
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  store i64 %717, i64* %730, align 8
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -88
  %733 = load i64, i64* %3, align 8
  %734 = add i64 %733, 5
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %732 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %737 = add i64 %731, -24
  %738 = add i64 %733, 9
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i64*
  %740 = load i64, i64* %739, align 8
  store i64 %740, i64* %RCX.i1178, align 8
  %741 = add i64 %731, -32
  %742 = add i64 %733, 12
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, 1
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RAX.i1207, align 8
  %747 = icmp eq i32 %744, -1
  %748 = icmp eq i32 %745, 0
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %51, align 1
  %751 = and i32 %745, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %52, align 1
  %756 = xor i32 %744, %745
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %53, align 1
  %760 = zext i1 %748 to i8
  store i8 %760, i8* %54, align 1
  %761 = lshr i32 %745, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %55, align 1
  %763 = lshr i32 %744, 31
  %764 = xor i32 %761, %763
  %765 = add nuw nsw i32 %764, %761
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %56, align 1
  %768 = sext i32 %745 to i64
  store i64 %768, i64* %RDX.i1221, align 8
  %769 = shl nsw i64 %768, 3
  %770 = add i64 %769, %740
  %771 = add i64 %733, 23
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  store i64 %736, i64* %772, align 8
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -64
  %775 = load i64, i64* %3, align 8
  %776 = add i64 %775, 5
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %774 to i64*
  %778 = load i64, i64* %777, align 8
  store i64 %778, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %779 = add i64 %773, -24
  %780 = add i64 %775, 9
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i64*
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %RCX.i1178, align 8
  %783 = add i64 %773, -40
  %784 = add i64 %775, 13
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = sext i32 %786 to i64
  store i64 %787, i64* %RDX.i1221, align 8
  %788 = shl nsw i64 %787, 3
  %789 = add i64 %788, %782
  %790 = add i64 %775, 18
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  store i64 %778, i64* %791, align 8
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -72
  %794 = load i64, i64* %3, align 8
  %795 = add i64 %794, 5
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796, align 8
  store i64 %797, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %798 = add i64 %792, -24
  %799 = add i64 %794, 9
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %801, i64* %RCX.i1178, align 8
  %802 = add i64 %792, -40
  %803 = add i64 %794, 12
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = add i32 %805, 1
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RAX.i1207, align 8
  %808 = icmp eq i32 %805, -1
  %809 = icmp eq i32 %806, 0
  %810 = or i1 %808, %809
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %51, align 1
  %812 = and i32 %806, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %52, align 1
  %817 = xor i32 %805, %806
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  store i8 %820, i8* %53, align 1
  %821 = zext i1 %809 to i8
  store i8 %821, i8* %54, align 1
  %822 = lshr i32 %806, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %55, align 1
  %824 = lshr i32 %805, 31
  %825 = xor i32 %822, %824
  %826 = add nuw nsw i32 %825, %822
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %56, align 1
  %829 = sext i32 %806 to i64
  store i64 %829, i64* %RDX.i1221, align 8
  %830 = shl nsw i64 %829, 3
  %831 = add i64 %830, %801
  %832 = add i64 %794, 23
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  store i64 %797, i64* %833, align 8
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -52
  %836 = load i64, i64* %3, align 8
  %837 = add i64 %836, 3
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %835 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX.i1207, align 8
  %841 = add i64 %834, -32
  %842 = add i64 %836, 6
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = add i32 %844, %839
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX.i1207, align 8
  %847 = icmp ult i32 %845, %839
  %848 = icmp ult i32 %845, %844
  %849 = or i1 %847, %848
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %51, align 1
  %851 = and i32 %845, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %52, align 1
  %856 = xor i32 %844, %839
  %857 = xor i32 %856, %845
  %858 = lshr i32 %857, 4
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  store i8 %860, i8* %53, align 1
  %861 = icmp eq i32 %845, 0
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %54, align 1
  %863 = lshr i32 %845, 31
  %864 = trunc i32 %863 to i8
  store i8 %864, i8* %55, align 1
  %865 = lshr i32 %839, 31
  %866 = lshr i32 %844, 31
  %867 = xor i32 %863, %865
  %868 = xor i32 %863, %866
  %869 = add nuw nsw i32 %867, %868
  %870 = icmp eq i32 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %56, align 1
  %872 = add i64 %836, 9
  store i64 %872, i64* %3, align 8
  store i32 %845, i32* %843, align 4
  %873 = load i64, i64* %RBP.i, align 8
  %874 = add i64 %873, -52
  %875 = load i64, i64* %3, align 8
  %876 = add i64 %875, 3
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = shl i32 %878, 1
  %880 = icmp slt i32 %878, 0
  %881 = icmp slt i32 %879, 0
  %882 = xor i1 %880, %881
  %883 = zext i32 %879 to i64
  store i64 %883, i64* %RAX.i1207, align 8
  %.lobit15 = lshr i32 %878, 31
  %884 = trunc i32 %.lobit15 to i8
  store i8 %884, i8* %51, align 1
  %885 = and i32 %879, 254
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %890 = icmp eq i32 %879, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %54, align 1
  %892 = lshr i32 %878, 30
  %893 = and i32 %892, 1
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %55, align 1
  %895 = zext i1 %882 to i8
  store i8 %895, i8* %56, align 1
  %896 = add i64 %873, -40
  %897 = add i64 %875, 9
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = add i32 %899, %879
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX.i1207, align 8
  %902 = icmp ult i32 %900, %879
  %903 = icmp ult i32 %900, %899
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %51, align 1
  %906 = and i32 %900, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %52, align 1
  %911 = xor i32 %899, %879
  %912 = xor i32 %911, %900
  %913 = lshr i32 %912, 4
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %53, align 1
  %916 = icmp eq i32 %900, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %54, align 1
  %918 = lshr i32 %900, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %55, align 1
  %920 = lshr i32 %899, 31
  %921 = xor i32 %918, %893
  %922 = xor i32 %918, %920
  %923 = add nuw nsw i32 %921, %922
  %924 = icmp eq i32 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %56, align 1
  %926 = add i64 %875, 12
  store i64 %926, i64* %3, align 8
  store i32 %900, i32* %898, align 4
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -24
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 4
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RCX.i1178, align 8
  %933 = add i64 %927, -32
  %934 = add i64 %929, 8
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = sext i32 %936 to i64
  store i64 %937, i64* %RDX.i1221, align 8
  %938 = shl nsw i64 %937, 3
  %939 = add i64 %938, %932
  %940 = add i64 %929, 13
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %943 = add i64 %927, -64
  %944 = add i64 %929, 18
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  store i64 %942, i64* %945, align 8
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -24
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 4
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %947 to i64*
  %951 = load i64, i64* %950, align 8
  store i64 %951, i64* %RCX.i1178, align 8
  %952 = add i64 %946, -32
  %953 = add i64 %948, 7
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = add i32 %955, 1
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i1207, align 8
  %958 = icmp eq i32 %955, -1
  %959 = icmp eq i32 %956, 0
  %960 = or i1 %958, %959
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %51, align 1
  %962 = and i32 %956, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %52, align 1
  %967 = xor i32 %955, %956
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %53, align 1
  %971 = zext i1 %959 to i8
  store i8 %971, i8* %54, align 1
  %972 = lshr i32 %956, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %55, align 1
  %974 = lshr i32 %955, 31
  %975 = xor i32 %972, %974
  %976 = add nuw nsw i32 %975, %972
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %56, align 1
  %979 = sext i32 %956 to i64
  store i64 %979, i64* %RDX.i1221, align 8
  %980 = shl nsw i64 %979, 3
  %981 = add i64 %980, %951
  %982 = add i64 %948, 18
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %985 = add i64 %946, -72
  %986 = add i64 %948, 23
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i64*
  store i64 %984, i64* %987, align 8
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -24
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 4
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %989 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RCX.i1178, align 8
  %994 = add i64 %988, -40
  %995 = add i64 %990, 8
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  store i64 %998, i64* %RDX.i1221, align 8
  %999 = shl nsw i64 %998, 3
  %1000 = add i64 %999, %993
  %1001 = add i64 %990, 13
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1004 = add i64 %988, -80
  %1005 = add i64 %990, 18
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i64*
  store i64 %1003, i64* %1006, align 8
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -24
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, 4
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1008 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i64 %1012, i64* %RCX.i1178, align 8
  %1013 = add i64 %1007, -40
  %1014 = add i64 %1009, 7
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = add i32 %1016, 1
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i1207, align 8
  %1019 = icmp eq i32 %1016, -1
  %1020 = icmp eq i32 %1017, 0
  %1021 = or i1 %1019, %1020
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %51, align 1
  %1023 = and i32 %1017, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %52, align 1
  %1028 = xor i32 %1016, %1017
  %1029 = lshr i32 %1028, 4
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  store i8 %1031, i8* %53, align 1
  %1032 = zext i1 %1020 to i8
  store i8 %1032, i8* %54, align 1
  %1033 = lshr i32 %1017, 31
  %1034 = trunc i32 %1033 to i8
  store i8 %1034, i8* %55, align 1
  %1035 = lshr i32 %1016, 31
  %1036 = xor i32 %1033, %1035
  %1037 = add nuw nsw i32 %1036, %1033
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %56, align 1
  %1040 = sext i32 %1017 to i64
  store i64 %1040, i64* %RDX.i1221, align 8
  %1041 = shl nsw i64 %1040, 3
  %1042 = add i64 %1041, %1012
  %1043 = add i64 %1009, 18
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1046 = add i64 %1007, -88
  %1047 = add i64 %1009, 23
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  store i64 %1045, i64* %1048, align 8
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -80
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, 5
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1055 = add i64 %1049, -24
  %1056 = add i64 %1051, 9
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i64*
  %1058 = load i64, i64* %1057, align 8
  store i64 %1058, i64* %RCX.i1178, align 8
  %1059 = add i64 %1049, -32
  %1060 = add i64 %1051, 13
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = sext i32 %1062 to i64
  store i64 %1063, i64* %RDX.i1221, align 8
  %1064 = shl nsw i64 %1063, 3
  %1065 = add i64 %1064, %1058
  %1066 = add i64 %1051, 18
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i64*
  store i64 %1054, i64* %1067, align 8
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -88
  %1070 = load i64, i64* %3, align 8
  %1071 = add i64 %1070, 5
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1069 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1074 = add i64 %1068, -24
  %1075 = add i64 %1070, 9
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i64*
  %1077 = load i64, i64* %1076, align 8
  store i64 %1077, i64* %RCX.i1178, align 8
  %1078 = add i64 %1068, -32
  %1079 = add i64 %1070, 12
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = add i32 %1081, 1
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RAX.i1207, align 8
  %1084 = icmp eq i32 %1081, -1
  %1085 = icmp eq i32 %1082, 0
  %1086 = or i1 %1084, %1085
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %51, align 1
  %1088 = and i32 %1082, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %52, align 1
  %1093 = xor i32 %1081, %1082
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %53, align 1
  %1097 = zext i1 %1085 to i8
  store i8 %1097, i8* %54, align 1
  %1098 = lshr i32 %1082, 31
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* %55, align 1
  %1100 = lshr i32 %1081, 31
  %1101 = xor i32 %1098, %1100
  %1102 = add nuw nsw i32 %1101, %1098
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %56, align 1
  %1105 = sext i32 %1082 to i64
  store i64 %1105, i64* %RDX.i1221, align 8
  %1106 = shl nsw i64 %1105, 3
  %1107 = add i64 %1106, %1077
  %1108 = add i64 %1070, 23
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i64*
  store i64 %1073, i64* %1109, align 8
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -64
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, 5
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1116 = add i64 %1110, -24
  %1117 = add i64 %1112, 9
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RCX.i1178, align 8
  %1120 = add i64 %1110, -40
  %1121 = add i64 %1112, 13
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RDX.i1221, align 8
  %1125 = shl nsw i64 %1124, 3
  %1126 = add i64 %1125, %1119
  %1127 = add i64 %1112, 18
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  store i64 %1115, i64* %1128, align 8
  %1129 = load i64, i64* %RBP.i, align 8
  %1130 = add i64 %1129, -72
  %1131 = load i64, i64* %3, align 8
  %1132 = add i64 %1131, 5
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1130 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1135 = add i64 %1129, -24
  %1136 = add i64 %1131, 9
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  store i64 %1138, i64* %RCX.i1178, align 8
  %1139 = add i64 %1129, -40
  %1140 = add i64 %1131, 12
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = add i32 %1142, 1
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i1207, align 8
  %1145 = icmp eq i32 %1142, -1
  %1146 = icmp eq i32 %1143, 0
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %51, align 1
  %1149 = and i32 %1143, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %52, align 1
  %1154 = xor i32 %1142, %1143
  %1155 = lshr i32 %1154, 4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %53, align 1
  %1158 = zext i1 %1146 to i8
  store i8 %1158, i8* %54, align 1
  %1159 = lshr i32 %1143, 31
  %1160 = trunc i32 %1159 to i8
  store i8 %1160, i8* %55, align 1
  %1161 = lshr i32 %1142, 31
  %1162 = xor i32 %1159, %1161
  %1163 = add nuw nsw i32 %1162, %1159
  %1164 = icmp eq i32 %1163, 2
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %56, align 1
  %1166 = sext i32 %1143 to i64
  store i64 %1166, i64* %RDX.i1221, align 8
  %1167 = shl nsw i64 %1166, 3
  %1168 = add i64 %1167, %1138
  %1169 = add i64 %1131, 23
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  store i64 %1134, i64* %1170, align 8
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -52
  %1173 = load i64, i64* %3, align 8
  %1174 = add i64 %1173, 3
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1172 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RAX.i1207, align 8
  %1178 = add i64 %1171, -32
  %1179 = add i64 %1173, 6
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = add i32 %1181, %1176
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RAX.i1207, align 8
  %1184 = icmp ult i32 %1182, %1176
  %1185 = icmp ult i32 %1182, %1181
  %1186 = or i1 %1184, %1185
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %51, align 1
  %1188 = and i32 %1182, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %52, align 1
  %1193 = xor i32 %1181, %1176
  %1194 = xor i32 %1193, %1182
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %53, align 1
  %1198 = icmp eq i32 %1182, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %54, align 1
  %1200 = lshr i32 %1182, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %55, align 1
  %1202 = lshr i32 %1176, 31
  %1203 = lshr i32 %1181, 31
  %1204 = xor i32 %1200, %1202
  %1205 = xor i32 %1200, %1203
  %1206 = add nuw nsw i32 %1204, %1205
  %1207 = icmp eq i32 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %56, align 1
  %1209 = add i64 %1173, 9
  store i64 %1209, i64* %3, align 8
  store i32 %1182, i32* %1180, align 4
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -52
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, 3
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RAX.i1207, align 8
  %1217 = add i64 %1210, -40
  %1218 = add i64 %1212, 6
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sub i32 %1220, %1215
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RSI.i1224, align 8
  %1223 = icmp ult i32 %1220, %1215
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %51, align 1
  %1225 = and i32 %1221, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %52, align 1
  %1230 = xor i32 %1215, %1220
  %1231 = xor i32 %1230, %1221
  %1232 = lshr i32 %1231, 4
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %53, align 1
  %1235 = icmp eq i32 %1221, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %54, align 1
  %1237 = lshr i32 %1221, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %55, align 1
  %1239 = lshr i32 %1220, 31
  %1240 = lshr i32 %1215, 31
  %1241 = xor i32 %1240, %1239
  %1242 = xor i32 %1237, %1239
  %1243 = add nuw nsw i32 %1242, %1241
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %56, align 1
  %1246 = add i64 %1212, 11
  store i64 %1246, i64* %3, align 8
  store i32 %1221, i32* %1219, align 4
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -24
  %1249 = load i64, i64* %3, align 8
  %1250 = add i64 %1249, 4
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1248 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %RCX.i1178, align 8
  %1253 = add i64 %1247, -32
  %1254 = add i64 %1249, 8
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = sext i32 %1256 to i64
  store i64 %1257, i64* %RDX.i1221, align 8
  %1258 = shl nsw i64 %1257, 3
  %1259 = add i64 %1258, %1252
  %1260 = add i64 %1249, 13
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1263 = add i64 %1247, -64
  %1264 = add i64 %1249, 18
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i64*
  store i64 %1262, i64* %1265, align 8
  %1266 = load i64, i64* %RBP.i, align 8
  %1267 = add i64 %1266, -24
  %1268 = load i64, i64* %3, align 8
  %1269 = add i64 %1268, 4
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1267 to i64*
  %1271 = load i64, i64* %1270, align 8
  store i64 %1271, i64* %RCX.i1178, align 8
  %1272 = add i64 %1266, -32
  %1273 = add i64 %1268, 7
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = add i32 %1275, 1
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX.i1207, align 8
  %1278 = icmp eq i32 %1275, -1
  %1279 = icmp eq i32 %1276, 0
  %1280 = or i1 %1278, %1279
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %51, align 1
  %1282 = and i32 %1276, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %52, align 1
  %1287 = xor i32 %1275, %1276
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %53, align 1
  %1291 = zext i1 %1279 to i8
  store i8 %1291, i8* %54, align 1
  %1292 = lshr i32 %1276, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %55, align 1
  %1294 = lshr i32 %1275, 31
  %1295 = xor i32 %1292, %1294
  %1296 = add nuw nsw i32 %1295, %1292
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %56, align 1
  %1299 = sext i32 %1276 to i64
  store i64 %1299, i64* %RDX.i1221, align 8
  %1300 = shl nsw i64 %1299, 3
  %1301 = add i64 %1300, %1271
  %1302 = add i64 %1268, 18
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i64*
  %1304 = load i64, i64* %1303, align 8
  store i64 %1304, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1305 = add i64 %1266, -72
  %1306 = add i64 %1268, 23
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i64*
  store i64 %1304, i64* %1307, align 8
  %1308 = load i64, i64* %RBP.i, align 8
  %1309 = add i64 %1308, -24
  %1310 = load i64, i64* %3, align 8
  %1311 = add i64 %1310, 4
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1309 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %RCX.i1178, align 8
  %1314 = add i64 %1308, -40
  %1315 = add i64 %1310, 8
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = sext i32 %1317 to i64
  store i64 %1318, i64* %RDX.i1221, align 8
  %1319 = shl nsw i64 %1318, 3
  %1320 = add i64 %1319, %1313
  %1321 = add i64 %1310, 13
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1324 = add i64 %1308, -80
  %1325 = add i64 %1310, 18
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  store i64 %1323, i64* %1326, align 8
  %1327 = load i64, i64* %RBP.i, align 8
  %1328 = add i64 %1327, -24
  %1329 = load i64, i64* %3, align 8
  %1330 = add i64 %1329, 4
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1328 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RCX.i1178, align 8
  %1333 = add i64 %1327, -40
  %1334 = add i64 %1329, 7
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = add i32 %1336, 1
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RAX.i1207, align 8
  %1339 = icmp eq i32 %1336, -1
  %1340 = icmp eq i32 %1337, 0
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %51, align 1
  %1343 = and i32 %1337, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %52, align 1
  %1348 = xor i32 %1336, %1337
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %53, align 1
  %1352 = zext i1 %1340 to i8
  store i8 %1352, i8* %54, align 1
  %1353 = lshr i32 %1337, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %55, align 1
  %1355 = lshr i32 %1336, 31
  %1356 = xor i32 %1353, %1355
  %1357 = add nuw nsw i32 %1356, %1353
  %1358 = icmp eq i32 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %56, align 1
  %1360 = sext i32 %1337 to i64
  store i64 %1360, i64* %RDX.i1221, align 8
  %1361 = shl nsw i64 %1360, 3
  %1362 = add i64 %1361, %1332
  %1363 = add i64 %1329, 18
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i64*
  %1365 = load i64, i64* %1364, align 8
  store i64 %1365, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1366 = add i64 %1327, -88
  %1367 = add i64 %1329, 23
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  store i64 %1365, i64* %1368, align 8
  %1369 = load i64, i64* %RBP.i, align 8
  %1370 = add i64 %1369, -80
  %1371 = load i64, i64* %3, align 8
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1370 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1375 = add i64 %1369, -24
  %1376 = add i64 %1371, 9
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i64*
  %1378 = load i64, i64* %1377, align 8
  store i64 %1378, i64* %RCX.i1178, align 8
  %1379 = add i64 %1369, -32
  %1380 = add i64 %1371, 13
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = sext i32 %1382 to i64
  store i64 %1383, i64* %RDX.i1221, align 8
  %1384 = shl nsw i64 %1383, 3
  %1385 = add i64 %1384, %1378
  %1386 = add i64 %1371, 18
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  store i64 %1374, i64* %1387, align 8
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -88
  %1390 = load i64, i64* %3, align 8
  %1391 = add i64 %1390, 5
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1389 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1394 = add i64 %1388, -24
  %1395 = add i64 %1390, 9
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RCX.i1178, align 8
  %1398 = add i64 %1388, -32
  %1399 = add i64 %1390, 12
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, 1
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RAX.i1207, align 8
  %1404 = icmp eq i32 %1401, -1
  %1405 = icmp eq i32 %1402, 0
  %1406 = or i1 %1404, %1405
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %51, align 1
  %1408 = and i32 %1402, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %52, align 1
  %1413 = xor i32 %1401, %1402
  %1414 = lshr i32 %1413, 4
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  store i8 %1416, i8* %53, align 1
  %1417 = zext i1 %1405 to i8
  store i8 %1417, i8* %54, align 1
  %1418 = lshr i32 %1402, 31
  %1419 = trunc i32 %1418 to i8
  store i8 %1419, i8* %55, align 1
  %1420 = lshr i32 %1401, 31
  %1421 = xor i32 %1418, %1420
  %1422 = add nuw nsw i32 %1421, %1418
  %1423 = icmp eq i32 %1422, 2
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %56, align 1
  %1425 = sext i32 %1402 to i64
  store i64 %1425, i64* %RDX.i1221, align 8
  %1426 = shl nsw i64 %1425, 3
  %1427 = add i64 %1426, %1397
  %1428 = add i64 %1390, 23
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  store i64 %1393, i64* %1429, align 8
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -64
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1431 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1436 = add i64 %1430, -24
  %1437 = add i64 %1432, 9
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i64*
  %1439 = load i64, i64* %1438, align 8
  store i64 %1439, i64* %RCX.i1178, align 8
  %1440 = add i64 %1430, -40
  %1441 = add i64 %1432, 13
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = sext i32 %1443 to i64
  store i64 %1444, i64* %RDX.i1221, align 8
  %1445 = shl nsw i64 %1444, 3
  %1446 = add i64 %1445, %1439
  %1447 = add i64 %1432, 18
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i64*
  store i64 %1435, i64* %1448, align 8
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -72
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1450 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1455 = add i64 %1449, -24
  %1456 = add i64 %1451, 9
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %RCX.i1178, align 8
  %1459 = add i64 %1449, -40
  %1460 = add i64 %1451, 12
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = add i32 %1462, 1
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RAX.i1207, align 8
  %1465 = icmp eq i32 %1462, -1
  %1466 = icmp eq i32 %1463, 0
  %1467 = or i1 %1465, %1466
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %51, align 1
  %1469 = and i32 %1463, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %52, align 1
  %1474 = xor i32 %1462, %1463
  %1475 = lshr i32 %1474, 4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  store i8 %1477, i8* %53, align 1
  %1478 = zext i1 %1466 to i8
  store i8 %1478, i8* %54, align 1
  %1479 = lshr i32 %1463, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %55, align 1
  %1481 = lshr i32 %1462, 31
  %1482 = xor i32 %1479, %1481
  %1483 = add nuw nsw i32 %1482, %1479
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %56, align 1
  %1486 = sext i32 %1463 to i64
  store i64 %1486, i64* %RDX.i1221, align 8
  %1487 = shl nsw i64 %1486, 3
  %1488 = add i64 %1487, %1458
  %1489 = add i64 %1451, 23
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i64*
  store i64 %1454, i64* %1490, align 8
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -52
  %1493 = load i64, i64* %3, align 8
  %1494 = add i64 %1493, 3
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1492 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i1207, align 8
  %1498 = add i64 %1491, -32
  %1499 = add i64 %1493, 6
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = add i32 %1501, %1496
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i1207, align 8
  %1504 = icmp ult i32 %1502, %1496
  %1505 = icmp ult i32 %1502, %1501
  %1506 = or i1 %1504, %1505
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %51, align 1
  %1508 = and i32 %1502, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %52, align 1
  %1513 = xor i32 %1501, %1496
  %1514 = xor i32 %1513, %1502
  %1515 = lshr i32 %1514, 4
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  store i8 %1517, i8* %53, align 1
  %1518 = icmp eq i32 %1502, 0
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %54, align 1
  %1520 = lshr i32 %1502, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %55, align 1
  %1522 = lshr i32 %1496, 31
  %1523 = lshr i32 %1501, 31
  %1524 = xor i32 %1520, %1522
  %1525 = xor i32 %1520, %1523
  %1526 = add nuw nsw i32 %1524, %1525
  %1527 = icmp eq i32 %1526, 2
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %56, align 1
  %1529 = add i64 %1493, 9
  store i64 %1529, i64* %3, align 8
  store i32 %1502, i32* %1500, align 4
  %1530 = load i64, i64* %RBP.i, align 8
  %1531 = add i64 %1530, -52
  %1532 = load i64, i64* %3, align 8
  %1533 = add i64 %1532, 3
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1531 to i32*
  %1535 = load i32, i32* %1534, align 4
  %1536 = shl i32 %1535, 1
  %1537 = icmp slt i32 %1535, 0
  %1538 = icmp slt i32 %1536, 0
  %1539 = xor i1 %1537, %1538
  %1540 = zext i32 %1536 to i64
  store i64 %1540, i64* %RAX.i1207, align 8
  %.lobit16 = lshr i32 %1535, 31
  %1541 = trunc i32 %.lobit16 to i8
  store i8 %1541, i8* %51, align 1
  %1542 = and i32 %1536, 254
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1547 = icmp eq i32 %1536, 0
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %54, align 1
  %1549 = lshr i32 %1535, 30
  %1550 = and i32 %1549, 1
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %55, align 1
  %1552 = zext i1 %1539 to i8
  store i8 %1552, i8* %56, align 1
  %1553 = add i64 %1530, -40
  %1554 = add i64 %1532, 9
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = add i32 %1556, %1536
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RAX.i1207, align 8
  %1559 = icmp ult i32 %1557, %1536
  %1560 = icmp ult i32 %1557, %1556
  %1561 = or i1 %1559, %1560
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %51, align 1
  %1563 = and i32 %1557, 255
  %1564 = tail call i32 @llvm.ctpop.i32(i32 %1563)
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = xor i8 %1566, 1
  store i8 %1567, i8* %52, align 1
  %1568 = xor i32 %1556, %1536
  %1569 = xor i32 %1568, %1557
  %1570 = lshr i32 %1569, 4
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  store i8 %1572, i8* %53, align 1
  %1573 = icmp eq i32 %1557, 0
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %54, align 1
  %1575 = lshr i32 %1557, 31
  %1576 = trunc i32 %1575 to i8
  store i8 %1576, i8* %55, align 1
  %1577 = lshr i32 %1556, 31
  %1578 = xor i32 %1575, %1550
  %1579 = xor i32 %1575, %1577
  %1580 = add nuw nsw i32 %1578, %1579
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %56, align 1
  %1583 = add i64 %1532, 12
  store i64 %1583, i64* %3, align 8
  store i32 %1557, i32* %1555, align 4
  %1584 = load i64, i64* %RBP.i, align 8
  %1585 = add i64 %1584, -24
  %1586 = load i64, i64* %3, align 8
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1585 to i64*
  %1589 = load i64, i64* %1588, align 8
  store i64 %1589, i64* %RCX.i1178, align 8
  %1590 = add i64 %1584, -32
  %1591 = add i64 %1586, 8
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RDX.i1221, align 8
  %1595 = shl nsw i64 %1594, 3
  %1596 = add i64 %1595, %1589
  %1597 = add i64 %1586, 13
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  %1599 = load i64, i64* %1598, align 8
  store i64 %1599, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1600 = add i64 %1584, -64
  %1601 = add i64 %1586, 18
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  store i64 %1599, i64* %1602, align 8
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -24
  %1605 = load i64, i64* %3, align 8
  %1606 = add i64 %1605, 4
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1604 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RCX.i1178, align 8
  %1609 = add i64 %1603, -32
  %1610 = add i64 %1605, 7
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = add i32 %1612, 1
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RAX.i1207, align 8
  %1615 = icmp eq i32 %1612, -1
  %1616 = icmp eq i32 %1613, 0
  %1617 = or i1 %1615, %1616
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %51, align 1
  %1619 = and i32 %1613, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %52, align 1
  %1624 = xor i32 %1612, %1613
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  store i8 %1627, i8* %53, align 1
  %1628 = zext i1 %1616 to i8
  store i8 %1628, i8* %54, align 1
  %1629 = lshr i32 %1613, 31
  %1630 = trunc i32 %1629 to i8
  store i8 %1630, i8* %55, align 1
  %1631 = lshr i32 %1612, 31
  %1632 = xor i32 %1629, %1631
  %1633 = add nuw nsw i32 %1632, %1629
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %56, align 1
  %1636 = sext i32 %1613 to i64
  store i64 %1636, i64* %RDX.i1221, align 8
  %1637 = shl nsw i64 %1636, 3
  %1638 = add i64 %1637, %1608
  %1639 = add i64 %1605, 18
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1642 = add i64 %1603, -72
  %1643 = add i64 %1605, 23
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i64*
  store i64 %1641, i64* %1644, align 8
  %1645 = load i64, i64* %RBP.i, align 8
  %1646 = add i64 %1645, -24
  %1647 = load i64, i64* %3, align 8
  %1648 = add i64 %1647, 4
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1646 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %RCX.i1178, align 8
  %1651 = add i64 %1645, -40
  %1652 = add i64 %1647, 8
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RDX.i1221, align 8
  %1656 = shl nsw i64 %1655, 3
  %1657 = add i64 %1656, %1650
  %1658 = add i64 %1647, 13
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1661 = add i64 %1645, -80
  %1662 = add i64 %1647, 18
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i64*
  store i64 %1660, i64* %1663, align 8
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -24
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 4
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1665 to i64*
  %1669 = load i64, i64* %1668, align 8
  store i64 %1669, i64* %RCX.i1178, align 8
  %1670 = add i64 %1664, -40
  %1671 = add i64 %1666, 7
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = add i32 %1673, 1
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RAX.i1207, align 8
  %1676 = icmp eq i32 %1673, -1
  %1677 = icmp eq i32 %1674, 0
  %1678 = or i1 %1676, %1677
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %51, align 1
  %1680 = and i32 %1674, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %52, align 1
  %1685 = xor i32 %1673, %1674
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  store i8 %1688, i8* %53, align 1
  %1689 = zext i1 %1677 to i8
  store i8 %1689, i8* %54, align 1
  %1690 = lshr i32 %1674, 31
  %1691 = trunc i32 %1690 to i8
  store i8 %1691, i8* %55, align 1
  %1692 = lshr i32 %1673, 31
  %1693 = xor i32 %1690, %1692
  %1694 = add nuw nsw i32 %1693, %1690
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %56, align 1
  %1697 = sext i32 %1674 to i64
  store i64 %1697, i64* %RDX.i1221, align 8
  %1698 = shl nsw i64 %1697, 3
  %1699 = add i64 %1698, %1669
  %1700 = add i64 %1666, 18
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1703 = add i64 %1664, -88
  %1704 = add i64 %1666, 23
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i64*
  store i64 %1702, i64* %1705, align 8
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -80
  %1708 = load i64, i64* %3, align 8
  %1709 = add i64 %1708, 5
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1707 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1712 = add i64 %1706, -24
  %1713 = add i64 %1708, 9
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i64*
  %1715 = load i64, i64* %1714, align 8
  store i64 %1715, i64* %RCX.i1178, align 8
  %1716 = add i64 %1706, -32
  %1717 = add i64 %1708, 13
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i32*
  %1719 = load i32, i32* %1718, align 4
  %1720 = sext i32 %1719 to i64
  store i64 %1720, i64* %RDX.i1221, align 8
  %1721 = shl nsw i64 %1720, 3
  %1722 = add i64 %1721, %1715
  %1723 = add i64 %1708, 18
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i64*
  store i64 %1711, i64* %1724, align 8
  %1725 = load i64, i64* %RBP.i, align 8
  %1726 = add i64 %1725, -88
  %1727 = load i64, i64* %3, align 8
  %1728 = add i64 %1727, 5
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1726 to i64*
  %1730 = load i64, i64* %1729, align 8
  store i64 %1730, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1731 = add i64 %1725, -24
  %1732 = add i64 %1727, 9
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RCX.i1178, align 8
  %1735 = add i64 %1725, -32
  %1736 = add i64 %1727, 12
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = add i32 %1738, 1
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX.i1207, align 8
  %1741 = icmp eq i32 %1738, -1
  %1742 = icmp eq i32 %1739, 0
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %51, align 1
  %1745 = and i32 %1739, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %52, align 1
  %1750 = xor i32 %1738, %1739
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %53, align 1
  %1754 = zext i1 %1742 to i8
  store i8 %1754, i8* %54, align 1
  %1755 = lshr i32 %1739, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %55, align 1
  %1757 = lshr i32 %1738, 31
  %1758 = xor i32 %1755, %1757
  %1759 = add nuw nsw i32 %1758, %1755
  %1760 = icmp eq i32 %1759, 2
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %56, align 1
  %1762 = sext i32 %1739 to i64
  store i64 %1762, i64* %RDX.i1221, align 8
  %1763 = shl nsw i64 %1762, 3
  %1764 = add i64 %1763, %1734
  %1765 = add i64 %1727, 23
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i64*
  store i64 %1730, i64* %1766, align 8
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -64
  %1769 = load i64, i64* %3, align 8
  %1770 = add i64 %1769, 5
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1768 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1773 = add i64 %1767, -24
  %1774 = add i64 %1769, 9
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i64*
  %1776 = load i64, i64* %1775, align 8
  store i64 %1776, i64* %RCX.i1178, align 8
  %1777 = add i64 %1767, -40
  %1778 = add i64 %1769, 13
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = sext i32 %1780 to i64
  store i64 %1781, i64* %RDX.i1221, align 8
  %1782 = shl nsw i64 %1781, 3
  %1783 = add i64 %1782, %1776
  %1784 = add i64 %1769, 18
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i64*
  store i64 %1772, i64* %1785, align 8
  %1786 = load i64, i64* %RBP.i, align 8
  %1787 = add i64 %1786, -72
  %1788 = load i64, i64* %3, align 8
  %1789 = add i64 %1788, 5
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1787 to i64*
  %1791 = load i64, i64* %1790, align 8
  store i64 %1791, i64* %605, align 1
  store double 0.000000e+00, double* %383, align 1
  %1792 = add i64 %1786, -24
  %1793 = add i64 %1788, 9
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  store i64 %1795, i64* %RCX.i1178, align 8
  %1796 = add i64 %1786, -40
  %1797 = add i64 %1788, 12
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = add i32 %1799, 1
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RAX.i1207, align 8
  %1802 = icmp eq i32 %1799, -1
  %1803 = icmp eq i32 %1800, 0
  %1804 = or i1 %1802, %1803
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %51, align 1
  %1806 = and i32 %1800, 255
  %1807 = tail call i32 @llvm.ctpop.i32(i32 %1806)
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  %1810 = xor i8 %1809, 1
  store i8 %1810, i8* %52, align 1
  %1811 = xor i32 %1799, %1800
  %1812 = lshr i32 %1811, 4
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  store i8 %1814, i8* %53, align 1
  %1815 = zext i1 %1803 to i8
  store i8 %1815, i8* %54, align 1
  %1816 = lshr i32 %1800, 31
  %1817 = trunc i32 %1816 to i8
  store i8 %1817, i8* %55, align 1
  %1818 = lshr i32 %1799, 31
  %1819 = xor i32 %1816, %1818
  %1820 = add nuw nsw i32 %1819, %1816
  %1821 = icmp eq i32 %1820, 2
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %56, align 1
  %1823 = sext i32 %1800 to i64
  store i64 %1823, i64* %RDX.i1221, align 8
  %1824 = shl nsw i64 %1823, 3
  %1825 = add i64 %1824, %1795
  %1826 = add i64 %1788, 23
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i64*
  store i64 %1791, i64* %1827, align 8
  %1828 = load i64, i64* %RBP.i, align 8
  %1829 = add i64 %1828, -28
  %1830 = load i64, i64* %3, align 8
  %1831 = add i64 %1830, 3
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1829 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = add i32 %1833, 1
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RAX.i1207, align 8
  %1836 = icmp eq i32 %1833, -1
  %1837 = icmp eq i32 %1834, 0
  %1838 = or i1 %1836, %1837
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %51, align 1
  %1840 = and i32 %1834, 255
  %1841 = tail call i32 @llvm.ctpop.i32(i32 %1840)
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  store i8 %1844, i8* %52, align 1
  %1845 = xor i32 %1833, %1834
  %1846 = lshr i32 %1845, 4
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  store i8 %1848, i8* %53, align 1
  %1849 = zext i1 %1837 to i8
  store i8 %1849, i8* %54, align 1
  %1850 = lshr i32 %1834, 31
  %1851 = trunc i32 %1850 to i8
  store i8 %1851, i8* %55, align 1
  %1852 = lshr i32 %1833, 31
  %1853 = xor i32 %1850, %1852
  %1854 = add nuw nsw i32 %1853, %1850
  %1855 = icmp eq i32 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %56, align 1
  %1857 = add i64 %1830, 9
  store i64 %1857, i64* %3, align 8
  store i32 %1834, i32* %1832, align 4
  %1858 = load i64, i64* %3, align 8
  %1859 = add i64 %1858, -779
  store i64 %1859, i64* %3, align 8
  br label %block_.L_40127d

block_.L_40158d:                                  ; preds = %block_.L_40127d
  %1860 = load i32, i32* %434, align 4
  %1861 = shl i32 %1860, 1
  %1862 = icmp slt i32 %1860, 0
  %1863 = icmp slt i32 %1861, 0
  %1864 = xor i1 %1862, %1863
  %1865 = zext i32 %1861 to i64
  store i64 %1865, i64* %RAX.i1207, align 8
  %.lobit17 = lshr i32 %1860, 31
  %1866 = trunc i32 %.lobit17 to i8
  store i8 %1866, i8* %51, align 1
  %1867 = and i32 %1861, 254
  %1868 = tail call i32 @llvm.ctpop.i32(i32 %1867)
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = xor i8 %1870, 1
  store i8 %1871, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1872 = icmp eq i32 %1861, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %54, align 1
  %1874 = lshr i32 %1860, 30
  %1875 = and i32 %1874, 1
  %1876 = trunc i32 %1875 to i8
  store i8 %1876, i8* %55, align 1
  %1877 = zext i1 %1864 to i8
  store i8 %1877, i8* %56, align 1
  %1878 = add i64 %426, -52
  %1879 = add i64 %462, 9
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = add i32 %1881, %1861
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RAX.i1207, align 8
  %1884 = icmp ult i32 %1882, %1861
  %1885 = icmp ult i32 %1882, %1881
  %1886 = or i1 %1884, %1885
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %51, align 1
  %1888 = and i32 %1882, 255
  %1889 = tail call i32 @llvm.ctpop.i32(i32 %1888)
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  %1892 = xor i8 %1891, 1
  store i8 %1892, i8* %52, align 1
  %1893 = xor i32 %1881, %1861
  %1894 = xor i32 %1893, %1882
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %53, align 1
  %1898 = icmp eq i32 %1882, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %54, align 1
  %1900 = lshr i32 %1882, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %55, align 1
  %1902 = lshr i32 %1881, 31
  %1903 = xor i32 %1900, %1875
  %1904 = xor i32 %1900, %1902
  %1905 = add nuw nsw i32 %1903, %1904
  %1906 = icmp eq i32 %1905, 2
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %56, align 1
  %1908 = add i64 %426, -16
  %1909 = add i64 %462, 13
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i64*
  %1911 = load i64, i64* %1910, align 8
  store i64 %1911, i64* %RCX.i1178, align 8
  %1912 = add i64 %462, 17
  store i64 %1912, i64* %3, align 8
  %1913 = load i32, i32* %434, align 4
  %1914 = sext i32 %1913 to i64
  store i64 %1914, i64* %RDX.i1221, align 8
  %1915 = shl nsw i64 %1914, 2
  %1916 = add i64 %1915, %1911
  %1917 = add i64 %462, 20
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = add i32 %1919, %1882
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RAX.i1207, align 8
  %1922 = icmp ult i32 %1920, %1882
  %1923 = icmp ult i32 %1920, %1919
  %1924 = or i1 %1922, %1923
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %51, align 1
  %1926 = and i32 %1920, 255
  %1927 = tail call i32 @llvm.ctpop.i32(i32 %1926)
  %1928 = trunc i32 %1927 to i8
  %1929 = and i8 %1928, 1
  %1930 = xor i8 %1929, 1
  store i8 %1930, i8* %52, align 1
  %1931 = xor i32 %1919, %1882
  %1932 = xor i32 %1931, %1920
  %1933 = lshr i32 %1932, 4
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  store i8 %1935, i8* %53, align 1
  %1936 = icmp eq i32 %1920, 0
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %54, align 1
  %1938 = lshr i32 %1920, 31
  %1939 = trunc i32 %1938 to i8
  store i8 %1939, i8* %55, align 1
  %1940 = lshr i32 %1919, 31
  %1941 = xor i32 %1938, %1900
  %1942 = xor i32 %1938, %1940
  %1943 = add nuw nsw i32 %1941, %1942
  %1944 = icmp eq i32 %1943, 2
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %56, align 1
  %1946 = load i64, i64* %RBP.i, align 8
  %1947 = add i64 %1946, -32
  %1948 = add i64 %462, 23
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  store i32 %1920, i32* %1949, align 4
  %1950 = load i64, i64* %RBP.i, align 8
  %1951 = add i64 %1950, -32
  %1952 = load i64, i64* %3, align 8
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1951 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i1207, align 8
  %1957 = add i64 %1950, -52
  %1958 = add i64 %1952, 6
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = add i32 %1960, %1955
  %1962 = zext i32 %1961 to i64
  store i64 %1962, i64* %RAX.i1207, align 8
  %1963 = icmp ult i32 %1961, %1955
  %1964 = icmp ult i32 %1961, %1960
  %1965 = or i1 %1963, %1964
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %51, align 1
  %1967 = and i32 %1961, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %52, align 1
  %1972 = xor i32 %1960, %1955
  %1973 = xor i32 %1972, %1961
  %1974 = lshr i32 %1973, 4
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  store i8 %1976, i8* %53, align 1
  %1977 = icmp eq i32 %1961, 0
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %54, align 1
  %1979 = lshr i32 %1961, 31
  %1980 = trunc i32 %1979 to i8
  store i8 %1980, i8* %55, align 1
  %1981 = lshr i32 %1955, 31
  %1982 = lshr i32 %1960, 31
  %1983 = xor i32 %1979, %1981
  %1984 = xor i32 %1979, %1982
  %1985 = add nuw nsw i32 %1983, %1984
  %1986 = icmp eq i32 %1985, 2
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %56, align 1
  %1988 = add i64 %1950, -40
  %1989 = add i64 %1952, 9
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i32*
  store i32 %1961, i32* %1990, align 4
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -24
  %1993 = load i64, i64* %3, align 8
  %1994 = add i64 %1993, 4
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1992 to i64*
  %1996 = load i64, i64* %1995, align 8
  store i64 %1996, i64* %RCX.i1178, align 8
  %1997 = add i64 %1991, -32
  %1998 = add i64 %1993, 8
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = sext i32 %2000 to i64
  store i64 %2001, i64* %RDX.i1221, align 8
  %2002 = shl nsw i64 %2001, 3
  %2003 = add i64 %2002, %1996
  %2004 = add i64 %1993, 13
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i64*
  %2006 = load i64, i64* %2005, align 8
  %2007 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %381, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2006, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2008 = add i64 %1991, -64
  %2009 = add i64 %1993, 18
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i64*
  store i64 %2006, i64* %2010, align 8
  %2011 = load i64, i64* %RBP.i, align 8
  %2012 = add i64 %2011, -24
  %2013 = load i64, i64* %3, align 8
  %2014 = add i64 %2013, 4
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2012 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %RCX.i1178, align 8
  %2017 = add i64 %2011, -32
  %2018 = add i64 %2013, 7
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = add i32 %2020, 1
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RAX.i1207, align 8
  %2023 = icmp eq i32 %2020, -1
  %2024 = icmp eq i32 %2021, 0
  %2025 = or i1 %2023, %2024
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %51, align 1
  %2027 = and i32 %2021, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %52, align 1
  %2032 = xor i32 %2020, %2021
  %2033 = lshr i32 %2032, 4
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  store i8 %2035, i8* %53, align 1
  %2036 = zext i1 %2024 to i8
  store i8 %2036, i8* %54, align 1
  %2037 = lshr i32 %2021, 31
  %2038 = trunc i32 %2037 to i8
  store i8 %2038, i8* %55, align 1
  %2039 = lshr i32 %2020, 31
  %2040 = xor i32 %2037, %2039
  %2041 = add nuw nsw i32 %2040, %2037
  %2042 = icmp eq i32 %2041, 2
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %56, align 1
  %2044 = sext i32 %2021 to i64
  store i64 %2044, i64* %RDX.i1221, align 8
  %2045 = shl nsw i64 %2044, 3
  %2046 = add i64 %2045, %2016
  %2047 = add i64 %2013, 18
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i64*
  %2049 = load i64, i64* %2048, align 8
  store i64 %2049, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2050 = add i64 %2011, -72
  %2051 = add i64 %2013, 23
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i64*
  store i64 %2049, i64* %2052, align 8
  %2053 = load i64, i64* %RBP.i, align 8
  %2054 = add i64 %2053, -24
  %2055 = load i64, i64* %3, align 8
  %2056 = add i64 %2055, 4
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2054 to i64*
  %2058 = load i64, i64* %2057, align 8
  store i64 %2058, i64* %RCX.i1178, align 8
  %2059 = add i64 %2053, -40
  %2060 = add i64 %2055, 8
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  %2063 = sext i32 %2062 to i64
  store i64 %2063, i64* %RDX.i1221, align 8
  %2064 = shl nsw i64 %2063, 3
  %2065 = add i64 %2064, %2058
  %2066 = add i64 %2055, 13
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i64*
  %2068 = load i64, i64* %2067, align 8
  store i64 %2068, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2069 = add i64 %2053, -80
  %2070 = add i64 %2055, 18
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i64*
  store i64 %2068, i64* %2071, align 8
  %2072 = load i64, i64* %RBP.i, align 8
  %2073 = add i64 %2072, -24
  %2074 = load i64, i64* %3, align 8
  %2075 = add i64 %2074, 4
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2073 to i64*
  %2077 = load i64, i64* %2076, align 8
  store i64 %2077, i64* %RCX.i1178, align 8
  %2078 = add i64 %2072, -40
  %2079 = add i64 %2074, 7
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = add i32 %2081, 1
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RAX.i1207, align 8
  %2084 = icmp eq i32 %2081, -1
  %2085 = icmp eq i32 %2082, 0
  %2086 = or i1 %2084, %2085
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %51, align 1
  %2088 = and i32 %2082, 255
  %2089 = tail call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %52, align 1
  %2093 = xor i32 %2081, %2082
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %53, align 1
  %2097 = zext i1 %2085 to i8
  store i8 %2097, i8* %54, align 1
  %2098 = lshr i32 %2082, 31
  %2099 = trunc i32 %2098 to i8
  store i8 %2099, i8* %55, align 1
  %2100 = lshr i32 %2081, 31
  %2101 = xor i32 %2098, %2100
  %2102 = add nuw nsw i32 %2101, %2098
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %56, align 1
  %2105 = sext i32 %2082 to i64
  store i64 %2105, i64* %RDX.i1221, align 8
  %2106 = shl nsw i64 %2105, 3
  %2107 = add i64 %2106, %2077
  %2108 = add i64 %2074, 18
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i64*
  %2110 = load i64, i64* %2109, align 8
  store i64 %2110, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2111 = add i64 %2072, -88
  %2112 = add i64 %2074, 23
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i64*
  store i64 %2110, i64* %2113, align 8
  %2114 = load i64, i64* %RBP.i, align 8
  %2115 = add i64 %2114, -80
  %2116 = load i64, i64* %3, align 8
  %2117 = add i64 %2116, 5
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2115 to i64*
  %2119 = load i64, i64* %2118, align 8
  store i64 %2119, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2120 = add i64 %2114, -24
  %2121 = add i64 %2116, 9
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i64*
  %2123 = load i64, i64* %2122, align 8
  store i64 %2123, i64* %RCX.i1178, align 8
  %2124 = add i64 %2114, -32
  %2125 = add i64 %2116, 13
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  %2127 = load i32, i32* %2126, align 4
  %2128 = sext i32 %2127 to i64
  store i64 %2128, i64* %RDX.i1221, align 8
  %2129 = shl nsw i64 %2128, 3
  %2130 = add i64 %2129, %2123
  %2131 = add i64 %2116, 18
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i64*
  store i64 %2119, i64* %2132, align 8
  %2133 = load i64, i64* %RBP.i, align 8
  %2134 = add i64 %2133, -88
  %2135 = load i64, i64* %3, align 8
  %2136 = add i64 %2135, 5
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2134 to i64*
  %2138 = load i64, i64* %2137, align 8
  store i64 %2138, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2139 = add i64 %2133, -24
  %2140 = add i64 %2135, 9
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i64*
  %2142 = load i64, i64* %2141, align 8
  store i64 %2142, i64* %RCX.i1178, align 8
  %2143 = add i64 %2133, -32
  %2144 = add i64 %2135, 12
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  %2146 = load i32, i32* %2145, align 4
  %2147 = add i32 %2146, 1
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RAX.i1207, align 8
  %2149 = icmp eq i32 %2146, -1
  %2150 = icmp eq i32 %2147, 0
  %2151 = or i1 %2149, %2150
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %51, align 1
  %2153 = and i32 %2147, 255
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %52, align 1
  %2158 = xor i32 %2146, %2147
  %2159 = lshr i32 %2158, 4
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  store i8 %2161, i8* %53, align 1
  %2162 = zext i1 %2150 to i8
  store i8 %2162, i8* %54, align 1
  %2163 = lshr i32 %2147, 31
  %2164 = trunc i32 %2163 to i8
  store i8 %2164, i8* %55, align 1
  %2165 = lshr i32 %2146, 31
  %2166 = xor i32 %2163, %2165
  %2167 = add nuw nsw i32 %2166, %2163
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %56, align 1
  %2170 = sext i32 %2147 to i64
  store i64 %2170, i64* %RDX.i1221, align 8
  %2171 = shl nsw i64 %2170, 3
  %2172 = add i64 %2171, %2142
  %2173 = add i64 %2135, 23
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i64*
  store i64 %2138, i64* %2174, align 8
  %2175 = load i64, i64* %RBP.i, align 8
  %2176 = add i64 %2175, -64
  %2177 = load i64, i64* %3, align 8
  %2178 = add i64 %2177, 5
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2176 to i64*
  %2180 = load i64, i64* %2179, align 8
  store i64 %2180, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2181 = add i64 %2175, -24
  %2182 = add i64 %2177, 9
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183, align 8
  store i64 %2184, i64* %RCX.i1178, align 8
  %2185 = add i64 %2175, -40
  %2186 = add i64 %2177, 13
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i32*
  %2188 = load i32, i32* %2187, align 4
  %2189 = sext i32 %2188 to i64
  store i64 %2189, i64* %RDX.i1221, align 8
  %2190 = shl nsw i64 %2189, 3
  %2191 = add i64 %2190, %2184
  %2192 = add i64 %2177, 18
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i64*
  store i64 %2180, i64* %2193, align 8
  %2194 = load i64, i64* %RBP.i, align 8
  %2195 = add i64 %2194, -72
  %2196 = load i64, i64* %3, align 8
  %2197 = add i64 %2196, 5
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2195 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %2007, align 1
  store double 0.000000e+00, double* %383, align 1
  %2200 = add i64 %2194, -24
  %2201 = add i64 %2196, 9
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i64*
  %2203 = load i64, i64* %2202, align 8
  store i64 %2203, i64* %RCX.i1178, align 8
  %2204 = add i64 %2194, -40
  %2205 = add i64 %2196, 12
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to i32*
  %2207 = load i32, i32* %2206, align 4
  %2208 = add i32 %2207, 1
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1207, align 8
  %2210 = icmp eq i32 %2207, -1
  %2211 = icmp eq i32 %2208, 0
  %2212 = or i1 %2210, %2211
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %51, align 1
  %2214 = and i32 %2208, 255
  %2215 = tail call i32 @llvm.ctpop.i32(i32 %2214)
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  store i8 %2218, i8* %52, align 1
  %2219 = xor i32 %2207, %2208
  %2220 = lshr i32 %2219, 4
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  store i8 %2222, i8* %53, align 1
  %2223 = zext i1 %2211 to i8
  store i8 %2223, i8* %54, align 1
  %2224 = lshr i32 %2208, 31
  %2225 = trunc i32 %2224 to i8
  store i8 %2225, i8* %55, align 1
  %2226 = lshr i32 %2207, 31
  %2227 = xor i32 %2224, %2226
  %2228 = add nuw nsw i32 %2227, %2224
  %2229 = icmp eq i32 %2228, 2
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %56, align 1
  %2231 = sext i32 %2208 to i64
  store i64 %2231, i64* %RDX.i1221, align 8
  %2232 = shl nsw i64 %2231, 3
  %2233 = add i64 %2232, %2203
  %2234 = add i64 %2196, 23
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i64*
  store i64 %2199, i64* %2235, align 8
  %2236 = load i64, i64* %RBP.i, align 8
  %2237 = add i64 %2236, -36
  %2238 = load i64, i64* %3, align 8
  %2239 = add i64 %2238, 3
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2237 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = add i32 %2241, 1
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RAX.i1207, align 8
  %2244 = icmp eq i32 %2241, -1
  %2245 = icmp eq i32 %2242, 0
  %2246 = or i1 %2244, %2245
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %51, align 1
  %2248 = and i32 %2242, 255
  %2249 = tail call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  store i8 %2252, i8* %52, align 1
  %2253 = xor i32 %2241, %2242
  %2254 = lshr i32 %2253, 4
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %53, align 1
  %2257 = zext i1 %2245 to i8
  store i8 %2257, i8* %54, align 1
  %2258 = lshr i32 %2242, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %55, align 1
  %2260 = lshr i32 %2241, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2258
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %56, align 1
  %2265 = add i64 %2238, 9
  store i64 %2265, i64* %3, align 8
  store i32 %2242, i32* %2240, align 4
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, -1008
  store i64 %2267, i64* %3, align 8
  br label %block_.L_40126a

block_.L_40165f:                                  ; preds = %block_.L_40126a
  %2268 = add i64 %421, 467
  br label %block_.L_401832

block_.L_401664:                                  ; preds = %block_.L_40124b
  store i32 1, i32* %380, align 4
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2271 = bitcast i64* %2270 to double*
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_40166b

block_.L_40166b:                                  ; preds = %block_.L_40181a, %block_.L_401664
  %2272 = phi i64 [ %3103, %block_.L_40181a ], [ %.pre4, %block_.L_401664 ]
  %2273 = load i64, i64* %RBP.i, align 8
  %2274 = add i64 %2273, -36
  %2275 = add i64 %2272, 3
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = zext i32 %2277 to i64
  store i64 %2278, i64* %RAX.i1207, align 8
  %2279 = add i64 %2273, -48
  %2280 = add i64 %2272, 6
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i32*
  %2282 = load i32, i32* %2281, align 4
  %2283 = sub i32 %2277, %2282
  %2284 = icmp ult i32 %2277, %2282
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %51, align 1
  %2286 = and i32 %2283, 255
  %2287 = tail call i32 @llvm.ctpop.i32(i32 %2286)
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = xor i8 %2289, 1
  store i8 %2290, i8* %52, align 1
  %2291 = xor i32 %2282, %2277
  %2292 = xor i32 %2291, %2283
  %2293 = lshr i32 %2292, 4
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  store i8 %2295, i8* %53, align 1
  %2296 = icmp eq i32 %2283, 0
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %54, align 1
  %2298 = lshr i32 %2283, 31
  %2299 = trunc i32 %2298 to i8
  store i8 %2299, i8* %55, align 1
  %2300 = lshr i32 %2277, 31
  %2301 = lshr i32 %2282, 31
  %2302 = xor i32 %2301, %2300
  %2303 = xor i32 %2298, %2300
  %2304 = add nuw nsw i32 %2303, %2302
  %2305 = icmp eq i32 %2304, 2
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %56, align 1
  %2307 = icmp ne i8 %2299, 0
  %2308 = xor i1 %2307, %2305
  %.v18 = select i1 %2308, i64 12, i64 450
  %2309 = add i64 %2272, %.v18
  store i64 %2309, i64* %3, align 8
  br i1 %2308, label %block_401677, label %block_.L_40182d

block_401677:                                     ; preds = %block_.L_40166b
  %2310 = add i64 %2273, -28
  %2311 = add i64 %2309, 7
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  store i32 0, i32* %2312, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_40167e

block_.L_40167e:                                  ; preds = %block_40168a, %block_401677
  %2313 = phi i64 [ %3075, %block_40168a ], [ %.pre5, %block_401677 ]
  %2314 = load i64, i64* %RBP.i, align 8
  %2315 = add i64 %2314, -28
  %2316 = add i64 %2313, 3
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i32*
  %2318 = load i32, i32* %2317, align 4
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RAX.i1207, align 8
  %2320 = add i64 %2314, -36
  %2321 = add i64 %2313, 6
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = sub i32 %2318, %2323
  %2325 = icmp ult i32 %2318, %2323
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %51, align 1
  %2327 = and i32 %2324, 255
  %2328 = tail call i32 @llvm.ctpop.i32(i32 %2327)
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  store i8 %2331, i8* %52, align 1
  %2332 = xor i32 %2323, %2318
  %2333 = xor i32 %2332, %2324
  %2334 = lshr i32 %2333, 4
  %2335 = trunc i32 %2334 to i8
  %2336 = and i8 %2335, 1
  store i8 %2336, i8* %53, align 1
  %2337 = icmp eq i32 %2324, 0
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %54, align 1
  %2339 = lshr i32 %2324, 31
  %2340 = trunc i32 %2339 to i8
  store i8 %2340, i8* %55, align 1
  %2341 = lshr i32 %2318, 31
  %2342 = lshr i32 %2323, 31
  %2343 = xor i32 %2342, %2341
  %2344 = xor i32 %2339, %2341
  %2345 = add nuw nsw i32 %2344, %2343
  %2346 = icmp eq i32 %2345, 2
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %56, align 1
  %2348 = icmp ne i8 %2340, 0
  %2349 = xor i1 %2348, %2346
  %.v19 = select i1 %2349, i64 12, i64 412
  %2350 = add i64 %2313, %.v19
  store i64 %2350, i64* %3, align 8
  br i1 %2349, label %block_40168a, label %block_.L_40181a

block_40168a:                                     ; preds = %block_.L_40167e
  %2351 = add i64 %2350, 3
  store i64 %2351, i64* %3, align 8
  %2352 = load i32, i32* %2317, align 4
  %2353 = shl i32 %2352, 1
  %2354 = icmp slt i32 %2352, 0
  %2355 = icmp slt i32 %2353, 0
  %2356 = xor i1 %2354, %2355
  %2357 = zext i32 %2353 to i64
  store i64 %2357, i64* %RAX.i1207, align 8
  %.lobit20 = lshr i32 %2352, 31
  %2358 = trunc i32 %.lobit20 to i8
  store i8 %2358, i8* %51, align 1
  %2359 = and i32 %2353, 254
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2364 = icmp eq i32 %2353, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %54, align 1
  %2366 = lshr i32 %2352, 30
  %2367 = and i32 %2366, 1
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %55, align 1
  %2369 = zext i1 %2356 to i8
  store i8 %2369, i8* %56, align 1
  %2370 = add i64 %2314, -16
  %2371 = add i64 %2350, 10
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i64*
  %2373 = load i64, i64* %2372, align 8
  store i64 %2373, i64* %RCX.i1178, align 8
  %2374 = add i64 %2350, 14
  store i64 %2374, i64* %3, align 8
  %2375 = load i32, i32* %2322, align 4
  %2376 = sext i32 %2375 to i64
  store i64 %2376, i64* %RDX.i1221, align 8
  %2377 = shl nsw i64 %2376, 2
  %2378 = add i64 %2377, %2373
  %2379 = add i64 %2350, 17
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = add i32 %2381, %2353
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RAX.i1207, align 8
  %2384 = icmp ult i32 %2382, %2353
  %2385 = icmp ult i32 %2382, %2381
  %2386 = or i1 %2384, %2385
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %51, align 1
  %2388 = and i32 %2382, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %52, align 1
  %2393 = xor i32 %2381, %2353
  %2394 = xor i32 %2393, %2382
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %53, align 1
  %2398 = icmp eq i32 %2382, 0
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %54, align 1
  %2400 = lshr i32 %2382, 31
  %2401 = trunc i32 %2400 to i8
  store i8 %2401, i8* %55, align 1
  %2402 = lshr i32 %2381, 31
  %2403 = xor i32 %2400, %2367
  %2404 = xor i32 %2400, %2402
  %2405 = add nuw nsw i32 %2403, %2404
  %2406 = icmp eq i32 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %56, align 1
  %2408 = add i64 %2314, -32
  %2409 = add i64 %2350, 20
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i32*
  store i32 %2382, i32* %2410, align 4
  %2411 = load i64, i64* %RBP.i, align 8
  %2412 = add i64 %2411, -36
  %2413 = load i64, i64* %3, align 8
  %2414 = add i64 %2413, 3
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2412 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = shl i32 %2416, 1
  %2418 = icmp slt i32 %2416, 0
  %2419 = icmp slt i32 %2417, 0
  %2420 = xor i1 %2418, %2419
  %2421 = zext i32 %2417 to i64
  store i64 %2421, i64* %RAX.i1207, align 8
  %.lobit21 = lshr i32 %2416, 31
  %2422 = trunc i32 %.lobit21 to i8
  store i8 %2422, i8* %51, align 1
  %2423 = and i32 %2417, 254
  %2424 = tail call i32 @llvm.ctpop.i32(i32 %2423)
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = xor i8 %2426, 1
  store i8 %2427, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2428 = icmp eq i32 %2417, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %54, align 1
  %2430 = lshr i32 %2416, 30
  %2431 = and i32 %2430, 1
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %55, align 1
  %2433 = zext i1 %2420 to i8
  store i8 %2433, i8* %56, align 1
  %2434 = add i64 %2411, -16
  %2435 = add i64 %2413, 10
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i64*
  %2437 = load i64, i64* %2436, align 8
  store i64 %2437, i64* %RCX.i1178, align 8
  %2438 = add i64 %2411, -28
  %2439 = add i64 %2413, 14
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i32*
  %2441 = load i32, i32* %2440, align 4
  %2442 = sext i32 %2441 to i64
  store i64 %2442, i64* %RDX.i1221, align 8
  %2443 = shl nsw i64 %2442, 2
  %2444 = add i64 %2443, %2437
  %2445 = add i64 %2413, 17
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2444 to i32*
  %2447 = load i32, i32* %2446, align 4
  %2448 = add i32 %2447, %2417
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i1207, align 8
  %2450 = icmp ult i32 %2448, %2417
  %2451 = icmp ult i32 %2448, %2447
  %2452 = or i1 %2450, %2451
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %51, align 1
  %2454 = and i32 %2448, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %52, align 1
  %2459 = xor i32 %2447, %2417
  %2460 = xor i32 %2459, %2448
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %53, align 1
  %2464 = icmp eq i32 %2448, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %54, align 1
  %2466 = lshr i32 %2448, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %55, align 1
  %2468 = lshr i32 %2447, 31
  %2469 = xor i32 %2466, %2431
  %2470 = xor i32 %2466, %2468
  %2471 = add nuw nsw i32 %2469, %2470
  %2472 = icmp eq i32 %2471, 2
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %56, align 1
  %2474 = add i64 %2411, -40
  %2475 = add i64 %2413, 20
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  store i32 %2448, i32* %2476, align 4
  %2477 = load i64, i64* %RBP.i, align 8
  %2478 = add i64 %2477, -24
  %2479 = load i64, i64* %3, align 8
  %2480 = add i64 %2479, 4
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2478 to i64*
  %2482 = load i64, i64* %2481, align 8
  store i64 %2482, i64* %RCX.i1178, align 8
  %2483 = add i64 %2477, -32
  %2484 = add i64 %2479, 8
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = sext i32 %2486 to i64
  store i64 %2487, i64* %RDX.i1221, align 8
  %2488 = shl nsw i64 %2487, 3
  %2489 = add i64 %2488, %2482
  %2490 = add i64 %2479, 13
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i64*
  %2492 = load i64, i64* %2491, align 8
  %2493 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2269, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2492, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2494 = add i64 %2477, -64
  %2495 = add i64 %2479, 18
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i64*
  store i64 %2492, i64* %2496, align 8
  %2497 = load i64, i64* %RBP.i, align 8
  %2498 = add i64 %2497, -24
  %2499 = load i64, i64* %3, align 8
  %2500 = add i64 %2499, 4
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2498 to i64*
  %2502 = load i64, i64* %2501, align 8
  store i64 %2502, i64* %RCX.i1178, align 8
  %2503 = add i64 %2497, -32
  %2504 = add i64 %2499, 7
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = add i32 %2506, 1
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RAX.i1207, align 8
  %2509 = icmp eq i32 %2506, -1
  %2510 = icmp eq i32 %2507, 0
  %2511 = or i1 %2509, %2510
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %51, align 1
  %2513 = and i32 %2507, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %52, align 1
  %2518 = xor i32 %2506, %2507
  %2519 = lshr i32 %2518, 4
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %53, align 1
  %2522 = zext i1 %2510 to i8
  store i8 %2522, i8* %54, align 1
  %2523 = lshr i32 %2507, 31
  %2524 = trunc i32 %2523 to i8
  store i8 %2524, i8* %55, align 1
  %2525 = lshr i32 %2506, 31
  %2526 = xor i32 %2523, %2525
  %2527 = add nuw nsw i32 %2526, %2523
  %2528 = icmp eq i32 %2527, 2
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %56, align 1
  %2530 = sext i32 %2507 to i64
  store i64 %2530, i64* %RDX.i1221, align 8
  %2531 = shl nsw i64 %2530, 3
  %2532 = add i64 %2531, %2502
  %2533 = add i64 %2499, 18
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i64*
  %2535 = load i64, i64* %2534, align 8
  store i64 %2535, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2536 = add i64 %2497, -72
  %2537 = add i64 %2499, 23
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i64*
  store i64 %2535, i64* %2538, align 8
  %2539 = load i64, i64* %RBP.i, align 8
  %2540 = add i64 %2539, -24
  %2541 = load i64, i64* %3, align 8
  %2542 = add i64 %2541, 4
  store i64 %2542, i64* %3, align 8
  %2543 = inttoptr i64 %2540 to i64*
  %2544 = load i64, i64* %2543, align 8
  store i64 %2544, i64* %RCX.i1178, align 8
  %2545 = add i64 %2539, -40
  %2546 = add i64 %2541, 8
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = sext i32 %2548 to i64
  store i64 %2549, i64* %RDX.i1221, align 8
  %2550 = shl nsw i64 %2549, 3
  %2551 = add i64 %2550, %2544
  %2552 = add i64 %2541, 13
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i64*
  %2554 = load i64, i64* %2553, align 8
  store i64 %2554, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2555 = add i64 %2539, -80
  %2556 = add i64 %2541, 18
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i64*
  store i64 %2554, i64* %2557, align 8
  %2558 = load i64, i64* %RBP.i, align 8
  %2559 = add i64 %2558, -24
  %2560 = load i64, i64* %3, align 8
  %2561 = add i64 %2560, 4
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2559 to i64*
  %2563 = load i64, i64* %2562, align 8
  store i64 %2563, i64* %RCX.i1178, align 8
  %2564 = add i64 %2558, -40
  %2565 = add i64 %2560, 7
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = add i32 %2567, 1
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RAX.i1207, align 8
  %2570 = icmp eq i32 %2567, -1
  %2571 = icmp eq i32 %2568, 0
  %2572 = or i1 %2570, %2571
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %51, align 1
  %2574 = and i32 %2568, 255
  %2575 = tail call i32 @llvm.ctpop.i32(i32 %2574)
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = xor i8 %2577, 1
  store i8 %2578, i8* %52, align 1
  %2579 = xor i32 %2567, %2568
  %2580 = lshr i32 %2579, 4
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  store i8 %2582, i8* %53, align 1
  %2583 = zext i1 %2571 to i8
  store i8 %2583, i8* %54, align 1
  %2584 = lshr i32 %2568, 31
  %2585 = trunc i32 %2584 to i8
  store i8 %2585, i8* %55, align 1
  %2586 = lshr i32 %2567, 31
  %2587 = xor i32 %2584, %2586
  %2588 = add nuw nsw i32 %2587, %2584
  %2589 = icmp eq i32 %2588, 2
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %56, align 1
  %2591 = sext i32 %2568 to i64
  store i64 %2591, i64* %RDX.i1221, align 8
  %2592 = shl nsw i64 %2591, 3
  %2593 = add i64 %2592, %2563
  %2594 = add i64 %2560, 18
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i64*
  %2596 = load i64, i64* %2595, align 8
  store i64 %2596, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2597 = add i64 %2558, -88
  %2598 = add i64 %2560, 23
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i64*
  store i64 %2596, i64* %2599, align 8
  %2600 = load i64, i64* %RBP.i, align 8
  %2601 = add i64 %2600, -80
  %2602 = load i64, i64* %3, align 8
  %2603 = add i64 %2602, 5
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2601 to i64*
  %2605 = load i64, i64* %2604, align 8
  store i64 %2605, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2606 = add i64 %2600, -24
  %2607 = add i64 %2602, 9
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2606 to i64*
  %2609 = load i64, i64* %2608, align 8
  store i64 %2609, i64* %RCX.i1178, align 8
  %2610 = add i64 %2600, -32
  %2611 = add i64 %2602, 13
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i32*
  %2613 = load i32, i32* %2612, align 4
  %2614 = sext i32 %2613 to i64
  store i64 %2614, i64* %RDX.i1221, align 8
  %2615 = shl nsw i64 %2614, 3
  %2616 = add i64 %2615, %2609
  %2617 = add i64 %2602, 18
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i64*
  store i64 %2605, i64* %2618, align 8
  %2619 = load i64, i64* %RBP.i, align 8
  %2620 = add i64 %2619, -88
  %2621 = load i64, i64* %3, align 8
  %2622 = add i64 %2621, 5
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2620 to i64*
  %2624 = load i64, i64* %2623, align 8
  store i64 %2624, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2625 = add i64 %2619, -24
  %2626 = add i64 %2621, 9
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i64*
  %2628 = load i64, i64* %2627, align 8
  store i64 %2628, i64* %RCX.i1178, align 8
  %2629 = add i64 %2619, -32
  %2630 = add i64 %2621, 12
  store i64 %2630, i64* %3, align 8
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
  %2648 = zext i1 %2636 to i8
  store i8 %2648, i8* %54, align 1
  %2649 = lshr i32 %2633, 31
  %2650 = trunc i32 %2649 to i8
  store i8 %2650, i8* %55, align 1
  %2651 = lshr i32 %2632, 31
  %2652 = xor i32 %2649, %2651
  %2653 = add nuw nsw i32 %2652, %2649
  %2654 = icmp eq i32 %2653, 2
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %56, align 1
  %2656 = sext i32 %2633 to i64
  store i64 %2656, i64* %RDX.i1221, align 8
  %2657 = shl nsw i64 %2656, 3
  %2658 = add i64 %2657, %2628
  %2659 = add i64 %2621, 23
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i64*
  store i64 %2624, i64* %2660, align 8
  %2661 = load i64, i64* %RBP.i, align 8
  %2662 = add i64 %2661, -64
  %2663 = load i64, i64* %3, align 8
  %2664 = add i64 %2663, 5
  store i64 %2664, i64* %3, align 8
  %2665 = inttoptr i64 %2662 to i64*
  %2666 = load i64, i64* %2665, align 8
  store i64 %2666, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2667 = add i64 %2661, -24
  %2668 = add i64 %2663, 9
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i64*
  %2670 = load i64, i64* %2669, align 8
  store i64 %2670, i64* %RCX.i1178, align 8
  %2671 = add i64 %2661, -40
  %2672 = add i64 %2663, 13
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = sext i32 %2674 to i64
  store i64 %2675, i64* %RDX.i1221, align 8
  %2676 = shl nsw i64 %2675, 3
  %2677 = add i64 %2676, %2670
  %2678 = add i64 %2663, 18
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i64*
  store i64 %2666, i64* %2679, align 8
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -72
  %2682 = load i64, i64* %3, align 8
  %2683 = add i64 %2682, 5
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2681 to i64*
  %2685 = load i64, i64* %2684, align 8
  store i64 %2685, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2686 = add i64 %2680, -24
  %2687 = add i64 %2682, 9
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i64*
  %2689 = load i64, i64* %2688, align 8
  store i64 %2689, i64* %RCX.i1178, align 8
  %2690 = add i64 %2680, -40
  %2691 = add i64 %2682, 12
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2690 to i32*
  %2693 = load i32, i32* %2692, align 4
  %2694 = add i32 %2693, 1
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX.i1207, align 8
  %2696 = icmp eq i32 %2693, -1
  %2697 = icmp eq i32 %2694, 0
  %2698 = or i1 %2696, %2697
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %51, align 1
  %2700 = and i32 %2694, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %52, align 1
  %2705 = xor i32 %2693, %2694
  %2706 = lshr i32 %2705, 4
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  store i8 %2708, i8* %53, align 1
  %2709 = zext i1 %2697 to i8
  store i8 %2709, i8* %54, align 1
  %2710 = lshr i32 %2694, 31
  %2711 = trunc i32 %2710 to i8
  store i8 %2711, i8* %55, align 1
  %2712 = lshr i32 %2693, 31
  %2713 = xor i32 %2710, %2712
  %2714 = add nuw nsw i32 %2713, %2710
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %56, align 1
  %2717 = sext i32 %2694 to i64
  store i64 %2717, i64* %RDX.i1221, align 8
  %2718 = shl nsw i64 %2717, 3
  %2719 = add i64 %2718, %2689
  %2720 = add i64 %2682, 23
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i64*
  store i64 %2685, i64* %2721, align 8
  %2722 = load i64, i64* %RBP.i, align 8
  %2723 = add i64 %2722, -52
  %2724 = load i64, i64* %3, align 8
  %2725 = add i64 %2724, 3
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2723 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RAX.i1207, align 8
  %2729 = add i64 %2722, -32
  %2730 = add i64 %2724, 6
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = add i32 %2732, %2727
  %2734 = zext i32 %2733 to i64
  store i64 %2734, i64* %RAX.i1207, align 8
  %2735 = icmp ult i32 %2733, %2727
  %2736 = icmp ult i32 %2733, %2732
  %2737 = or i1 %2735, %2736
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %51, align 1
  %2739 = and i32 %2733, 255
  %2740 = tail call i32 @llvm.ctpop.i32(i32 %2739)
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  store i8 %2743, i8* %52, align 1
  %2744 = xor i32 %2732, %2727
  %2745 = xor i32 %2744, %2733
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %53, align 1
  %2749 = icmp eq i32 %2733, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %54, align 1
  %2751 = lshr i32 %2733, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %55, align 1
  %2753 = lshr i32 %2727, 31
  %2754 = lshr i32 %2732, 31
  %2755 = xor i32 %2751, %2753
  %2756 = xor i32 %2751, %2754
  %2757 = add nuw nsw i32 %2755, %2756
  %2758 = icmp eq i32 %2757, 2
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %56, align 1
  %2760 = add i64 %2724, 9
  store i64 %2760, i64* %3, align 8
  store i32 %2733, i32* %2731, align 4
  %2761 = load i64, i64* %RBP.i, align 8
  %2762 = add i64 %2761, -52
  %2763 = load i64, i64* %3, align 8
  %2764 = add i64 %2763, 3
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2762 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %RAX.i1207, align 8
  %2768 = add i64 %2761, -40
  %2769 = add i64 %2763, 6
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i32*
  %2771 = load i32, i32* %2770, align 4
  %2772 = add i32 %2771, %2766
  %2773 = zext i32 %2772 to i64
  store i64 %2773, i64* %RAX.i1207, align 8
  %2774 = icmp ult i32 %2772, %2766
  %2775 = icmp ult i32 %2772, %2771
  %2776 = or i1 %2774, %2775
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %51, align 1
  %2778 = and i32 %2772, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %52, align 1
  %2783 = xor i32 %2771, %2766
  %2784 = xor i32 %2783, %2772
  %2785 = lshr i32 %2784, 4
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  store i8 %2787, i8* %53, align 1
  %2788 = icmp eq i32 %2772, 0
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %54, align 1
  %2790 = lshr i32 %2772, 31
  %2791 = trunc i32 %2790 to i8
  store i8 %2791, i8* %55, align 1
  %2792 = lshr i32 %2766, 31
  %2793 = lshr i32 %2771, 31
  %2794 = xor i32 %2790, %2792
  %2795 = xor i32 %2790, %2793
  %2796 = add nuw nsw i32 %2794, %2795
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %56, align 1
  %2799 = add i64 %2763, 9
  store i64 %2799, i64* %3, align 8
  store i32 %2772, i32* %2770, align 4
  %2800 = load i64, i64* %RBP.i, align 8
  %2801 = add i64 %2800, -24
  %2802 = load i64, i64* %3, align 8
  %2803 = add i64 %2802, 4
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2801 to i64*
  %2805 = load i64, i64* %2804, align 8
  store i64 %2805, i64* %RCX.i1178, align 8
  %2806 = add i64 %2800, -32
  %2807 = add i64 %2802, 8
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i32*
  %2809 = load i32, i32* %2808, align 4
  %2810 = sext i32 %2809 to i64
  store i64 %2810, i64* %RDX.i1221, align 8
  %2811 = shl nsw i64 %2810, 3
  %2812 = add i64 %2811, %2805
  %2813 = add i64 %2802, 13
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i64*
  %2815 = load i64, i64* %2814, align 8
  store i64 %2815, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2816 = add i64 %2800, -64
  %2817 = add i64 %2802, 18
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i64*
  store i64 %2815, i64* %2818, align 8
  %2819 = load i64, i64* %RBP.i, align 8
  %2820 = add i64 %2819, -24
  %2821 = load i64, i64* %3, align 8
  %2822 = add i64 %2821, 4
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2820 to i64*
  %2824 = load i64, i64* %2823, align 8
  store i64 %2824, i64* %RCX.i1178, align 8
  %2825 = add i64 %2819, -32
  %2826 = add i64 %2821, 7
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i32*
  %2828 = load i32, i32* %2827, align 4
  %2829 = add i32 %2828, 1
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RAX.i1207, align 8
  %2831 = icmp eq i32 %2828, -1
  %2832 = icmp eq i32 %2829, 0
  %2833 = or i1 %2831, %2832
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %51, align 1
  %2835 = and i32 %2829, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %52, align 1
  %2840 = xor i32 %2828, %2829
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %53, align 1
  %2844 = zext i1 %2832 to i8
  store i8 %2844, i8* %54, align 1
  %2845 = lshr i32 %2829, 31
  %2846 = trunc i32 %2845 to i8
  store i8 %2846, i8* %55, align 1
  %2847 = lshr i32 %2828, 31
  %2848 = xor i32 %2845, %2847
  %2849 = add nuw nsw i32 %2848, %2845
  %2850 = icmp eq i32 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %56, align 1
  %2852 = sext i32 %2829 to i64
  store i64 %2852, i64* %RDX.i1221, align 8
  %2853 = shl nsw i64 %2852, 3
  %2854 = add i64 %2853, %2824
  %2855 = add i64 %2821, 18
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i64*
  %2857 = load i64, i64* %2856, align 8
  store i64 %2857, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2858 = add i64 %2819, -72
  %2859 = add i64 %2821, 23
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i64*
  store i64 %2857, i64* %2860, align 8
  %2861 = load i64, i64* %RBP.i, align 8
  %2862 = add i64 %2861, -24
  %2863 = load i64, i64* %3, align 8
  %2864 = add i64 %2863, 4
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2862 to i64*
  %2866 = load i64, i64* %2865, align 8
  store i64 %2866, i64* %RCX.i1178, align 8
  %2867 = add i64 %2861, -40
  %2868 = add i64 %2863, 8
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = sext i32 %2870 to i64
  store i64 %2871, i64* %RDX.i1221, align 8
  %2872 = shl nsw i64 %2871, 3
  %2873 = add i64 %2872, %2866
  %2874 = add i64 %2863, 13
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2877 = add i64 %2861, -80
  %2878 = add i64 %2863, 18
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i64*
  store i64 %2876, i64* %2879, align 8
  %2880 = load i64, i64* %RBP.i, align 8
  %2881 = add i64 %2880, -24
  %2882 = load i64, i64* %3, align 8
  %2883 = add i64 %2882, 4
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2881 to i64*
  %2885 = load i64, i64* %2884, align 8
  store i64 %2885, i64* %RCX.i1178, align 8
  %2886 = add i64 %2880, -40
  %2887 = add i64 %2882, 7
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = add i32 %2889, 1
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RAX.i1207, align 8
  %2892 = icmp eq i32 %2889, -1
  %2893 = icmp eq i32 %2890, 0
  %2894 = or i1 %2892, %2893
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %51, align 1
  %2896 = and i32 %2890, 255
  %2897 = tail call i32 @llvm.ctpop.i32(i32 %2896)
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  %2900 = xor i8 %2899, 1
  store i8 %2900, i8* %52, align 1
  %2901 = xor i32 %2889, %2890
  %2902 = lshr i32 %2901, 4
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  store i8 %2904, i8* %53, align 1
  %2905 = zext i1 %2893 to i8
  store i8 %2905, i8* %54, align 1
  %2906 = lshr i32 %2890, 31
  %2907 = trunc i32 %2906 to i8
  store i8 %2907, i8* %55, align 1
  %2908 = lshr i32 %2889, 31
  %2909 = xor i32 %2906, %2908
  %2910 = add nuw nsw i32 %2909, %2906
  %2911 = icmp eq i32 %2910, 2
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %56, align 1
  %2913 = sext i32 %2890 to i64
  store i64 %2913, i64* %RDX.i1221, align 8
  %2914 = shl nsw i64 %2913, 3
  %2915 = add i64 %2914, %2885
  %2916 = add i64 %2882, 18
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i64*
  %2918 = load i64, i64* %2917, align 8
  store i64 %2918, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2919 = add i64 %2880, -88
  %2920 = add i64 %2882, 23
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i64*
  store i64 %2918, i64* %2921, align 8
  %2922 = load i64, i64* %RBP.i, align 8
  %2923 = add i64 %2922, -80
  %2924 = load i64, i64* %3, align 8
  %2925 = add i64 %2924, 5
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2923 to i64*
  %2927 = load i64, i64* %2926, align 8
  store i64 %2927, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2928 = add i64 %2922, -24
  %2929 = add i64 %2924, 9
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RCX.i1178, align 8
  %2932 = add i64 %2922, -32
  %2933 = add i64 %2924, 13
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = sext i32 %2935 to i64
  store i64 %2936, i64* %RDX.i1221, align 8
  %2937 = shl nsw i64 %2936, 3
  %2938 = add i64 %2937, %2931
  %2939 = add i64 %2924, 18
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2938 to i64*
  store i64 %2927, i64* %2940, align 8
  %2941 = load i64, i64* %RBP.i, align 8
  %2942 = add i64 %2941, -88
  %2943 = load i64, i64* %3, align 8
  %2944 = add i64 %2943, 5
  store i64 %2944, i64* %3, align 8
  %2945 = inttoptr i64 %2942 to i64*
  %2946 = load i64, i64* %2945, align 8
  store i64 %2946, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2947 = add i64 %2941, -24
  %2948 = add i64 %2943, 9
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i64*
  %2950 = load i64, i64* %2949, align 8
  store i64 %2950, i64* %RCX.i1178, align 8
  %2951 = add i64 %2941, -32
  %2952 = add i64 %2943, 12
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = add i32 %2954, 1
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RAX.i1207, align 8
  %2957 = icmp eq i32 %2954, -1
  %2958 = icmp eq i32 %2955, 0
  %2959 = or i1 %2957, %2958
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %51, align 1
  %2961 = and i32 %2955, 255
  %2962 = tail call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  store i8 %2965, i8* %52, align 1
  %2966 = xor i32 %2954, %2955
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  store i8 %2969, i8* %53, align 1
  %2970 = zext i1 %2958 to i8
  store i8 %2970, i8* %54, align 1
  %2971 = lshr i32 %2955, 31
  %2972 = trunc i32 %2971 to i8
  store i8 %2972, i8* %55, align 1
  %2973 = lshr i32 %2954, 31
  %2974 = xor i32 %2971, %2973
  %2975 = add nuw nsw i32 %2974, %2971
  %2976 = icmp eq i32 %2975, 2
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %56, align 1
  %2978 = sext i32 %2955 to i64
  store i64 %2978, i64* %RDX.i1221, align 8
  %2979 = shl nsw i64 %2978, 3
  %2980 = add i64 %2979, %2950
  %2981 = add i64 %2943, 23
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i64*
  store i64 %2946, i64* %2982, align 8
  %2983 = load i64, i64* %RBP.i, align 8
  %2984 = add i64 %2983, -64
  %2985 = load i64, i64* %3, align 8
  %2986 = add i64 %2985, 5
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2984 to i64*
  %2988 = load i64, i64* %2987, align 8
  store i64 %2988, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %2989 = add i64 %2983, -24
  %2990 = add i64 %2985, 9
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i64*
  %2992 = load i64, i64* %2991, align 8
  store i64 %2992, i64* %RCX.i1178, align 8
  %2993 = add i64 %2983, -40
  %2994 = add i64 %2985, 13
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = sext i32 %2996 to i64
  store i64 %2997, i64* %RDX.i1221, align 8
  %2998 = shl nsw i64 %2997, 3
  %2999 = add i64 %2998, %2992
  %3000 = add i64 %2985, 18
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i64*
  store i64 %2988, i64* %3001, align 8
  %3002 = load i64, i64* %RBP.i, align 8
  %3003 = add i64 %3002, -72
  %3004 = load i64, i64* %3, align 8
  %3005 = add i64 %3004, 5
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3003 to i64*
  %3007 = load i64, i64* %3006, align 8
  store i64 %3007, i64* %2493, align 1
  store double 0.000000e+00, double* %2271, align 1
  %3008 = add i64 %3002, -24
  %3009 = add i64 %3004, 9
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  store i64 %3011, i64* %RCX.i1178, align 8
  %3012 = add i64 %3002, -40
  %3013 = add i64 %3004, 12
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i32*
  %3015 = load i32, i32* %3014, align 4
  %3016 = add i32 %3015, 1
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RAX.i1207, align 8
  %3018 = icmp eq i32 %3015, -1
  %3019 = icmp eq i32 %3016, 0
  %3020 = or i1 %3018, %3019
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %51, align 1
  %3022 = and i32 %3016, 255
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %52, align 1
  %3027 = xor i32 %3015, %3016
  %3028 = lshr i32 %3027, 4
  %3029 = trunc i32 %3028 to i8
  %3030 = and i8 %3029, 1
  store i8 %3030, i8* %53, align 1
  %3031 = zext i1 %3019 to i8
  store i8 %3031, i8* %54, align 1
  %3032 = lshr i32 %3016, 31
  %3033 = trunc i32 %3032 to i8
  store i8 %3033, i8* %55, align 1
  %3034 = lshr i32 %3015, 31
  %3035 = xor i32 %3032, %3034
  %3036 = add nuw nsw i32 %3035, %3032
  %3037 = icmp eq i32 %3036, 2
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %56, align 1
  %3039 = sext i32 %3016 to i64
  store i64 %3039, i64* %RDX.i1221, align 8
  %3040 = shl nsw i64 %3039, 3
  %3041 = add i64 %3040, %3011
  %3042 = add i64 %3004, 23
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i64*
  store i64 %3007, i64* %3043, align 8
  %3044 = load i64, i64* %RBP.i, align 8
  %3045 = add i64 %3044, -28
  %3046 = load i64, i64* %3, align 8
  %3047 = add i64 %3046, 3
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3045 to i32*
  %3049 = load i32, i32* %3048, align 4
  %3050 = add i32 %3049, 1
  %3051 = zext i32 %3050 to i64
  store i64 %3051, i64* %RAX.i1207, align 8
  %3052 = icmp eq i32 %3049, -1
  %3053 = icmp eq i32 %3050, 0
  %3054 = or i1 %3052, %3053
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %51, align 1
  %3056 = and i32 %3050, 255
  %3057 = tail call i32 @llvm.ctpop.i32(i32 %3056)
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = xor i8 %3059, 1
  store i8 %3060, i8* %52, align 1
  %3061 = xor i32 %3049, %3050
  %3062 = lshr i32 %3061, 4
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  store i8 %3064, i8* %53, align 1
  %3065 = zext i1 %3053 to i8
  store i8 %3065, i8* %54, align 1
  %3066 = lshr i32 %3050, 31
  %3067 = trunc i32 %3066 to i8
  store i8 %3067, i8* %55, align 1
  %3068 = lshr i32 %3049, 31
  %3069 = xor i32 %3066, %3068
  %3070 = add nuw nsw i32 %3069, %3066
  %3071 = icmp eq i32 %3070, 2
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %56, align 1
  %3073 = add i64 %3046, 9
  store i64 %3073, i64* %3, align 8
  store i32 %3050, i32* %3048, align 4
  %3074 = load i64, i64* %3, align 8
  %3075 = add i64 %3074, -407
  store i64 %3075, i64* %3, align 8
  br label %block_.L_40167e

block_.L_40181a:                                  ; preds = %block_.L_40167e
  %3076 = add i64 %2350, 8
  store i64 %3076, i64* %3, align 8
  %3077 = load i32, i32* %2322, align 4
  %3078 = add i32 %3077, 1
  %3079 = zext i32 %3078 to i64
  store i64 %3079, i64* %RAX.i1207, align 8
  %3080 = icmp eq i32 %3077, -1
  %3081 = icmp eq i32 %3078, 0
  %3082 = or i1 %3080, %3081
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %51, align 1
  %3084 = and i32 %3078, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %52, align 1
  %3089 = xor i32 %3077, %3078
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %53, align 1
  %3093 = zext i1 %3081 to i8
  store i8 %3093, i8* %54, align 1
  %3094 = lshr i32 %3078, 31
  %3095 = trunc i32 %3094 to i8
  store i8 %3095, i8* %55, align 1
  %3096 = lshr i32 %3077, 31
  %3097 = xor i32 %3094, %3096
  %3098 = add nuw nsw i32 %3097, %3094
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %56, align 1
  %3101 = add i64 %2350, 14
  store i64 %3101, i64* %3, align 8
  store i32 %3078, i32* %2322, align 4
  %3102 = load i64, i64* %3, align 8
  %3103 = add i64 %3102, -445
  store i64 %3103, i64* %3, align 8
  br label %block_.L_40166b

block_.L_40182d:                                  ; preds = %block_.L_40166b
  %3104 = add i64 %2309, 5
  br label %block_.L_401832

block_.L_401832:                                  ; preds = %block_.L_40182d, %block_.L_40165f
  %.sink = phi i64 [ %3104, %block_.L_40182d ], [ %2268, %block_.L_40165f ]
  %3105 = add i64 %.sink, 1
  store i64 %3105, i64* %3, align 8
  %3106 = load i64, i64* %6, align 8
  %3107 = add i64 %3106, 8
  %3108 = inttoptr i64 %3106 to i64*
  %3109 = load i64, i64* %3108, align 8
  store i64 %3109, i64* %RBP.i, align 8
  store i64 %3107, i64* %6, align 8
  %3110 = add i64 %.sink, 2
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3107 to i64*
  %3112 = load i64, i64* %3111, align 8
  store i64 %3112, i64* %3, align 8
  %3113 = add i64 %3106, 16
  store i64 %3113, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %5 = add i64 %4, 3
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401832(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40167e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40181f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40166b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
