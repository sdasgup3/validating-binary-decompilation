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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @insert_new_arc(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i140 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = add i64 %7, -16
  %13 = load i64, i64* %RDI.i140, align 8
  %14 = add i64 %10, 7
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %15, align 8
  %RSI.i188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i188, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i283 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -32
  %31 = load i64, i64* %RCX.i283, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -40
  %37 = load i64, i64* %R8.i, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %36 to i64*
  store i64 %37, i64* %40, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -48
  %43 = load i64, i64* %R9.i, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -24
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RCX.i283, align 8
  %53 = add i64 %47, -8
  %54 = add i64 %49, 8
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RDX.i, align 8
  %57 = add i64 %47, -16
  %58 = add i64 %49, 12
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %60, 6
  store i64 %61, i64* %RSI.i188, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %68 = add i64 %61, %56
  store i64 %68, i64* %RDX.i, align 8
  %69 = icmp ult i64 %68, %56
  %70 = icmp ult i64 %68, %61
  %71 = or i1 %69, %70
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %62, align 1
  %73 = trunc i64 %68 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %63, align 1
  %79 = xor i64 %56, %68
  %80 = lshr i64 %79, 4
  %81 = trunc i64 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %64, align 1
  %83 = icmp eq i64 %68, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %65, align 1
  %85 = lshr i64 %68, 63
  %86 = trunc i64 %85 to i8
  store i8 %86, i8* %66, align 1
  %87 = lshr i64 %56, 63
  %88 = lshr i64 %60, 57
  %89 = and i64 %88, 1
  %90 = xor i64 %85, %87
  %91 = xor i64 %85, %89
  %92 = add nuw nsw i64 %90, %91
  %93 = icmp eq i64 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %67, align 1
  %95 = add i64 %68, 8
  %96 = add i64 %49, 23
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i64*
  store i64 %52, i64* %97, align 8
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -32
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RCX.i283, align 8
  %104 = add i64 %98, -8
  %105 = add i64 %100, 8
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RDX.i, align 8
  %108 = add i64 %98, -16
  %109 = add i64 %100, 12
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 %111, 6
  store i64 %112, i64* %RSI.i188, align 8
  %113 = add i64 %112, %107
  store i64 %113, i64* %RDX.i, align 8
  %114 = icmp ult i64 %113, %107
  %115 = icmp ult i64 %113, %112
  %116 = or i1 %114, %115
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %62, align 1
  %118 = trunc i64 %113 to i32
  %119 = and i32 %118, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %63, align 1
  %124 = xor i64 %107, %113
  %125 = lshr i64 %124, 4
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %64, align 1
  %128 = icmp eq i64 %113, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %65, align 1
  %130 = lshr i64 %113, 63
  %131 = trunc i64 %130 to i8
  store i8 %131, i8* %66, align 1
  %132 = lshr i64 %107, 63
  %133 = lshr i64 %111, 57
  %134 = and i64 %133, 1
  %135 = xor i64 %130, %132
  %136 = xor i64 %130, %134
  %137 = add nuw nsw i64 %135, %136
  %138 = icmp eq i64 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %67, align 1
  %140 = add i64 %113, 16
  %141 = add i64 %100, 23
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  store i64 %103, i64* %142, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -40
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RCX.i283, align 8
  %149 = add i64 %143, -8
  %150 = add i64 %145, 8
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RDX.i, align 8
  %153 = add i64 %143, -16
  %154 = add i64 %145, 12
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = shl i64 %156, 6
  store i64 %157, i64* %RSI.i188, align 8
  %158 = add i64 %157, %152
  store i64 %158, i64* %RDX.i, align 8
  %159 = icmp ult i64 %158, %152
  %160 = icmp ult i64 %158, %157
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %62, align 1
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %63, align 1
  %169 = xor i64 %152, %158
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %64, align 1
  %173 = icmp eq i64 %158, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %65, align 1
  %175 = lshr i64 %158, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %66, align 1
  %177 = lshr i64 %152, 63
  %178 = lshr i64 %156, 57
  %179 = and i64 %178, 1
  %180 = xor i64 %175, %177
  %181 = xor i64 %175, %179
  %182 = add nuw nsw i64 %180, %181
  %183 = icmp eq i64 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %67, align 1
  %185 = add i64 %158, 56
  %186 = add i64 %145, 23
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  store i64 %148, i64* %187, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -40
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 4
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %189 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RCX.i283, align 8
  %194 = add i64 %188, -8
  %195 = add i64 %190, 8
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RDX.i, align 8
  %198 = add i64 %188, -16
  %199 = add i64 %190, 12
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  %202 = shl i64 %201, 6
  store i64 %202, i64* %RSI.i188, align 8
  %203 = add i64 %202, %197
  store i64 %203, i64* %RDX.i, align 8
  %204 = icmp ult i64 %203, %197
  %205 = icmp ult i64 %203, %202
  %206 = or i1 %204, %205
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %62, align 1
  %208 = trunc i64 %203 to i32
  %209 = and i32 %208, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %63, align 1
  %214 = xor i64 %197, %203
  %215 = lshr i64 %214, 4
  %216 = trunc i64 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %64, align 1
  %218 = icmp eq i64 %203, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %65, align 1
  %220 = lshr i64 %203, 63
  %221 = trunc i64 %220 to i8
  store i8 %221, i8* %66, align 1
  %222 = lshr i64 %197, 63
  %223 = lshr i64 %201, 57
  %224 = and i64 %223, 1
  %225 = xor i64 %220, %222
  %226 = xor i64 %220, %224
  %227 = add nuw nsw i64 %225, %226
  %228 = icmp eq i64 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %67, align 1
  %230 = inttoptr i64 %203 to i64*
  %231 = add i64 %190, 22
  store i64 %231, i64* %3, align 8
  store i64 %193, i64* %230, align 8
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -48
  %234 = load i64, i64* %3, align 8
  %235 = add i64 %234, 4
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %233 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RCX.i283, align 8
  %238 = add i64 %232, -8
  %239 = add i64 %234, 8
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RDX.i, align 8
  %242 = add i64 %232, -16
  %243 = add i64 %234, 12
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  %246 = shl i64 %245, 6
  store i64 %246, i64* %RSI.i188, align 8
  %247 = add i64 %246, %241
  store i64 %247, i64* %RDX.i, align 8
  %248 = icmp ult i64 %247, %241
  %249 = icmp ult i64 %247, %246
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %62, align 1
  %252 = trunc i64 %247 to i32
  %253 = and i32 %252, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %63, align 1
  %258 = xor i64 %241, %247
  %259 = lshr i64 %258, 4
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %64, align 1
  %262 = icmp eq i64 %247, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %65, align 1
  %264 = lshr i64 %247, 63
  %265 = trunc i64 %264 to i8
  store i8 %265, i8* %66, align 1
  %266 = lshr i64 %241, 63
  %267 = lshr i64 %245, 57
  %268 = and i64 %267, 1
  %269 = xor i64 %264, %266
  %270 = xor i64 %264, %268
  %271 = add nuw nsw i64 %269, %270
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %67, align 1
  %274 = add i64 %247, 48
  %275 = add i64 %234, 23
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  store i64 %237, i64* %276, align 8
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -16
  %279 = load i64, i64* %3, align 8
  %280 = add i64 %279, 4
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %278 to i64*
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %RCX.i283, align 8
  %284 = icmp eq i64 %282, -1
  %285 = icmp eq i64 %283, 0
  %286 = or i1 %284, %285
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %62, align 1
  %288 = trunc i64 %283 to i32
  %289 = and i32 %288, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %63, align 1
  %294 = xor i64 %283, %282
  %295 = lshr i64 %294, 4
  %296 = trunc i64 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %64, align 1
  %298 = zext i1 %285 to i8
  store i8 %298, i8* %65, align 1
  %299 = lshr i64 %283, 63
  %300 = trunc i64 %299 to i8
  store i8 %300, i8* %66, align 1
  %301 = lshr i64 %282, 63
  %302 = xor i64 %299, %301
  %303 = add nuw nsw i64 %302, %299
  %304 = icmp eq i64 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %67, align 1
  %306 = add i64 %277, -56
  %307 = add i64 %279, 12
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i64*
  store i64 %283, i64* %308, align 8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i407 = getelementptr inbounds %union.anon, %union.anon* %309, i64 0, i32 0
  %AL.i403 = bitcast %union.anon* %309 to i8*
  %CL.i404 = bitcast %union.anon* %28 to i8*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %DIL.i355 = bitcast %union.anon* %11 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400c1a

block_.L_400c1a:                                  ; preds = %routine_idivq__rcx.exit, %entry
  %311 = phi i64 [ %.pre, %entry ], [ %1409, %routine_idivq__rcx.exit ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %1170, %routine_idivq__rcx.exit ]
  store i64 0, i64* %RAX.i407, align 8
  store i8 0, i8* %62, align 1
  store i8 1, i8* %63, align 1
  store i8 1, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %CL.i404, align 1
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -56
  %314 = add i64 %311, 8
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  %317 = add i64 %316, -1
  store i64 %317, i64* %RDX.i, align 8
  %318 = trunc i64 %317 to i32
  %319 = and i32 %318, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  %324 = icmp eq i64 %317, 0
  %325 = zext i1 %324 to i8
  %326 = lshr i64 %317, 63
  %327 = trunc i64 %326 to i8
  store i8 0, i8* %62, align 1
  store i8 %323, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 %325, i8* %65, align 1
  store i8 %327, i8* %66, align 1
  store i8 0, i8* %67, align 1
  %328 = add i64 %312, -57
  %329 = add i64 %311, 19
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i8*
  store i8 0, i8* %330, align 1
  %331 = load i64, i64* %3, align 8
  %332 = load i8, i8* %65, align 1
  %333 = icmp ne i8 %332, 0
  %.v18 = select i1 %333, i64 61, i64 6
  %334 = add i64 %331, %.v18
  store i64 %334, i64* %3, align 8
  %cmpBr_400c2d = icmp eq i8 %332, 1
  br i1 %cmpBr_400c2d, label %block_.L_400c6a, label %block_400c33

block_400c33:                                     ; preds = %block_.L_400c1a
  store i64 2, i64* %RAX.i407, align 8
  store i64 2, i64* %RCX.i283, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -48
  %337 = add i64 %334, 11
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RDX.i, align 8
  %340 = add i64 %335, -8
  %341 = add i64 %334, 15
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RSI.i188, align 8
  %344 = add i64 %335, -56
  %345 = add i64 %334, 19
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %RAX.i407, align 8
  %348 = add i64 %335, -72
  %349 = add i64 %334, 23
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  store i64 %339, i64* %350, align 8
  %351 = load i64, i64* %3, align 8
  %352 = load i64, i64* %310, align 8
  %353 = ashr i64 %352, 63
  store i64 %353, i64* %RDX.i, align 8
  %354 = load i64, i64* %RCX.i283, align 8
  %355 = add i64 %351, 5
  store i64 %355, i64* %3, align 8
  %356 = sext i64 %354 to i128
  %357 = and i128 %356, -18446744073709551616
  %358 = zext i64 %353 to i128
  %359 = shl nuw i128 %358, 64
  %360 = zext i64 %352 to i128
  %361 = or i128 %359, %360
  %362 = zext i64 %354 to i128
  %363 = or i128 %357, %362
  %364 = sdiv i128 %361, %363
  %365 = trunc i128 %364 to i64
  %366 = and i128 %364, 18446744073709551615
  %367 = sext i64 %365 to i128
  %368 = and i128 %367, -18446744073709551616
  %369 = or i128 %368, %366
  %370 = icmp eq i128 %364, %369
  br i1 %370, label %373, label %371

; <label>:371:                                    ; preds = %block_400c33
  %372 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %355, %struct.Memory* %MEMORY.0)
  %.pre2 = load i64, i64* %RAX.i407, align 8
  %.pre3 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit371

