; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @binary_search(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RDI.i107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -24
  %12 = load i64, i64* %RDI.i107, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC.i, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i104 = bitcast %union.anon* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -20
  %18 = load i32, i32* %ESI.i104, align 4
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i101 = bitcast %union.anon* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i32, i32* %EDX.i101, align 4
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -28
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 7
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %30 to i32*
  store i32 0, i32* %33, align 4
  %RDX.i96 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -20
  %36 = load i64, i64* %PC.i, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC.i, align 8
  %38 = inttoptr i64 %35 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, -1
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %RDX.i96, align 8
  %42 = icmp eq i32 %39, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %44, align 1
  %45 = and i32 %40, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1
  %51 = xor i32 %39, %40
  %52 = lshr i32 %51, 4
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1
  %56 = icmp eq i32 %40, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1
  %59 = lshr i32 %40, 31
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1
  %62 = lshr i32 %39, 31
  %63 = xor i32 %59, %62
  %64 = add nuw nsw i32 %63, %62
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1
  %68 = add i64 %34, -32
  %69 = add i64 %36, 9
  store i64 %69, i64* %PC.i, align 8
  %70 = inttoptr i64 %68 to i32*
  store i32 %40, i32* %70, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4004ae

block_.L_4004ae:                                  ; preds = %block_.L_400523, %entry
  %71 = phi i64 [ %366, %block_.L_400523 ], [ %.pre, %entry ]
  %loadMem_400528 = phi %struct.Memory* [ %loadMem_40051a, %block_.L_400523 ], [ %2, %entry ]
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i88 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -28
  %75 = add i64 %71, 3
  store i64 %75, i64* %PC.i, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RAX.i88, align 8
  %EAX.i85 = bitcast %union.anon* %72 to i32*
  %79 = add i64 %73, -32
  %80 = add i64 %71, 6
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %77, %82
  %84 = icmp ult i32 %77, %82
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %44, align 1
  %86 = and i32 %83, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %50, align 1
  %91 = xor i32 %82, %77
  %92 = xor i32 %91, %83
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %55, align 1
  %96 = icmp eq i32 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %58, align 1
  %98 = lshr i32 %83, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %61, align 1
  %100 = lshr i32 %77, 31
  %101 = lshr i32 %82, 31
  %102 = xor i32 %101, %100
  %103 = xor i32 %98, %100
  %104 = add nuw nsw i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %67, align 1
  %107 = icmp ne i8 %99, 0
  %108 = xor i1 %107, %105
  %.v = select i1 %108, i64 12, i64 122
  %109 = add i64 %71, %.v
  store i64 %109, i64* %3, align 8
  br i1 %108, label %block_4004ba, label %block_.L_400528

block_4004ba:                                     ; preds = %block_.L_4004ae
  store i64 2, i64* %RAX.i88, align 8
  %RCX.i79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %110 = add i64 %109, 8
  store i64 %110, i64* %PC.i, align 8
  %111 = load i32, i32* %76, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RCX.i79, align 8
  %113 = add i64 %109, 11
  store i64 %113, i64* %PC.i, align 8
  %114 = load i32, i32* %81, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RDX.i96, align 8
  %116 = add i64 %109, 14
  store i64 %116, i64* %PC.i, align 8
  %117 = load i32, i32* %76, align 4
  %118 = sub i32 %114, %117
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RDX.i96, align 8
  %120 = icmp ult i32 %114, %117
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %44, align 1
  %122 = and i32 %118, 255
  %123 = call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %50, align 1
  %127 = xor i32 %117, %114
  %128 = xor i32 %127, %118
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %55, align 1
  %132 = icmp eq i32 %118, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %58, align 1
  %134 = lshr i32 %118, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %61, align 1
  %136 = lshr i32 %114, 31
  %137 = lshr i32 %117, 31
  %138 = xor i32 %137, %136
  %139 = xor i32 %134, %136
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %67, align 1
  %143 = add i64 %73, -40
  %144 = add i64 %109, 17
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %143 to i32*
  store i32 2, i32* %145, align 4
  %146 = load i32, i32* %EDX.i101, align 4
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* %PC.i, align 8
  store i64 %147, i64* %RAX.i88, align 8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %150 = sext i32 %146 to i64
  %151 = lshr i64 %150, 32
  store i64 %151, i64* %149, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -40
  %154 = add i64 %148, 6
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RSI.i, align 8
  %158 = add i64 %148, 8
  store i64 %158, i64* %PC.i, align 8
  %159 = zext i32 %146 to i64
  %160 = sext i32 %156 to i64
  %161 = shl nuw i64 %151, 32
  %162 = or i64 %161, %159
  %163 = sdiv i64 %162, %160
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = icmp eq i64 %163, %165
  br i1 %166, label %169, label %167

; <label>:167:                                    ; preds = %block_4004ba
  %168 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %158, %struct.Memory* %loadMem_400528)
  %.pre2 = load i32, i32* %EAX.i85, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:169:                                    ; preds = %block_4004ba
  %170 = srem i64 %162, %160
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %172 = and i64 %163, 4294967295
  store i64 %172, i64* %171, align 8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %174 = and i64 %170, 4294967295
  store i64 %174, i64* %173, align 8
  store i8 0, i8* %44, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %175 = trunc i64 %163 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %169, %167
  %176 = phi i64 [ %.pre4, %167 ], [ %152, %169 ]
  %177 = phi i64 [ %.pre3, %167 ], [ %158, %169 ]
  %178 = phi i32 [ %.pre2, %167 ], [ %175, %169 ]
  %loadMem_40051a = phi %struct.Memory* [ %168, %167 ], [ %loadMem_400528, %169 ]
  %179 = load i64, i64* %RCX.i79, align 8
  %180 = zext i32 %178 to i64
  %181 = trunc i64 %179 to i32
  %182 = add i32 %178, %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RCX.i79, align 8
  %184 = icmp ult i32 %182, %181
  %185 = icmp ult i32 %182, %178
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %44, align 1
  %188 = and i32 %182, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %50, align 1
  %193 = xor i64 %180, %179
  %194 = trunc i64 %193 to i32
  %195 = xor i32 %194, %182
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %55, align 1
  %199 = icmp eq i32 %182, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %58, align 1
  %201 = lshr i32 %182, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %61, align 1
  %203 = lshr i32 %181, 31
  %204 = lshr i32 %178, 31
  %205 = xor i32 %201, %203
  %206 = xor i32 %201, %204
  %207 = add nuw nsw i32 %205, %206
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %67, align 1
  %210 = add i64 %176, -36
  %211 = add i64 %177, 5
  store i64 %211, i64* %PC.i, align 8
  %212 = inttoptr i64 %210 to i32*
  store i32 %182, i32* %212, align 4
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -16
  %215 = load i64, i64* %PC.i, align 8
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC.i, align 8
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RDI.i107, align 8
  %R8.i52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %219 = add i64 %213, -36
  %220 = add i64 %215, 8
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %R8.i52, align 8
  %224 = shl nsw i64 %223, 2
  %225 = add i64 %224, %218
  %226 = add i64 %215, 12
  store i64 %226, i64* %PC.i, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RAX.i88, align 8
  %230 = add i64 %213, -24
  %231 = add i64 %215, 15
  store i64 %231, i64* %PC.i, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = sub i32 %228, %233
  %235 = icmp ult i32 %228, %233
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %44, align 1
  %237 = and i32 %234, 255
  %238 = call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %50, align 1
  %242 = xor i32 %233, %228
  %243 = xor i32 %242, %234
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %55, align 1
  %247 = icmp eq i32 %234, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %58, align 1
  %249 = lshr i32 %234, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %61, align 1
  %251 = lshr i32 %228, 31
  %252 = lshr i32 %233, 31
  %253 = xor i32 %252, %251
  %254 = xor i32 %249, %251
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %67, align 1
  %.v9 = select i1 %247, i64 21, i64 32
  %258 = add i64 %215, %.v9
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC.i, align 8
  br i1 %247, label %block_4004ed, label %block_.L_4004f8

