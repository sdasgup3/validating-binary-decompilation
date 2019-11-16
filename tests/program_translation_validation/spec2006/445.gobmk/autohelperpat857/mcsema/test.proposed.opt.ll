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

declare %struct.Memory* @sub_477710.somewhere(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperpat857(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i127 = bitcast %union.anon* %18 to i32*
  %RAX.i128 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i128, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i125 = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 6, i64* %20, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %21 to i32*
  %22 = add i64 %7, -12
  %23 = load i32, i32* %EDI.i, align 4
  %24 = add i64 %10, 18
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i120 = bitcast %union.anon* %26 to i32*
  %27 = load i64, i64* %RBP.i, align 8
  %28 = add i64 %27, -8
  %29 = load i32, i32* %ESI.i120, align 4
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 3
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %28 to i32*
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i117 = bitcast %union.anon* %33 to i32*
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -12
  %36 = load i32, i32* %EDX.i117, align 4
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 3
  store i64 %38, i64* %3, align 8
  %39 = inttoptr i64 %35 to i32*
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i114 = bitcast %union.anon* %40 to i32*
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -16
  %43 = load i32, i32* %ECX.i114, align 4
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 3
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %46, align 4
  %R9.i112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %R9.i112, align 8
  %RCX.i108 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %54 = shl nsw i64 %53, 2
  %55 = add nsw i64 %54, 11908336
  %56 = add i64 %49, 12
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RCX.i108, align 8
  %60 = add i64 %47, -8
  %61 = add i64 %49, 15
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %58
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %RCX.i108, align 8
  %66 = icmp ult i32 %64, %58
  %67 = icmp ult i32 %64, %63
  %68 = or i1 %66, %67
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %12, align 1
  %70 = and i32 %64, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %13, align 1
  %75 = xor i32 %63, %58
  %76 = xor i32 %75, %64
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %14, align 1
  %80 = icmp eq i32 %64, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %15, align 1
  %82 = lshr i32 %64, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %16, align 1
  %84 = lshr i32 %58, 31
  %85 = lshr i32 %63, 31
  %86 = xor i32 %82, %84
  %87 = xor i32 %82, %85
  %88 = add nuw nsw i32 %86, %87
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %17, align 1
  %91 = add i64 %47, -20
  %92 = add i64 %49, 18
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  store i32 %64, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -4
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %R9.i112, align 8
  %101 = shl nsw i64 %100, 2
  %102 = add nsw i64 %101, 11909520
  %103 = add i64 %96, 12
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RCX.i108, align 8
  %107 = add i64 %94, -8
  %108 = add i64 %96, 15
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, %105
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RCX.i108, align 8
  %113 = icmp ult i32 %111, %105
  %114 = icmp ult i32 %111, %110
  %115 = or i1 %113, %114
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %12, align 1
  %117 = and i32 %111, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %13, align 1
  %122 = xor i32 %110, %105
  %123 = xor i32 %122, %111
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %14, align 1
  %127 = icmp eq i32 %111, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %15, align 1
  %129 = lshr i32 %111, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %16, align 1
  %131 = lshr i32 %105, 31
  %132 = lshr i32 %110, 31
  %133 = xor i32 %129, %131
  %134 = xor i32 %129, %132
  %135 = add nuw nsw i32 %133, %134
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %17, align 1
  %138 = add i64 %94, -24
  %139 = add i64 %96, 18
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  store i32 %111, i32* %140, align 4
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -4
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %R9.i112, align 8
  %148 = shl nsw i64 %147, 2
  %149 = add nsw i64 %148, 11910704
  %150 = add i64 %143, 12
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RCX.i108, align 8
  %154 = add i64 %141, -8
  %155 = add i64 %143, 15
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, %152
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RCX.i108, align 8
  %160 = icmp ult i32 %158, %152
  %161 = icmp ult i32 %158, %157
  %162 = or i1 %160, %161
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %12, align 1
  %164 = and i32 %158, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %13, align 1
  %169 = xor i32 %157, %152
  %170 = xor i32 %169, %158
  %171 = lshr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %14, align 1
  %174 = icmp eq i32 %158, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %15, align 1
  %176 = lshr i32 %158, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %16, align 1
  %178 = lshr i32 %152, 31
  %179 = lshr i32 %157, 31
  %180 = xor i32 %176, %178
  %181 = xor i32 %176, %179
  %182 = add nuw nsw i32 %180, %181
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %17, align 1
  %185 = add i64 %141, -28
  %186 = add i64 %143, 18
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  store i32 %158, i32* %187, align 4
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -4
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 4
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %189 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %R9.i112, align 8
  %195 = shl nsw i64 %194, 2
  %196 = add nsw i64 %195, 11908304
  %197 = add i64 %190, 12
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RCX.i108, align 8
  %201 = add i64 %188, -8
  %202 = add i64 %190, 15
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, %199
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RCX.i108, align 8
  %207 = icmp ult i32 %205, %199
  %208 = icmp ult i32 %205, %204
  %209 = or i1 %207, %208
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %12, align 1
  %211 = and i32 %205, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %13, align 1
  %216 = xor i32 %204, %199
  %217 = xor i32 %216, %205
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %14, align 1
  %221 = icmp eq i32 %205, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %15, align 1
  %223 = lshr i32 %205, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %16, align 1
  %225 = lshr i32 %199, 31
  %226 = lshr i32 %204, 31
  %227 = xor i32 %223, %225
  %228 = xor i32 %223, %226
  %229 = add nuw nsw i32 %227, %228
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %17, align 1
  %232 = add i64 %188, -32
  %233 = add i64 %190, 18
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  store i32 %205, i32* %234, align 4
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -4
  %237 = load i64, i64* %3, align 8
  %238 = add i64 %237, 4
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %R9.i112, align 8
  %242 = shl nsw i64 %241, 2
  %243 = add nsw i64 %242, 11909488
  %244 = add i64 %237, 12
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RCX.i108, align 8
  %248 = add i64 %235, -8
  %249 = add i64 %237, 15
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %251, %246
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RCX.i108, align 8
  %254 = icmp ult i32 %252, %246
  %255 = icmp ult i32 %252, %251
  %256 = or i1 %254, %255
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %12, align 1
  %258 = and i32 %252, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %13, align 1
  %263 = xor i32 %251, %246
  %264 = xor i32 %263, %252
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %14, align 1
  %268 = icmp eq i32 %252, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %15, align 1
  %270 = lshr i32 %252, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %16, align 1
  %272 = lshr i32 %246, 31
  %273 = lshr i32 %251, 31
  %274 = xor i32 %270, %272
  %275 = xor i32 %270, %273
  %276 = add nuw nsw i32 %274, %275
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %17, align 1
  %279 = add i64 %235, -36
  %280 = add i64 %237, 18
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  store i32 %252, i32* %281, align 4
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -4
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 4
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %283 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %R9.i112, align 8
  %289 = shl nsw i64 %288, 2
  %290 = add nsw i64 %289, 11910672
  %291 = add i64 %284, 12
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RCX.i108, align 8
  %295 = add i64 %282, -8
  %296 = add i64 %284, 15
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = add i32 %298, %293
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RCX.i108, align 8
  %301 = icmp ult i32 %299, %293
  %302 = icmp ult i32 %299, %298
  %303 = or i1 %301, %302
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %12, align 1
  %305 = and i32 %299, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %13, align 1
  %310 = xor i32 %298, %293
  %311 = xor i32 %310, %299
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %14, align 1
  %315 = icmp eq i32 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %15, align 1
  %317 = lshr i32 %299, 31
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %16, align 1
  %319 = lshr i32 %293, 31
  %320 = lshr i32 %298, 31
  %321 = xor i32 %317, %319
  %322 = xor i32 %317, %320
  %323 = add nuw nsw i32 %321, %322
  %324 = icmp eq i32 %323, 2
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %17, align 1
  %326 = add i64 %282, -40
  %327 = add i64 %284, 18
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  store i32 %299, i32* %328, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -12
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 3
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RDI.i, align 8
  %336 = add i64 %329, -20
  %337 = add i64 %331, 6
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i108, align 8
  %RDX.i37 = getelementptr inbounds %union.anon, %union.anon* %33, i64 0, i32 0
  %341 = add i64 %329, -24
  %342 = add i64 %331, 9
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RDX.i37, align 8
  %346 = add i64 %329, -28
  %347 = add i64 %331, 13
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %R9.i112, align 8
  %RSI.i32 = getelementptr inbounds %union.anon, %union.anon* %26, i64 0, i32 0
  %351 = add i64 %329, -32
  %352 = add i64 %331, 16
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RSI.i32, align 8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i29 = bitcast %union.anon* %356 to i32*
  %357 = getelementptr inbounds %union.anon, %union.anon* %356, i64 0, i32 0
  %358 = add i64 %329, -36
  %359 = add i64 %331, 20
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %357, align 8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i26 = bitcast %union.anon* %363 to i32*
  %364 = getelementptr inbounds %union.anon, %union.anon* %363, i64 0, i32 0
  %365 = add i64 %329, -40
  %366 = add i64 %331, 24
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %364, align 8
  %370 = add i64 %329, -44
  %371 = add i64 %331, 27
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  store i32 %354, i32* %372, align 4
  %373 = load i32, i32* %EAX.i127, align 4
  %374 = zext i32 %373 to i64
  %375 = load i64, i64* %3, align 8
  store i64 %374, i64* %RSI.i32, align 8
  %376 = load i64, i64* %RBP.i, align 8
  %377 = add i64 %376, -48
  %378 = load i32, i32* %EDX.i117, align 4
  %379 = add i64 %375, 5
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %377 to i32*
  store i32 %378, i32* %380, align 4
  %381 = load i32, i32* %R8D.i125, align 4
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %3, align 8
  store i64 %382, i64* %RDX.i37, align 8
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -48
  %386 = add i64 %383, 7
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %20, align 8
  %390 = add i64 %384, -44
  %391 = add i64 %383, 10
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX.i128, align 8
  %395 = bitcast i64* %6 to i32**
  %396 = load i32*, i32** %395, align 8
  %397 = add i64 %383, 13
  store i64 %397, i64* %3, align 8
  store i32 %393, i32* %396, align 4
  %398 = load i64, i64* %6, align 8
  %399 = add i64 %398, 8
  %400 = load i32, i32* %R10D.i29, align 4
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, 5
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %399 to i32*
  store i32 %400, i32* %403, align 4
  %404 = load i64, i64* %6, align 8
  %405 = add i64 %404, 16
  %406 = load i32, i32* %R11D.i26, align 4
  %407 = load i64, i64* %3, align 8
  %408 = add i64 %407, 5
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %405 to i32*
  store i32 %406, i32* %409, align 4
  %AL.i = bitcast %union.anon* %18 to i8*
  %410 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %411 = add i64 %410, -391727
  %412 = add i64 %410, 7
  %413 = load i64, i64* %6, align 8
  %414 = add i64 %413, -8
  %415 = inttoptr i64 %414 to i64*
  store i64 %412, i64* %415, align 8
  store i64 %414, i64* %6, align 8
  store i64 %411, i64* %3, align 8
  %call2_4d7141 = tail call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %411, %struct.Memory* %2)
  %416 = load i64, i64* %6, align 8
  %417 = load i64, i64* %3, align 8
  %418 = add i64 %416, 80
  store i64 %418, i64* %6, align 8
  %419 = icmp ugt i64 %416, -81
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %12, align 1
  %421 = trunc i64 %418 to i32
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %13, align 1
  %427 = xor i64 %416, 16
  %428 = xor i64 %427, %418
  %429 = lshr i64 %428, 4
  %430 = trunc i64 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %14, align 1
  %432 = icmp eq i64 %418, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %15, align 1
  %434 = lshr i64 %418, 63
  %435 = trunc i64 %434 to i8
  store i8 %435, i8* %16, align 1
  %436 = lshr i64 %416, 63
  %437 = xor i64 %434, %436
  %438 = add nuw nsw i64 %437, %434
  %439 = icmp eq i64 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %17, align 1
  %441 = add i64 %417, 5
  store i64 %441, i64* %3, align 8
  %442 = add i64 %416, 88
  %443 = inttoptr i64 %418 to i64*
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %RBP.i, align 8
  store i64 %442, i64* %6, align 8
  %445 = add i64 %417, 6
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %442 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %3, align 8
  %448 = add i64 %416, 96
  store i64 %448, i64* %6, align 8
  ret %struct.Memory* %call2_4d7141
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movl__0x6___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 6, i64* %3, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_0xb5b4f0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11908336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movl_0xb5b990___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11909520
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movl_0xb5be30___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11910704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movl_0xb5b4d0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11908304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movl_0xb5b970___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11909488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movl_0xb5be10___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11910672
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