; <label>:373:                                    ; preds = %block_400c33
  %374 = srem i128 %361, %363
  %375 = trunc i128 %374 to i64
  store i64 %365, i64* %310, align 8
  store i64 %375, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit371

routine_idivq__rcx.exit371:                       ; preds = %373, %371
  %376 = phi i64 [ %.pre3, %371 ], [ %355, %373 ]
  %377 = phi i64 [ %.pre2, %371 ], [ %365, %373 ]
  %378 = phi %struct.Memory* [ %372, %371 ], [ %MEMORY.0, %373 ]
  %379 = add i64 %377, -1
  %380 = shl i64 %379, 6
  store i64 %380, i64* %RAX.i407, align 8
  %381 = load i64, i64* %RSI.i188, align 8
  %382 = add i64 %380, %381
  store i64 %382, i64* %RSI.i188, align 8
  %383 = icmp ult i64 %382, %381
  %384 = icmp ult i64 %382, %380
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %62, align 1
  %387 = trunc i64 %382 to i32
  %388 = and i32 %387, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %63, align 1
  %393 = xor i64 %381, %382
  %394 = lshr i64 %393, 4
  %395 = trunc i64 %394 to i8
  %396 = and i8 %395, 1
  store i8 %396, i8* %64, align 1
  %397 = icmp eq i64 %382, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %65, align 1
  %399 = lshr i64 %382, 63
  %400 = trunc i64 %399 to i8
  store i8 %400, i8* %66, align 1
  %401 = lshr i64 %381, 63
  %402 = lshr i64 %379, 57
  %403 = and i64 %402, 1
  %404 = xor i64 %399, %401
  %405 = xor i64 %399, %403
  %406 = add nuw nsw i64 %404, %405
  %407 = icmp eq i64 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %67, align 1
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -72
  %411 = add i64 %376, 15
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RAX.i407, align 8
  %414 = add i64 %382, 48
  %415 = add i64 %376, 19
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  %418 = sub i64 %413, %417
  %419 = icmp ult i64 %413, %417
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %62, align 1
  %421 = trunc i64 %418 to i32
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %63, align 1
  %427 = xor i64 %417, %413
  %428 = xor i64 %427, %418
  %429 = lshr i64 %428, 4
  %430 = trunc i64 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %64, align 1
  %432 = icmp eq i64 %418, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %65, align 1
  %434 = lshr i64 %418, 63
  %435 = trunc i64 %434 to i8
  store i8 %435, i8* %66, align 1
  %436 = lshr i64 %413, 63
  %437 = lshr i64 %417, 63
  %438 = xor i64 %437, %436
  %439 = xor i64 %434, %436
  %440 = add nuw nsw i64 %439, %438
  %441 = icmp eq i64 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %67, align 1
  %443 = icmp ne i8 %435, 0
  %444 = xor i1 %443, %441
  %.demorgan = or i1 %432, %444
  %445 = xor i1 %.demorgan, true
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %DIL.i355, align 1
  %447 = add i64 %409, -57
  %448 = add i64 %376, 27
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i8*
  store i8 %446, i8* %449, align 1
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400c6a