block_4004ed:                                     ; preds = %routine_idivl__esi.exit
  %260 = load i32, i32* %221, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX.i88, align 8
  %262 = add i64 %213, -4
  %263 = add i64 %258, 6
  store i64 %263, i64* %PC.i, align 8
  %264 = inttoptr i64 %262 to i32*
  store i32 %260, i32* %264, align 4
  %265 = load i64, i64* %PC.i, align 8
  %266 = add i64 %265, 60
  store i64 %266, i64* %3, align 8
  br label %block_.L_40052f

block_.L_4004f8:                                  ; preds = %routine_idivl__esi.exit
  %267 = load i32, i32* %232, align 4
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RAX.i88, align 8
  %269 = add i64 %258, 7
  store i64 %269, i64* %PC.i, align 8
  %270 = load i64, i64* %217, align 8
  store i64 %270, i64* %RCX.i79, align 8
  %271 = add i64 %258, 11
  store i64 %271, i64* %PC.i, align 8
  %272 = load i32, i32* %221, align 4
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %RDX.i96, align 8
  %274 = shl nsw i64 %273, 2
  %275 = add i64 %274, %270
  %276 = add i64 %258, 14
  store i64 %276, i64* %PC.i, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sub i32 %267, %278
  %280 = icmp ult i32 %267, %278
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %44, align 1
  %282 = and i32 %279, 255
  %283 = call i32 @llvm.ctpop.i32(i32 %282)
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %50, align 1
  %287 = xor i32 %278, %267
  %288 = xor i32 %287, %279
  %289 = lshr i32 %288, 4
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %55, align 1
  %292 = icmp eq i32 %279, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %58, align 1
  %294 = lshr i32 %279, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %61, align 1
  %296 = lshr i32 %267, 31
  %297 = lshr i32 %278, 31
  %298 = xor i32 %297, %296
  %299 = xor i32 %294, %296
  %300 = add nuw nsw i32 %299, %298
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %67, align 1
  %303 = icmp ne i8 %295, 0
  %304 = xor i1 %303, %301
  %305 = or i1 %292, %304
  %.v10 = select i1 %305, i64 34, i64 20
  %306 = add i64 %258, %.v10
  %307 = add i64 %306, 3
  store i64 %307, i64* %PC.i, align 8
  %308 = load i32, i32* %221, align 4
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX.i88, align 8
  %310 = add i64 %306, 6
  store i64 %310, i64* %PC.i, align 8
  br i1 %305, label %block_.L_40051a, label %block_40050c

