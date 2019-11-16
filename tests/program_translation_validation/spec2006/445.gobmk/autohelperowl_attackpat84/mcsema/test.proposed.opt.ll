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

declare %struct.Memory* @sub_44da20.owl_escape_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_477710.somewhere(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperowl_attackpat84(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i167 = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i167, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i164 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i164, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -12
  %55 = load i32, i32* %EDX.i, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i159 = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i32, i32* %ECX.i159, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i156 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -4
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %RAX.i156, align 8
  %RCX.i154 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %74 = shl nsw i64 %73, 2
  %75 = add nsw i64 %74, 11901168
  %76 = add i64 %69, 11
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RCX.i154, align 8
  %80 = add i64 %67, -8
  %81 = add i64 %69, 14
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %78
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RCX.i154, align 8
  %86 = icmp ult i32 %84, %78
  %87 = icmp ult i32 %84, %83
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %14, align 1
  %90 = and i32 %84, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %21, align 1
  %95 = xor i32 %83, %78
  %96 = xor i32 %95, %84
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %27, align 1
  %100 = icmp eq i32 %84, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %30, align 1
  %102 = lshr i32 %84, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %33, align 1
  %104 = lshr i32 %78, 31
  %105 = lshr i32 %83, 31
  %106 = xor i32 %102, %104
  %107 = xor i32 %102, %105
  %108 = add nuw nsw i32 %106, %107
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %39, align 1
  %111 = add i64 %67, -20
  %112 = add i64 %69, 17
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  store i32 %84, i32* %113, align 4
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -4
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %RAX.i156, align 8
  %121 = shl nsw i64 %120, 2
  %122 = add nsw i64 %121, 11908272
  %123 = add i64 %116, 11
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RCX.i154, align 8
  %127 = add i64 %114, -8
  %128 = add i64 %116, 14
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, %125
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RCX.i154, align 8
  %133 = icmp ult i32 %131, %125
  %134 = icmp ult i32 %131, %130
  %135 = or i1 %133, %134
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %14, align 1
  %137 = and i32 %131, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %21, align 1
  %142 = xor i32 %130, %125
  %143 = xor i32 %142, %131
  %144 = lshr i32 %143, 4
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %27, align 1
  %147 = icmp eq i32 %131, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %30, align 1
  %149 = lshr i32 %131, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %33, align 1
  %151 = lshr i32 %125, 31
  %152 = lshr i32 %130, 31
  %153 = xor i32 %149, %151
  %154 = xor i32 %149, %152
  %155 = add nuw nsw i32 %153, %154
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %39, align 1
  %158 = add i64 %114, -24
  %159 = add i64 %116, 17
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i32*
  store i32 %131, i32* %160, align 4
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -4
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 4
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %RAX.i156, align 8
  %168 = shl nsw i64 %167, 2
  %169 = add nsw i64 %168, 11908304
  %170 = add i64 %163, 11
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RCX.i154, align 8
  %174 = add i64 %161, -8
  %175 = add i64 %163, 14
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, %172
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RCX.i154, align 8
  %180 = icmp ult i32 %178, %172
  %181 = icmp ult i32 %178, %177
  %182 = or i1 %180, %181
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %14, align 1
  %184 = and i32 %178, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1
  %189 = xor i32 %177, %172
  %190 = xor i32 %189, %178
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %27, align 1
  %194 = icmp eq i32 %178, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %30, align 1
  %196 = lshr i32 %178, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %33, align 1
  %198 = lshr i32 %172, 31
  %199 = lshr i32 %177, 31
  %200 = xor i32 %196, %198
  %201 = xor i32 %196, %199
  %202 = add nuw nsw i32 %200, %201
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %39, align 1
  %205 = add i64 %161, -28
  %206 = add i64 %163, 17
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  store i32 %178, i32* %207, align 4
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -4
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RAX.i156, align 8
  %215 = shl nsw i64 %214, 2
  %216 = add nsw i64 %215, 11908336
  %217 = add i64 %210, 11
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RCX.i154, align 8
  %221 = add i64 %208, -8
  %222 = add i64 %210, 14
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %224, %219
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RCX.i154, align 8
  %227 = icmp ult i32 %225, %219
  %228 = icmp ult i32 %225, %224
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %14, align 1
  %231 = and i32 %225, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %21, align 1
  %236 = xor i32 %224, %219
  %237 = xor i32 %236, %225
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %27, align 1
  %241 = icmp eq i32 %225, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %30, align 1
  %243 = lshr i32 %225, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %33, align 1
  %245 = lshr i32 %219, 31
  %246 = lshr i32 %224, 31
  %247 = xor i32 %243, %245
  %248 = xor i32 %243, %246
  %249 = add nuw nsw i32 %247, %248
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %39, align 1
  %252 = add i64 %208, -32
  %253 = add i64 %210, 17
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  store i32 %225, i32* %254, align 4
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 4
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RAX.i156, align 8
  %262 = shl nsw i64 %261, 2
  %263 = add nsw i64 %262, 11901264
  %264 = add i64 %257, 11
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RCX.i154, align 8
  %268 = add i64 %255, -8
  %269 = add i64 %257, 14
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, %266
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RCX.i154, align 8
  %274 = icmp ult i32 %272, %266
  %275 = icmp ult i32 %272, %271
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %271, %266
  %284 = xor i32 %283, %272
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %27, align 1
  %288 = icmp eq i32 %272, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %30, align 1
  %290 = lshr i32 %272, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %33, align 1
  %292 = lshr i32 %266, 31
  %293 = lshr i32 %271, 31
  %294 = xor i32 %290, %292
  %295 = xor i32 %290, %293
  %296 = add nuw nsw i32 %294, %295
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %39, align 1
  %299 = add i64 %255, -36
  %300 = add i64 %257, 17
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 %272, i32* %301, align 4
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -4
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, 4
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  store i64 %308, i64* %RAX.i156, align 8
  %309 = shl nsw i64 %308, 2
  %310 = add nsw i64 %309, 11902448
  %311 = add i64 %304, 11
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RCX.i154, align 8
  %315 = add i64 %302, -8
  %316 = add i64 %304, 14
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = add i32 %318, %313
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RCX.i154, align 8
  %321 = icmp ult i32 %319, %313
  %322 = icmp ult i32 %319, %318
  %323 = or i1 %321, %322
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %14, align 1
  %325 = and i32 %319, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %21, align 1
  %330 = xor i32 %318, %313
  %331 = xor i32 %330, %319
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  store i8 %334, i8* %27, align 1
  %335 = icmp eq i32 %319, 0
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %30, align 1
  %337 = lshr i32 %319, 31
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %33, align 1
  %339 = lshr i32 %313, 31
  %340 = lshr i32 %318, 31
  %341 = xor i32 %337, %339
  %342 = xor i32 %337, %340
  %343 = add nuw nsw i32 %341, %342
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %39, align 1
  %346 = add i64 %302, -40
  %347 = add i64 %304, 17
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i32*
  store i32 %319, i32* %348, align 4
  %RDI.i84 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -20
  %351 = load i64, i64* %3, align 8
  %352 = add i64 %351, 3
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %350 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RDI.i84, align 8
  %356 = add i64 %351, -421994
  %357 = add i64 %351, 8
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %call2_4b4a8d = tail call %struct.Memory* @sub_44da20.owl_escape_value(%struct.State* %0, i64 %356, %struct.Memory* %2)
  %361 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i154, align 8
  %CL.i78 = bitcast %union.anon* %59 to i8*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i79 = bitcast %union.anon* %362 to i8*
  store i8 0, i8* %R8B.i79, align 1
  %EAX.i76 = bitcast %union.anon* %66 to i32*
  %363 = load i32, i32* %EAX.i76, align 4
  store i8 0, i8* %14, align 1
  %364 = and i32 %363, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %369 = icmp eq i32 %363, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %30, align 1
  %371 = lshr i32 %363, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -41
  %375 = add i64 %361, 12
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i8*
  store i8 0, i8* %376, align 1
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 116
  %379 = add i64 %377, 6
  %380 = load i8, i8* %30, align 1
  %381 = icmp ne i8 %380, 0
  %382 = load i8, i8* %33, align 1
  %383 = icmp ne i8 %382, 0
  %384 = load i8, i8* %39, align 1
  %385 = icmp ne i8 %384, 0
  %386 = xor i1 %383, %385
  %387 = or i1 %381, %386
  %388 = select i1 %387, i64 %378, i64 %379
  store i64 %388, i64* %3, align 8
  br i1 %387, label %block_.L_4b4b12, label %block_4b4aa4

block_4b4aa4:                                     ; preds = %entry
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -24
  %391 = add i64 %388, 3
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RDI.i84, align 8
  %395 = add i64 %388, -422020
  %396 = add i64 %388, 8
  %397 = load i64, i64* %6, align 8
  %398 = add i64 %397, -8
  %399 = inttoptr i64 %398 to i64*
  store i64 %396, i64* %399, align 8
  store i64 %398, i64* %6, align 8
  store i64 %395, i64* %3, align 8
  %call2_4b4aa7 = tail call %struct.Memory* @sub_44da20.owl_escape_value(%struct.State* nonnull %0, i64 %395, %struct.Memory* %call2_4b4a8d)
  %400 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i84, align 8
  store i8 0, i8* %CL.i78, align 1
  %401 = load i32, i32* %EAX.i76, align 4
  store i8 0, i8* %14, align 1
  %402 = and i32 %401, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402)
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %407 = icmp eq i32 %401, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %30, align 1
  %409 = lshr i32 %401, 31
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -41
  %413 = add i64 %400, 11
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i8*
  store i8 0, i8* %414, align 1
  %415 = load i64, i64* %3, align 8
  %416 = add i64 %415, 91
  %417 = add i64 %415, 6
  %418 = load i8, i8* %30, align 1
  %419 = icmp eq i8 %418, 0
  %420 = select i1 %419, i64 %416, i64 %417
  store i64 %420, i64* %3, align 8
  br i1 %419, label %block_.L_4b4b12, label %block_4b4abd

block_4b4abd:                                     ; preds = %block_4b4aa4
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -28
  %423 = add i64 %420, 3
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RDI.i84, align 8
  %427 = add i64 %420, -422045
  %428 = add i64 %420, 8
  %429 = load i64, i64* %6, align 8
  %430 = add i64 %429, -8
  %431 = inttoptr i64 %430 to i64*
  store i64 %428, i64* %431, align 8
  store i64 %430, i64* %6, align 8
  store i64 %427, i64* %3, align 8
  %call2_4b4ac0 = tail call %struct.Memory* @sub_44da20.owl_escape_value(%struct.State* nonnull %0, i64 %427, %struct.Memory* %call2_4b4aa7)
  %432 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i84, align 8
  store i8 0, i8* %CL.i78, align 1
  %433 = load i32, i32* %EAX.i76, align 4
  store i8 0, i8* %14, align 1
  %434 = and i32 %433, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %439 = icmp eq i32 %433, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %30, align 1
  %441 = lshr i32 %433, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -41
  %445 = add i64 %432, 11
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i8*
  store i8 0, i8* %446, align 1
  %447 = load i64, i64* %3, align 8
  %448 = add i64 %447, 66
  %449 = add i64 %447, 6
  %450 = load i8, i8* %30, align 1
  %451 = icmp eq i8 %450, 0
  %452 = select i1 %451, i64 %448, i64 %449
  store i64 %452, i64* %3, align 8
  br i1 %451, label %block_.L_4b4b12, label %block_4b4ad6

block_4b4ad6:                                     ; preds = %block_4b4abd
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -32
  %455 = add i64 %452, 3
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RDI.i84, align 8
  %459 = add i64 %452, -422070
  %460 = add i64 %452, 8
  %461 = load i64, i64* %6, align 8
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %460, i64* %463, align 8
  store i64 %462, i64* %6, align 8
  store i64 %459, i64* %3, align 8
  %call2_4b4ad9 = tail call %struct.Memory* @sub_44da20.owl_escape_value(%struct.State* nonnull %0, i64 %459, %struct.Memory* %call2_4b4ac0)
  %464 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i84, align 8
  store i8 0, i8* %CL.i78, align 1
  %465 = load i32, i32* %EAX.i76, align 4
  store i8 0, i8* %14, align 1
  %466 = and i32 %465, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %471 = icmp eq i32 %465, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %30, align 1
  %473 = lshr i32 %465, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -41
  %477 = add i64 %464, 11
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i8*
  store i8 0, i8* %478, align 1
  %479 = load i64, i64* %3, align 8
  %480 = add i64 %479, 41
  %481 = add i64 %479, 6
  %482 = load i8, i8* %30, align 1
  %483 = icmp eq i8 %482, 0
  %484 = select i1 %483, i64 %480, i64 %481
  store i64 %484, i64* %3, align 8
  br i1 %483, label %block_.L_4b4b12, label %block_4b4aef

block_4b4aef:                                     ; preds = %block_4b4ad6
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 0, i64* %RSI.i, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %RDX.i = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  store i64 2, i64* %RDX.i, align 8
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -12
  %487 = add i64 %484, 10
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RDI.i84, align 8
  %491 = add i64 %485, -36
  %492 = add i64 %484, 13
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RCX.i154, align 8
  %496 = getelementptr inbounds %union.anon, %union.anon* %362, i64 0, i32 0
  %497 = add i64 %485, -40
  %498 = add i64 %484, 17
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %496, align 8
  %AL.i18 = bitcast %union.anon* %66 to i8*
  store i8 0, i8* %AL.i18, align 1
  %502 = add i64 %484, -250847
  %503 = add i64 %484, 24
  %504 = load i64, i64* %6, align 8
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %503, i64* %506, align 8
  store i64 %505, i64* %6, align 8
  store i64 %502, i64* %3, align 8
  %call2_4b4b02 = tail call %struct.Memory* @sub_477710.somewhere(%struct.State* nonnull %0, i64 %502, %struct.Memory* %call2_4b4ad9)
  %507 = load i32, i32* %EAX.i76, align 4
  %508 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %509 = and i32 %507, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %514 = icmp eq i32 %507, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %30, align 1
  %516 = lshr i32 %507, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B.i14 = bitcast %union.anon* %518 to i8*
  %519 = xor i1 %514, true
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %R9B.i14, align 1
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -41
  %523 = add i64 %508, 11
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i8*
  store i8 %520, i8* %524, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4b4b12

block_.L_4b4b12:                                  ; preds = %block_4b4aef, %block_4b4ad6, %block_4b4abd, %block_4b4aa4, %entry
  %525 = phi i64 [ %378, %entry ], [ %416, %block_4b4aa4 ], [ %448, %block_4b4abd ], [ %480, %block_4b4ad6 ], [ %.pre, %block_4b4aef ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4b4a8d, %entry ], [ %call2_4b4aa7, %block_4b4aa4 ], [ %call2_4b4ac0, %block_4b4abd ], [ %call2_4b4ad9, %block_4b4ad6 ], [ %call2_4b4b02, %block_4b4aef ]
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -41
  %528 = add i64 %525, 3
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i8*
  %530 = load i8, i8* %529, align 1
  %531 = and i8 %530, 1
  %532 = zext i8 %531 to i64
  store i64 %532, i64* %RAX.i156, align 8
  %533 = load i64, i64* %6, align 8
  %534 = add i64 %533, 48
  store i64 %534, i64* %6, align 8
  %535 = icmp ugt i64 %533, -49
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %14, align 1
  %537 = trunc i64 %534 to i32
  %538 = and i32 %537, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i64 %533, 16
  %544 = xor i64 %543, %534
  %545 = lshr i64 %544, 4
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %27, align 1
  %548 = icmp eq i64 %534, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %30, align 1
  %550 = lshr i64 %534, 63
  %551 = trunc i64 %550 to i8
  store i8 %551, i8* %33, align 1
  %552 = lshr i64 %533, 63
  %553 = xor i64 %550, %552
  %554 = add nuw nsw i64 %553, %550
  %555 = icmp eq i64 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %39, align 1
  %557 = add i64 %525, 13
  store i64 %557, i64* %3, align 8
  %558 = add i64 %533, 56
  %559 = inttoptr i64 %534 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RBP.i, align 8
  store i64 %558, i64* %6, align 8
  %561 = add i64 %525, 14
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %558 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %3, align 8
  %564 = add i64 %533, 64
  store i64 %564, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb598f0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11901168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5b4b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11908272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xb5b4d0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11908304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5b4f0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11908336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb59950___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11901264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb59df0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11902448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.owl_escape_value(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb__cl___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
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
define %struct.Memory* @routine_movb__r8b__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %R8B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4b4b12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__dil___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4b4b12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.somewhere(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_setne__r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x29__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
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
define %struct.Memory* @routine_movzbl__al___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
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