block_.L_400c6a:                                  ; preds = %routine_idivq__rcx.exit371, %block_.L_400c1a
  %450 = phi i64 [ %334, %block_.L_400c1a ], [ %.pre4, %routine_idivq__rcx.exit371 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400c1a ], [ %378, %routine_idivq__rcx.exit371 ]
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -57
  %453 = add i64 %450, 3
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i8*
  %455 = load i8, i8* %454, align 1
  store i8 %455, i8* %AL.i403, align 1
  %456 = and i8 %455, 1
  store i8 0, i8* %62, align 1
  %457 = zext i8 %456 to i32
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = xor i8 %459, 1
  store i8 %460, i8* %63, align 1
  %461 = xor i8 %456, 1
  store i8 %461, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %64, align 1
  %462 = icmp eq i8 %461, 0
  %.v = select i1 %462, i64 16, i64 11
  %463 = add i64 %450, %.v
  store i64 %463, i64* %3, align 8
  br i1 %462, label %block_.L_400c7a, label %block_400c75

block_400c75:                                     ; preds = %block_.L_400c6a
  %464 = add i64 %463, 469
  store i64 %464, i64* %3, align 8
  %465 = load i64, i64* %6, align 8
  %466 = add i64 %465, 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RBP.i, align 8
  store i64 %466, i64* %6, align 8
  %469 = add i64 %463, 470
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %466 to i64*
  %471 = load i64, i64* %470, align 8
  store i64 %471, i64* %3, align 8
  %472 = add i64 %465, 16
  store i64 %472, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1

block_.L_400c7a:                                  ; preds = %block_.L_400c6a
  store i64 2, i64* %RAX.i407, align 8
  store i64 2, i64* %RCX.i283, align 8
  %473 = add i64 %451, -8
  %474 = add i64 %463, 11
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RDX.i, align 8
  %477 = add i64 %451, -56
  %478 = add i64 %463, 15
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RAX.i407, align 8
  %481 = add i64 %451, -80
  %482 = add i64 %463, 19
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i64*
  store i64 %476, i64* %483, align 8
  %484 = load i64, i64* %3, align 8
  %485 = load i64, i64* %310, align 8
  %486 = ashr i64 %485, 63
  store i64 %486, i64* %RDX.i, align 8
  %487 = load i64, i64* %RCX.i283, align 8
  %488 = add i64 %484, 5
  store i64 %488, i64* %3, align 8
  %489 = sext i64 %487 to i128
  %490 = and i128 %489, -18446744073709551616
  %491 = zext i64 %486 to i128
  %492 = shl nuw i128 %491, 64
  %493 = zext i64 %485 to i128
  %494 = or i128 %492, %493
  %495 = zext i64 %487 to i128
  %496 = or i128 %490, %495
  %497 = sdiv i128 %494, %496
  %498 = trunc i128 %497 to i64
  %499 = and i128 %497, 18446744073709551615
  %500 = sext i64 %498 to i128
  %501 = and i128 %500, -18446744073709551616
  %502 = or i128 %501, %499
  %503 = icmp eq i128 %497, %502
  br i1 %503, label %506, label %504

; <label>:504:                                    ; preds = %block_.L_400c7a
  %505 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %488, %struct.Memory* %MEMORY.1)
  %.pre5 = load i64, i64* %RAX.i407, align 8
  %.pre6 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit329

; <label>:506:                                    ; preds = %block_.L_400c7a
  %507 = srem i128 %494, %496
  %508 = trunc i128 %507 to i64
  store i64 %498, i64* %310, align 8
  store i64 %508, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit329

routine_idivq__rcx.exit329:                       ; preds = %506, %504
  %509 = phi i64 [ %.pre6, %504 ], [ %488, %506 ]
  %510 = phi i64 [ %.pre5, %504 ], [ %498, %506 ]
  %511 = phi %struct.Memory* [ %505, %504 ], [ %MEMORY.1, %506 ]
  %512 = add i64 %510, -1
  %513 = shl i64 %512, 6
  store i64 %513, i64* %RAX.i407, align 8
  %514 = lshr i64 %512, 58
  %515 = trunc i64 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %62, align 1
  %517 = trunc i64 %513 to i32
  %518 = and i32 %517, 192
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %63, align 1
  store i8 0, i8* %64, align 1
  %523 = icmp eq i64 %513, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %65, align 1
  %525 = lshr i64 %512, 57
  %526 = trunc i64 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %66, align 1
  store i8 0, i8* %67, align 1
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -80
  %530 = add i64 %509, 12
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i64*
  %532 = load i64, i64* %531, align 8
  %533 = add i64 %513, %532
  store i64 %533, i64* %RSI.i188, align 8
  %534 = icmp ult i64 %533, %532
  %535 = icmp ult i64 %533, %513
  %536 = or i1 %534, %535
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %62, align 1
  %538 = trunc i64 %533 to i32
  %539 = and i32 %538, 255
  %540 = tail call i32 @llvm.ctpop.i32(i32 %539)
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  %543 = xor i8 %542, 1
  store i8 %543, i8* %63, align 1
  %544 = xor i64 %532, %533
  %545 = lshr i64 %544, 4
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %64, align 1
  %548 = icmp eq i64 %533, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %65, align 1
  %550 = lshr i64 %533, 63
  %551 = trunc i64 %550 to i8
  store i8 %551, i8* %66, align 1
  %552 = lshr i64 %532, 63
  %553 = lshr i64 %512, 57
  %554 = and i64 %553, 1
  %555 = xor i64 %550, %552
  %556 = xor i64 %550, %554
  %557 = add nuw nsw i64 %555, %556
  %558 = icmp eq i64 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %67, align 1
  %560 = add i64 %533, 8
  %561 = add i64 %509, 19
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RAX.i407, align 8
  %564 = add i64 %528, -8
  %565 = add i64 %509, 23
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RSI.i188, align 8
  %568 = add i64 %528, -56
  %569 = add i64 %509, 27
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %571, -1
  %573 = shl i64 %572, 6
  store i64 %573, i64* %RDI.i140, align 8
  %574 = add i64 %573, %567
  store i64 %574, i64* %RSI.i188, align 8
  %575 = icmp ult i64 %574, %567
  %576 = icmp ult i64 %574, %573
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %62, align 1
  %579 = trunc i64 %574 to i32
  %580 = and i32 %579, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %63, align 1
  %585 = xor i64 %567, %574
  %586 = lshr i64 %585, 4
  %587 = trunc i64 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %64, align 1
  %589 = icmp eq i64 %574, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %65, align 1
  %591 = lshr i64 %574, 63
  %592 = trunc i64 %591 to i8
  store i8 %592, i8* %66, align 1
  %593 = lshr i64 %567, 63
  %594 = lshr i64 %572, 57
  %595 = and i64 %594, 1
  %596 = xor i64 %591, %593
  %597 = xor i64 %591, %595
  %598 = add nuw nsw i64 %596, %597
  %599 = icmp eq i64 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %67, align 1
  %601 = add i64 %574, 8
  %602 = load i64, i64* %RAX.i407, align 8
  %603 = add i64 %509, 42
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %601 to i64*
  store i64 %602, i64* %604, align 8
  %605 = load i64, i64* %RBP.i, align 8
  %606 = add i64 %605, -8
  %607 = load i64, i64* %3, align 8
  %608 = add i64 %607, 4
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %606 to i64*
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %RAX.i407, align 8
  %611 = add i64 %605, -56
  %612 = add i64 %607, 8
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RSI.i188, align 8
  %615 = add i64 %605, -88
  %616 = add i64 %607, 12
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i64*
  store i64 %610, i64* %617, align 8
  %618 = load i64, i64* %RSI.i188, align 8
  %619 = load i64, i64* %3, align 8
  store i64 %618, i64* %RAX.i407, align 8
  %620 = ashr i64 %618, 63
  store i64 %620, i64* %RDX.i, align 8
  %621 = load i64, i64* %RCX.i283, align 8
  %622 = add i64 %619, 8
  store i64 %622, i64* %3, align 8
  %623 = sext i64 %621 to i128
  %624 = and i128 %623, -18446744073709551616
  %625 = zext i64 %620 to i128
  %626 = shl nuw i128 %625, 64
  %627 = zext i64 %618 to i128
  %628 = or i128 %626, %627
  %629 = zext i64 %621 to i128
  %630 = or i128 %624, %629
  %631 = sdiv i128 %628, %630
  %632 = trunc i128 %631 to i64
  %633 = and i128 %631, 18446744073709551615
  %634 = sext i64 %632 to i128
  %635 = and i128 %634, -18446744073709551616
  %636 = or i128 %635, %633
  %637 = icmp eq i128 %631, %636
  br i1 %637, label %640, label %638