block_40050c:                                     ; preds = %block_.L_4004f8
  %311 = add i32 %308, 1
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RAX.i88, align 8
  %313 = icmp eq i32 %308, -1
  %314 = icmp eq i32 %311, 0
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %44, align 1
  %317 = and i32 %311, 255
  %318 = call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %50, align 1
  %322 = xor i32 %308, %311
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %55, align 1
  %326 = icmp eq i32 %311, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %58, align 1
  %328 = lshr i32 %311, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %61, align 1
  %330 = lshr i32 %308, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %328
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %67, align 1
  %335 = add i64 %213, -28
  %336 = add i64 %306, 9
  store i64 %336, i64* %PC.i, align 8
  %337 = inttoptr i64 %335 to i32*
  store i32 %311, i32* %337, align 4
  %338 = load i64, i64* %PC.i, align 8
  %339 = add i64 %338, 14
  store i64 %339, i64* %3, align 8
  br label %block_.L_400523

block_.L_40051a:                                  ; preds = %block_.L_4004f8
  %340 = add i32 %308, -1
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX.i88, align 8
  %342 = icmp eq i32 %308, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %44, align 1
  %344 = and i32 %340, 255
  %345 = call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %50, align 1
  %349 = xor i32 %308, %340
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %55, align 1
  %353 = icmp eq i32 %340, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %58, align 1
  %355 = lshr i32 %340, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %61, align 1
  %357 = lshr i32 %308, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %67, align 1
  %362 = add i64 %213, -32
  %363 = add i64 %306, 9
  store i64 %363, i64* %PC.i, align 8
  %364 = inttoptr i64 %362 to i32*
  store i32 %340, i32* %364, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400523

block_.L_400523:                                  ; preds = %block_.L_40051a, %block_40050c
  %365 = phi i64 [ %.pre6, %block_.L_40051a ], [ %339, %block_40050c ]
  %366 = add i64 %365, -117
  store i64 %366, i64* %3, align 8
  br label %block_.L_4004ae

block_.L_400528:                                  ; preds = %block_.L_4004ae
  %367 = add i64 %73, -4
  %368 = add i64 %109, 7
  store i64 %368, i64* %PC.i, align 8
  %369 = inttoptr i64 %367 to i32*
  store i32 -1, i32* %369, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_40052f

block_.L_40052f:                                  ; preds = %block_.L_400528, %block_4004ed
  %370 = phi i64 [ %.pre8, %block_.L_400528 ], [ %266, %block_4004ed ]
  %loadMem_40052f = phi %struct.Memory* [ %loadMem_400528, %block_.L_400528 ], [ %loadMem_40051a, %block_4004ed ]
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -4
  %373 = add i64 %370, 3
  store i64 %373, i64* %PC.i, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i88, align 8
  %377 = add i64 %370, 4
  store i64 %377, i64* %PC.i, align 8
  %378 = load i64, i64* %6, align 8
  %379 = add i64 %378, 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RBP.i, align 8
  store i64 %379, i64* %6, align 8
  %382 = add i64 %370, 5
  store i64 %382, i64* %PC.i, align 8
  %383 = inttoptr i64 %379 to i64*
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %3, align 8
  %385 = add i64 %378, 16
  store i64 %385, i64* %6, align 8
  ret %struct.Memory* %loadMem_40052f
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
