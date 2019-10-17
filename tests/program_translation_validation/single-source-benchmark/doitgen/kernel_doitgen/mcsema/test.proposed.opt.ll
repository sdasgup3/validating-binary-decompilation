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
define %struct.Memory* @kernel_doitgen(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %EDX.i = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -12
  %26 = load i32, i32* %EDX.i, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %RCX.i275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RCX.i275, align 8
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
  %49 = add i64 %48, -44
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %RAX.i266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %61 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %62 = bitcast [32 x %union.VectorReg]* %59 to double*
  %63 = bitcast i64* %60 to double*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %65 = bitcast %union.VectorReg* %64 to double*
  %66 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %64, i64 0, i32 0, i32 0, i32 0, i64 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %68 = bitcast i64* %67 to double*
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre = load i64, i64* %3, align 8
  %70 = bitcast [32 x %union.VectorReg]* %59 to <4 x i32>*
  br label %block_.L_400c20

block_.L_400c20:                                  ; preds = %block_.L_400dab, %entry
  %71 = phi i64 [ %956, %block_.L_400dab ], [ %.pre, %entry ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -44
  %74 = add i64 %71, 3
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX.i266, align 8
  %78 = add i64 %72, -4
  %79 = add i64 %71, 6
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %76, %81
  %83 = icmp ult i32 %76, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %53, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %54, align 1
  %90 = xor i32 %81, %76
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %55, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %56, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %57, align 1
  %99 = lshr i32 %76, 31
  %100 = lshr i32 %81, 31
  %101 = xor i32 %100, %99
  %102 = xor i32 %97, %99
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %58, align 1
  %106 = icmp ne i8 %98, 0
  %107 = xor i1 %106, %104
  %.v31 = select i1 %107, i64 12, i64 414
  %108 = add i64 %71, %.v31
  store i64 %108, i64* %3, align 8
  br i1 %107, label %block_400c2c, label %block_.L_400dbe

block_400c2c:                                     ; preds = %block_.L_400c20
  %109 = add i64 %72, -48
  %110 = add i64 %108, 7
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  store i32 0, i32* %111, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_400c33

block_.L_400c33:                                  ; preds = %block_.L_400d98, %block_400c2c
  %112 = phi i64 [ %926, %block_.L_400d98 ], [ %.pre25, %block_400c2c ]
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -48
  %115 = add i64 %112, 3
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i266, align 8
  %119 = add i64 %113, -8
  %120 = add i64 %112, 6
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %117, %122
  %124 = icmp ult i32 %117, %122
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %53, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %54, align 1
  %131 = xor i32 %122, %117
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %55, align 1
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %56, align 1
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %57, align 1
  %140 = lshr i32 %117, 31
  %141 = lshr i32 %122, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %138, %140
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %58, align 1
  %147 = icmp ne i8 %139, 0
  %148 = xor i1 %147, %145
  %.v = select i1 %148, i64 12, i64 376
  %149 = add i64 %112, %.v
  store i64 %149, i64* %3, align 8
  br i1 %148, label %block_400c3f, label %block_.L_400dab

block_400c3f:                                     ; preds = %block_.L_400c33
  %150 = add i64 %113, -52
  %151 = add i64 %149, 7
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  store i32 0, i32* %152, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_400c46

block_.L_400c46:                                  ; preds = %block_.L_400d1e, %block_400c3f
  %153 = phi i64 [ %665, %block_.L_400d1e ], [ %.pre26, %block_400c3f ]
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -52
  %156 = add i64 %153, 3
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RAX.i266, align 8
  %160 = add i64 %154, -12
  %161 = add i64 %153, 6
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sub i32 %158, %163
  %165 = icmp ult i32 %158, %163
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %53, align 1
  %167 = and i32 %164, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %54, align 1
  %172 = xor i32 %163, %158
  %173 = xor i32 %172, %164
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %55, align 1
  %177 = icmp eq i32 %164, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %56, align 1
  %179 = lshr i32 %164, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %57, align 1
  %181 = lshr i32 %158, 31
  %182 = lshr i32 %163, 31
  %183 = xor i32 %182, %181
  %184 = xor i32 %179, %181
  %185 = add nuw nsw i32 %184, %183
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %58, align 1
  %188 = icmp ne i8 %180, 0
  %189 = xor i1 %188, %186
  %.v32 = select i1 %189, i64 12, i64 235
  %190 = add i64 %153, %.v32
  store i64 %190, i64* %3, align 8
  br i1 %189, label %block_400c52, label %block_.L_400d31

block_400c52:                                     ; preds = %block_.L_400c46
  store <4 x i32> zeroinitializer, <4 x i32>* %70, align 1
  %191 = add i64 %154, -40
  %192 = add i64 %190, 7
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %RAX.i266, align 8
  %195 = add i64 %154, -44
  %196 = add i64 %190, 11
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = shl nsw i64 %199, 17
  store i64 %200, i64* %RCX.i275, align 8
  %201 = add i64 %200, %194
  store i64 %201, i64* %RAX.i266, align 8
  %202 = icmp ult i64 %201, %194
  %203 = icmp ult i64 %201, %200
  %204 = or i1 %202, %203
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %53, align 1
  %206 = trunc i64 %201 to i32
  %207 = and i32 %206, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %54, align 1
  %212 = xor i64 %194, %201
  %213 = lshr i64 %212, 4
  %214 = trunc i64 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %55, align 1
  %216 = icmp eq i64 %201, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %56, align 1
  %218 = lshr i64 %201, 63
  %219 = trunc i64 %218 to i8
  store i8 %219, i8* %57, align 1
  %220 = lshr i64 %194, 63
  %221 = lshr i64 %199, 46
  %222 = and i64 %221, 1
  %223 = xor i64 %218, %220
  %224 = xor i64 %218, %222
  %225 = add nuw nsw i64 %223, %224
  %226 = icmp eq i64 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %58, align 1
  %228 = add i64 %154, -48
  %229 = add i64 %190, 22
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = shl nsw i64 %232, 10
  store i64 %233, i64* %RCX.i275, align 8
  %234 = add i64 %233, %201
  store i64 %234, i64* %RAX.i266, align 8
  %235 = icmp ult i64 %234, %201
  %236 = icmp ult i64 %234, %233
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %53, align 1
  %239 = trunc i64 %234 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %54, align 1
  %245 = xor i64 %201, %234
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %55, align 1
  %249 = icmp eq i64 %234, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %56, align 1
  %251 = lshr i64 %234, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %57, align 1
  %253 = lshr i64 %232, 53
  %254 = and i64 %253, 1
  %255 = xor i64 %251, %218
  %256 = xor i64 %251, %254
  %257 = add nuw nsw i64 %255, %256
  %258 = icmp eq i64 %257, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %58, align 1
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -52
  %262 = add i64 %190, 33
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  store i64 %265, i64* %RCX.i275, align 8
  %266 = shl nsw i64 %265, 3
  %267 = add i64 %266, %234
  %268 = add i64 %190, 38
  store i64 %268, i64* %3, align 8
  %269 = load i64, i64* %61, align 1
  %270 = inttoptr i64 %267 to i64*
  store i64 %269, i64* %270, align 8
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -56
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 7
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i32*
  store i32 0, i32* %275, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400c7f

block_.L_400c7f:                                  ; preds = %block_400c8b, %block_400c52
  %276 = phi i64 [ %635, %block_400c8b ], [ %.pre28, %block_400c52 ]
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -56
  %279 = add i64 %276, 3
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i266, align 8
  %283 = add i64 %277, -12
  %284 = add i64 %276, 6
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sub i32 %281, %286
  %288 = icmp ult i32 %281, %286
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %53, align 1
  %290 = and i32 %287, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %54, align 1
  %295 = xor i32 %286, %281
  %296 = xor i32 %295, %287
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %55, align 1
  %300 = icmp eq i32 %287, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %56, align 1
  %302 = lshr i32 %287, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %57, align 1
  %304 = lshr i32 %281, 31
  %305 = lshr i32 %286, 31
  %306 = xor i32 %305, %304
  %307 = xor i32 %302, %304
  %308 = add nuw nsw i32 %307, %306
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %58, align 1
  %311 = icmp ne i8 %303, 0
  %312 = xor i1 %311, %309
  %.v30 = select i1 %312, i64 12, i64 159
  %313 = add i64 %276, %.v30
  store i64 %313, i64* %3, align 8
  br i1 %312, label %block_400c8b, label %block_.L_400d1e

block_400c8b:                                     ; preds = %block_.L_400c7f
  %314 = add i64 %277, -40
  %315 = add i64 %313, 4
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RAX.i266, align 8
  %318 = add i64 %277, -44
  %319 = add i64 %313, 8
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 17
  store i64 %323, i64* %RCX.i275, align 8
  %324 = add i64 %323, %317
  store i64 %324, i64* %RAX.i266, align 8
  %325 = icmp ult i64 %324, %317
  %326 = icmp ult i64 %324, %323
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %53, align 1
  %329 = trunc i64 %324 to i32
  %330 = and i32 %329, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %54, align 1
  %335 = xor i64 %317, %324
  %336 = lshr i64 %335, 4
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %55, align 1
  %339 = icmp eq i64 %324, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %56, align 1
  %341 = lshr i64 %324, 63
  %342 = trunc i64 %341 to i8
  store i8 %342, i8* %57, align 1
  %343 = lshr i64 %317, 63
  %344 = lshr i64 %322, 46
  %345 = and i64 %344, 1
  %346 = xor i64 %341, %343
  %347 = xor i64 %341, %345
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %58, align 1
  %351 = add i64 %277, -48
  %352 = add i64 %313, 19
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = shl nsw i64 %355, 10
  store i64 %356, i64* %RCX.i275, align 8
  %357 = add i64 %356, %324
  store i64 %357, i64* %RAX.i266, align 8
  %358 = icmp ult i64 %357, %324
  %359 = icmp ult i64 %357, %356
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %53, align 1
  %362 = trunc i64 %357 to i32
  %363 = and i32 %362, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %54, align 1
  %368 = xor i64 %324, %357
  %369 = lshr i64 %368, 4
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %55, align 1
  %372 = icmp eq i64 %357, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %56, align 1
  %374 = lshr i64 %357, 63
  %375 = trunc i64 %374 to i8
  store i8 %375, i8* %57, align 1
  %376 = lshr i64 %355, 53
  %377 = and i64 %376, 1
  %378 = xor i64 %374, %341
  %379 = xor i64 %374, %377
  %380 = add nuw nsw i64 %378, %379
  %381 = icmp eq i64 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %58, align 1
  %383 = load i64, i64* %RBP.i, align 8
  %384 = add i64 %383, -52
  %385 = add i64 %313, 30
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RCX.i275, align 8
  %389 = shl nsw i64 %388, 3
  %390 = add i64 %389, %357
  %391 = add i64 %313, 35
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %61, align 1
  store double 0.000000e+00, double* %63, align 1
  %394 = add i64 %383, -24
  %395 = add i64 %313, 39
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RAX.i266, align 8
  %398 = add i64 %383, -44
  %399 = add i64 %313, 43
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = shl nsw i64 %402, 17
  store i64 %403, i64* %RCX.i275, align 8
  %404 = add i64 %403, %397
  store i64 %404, i64* %RAX.i266, align 8
  %405 = icmp ult i64 %404, %397
  %406 = icmp ult i64 %404, %403
  %407 = or i1 %405, %406
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %53, align 1
  %409 = trunc i64 %404 to i32
  %410 = and i32 %409, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %54, align 1
  %415 = xor i64 %397, %404
  %416 = lshr i64 %415, 4
  %417 = trunc i64 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %55, align 1
  %419 = icmp eq i64 %404, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %56, align 1
  %421 = lshr i64 %404, 63
  %422 = trunc i64 %421 to i8
  store i8 %422, i8* %57, align 1
  %423 = lshr i64 %397, 63
  %424 = lshr i64 %402, 46
  %425 = and i64 %424, 1
  %426 = xor i64 %421, %423
  %427 = xor i64 %421, %425
  %428 = add nuw nsw i64 %426, %427
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %58, align 1
  %431 = add i64 %383, -48
  %432 = add i64 %313, 54
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  %436 = shl nsw i64 %435, 10
  store i64 %436, i64* %RCX.i275, align 8
  %437 = add i64 %436, %404
  store i64 %437, i64* %RAX.i266, align 8
  %438 = icmp ult i64 %437, %404
  %439 = icmp ult i64 %437, %436
  %440 = or i1 %438, %439
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %53, align 1
  %442 = trunc i64 %437 to i32
  %443 = and i32 %442, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %54, align 1
  %448 = xor i64 %404, %437
  %449 = lshr i64 %448, 4
  %450 = trunc i64 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %55, align 1
  %452 = icmp eq i64 %437, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %56, align 1
  %454 = lshr i64 %437, 63
  %455 = trunc i64 %454 to i8
  store i8 %455, i8* %57, align 1
  %456 = lshr i64 %435, 53
  %457 = and i64 %456, 1
  %458 = xor i64 %454, %421
  %459 = xor i64 %454, %457
  %460 = add nuw nsw i64 %458, %459
  %461 = icmp eq i64 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %58, align 1
  %463 = load i64, i64* %RBP.i, align 8
  %464 = add i64 %463, -56
  %465 = add i64 %313, 65
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %RCX.i275, align 8
  %469 = shl nsw i64 %468, 3
  %470 = add i64 %469, %437
  %471 = add i64 %313, 70
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %66, align 1
  store double 0.000000e+00, double* %68, align 1
  %474 = add i64 %463, -32
  %475 = add i64 %313, 74
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i64*
  %477 = load i64, i64* %476, align 8
  store i64 %477, i64* %RAX.i266, align 8
  %478 = add i64 %313, 78
  store i64 %478, i64* %3, align 8
  %479 = load i32, i32* %466, align 4
  %480 = sext i32 %479 to i64
  %481 = shl nsw i64 %480, 10
  store i64 %481, i64* %RCX.i275, align 8
  %482 = add i64 %481, %477
  store i64 %482, i64* %RAX.i266, align 8
  %483 = icmp ult i64 %482, %477
  %484 = icmp ult i64 %482, %481
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %53, align 1
  %487 = trunc i64 %482 to i32
  %488 = and i32 %487, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %54, align 1
  %493 = xor i64 %477, %482
  %494 = lshr i64 %493, 4
  %495 = trunc i64 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %55, align 1
  %497 = icmp eq i64 %482, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %56, align 1
  %499 = lshr i64 %482, 63
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %57, align 1
  %501 = lshr i64 %477, 63
  %502 = lshr i64 %480, 53
  %503 = and i64 %502, 1
  %504 = xor i64 %499, %501
  %505 = xor i64 %499, %503
  %506 = add nuw nsw i64 %504, %505
  %507 = icmp eq i64 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %58, align 1
  %509 = add i64 %463, -52
  %510 = add i64 %313, 89
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX.i275, align 8
  %514 = shl nsw i64 %513, 3
  %515 = add i64 %514, %482
  %516 = add i64 %313, 94
  store i64 %516, i64* %3, align 8
  %517 = bitcast i64 %473 to double
  %518 = inttoptr i64 %515 to double*
  %519 = load double, double* %518, align 8
  %520 = fmul double %517, %519
  store double %520, double* %65, align 1
  store i64 0, i64* %67, align 1
  %521 = load double, double* %62, align 1
  %522 = fadd double %521, %520
  store double %522, double* %62, align 1
  %523 = load i64, i64* %RBP.i, align 8
  %524 = add i64 %523, -40
  %525 = add i64 %313, 102
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %RAX.i266, align 8
  %528 = add i64 %523, -44
  %529 = add i64 %313, 106
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  %533 = shl nsw i64 %532, 17
  store i64 %533, i64* %RCX.i275, align 8
  %534 = add i64 %533, %527
  store i64 %534, i64* %RAX.i266, align 8
  %535 = icmp ult i64 %534, %527
  %536 = icmp ult i64 %534, %533
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %53, align 1
  %539 = trunc i64 %534 to i32
  %540 = and i32 %539, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %54, align 1
  %545 = xor i64 %527, %534
  %546 = lshr i64 %545, 4
  %547 = trunc i64 %546 to i8
  %548 = and i8 %547, 1
  store i8 %548, i8* %55, align 1
  %549 = icmp eq i64 %534, 0
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %56, align 1
  %551 = lshr i64 %534, 63
  %552 = trunc i64 %551 to i8
  store i8 %552, i8* %57, align 1
  %553 = lshr i64 %527, 63
  %554 = lshr i64 %532, 46
  %555 = and i64 %554, 1
  %556 = xor i64 %551, %553
  %557 = xor i64 %551, %555
  %558 = add nuw nsw i64 %556, %557
  %559 = icmp eq i64 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %58, align 1
  %561 = add i64 %523, -48
  %562 = add i64 %313, 117
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  %566 = shl nsw i64 %565, 10
  store i64 %566, i64* %RCX.i275, align 8
  %567 = add i64 %566, %534
  store i64 %567, i64* %RAX.i266, align 8
  %568 = icmp ult i64 %567, %534
  %569 = icmp ult i64 %567, %566
  %570 = or i1 %568, %569
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %53, align 1
  %572 = trunc i64 %567 to i32
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %54, align 1
  %578 = xor i64 %534, %567
  %579 = lshr i64 %578, 4
  %580 = trunc i64 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %55, align 1
  %582 = icmp eq i64 %567, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %56, align 1
  %584 = lshr i64 %567, 63
  %585 = trunc i64 %584 to i8
  store i8 %585, i8* %57, align 1
  %586 = lshr i64 %565, 53
  %587 = and i64 %586, 1
  %588 = xor i64 %584, %551
  %589 = xor i64 %584, %587
  %590 = add nuw nsw i64 %588, %589
  %591 = icmp eq i64 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %58, align 1
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -52
  %595 = add i64 %313, 128
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX.i275, align 8
  %599 = shl nsw i64 %598, 3
  %600 = add i64 %599, %567
  %601 = add i64 %313, 133
  store i64 %601, i64* %3, align 8
  %602 = load i64, i64* %61, align 1
  %603 = inttoptr i64 %600 to i64*
  store i64 %602, i64* %603, align 8
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -56
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 3
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = add i32 %609, 1
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i266, align 8
  %612 = icmp eq i32 %609, -1
  %613 = icmp eq i32 %610, 0
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %53, align 1
  %616 = and i32 %610, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %54, align 1
  %621 = xor i32 %610, %609
  %622 = lshr i32 %621, 4
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %55, align 1
  %625 = zext i1 %613 to i8
  store i8 %625, i8* %56, align 1
  %626 = lshr i32 %610, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %57, align 1
  %628 = lshr i32 %609, 31
  %629 = xor i32 %626, %628
  %630 = add nuw nsw i32 %629, %626
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %58, align 1
  %633 = add i64 %606, 9
  store i64 %633, i64* %3, align 8
  store i32 %610, i32* %608, align 4
  %634 = load i64, i64* %3, align 8
  %635 = add i64 %634, -154
  store i64 %635, i64* %3, align 8
  br label %block_.L_400c7f

block_.L_400d1e:                                  ; preds = %block_.L_400c7f
  %636 = add i64 %277, -52
  %637 = add i64 %313, 8
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, 1
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX.i266, align 8
  %642 = icmp eq i32 %639, -1
  %643 = icmp eq i32 %640, 0
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %53, align 1
  %646 = and i32 %640, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %54, align 1
  %651 = xor i32 %640, %639
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %55, align 1
  %655 = zext i1 %643 to i8
  store i8 %655, i8* %56, align 1
  %656 = lshr i32 %640, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %57, align 1
  %658 = lshr i32 %639, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %656
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %58, align 1
  %663 = add i64 %313, 14
  store i64 %663, i64* %3, align 8
  store i32 %640, i32* %638, align 4
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, -230
  store i64 %665, i64* %3, align 8
  br label %block_.L_400c46

block_.L_400d31:                                  ; preds = %block_.L_400c46
  %666 = add i64 %190, 7
  store i64 %666, i64* %3, align 8
  store i32 0, i32* %157, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400d38

block_.L_400d38:                                  ; preds = %block_400d44, %block_.L_400d31
  %667 = phi i64 [ %896, %block_400d44 ], [ %.pre27, %block_.L_400d31 ]
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -52
  %670 = add i64 %667, 3
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RAX.i266, align 8
  %674 = add i64 %668, -4
  %675 = add i64 %667, 6
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = sub i32 %672, %677
  %679 = icmp ult i32 %672, %677
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %53, align 1
  %681 = and i32 %678, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %54, align 1
  %686 = xor i32 %677, %672
  %687 = xor i32 %686, %678
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %55, align 1
  %691 = icmp eq i32 %678, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %56, align 1
  %693 = lshr i32 %678, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %57, align 1
  %695 = lshr i32 %672, 31
  %696 = lshr i32 %677, 31
  %697 = xor i32 %696, %695
  %698 = xor i32 %693, %695
  %699 = add nuw nsw i32 %698, %697
  %700 = icmp eq i32 %699, 2
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %58, align 1
  %702 = icmp ne i8 %694, 0
  %703 = xor i1 %702, %700
  %.v29 = select i1 %703, i64 12, i64 96
  %704 = add i64 %667, %.v29
  store i64 %704, i64* %3, align 8
  br i1 %703, label %block_400d44, label %block_.L_400d98

block_400d44:                                     ; preds = %block_.L_400d38
  %705 = add i64 %668, -40
  %706 = add i64 %704, 4
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RAX.i266, align 8
  %709 = add i64 %668, -44
  %710 = add i64 %704, 8
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = sext i32 %712 to i64
  %714 = shl nsw i64 %713, 17
  store i64 %714, i64* %RCX.i275, align 8
  %715 = add i64 %714, %708
  store i64 %715, i64* %RAX.i266, align 8
  %716 = icmp ult i64 %715, %708
  %717 = icmp ult i64 %715, %714
  %718 = or i1 %716, %717
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %53, align 1
  %720 = trunc i64 %715 to i32
  %721 = and i32 %720, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %54, align 1
  %726 = xor i64 %708, %715
  %727 = lshr i64 %726, 4
  %728 = trunc i64 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %55, align 1
  %730 = icmp eq i64 %715, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %56, align 1
  %732 = lshr i64 %715, 63
  %733 = trunc i64 %732 to i8
  store i8 %733, i8* %57, align 1
  %734 = lshr i64 %708, 63
  %735 = lshr i64 %713, 46
  %736 = and i64 %735, 1
  %737 = xor i64 %732, %734
  %738 = xor i64 %732, %736
  %739 = add nuw nsw i64 %737, %738
  %740 = icmp eq i64 %739, 2
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %58, align 1
  %742 = add i64 %668, -48
  %743 = add i64 %704, 19
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = sext i32 %745 to i64
  %747 = shl nsw i64 %746, 10
  store i64 %747, i64* %RCX.i275, align 8
  %748 = add i64 %747, %715
  store i64 %748, i64* %RAX.i266, align 8
  %749 = icmp ult i64 %748, %715
  %750 = icmp ult i64 %748, %747
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %53, align 1
  %753 = trunc i64 %748 to i32
  %754 = and i32 %753, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %54, align 1
  %759 = xor i64 %715, %748
  %760 = lshr i64 %759, 4
  %761 = trunc i64 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %55, align 1
  %763 = icmp eq i64 %748, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %56, align 1
  %765 = lshr i64 %748, 63
  %766 = trunc i64 %765 to i8
  store i8 %766, i8* %57, align 1
  %767 = lshr i64 %746, 53
  %768 = and i64 %767, 1
  %769 = xor i64 %765, %732
  %770 = xor i64 %765, %768
  %771 = add nuw nsw i64 %769, %770
  %772 = icmp eq i64 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %58, align 1
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -52
  %776 = add i64 %704, 30
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX.i275, align 8
  %780 = shl nsw i64 %779, 3
  %781 = add i64 %780, %748
  %782 = add i64 %704, 35
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %69, align 1
  store double 0.000000e+00, double* %63, align 1
  %785 = add i64 %774, -24
  %786 = add i64 %704, 39
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RAX.i266, align 8
  %789 = add i64 %774, -44
  %790 = add i64 %704, 43
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = sext i32 %792 to i64
  %794 = shl nsw i64 %793, 17
  store i64 %794, i64* %RCX.i275, align 8
  %795 = add i64 %794, %788
  store i64 %795, i64* %RAX.i266, align 8
  %796 = icmp ult i64 %795, %788
  %797 = icmp ult i64 %795, %794
  %798 = or i1 %796, %797
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %53, align 1
  %800 = trunc i64 %795 to i32
  %801 = and i32 %800, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %54, align 1
  %806 = xor i64 %788, %795
  %807 = lshr i64 %806, 4
  %808 = trunc i64 %807 to i8
  %809 = and i8 %808, 1
  store i8 %809, i8* %55, align 1
  %810 = icmp eq i64 %795, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %56, align 1
  %812 = lshr i64 %795, 63
  %813 = trunc i64 %812 to i8
  store i8 %813, i8* %57, align 1
  %814 = lshr i64 %788, 63
  %815 = lshr i64 %793, 46
  %816 = and i64 %815, 1
  %817 = xor i64 %812, %814
  %818 = xor i64 %812, %816
  %819 = add nuw nsw i64 %817, %818
  %820 = icmp eq i64 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %58, align 1
  %822 = add i64 %774, -48
  %823 = add i64 %704, 54
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = sext i32 %825 to i64
  %827 = shl nsw i64 %826, 10
  store i64 %827, i64* %RCX.i275, align 8
  %828 = add i64 %827, %795
  store i64 %828, i64* %RAX.i266, align 8
  %829 = icmp ult i64 %828, %795
  %830 = icmp ult i64 %828, %827
  %831 = or i1 %829, %830
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %53, align 1
  %833 = trunc i64 %828 to i32
  %834 = and i32 %833, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %54, align 1
  %839 = xor i64 %795, %828
  %840 = lshr i64 %839, 4
  %841 = trunc i64 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %55, align 1
  %843 = icmp eq i64 %828, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %56, align 1
  %845 = lshr i64 %828, 63
  %846 = trunc i64 %845 to i8
  store i8 %846, i8* %57, align 1
  %847 = lshr i64 %826, 53
  %848 = and i64 %847, 1
  %849 = xor i64 %845, %812
  %850 = xor i64 %845, %848
  %851 = add nuw nsw i64 %849, %850
  %852 = icmp eq i64 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %58, align 1
  %854 = load i64, i64* %RBP.i, align 8
  %855 = add i64 %854, -52
  %856 = add i64 %704, 65
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RCX.i275, align 8
  %860 = shl nsw i64 %859, 3
  %861 = add i64 %860, %828
  %862 = add i64 %704, 70
  store i64 %862, i64* %3, align 8
  %863 = load i64, i64* %69, align 1
  %864 = inttoptr i64 %861 to i64*
  store i64 %863, i64* %864, align 8
  %865 = load i64, i64* %RBP.i, align 8
  %866 = add i64 %865, -52
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 3
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %866 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i32 %870, 1
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i266, align 8
  %873 = icmp eq i32 %870, -1
  %874 = icmp eq i32 %871, 0
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %53, align 1
  %877 = and i32 %871, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %54, align 1
  %882 = xor i32 %871, %870
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %55, align 1
  %886 = zext i1 %874 to i8
  store i8 %886, i8* %56, align 1
  %887 = lshr i32 %871, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %57, align 1
  %889 = lshr i32 %870, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %887
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %58, align 1
  %894 = add i64 %867, 9
  store i64 %894, i64* %3, align 8
  store i32 %871, i32* %869, align 4
  %895 = load i64, i64* %3, align 8
  %896 = add i64 %895, -91
  store i64 %896, i64* %3, align 8
  br label %block_.L_400d38

block_.L_400d98:                                  ; preds = %block_.L_400d38
  %897 = add i64 %668, -48
  %898 = add i64 %704, 8
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = add i32 %900, 1
  %902 = zext i32 %901 to i64
  store i64 %902, i64* %RAX.i266, align 8
  %903 = icmp eq i32 %900, -1
  %904 = icmp eq i32 %901, 0
  %905 = or i1 %903, %904
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %53, align 1
  %907 = and i32 %901, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %54, align 1
  %912 = xor i32 %901, %900
  %913 = lshr i32 %912, 4
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %55, align 1
  %916 = zext i1 %904 to i8
  store i8 %916, i8* %56, align 1
  %917 = lshr i32 %901, 31
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %57, align 1
  %919 = lshr i32 %900, 31
  %920 = xor i32 %917, %919
  %921 = add nuw nsw i32 %920, %917
  %922 = icmp eq i32 %921, 2
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %58, align 1
  %924 = add i64 %704, 14
  store i64 %924, i64* %3, align 8
  store i32 %901, i32* %899, align 4
  %925 = load i64, i64* %3, align 8
  %926 = add i64 %925, -371
  store i64 %926, i64* %3, align 8
  br label %block_.L_400c33

block_.L_400dab:                                  ; preds = %block_.L_400c33
  %927 = add i64 %113, -44
  %928 = add i64 %149, 8
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = add i32 %930, 1
  %932 = zext i32 %931 to i64
  store i64 %932, i64* %RAX.i266, align 8
  %933 = icmp eq i32 %930, -1
  %934 = icmp eq i32 %931, 0
  %935 = or i1 %933, %934
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %53, align 1
  %937 = and i32 %931, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %54, align 1
  %942 = xor i32 %931, %930
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %55, align 1
  %946 = zext i1 %934 to i8
  store i8 %946, i8* %56, align 1
  %947 = lshr i32 %931, 31
  %948 = trunc i32 %947 to i8
  store i8 %948, i8* %57, align 1
  %949 = lshr i32 %930, 31
  %950 = xor i32 %947, %949
  %951 = add nuw nsw i32 %950, %947
  %952 = icmp eq i32 %951, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %58, align 1
  %954 = add i64 %149, 14
  store i64 %954, i64* %3, align 8
  store i32 %931, i32* %929, align 4
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, -409
  store i64 %956, i64* %3, align 8
  br label %block_.L_400c20

block_.L_400dbe:                                  ; preds = %block_.L_400c20
  %957 = add i64 %108, 1
  store i64 %957, i64* %3, align 8
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RBP.i, align 8
  store i64 %959, i64* %6, align 8
  %962 = add i64 %108, 2
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %959 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %3, align 8
  %965 = add i64 %958, 16
  store i64 %965, i64* %6, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_400dbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_400dab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jge_.L_400d31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_shlq__0x11___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 17
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 47
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 46
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xa___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 10
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 54
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 53
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400db0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