; <label>:638:                                    ; preds = %routine_idivq__rcx.exit329
  %639 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %622, %struct.Memory* %511)
  %.pre7 = load i64, i64* %RAX.i407, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit281

; <label>:640:                                    ; preds = %routine_idivq__rcx.exit329
  %641 = srem i128 %628, %630
  %642 = trunc i128 %641 to i64
  store i64 %632, i64* %310, align 8
  store i64 %642, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit281

routine_idivq__rcx.exit281:                       ; preds = %640, %638
  %643 = phi i64 [ %.pre8, %638 ], [ %622, %640 ]
  %644 = phi i64 [ %.pre7, %638 ], [ %632, %640 ]
  %645 = phi %struct.Memory* [ %639, %638 ], [ %511, %640 ]
  %646 = add i64 %644, -1
  %647 = shl i64 %646, 6
  store i64 %647, i64* %RAX.i407, align 8
  %648 = lshr i64 %646, 58
  %649 = trunc i64 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %62, align 1
  %651 = trunc i64 %647 to i32
  %652 = and i32 %651, 192
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %63, align 1
  store i8 0, i8* %64, align 1
  %657 = icmp eq i64 %647, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %65, align 1
  %659 = lshr i64 %646, 57
  %660 = trunc i64 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %66, align 1
  store i8 0, i8* %67, align 1
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -88
  %664 = add i64 %643, 12
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  %667 = add i64 %647, %666
  store i64 %667, i64* %RSI.i188, align 8
  %668 = icmp ult i64 %667, %666
  %669 = icmp ult i64 %667, %647
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %62, align 1
  %672 = trunc i64 %667 to i32
  %673 = and i32 %672, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %63, align 1
  %678 = xor i64 %666, %667
  %679 = lshr i64 %678, 4
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %64, align 1
  %682 = icmp eq i64 %667, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %65, align 1
  %684 = lshr i64 %667, 63
  %685 = trunc i64 %684 to i8
  store i8 %685, i8* %66, align 1
  %686 = lshr i64 %666, 63
  %687 = lshr i64 %646, 57
  %688 = and i64 %687, 1
  %689 = xor i64 %684, %686
  %690 = xor i64 %684, %688
  %691 = add nuw nsw i64 %689, %690
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %67, align 1
  %694 = add i64 %667, 16
  %695 = add i64 %643, 19
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RAX.i407, align 8
  %698 = add i64 %662, -8
  %699 = add i64 %643, 23
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i64*
  %701 = load i64, i64* %700, align 8
  store i64 %701, i64* %RSI.i188, align 8
  %702 = add i64 %662, -56
  %703 = add i64 %643, 27
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  %706 = add i64 %705, -1
  %707 = shl i64 %706, 6
  store i64 %707, i64* %RDI.i140, align 8
  %708 = add i64 %707, %701
  store i64 %708, i64* %RSI.i188, align 8
  %709 = icmp ult i64 %708, %701
  %710 = icmp ult i64 %708, %707
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %62, align 1
  %713 = trunc i64 %708 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %63, align 1
  %719 = xor i64 %701, %708
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %64, align 1
  %723 = icmp eq i64 %708, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %65, align 1
  %725 = lshr i64 %708, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %66, align 1
  %727 = lshr i64 %701, 63
  %728 = lshr i64 %706, 57
  %729 = and i64 %728, 1
  %730 = xor i64 %725, %727
  %731 = xor i64 %725, %729
  %732 = add nuw nsw i64 %730, %731
  %733 = icmp eq i64 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %67, align 1
  %735 = add i64 %708, 16
  %736 = load i64, i64* %RAX.i407, align 8
  %737 = add i64 %643, 42
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %735 to i64*
  store i64 %736, i64* %738, align 8
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -8
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i407, align 8
  %745 = add i64 %739, -56
  %746 = add i64 %741, 8
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RSI.i188, align 8
  %749 = add i64 %739, -96
  %750 = add i64 %741, 12
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  store i64 %744, i64* %751, align 8
  %752 = load i64, i64* %RSI.i188, align 8
  %753 = load i64, i64* %3, align 8
  store i64 %752, i64* %RAX.i407, align 8
  %754 = ashr i64 %752, 63
  store i64 %754, i64* %RDX.i, align 8
  %755 = load i64, i64* %RCX.i283, align 8
  %756 = add i64 %753, 8
  store i64 %756, i64* %3, align 8
  %757 = sext i64 %755 to i128
  %758 = and i128 %757, -18446744073709551616
  %759 = zext i64 %754 to i128
  %760 = shl nuw i128 %759, 64
  %761 = zext i64 %752 to i128
  %762 = or i128 %760, %761
  %763 = zext i64 %755 to i128
  %764 = or i128 %758, %763
  %765 = sdiv i128 %762, %764
  %766 = trunc i128 %765 to i64
  %767 = and i128 %765, 18446744073709551615
  %768 = sext i64 %766 to i128
  %769 = and i128 %768, -18446744073709551616
  %770 = or i128 %769, %767
  %771 = icmp eq i128 %765, %770
  br i1 %771, label %774, label %772

