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
define %struct.Memory* @update(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i223 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %RBX.i223, align 8
  %13 = add i64 %10, 4
  store i64 %13, i64* %PC.i, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  store i64 %14, i64* %6, align 8
  %RAX.i220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, 48
  %18 = load i64, i64* %PC.i, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC.i, align 8
  %20 = inttoptr i64 %17 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %RAX.i220, align 8
  %R10.i218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %22 = add i64 %16, 40
  %23 = add i64 %18, 8
  store i64 %23, i64* %PC.i, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %R10.i218, align 8
  %R11.i215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %26 = add i64 %16, 24
  store i64 %26, i64* %R11.i215, align 8
  %27 = add i64 %16, 16
  %28 = add i64 %18, 15
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %27 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %RBX.i223, align 8
  %RDI.i208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %32 = add i64 %16, -56
  %33 = load i64, i64* %RDI.i208, align 8
  %34 = add i64 %18, 19
  store i64 %34, i64* %PC.i, align 8
  %35 = inttoptr i64 %32 to i64*
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i205 = bitcast %union.anon* %36 to i32*
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -48
  %39 = load i32, i32* %ESI.i205, align 4
  %40 = load i64, i64* %PC.i, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %RSI.i202 = getelementptr inbounds %union.anon, %union.anon* %36, i64 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -48
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %RSI.i202, align 8
  %50 = add i64 %43, -32
  %51 = add i64 %45, 6
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 %48, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -56
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %54 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %RDI.i208, align 8
  %59 = add i64 %53, -40
  %60 = add i64 %55, 8
  store i64 %60, i64* %PC.i, align 8
  %61 = inttoptr i64 %59 to i64*
  store i64 %58, i64* %61, align 8
  %RDX.i191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -64
  %64 = load i64, i64* %RDX.i191, align 8
  %65 = load i64, i64* %PC.i, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC.i, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %RCX.i188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -72
  %70 = load i64, i64* %RCX.i188, align 8
  %71 = load i64, i64* %PC.i, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC.i, align 8
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73, align 8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i185 = bitcast %union.anon* %74 to i32*
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -76
  %77 = load i32, i32* %R8D.i185, align 4
  %78 = load i64, i64* %PC.i, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i182 = bitcast %union.anon* %81 to i32*
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -80
  %84 = load i32, i32* %R9D.i182, align 4
  %85 = load i64, i64* %PC.i, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC.i, align 8
  %87 = inttoptr i64 %83 to i32*
  store i32 %84, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -40
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %89 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RSI.i202, align 8
  %95 = add i64 %88, -64
  %96 = add i64 %90, 7
  store i64 %96, i64* %PC.i, align 8
  %97 = inttoptr i64 %95 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %RCX.i188, align 8
  %99 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  %100 = add i64 %90, 10
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %99, align 8
  %104 = add i32 %102, %93
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RSI.i202, align 8
  %106 = icmp ult i32 %104, %93
  %107 = icmp ult i32 %104, %102
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %109, i8* %110, align 1
  %111 = and i32 %104, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %115, i8* %116, align 1
  %117 = xor i32 %102, %93
  %118 = xor i32 %117, %104
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %121, i8* %122, align 1
  %123 = icmp eq i32 %104, 0
  %124 = zext i1 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %124, i8* %125, align 1
  %126 = lshr i32 %104, 31
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %127, i8* %128, align 1
  %129 = lshr i32 %93, 31
  %130 = lshr i32 %102, 31
  %131 = xor i32 %126, %129
  %132 = xor i32 %126, %130
  %133 = add nuw nsw i32 %131, %132
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %135, i8* %136, align 1
  %137 = add i64 %88, -72
  %138 = add i64 %90, 17
  store i64 %138, i64* %PC.i, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RCX.i188, align 8
  %141 = add i64 %90, 20
  store i64 %141, i64* %PC.i, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %99, align 8
  %145 = add i32 %143, %104
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RSI.i202, align 8
  %147 = icmp ult i32 %145, %104
  %148 = icmp ult i32 %145, %143
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %110, align 1
  %151 = and i32 %145, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151)
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %116, align 1
  %156 = xor i32 %143, %104
  %157 = xor i32 %156, %145
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %122, align 1
  %161 = icmp eq i32 %145, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %125, align 1
  %163 = lshr i32 %145, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %128, align 1
  %165 = lshr i32 %143, 31
  %166 = xor i32 %163, %126
  %167 = xor i32 %163, %165
  %168 = add nuw nsw i32 %166, %167
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %136, align 1
  %171 = bitcast i64* %R11.i215 to i32**
  %172 = load i32*, i32** %171, align 8
  %173 = add i64 %90, 26
  store i64 %173, i64* %PC.i, align 8
  %174 = load i32, i32* %172, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %99, align 8
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, 40
  %178 = add i64 %90, 30
  store i64 %178, i64* %PC.i, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RCX.i188, align 8
  %181 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0
  %182 = add i64 %90, 33
  store i64 %182, i64* %PC.i, align 8
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %181, align 8
  %186 = add i32 %184, %174
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %99, align 8
  %188 = icmp ult i32 %186, %174
  %189 = icmp ult i32 %186, %184
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %110, align 1
  %192 = and i32 %186, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %116, align 1
  %197 = xor i32 %184, %174
  %198 = xor i32 %197, %186
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %122, align 1
  %202 = icmp eq i32 %186, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %125, align 1
  %204 = lshr i32 %186, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %128, align 1
  %206 = lshr i32 %174, 31
  %207 = lshr i32 %184, 31
  %208 = xor i32 %204, %206
  %209 = xor i32 %204, %207
  %210 = add nuw nsw i32 %208, %209
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %136, align 1
  %213 = add i64 %176, 48
  %214 = add i64 %90, 40
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RCX.i188, align 8
  %217 = add i64 %90, 43
  store i64 %217, i64* %PC.i, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %181, align 8
  %221 = add i32 %219, %186
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %99, align 8
  %223 = lshr i32 %221, 31
  %224 = load i64, i64* %RSI.i202, align 8
  %225 = trunc i64 %224 to i32
  %226 = add i32 %221, %225
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RSI.i202, align 8
  %228 = icmp ult i32 %226, %225
  %229 = icmp ult i32 %226, %221
  %230 = or i1 %228, %229
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %110, align 1
  %232 = and i32 %226, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %116, align 1
  %237 = xor i64 %222, %224
  %238 = trunc i64 %237 to i32
  %239 = xor i32 %238, %226
  %240 = lshr i32 %239, 4
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  store i8 %242, i8* %122, align 1
  %243 = icmp eq i32 %226, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %125, align 1
  %245 = lshr i32 %226, 31
  %246 = trunc i32 %245 to i8
  store i8 %246, i8* %128, align 1
  %247 = lshr i32 %225, 31
  %248 = xor i32 %245, %247
  %249 = xor i32 %245, %223
  %250 = add nuw nsw i32 %248, %249
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %136, align 1
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -96
  %255 = add i64 %90, 52
  store i64 %255, i64* %PC.i, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %226, i32* %256, align 4
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -36
  %259 = load i64, i64* %PC.i, align 8
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC.i, align 8
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RSI.i202, align 8
  %264 = add i64 %257, -64
  %265 = add i64 %259, 7
  store i64 %265, i64* %PC.i, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RCX.i188, align 8
  %268 = add i64 %267, 4
  %269 = add i64 %259, 11
  store i64 %269, i64* %PC.i, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %99, align 8
  %273 = add i32 %271, %262
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RSI.i202, align 8
  %275 = icmp ult i32 %273, %262
  %276 = icmp ult i32 %273, %271
  %277 = or i1 %275, %276
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %110, align 1
  %279 = and i32 %273, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %116, align 1
  %284 = xor i32 %271, %262
  %285 = xor i32 %284, %273
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %122, align 1
  %289 = icmp eq i32 %273, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %125, align 1
  %291 = lshr i32 %273, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %128, align 1
  %293 = lshr i32 %262, 31
  %294 = lshr i32 %271, 31
  %295 = xor i32 %291, %293
  %296 = xor i32 %291, %294
  %297 = add nuw nsw i32 %295, %296
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %136, align 1
  %300 = add i64 %257, -72
  %301 = add i64 %259, 18
  store i64 %301, i64* %PC.i, align 8
  %302 = inttoptr i64 %300 to i64*
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %RCX.i188, align 8
  %304 = add i64 %303, 4
  %305 = add i64 %259, 22
  store i64 %305, i64* %PC.i, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %99, align 8
  %309 = add i32 %307, %273
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RSI.i202, align 8
  %311 = icmp ult i32 %309, %273
  %312 = icmp ult i32 %309, %307
  %313 = or i1 %311, %312
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %110, align 1
  %315 = and i32 %309, 255
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %116, align 1
  %320 = xor i32 %307, %273
  %321 = xor i32 %320, %309
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %122, align 1
  %325 = icmp eq i32 %309, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %125, align 1
  %327 = lshr i32 %309, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %128, align 1
  %329 = lshr i32 %307, 31
  %330 = xor i32 %327, %291
  %331 = xor i32 %327, %329
  %332 = add nuw nsw i32 %330, %331
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %136, align 1
  %335 = load i64, i64* %R11.i215, align 8
  %336 = add i64 %335, 4
  %337 = add i64 %259, 29
  store i64 %337, i64* %PC.i, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %99, align 8
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, 40
  %343 = add i64 %259, 33
  store i64 %343, i64* %PC.i, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RCX.i188, align 8
  %346 = add i64 %345, 4
  %347 = add i64 %259, 37
  store i64 %347, i64* %PC.i, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %181, align 8
  %351 = add i32 %349, %339
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %99, align 8
  %353 = icmp ult i32 %351, %339
  %354 = icmp ult i32 %351, %349
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %110, align 1
  %357 = and i32 %351, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %116, align 1
  %362 = xor i32 %349, %339
  %363 = xor i32 %362, %351
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %122, align 1
  %367 = icmp eq i32 %351, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %125, align 1
  %369 = lshr i32 %351, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %128, align 1
  %371 = lshr i32 %339, 31
  %372 = lshr i32 %349, 31
  %373 = xor i32 %369, %371
  %374 = xor i32 %369, %372
  %375 = add nuw nsw i32 %373, %374
  %376 = icmp eq i32 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %136, align 1
  %378 = add i64 %341, 48
  %379 = add i64 %259, 44
  store i64 %379, i64* %PC.i, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RCX.i188, align 8
  %382 = add i64 %381, 4
  %383 = add i64 %259, 48
  store i64 %383, i64* %PC.i, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %181, align 8
  %387 = add i32 %385, %351
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %99, align 8
  %389 = lshr i32 %387, 31
  %390 = load i64, i64* %RSI.i202, align 8
  %391 = trunc i64 %390 to i32
  %392 = add i32 %387, %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RSI.i202, align 8
  %394 = icmp ult i32 %392, %391
  %395 = icmp ult i32 %392, %387
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %110, align 1
  %398 = and i32 %392, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %116, align 1
  %403 = xor i64 %388, %390
  %404 = trunc i64 %403 to i32
  %405 = xor i32 %404, %392
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %122, align 1
  %409 = icmp eq i32 %392, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %125, align 1
  %411 = lshr i32 %392, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %128, align 1
  %413 = lshr i32 %391, 31
  %414 = xor i32 %411, %413
  %415 = xor i32 %411, %389
  %416 = add nuw nsw i32 %414, %415
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %136, align 1
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -92
  %421 = add i64 %259, 57
  store i64 %421, i64* %PC.i, align 8
  %422 = inttoptr i64 %420 to i32*
  store i32 %392, i32* %422, align 4
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -32
  %425 = load i64, i64* %PC.i, align 8
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC.i, align 8
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RSI.i202, align 8
  %430 = add i64 %423, -64
  %431 = add i64 %425, 7
  store i64 %431, i64* %PC.i, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RCX.i188, align 8
  %434 = add i64 %433, 8
  %435 = add i64 %425, 11
  store i64 %435, i64* %PC.i, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %99, align 8
  %439 = add i32 %437, %428
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RSI.i202, align 8
  %441 = icmp ult i32 %439, %428
  %442 = icmp ult i32 %439, %437
  %443 = or i1 %441, %442
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %110, align 1
  %445 = and i32 %439, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %116, align 1
  %450 = xor i32 %437, %428
  %451 = xor i32 %450, %439
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %122, align 1
  %455 = icmp eq i32 %439, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %125, align 1
  %457 = lshr i32 %439, 31
  %458 = trunc i32 %457 to i8
  store i8 %458, i8* %128, align 1
  %459 = lshr i32 %428, 31
  %460 = lshr i32 %437, 31
  %461 = xor i32 %457, %459
  %462 = xor i32 %457, %460
  %463 = add nuw nsw i32 %461, %462
  %464 = icmp eq i32 %463, 2
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %136, align 1
  %466 = add i64 %423, -72
  %467 = add i64 %425, 18
  store i64 %467, i64* %PC.i, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RCX.i188, align 8
  %470 = add i64 %469, 8
  %471 = add i64 %425, 22
  store i64 %471, i64* %PC.i, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %99, align 8
  %475 = add i32 %473, %439
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RSI.i202, align 8
  %477 = icmp ult i32 %475, %439
  %478 = icmp ult i32 %475, %473
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %110, align 1
  %481 = and i32 %475, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %116, align 1
  %486 = xor i32 %473, %439
  %487 = xor i32 %486, %475
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %122, align 1
  %491 = icmp eq i32 %475, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %125, align 1
  %493 = lshr i32 %475, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %128, align 1
  %495 = lshr i32 %473, 31
  %496 = xor i32 %493, %457
  %497 = xor i32 %493, %495
  %498 = add nuw nsw i32 %496, %497
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %136, align 1
  %501 = load i64, i64* %R11.i215, align 8
  %502 = add i64 %501, 8
  %503 = add i64 %425, 29
  store i64 %503, i64* %PC.i, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %99, align 8
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, 40
  %509 = add i64 %425, 33
  store i64 %509, i64* %PC.i, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RCX.i188, align 8
  %512 = add i64 %511, 8
  %513 = add i64 %425, 37
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %181, align 8
  %517 = add i32 %515, %505
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %99, align 8
  %519 = icmp ult i32 %517, %505
  %520 = icmp ult i32 %517, %515
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %110, align 1
  %523 = and i32 %517, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %116, align 1
  %528 = xor i32 %515, %505
  %529 = xor i32 %528, %517
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %122, align 1
  %533 = icmp eq i32 %517, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %125, align 1
  %535 = lshr i32 %517, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %128, align 1
  %537 = lshr i32 %505, 31
  %538 = lshr i32 %515, 31
  %539 = xor i32 %535, %537
  %540 = xor i32 %535, %538
  %541 = add nuw nsw i32 %539, %540
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %136, align 1
  %544 = add i64 %507, 48
  %545 = add i64 %425, 44
  store i64 %545, i64* %PC.i, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RCX.i188, align 8
  %548 = add i64 %547, 8
  %549 = add i64 %425, 48
  store i64 %549, i64* %PC.i, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %181, align 8
  %553 = add i32 %551, %517
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %99, align 8
  %555 = lshr i32 %553, 31
  %556 = load i64, i64* %RSI.i202, align 8
  %557 = trunc i64 %556 to i32
  %558 = add i32 %553, %557
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RSI.i202, align 8
  %560 = icmp ult i32 %558, %557
  %561 = icmp ult i32 %558, %553
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %110, align 1
  %564 = and i32 %558, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %116, align 1
  %569 = xor i64 %554, %556
  %570 = trunc i64 %569 to i32
  %571 = xor i32 %570, %558
  %572 = lshr i32 %571, 4
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %122, align 1
  %575 = icmp eq i32 %558, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %125, align 1
  %577 = lshr i32 %558, 31
  %578 = trunc i32 %577 to i8
  store i8 %578, i8* %128, align 1
  %579 = lshr i32 %557, 31
  %580 = xor i32 %577, %579
  %581 = xor i32 %577, %555
  %582 = add nuw nsw i32 %580, %581
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %136, align 1
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -88
  %587 = add i64 %425, 57
  store i64 %587, i64* %PC.i, align 8
  %588 = inttoptr i64 %586 to i32*
  store i32 %558, i32* %588, align 4
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -88
  %591 = load i64, i64* %PC.i, align 8
  %592 = add i64 %591, 3
  store i64 %592, i64* %PC.i, align 8
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RSI.i202, align 8
  %596 = add i64 %589, -16
  %597 = add i64 %591, 6
  store i64 %597, i64* %PC.i, align 8
  %598 = inttoptr i64 %596 to i32*
  store i32 %594, i32* %598, align 4
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -96
  %601 = load i64, i64* %PC.i, align 8
  %602 = add i64 %601, 4
  store i64 %602, i64* %PC.i, align 8
  %603 = inttoptr i64 %600 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RCX.i188, align 8
  %605 = add i64 %599, -24
  %606 = add i64 %601, 8
  store i64 %606, i64* %PC.i, align 8
  %607 = inttoptr i64 %605 to i64*
  store i64 %604, i64* %607, align 8
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -16
  %610 = load i64, i64* %PC.i, align 8
  %611 = add i64 %610, 3
  store i64 %611, i64* %PC.i, align 8
  %612 = inttoptr i64 %609 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = zext i32 %613 to i64
  store i64 %614, i64* %RSI.i202, align 8
  %615 = add i64 %608, -104
  %616 = add i64 %610, 6
  store i64 %616, i64* %PC.i, align 8
  %617 = inttoptr i64 %615 to i32*
  store i32 %613, i32* %617, align 4
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -24
  %620 = load i64, i64* %PC.i, align 8
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC.i, align 8
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RCX.i188, align 8
  %624 = add i64 %618, -112
  %625 = add i64 %620, 8
  store i64 %625, i64* %PC.i, align 8
  %626 = inttoptr i64 %624 to i64*
  store i64 %623, i64* %626, align 8
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -112
  %629 = load i64, i64* %PC.i, align 8
  %630 = add i64 %629, 4
  store i64 %630, i64* %PC.i, align 8
  %631 = inttoptr i64 %628 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %RCX.i188, align 8
  %633 = add i64 %627, -104
  %634 = add i64 %629, 7
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RDX.i191, align 8
  %638 = add i64 %627, -120
  %639 = load i64, i64* %RAX.i220, align 8
  %640 = add i64 %629, 11
  store i64 %640, i64* %PC.i, align 8
  %641 = inttoptr i64 %638 to i64*
  store i64 %639, i64* %641, align 8
  %642 = load i64, i64* %RCX.i188, align 8
  %643 = load i64, i64* %PC.i, align 8
  store i64 %642, i64* %RAX.i220, align 8
  %EBX.i = bitcast %union.anon* %11 to i32*
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -124
  %646 = load i32, i32* %EBX.i, align 4
  %647 = add i64 %643, 6
  store i64 %647, i64* %PC.i, align 8
  %648 = inttoptr i64 %645 to i32*
  store i32 %646, i32* %648, align 4
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -136
  %651 = load i64, i64* %R10.i218, align 8
  %652 = load i64, i64* %PC.i, align 8
  %653 = add i64 %652, 7
  store i64 %653, i64* %PC.i, align 8
  %654 = inttoptr i64 %650 to i64*
  store i64 %651, i64* %654, align 8
  %655 = load i64, i64* %PC.i, align 8
  %656 = add i64 %655, 1
  store i64 %656, i64* %PC.i, align 8
  %657 = load i64, i64* %6, align 8
  %658 = add i64 %657, 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RBX.i223, align 8
  store i64 %658, i64* %6, align 8
  %661 = add i64 %655, 2
  store i64 %661, i64* %PC.i, align 8
  %662 = add i64 %657, 16
  %663 = inttoptr i64 %658 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %RBP.i, align 8
  store i64 %662, i64* %6, align 8
  %665 = add i64 %655, 3
  store i64 %665, i64* %PC.i, align 8
  %666 = inttoptr i64 %662 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %3, align 8
  %668 = add i64 %657, 24
  store i64 %668, i64* %6, align 8
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_0x18__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__r8d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r11____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %R11 to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__r9d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %6 = load i32, i32* %R8D, align 4
  %7 = load i32, i32* %R9D, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %7, %6
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rcx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__r11____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R11, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rcx____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x8__rcx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__r11____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R11, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rcx____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %ESI, align 4
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

define %struct.Memory* @routine_movq__rcx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
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