; <label>:772:                                    ; preds = %routine_idivq__rcx.exit281
  %773 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %756, %struct.Memory* %645)
  %.pre9 = load i64, i64* %RAX.i407, align 8
  %.pre10 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit234

; <label>:774:                                    ; preds = %routine_idivq__rcx.exit281
  %775 = srem i128 %762, %764
  %776 = trunc i128 %775 to i64
  store i64 %766, i64* %310, align 8
  store i64 %776, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit234

routine_idivq__rcx.exit234:                       ; preds = %774, %772
  %777 = phi i64 [ %.pre10, %772 ], [ %756, %774 ]
  %778 = phi i64 [ %.pre9, %772 ], [ %766, %774 ]
  %779 = phi %struct.Memory* [ %773, %772 ], [ %645, %774 ]
  %780 = add i64 %778, -1
  %781 = shl i64 %780, 6
  store i64 %781, i64* %RAX.i407, align 8
  %782 = lshr i64 %780, 58
  %783 = trunc i64 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %62, align 1
  %785 = trunc i64 %781 to i32
  %786 = and i32 %785, 192
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %63, align 1
  store i8 0, i8* %64, align 1
  %791 = icmp eq i64 %781, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %65, align 1
  %793 = lshr i64 %780, 57
  %794 = trunc i64 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %66, align 1
  store i8 0, i8* %67, align 1
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -96
  %798 = add i64 %777, 12
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  %801 = add i64 %781, %800
  store i64 %801, i64* %RSI.i188, align 8
  %802 = icmp ult i64 %801, %800
  %803 = icmp ult i64 %801, %781
  %804 = or i1 %802, %803
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %62, align 1
  %806 = trunc i64 %801 to i32
  %807 = and i32 %806, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %63, align 1
  %812 = xor i64 %800, %801
  %813 = lshr i64 %812, 4
  %814 = trunc i64 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %64, align 1
  %816 = icmp eq i64 %801, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %65, align 1
  %818 = lshr i64 %801, 63
  %819 = trunc i64 %818 to i8
  store i8 %819, i8* %66, align 1
  %820 = lshr i64 %800, 63
  %821 = lshr i64 %780, 57
  %822 = and i64 %821, 1
  %823 = xor i64 %818, %820
  %824 = xor i64 %818, %822
  %825 = add nuw nsw i64 %823, %824
  %826 = icmp eq i64 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %67, align 1
  %828 = inttoptr i64 %801 to i64*
  %829 = add i64 %777, 18
  store i64 %829, i64* %3, align 8
  %830 = load i64, i64* %828, align 8
  store i64 %830, i64* %RAX.i407, align 8
  %831 = add i64 %796, -8
  %832 = add i64 %777, 22
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %RSI.i188, align 8
  %835 = add i64 %796, -56
  %836 = add i64 %777, 26
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  %839 = add i64 %838, -1
  %840 = shl i64 %839, 6
  store i64 %840, i64* %RDI.i140, align 8
  %841 = add i64 %840, %834
  store i64 %841, i64* %RSI.i188, align 8
  %842 = icmp ult i64 %841, %834
  %843 = icmp ult i64 %841, %840
  %844 = or i1 %842, %843
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %62, align 1
  %846 = trunc i64 %841 to i32
  %847 = and i32 %846, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %63, align 1
  %852 = xor i64 %834, %841
  %853 = lshr i64 %852, 4
  %854 = trunc i64 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %64, align 1
  %856 = icmp eq i64 %841, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %65, align 1
  %858 = lshr i64 %841, 63
  %859 = trunc i64 %858 to i8
  store i8 %859, i8* %66, align 1
  %860 = lshr i64 %834, 63
  %861 = lshr i64 %839, 57
  %862 = and i64 %861, 1
  %863 = xor i64 %858, %860
  %864 = xor i64 %858, %862
  %865 = add nuw nsw i64 %863, %864
  %866 = icmp eq i64 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %67, align 1
  %868 = inttoptr i64 %841 to i64*
  %869 = load i64, i64* %RAX.i407, align 8
  %870 = add i64 %777, 40
  store i64 %870, i64* %3, align 8
  store i64 %869, i64* %868, align 8
  %871 = load i64, i64* %RBP.i, align 8
  %872 = add i64 %871, -8
  %873 = load i64, i64* %3, align 8
  %874 = add i64 %873, 4
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %872 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX.i407, align 8
  %877 = add i64 %871, -56
  %878 = add i64 %873, 8
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i64*
  %880 = load i64, i64* %879, align 8
  store i64 %880, i64* %RSI.i188, align 8
  %881 = add i64 %871, -104
  %882 = add i64 %873, 12
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i64*
  store i64 %876, i64* %883, align 8
  %884 = load i64, i64* %RSI.i188, align 8
  %885 = load i64, i64* %3, align 8
  store i64 %884, i64* %RAX.i407, align 8
  %886 = ashr i64 %884, 63
  store i64 %886, i64* %RDX.i, align 8
  %887 = load i64, i64* %RCX.i283, align 8
  %888 = add i64 %885, 8
  store i64 %888, i64* %3, align 8
  %889 = sext i64 %887 to i128
  %890 = and i128 %889, -18446744073709551616
  %891 = zext i64 %886 to i128
  %892 = shl nuw i128 %891, 64
  %893 = zext i64 %884 to i128
  %894 = or i128 %892, %893
  %895 = zext i64 %887 to i128
  %896 = or i128 %890, %895
  %897 = sdiv i128 %894, %896
  %898 = trunc i128 %897 to i64
  %899 = and i128 %897, 18446744073709551615
  %900 = sext i64 %898 to i128
  %901 = and i128 %900, -18446744073709551616
  %902 = or i128 %901, %899
  %903 = icmp eq i128 %897, %902
  br i1 %903, label %906, label %904

; <label>:904:                                    ; preds = %routine_idivq__rcx.exit234
  %905 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %888, %struct.Memory* %779)
  %.pre11 = load i64, i64* %RAX.i407, align 8
  %.pre12 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit186

; <label>:906:                                    ; preds = %routine_idivq__rcx.exit234
  %907 = srem i128 %894, %896
  %908 = trunc i128 %907 to i64
  store i64 %898, i64* %310, align 8
  store i64 %908, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit186

routine_idivq__rcx.exit186:                       ; preds = %906, %904
  %909 = phi i64 [ %.pre12, %904 ], [ %888, %906 ]
  %910 = phi i64 [ %.pre11, %904 ], [ %898, %906 ]
  %911 = phi %struct.Memory* [ %905, %904 ], [ %779, %906 ]
  %912 = add i64 %910, -1
  %913 = shl i64 %912, 6
  store i64 %913, i64* %RAX.i407, align 8
  %914 = lshr i64 %912, 58
  %915 = trunc i64 %914 to i8
  %916 = and i8 %915, 1
  store i8 %916, i8* %62, align 1
  %917 = trunc i64 %913 to i32
  %918 = and i32 %917, 192
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %63, align 1
  store i8 0, i8* %64, align 1
  %923 = icmp eq i64 %913, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %65, align 1
  %925 = lshr i64 %912, 57
  %926 = trunc i64 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %66, align 1
  store i8 0, i8* %67, align 1
  %928 = load i64, i64* %RBP.i, align 8
  %929 = add i64 %928, -104
  %930 = add i64 %909, 12
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i64*
  %932 = load i64, i64* %931, align 8
  %933 = add i64 %913, %932
  store i64 %933, i64* %RSI.i188, align 8
  %934 = icmp ult i64 %933, %932
  %935 = icmp ult i64 %933, %913
  %936 = or i1 %934, %935
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %62, align 1
  %938 = trunc i64 %933 to i32
  %939 = and i32 %938, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %63, align 1
  %944 = xor i64 %932, %933
  %945 = lshr i64 %944, 4
  %946 = trunc i64 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %64, align 1
  %948 = icmp eq i64 %933, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %65, align 1
  %950 = lshr i64 %933, 63
  %951 = trunc i64 %950 to i8
  store i8 %951, i8* %66, align 1
  %952 = lshr i64 %932, 63
  %953 = lshr i64 %912, 57
  %954 = and i64 %953, 1
  %955 = xor i64 %950, %952
  %956 = xor i64 %950, %954
  %957 = add nuw nsw i64 %955, %956
  %958 = icmp eq i64 %957, 2
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %67, align 1
  %960 = inttoptr i64 %933 to i64*
  %961 = add i64 %909, 18
  store i64 %961, i64* %3, align 8
  %962 = load i64, i64* %960, align 8
  store i64 %962, i64* %RAX.i407, align 8
  %963 = add i64 %928, -8
  %964 = add i64 %909, 22
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %RSI.i188, align 8
  %967 = add i64 %928, -56
  %968 = add i64 %909, 26
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i64*
  %970 = load i64, i64* %969, align 8
  %971 = add i64 %970, -1
  %972 = shl i64 %971, 6
  store i64 %972, i64* %RDI.i140, align 8
  %973 = add i64 %972, %966
  store i64 %973, i64* %RSI.i188, align 8
  %974 = icmp ult i64 %973, %966
  %975 = icmp ult i64 %973, %972
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %62, align 1
  %978 = trunc i64 %973 to i32
  %979 = and i32 %978, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %63, align 1
  %984 = xor i64 %966, %973
  %985 = lshr i64 %984, 4
  %986 = trunc i64 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %64, align 1
  %988 = icmp eq i64 %973, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %65, align 1
  %990 = lshr i64 %973, 63
  %991 = trunc i64 %990 to i8
  store i8 %991, i8* %66, align 1
  %992 = lshr i64 %966, 63
  %993 = lshr i64 %971, 57
  %994 = and i64 %993, 1
  %995 = xor i64 %990, %992
  %996 = xor i64 %990, %994
  %997 = add nuw nsw i64 %995, %996
  %998 = icmp eq i64 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %67, align 1
  %1000 = add i64 %973, 56
  %1001 = load i64, i64* %RAX.i407, align 8
  %1002 = add i64 %909, 41
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1000 to i64*
  store i64 %1001, i64* %1003, align 8
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -8
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1005 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RAX.i407, align 8
  %1010 = add i64 %1004, -56
  %1011 = add i64 %1006, 8
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %RSI.i188, align 8
  %1014 = add i64 %1004, -112
  %1015 = add i64 %1006, 12
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i64*
  store i64 %1009, i64* %1016, align 8
  %1017 = load i64, i64* %RSI.i188, align 8
  %1018 = load i64, i64* %3, align 8
  store i64 %1017, i64* %RAX.i407, align 8
  %1019 = ashr i64 %1017, 63
  store i64 %1019, i64* %RDX.i, align 8
  %1020 = load i64, i64* %RCX.i283, align 8
  %1021 = add i64 %1018, 8
  store i64 %1021, i64* %3, align 8
  %1022 = sext i64 %1020 to i128
  %1023 = and i128 %1022, -18446744073709551616
  %1024 = zext i64 %1019 to i128
  %1025 = shl nuw i128 %1024, 64
  %1026 = zext i64 %1017 to i128
  %1027 = or i128 %1025, %1026
  %1028 = zext i64 %1020 to i128
  %1029 = or i128 %1023, %1028
  %1030 = sdiv i128 %1027, %1029
  %1031 = trunc i128 %1030 to i64
  %1032 = and i128 %1030, 18446744073709551615
  %1033 = sext i64 %1031 to i128
  %1034 = and i128 %1033, -18446744073709551616
  %1035 = or i128 %1034, %1032
  %1036 = icmp eq i128 %1030, %1035
  br i1 %1036, label %1039, label %1037

; <label>:1037:                                   ; preds = %routine_idivq__rcx.exit186
  %1038 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1021, %struct.Memory* %911)
  %.pre13 = load i64, i64* %RAX.i407, align 8
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit138

; <label>:1039:                                   ; preds = %routine_idivq__rcx.exit186
  %1040 = srem i128 %1027, %1029
  %1041 = trunc i128 %1040 to i64
  store i64 %1031, i64* %310, align 8
  store i64 %1041, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit138

routine_idivq__rcx.exit138:                       ; preds = %1039, %1037
  %1042 = phi i64 [ %.pre14, %1037 ], [ %1021, %1039 ]
  %1043 = phi i64 [ %.pre13, %1037 ], [ %1031, %1039 ]
  %1044 = phi %struct.Memory* [ %1038, %1037 ], [ %911, %1039 ]
  %1045 = add i64 %1043, -1
  %1046 = shl i64 %1045, 6
  store i64 %1046, i64* %RAX.i407, align 8
  %1047 = lshr i64 %1045, 58
  %1048 = trunc i64 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %62, align 1
  %1050 = trunc i64 %1046 to i32
  %1051 = and i32 %1050, 192
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %63, align 1
  store i8 0, i8* %64, align 1
  %1056 = icmp eq i64 %1046, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %65, align 1
  %1058 = lshr i64 %1045, 57
  %1059 = trunc i64 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %66, align 1
  store i8 0, i8* %67, align 1
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -112
  %1063 = add i64 %1042, 12
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  %1066 = add i64 %1046, %1065
  store i64 %1066, i64* %RSI.i188, align 8
  %1067 = icmp ult i64 %1066, %1065
  %1068 = icmp ult i64 %1066, %1046
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %62, align 1
  %1071 = trunc i64 %1066 to i32
  %1072 = and i32 %1071, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %63, align 1
  %1077 = xor i64 %1065, %1066
  %1078 = lshr i64 %1077, 4
  %1079 = trunc i64 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %64, align 1
  %1081 = icmp eq i64 %1066, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %65, align 1
  %1083 = lshr i64 %1066, 63
  %1084 = trunc i64 %1083 to i8
  store i8 %1084, i8* %66, align 1
  %1085 = lshr i64 %1065, 63
  %1086 = lshr i64 %1045, 57
  %1087 = and i64 %1086, 1
  %1088 = xor i64 %1083, %1085
  %1089 = xor i64 %1083, %1087
  %1090 = add nuw nsw i64 %1088, %1089
  %1091 = icmp eq i64 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %67, align 1
  %1093 = add i64 %1066, 48
  %1094 = add i64 %1042, 19
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i64*
  %1096 = load i64, i64* %1095, align 8
  store i64 %1096, i64* %RAX.i407, align 8
  %1097 = add i64 %1061, -8
  %1098 = add i64 %1042, 23
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RSI.i188, align 8
  %1101 = add i64 %1061, -56
  %1102 = add i64 %1042, 27
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i64*
  %1104 = load i64, i64* %1103, align 8
  %1105 = add i64 %1104, -1
  %1106 = shl i64 %1105, 6
  store i64 %1106, i64* %RDI.i140, align 8
  %1107 = add i64 %1106, %1100
  store i64 %1107, i64* %RSI.i188, align 8
  %1108 = icmp ult i64 %1107, %1100
  %1109 = icmp ult i64 %1107, %1106
  %1110 = or i1 %1108, %1109
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %62, align 1
  %1112 = trunc i64 %1107 to i32
  %1113 = and i32 %1112, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %63, align 1
  %1118 = xor i64 %1100, %1107
  %1119 = lshr i64 %1118, 4
  %1120 = trunc i64 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %64, align 1
  %1122 = icmp eq i64 %1107, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %65, align 1
  %1124 = lshr i64 %1107, 63
  %1125 = trunc i64 %1124 to i8
  store i8 %1125, i8* %66, align 1
  %1126 = lshr i64 %1100, 63
  %1127 = lshr i64 %1105, 57
  %1128 = and i64 %1127, 1
  %1129 = xor i64 %1124, %1126
  %1130 = xor i64 %1124, %1128
  %1131 = add nuw nsw i64 %1129, %1130
  %1132 = icmp eq i64 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %67, align 1
  %1134 = add i64 %1107, 48
  %1135 = load i64, i64* %RAX.i407, align 8
  %1136 = add i64 %1042, 42
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1134 to i64*
  store i64 %1135, i64* %1137, align 8
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -56
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1139 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RAX.i407, align 8
  %1144 = ashr i64 %1143, 63
  store i64 %1144, i64* %RDX.i, align 8
  %1145 = load i64, i64* %RCX.i283, align 8
  %1146 = add i64 %1140, 9
  store i64 %1146, i64* %3, align 8
  %1147 = sext i64 %1145 to i128
  %1148 = and i128 %1147, -18446744073709551616
  %1149 = zext i64 %1144 to i128
  %1150 = shl nuw i128 %1149, 64
  %1151 = zext i64 %1143 to i128
  %1152 = or i128 %1150, %1151
  %1153 = zext i64 %1145 to i128
  %1154 = or i128 %1148, %1153
  %1155 = sdiv i128 %1152, %1154
  %1156 = trunc i128 %1155 to i64
  %1157 = and i128 %1155, 18446744073709551615
  %1158 = sext i64 %1156 to i128
  %1159 = and i128 %1158, -18446744073709551616
  %1160 = or i128 %1159, %1157
  %1161 = icmp eq i128 %1155, %1160
  br i1 %1161, label %1164, label %1162

; <label>:1162:                                   ; preds = %routine_idivq__rcx.exit138
  %1163 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1146, %struct.Memory* %1044)
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %RAX.i407, align 8
  %.pre17 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit

; <label>:1164:                                   ; preds = %routine_idivq__rcx.exit138
  %1165 = srem i128 %1152, %1154
  %1166 = trunc i128 %1165 to i64
  store i64 %1156, i64* %310, align 8
  store i64 %1166, i64* %RDX.i, align 8
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %66, align 1
  store i8 0, i8* %67, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %1164, %1162
  %1167 = phi i64 [ %.pre17, %1162 ], [ %1146, %1164 ]
  %1168 = phi i64 [ %.pre16, %1162 ], [ %1156, %1164 ]
  %1169 = phi i64 [ %.pre15, %1162 ], [ %1138, %1164 ]
  %1170 = phi %struct.Memory* [ %1163, %1162 ], [ %1044, %1164 ]
  %1171 = add i64 %1169, -56
  %1172 = add i64 %1167, 4
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i64*
  store i64 %1168, i64* %1173, align 8
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -24
  %1176 = load i64, i64* %3, align 8
  %1177 = add i64 %1176, 4
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1175 to i64*
  %1179 = load i64, i64* %1178, align 8
  store i64 %1179, i64* %RAX.i407, align 8
  %1180 = add i64 %1174, -8
  %1181 = add i64 %1176, 8
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RCX.i283, align 8
  %1184 = add i64 %1174, -56
  %1185 = add i64 %1176, 12
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i64*
  %1187 = load i64, i64* %1186, align 8
  %1188 = add i64 %1187, -1
  %1189 = shl i64 %1188, 6
  store i64 %1189, i64* %RSI.i188, align 8
  %1190 = add i64 %1189, %1183
  store i64 %1190, i64* %RCX.i283, align 8
  %1191 = icmp ult i64 %1190, %1183
  %1192 = icmp ult i64 %1190, %1189
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %62, align 1
  %1195 = trunc i64 %1190 to i32
  %1196 = and i32 %1195, 255
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %63, align 1
  %1201 = xor i64 %1183, %1190
  %1202 = lshr i64 %1201, 4
  %1203 = trunc i64 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %64, align 1
  %1205 = icmp eq i64 %1190, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %65, align 1
  %1207 = lshr i64 %1190, 63
  %1208 = trunc i64 %1207 to i8
  store i8 %1208, i8* %66, align 1
  %1209 = lshr i64 %1183, 63
  %1210 = lshr i64 %1188, 57
  %1211 = and i64 %1210, 1
  %1212 = xor i64 %1207, %1209
  %1213 = xor i64 %1207, %1211
  %1214 = add nuw nsw i64 %1212, %1213
  %1215 = icmp eq i64 %1214, 2
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %67, align 1
  %1217 = add i64 %1190, 8
  %1218 = load i64, i64* %RAX.i407, align 8
  %1219 = add i64 %1176, 27
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1217 to i64*
  store i64 %1218, i64* %1220, align 8
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -32
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1222 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %RAX.i407, align 8
  %1227 = add i64 %1221, -8
  %1228 = add i64 %1223, 8
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %RCX.i283, align 8
  %1231 = add i64 %1221, -56
  %1232 = add i64 %1223, 12
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i64*
  %1234 = load i64, i64* %1233, align 8
  %1235 = add i64 %1234, -1
  %1236 = shl i64 %1235, 6
  store i64 %1236, i64* %RSI.i188, align 8
  %1237 = add i64 %1236, %1230
  store i64 %1237, i64* %RCX.i283, align 8
  %1238 = icmp ult i64 %1237, %1230
  %1239 = icmp ult i64 %1237, %1236
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %62, align 1
  %1242 = trunc i64 %1237 to i32
  %1243 = and i32 %1242, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %63, align 1
  %1248 = xor i64 %1230, %1237
  %1249 = lshr i64 %1248, 4
  %1250 = trunc i64 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %64, align 1
  %1252 = icmp eq i64 %1237, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %65, align 1
  %1254 = lshr i64 %1237, 63
  %1255 = trunc i64 %1254 to i8
  store i8 %1255, i8* %66, align 1
  %1256 = lshr i64 %1230, 63
  %1257 = lshr i64 %1235, 57
  %1258 = and i64 %1257, 1
  %1259 = xor i64 %1254, %1256
  %1260 = xor i64 %1254, %1258
  %1261 = add nuw nsw i64 %1259, %1260
  %1262 = icmp eq i64 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %67, align 1
  %1264 = add i64 %1237, 16
  %1265 = load i64, i64* %RAX.i407, align 8
  %1266 = add i64 %1223, 27
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1264 to i64*
  store i64 %1265, i64* %1267, align 8
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -40
  %1270 = load i64, i64* %3, align 8
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1269 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX.i407, align 8
  %1274 = add i64 %1268, -8
  %1275 = add i64 %1270, 8
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RCX.i283, align 8
  %1278 = add i64 %1268, -56
  %1279 = add i64 %1270, 12
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i64*
  %1281 = load i64, i64* %1280, align 8
  %1282 = add i64 %1281, -1
  %1283 = shl i64 %1282, 6
  store i64 %1283, i64* %RSI.i188, align 8
  %1284 = add i64 %1283, %1277
  store i64 %1284, i64* %RCX.i283, align 8
  %1285 = icmp ult i64 %1284, %1277
  %1286 = icmp ult i64 %1284, %1283
  %1287 = or i1 %1285, %1286
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %62, align 1
  %1289 = trunc i64 %1284 to i32
  %1290 = and i32 %1289, 255
  %1291 = tail call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  store i8 %1294, i8* %63, align 1
  %1295 = xor i64 %1277, %1284
  %1296 = lshr i64 %1295, 4
  %1297 = trunc i64 %1296 to i8
  %1298 = and i8 %1297, 1
  store i8 %1298, i8* %64, align 1
  %1299 = icmp eq i64 %1284, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %65, align 1
  %1301 = lshr i64 %1284, 63
  %1302 = trunc i64 %1301 to i8
  store i8 %1302, i8* %66, align 1
  %1303 = lshr i64 %1277, 63
  %1304 = lshr i64 %1282, 57
  %1305 = and i64 %1304, 1
  %1306 = xor i64 %1301, %1303
  %1307 = xor i64 %1301, %1305
  %1308 = add nuw nsw i64 %1306, %1307
  %1309 = icmp eq i64 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %67, align 1
  %1311 = inttoptr i64 %1284 to i64*
  %1312 = load i64, i64* %RAX.i407, align 8
  %1313 = add i64 %1270, 26
  store i64 %1313, i64* %3, align 8
  store i64 %1312, i64* %1311, align 8
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -40
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1315 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %RAX.i407, align 8
  %1320 = add i64 %1314, -8
  %1321 = add i64 %1316, 8
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %RCX.i283, align 8
  %1324 = add i64 %1314, -56
  %1325 = add i64 %1316, 12
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  %1328 = add i64 %1327, -1
  %1329 = shl i64 %1328, 6
  store i64 %1329, i64* %RSI.i188, align 8
  %1330 = add i64 %1329, %1323
  store i64 %1330, i64* %RCX.i283, align 8
  %1331 = icmp ult i64 %1330, %1323
  %1332 = icmp ult i64 %1330, %1329
  %1333 = or i1 %1331, %1332
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %62, align 1
  %1335 = trunc i64 %1330 to i32
  %1336 = and i32 %1335, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %63, align 1
  %1341 = xor i64 %1323, %1330
  %1342 = lshr i64 %1341, 4
  %1343 = trunc i64 %1342 to i8
  %1344 = and i8 %1343, 1
  store i8 %1344, i8* %64, align 1
  %1345 = icmp eq i64 %1330, 0
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %65, align 1
  %1347 = lshr i64 %1330, 63
  %1348 = trunc i64 %1347 to i8
  store i8 %1348, i8* %66, align 1
  %1349 = lshr i64 %1323, 63
  %1350 = lshr i64 %1328, 57
  %1351 = and i64 %1350, 1
  %1352 = xor i64 %1347, %1349
  %1353 = xor i64 %1347, %1351
  %1354 = add nuw nsw i64 %1352, %1353
  %1355 = icmp eq i64 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %67, align 1
  %1357 = add i64 %1330, 56
  %1358 = load i64, i64* %RAX.i407, align 8
  %1359 = add i64 %1316, 27
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1357 to i64*
  store i64 %1358, i64* %1360, align 8
  %1361 = load i64, i64* %RBP.i, align 8
  %1362 = add i64 %1361, -48
  %1363 = load i64, i64* %3, align 8
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1362 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %RAX.i407, align 8
  %1367 = add i64 %1361, -8
  %1368 = add i64 %1363, 8
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i64*
  %1370 = load i64, i64* %1369, align 8
  store i64 %1370, i64* %RCX.i283, align 8
  %1371 = add i64 %1361, -56
  %1372 = add i64 %1363, 12
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  %1375 = add i64 %1374, -1
  %1376 = shl i64 %1375, 6
  store i64 %1376, i64* %RSI.i188, align 8
  %1377 = add i64 %1376, %1370
  store i64 %1377, i64* %RCX.i283, align 8
  %1378 = icmp ult i64 %1377, %1370
  %1379 = icmp ult i64 %1377, %1376
  %1380 = or i1 %1378, %1379
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %62, align 1
  %1382 = trunc i64 %1377 to i32
  %1383 = and i32 %1382, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %63, align 1
  %1388 = xor i64 %1370, %1377
  %1389 = lshr i64 %1388, 4
  %1390 = trunc i64 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %64, align 1
  %1392 = icmp eq i64 %1377, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %65, align 1
  %1394 = lshr i64 %1377, 63
  %1395 = trunc i64 %1394 to i8
  store i8 %1395, i8* %66, align 1
  %1396 = lshr i64 %1370, 63
  %1397 = lshr i64 %1375, 57
  %1398 = and i64 %1397, 1
  %1399 = xor i64 %1394, %1396
  %1400 = xor i64 %1394, %1398
  %1401 = add nuw nsw i64 %1399, %1400
  %1402 = icmp eq i64 %1401, 2
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %67, align 1
  %1404 = add i64 %1377, 48
  %1405 = load i64, i64* %RAX.i407, align 8
  %1406 = add i64 %1363, 27
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1404 to i64*
  store i64 %1405, i64* %1407, align 8
  %1408 = load i64, i64* %3, align 8
  %1409 = add i64 %1408, -554
  store i64 %1409, i64* %3, align 8
  br label %block_.L_400c1a
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_movq__rcx__0x30__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x39__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -57
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_400c6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x30__rsi____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setg__dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil__MINUS0x39__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -57
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x39__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -57
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_400c7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400e49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rsi____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RDI, align 8
  %7 = icmp eq i64 %3, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rax__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rsi____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x38__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rsi____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__0x30__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 48
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RSI, align 8
  %7 = icmp eq i64 %3, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
