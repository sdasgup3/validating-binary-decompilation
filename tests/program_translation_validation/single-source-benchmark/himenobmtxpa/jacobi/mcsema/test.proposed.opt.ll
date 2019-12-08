; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603058_type = type <{ [4 x i8] }>
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
@G_0x603058 = local_unnamed_addr global %G_0x603058_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @jacobi(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %PC.i, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i2556, align 8
  %R10.i2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %PC.i, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i2554, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2550 = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i2550, align 4
  %22 = add i64 %10, 14
  store i64 %22, i64* %PC.i, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i2547, align 8
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %RDX.i2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RDX.i2544, align 8
  %33 = load i64, i64* %PC.i, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %PC.i, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %RCX.i2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %RCX.i2541, align 8
  %39 = load i64, i64* %PC.i, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R8.i, align 8
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -48
  %50 = load i64, i64* %R9.i, align 8
  %51 = load i64, i64* %PC.i, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC.i, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -40
  %56 = load i64, i64* %PC.i, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC.i, align 8
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RCX.i2541, align 8
  %RDI.i2532 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %60 = add i64 %59, 12
  %61 = add i64 %56, 7
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, -1
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %RDI.i2532, align 8
  %66 = icmp eq i32 %63, 0
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %67, i8* %68, align 1
  %69 = and i32 %64, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69)
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %73, i8* %74, align 1
  %75 = xor i32 %63, %64
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %78, i8* %79, align 1
  %80 = icmp eq i32 %64, 0
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %81, i8* %82, align 1
  %83 = lshr i32 %64, 31
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %84, i8* %85, align 1
  %86 = lshr i32 %63, 31
  %87 = xor i32 %83, %86
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %90, i8* %91, align 1
  %92 = add i64 %54, -68
  %93 = add i64 %56, 13
  store i64 %93, i64* %PC.i, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %64, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -40
  %97 = load i64, i64* %PC.i, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %96 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RCX.i2541, align 8
  %101 = add i64 %100, 16
  %102 = add i64 %97, 7
  store i64 %102, i64* %PC.i, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, -1
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RDI.i2532, align 8
  %107 = icmp eq i32 %104, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %68, align 1
  %109 = and i32 %105, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %74, align 1
  %114 = xor i32 %104, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %79, align 1
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %82, align 1
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %85, align 1
  %122 = lshr i32 %104, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %91, align 1
  %127 = add i64 %95, -72
  %128 = add i64 %97, 13
  store i64 %128, i64* %PC.i, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 %105, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -40
  %132 = load i64, i64* %PC.i, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i, align 8
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RCX.i2541, align 8
  %136 = add i64 %135, 20
  %137 = add i64 %132, 7
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, -1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RDI.i2532, align 8
  %142 = icmp eq i32 %139, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %68, align 1
  %144 = and i32 %140, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %74, align 1
  %149 = xor i32 %139, %140
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %79, align 1
  %153 = icmp eq i32 %140, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %82, align 1
  %155 = lshr i32 %140, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %85, align 1
  %157 = lshr i32 %139, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %91, align 1
  %162 = add i64 %130, -76
  %163 = add i64 %132, 13
  store i64 %163, i64* %PC.i, align 8
  %164 = inttoptr i64 %162 to i32*
  store i32 %140, i32* %164, align 4
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -64
  %167 = load i64, i64* %PC.i, align 8
  %168 = add i64 %167, 7
  store i64 %168, i64* %PC.i, align 8
  %169 = inttoptr i64 %166 to i32*
  store i32 0, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -96
  %172 = load i64, i64* %R10.i2554, align 8
  %173 = load i64, i64* %PC.i, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC.i, align 8
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -104
  %178 = load i64, i64* %RAX.i2556, align 8
  %179 = load i64, i64* %PC.i, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %181, align 8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %183 = bitcast [32 x %union.VectorReg]* %182 to i8*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %185 = bitcast [32 x %union.VectorReg]* %182 to i32*
  %186 = getelementptr inbounds i8, i8* %183, i64 4
  %187 = bitcast i8* %186 to i32*
  %188 = bitcast i64* %184 to i32*
  %189 = getelementptr inbounds i8, i8* %183, i64 12
  %190 = bitcast i8* %189 to i32*
  %191 = bitcast [32 x %union.VectorReg]* %182 to <2 x float>*
  %192 = bitcast [32 x %union.VectorReg]* %182 to float*
  %193 = bitcast i8* %186 to float*
  %194 = bitcast i64* %184 to float*
  %195 = bitcast i8* %189 to float*
  %196 = bitcast [32 x %union.VectorReg]* %182 to <2 x float>*
  %197 = bitcast i64* %184 to <2 x i32>*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %199 = bitcast %union.VectorReg* %198 to i8*
  %200 = bitcast %union.VectorReg* %198 to float*
  %201 = getelementptr inbounds i8, i8* %199, i64 4
  %202 = bitcast i8* %201 to float*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %204 = bitcast i64* %203 to float*
  %205 = getelementptr inbounds i8, i8* %199, i64 12
  %206 = bitcast i8* %205 to float*
  %207 = bitcast %union.VectorReg* %198 to <2 x float>*
  %208 = bitcast i64* %203 to <2 x i32>*
  %209 = bitcast i8* %201 to i32*
  %210 = bitcast i64* %203 to i32*
  %211 = bitcast i8* %205 to i32*
  %212 = bitcast %union.VectorReg* %198 to <2 x float>*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %214 = bitcast %union.VectorReg* %213 to i8*
  %215 = bitcast %union.VectorReg* %213 to float*
  %216 = getelementptr inbounds i8, i8* %214, i64 4
  %217 = bitcast i8* %216 to float*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %219 = bitcast i64* %218 to float*
  %220 = getelementptr inbounds i8, i8* %214, i64 12
  %221 = bitcast i8* %220 to float*
  %222 = bitcast %union.VectorReg* %213 to <2 x float>*
  %223 = bitcast i64* %218 to <2 x i32>*
  %224 = bitcast i8* %216 to i32*
  %225 = bitcast i64* %218 to i32*
  %226 = bitcast i8* %220 to i32*
  %227 = bitcast %union.VectorReg* %213 to <2 x float>*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400d29

block_.L_400d29:                                  ; preds = %block_.L_401956, %entry
  %228 = phi i64 [ %7501, %block_.L_401956 ], [ %.pre, %entry ]
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -64
  %231 = add i64 %228, 3
  store i64 %231, i64* %PC.i, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RAX.i2556, align 8
  %235 = add i64 %229, -4
  %236 = add i64 %228, 6
  store i64 %236, i64* %PC.i, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sub i32 %233, %238
  %240 = icmp ult i32 %233, %238
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %68, align 1
  %242 = and i32 %239, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %74, align 1
  %247 = xor i32 %238, %233
  %248 = xor i32 %247, %239
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %79, align 1
  %252 = icmp eq i32 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %82, align 1
  %254 = lshr i32 %239, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %85, align 1
  %256 = lshr i32 %233, 31
  %257 = lshr i32 %238, 31
  %258 = xor i32 %257, %256
  %259 = xor i32 %254, %256
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %91, align 1
  %263 = icmp ne i8 %255, 0
  %264 = xor i1 %263, %261
  %.v = select i1 %264, i64 12, i64 3136
  %265 = add i64 %228, %.v
  store i64 %265, i64* %3, align 8
  br i1 %264, label %block_400d35, label %block_.L_401969

block_400d35:                                     ; preds = %block_.L_400d29
  store i32 0, i32* %185, align 1
  store i32 0, i32* %187, align 1
  store i32 0, i32* %188, align 1
  store i32 0, i32* %190, align 1
  %266 = add i64 %229, -80
  %267 = add i64 %265, 8
  store i64 %267, i64* %PC.i, align 8
  %268 = load <2 x float>, <2 x float>* %191, align 1
  %269 = extractelement <2 x float> %268, i32 0
  %270 = inttoptr i64 %266 to float*
  store float %269, float* %270, align 4
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -52
  %273 = load i64, i64* %PC.i, align 8
  %274 = add i64 %273, 7
  store i64 %274, i64* %PC.i, align 8
  %275 = inttoptr i64 %272 to i32*
  store i32 1, i32* %275, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d44

block_.L_400d44:                                  ; preds = %block_.L_40183e, %block_400d35
  %276 = phi i64 [ %6957, %block_.L_40183e ], [ %.pre1, %block_400d35 ]
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -52
  %279 = add i64 %276, 3
  store i64 %279, i64* %PC.i, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i2556, align 8
  %283 = add i64 %277, -68
  %284 = add i64 %276, 6
  store i64 %284, i64* %PC.i, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sub i32 %281, %286
  %288 = icmp ult i32 %281, %286
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %68, align 1
  %290 = and i32 %287, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %74, align 1
  %295 = xor i32 %286, %281
  %296 = xor i32 %295, %287
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %79, align 1
  %300 = icmp eq i32 %287, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %82, align 1
  %302 = lshr i32 %287, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %85, align 1
  %304 = lshr i32 %281, 31
  %305 = lshr i32 %286, 31
  %306 = xor i32 %305, %304
  %307 = xor i32 %302, %304
  %308 = add nuw nsw i32 %307, %306
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %91, align 1
  %311 = icmp ne i8 %303, 0
  %312 = xor i1 %311, %309
  %.v7 = select i1 %312, i64 12, i64 2829
  %313 = add i64 %276, %.v7
  store i64 %313, i64* %3, align 8
  br i1 %312, label %block_400d50, label %block_.L_401851

block_400d50:                                     ; preds = %block_.L_400d44
  %314 = add i64 %277, -56
  %315 = add i64 %313, 7
  store i64 %315, i64* %PC.i, align 8
  %316 = inttoptr i64 %314 to i32*
  store i32 1, i32* %316, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d57

block_.L_400d57:                                  ; preds = %block_.L_40182b, %block_400d50
  %317 = phi i64 [ %6926, %block_.L_40182b ], [ %.pre2, %block_400d50 ]
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -56
  %320 = add i64 %317, 3
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX.i2556, align 8
  %324 = add i64 %318, -72
  %325 = add i64 %317, 6
  store i64 %325, i64* %PC.i, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sub i32 %322, %327
  %329 = icmp ult i32 %322, %327
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %68, align 1
  %331 = and i32 %328, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %74, align 1
  %336 = xor i32 %327, %322
  %337 = xor i32 %336, %328
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %79, align 1
  %341 = icmp eq i32 %328, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %82, align 1
  %343 = lshr i32 %328, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %85, align 1
  %345 = lshr i32 %322, 31
  %346 = lshr i32 %327, 31
  %347 = xor i32 %346, %345
  %348 = xor i32 %343, %345
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %91, align 1
  %352 = icmp ne i8 %344, 0
  %353 = xor i1 %352, %350
  %.v8 = select i1 %353, i64 12, i64 2791
  %354 = add i64 %317, %.v8
  store i64 %354, i64* %3, align 8
  br i1 %353, label %block_400d63, label %block_.L_40183e

block_400d63:                                     ; preds = %block_.L_400d57
  %355 = add i64 %318, -60
  %356 = add i64 %354, 7
  store i64 %356, i64* %PC.i, align 8
  %357 = inttoptr i64 %355 to i32*
  store i32 1, i32* %357, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d6a

block_.L_400d6a:                                  ; preds = %block_400d76, %block_400d63
  %358 = phi i64 [ %6895, %block_400d76 ], [ %.pre3, %block_400d63 ]
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -60
  %361 = add i64 %358, 3
  store i64 %361, i64* %PC.i, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i2556, align 8
  %365 = add i64 %359, -76
  %366 = add i64 %358, 6
  store i64 %366, i64* %PC.i, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sub i32 %363, %368
  %370 = icmp ult i32 %363, %368
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %68, align 1
  %372 = and i32 %369, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %74, align 1
  %377 = xor i32 %368, %363
  %378 = xor i32 %377, %369
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %79, align 1
  %382 = icmp eq i32 %369, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %82, align 1
  %384 = lshr i32 %369, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %85, align 1
  %386 = lshr i32 %363, 31
  %387 = lshr i32 %368, 31
  %388 = xor i32 %387, %386
  %389 = xor i32 %384, %386
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %91, align 1
  %393 = icmp ne i8 %385, 0
  %394 = xor i1 %393, %391
  %.v9 = select i1 %394, i64 12, i64 2753
  %395 = add i64 %358, %.v9
  store i64 %395, i64* %3, align 8
  br i1 %394, label %block_400d76, label %block_.L_40182b

block_400d76:                                     ; preds = %block_.L_400d6a
  %396 = add i64 %359, -16
  %397 = add i64 %395, 4
  store i64 %397, i64* %PC.i, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i2556, align 8
  %400 = add i64 %395, 7
  store i64 %400, i64* %PC.i, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX.i2556, align 8
  %403 = add i64 %395, 11
  store i64 %403, i64* %PC.i, align 8
  %404 = load i64, i64* %398, align 8
  store i64 %404, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %405 = add i64 %395, 19
  store i64 %405, i64* %PC.i, align 8
  %406 = load i64, i64* %398, align 8
  store i64 %406, i64* %RCX.i2541, align 8
  %407 = add i64 %395, 23
  store i64 %407, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %408 = add i64 %395, 27
  store i64 %408, i64* %PC.i, align 8
  %409 = load i64, i64* %398, align 8
  store i64 %409, i64* %RCX.i2541, align 8
  %410 = add i64 %395, 31
  store i64 %410, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %411 = add i64 %359, -52
  %412 = add i64 %395, 34
  store i64 %412, i64* %PC.i, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RSI.i2547, align 8
  %416 = add i64 %395, 38
  store i64 %416, i64* %PC.i, align 8
  %417 = load i64, i64* %398, align 8
  store i64 %417, i64* %RCX.i2541, align 8
  %418 = add i64 %417, 16
  %419 = add i64 %395, 42
  store i64 %419, i64* %PC.i, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %414 to i64
  %423 = sext i32 %421 to i64
  %424 = mul nsw i64 %423, %422
  %425 = trunc i64 %424 to i32
  %426 = and i64 %424, 4294967295
  store i64 %426, i64* %RSI.i2547, align 8
  %427 = shl i64 %424, 32
  %428 = ashr exact i64 %427, 32
  %429 = icmp ne i64 %428, %424
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %68, align 1
  %431 = and i32 %425, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %436 = lshr i32 %425, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %85, align 1
  store i8 %430, i8* %91, align 1
  %438 = add i64 %395, 46
  store i64 %438, i64* %PC.i, align 8
  %439 = load i64, i64* %398, align 8
  store i64 %439, i64* %RCX.i2541, align 8
  %440 = add i64 %439, 20
  %441 = add i64 %395, 50
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = shl i64 %424, 32
  %445 = ashr exact i64 %444, 32
  %446 = sext i32 %443 to i64
  %447 = mul nsw i64 %446, %445
  %448 = and i64 %447, 4294967295
  store i64 %448, i64* %RSI.i2547, align 8
  %449 = trunc i64 %447 to i32
  %450 = and i64 %447, 4294967295
  store i64 %450, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %451 = and i32 %449, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %456 = icmp eq i32 %449, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %82, align 1
  %458 = lshr i32 %449, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -56
  %462 = add i64 %395, 55
  store i64 %462, i64* %PC.i, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RSI.i2547, align 8
  %466 = add i64 %460, -16
  %467 = add i64 %395, 59
  store i64 %467, i64* %PC.i, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RCX.i2541, align 8
  %470 = add i64 %469, 20
  %471 = add i64 %395, 63
  store i64 %471, i64* %PC.i, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %464 to i64
  %475 = sext i32 %473 to i64
  %476 = mul nsw i64 %475, %474
  %477 = and i64 %476, 4294967295
  store i64 %477, i64* %RSI.i2547, align 8
  %478 = trunc i64 %476 to i32
  %479 = add i32 %478, %449
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RDX.i2544, align 8
  %481 = icmp ult i32 %479, %449
  %482 = icmp ult i32 %479, %478
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %68, align 1
  %485 = and i32 %479, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %74, align 1
  %490 = xor i64 %476, %447
  %491 = trunc i64 %490 to i32
  %492 = xor i32 %491, %479
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %79, align 1
  %496 = icmp eq i32 %479, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %82, align 1
  %498 = lshr i32 %479, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %85, align 1
  %500 = lshr i32 %478, 31
  %501 = xor i32 %498, %458
  %502 = xor i32 %498, %500
  %503 = add nuw nsw i32 %501, %502
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %91, align 1
  %506 = add i64 %460, -60
  %507 = add i64 %395, 68
  store i64 %507, i64* %PC.i, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = add i32 %509, %479
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RDX.i2544, align 8
  %512 = icmp ult i32 %510, %479
  %513 = icmp ult i32 %510, %509
  %514 = or i1 %512, %513
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %68, align 1
  %516 = and i32 %510, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %74, align 1
  %521 = xor i32 %509, %479
  %522 = xor i32 %521, %510
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %79, align 1
  %526 = icmp eq i32 %510, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %82, align 1
  %528 = lshr i32 %510, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %85, align 1
  %530 = lshr i32 %509, 31
  %531 = xor i32 %528, %498
  %532 = xor i32 %528, %530
  %533 = add nuw nsw i32 %531, %532
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %91, align 1
  %536 = sext i32 %510 to i64
  store i64 %536, i64* %RCX.i2541, align 8
  %537 = load i64, i64* %RAX.i2556, align 8
  %538 = shl nsw i64 %536, 2
  %539 = add i64 %538, %537
  %540 = add i64 %395, 76
  store i64 %540, i64* %PC.i, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = bitcast [32 x %union.VectorReg]* %182 to i32*
  store i32 %542, i32* %543, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -40
  %546 = add i64 %395, 80
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RAX.i2556, align 8
  %549 = add i64 %395, 83
  store i64 %549, i64* %PC.i, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RAX.i2556, align 8
  %552 = add i64 %395, 87
  store i64 %552, i64* %PC.i, align 8
  %553 = load i64, i64* %547, align 8
  store i64 %553, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %554 = add i64 %395, 95
  store i64 %554, i64* %PC.i, align 8
  %555 = load i64, i64* %547, align 8
  store i64 %555, i64* %RCX.i2541, align 8
  %556 = add i64 %395, 99
  store i64 %556, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %557 = add i64 %395, 103
  store i64 %557, i64* %PC.i, align 8
  %558 = load i64, i64* %547, align 8
  store i64 %558, i64* %RCX.i2541, align 8
  %559 = add i64 %395, 107
  store i64 %559, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %560 = add i64 %544, -52
  %561 = add i64 %395, 110
  store i64 %561, i64* %PC.i, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, 1
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RSI.i2547, align 8
  %566 = icmp eq i32 %563, -1
  %567 = icmp eq i32 %564, 0
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %68, align 1
  %570 = and i32 %564, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %74, align 1
  %575 = xor i32 %563, %564
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %79, align 1
  %579 = icmp eq i32 %564, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %82, align 1
  %581 = lshr i32 %564, 31
  %582 = trunc i32 %581 to i8
  store i8 %582, i8* %85, align 1
  %583 = lshr i32 %563, 31
  %584 = xor i32 %581, %583
  %585 = add nuw nsw i32 %584, %581
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %91, align 1
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -40
  %590 = add i64 %395, 117
  store i64 %590, i64* %PC.i, align 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %RCX.i2541, align 8
  %593 = add i64 %592, 16
  %594 = add i64 %395, 121
  store i64 %594, i64* %PC.i, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = sext i32 %564 to i64
  %598 = sext i32 %596 to i64
  %599 = mul nsw i64 %598, %597
  %600 = trunc i64 %599 to i32
  %601 = and i64 %599, 4294967295
  store i64 %601, i64* %RSI.i2547, align 8
  %602 = shl i64 %599, 32
  %603 = ashr exact i64 %602, 32
  %604 = icmp ne i64 %603, %599
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %68, align 1
  %606 = and i32 %600, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %611 = lshr i32 %600, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %85, align 1
  store i8 %605, i8* %91, align 1
  %613 = add i64 %395, 125
  store i64 %613, i64* %PC.i, align 8
  %614 = load i64, i64* %591, align 8
  store i64 %614, i64* %RCX.i2541, align 8
  %615 = add i64 %614, 20
  %616 = add i64 %395, 129
  store i64 %616, i64* %PC.i, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = shl i64 %599, 32
  %620 = ashr exact i64 %619, 32
  %621 = sext i32 %618 to i64
  %622 = mul nsw i64 %621, %620
  %623 = and i64 %622, 4294967295
  store i64 %623, i64* %RSI.i2547, align 8
  %624 = load i64, i64* %RDX.i2544, align 8
  %625 = trunc i64 %622 to i32
  %626 = trunc i64 %624 to i32
  %627 = add i32 %625, %626
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RDX.i2544, align 8
  %629 = icmp ult i32 %627, %626
  %630 = icmp ult i32 %627, %625
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %68, align 1
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %74, align 1
  %638 = xor i64 %622, %624
  %639 = trunc i64 %638 to i32
  %640 = xor i32 %639, %627
  %641 = lshr i32 %640, 4
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  store i8 %643, i8* %79, align 1
  %644 = icmp eq i32 %627, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %82, align 1
  %646 = lshr i32 %627, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %85, align 1
  %648 = lshr i32 %626, 31
  %649 = lshr i32 %625, 31
  %650 = xor i32 %646, %648
  %651 = xor i32 %646, %649
  %652 = add nuw nsw i32 %650, %651
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %91, align 1
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -56
  %657 = add i64 %395, 134
  store i64 %657, i64* %PC.i, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RSI.i2547, align 8
  %661 = add i64 %655, -40
  %662 = add i64 %395, 138
  store i64 %662, i64* %PC.i, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %RCX.i2541, align 8
  %665 = add i64 %664, 20
  %666 = add i64 %395, 142
  store i64 %666, i64* %PC.i, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = sext i32 %659 to i64
  %670 = sext i32 %668 to i64
  %671 = mul nsw i64 %670, %669
  %672 = and i64 %671, 4294967295
  store i64 %672, i64* %RSI.i2547, align 8
  %673 = trunc i64 %671 to i32
  %674 = add i32 %673, %627
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RDX.i2544, align 8
  %676 = icmp ult i32 %674, %627
  %677 = icmp ult i32 %674, %673
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %68, align 1
  %680 = and i32 %674, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %74, align 1
  %685 = xor i64 %671, %628
  %686 = trunc i64 %685 to i32
  %687 = xor i32 %686, %674
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %79, align 1
  %691 = icmp eq i32 %674, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %82, align 1
  %693 = lshr i32 %674, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %85, align 1
  %695 = lshr i32 %673, 31
  %696 = xor i32 %693, %646
  %697 = xor i32 %693, %695
  %698 = add nuw nsw i32 %696, %697
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %91, align 1
  %701 = add i64 %655, -60
  %702 = add i64 %395, 147
  store i64 %702, i64* %PC.i, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = add i32 %704, %674
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RDX.i2544, align 8
  %707 = icmp ult i32 %705, %674
  %708 = icmp ult i32 %705, %704
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %68, align 1
  %711 = and i32 %705, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %74, align 1
  %716 = xor i32 %704, %674
  %717 = xor i32 %716, %705
  %718 = lshr i32 %717, 4
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %79, align 1
  %721 = icmp eq i32 %705, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %82, align 1
  %723 = lshr i32 %705, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %85, align 1
  %725 = lshr i32 %704, 31
  %726 = xor i32 %723, %693
  %727 = xor i32 %723, %725
  %728 = add nuw nsw i32 %726, %727
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %91, align 1
  %731 = sext i32 %705 to i64
  store i64 %731, i64* %RCX.i2541, align 8
  %732 = load i64, i64* %RAX.i2556, align 8
  %733 = shl nsw i64 %731, 2
  %734 = add i64 %733, %732
  %735 = add i64 %395, 155
  store i64 %735, i64* %PC.i, align 8
  %736 = load <2 x float>, <2 x float>* %196, align 1
  %737 = load <2 x i32>, <2 x i32>* %197, align 1
  %738 = inttoptr i64 %734 to float*
  %739 = load float, float* %738, align 4
  %740 = extractelement <2 x float> %736, i32 0
  %741 = fmul float %740, %739
  store float %741, float* %192, align 1
  %742 = bitcast <2 x float> %736 to <2 x i32>
  %743 = extractelement <2 x i32> %742, i32 1
  store i32 %743, i32* %187, align 1
  %744 = extractelement <2 x i32> %737, i32 0
  store i32 %744, i32* %188, align 1
  %745 = extractelement <2 x i32> %737, i32 1
  store i32 %745, i32* %190, align 1
  %746 = load i64, i64* %RBP.i, align 8
  %747 = add i64 %746, -16
  %748 = add i64 %395, 159
  store i64 %748, i64* %PC.i, align 8
  %749 = inttoptr i64 %747 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RAX.i2556, align 8
  %751 = add i64 %395, 162
  store i64 %751, i64* %PC.i, align 8
  %752 = inttoptr i64 %750 to i64*
  %753 = load i64, i64* %752, align 8
  store i64 %753, i64* %RAX.i2556, align 8
  %754 = add i64 %395, 166
  store i64 %754, i64* %PC.i, align 8
  %755 = load i64, i64* %749, align 8
  store i64 %755, i64* %RCX.i2541, align 8
  %756 = add i64 %755, 12
  %757 = add i64 %395, 169
  store i64 %757, i64* %PC.i, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDX.i2544, align 8
  %761 = add i64 %395, 176
  store i64 %761, i64* %PC.i, align 8
  %762 = load i64, i64* %749, align 8
  store i64 %762, i64* %RCX.i2541, align 8
  %763 = add i64 %762, 16
  %764 = add i64 %395, 180
  store i64 %764, i64* %PC.i, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = sext i32 %759 to i64
  %768 = sext i32 %766 to i64
  %769 = mul nsw i64 %768, %767
  %770 = trunc i64 %769 to i32
  %771 = and i64 %769, 4294967295
  store i64 %771, i64* %RDX.i2544, align 8
  %772 = shl i64 %769, 32
  %773 = ashr exact i64 %772, 32
  %774 = icmp ne i64 %773, %769
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %68, align 1
  %776 = and i32 %770, 255
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %781 = lshr i32 %770, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %85, align 1
  store i8 %775, i8* %91, align 1
  %783 = add i64 %395, 184
  store i64 %783, i64* %PC.i, align 8
  %784 = load i64, i64* %749, align 8
  store i64 %784, i64* %RCX.i2541, align 8
  %785 = add i64 %784, 20
  %786 = add i64 %395, 188
  store i64 %786, i64* %PC.i, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = shl i64 %769, 32
  %790 = ashr exact i64 %789, 32
  %791 = sext i32 %788 to i64
  %792 = mul nsw i64 %791, %790
  %793 = trunc i64 %792 to i32
  %794 = and i64 %792, 4294967295
  store i64 %794, i64* %RDX.i2544, align 8
  %795 = shl i64 %792, 32
  %796 = ashr exact i64 %795, 32
  %797 = icmp ne i64 %796, %792
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %68, align 1
  %799 = and i32 %793, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %804 = lshr i32 %793, 31
  %805 = trunc i32 %804 to i8
  store i8 %805, i8* %85, align 1
  store i8 %798, i8* %91, align 1
  %806 = add i64 %746, -52
  %807 = add i64 %395, 191
  store i64 %807, i64* %PC.i, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RSI.i2547, align 8
  %811 = add i64 %395, 195
  store i64 %811, i64* %PC.i, align 8
  %812 = load i64, i64* %749, align 8
  store i64 %812, i64* %RCX.i2541, align 8
  %813 = add i64 %812, 16
  %814 = add i64 %395, 199
  store i64 %814, i64* %PC.i, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = sext i32 %809 to i64
  %818 = sext i32 %816 to i64
  %819 = mul nsw i64 %818, %817
  %820 = trunc i64 %819 to i32
  %821 = and i64 %819, 4294967295
  store i64 %821, i64* %RSI.i2547, align 8
  %822 = shl i64 %819, 32
  %823 = ashr exact i64 %822, 32
  %824 = icmp ne i64 %823, %819
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %68, align 1
  %826 = and i32 %820, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %831 = lshr i32 %820, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %85, align 1
  store i8 %825, i8* %91, align 1
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -16
  %835 = add i64 %395, 203
  store i64 %835, i64* %PC.i, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %RCX.i2541, align 8
  %838 = add i64 %837, 20
  %839 = add i64 %395, 207
  store i64 %839, i64* %PC.i, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = shl i64 %819, 32
  %843 = ashr exact i64 %842, 32
  %844 = sext i32 %841 to i64
  %845 = mul nsw i64 %844, %843
  %846 = and i64 %845, 4294967295
  store i64 %846, i64* %RSI.i2547, align 8
  %847 = trunc i64 %845 to i32
  %848 = trunc i64 %792 to i32
  %849 = add i32 %847, %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RDX.i2544, align 8
  %851 = icmp ult i32 %849, %848
  %852 = icmp ult i32 %849, %847
  %853 = or i1 %851, %852
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %68, align 1
  %855 = and i32 %849, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %74, align 1
  %860 = xor i64 %845, %792
  %861 = trunc i64 %860 to i32
  %862 = xor i32 %861, %849
  %863 = lshr i32 %862, 4
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  store i8 %865, i8* %79, align 1
  %866 = icmp eq i32 %849, 0
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %82, align 1
  %868 = lshr i32 %849, 31
  %869 = trunc i32 %868 to i8
  store i8 %869, i8* %85, align 1
  %870 = lshr i32 %848, 31
  %871 = lshr i32 %847, 31
  %872 = xor i32 %868, %870
  %873 = xor i32 %868, %871
  %874 = add nuw nsw i32 %872, %873
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %91, align 1
  %877 = add i64 %833, -56
  %878 = add i64 %395, 212
  store i64 %878, i64* %PC.i, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RSI.i2547, align 8
  %882 = add i64 %395, 216
  store i64 %882, i64* %PC.i, align 8
  %883 = load i64, i64* %836, align 8
  store i64 %883, i64* %RCX.i2541, align 8
  %884 = add i64 %883, 20
  %885 = add i64 %395, 220
  store i64 %885, i64* %PC.i, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = sext i32 %880 to i64
  %889 = sext i32 %887 to i64
  %890 = mul nsw i64 %889, %888
  %891 = and i64 %890, 4294967295
  store i64 %891, i64* %RSI.i2547, align 8
  %892 = trunc i64 %890 to i32
  %893 = add i32 %892, %849
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RDX.i2544, align 8
  %895 = icmp ult i32 %893, %849
  %896 = icmp ult i32 %893, %892
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %68, align 1
  %899 = and i32 %893, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %74, align 1
  %904 = xor i64 %890, %850
  %905 = trunc i64 %904 to i32
  %906 = xor i32 %905, %893
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %79, align 1
  %910 = icmp eq i32 %893, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %82, align 1
  %912 = lshr i32 %893, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %85, align 1
  %914 = lshr i32 %892, 31
  %915 = xor i32 %912, %868
  %916 = xor i32 %912, %914
  %917 = add nuw nsw i32 %915, %916
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %91, align 1
  %920 = load i64, i64* %RBP.i, align 8
  %921 = add i64 %920, -60
  %922 = add i64 %395, 225
  store i64 %922, i64* %PC.i, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = add i32 %924, %893
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RDX.i2544, align 8
  %927 = icmp ult i32 %925, %893
  %928 = icmp ult i32 %925, %924
  %929 = or i1 %927, %928
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %68, align 1
  %931 = and i32 %925, 255
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931)
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %74, align 1
  %936 = xor i32 %924, %893
  %937 = xor i32 %936, %925
  %938 = lshr i32 %937, 4
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  store i8 %940, i8* %79, align 1
  %941 = icmp eq i32 %925, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %82, align 1
  %943 = lshr i32 %925, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %85, align 1
  %945 = lshr i32 %924, 31
  %946 = xor i32 %943, %912
  %947 = xor i32 %943, %945
  %948 = add nuw nsw i32 %946, %947
  %949 = icmp eq i32 %948, 2
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %91, align 1
  %951 = sext i32 %925 to i64
  store i64 %951, i64* %RCX.i2541, align 8
  %952 = load i64, i64* %RAX.i2556, align 8
  %953 = shl nsw i64 %951, 2
  %954 = add i64 %953, %952
  %955 = add i64 %395, 233
  store i64 %955, i64* %PC.i, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = bitcast %union.VectorReg* %198 to i32*
  store i32 %957, i32* %958, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %959 = add i64 %920, -40
  %960 = add i64 %395, 237
  store i64 %960, i64* %PC.i, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RAX.i2556, align 8
  %963 = add i64 %395, 240
  store i64 %963, i64* %PC.i, align 8
  %964 = inttoptr i64 %962 to i64*
  %965 = load i64, i64* %964, align 8
  store i64 %965, i64* %RAX.i2556, align 8
  %966 = add i64 %395, 244
  store i64 %966, i64* %PC.i, align 8
  %967 = load i64, i64* %961, align 8
  store i64 %967, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %968 = add i64 %395, 252
  store i64 %968, i64* %PC.i, align 8
  %969 = load i64, i64* %961, align 8
  store i64 %969, i64* %RCX.i2541, align 8
  %970 = add i64 %395, 256
  store i64 %970, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %971 = add i64 %395, 260
  store i64 %971, i64* %PC.i, align 8
  %972 = load i64, i64* %961, align 8
  store i64 %972, i64* %RCX.i2541, align 8
  %973 = add i64 %395, 264
  store i64 %973, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -52
  %976 = add i64 %395, 267
  store i64 %976, i64* %PC.i, align 8
  %977 = inttoptr i64 %975 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RSI.i2547, align 8
  %980 = add i64 %974, -40
  %981 = add i64 %395, 271
  store i64 %981, i64* %PC.i, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RCX.i2541, align 8
  %984 = add i64 %983, 16
  %985 = add i64 %395, 275
  store i64 %985, i64* %PC.i, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = sext i32 %978 to i64
  %989 = sext i32 %987 to i64
  %990 = mul nsw i64 %989, %988
  %991 = trunc i64 %990 to i32
  %992 = and i64 %990, 4294967295
  store i64 %992, i64* %RSI.i2547, align 8
  %993 = shl i64 %990, 32
  %994 = ashr exact i64 %993, 32
  %995 = icmp ne i64 %994, %990
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %68, align 1
  %997 = and i32 %991, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1002 = lshr i32 %991, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %85, align 1
  store i8 %996, i8* %91, align 1
  %1004 = add i64 %395, 279
  store i64 %1004, i64* %PC.i, align 8
  %1005 = load i64, i64* %982, align 8
  store i64 %1005, i64* %RCX.i2541, align 8
  %1006 = add i64 %1005, 20
  %1007 = add i64 %395, 283
  store i64 %1007, i64* %PC.i, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = shl i64 %990, 32
  %1011 = ashr exact i64 %1010, 32
  %1012 = sext i32 %1009 to i64
  %1013 = mul nsw i64 %1012, %1011
  %1014 = and i64 %1013, 4294967295
  store i64 %1014, i64* %RSI.i2547, align 8
  %1015 = trunc i64 %1013 to i32
  %1016 = and i64 %1013, 4294967295
  store i64 %1016, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1017 = and i32 %1015, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1022 = icmp eq i32 %1015, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %82, align 1
  %1024 = lshr i32 %1015, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1026 = add i64 %974, -56
  %1027 = add i64 %395, 288
  store i64 %1027, i64* %PC.i, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = add i32 %1029, 1
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RSI.i2547, align 8
  %1032 = icmp eq i32 %1029, -1
  %1033 = icmp eq i32 %1030, 0
  %1034 = or i1 %1032, %1033
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %68, align 1
  %1036 = and i32 %1030, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %74, align 1
  %1041 = xor i32 %1029, %1030
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  store i8 %1044, i8* %79, align 1
  %1045 = icmp eq i32 %1030, 0
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %82, align 1
  %1047 = lshr i32 %1030, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %85, align 1
  %1049 = lshr i32 %1029, 31
  %1050 = xor i32 %1047, %1049
  %1051 = add nuw nsw i32 %1050, %1047
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %91, align 1
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -40
  %1056 = add i64 %395, 295
  store i64 %1056, i64* %PC.i, align 8
  %1057 = inttoptr i64 %1055 to i64*
  %1058 = load i64, i64* %1057, align 8
  store i64 %1058, i64* %RCX.i2541, align 8
  %1059 = add i64 %1058, 20
  %1060 = add i64 %395, 299
  store i64 %1060, i64* %PC.i, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = sext i32 %1030 to i64
  %1064 = sext i32 %1062 to i64
  %1065 = mul nsw i64 %1064, %1063
  %1066 = and i64 %1065, 4294967295
  store i64 %1066, i64* %RSI.i2547, align 8
  %1067 = trunc i64 %1065 to i32
  %1068 = add i32 %1067, %1015
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RDX.i2544, align 8
  %1070 = icmp ult i32 %1068, %1015
  %1071 = icmp ult i32 %1068, %1067
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %68, align 1
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %74, align 1
  %1079 = xor i64 %1065, %1013
  %1080 = trunc i64 %1079 to i32
  %1081 = xor i32 %1080, %1068
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %79, align 1
  %1085 = icmp eq i32 %1068, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %82, align 1
  %1087 = lshr i32 %1068, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %85, align 1
  %1089 = lshr i32 %1067, 31
  %1090 = xor i32 %1087, %1024
  %1091 = xor i32 %1087, %1089
  %1092 = add nuw nsw i32 %1090, %1091
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %91, align 1
  %1095 = add i64 %1054, -60
  %1096 = add i64 %395, 304
  store i64 %1096, i64* %PC.i, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = add i32 %1098, %1068
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RDX.i2544, align 8
  %1101 = icmp ult i32 %1099, %1068
  %1102 = icmp ult i32 %1099, %1098
  %1103 = or i1 %1101, %1102
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %68, align 1
  %1105 = and i32 %1099, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %74, align 1
  %1110 = xor i32 %1098, %1068
  %1111 = xor i32 %1110, %1099
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %79, align 1
  %1115 = icmp eq i32 %1099, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %82, align 1
  %1117 = lshr i32 %1099, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %85, align 1
  %1119 = lshr i32 %1098, 31
  %1120 = xor i32 %1117, %1087
  %1121 = xor i32 %1117, %1119
  %1122 = add nuw nsw i32 %1120, %1121
  %1123 = icmp eq i32 %1122, 2
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %91, align 1
  %1125 = sext i32 %1099 to i64
  store i64 %1125, i64* %RCX.i2541, align 8
  %1126 = load i64, i64* %RAX.i2556, align 8
  %1127 = shl nsw i64 %1125, 2
  %1128 = add i64 %1127, %1126
  %1129 = add i64 %395, 312
  store i64 %1129, i64* %PC.i, align 8
  %1130 = load <2 x float>, <2 x float>* %207, align 1
  %1131 = load <2 x i32>, <2 x i32>* %208, align 1
  %1132 = inttoptr i64 %1128 to float*
  %1133 = load float, float* %1132, align 4
  %1134 = extractelement <2 x float> %1130, i32 0
  %1135 = fmul float %1134, %1133
  store float %1135, float* %200, align 1
  %1136 = bitcast <2 x float> %1130 to <2 x i32>
  %1137 = extractelement <2 x i32> %1136, i32 1
  store i32 %1137, i32* %209, align 1
  %1138 = extractelement <2 x i32> %1131, i32 0
  store i32 %1138, i32* %210, align 1
  %1139 = extractelement <2 x i32> %1131, i32 1
  store i32 %1139, i32* %211, align 1
  %1140 = load <2 x float>, <2 x float>* %196, align 1
  %1141 = load <2 x i32>, <2 x i32>* %197, align 1
  %1142 = load <2 x float>, <2 x float>* %212, align 1
  %1143 = extractelement <2 x float> %1140, i32 0
  %1144 = extractelement <2 x float> %1142, i32 0
  %1145 = fadd float %1143, %1144
  store float %1145, float* %192, align 1
  %1146 = bitcast <2 x float> %1140 to <2 x i32>
  %1147 = extractelement <2 x i32> %1146, i32 1
  store i32 %1147, i32* %187, align 1
  %1148 = extractelement <2 x i32> %1141, i32 0
  store i32 %1148, i32* %188, align 1
  %1149 = extractelement <2 x i32> %1141, i32 1
  store i32 %1149, i32* %190, align 1
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -16
  %1152 = add i64 %395, 320
  store i64 %1152, i64* %PC.i, align 8
  %1153 = inttoptr i64 %1151 to i64*
  %1154 = load i64, i64* %1153, align 8
  store i64 %1154, i64* %RAX.i2556, align 8
  %1155 = add i64 %395, 323
  store i64 %1155, i64* %PC.i, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX.i2556, align 8
  %1158 = add i64 %395, 327
  store i64 %1158, i64* %PC.i, align 8
  %1159 = load i64, i64* %1153, align 8
  store i64 %1159, i64* %RCX.i2541, align 8
  %1160 = add i64 %1159, 12
  %1161 = add i64 %395, 330
  store i64 %1161, i64* %PC.i, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = shl i32 %1163, 1
  %1165 = icmp slt i32 %1163, 0
  %1166 = icmp slt i32 %1164, 0
  %1167 = xor i1 %1165, %1166
  %1168 = zext i32 %1164 to i64
  store i64 %1168, i64* %RDX.i2544, align 8
  %.lobit = lshr i32 %1163, 31
  %1169 = trunc i32 %.lobit to i8
  store i8 %1169, i8* %68, align 1
  %1170 = and i32 %1164, 254
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1175 = icmp eq i32 %1164, 0
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %82, align 1
  %1177 = lshr i32 %1163, 30
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %85, align 1
  %1180 = zext i1 %1167 to i8
  store i8 %1180, i8* %91, align 1
  %1181 = add i64 %395, 336
  store i64 %1181, i64* %PC.i, align 8
  %1182 = load i64, i64* %1153, align 8
  store i64 %1182, i64* %RCX.i2541, align 8
  %1183 = add i64 %1182, 16
  %1184 = add i64 %395, 340
  store i64 %1184, i64* %PC.i, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = sext i32 %1164 to i64
  %1188 = sext i32 %1186 to i64
  %1189 = mul nsw i64 %1188, %1187
  %1190 = trunc i64 %1189 to i32
  %1191 = and i64 %1189, 4294967294
  store i64 %1191, i64* %RDX.i2544, align 8
  %1192 = shl i64 %1189, 32
  %1193 = ashr exact i64 %1192, 32
  %1194 = icmp ne i64 %1193, %1189
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %68, align 1
  %1196 = and i32 %1190, 254
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1201 = lshr i32 %1190, 31
  %1202 = trunc i32 %1201 to i8
  store i8 %1202, i8* %85, align 1
  store i8 %1195, i8* %91, align 1
  %1203 = add i64 %395, 344
  store i64 %1203, i64* %PC.i, align 8
  %1204 = load i64, i64* %1153, align 8
  store i64 %1204, i64* %RCX.i2541, align 8
  %1205 = add i64 %1204, 20
  %1206 = add i64 %395, 348
  store i64 %1206, i64* %PC.i, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = shl i64 %1189, 32
  %1210 = ashr exact i64 %1209, 32
  %1211 = sext i32 %1208 to i64
  %1212 = mul nsw i64 %1211, %1210
  %1213 = trunc i64 %1212 to i32
  %1214 = and i64 %1212, 4294967295
  store i64 %1214, i64* %RDX.i2544, align 8
  %1215 = shl i64 %1212, 32
  %1216 = ashr exact i64 %1215, 32
  %1217 = icmp ne i64 %1216, %1212
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %68, align 1
  %1219 = and i32 %1213, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1224 = lshr i32 %1213, 31
  %1225 = trunc i32 %1224 to i8
  store i8 %1225, i8* %85, align 1
  store i8 %1218, i8* %91, align 1
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -52
  %1228 = add i64 %395, 351
  store i64 %1228, i64* %PC.i, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RSI.i2547, align 8
  %1232 = add i64 %1226, -16
  %1233 = add i64 %395, 355
  store i64 %1233, i64* %PC.i, align 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234, align 8
  store i64 %1235, i64* %RCX.i2541, align 8
  %1236 = add i64 %1235, 16
  %1237 = add i64 %395, 359
  store i64 %1237, i64* %PC.i, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = sext i32 %1230 to i64
  %1241 = sext i32 %1239 to i64
  %1242 = mul nsw i64 %1241, %1240
  %1243 = trunc i64 %1242 to i32
  %1244 = and i64 %1242, 4294967295
  store i64 %1244, i64* %RSI.i2547, align 8
  %1245 = shl i64 %1242, 32
  %1246 = ashr exact i64 %1245, 32
  %1247 = icmp ne i64 %1246, %1242
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %68, align 1
  %1249 = and i32 %1243, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1254 = lshr i32 %1243, 31
  %1255 = trunc i32 %1254 to i8
  store i8 %1255, i8* %85, align 1
  store i8 %1248, i8* %91, align 1
  %1256 = add i64 %395, 363
  store i64 %1256, i64* %PC.i, align 8
  %1257 = load i64, i64* %1234, align 8
  store i64 %1257, i64* %RCX.i2541, align 8
  %1258 = add i64 %1257, 20
  %1259 = add i64 %395, 367
  store i64 %1259, i64* %PC.i, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = shl i64 %1242, 32
  %1263 = ashr exact i64 %1262, 32
  %1264 = sext i32 %1261 to i64
  %1265 = mul nsw i64 %1264, %1263
  %1266 = and i64 %1265, 4294967295
  store i64 %1266, i64* %RSI.i2547, align 8
  %1267 = trunc i64 %1265 to i32
  %1268 = trunc i64 %1212 to i32
  %1269 = add i32 %1267, %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RDX.i2544, align 8
  %1271 = icmp ult i32 %1269, %1268
  %1272 = icmp ult i32 %1269, %1267
  %1273 = or i1 %1271, %1272
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %68, align 1
  %1275 = and i32 %1269, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %74, align 1
  %1280 = xor i64 %1265, %1212
  %1281 = trunc i64 %1280 to i32
  %1282 = xor i32 %1281, %1269
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %79, align 1
  %1286 = icmp eq i32 %1269, 0
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %82, align 1
  %1288 = lshr i32 %1269, 31
  %1289 = trunc i32 %1288 to i8
  store i8 %1289, i8* %85, align 1
  %1290 = lshr i32 %1268, 31
  %1291 = lshr i32 %1267, 31
  %1292 = xor i32 %1288, %1290
  %1293 = xor i32 %1288, %1291
  %1294 = add nuw nsw i32 %1292, %1293
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %91, align 1
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -56
  %1299 = add i64 %395, 372
  store i64 %1299, i64* %PC.i, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RSI.i2547, align 8
  %1303 = add i64 %1297, -16
  %1304 = add i64 %395, 376
  store i64 %1304, i64* %PC.i, align 8
  %1305 = inttoptr i64 %1303 to i64*
  %1306 = load i64, i64* %1305, align 8
  store i64 %1306, i64* %RCX.i2541, align 8
  %1307 = add i64 %1306, 20
  %1308 = add i64 %395, 380
  store i64 %1308, i64* %PC.i, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = sext i32 %1301 to i64
  %1312 = sext i32 %1310 to i64
  %1313 = mul nsw i64 %1312, %1311
  %1314 = and i64 %1313, 4294967295
  store i64 %1314, i64* %RSI.i2547, align 8
  %1315 = trunc i64 %1313 to i32
  %1316 = add i32 %1315, %1269
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RDX.i2544, align 8
  %1318 = icmp ult i32 %1316, %1269
  %1319 = icmp ult i32 %1316, %1315
  %1320 = or i1 %1318, %1319
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %68, align 1
  %1322 = and i32 %1316, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %74, align 1
  %1327 = xor i64 %1313, %1270
  %1328 = trunc i64 %1327 to i32
  %1329 = xor i32 %1328, %1316
  %1330 = lshr i32 %1329, 4
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  store i8 %1332, i8* %79, align 1
  %1333 = icmp eq i32 %1316, 0
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %82, align 1
  %1335 = lshr i32 %1316, 31
  %1336 = trunc i32 %1335 to i8
  store i8 %1336, i8* %85, align 1
  %1337 = lshr i32 %1315, 31
  %1338 = xor i32 %1335, %1288
  %1339 = xor i32 %1335, %1337
  %1340 = add nuw nsw i32 %1338, %1339
  %1341 = icmp eq i32 %1340, 2
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %91, align 1
  %1343 = add i64 %1297, -60
  %1344 = add i64 %395, 385
  store i64 %1344, i64* %PC.i, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, %1316
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RDX.i2544, align 8
  %1349 = icmp ult i32 %1347, %1316
  %1350 = icmp ult i32 %1347, %1346
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %68, align 1
  %1353 = and i32 %1347, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %74, align 1
  %1358 = xor i32 %1346, %1316
  %1359 = xor i32 %1358, %1347
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %79, align 1
  %1363 = icmp eq i32 %1347, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %82, align 1
  %1365 = lshr i32 %1347, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %85, align 1
  %1367 = lshr i32 %1346, 31
  %1368 = xor i32 %1365, %1335
  %1369 = xor i32 %1365, %1367
  %1370 = add nuw nsw i32 %1368, %1369
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %91, align 1
  %1373 = sext i32 %1347 to i64
  store i64 %1373, i64* %RCX.i2541, align 8
  %1374 = load i64, i64* %RAX.i2556, align 8
  %1375 = shl nsw i64 %1373, 2
  %1376 = add i64 %1375, %1374
  %1377 = add i64 %395, 393
  store i64 %1377, i64* %PC.i, align 8
  %1378 = inttoptr i64 %1376 to i32*
  %1379 = load i32, i32* %1378, align 4
  %1380 = bitcast %union.VectorReg* %198 to i32*
  store i32 %1379, i32* %1380, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %1381 = load i64, i64* %RBP.i, align 8
  %1382 = add i64 %1381, -40
  %1383 = add i64 %395, 397
  store i64 %1383, i64* %PC.i, align 8
  %1384 = inttoptr i64 %1382 to i64*
  %1385 = load i64, i64* %1384, align 8
  store i64 %1385, i64* %RAX.i2556, align 8
  %1386 = add i64 %395, 400
  store i64 %1386, i64* %PC.i, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RAX.i2556, align 8
  %1389 = add i64 %395, 404
  store i64 %1389, i64* %PC.i, align 8
  %1390 = load i64, i64* %1384, align 8
  store i64 %1390, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1391 = add i64 %395, 412
  store i64 %1391, i64* %PC.i, align 8
  %1392 = load i64, i64* %1384, align 8
  store i64 %1392, i64* %RCX.i2541, align 8
  %1393 = add i64 %395, 416
  store i64 %1393, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1394 = add i64 %395, 420
  store i64 %1394, i64* %PC.i, align 8
  %1395 = load i64, i64* %1384, align 8
  store i64 %1395, i64* %RCX.i2541, align 8
  %1396 = add i64 %395, 424
  store i64 %1396, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1397 = add i64 %1381, -52
  %1398 = add i64 %395, 427
  store i64 %1398, i64* %PC.i, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RSI.i2547, align 8
  %1402 = add i64 %395, 431
  store i64 %1402, i64* %PC.i, align 8
  %1403 = load i64, i64* %1384, align 8
  store i64 %1403, i64* %RCX.i2541, align 8
  %1404 = add i64 %1403, 16
  %1405 = add i64 %395, 435
  store i64 %1405, i64* %PC.i, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = sext i32 %1400 to i64
  %1409 = sext i32 %1407 to i64
  %1410 = mul nsw i64 %1409, %1408
  %1411 = trunc i64 %1410 to i32
  %1412 = and i64 %1410, 4294967295
  store i64 %1412, i64* %RSI.i2547, align 8
  %1413 = shl i64 %1410, 32
  %1414 = ashr exact i64 %1413, 32
  %1415 = icmp ne i64 %1414, %1410
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %68, align 1
  %1417 = and i32 %1411, 255
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417)
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1422 = lshr i32 %1411, 31
  %1423 = trunc i32 %1422 to i8
  store i8 %1423, i8* %85, align 1
  store i8 %1416, i8* %91, align 1
  %1424 = add i64 %395, 439
  store i64 %1424, i64* %PC.i, align 8
  %1425 = load i64, i64* %1384, align 8
  store i64 %1425, i64* %RCX.i2541, align 8
  %1426 = add i64 %1425, 20
  %1427 = add i64 %395, 443
  store i64 %1427, i64* %PC.i, align 8
  %1428 = inttoptr i64 %1426 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = shl i64 %1410, 32
  %1431 = ashr exact i64 %1430, 32
  %1432 = sext i32 %1429 to i64
  %1433 = mul nsw i64 %1432, %1431
  %1434 = and i64 %1433, 4294967295
  store i64 %1434, i64* %RSI.i2547, align 8
  %1435 = trunc i64 %1433 to i32
  %1436 = and i64 %1433, 4294967295
  store i64 %1436, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1437 = and i32 %1435, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1442 = icmp eq i32 %1435, 0
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %82, align 1
  %1444 = lshr i32 %1435, 31
  %1445 = trunc i32 %1444 to i8
  store i8 %1445, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -56
  %1448 = add i64 %395, 448
  store i64 %1448, i64* %PC.i, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RSI.i2547, align 8
  %1452 = add i64 %1446, -40
  %1453 = add i64 %395, 452
  store i64 %1453, i64* %PC.i, align 8
  %1454 = inttoptr i64 %1452 to i64*
  %1455 = load i64, i64* %1454, align 8
  store i64 %1455, i64* %RCX.i2541, align 8
  %1456 = add i64 %1455, 20
  %1457 = add i64 %395, 456
  store i64 %1457, i64* %PC.i, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = sext i32 %1450 to i64
  %1461 = sext i32 %1459 to i64
  %1462 = mul nsw i64 %1461, %1460
  %1463 = and i64 %1462, 4294967295
  store i64 %1463, i64* %RSI.i2547, align 8
  %1464 = trunc i64 %1462 to i32
  %1465 = add i32 %1464, %1435
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RDX.i2544, align 8
  %1467 = icmp ult i32 %1465, %1435
  %1468 = icmp ult i32 %1465, %1464
  %1469 = or i1 %1467, %1468
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %68, align 1
  %1471 = and i32 %1465, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %74, align 1
  %1476 = xor i64 %1462, %1433
  %1477 = trunc i64 %1476 to i32
  %1478 = xor i32 %1477, %1465
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %79, align 1
  %1482 = icmp eq i32 %1465, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %82, align 1
  %1484 = lshr i32 %1465, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %85, align 1
  %1486 = lshr i32 %1464, 31
  %1487 = xor i32 %1484, %1444
  %1488 = xor i32 %1484, %1486
  %1489 = add nuw nsw i32 %1487, %1488
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %91, align 1
  %1492 = add i64 %1446, -60
  %1493 = add i64 %395, 461
  store i64 %1493, i64* %PC.i, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = add i32 %1495, 1
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RSI.i2547, align 8
  %1498 = lshr i32 %1496, 31
  %1499 = add i32 %1496, %1465
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RDX.i2544, align 8
  %1501 = icmp ult i32 %1499, %1465
  %1502 = icmp ult i32 %1499, %1496
  %1503 = or i1 %1501, %1502
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %68, align 1
  %1505 = and i32 %1499, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %74, align 1
  %1510 = xor i32 %1496, %1465
  %1511 = xor i32 %1510, %1499
  %1512 = lshr i32 %1511, 4
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  store i8 %1514, i8* %79, align 1
  %1515 = icmp eq i32 %1499, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %82, align 1
  %1517 = lshr i32 %1499, 31
  %1518 = trunc i32 %1517 to i8
  store i8 %1518, i8* %85, align 1
  %1519 = xor i32 %1517, %1484
  %1520 = xor i32 %1517, %1498
  %1521 = add nuw nsw i32 %1519, %1520
  %1522 = icmp eq i32 %1521, 2
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %91, align 1
  %1524 = sext i32 %1499 to i64
  store i64 %1524, i64* %RCX.i2541, align 8
  %1525 = load i64, i64* %RAX.i2556, align 8
  %1526 = shl nsw i64 %1524, 2
  %1527 = add i64 %1526, %1525
  %1528 = add i64 %395, 474
  store i64 %1528, i64* %PC.i, align 8
  %1529 = load <2 x float>, <2 x float>* %207, align 1
  %1530 = load <2 x i32>, <2 x i32>* %208, align 1
  %1531 = inttoptr i64 %1527 to float*
  %1532 = load float, float* %1531, align 4
  %1533 = extractelement <2 x float> %1529, i32 0
  %1534 = fmul float %1533, %1532
  store float %1534, float* %200, align 1
  %1535 = bitcast <2 x float> %1529 to <2 x i32>
  %1536 = extractelement <2 x i32> %1535, i32 1
  store i32 %1536, i32* %209, align 1
  %1537 = extractelement <2 x i32> %1530, i32 0
  store i32 %1537, i32* %210, align 1
  %1538 = extractelement <2 x i32> %1530, i32 1
  store i32 %1538, i32* %211, align 1
  %1539 = load <2 x float>, <2 x float>* %196, align 1
  %1540 = load <2 x i32>, <2 x i32>* %197, align 1
  %1541 = load <2 x float>, <2 x float>* %212, align 1
  %1542 = extractelement <2 x float> %1539, i32 0
  %1543 = extractelement <2 x float> %1541, i32 0
  %1544 = fadd float %1542, %1543
  store float %1544, float* %192, align 1
  %1545 = bitcast <2 x float> %1539 to <2 x i32>
  %1546 = extractelement <2 x i32> %1545, i32 1
  store i32 %1546, i32* %187, align 1
  %1547 = extractelement <2 x i32> %1540, i32 0
  store i32 %1547, i32* %188, align 1
  %1548 = extractelement <2 x i32> %1540, i32 1
  store i32 %1548, i32* %190, align 1
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -24
  %1551 = add i64 %395, 482
  store i64 %1551, i64* %PC.i, align 8
  %1552 = inttoptr i64 %1550 to i64*
  %1553 = load i64, i64* %1552, align 8
  store i64 %1553, i64* %RAX.i2556, align 8
  %1554 = add i64 %395, 485
  store i64 %1554, i64* %PC.i, align 8
  %1555 = inttoptr i64 %1553 to i64*
  %1556 = load i64, i64* %1555, align 8
  store i64 %1556, i64* %RAX.i2556, align 8
  %1557 = add i64 %395, 489
  store i64 %1557, i64* %PC.i, align 8
  %1558 = load i64, i64* %1552, align 8
  store i64 %1558, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1559 = add i64 %395, 497
  store i64 %1559, i64* %PC.i, align 8
  %1560 = load i64, i64* %1552, align 8
  store i64 %1560, i64* %RCX.i2541, align 8
  %1561 = add i64 %395, 501
  store i64 %1561, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1562 = add i64 %395, 505
  store i64 %1562, i64* %PC.i, align 8
  %1563 = load i64, i64* %1552, align 8
  store i64 %1563, i64* %RCX.i2541, align 8
  %1564 = add i64 %395, 509
  store i64 %1564, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1565 = add i64 %1549, -52
  %1566 = add i64 %395, 512
  store i64 %1566, i64* %PC.i, align 8
  %1567 = inttoptr i64 %1565 to i32*
  %1568 = load i32, i32* %1567, align 4
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RSI.i2547, align 8
  %1570 = add i64 %395, 516
  store i64 %1570, i64* %PC.i, align 8
  %1571 = load i64, i64* %1552, align 8
  store i64 %1571, i64* %RCX.i2541, align 8
  %1572 = add i64 %1571, 16
  %1573 = add i64 %395, 520
  store i64 %1573, i64* %PC.i, align 8
  %1574 = inttoptr i64 %1572 to i32*
  %1575 = load i32, i32* %1574, align 4
  %1576 = sext i32 %1568 to i64
  %1577 = sext i32 %1575 to i64
  %1578 = mul nsw i64 %1577, %1576
  %1579 = trunc i64 %1578 to i32
  %1580 = and i64 %1578, 4294967295
  store i64 %1580, i64* %RSI.i2547, align 8
  %1581 = shl i64 %1578, 32
  %1582 = ashr exact i64 %1581, 32
  %1583 = icmp ne i64 %1582, %1578
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %68, align 1
  %1585 = and i32 %1579, 255
  %1586 = tail call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  store i8 %1589, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1590 = lshr i32 %1579, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %85, align 1
  store i8 %1584, i8* %91, align 1
  %1592 = add i64 %395, 524
  store i64 %1592, i64* %PC.i, align 8
  %1593 = load i64, i64* %1552, align 8
  store i64 %1593, i64* %RCX.i2541, align 8
  %1594 = add i64 %1593, 20
  %1595 = add i64 %395, 528
  store i64 %1595, i64* %PC.i, align 8
  %1596 = inttoptr i64 %1594 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = shl i64 %1578, 32
  %1599 = ashr exact i64 %1598, 32
  %1600 = sext i32 %1597 to i64
  %1601 = mul nsw i64 %1600, %1599
  %1602 = and i64 %1601, 4294967295
  store i64 %1602, i64* %RSI.i2547, align 8
  %1603 = trunc i64 %1601 to i32
  %1604 = and i64 %1601, 4294967295
  store i64 %1604, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1605 = and i32 %1603, 255
  %1606 = tail call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  store i8 %1609, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1610 = icmp eq i32 %1603, 0
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %82, align 1
  %1612 = lshr i32 %1603, 31
  %1613 = trunc i32 %1612 to i8
  store i8 %1613, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1614 = load i64, i64* %RBP.i, align 8
  %1615 = add i64 %1614, -56
  %1616 = add i64 %395, 533
  store i64 %1616, i64* %PC.i, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RSI.i2547, align 8
  %1620 = add i64 %1614, -24
  %1621 = add i64 %395, 537
  store i64 %1621, i64* %PC.i, align 8
  %1622 = inttoptr i64 %1620 to i64*
  %1623 = load i64, i64* %1622, align 8
  store i64 %1623, i64* %RCX.i2541, align 8
  %1624 = add i64 %1623, 20
  %1625 = add i64 %395, 541
  store i64 %1625, i64* %PC.i, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = sext i32 %1618 to i64
  %1629 = sext i32 %1627 to i64
  %1630 = mul nsw i64 %1629, %1628
  %1631 = and i64 %1630, 4294967295
  store i64 %1631, i64* %RSI.i2547, align 8
  %1632 = trunc i64 %1630 to i32
  %1633 = add i32 %1632, %1603
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RDX.i2544, align 8
  %1635 = icmp ult i32 %1633, %1603
  %1636 = icmp ult i32 %1633, %1632
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %68, align 1
  %1639 = and i32 %1633, 255
  %1640 = tail call i32 @llvm.ctpop.i32(i32 %1639)
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, i8* %74, align 1
  %1644 = xor i64 %1630, %1601
  %1645 = trunc i64 %1644 to i32
  %1646 = xor i32 %1645, %1633
  %1647 = lshr i32 %1646, 4
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  store i8 %1649, i8* %79, align 1
  %1650 = icmp eq i32 %1633, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %82, align 1
  %1652 = lshr i32 %1633, 31
  %1653 = trunc i32 %1652 to i8
  store i8 %1653, i8* %85, align 1
  %1654 = lshr i32 %1632, 31
  %1655 = xor i32 %1652, %1612
  %1656 = xor i32 %1652, %1654
  %1657 = add nuw nsw i32 %1655, %1656
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %91, align 1
  %1660 = add i64 %1614, -60
  %1661 = add i64 %395, 546
  store i64 %1661, i64* %PC.i, align 8
  %1662 = inttoptr i64 %1660 to i32*
  %1663 = load i32, i32* %1662, align 4
  %1664 = add i32 %1663, %1633
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RDX.i2544, align 8
  %1666 = icmp ult i32 %1664, %1633
  %1667 = icmp ult i32 %1664, %1663
  %1668 = or i1 %1666, %1667
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %68, align 1
  %1670 = and i32 %1664, 255
  %1671 = tail call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  store i8 %1674, i8* %74, align 1
  %1675 = xor i32 %1663, %1633
  %1676 = xor i32 %1675, %1664
  %1677 = lshr i32 %1676, 4
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %79, align 1
  %1680 = icmp eq i32 %1664, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %82, align 1
  %1682 = lshr i32 %1664, 31
  %1683 = trunc i32 %1682 to i8
  store i8 %1683, i8* %85, align 1
  %1684 = lshr i32 %1663, 31
  %1685 = xor i32 %1682, %1652
  %1686 = xor i32 %1682, %1684
  %1687 = add nuw nsw i32 %1685, %1686
  %1688 = icmp eq i32 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %91, align 1
  %1690 = sext i32 %1664 to i64
  store i64 %1690, i64* %RCX.i2541, align 8
  %1691 = load i64, i64* %RAX.i2556, align 8
  %1692 = shl nsw i64 %1690, 2
  %1693 = add i64 %1692, %1691
  %1694 = add i64 %395, 554
  store i64 %1694, i64* %PC.i, align 8
  %1695 = inttoptr i64 %1693 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = bitcast %union.VectorReg* %198 to i32*
  store i32 %1696, i32* %1697, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %1698 = load i64, i64* %RBP.i, align 8
  %1699 = add i64 %1698, -40
  %1700 = add i64 %395, 558
  store i64 %1700, i64* %PC.i, align 8
  %1701 = inttoptr i64 %1699 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %RAX.i2556, align 8
  %1703 = add i64 %395, 561
  store i64 %1703, i64* %PC.i, align 8
  %1704 = inttoptr i64 %1702 to i64*
  %1705 = load i64, i64* %1704, align 8
  store i64 %1705, i64* %RAX.i2556, align 8
  %1706 = add i64 %395, 565
  store i64 %1706, i64* %PC.i, align 8
  %1707 = load i64, i64* %1701, align 8
  store i64 %1707, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1708 = add i64 %395, 573
  store i64 %1708, i64* %PC.i, align 8
  %1709 = load i64, i64* %1701, align 8
  store i64 %1709, i64* %RCX.i2541, align 8
  %1710 = add i64 %395, 577
  store i64 %1710, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1711 = add i64 %395, 581
  store i64 %1711, i64* %PC.i, align 8
  %1712 = load i64, i64* %1701, align 8
  store i64 %1712, i64* %RCX.i2541, align 8
  %1713 = add i64 %395, 585
  store i64 %1713, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1714 = add i64 %1698, -52
  %1715 = add i64 %395, 588
  store i64 %1715, i64* %PC.i, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = add i32 %1717, 1
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RSI.i2547, align 8
  %1720 = icmp eq i32 %1717, -1
  %1721 = icmp eq i32 %1718, 0
  %1722 = or i1 %1720, %1721
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %68, align 1
  %1724 = and i32 %1718, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %74, align 1
  %1729 = xor i32 %1717, %1718
  %1730 = lshr i32 %1729, 4
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  store i8 %1732, i8* %79, align 1
  %1733 = icmp eq i32 %1718, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %82, align 1
  %1735 = lshr i32 %1718, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %85, align 1
  %1737 = lshr i32 %1717, 31
  %1738 = xor i32 %1735, %1737
  %1739 = add nuw nsw i32 %1738, %1735
  %1740 = icmp eq i32 %1739, 2
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %91, align 1
  %1742 = load i64, i64* %RBP.i, align 8
  %1743 = add i64 %1742, -40
  %1744 = add i64 %395, 595
  store i64 %1744, i64* %PC.i, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RCX.i2541, align 8
  %1747 = add i64 %1746, 16
  %1748 = add i64 %395, 599
  store i64 %1748, i64* %PC.i, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = sext i32 %1718 to i64
  %1752 = sext i32 %1750 to i64
  %1753 = mul nsw i64 %1752, %1751
  %1754 = trunc i64 %1753 to i32
  %1755 = and i64 %1753, 4294967295
  store i64 %1755, i64* %RSI.i2547, align 8
  %1756 = shl i64 %1753, 32
  %1757 = ashr exact i64 %1756, 32
  %1758 = icmp ne i64 %1757, %1753
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %68, align 1
  %1760 = and i32 %1754, 255
  %1761 = tail call i32 @llvm.ctpop.i32(i32 %1760)
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = xor i8 %1763, 1
  store i8 %1764, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1765 = lshr i32 %1754, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %85, align 1
  store i8 %1759, i8* %91, align 1
  %1767 = add i64 %395, 603
  store i64 %1767, i64* %PC.i, align 8
  %1768 = load i64, i64* %1745, align 8
  store i64 %1768, i64* %RCX.i2541, align 8
  %1769 = add i64 %1768, 20
  %1770 = add i64 %395, 607
  store i64 %1770, i64* %PC.i, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = shl i64 %1753, 32
  %1774 = ashr exact i64 %1773, 32
  %1775 = sext i32 %1772 to i64
  %1776 = mul nsw i64 %1775, %1774
  %1777 = and i64 %1776, 4294967295
  store i64 %1777, i64* %RSI.i2547, align 8
  %1778 = load i64, i64* %RDX.i2544, align 8
  %1779 = trunc i64 %1776 to i32
  %1780 = trunc i64 %1778 to i32
  %1781 = add i32 %1779, %1780
  %1782 = zext i32 %1781 to i64
  store i64 %1782, i64* %RDX.i2544, align 8
  %1783 = icmp ult i32 %1781, %1780
  %1784 = icmp ult i32 %1781, %1779
  %1785 = or i1 %1783, %1784
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %68, align 1
  %1787 = and i32 %1781, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %74, align 1
  %1792 = xor i64 %1776, %1778
  %1793 = trunc i64 %1792 to i32
  %1794 = xor i32 %1793, %1781
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %79, align 1
  %1798 = icmp eq i32 %1781, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %82, align 1
  %1800 = lshr i32 %1781, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %85, align 1
  %1802 = lshr i32 %1780, 31
  %1803 = lshr i32 %1779, 31
  %1804 = xor i32 %1800, %1802
  %1805 = xor i32 %1800, %1803
  %1806 = add nuw nsw i32 %1804, %1805
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %91, align 1
  %1809 = load i64, i64* %RBP.i, align 8
  %1810 = add i64 %1809, -56
  %1811 = add i64 %395, 612
  store i64 %1811, i64* %PC.i, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = add i32 %1813, 1
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RSI.i2547, align 8
  %1816 = icmp eq i32 %1813, -1
  %1817 = icmp eq i32 %1814, 0
  %1818 = or i1 %1816, %1817
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %68, align 1
  %1820 = and i32 %1814, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820)
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %74, align 1
  %1825 = xor i32 %1813, %1814
  %1826 = lshr i32 %1825, 4
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  store i8 %1828, i8* %79, align 1
  %1829 = icmp eq i32 %1814, 0
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %82, align 1
  %1831 = lshr i32 %1814, 31
  %1832 = trunc i32 %1831 to i8
  store i8 %1832, i8* %85, align 1
  %1833 = lshr i32 %1813, 31
  %1834 = xor i32 %1831, %1833
  %1835 = add nuw nsw i32 %1834, %1831
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %91, align 1
  %1838 = add i64 %1809, -40
  %1839 = add i64 %395, 619
  store i64 %1839, i64* %PC.i, align 8
  %1840 = inttoptr i64 %1838 to i64*
  %1841 = load i64, i64* %1840, align 8
  store i64 %1841, i64* %RCX.i2541, align 8
  %1842 = add i64 %1841, 20
  %1843 = add i64 %395, 623
  store i64 %1843, i64* %PC.i, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = sext i32 %1814 to i64
  %1847 = sext i32 %1845 to i64
  %1848 = mul nsw i64 %1847, %1846
  %1849 = and i64 %1848, 4294967295
  store i64 %1849, i64* %RSI.i2547, align 8
  %1850 = load i64, i64* %RDX.i2544, align 8
  %1851 = trunc i64 %1848 to i32
  %1852 = trunc i64 %1850 to i32
  %1853 = add i32 %1851, %1852
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RDX.i2544, align 8
  %1855 = icmp ult i32 %1853, %1852
  %1856 = icmp ult i32 %1853, %1851
  %1857 = or i1 %1855, %1856
  %1858 = zext i1 %1857 to i8
  store i8 %1858, i8* %68, align 1
  %1859 = and i32 %1853, 255
  %1860 = tail call i32 @llvm.ctpop.i32(i32 %1859)
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  %1863 = xor i8 %1862, 1
  store i8 %1863, i8* %74, align 1
  %1864 = xor i64 %1848, %1850
  %1865 = trunc i64 %1864 to i32
  %1866 = xor i32 %1865, %1853
  %1867 = lshr i32 %1866, 4
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  store i8 %1869, i8* %79, align 1
  %1870 = icmp eq i32 %1853, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %82, align 1
  %1872 = lshr i32 %1853, 31
  %1873 = trunc i32 %1872 to i8
  store i8 %1873, i8* %85, align 1
  %1874 = lshr i32 %1852, 31
  %1875 = lshr i32 %1851, 31
  %1876 = xor i32 %1872, %1874
  %1877 = xor i32 %1872, %1875
  %1878 = add nuw nsw i32 %1876, %1877
  %1879 = icmp eq i32 %1878, 2
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %91, align 1
  %1881 = load i64, i64* %RBP.i, align 8
  %1882 = add i64 %1881, -60
  %1883 = add i64 %395, 628
  store i64 %1883, i64* %PC.i, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = add i32 %1885, %1853
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RDX.i2544, align 8
  %1888 = icmp ult i32 %1886, %1853
  %1889 = icmp ult i32 %1886, %1885
  %1890 = or i1 %1888, %1889
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %68, align 1
  %1892 = and i32 %1886, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %74, align 1
  %1897 = xor i32 %1885, %1853
  %1898 = xor i32 %1897, %1886
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %79, align 1
  %1902 = icmp eq i32 %1886, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %82, align 1
  %1904 = lshr i32 %1886, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %85, align 1
  %1906 = lshr i32 %1885, 31
  %1907 = xor i32 %1904, %1872
  %1908 = xor i32 %1904, %1906
  %1909 = add nuw nsw i32 %1907, %1908
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %91, align 1
  %1912 = sext i32 %1886 to i64
  store i64 %1912, i64* %RCX.i2541, align 8
  %1913 = load i64, i64* %RAX.i2556, align 8
  %1914 = shl nsw i64 %1912, 2
  %1915 = add i64 %1914, %1913
  %1916 = add i64 %395, 636
  store i64 %1916, i64* %PC.i, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = bitcast %union.VectorReg* %213 to i32*
  store i32 %1918, i32* %1919, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %221, align 1
  %1920 = add i64 %1881, -40
  %1921 = add i64 %395, 640
  store i64 %1921, i64* %PC.i, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX.i2556, align 8
  %1924 = add i64 %395, 643
  store i64 %1924, i64* %PC.i, align 8
  %1925 = inttoptr i64 %1923 to i64*
  %1926 = load i64, i64* %1925, align 8
  store i64 %1926, i64* %RAX.i2556, align 8
  %1927 = add i64 %395, 647
  store i64 %1927, i64* %PC.i, align 8
  %1928 = load i64, i64* %1922, align 8
  store i64 %1928, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1929 = add i64 %395, 655
  store i64 %1929, i64* %PC.i, align 8
  %1930 = load i64, i64* %1922, align 8
  store i64 %1930, i64* %RCX.i2541, align 8
  %1931 = add i64 %395, 659
  store i64 %1931, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1932 = add i64 %395, 663
  store i64 %1932, i64* %PC.i, align 8
  %1933 = load i64, i64* %1922, align 8
  store i64 %1933, i64* %RCX.i2541, align 8
  %1934 = add i64 %395, 667
  store i64 %1934, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1935 = load i64, i64* %RBP.i, align 8
  %1936 = add i64 %1935, -52
  %1937 = add i64 %395, 670
  store i64 %1937, i64* %PC.i, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = add i32 %1939, 1
  %1941 = zext i32 %1940 to i64
  store i64 %1941, i64* %RSI.i2547, align 8
  %1942 = icmp eq i32 %1939, -1
  %1943 = icmp eq i32 %1940, 0
  %1944 = or i1 %1942, %1943
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %68, align 1
  %1946 = and i32 %1940, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %74, align 1
  %1951 = xor i32 %1939, %1940
  %1952 = lshr i32 %1951, 4
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  store i8 %1954, i8* %79, align 1
  %1955 = icmp eq i32 %1940, 0
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %82, align 1
  %1957 = lshr i32 %1940, 31
  %1958 = trunc i32 %1957 to i8
  store i8 %1958, i8* %85, align 1
  %1959 = lshr i32 %1939, 31
  %1960 = xor i32 %1957, %1959
  %1961 = add nuw nsw i32 %1960, %1957
  %1962 = icmp eq i32 %1961, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %91, align 1
  %1964 = add i64 %1935, -40
  %1965 = add i64 %395, 677
  store i64 %1965, i64* %PC.i, align 8
  %1966 = inttoptr i64 %1964 to i64*
  %1967 = load i64, i64* %1966, align 8
  store i64 %1967, i64* %RCX.i2541, align 8
  %1968 = add i64 %1967, 16
  %1969 = add i64 %395, 681
  store i64 %1969, i64* %PC.i, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = sext i32 %1940 to i64
  %1973 = sext i32 %1971 to i64
  %1974 = mul nsw i64 %1973, %1972
  %1975 = trunc i64 %1974 to i32
  %1976 = and i64 %1974, 4294967295
  store i64 %1976, i64* %RSI.i2547, align 8
  %1977 = shl i64 %1974, 32
  %1978 = ashr exact i64 %1977, 32
  %1979 = icmp ne i64 %1978, %1974
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %68, align 1
  %1981 = and i32 %1975, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1986 = lshr i32 %1975, 31
  %1987 = trunc i32 %1986 to i8
  store i8 %1987, i8* %85, align 1
  store i8 %1980, i8* %91, align 1
  %1988 = add i64 %395, 685
  store i64 %1988, i64* %PC.i, align 8
  %1989 = load i64, i64* %1966, align 8
  store i64 %1989, i64* %RCX.i2541, align 8
  %1990 = add i64 %1989, 20
  %1991 = add i64 %395, 689
  store i64 %1991, i64* %PC.i, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = shl i64 %1974, 32
  %1995 = ashr exact i64 %1994, 32
  %1996 = sext i32 %1993 to i64
  %1997 = mul nsw i64 %1996, %1995
  %1998 = and i64 %1997, 4294967295
  store i64 %1998, i64* %RSI.i2547, align 8
  %1999 = load i64, i64* %RDX.i2544, align 8
  %2000 = trunc i64 %1997 to i32
  %2001 = trunc i64 %1999 to i32
  %2002 = add i32 %2000, %2001
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RDX.i2544, align 8
  %2004 = icmp ult i32 %2002, %2001
  %2005 = icmp ult i32 %2002, %2000
  %2006 = or i1 %2004, %2005
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %68, align 1
  %2008 = and i32 %2002, 255
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %74, align 1
  %2013 = xor i64 %1997, %1999
  %2014 = trunc i64 %2013 to i32
  %2015 = xor i32 %2014, %2002
  %2016 = lshr i32 %2015, 4
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  store i8 %2018, i8* %79, align 1
  %2019 = icmp eq i32 %2002, 0
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %82, align 1
  %2021 = lshr i32 %2002, 31
  %2022 = trunc i32 %2021 to i8
  store i8 %2022, i8* %85, align 1
  %2023 = lshr i32 %2001, 31
  %2024 = lshr i32 %2000, 31
  %2025 = xor i32 %2021, %2023
  %2026 = xor i32 %2021, %2024
  %2027 = add nuw nsw i32 %2025, %2026
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %91, align 1
  %2030 = load i64, i64* %RBP.i, align 8
  %2031 = add i64 %2030, -56
  %2032 = add i64 %395, 694
  store i64 %2032, i64* %PC.i, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = add i32 %2034, -1
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RSI.i2547, align 8
  %2037 = icmp eq i32 %2034, 0
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %68, align 1
  %2039 = and i32 %2035, 255
  %2040 = tail call i32 @llvm.ctpop.i32(i32 %2039)
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = xor i8 %2042, 1
  store i8 %2043, i8* %74, align 1
  %2044 = xor i32 %2034, %2035
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %79, align 1
  %2048 = icmp eq i32 %2035, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %82, align 1
  %2050 = lshr i32 %2035, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %85, align 1
  %2052 = lshr i32 %2034, 31
  %2053 = xor i32 %2050, %2052
  %2054 = add nuw nsw i32 %2053, %2052
  %2055 = icmp eq i32 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %91, align 1
  %2057 = add i64 %2030, -40
  %2058 = add i64 %395, 701
  store i64 %2058, i64* %PC.i, align 8
  %2059 = inttoptr i64 %2057 to i64*
  %2060 = load i64, i64* %2059, align 8
  store i64 %2060, i64* %RCX.i2541, align 8
  %2061 = add i64 %2060, 20
  %2062 = add i64 %395, 705
  store i64 %2062, i64* %PC.i, align 8
  %2063 = inttoptr i64 %2061 to i32*
  %2064 = load i32, i32* %2063, align 4
  %2065 = sext i32 %2035 to i64
  %2066 = sext i32 %2064 to i64
  %2067 = mul nsw i64 %2066, %2065
  %2068 = and i64 %2067, 4294967295
  store i64 %2068, i64* %RSI.i2547, align 8
  %2069 = load i64, i64* %RDX.i2544, align 8
  %2070 = trunc i64 %2067 to i32
  %2071 = trunc i64 %2069 to i32
  %2072 = add i32 %2070, %2071
  %2073 = zext i32 %2072 to i64
  store i64 %2073, i64* %RDX.i2544, align 8
  %2074 = icmp ult i32 %2072, %2071
  %2075 = icmp ult i32 %2072, %2070
  %2076 = or i1 %2074, %2075
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %68, align 1
  %2078 = and i32 %2072, 255
  %2079 = tail call i32 @llvm.ctpop.i32(i32 %2078)
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = xor i8 %2081, 1
  store i8 %2082, i8* %74, align 1
  %2083 = xor i64 %2067, %2069
  %2084 = trunc i64 %2083 to i32
  %2085 = xor i32 %2084, %2072
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %79, align 1
  %2089 = icmp eq i32 %2072, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %82, align 1
  %2091 = lshr i32 %2072, 31
  %2092 = trunc i32 %2091 to i8
  store i8 %2092, i8* %85, align 1
  %2093 = lshr i32 %2071, 31
  %2094 = lshr i32 %2070, 31
  %2095 = xor i32 %2091, %2093
  %2096 = xor i32 %2091, %2094
  %2097 = add nuw nsw i32 %2095, %2096
  %2098 = icmp eq i32 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %91, align 1
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -60
  %2102 = add i64 %395, 710
  store i64 %2102, i64* %PC.i, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = add i32 %2104, %2072
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RDX.i2544, align 8
  %2107 = icmp ult i32 %2105, %2072
  %2108 = icmp ult i32 %2105, %2104
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %68, align 1
  %2111 = and i32 %2105, 255
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111)
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  store i8 %2115, i8* %74, align 1
  %2116 = xor i32 %2104, %2072
  %2117 = xor i32 %2116, %2105
  %2118 = lshr i32 %2117, 4
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  store i8 %2120, i8* %79, align 1
  %2121 = icmp eq i32 %2105, 0
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %82, align 1
  %2123 = lshr i32 %2105, 31
  %2124 = trunc i32 %2123 to i8
  store i8 %2124, i8* %85, align 1
  %2125 = lshr i32 %2104, 31
  %2126 = xor i32 %2123, %2091
  %2127 = xor i32 %2123, %2125
  %2128 = add nuw nsw i32 %2126, %2127
  %2129 = icmp eq i32 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %91, align 1
  %2131 = sext i32 %2105 to i64
  store i64 %2131, i64* %RCX.i2541, align 8
  %2132 = load i64, i64* %RAX.i2556, align 8
  %2133 = shl nsw i64 %2131, 2
  %2134 = add i64 %2133, %2132
  %2135 = add i64 %395, 718
  store i64 %2135, i64* %PC.i, align 8
  %2136 = load <2 x float>, <2 x float>* %222, align 1
  %2137 = load <2 x i32>, <2 x i32>* %223, align 1
  %2138 = inttoptr i64 %2134 to float*
  %2139 = load float, float* %2138, align 4
  %2140 = extractelement <2 x float> %2136, i32 0
  %2141 = fsub float %2140, %2139
  store float %2141, float* %215, align 1
  %2142 = bitcast <2 x float> %2136 to <2 x i32>
  %2143 = extractelement <2 x i32> %2142, i32 1
  store i32 %2143, i32* %224, align 1
  %2144 = extractelement <2 x i32> %2137, i32 0
  store i32 %2144, i32* %225, align 1
  %2145 = extractelement <2 x i32> %2137, i32 1
  store i32 %2145, i32* %226, align 1
  %2146 = add i64 %2100, -40
  %2147 = add i64 %395, 722
  store i64 %2147, i64* %PC.i, align 8
  %2148 = inttoptr i64 %2146 to i64*
  %2149 = load i64, i64* %2148, align 8
  store i64 %2149, i64* %RAX.i2556, align 8
  %2150 = add i64 %395, 725
  store i64 %2150, i64* %PC.i, align 8
  %2151 = inttoptr i64 %2149 to i64*
  %2152 = load i64, i64* %2151, align 8
  store i64 %2152, i64* %RAX.i2556, align 8
  %2153 = add i64 %395, 729
  store i64 %2153, i64* %PC.i, align 8
  %2154 = load i64, i64* %2148, align 8
  store i64 %2154, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2155 = add i64 %395, 737
  store i64 %2155, i64* %PC.i, align 8
  %2156 = load i64, i64* %2148, align 8
  store i64 %2156, i64* %RCX.i2541, align 8
  %2157 = add i64 %395, 741
  store i64 %2157, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2158 = load i64, i64* %RBP.i, align 8
  %2159 = add i64 %2158, -40
  %2160 = add i64 %395, 745
  store i64 %2160, i64* %PC.i, align 8
  %2161 = inttoptr i64 %2159 to i64*
  %2162 = load i64, i64* %2161, align 8
  store i64 %2162, i64* %RCX.i2541, align 8
  %2163 = add i64 %395, 749
  store i64 %2163, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2164 = add i64 %2158, -52
  %2165 = add i64 %395, 752
  store i64 %2165, i64* %PC.i, align 8
  %2166 = inttoptr i64 %2164 to i32*
  %2167 = load i32, i32* %2166, align 4
  %2168 = add i32 %2167, -1
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %RSI.i2547, align 8
  %2170 = icmp eq i32 %2167, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %68, align 1
  %2172 = and i32 %2168, 255
  %2173 = tail call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  store i8 %2176, i8* %74, align 1
  %2177 = xor i32 %2167, %2168
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %79, align 1
  %2181 = icmp eq i32 %2168, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %82, align 1
  %2183 = lshr i32 %2168, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %85, align 1
  %2185 = lshr i32 %2167, 31
  %2186 = xor i32 %2183, %2185
  %2187 = add nuw nsw i32 %2186, %2185
  %2188 = icmp eq i32 %2187, 2
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %91, align 1
  %2190 = add i64 %395, 759
  store i64 %2190, i64* %PC.i, align 8
  %2191 = load i64, i64* %2161, align 8
  store i64 %2191, i64* %RCX.i2541, align 8
  %2192 = add i64 %2191, 16
  %2193 = add i64 %395, 763
  store i64 %2193, i64* %PC.i, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = sext i32 %2168 to i64
  %2197 = sext i32 %2195 to i64
  %2198 = mul nsw i64 %2197, %2196
  %2199 = trunc i64 %2198 to i32
  %2200 = and i64 %2198, 4294967295
  store i64 %2200, i64* %RSI.i2547, align 8
  %2201 = shl i64 %2198, 32
  %2202 = ashr exact i64 %2201, 32
  %2203 = icmp ne i64 %2202, %2198
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %68, align 1
  %2205 = and i32 %2199, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2210 = lshr i32 %2199, 31
  %2211 = trunc i32 %2210 to i8
  store i8 %2211, i8* %85, align 1
  store i8 %2204, i8* %91, align 1
  %2212 = add i64 %395, 767
  store i64 %2212, i64* %PC.i, align 8
  %2213 = load i64, i64* %2161, align 8
  store i64 %2213, i64* %RCX.i2541, align 8
  %2214 = add i64 %2213, 20
  %2215 = add i64 %395, 771
  store i64 %2215, i64* %PC.i, align 8
  %2216 = inttoptr i64 %2214 to i32*
  %2217 = load i32, i32* %2216, align 4
  %2218 = shl i64 %2198, 32
  %2219 = ashr exact i64 %2218, 32
  %2220 = sext i32 %2217 to i64
  %2221 = mul nsw i64 %2220, %2219
  %2222 = and i64 %2221, 4294967295
  store i64 %2222, i64* %RSI.i2547, align 8
  %2223 = load i64, i64* %RDX.i2544, align 8
  %2224 = trunc i64 %2221 to i32
  %2225 = trunc i64 %2223 to i32
  %2226 = add i32 %2224, %2225
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RDX.i2544, align 8
  %2228 = icmp ult i32 %2226, %2225
  %2229 = icmp ult i32 %2226, %2224
  %2230 = or i1 %2228, %2229
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %68, align 1
  %2232 = and i32 %2226, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %74, align 1
  %2237 = xor i64 %2221, %2223
  %2238 = trunc i64 %2237 to i32
  %2239 = xor i32 %2238, %2226
  %2240 = lshr i32 %2239, 4
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  store i8 %2242, i8* %79, align 1
  %2243 = icmp eq i32 %2226, 0
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %82, align 1
  %2245 = lshr i32 %2226, 31
  %2246 = trunc i32 %2245 to i8
  store i8 %2246, i8* %85, align 1
  %2247 = lshr i32 %2225, 31
  %2248 = lshr i32 %2224, 31
  %2249 = xor i32 %2245, %2247
  %2250 = xor i32 %2245, %2248
  %2251 = add nuw nsw i32 %2249, %2250
  %2252 = icmp eq i32 %2251, 2
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %91, align 1
  %2254 = load i64, i64* %RBP.i, align 8
  %2255 = add i64 %2254, -56
  %2256 = add i64 %395, 776
  store i64 %2256, i64* %PC.i, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = add i32 %2258, 1
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RSI.i2547, align 8
  %2261 = icmp eq i32 %2258, -1
  %2262 = icmp eq i32 %2259, 0
  %2263 = or i1 %2261, %2262
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %68, align 1
  %2265 = and i32 %2259, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %74, align 1
  %2270 = xor i32 %2258, %2259
  %2271 = lshr i32 %2270, 4
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  store i8 %2273, i8* %79, align 1
  %2274 = icmp eq i32 %2259, 0
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %82, align 1
  %2276 = lshr i32 %2259, 31
  %2277 = trunc i32 %2276 to i8
  store i8 %2277, i8* %85, align 1
  %2278 = lshr i32 %2258, 31
  %2279 = xor i32 %2276, %2278
  %2280 = add nuw nsw i32 %2279, %2276
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %91, align 1
  %2283 = add i64 %2254, -40
  %2284 = add i64 %395, 783
  store i64 %2284, i64* %PC.i, align 8
  %2285 = inttoptr i64 %2283 to i64*
  %2286 = load i64, i64* %2285, align 8
  store i64 %2286, i64* %RCX.i2541, align 8
  %2287 = add i64 %2286, 20
  %2288 = add i64 %395, 787
  store i64 %2288, i64* %PC.i, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = sext i32 %2259 to i64
  %2292 = sext i32 %2290 to i64
  %2293 = mul nsw i64 %2292, %2291
  %2294 = and i64 %2293, 4294967295
  store i64 %2294, i64* %RSI.i2547, align 8
  %2295 = load i64, i64* %RDX.i2544, align 8
  %2296 = trunc i64 %2293 to i32
  %2297 = trunc i64 %2295 to i32
  %2298 = add i32 %2296, %2297
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RDX.i2544, align 8
  %2300 = icmp ult i32 %2298, %2297
  %2301 = icmp ult i32 %2298, %2296
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %68, align 1
  %2304 = and i32 %2298, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %74, align 1
  %2309 = xor i64 %2293, %2295
  %2310 = trunc i64 %2309 to i32
  %2311 = xor i32 %2310, %2298
  %2312 = lshr i32 %2311, 4
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  store i8 %2314, i8* %79, align 1
  %2315 = icmp eq i32 %2298, 0
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %82, align 1
  %2317 = lshr i32 %2298, 31
  %2318 = trunc i32 %2317 to i8
  store i8 %2318, i8* %85, align 1
  %2319 = lshr i32 %2297, 31
  %2320 = lshr i32 %2296, 31
  %2321 = xor i32 %2317, %2319
  %2322 = xor i32 %2317, %2320
  %2323 = add nuw nsw i32 %2321, %2322
  %2324 = icmp eq i32 %2323, 2
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %91, align 1
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -60
  %2328 = add i64 %395, 792
  store i64 %2328, i64* %PC.i, align 8
  %2329 = inttoptr i64 %2327 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = add i32 %2330, %2298
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RDX.i2544, align 8
  %2333 = icmp ult i32 %2331, %2298
  %2334 = icmp ult i32 %2331, %2330
  %2335 = or i1 %2333, %2334
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %68, align 1
  %2337 = and i32 %2331, 255
  %2338 = tail call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  store i8 %2341, i8* %74, align 1
  %2342 = xor i32 %2330, %2298
  %2343 = xor i32 %2342, %2331
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  store i8 %2346, i8* %79, align 1
  %2347 = icmp eq i32 %2331, 0
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %82, align 1
  %2349 = lshr i32 %2331, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %85, align 1
  %2351 = lshr i32 %2330, 31
  %2352 = xor i32 %2349, %2317
  %2353 = xor i32 %2349, %2351
  %2354 = add nuw nsw i32 %2352, %2353
  %2355 = icmp eq i32 %2354, 2
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %91, align 1
  %2357 = sext i32 %2331 to i64
  store i64 %2357, i64* %RCX.i2541, align 8
  %2358 = load i64, i64* %RAX.i2556, align 8
  %2359 = shl nsw i64 %2357, 2
  %2360 = add i64 %2359, %2358
  %2361 = add i64 %395, 800
  store i64 %2361, i64* %PC.i, align 8
  %2362 = load <2 x float>, <2 x float>* %222, align 1
  %2363 = load <2 x i32>, <2 x i32>* %223, align 1
  %2364 = inttoptr i64 %2360 to float*
  %2365 = load float, float* %2364, align 4
  %2366 = extractelement <2 x float> %2362, i32 0
  %2367 = fsub float %2366, %2365
  store float %2367, float* %215, align 1
  %2368 = bitcast <2 x float> %2362 to <2 x i32>
  %2369 = extractelement <2 x i32> %2368, i32 1
  store i32 %2369, i32* %224, align 1
  %2370 = extractelement <2 x i32> %2363, i32 0
  store i32 %2370, i32* %225, align 1
  %2371 = extractelement <2 x i32> %2363, i32 1
  store i32 %2371, i32* %226, align 1
  %2372 = add i64 %2326, -40
  %2373 = add i64 %395, 804
  store i64 %2373, i64* %PC.i, align 8
  %2374 = inttoptr i64 %2372 to i64*
  %2375 = load i64, i64* %2374, align 8
  store i64 %2375, i64* %RAX.i2556, align 8
  %2376 = add i64 %395, 807
  store i64 %2376, i64* %PC.i, align 8
  %2377 = inttoptr i64 %2375 to i64*
  %2378 = load i64, i64* %2377, align 8
  store i64 %2378, i64* %RAX.i2556, align 8
  %2379 = add i64 %395, 811
  store i64 %2379, i64* %PC.i, align 8
  %2380 = load i64, i64* %2374, align 8
  store i64 %2380, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2381 = add i64 %395, 819
  store i64 %2381, i64* %PC.i, align 8
  %2382 = load i64, i64* %2374, align 8
  store i64 %2382, i64* %RCX.i2541, align 8
  %2383 = add i64 %395, 823
  store i64 %2383, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -40
  %2386 = add i64 %395, 827
  store i64 %2386, i64* %PC.i, align 8
  %2387 = inttoptr i64 %2385 to i64*
  %2388 = load i64, i64* %2387, align 8
  store i64 %2388, i64* %RCX.i2541, align 8
  %2389 = add i64 %395, 831
  store i64 %2389, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2390 = add i64 %2384, -52
  %2391 = add i64 %395, 834
  store i64 %2391, i64* %PC.i, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  %2394 = add i32 %2393, -1
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RSI.i2547, align 8
  %2396 = icmp eq i32 %2393, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %68, align 1
  %2398 = and i32 %2394, 255
  %2399 = tail call i32 @llvm.ctpop.i32(i32 %2398)
  %2400 = trunc i32 %2399 to i8
  %2401 = and i8 %2400, 1
  %2402 = xor i8 %2401, 1
  store i8 %2402, i8* %74, align 1
  %2403 = xor i32 %2393, %2394
  %2404 = lshr i32 %2403, 4
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  store i8 %2406, i8* %79, align 1
  %2407 = icmp eq i32 %2394, 0
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %82, align 1
  %2409 = lshr i32 %2394, 31
  %2410 = trunc i32 %2409 to i8
  store i8 %2410, i8* %85, align 1
  %2411 = lshr i32 %2393, 31
  %2412 = xor i32 %2409, %2411
  %2413 = add nuw nsw i32 %2412, %2411
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %91, align 1
  %2416 = add i64 %395, 841
  store i64 %2416, i64* %PC.i, align 8
  %2417 = load i64, i64* %2387, align 8
  store i64 %2417, i64* %RCX.i2541, align 8
  %2418 = add i64 %2417, 16
  %2419 = add i64 %395, 845
  store i64 %2419, i64* %PC.i, align 8
  %2420 = inttoptr i64 %2418 to i32*
  %2421 = load i32, i32* %2420, align 4
  %2422 = sext i32 %2394 to i64
  %2423 = sext i32 %2421 to i64
  %2424 = mul nsw i64 %2423, %2422
  %2425 = trunc i64 %2424 to i32
  %2426 = and i64 %2424, 4294967295
  store i64 %2426, i64* %RSI.i2547, align 8
  %2427 = shl i64 %2424, 32
  %2428 = ashr exact i64 %2427, 32
  %2429 = icmp ne i64 %2428, %2424
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %68, align 1
  %2431 = and i32 %2425, 255
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2436 = lshr i32 %2425, 31
  %2437 = trunc i32 %2436 to i8
  store i8 %2437, i8* %85, align 1
  store i8 %2430, i8* %91, align 1
  %2438 = add i64 %395, 849
  store i64 %2438, i64* %PC.i, align 8
  %2439 = load i64, i64* %2387, align 8
  store i64 %2439, i64* %RCX.i2541, align 8
  %2440 = add i64 %2439, 20
  %2441 = add i64 %395, 853
  store i64 %2441, i64* %PC.i, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = shl i64 %2424, 32
  %2445 = ashr exact i64 %2444, 32
  %2446 = sext i32 %2443 to i64
  %2447 = mul nsw i64 %2446, %2445
  %2448 = and i64 %2447, 4294967295
  store i64 %2448, i64* %RSI.i2547, align 8
  %2449 = load i64, i64* %RDX.i2544, align 8
  %2450 = trunc i64 %2447 to i32
  %2451 = trunc i64 %2449 to i32
  %2452 = add i32 %2450, %2451
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RDX.i2544, align 8
  %2454 = icmp ult i32 %2452, %2451
  %2455 = icmp ult i32 %2452, %2450
  %2456 = or i1 %2454, %2455
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %68, align 1
  %2458 = and i32 %2452, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %74, align 1
  %2463 = xor i64 %2447, %2449
  %2464 = trunc i64 %2463 to i32
  %2465 = xor i32 %2464, %2452
  %2466 = lshr i32 %2465, 4
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %79, align 1
  %2469 = icmp eq i32 %2452, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %82, align 1
  %2471 = lshr i32 %2452, 31
  %2472 = trunc i32 %2471 to i8
  store i8 %2472, i8* %85, align 1
  %2473 = lshr i32 %2451, 31
  %2474 = lshr i32 %2450, 31
  %2475 = xor i32 %2471, %2473
  %2476 = xor i32 %2471, %2474
  %2477 = add nuw nsw i32 %2475, %2476
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %91, align 1
  %2480 = load i64, i64* %RBP.i, align 8
  %2481 = add i64 %2480, -56
  %2482 = add i64 %395, 858
  store i64 %2482, i64* %PC.i, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = add i32 %2484, -1
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RSI.i2547, align 8
  %2487 = icmp eq i32 %2484, 0
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %68, align 1
  %2489 = and i32 %2485, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %74, align 1
  %2494 = xor i32 %2484, %2485
  %2495 = lshr i32 %2494, 4
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  store i8 %2497, i8* %79, align 1
  %2498 = icmp eq i32 %2485, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %82, align 1
  %2500 = lshr i32 %2485, 31
  %2501 = trunc i32 %2500 to i8
  store i8 %2501, i8* %85, align 1
  %2502 = lshr i32 %2484, 31
  %2503 = xor i32 %2500, %2502
  %2504 = add nuw nsw i32 %2503, %2502
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %91, align 1
  %2507 = add i64 %2480, -40
  %2508 = add i64 %395, 865
  store i64 %2508, i64* %PC.i, align 8
  %2509 = inttoptr i64 %2507 to i64*
  %2510 = load i64, i64* %2509, align 8
  store i64 %2510, i64* %RCX.i2541, align 8
  %2511 = add i64 %2510, 20
  %2512 = add i64 %395, 869
  store i64 %2512, i64* %PC.i, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  %2515 = sext i32 %2485 to i64
  %2516 = sext i32 %2514 to i64
  %2517 = mul nsw i64 %2516, %2515
  %2518 = and i64 %2517, 4294967295
  store i64 %2518, i64* %RSI.i2547, align 8
  %2519 = load i64, i64* %RDX.i2544, align 8
  %2520 = trunc i64 %2517 to i32
  %2521 = trunc i64 %2519 to i32
  %2522 = add i32 %2520, %2521
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RDX.i2544, align 8
  %2524 = icmp ult i32 %2522, %2521
  %2525 = icmp ult i32 %2522, %2520
  %2526 = or i1 %2524, %2525
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %68, align 1
  %2528 = and i32 %2522, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %74, align 1
  %2533 = xor i64 %2517, %2519
  %2534 = trunc i64 %2533 to i32
  %2535 = xor i32 %2534, %2522
  %2536 = lshr i32 %2535, 4
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  store i8 %2538, i8* %79, align 1
  %2539 = icmp eq i32 %2522, 0
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %82, align 1
  %2541 = lshr i32 %2522, 31
  %2542 = trunc i32 %2541 to i8
  store i8 %2542, i8* %85, align 1
  %2543 = lshr i32 %2521, 31
  %2544 = lshr i32 %2520, 31
  %2545 = xor i32 %2541, %2543
  %2546 = xor i32 %2541, %2544
  %2547 = add nuw nsw i32 %2545, %2546
  %2548 = icmp eq i32 %2547, 2
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %91, align 1
  %2550 = load i64, i64* %RBP.i, align 8
  %2551 = add i64 %2550, -60
  %2552 = add i64 %395, 874
  store i64 %2552, i64* %PC.i, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = add i32 %2554, %2522
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RDX.i2544, align 8
  %2557 = icmp ult i32 %2555, %2522
  %2558 = icmp ult i32 %2555, %2554
  %2559 = or i1 %2557, %2558
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %68, align 1
  %2561 = and i32 %2555, 255
  %2562 = tail call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  store i8 %2565, i8* %74, align 1
  %2566 = xor i32 %2554, %2522
  %2567 = xor i32 %2566, %2555
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  store i8 %2570, i8* %79, align 1
  %2571 = icmp eq i32 %2555, 0
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %82, align 1
  %2573 = lshr i32 %2555, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %85, align 1
  %2575 = lshr i32 %2554, 31
  %2576 = xor i32 %2573, %2541
  %2577 = xor i32 %2573, %2575
  %2578 = add nuw nsw i32 %2576, %2577
  %2579 = icmp eq i32 %2578, 2
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %91, align 1
  %2581 = sext i32 %2555 to i64
  store i64 %2581, i64* %RCX.i2541, align 8
  %2582 = load i64, i64* %RAX.i2556, align 8
  %2583 = shl nsw i64 %2581, 2
  %2584 = add i64 %2583, %2582
  %2585 = add i64 %395, 882
  store i64 %2585, i64* %PC.i, align 8
  %2586 = load <2 x float>, <2 x float>* %222, align 1
  %2587 = load <2 x i32>, <2 x i32>* %223, align 1
  %2588 = inttoptr i64 %2584 to float*
  %2589 = load float, float* %2588, align 4
  %2590 = extractelement <2 x float> %2586, i32 0
  %2591 = fadd float %2590, %2589
  store float %2591, float* %215, align 1
  %2592 = bitcast <2 x float> %2586 to <2 x i32>
  %2593 = extractelement <2 x i32> %2592, i32 1
  store i32 %2593, i32* %224, align 1
  %2594 = extractelement <2 x i32> %2587, i32 0
  store i32 %2594, i32* %225, align 1
  %2595 = extractelement <2 x i32> %2587, i32 1
  store i32 %2595, i32* %226, align 1
  %2596 = load <2 x float>, <2 x float>* %207, align 1
  %2597 = load <2 x i32>, <2 x i32>* %208, align 1
  %2598 = load <2 x float>, <2 x float>* %227, align 1
  %2599 = extractelement <2 x float> %2596, i32 0
  %2600 = extractelement <2 x float> %2598, i32 0
  %2601 = fmul float %2599, %2600
  store float %2601, float* %200, align 1
  %2602 = bitcast <2 x float> %2596 to <2 x i32>
  %2603 = extractelement <2 x i32> %2602, i32 1
  store i32 %2603, i32* %209, align 1
  %2604 = extractelement <2 x i32> %2597, i32 0
  store i32 %2604, i32* %210, align 1
  %2605 = extractelement <2 x i32> %2597, i32 1
  store i32 %2605, i32* %211, align 1
  %2606 = load <2 x float>, <2 x float>* %196, align 1
  %2607 = load <2 x i32>, <2 x i32>* %197, align 1
  %2608 = load <2 x float>, <2 x float>* %212, align 1
  %2609 = extractelement <2 x float> %2606, i32 0
  %2610 = extractelement <2 x float> %2608, i32 0
  %2611 = fadd float %2609, %2610
  store float %2611, float* %192, align 1
  %2612 = bitcast <2 x float> %2606 to <2 x i32>
  %2613 = extractelement <2 x i32> %2612, i32 1
  store i32 %2613, i32* %187, align 1
  %2614 = extractelement <2 x i32> %2607, i32 0
  store i32 %2614, i32* %188, align 1
  %2615 = extractelement <2 x i32> %2607, i32 1
  store i32 %2615, i32* %190, align 1
  %2616 = add i64 %2550, -24
  %2617 = add i64 %395, 894
  store i64 %2617, i64* %PC.i, align 8
  %2618 = inttoptr i64 %2616 to i64*
  %2619 = load i64, i64* %2618, align 8
  store i64 %2619, i64* %RAX.i2556, align 8
  %2620 = add i64 %395, 897
  store i64 %2620, i64* %PC.i, align 8
  %2621 = inttoptr i64 %2619 to i64*
  %2622 = load i64, i64* %2621, align 8
  store i64 %2622, i64* %RAX.i2556, align 8
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -24
  %2625 = add i64 %395, 901
  store i64 %2625, i64* %PC.i, align 8
  %2626 = inttoptr i64 %2624 to i64*
  %2627 = load i64, i64* %2626, align 8
  store i64 %2627, i64* %RCX.i2541, align 8
  %2628 = add i64 %2627, 12
  %2629 = add i64 %395, 904
  store i64 %2629, i64* %PC.i, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RDX.i2544, align 8
  %2633 = add i64 %395, 911
  store i64 %2633, i64* %PC.i, align 8
  %2634 = load i64, i64* %2626, align 8
  store i64 %2634, i64* %RCX.i2541, align 8
  %2635 = add i64 %2634, 16
  %2636 = add i64 %395, 915
  store i64 %2636, i64* %PC.i, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = sext i32 %2631 to i64
  %2640 = sext i32 %2638 to i64
  %2641 = mul nsw i64 %2640, %2639
  %2642 = trunc i64 %2641 to i32
  %2643 = and i64 %2641, 4294967295
  store i64 %2643, i64* %RDX.i2544, align 8
  %2644 = shl i64 %2641, 32
  %2645 = ashr exact i64 %2644, 32
  %2646 = icmp ne i64 %2645, %2641
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %68, align 1
  %2648 = and i32 %2642, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2653 = lshr i32 %2642, 31
  %2654 = trunc i32 %2653 to i8
  store i8 %2654, i8* %85, align 1
  store i8 %2647, i8* %91, align 1
  %2655 = add i64 %395, 919
  store i64 %2655, i64* %PC.i, align 8
  %2656 = load i64, i64* %2626, align 8
  store i64 %2656, i64* %RCX.i2541, align 8
  %2657 = add i64 %2656, 20
  %2658 = add i64 %395, 923
  store i64 %2658, i64* %PC.i, align 8
  %2659 = inttoptr i64 %2657 to i32*
  %2660 = load i32, i32* %2659, align 4
  %2661 = shl i64 %2641, 32
  %2662 = ashr exact i64 %2661, 32
  %2663 = sext i32 %2660 to i64
  %2664 = mul nsw i64 %2663, %2662
  %2665 = trunc i64 %2664 to i32
  %2666 = and i64 %2664, 4294967295
  store i64 %2666, i64* %RDX.i2544, align 8
  %2667 = shl i64 %2664, 32
  %2668 = ashr exact i64 %2667, 32
  %2669 = icmp ne i64 %2668, %2664
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %68, align 1
  %2671 = and i32 %2665, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2676 = lshr i32 %2665, 31
  %2677 = trunc i32 %2676 to i8
  store i8 %2677, i8* %85, align 1
  store i8 %2670, i8* %91, align 1
  %2678 = add i64 %2623, -52
  %2679 = add i64 %395, 926
  store i64 %2679, i64* %PC.i, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = zext i32 %2681 to i64
  store i64 %2682, i64* %RSI.i2547, align 8
  %2683 = add i64 %395, 930
  store i64 %2683, i64* %PC.i, align 8
  %2684 = load i64, i64* %2626, align 8
  store i64 %2684, i64* %RCX.i2541, align 8
  %2685 = add i64 %2684, 16
  %2686 = add i64 %395, 934
  store i64 %2686, i64* %PC.i, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2681 to i64
  %2690 = sext i32 %2688 to i64
  %2691 = mul nsw i64 %2690, %2689
  %2692 = trunc i64 %2691 to i32
  %2693 = and i64 %2691, 4294967295
  store i64 %2693, i64* %RSI.i2547, align 8
  %2694 = shl i64 %2691, 32
  %2695 = ashr exact i64 %2694, 32
  %2696 = icmp ne i64 %2695, %2691
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %68, align 1
  %2698 = and i32 %2692, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2703 = lshr i32 %2692, 31
  %2704 = trunc i32 %2703 to i8
  store i8 %2704, i8* %85, align 1
  store i8 %2697, i8* %91, align 1
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -24
  %2707 = add i64 %395, 938
  store i64 %2707, i64* %PC.i, align 8
  %2708 = inttoptr i64 %2706 to i64*
  %2709 = load i64, i64* %2708, align 8
  store i64 %2709, i64* %RCX.i2541, align 8
  %2710 = add i64 %2709, 20
  %2711 = add i64 %395, 942
  store i64 %2711, i64* %PC.i, align 8
  %2712 = inttoptr i64 %2710 to i32*
  %2713 = load i32, i32* %2712, align 4
  %2714 = shl i64 %2691, 32
  %2715 = ashr exact i64 %2714, 32
  %2716 = sext i32 %2713 to i64
  %2717 = mul nsw i64 %2716, %2715
  %2718 = and i64 %2717, 4294967295
  store i64 %2718, i64* %RSI.i2547, align 8
  %2719 = trunc i64 %2717 to i32
  %2720 = trunc i64 %2664 to i32
  %2721 = add i32 %2719, %2720
  %2722 = zext i32 %2721 to i64
  store i64 %2722, i64* %RDX.i2544, align 8
  %2723 = icmp ult i32 %2721, %2720
  %2724 = icmp ult i32 %2721, %2719
  %2725 = or i1 %2723, %2724
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %68, align 1
  %2727 = and i32 %2721, 255
  %2728 = tail call i32 @llvm.ctpop.i32(i32 %2727)
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  store i8 %2731, i8* %74, align 1
  %2732 = xor i64 %2717, %2664
  %2733 = trunc i64 %2732 to i32
  %2734 = xor i32 %2733, %2721
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %79, align 1
  %2738 = icmp eq i32 %2721, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %82, align 1
  %2740 = lshr i32 %2721, 31
  %2741 = trunc i32 %2740 to i8
  store i8 %2741, i8* %85, align 1
  %2742 = lshr i32 %2720, 31
  %2743 = lshr i32 %2719, 31
  %2744 = xor i32 %2740, %2742
  %2745 = xor i32 %2740, %2743
  %2746 = add nuw nsw i32 %2744, %2745
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %91, align 1
  %2749 = add i64 %2705, -56
  %2750 = add i64 %395, 947
  store i64 %2750, i64* %PC.i, align 8
  %2751 = inttoptr i64 %2749 to i32*
  %2752 = load i32, i32* %2751, align 4
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RSI.i2547, align 8
  %2754 = add i64 %395, 951
  store i64 %2754, i64* %PC.i, align 8
  %2755 = load i64, i64* %2708, align 8
  store i64 %2755, i64* %RCX.i2541, align 8
  %2756 = add i64 %2755, 20
  %2757 = add i64 %395, 955
  store i64 %2757, i64* %PC.i, align 8
  %2758 = inttoptr i64 %2756 to i32*
  %2759 = load i32, i32* %2758, align 4
  %2760 = sext i32 %2752 to i64
  %2761 = sext i32 %2759 to i64
  %2762 = mul nsw i64 %2761, %2760
  %2763 = and i64 %2762, 4294967295
  store i64 %2763, i64* %RSI.i2547, align 8
  %2764 = trunc i64 %2762 to i32
  %2765 = add i32 %2764, %2721
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RDX.i2544, align 8
  %2767 = icmp ult i32 %2765, %2721
  %2768 = icmp ult i32 %2765, %2764
  %2769 = or i1 %2767, %2768
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %68, align 1
  %2771 = and i32 %2765, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %74, align 1
  %2776 = xor i64 %2762, %2722
  %2777 = trunc i64 %2776 to i32
  %2778 = xor i32 %2777, %2765
  %2779 = lshr i32 %2778, 4
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %79, align 1
  %2782 = icmp eq i32 %2765, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %82, align 1
  %2784 = lshr i32 %2765, 31
  %2785 = trunc i32 %2784 to i8
  store i8 %2785, i8* %85, align 1
  %2786 = lshr i32 %2764, 31
  %2787 = xor i32 %2784, %2740
  %2788 = xor i32 %2784, %2786
  %2789 = add nuw nsw i32 %2787, %2788
  %2790 = icmp eq i32 %2789, 2
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %91, align 1
  %2792 = load i64, i64* %RBP.i, align 8
  %2793 = add i64 %2792, -60
  %2794 = add i64 %395, 960
  store i64 %2794, i64* %PC.i, align 8
  %2795 = inttoptr i64 %2793 to i32*
  %2796 = load i32, i32* %2795, align 4
  %2797 = add i32 %2796, %2765
  %2798 = zext i32 %2797 to i64
  store i64 %2798, i64* %RDX.i2544, align 8
  %2799 = icmp ult i32 %2797, %2765
  %2800 = icmp ult i32 %2797, %2796
  %2801 = or i1 %2799, %2800
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %68, align 1
  %2803 = and i32 %2797, 255
  %2804 = tail call i32 @llvm.ctpop.i32(i32 %2803)
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = xor i8 %2806, 1
  store i8 %2807, i8* %74, align 1
  %2808 = xor i32 %2796, %2765
  %2809 = xor i32 %2808, %2797
  %2810 = lshr i32 %2809, 4
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  store i8 %2812, i8* %79, align 1
  %2813 = icmp eq i32 %2797, 0
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %82, align 1
  %2815 = lshr i32 %2797, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %85, align 1
  %2817 = lshr i32 %2796, 31
  %2818 = xor i32 %2815, %2784
  %2819 = xor i32 %2815, %2817
  %2820 = add nuw nsw i32 %2818, %2819
  %2821 = icmp eq i32 %2820, 2
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %91, align 1
  %2823 = sext i32 %2797 to i64
  store i64 %2823, i64* %RCX.i2541, align 8
  %2824 = load i64, i64* %RAX.i2556, align 8
  %2825 = shl nsw i64 %2823, 2
  %2826 = add i64 %2825, %2824
  %2827 = add i64 %395, 968
  store i64 %2827, i64* %PC.i, align 8
  %2828 = inttoptr i64 %2826 to i32*
  %2829 = load i32, i32* %2828, align 4
  %2830 = bitcast %union.VectorReg* %198 to i32*
  store i32 %2829, i32* %2830, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %2831 = add i64 %2792, -40
  %2832 = add i64 %395, 972
  store i64 %2832, i64* %PC.i, align 8
  %2833 = inttoptr i64 %2831 to i64*
  %2834 = load i64, i64* %2833, align 8
  store i64 %2834, i64* %RAX.i2556, align 8
  %2835 = add i64 %395, 975
  store i64 %2835, i64* %PC.i, align 8
  %2836 = inttoptr i64 %2834 to i64*
  %2837 = load i64, i64* %2836, align 8
  store i64 %2837, i64* %RAX.i2556, align 8
  %2838 = add i64 %395, 979
  store i64 %2838, i64* %PC.i, align 8
  %2839 = load i64, i64* %2833, align 8
  store i64 %2839, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2840 = add i64 %395, 987
  store i64 %2840, i64* %PC.i, align 8
  %2841 = load i64, i64* %2833, align 8
  store i64 %2841, i64* %RCX.i2541, align 8
  %2842 = add i64 %395, 991
  store i64 %2842, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2843 = add i64 %395, 995
  store i64 %2843, i64* %PC.i, align 8
  %2844 = load i64, i64* %2833, align 8
  store i64 %2844, i64* %RCX.i2541, align 8
  %2845 = add i64 %395, 999
  store i64 %2845, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2846 = load i64, i64* %RBP.i, align 8
  %2847 = add i64 %2846, -52
  %2848 = add i64 %395, 1002
  store i64 %2848, i64* %PC.i, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RSI.i2547, align 8
  %2852 = add i64 %2846, -40
  %2853 = add i64 %395, 1006
  store i64 %2853, i64* %PC.i, align 8
  %2854 = inttoptr i64 %2852 to i64*
  %2855 = load i64, i64* %2854, align 8
  store i64 %2855, i64* %RCX.i2541, align 8
  %2856 = add i64 %2855, 16
  %2857 = add i64 %395, 1010
  store i64 %2857, i64* %PC.i, align 8
  %2858 = inttoptr i64 %2856 to i32*
  %2859 = load i32, i32* %2858, align 4
  %2860 = sext i32 %2850 to i64
  %2861 = sext i32 %2859 to i64
  %2862 = mul nsw i64 %2861, %2860
  %2863 = trunc i64 %2862 to i32
  %2864 = and i64 %2862, 4294967295
  store i64 %2864, i64* %RSI.i2547, align 8
  %2865 = shl i64 %2862, 32
  %2866 = ashr exact i64 %2865, 32
  %2867 = icmp ne i64 %2866, %2862
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %68, align 1
  %2869 = and i32 %2863, 255
  %2870 = tail call i32 @llvm.ctpop.i32(i32 %2869)
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  %2873 = xor i8 %2872, 1
  store i8 %2873, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2874 = lshr i32 %2863, 31
  %2875 = trunc i32 %2874 to i8
  store i8 %2875, i8* %85, align 1
  store i8 %2868, i8* %91, align 1
  %2876 = add i64 %395, 1014
  store i64 %2876, i64* %PC.i, align 8
  %2877 = load i64, i64* %2854, align 8
  store i64 %2877, i64* %RCX.i2541, align 8
  %2878 = add i64 %2877, 20
  %2879 = add i64 %395, 1018
  store i64 %2879, i64* %PC.i, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = shl i64 %2862, 32
  %2883 = ashr exact i64 %2882, 32
  %2884 = sext i32 %2881 to i64
  %2885 = mul nsw i64 %2884, %2883
  %2886 = and i64 %2885, 4294967295
  store i64 %2886, i64* %RSI.i2547, align 8
  %2887 = trunc i64 %2885 to i32
  %2888 = and i64 %2885, 4294967295
  store i64 %2888, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %2889 = and i32 %2887, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %2894 = icmp eq i32 %2887, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %82, align 1
  %2896 = lshr i32 %2887, 31
  %2897 = trunc i32 %2896 to i8
  store i8 %2897, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2898 = add i64 %2846, -56
  %2899 = add i64 %395, 1023
  store i64 %2899, i64* %PC.i, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = add i32 %2901, 1
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RSI.i2547, align 8
  %2904 = icmp eq i32 %2901, -1
  %2905 = icmp eq i32 %2902, 0
  %2906 = or i1 %2904, %2905
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %68, align 1
  %2908 = and i32 %2902, 255
  %2909 = tail call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %74, align 1
  %2913 = xor i32 %2901, %2902
  %2914 = lshr i32 %2913, 4
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  store i8 %2916, i8* %79, align 1
  %2917 = icmp eq i32 %2902, 0
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %82, align 1
  %2919 = lshr i32 %2902, 31
  %2920 = trunc i32 %2919 to i8
  store i8 %2920, i8* %85, align 1
  %2921 = lshr i32 %2901, 31
  %2922 = xor i32 %2919, %2921
  %2923 = add nuw nsw i32 %2922, %2919
  %2924 = icmp eq i32 %2923, 2
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %91, align 1
  %2926 = load i64, i64* %RBP.i, align 8
  %2927 = add i64 %2926, -40
  %2928 = add i64 %395, 1030
  store i64 %2928, i64* %PC.i, align 8
  %2929 = inttoptr i64 %2927 to i64*
  %2930 = load i64, i64* %2929, align 8
  store i64 %2930, i64* %RCX.i2541, align 8
  %2931 = add i64 %2930, 20
  %2932 = add i64 %395, 1034
  store i64 %2932, i64* %PC.i, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = sext i32 %2902 to i64
  %2936 = sext i32 %2934 to i64
  %2937 = mul nsw i64 %2936, %2935
  %2938 = and i64 %2937, 4294967295
  store i64 %2938, i64* %RSI.i2547, align 8
  %2939 = trunc i64 %2937 to i32
  %2940 = add i32 %2939, %2887
  %2941 = zext i32 %2940 to i64
  store i64 %2941, i64* %RDX.i2544, align 8
  %2942 = icmp ult i32 %2940, %2887
  %2943 = icmp ult i32 %2940, %2939
  %2944 = or i1 %2942, %2943
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %68, align 1
  %2946 = and i32 %2940, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %74, align 1
  %2951 = xor i64 %2937, %2885
  %2952 = trunc i64 %2951 to i32
  %2953 = xor i32 %2952, %2940
  %2954 = lshr i32 %2953, 4
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  store i8 %2956, i8* %79, align 1
  %2957 = icmp eq i32 %2940, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %82, align 1
  %2959 = lshr i32 %2940, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %85, align 1
  %2961 = lshr i32 %2939, 31
  %2962 = xor i32 %2959, %2896
  %2963 = xor i32 %2959, %2961
  %2964 = add nuw nsw i32 %2962, %2963
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %91, align 1
  %2967 = add i64 %2926, -60
  %2968 = add i64 %395, 1039
  store i64 %2968, i64* %PC.i, align 8
  %2969 = inttoptr i64 %2967 to i32*
  %2970 = load i32, i32* %2969, align 4
  %2971 = add i32 %2970, 1
  %2972 = zext i32 %2971 to i64
  store i64 %2972, i64* %RSI.i2547, align 8
  %2973 = lshr i32 %2971, 31
  %2974 = add i32 %2971, %2940
  %2975 = zext i32 %2974 to i64
  store i64 %2975, i64* %RDX.i2544, align 8
  %2976 = icmp ult i32 %2974, %2940
  %2977 = icmp ult i32 %2974, %2971
  %2978 = or i1 %2976, %2977
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %68, align 1
  %2980 = and i32 %2974, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  store i8 %2984, i8* %74, align 1
  %2985 = xor i32 %2971, %2940
  %2986 = xor i32 %2985, %2974
  %2987 = lshr i32 %2986, 4
  %2988 = trunc i32 %2987 to i8
  %2989 = and i8 %2988, 1
  store i8 %2989, i8* %79, align 1
  %2990 = icmp eq i32 %2974, 0
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %82, align 1
  %2992 = lshr i32 %2974, 31
  %2993 = trunc i32 %2992 to i8
  store i8 %2993, i8* %85, align 1
  %2994 = xor i32 %2992, %2959
  %2995 = xor i32 %2992, %2973
  %2996 = add nuw nsw i32 %2994, %2995
  %2997 = icmp eq i32 %2996, 2
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %91, align 1
  %2999 = sext i32 %2974 to i64
  store i64 %2999, i64* %RCX.i2541, align 8
  %3000 = load i64, i64* %RAX.i2556, align 8
  %3001 = shl nsw i64 %2999, 2
  %3002 = add i64 %3001, %3000
  %3003 = add i64 %395, 1052
  store i64 %3003, i64* %PC.i, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = bitcast %union.VectorReg* %213 to i32*
  store i32 %3005, i32* %3006, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %221, align 1
  %3007 = load i64, i64* %RBP.i, align 8
  %3008 = add i64 %3007, -40
  %3009 = add i64 %395, 1056
  store i64 %3009, i64* %PC.i, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  store i64 %3011, i64* %RAX.i2556, align 8
  %3012 = add i64 %395, 1059
  store i64 %3012, i64* %PC.i, align 8
  %3013 = inttoptr i64 %3011 to i64*
  %3014 = load i64, i64* %3013, align 8
  store i64 %3014, i64* %RAX.i2556, align 8
  %3015 = add i64 %395, 1063
  store i64 %3015, i64* %PC.i, align 8
  %3016 = load i64, i64* %3010, align 8
  store i64 %3016, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3017 = add i64 %395, 1071
  store i64 %3017, i64* %PC.i, align 8
  %3018 = load i64, i64* %3010, align 8
  store i64 %3018, i64* %RCX.i2541, align 8
  %3019 = add i64 %395, 1075
  store i64 %3019, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3020 = add i64 %395, 1079
  store i64 %3020, i64* %PC.i, align 8
  %3021 = load i64, i64* %3010, align 8
  store i64 %3021, i64* %RCX.i2541, align 8
  %3022 = add i64 %395, 1083
  store i64 %3022, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3023 = add i64 %3007, -52
  %3024 = add i64 %395, 1086
  store i64 %3024, i64* %PC.i, align 8
  %3025 = inttoptr i64 %3023 to i32*
  %3026 = load i32, i32* %3025, align 4
  %3027 = zext i32 %3026 to i64
  store i64 %3027, i64* %RSI.i2547, align 8
  %3028 = add i64 %395, 1090
  store i64 %3028, i64* %PC.i, align 8
  %3029 = load i64, i64* %3010, align 8
  store i64 %3029, i64* %RCX.i2541, align 8
  %3030 = add i64 %3029, 16
  %3031 = add i64 %395, 1094
  store i64 %3031, i64* %PC.i, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = sext i32 %3026 to i64
  %3035 = sext i32 %3033 to i64
  %3036 = mul nsw i64 %3035, %3034
  %3037 = trunc i64 %3036 to i32
  %3038 = and i64 %3036, 4294967295
  store i64 %3038, i64* %RSI.i2547, align 8
  %3039 = shl i64 %3036, 32
  %3040 = ashr exact i64 %3039, 32
  %3041 = icmp ne i64 %3040, %3036
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %68, align 1
  %3043 = and i32 %3037, 255
  %3044 = tail call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  store i8 %3047, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3048 = lshr i32 %3037, 31
  %3049 = trunc i32 %3048 to i8
  store i8 %3049, i8* %85, align 1
  store i8 %3042, i8* %91, align 1
  %3050 = add i64 %395, 1098
  store i64 %3050, i64* %PC.i, align 8
  %3051 = load i64, i64* %3010, align 8
  store i64 %3051, i64* %RCX.i2541, align 8
  %3052 = add i64 %3051, 20
  %3053 = add i64 %395, 1102
  store i64 %3053, i64* %PC.i, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = shl i64 %3036, 32
  %3057 = ashr exact i64 %3056, 32
  %3058 = sext i32 %3055 to i64
  %3059 = mul nsw i64 %3058, %3057
  %3060 = and i64 %3059, 4294967295
  store i64 %3060, i64* %RSI.i2547, align 8
  %3061 = trunc i64 %3059 to i32
  %3062 = and i64 %3059, 4294967295
  store i64 %3062, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3063 = and i32 %3061, 255
  %3064 = tail call i32 @llvm.ctpop.i32(i32 %3063)
  %3065 = trunc i32 %3064 to i8
  %3066 = and i8 %3065, 1
  %3067 = xor i8 %3066, 1
  store i8 %3067, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3068 = icmp eq i32 %3061, 0
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %82, align 1
  %3070 = lshr i32 %3061, 31
  %3071 = trunc i32 %3070 to i8
  store i8 %3071, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3072 = load i64, i64* %RBP.i, align 8
  %3073 = add i64 %3072, -56
  %3074 = add i64 %395, 1107
  store i64 %3074, i64* %PC.i, align 8
  %3075 = inttoptr i64 %3073 to i32*
  %3076 = load i32, i32* %3075, align 4
  %3077 = add i32 %3076, -1
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RSI.i2547, align 8
  %3079 = icmp eq i32 %3076, 0
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %68, align 1
  %3081 = and i32 %3077, 255
  %3082 = tail call i32 @llvm.ctpop.i32(i32 %3081)
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  %3085 = xor i8 %3084, 1
  store i8 %3085, i8* %74, align 1
  %3086 = xor i32 %3076, %3077
  %3087 = lshr i32 %3086, 4
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  store i8 %3089, i8* %79, align 1
  %3090 = icmp eq i32 %3077, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %82, align 1
  %3092 = lshr i32 %3077, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %85, align 1
  %3094 = lshr i32 %3076, 31
  %3095 = xor i32 %3092, %3094
  %3096 = add nuw nsw i32 %3095, %3094
  %3097 = icmp eq i32 %3096, 2
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %91, align 1
  %3099 = add i64 %3072, -40
  %3100 = add i64 %395, 1114
  store i64 %3100, i64* %PC.i, align 8
  %3101 = inttoptr i64 %3099 to i64*
  %3102 = load i64, i64* %3101, align 8
  store i64 %3102, i64* %RCX.i2541, align 8
  %3103 = add i64 %3102, 20
  %3104 = add i64 %395, 1118
  store i64 %3104, i64* %PC.i, align 8
  %3105 = inttoptr i64 %3103 to i32*
  %3106 = load i32, i32* %3105, align 4
  %3107 = sext i32 %3077 to i64
  %3108 = sext i32 %3106 to i64
  %3109 = mul nsw i64 %3108, %3107
  %3110 = and i64 %3109, 4294967295
  store i64 %3110, i64* %RSI.i2547, align 8
  %3111 = trunc i64 %3109 to i32
  %3112 = add i32 %3111, %3061
  %3113 = zext i32 %3112 to i64
  store i64 %3113, i64* %RDX.i2544, align 8
  %3114 = icmp ult i32 %3112, %3061
  %3115 = icmp ult i32 %3112, %3111
  %3116 = or i1 %3114, %3115
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %68, align 1
  %3118 = and i32 %3112, 255
  %3119 = tail call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  store i8 %3122, i8* %74, align 1
  %3123 = xor i64 %3109, %3059
  %3124 = trunc i64 %3123 to i32
  %3125 = xor i32 %3124, %3112
  %3126 = lshr i32 %3125, 4
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  store i8 %3128, i8* %79, align 1
  %3129 = icmp eq i32 %3112, 0
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %82, align 1
  %3131 = lshr i32 %3112, 31
  %3132 = trunc i32 %3131 to i8
  store i8 %3132, i8* %85, align 1
  %3133 = lshr i32 %3111, 31
  %3134 = xor i32 %3131, %3070
  %3135 = xor i32 %3131, %3133
  %3136 = add nuw nsw i32 %3134, %3135
  %3137 = icmp eq i32 %3136, 2
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %91, align 1
  %3139 = load i64, i64* %RBP.i, align 8
  %3140 = add i64 %3139, -60
  %3141 = add i64 %395, 1123
  store i64 %3141, i64* %PC.i, align 8
  %3142 = inttoptr i64 %3140 to i32*
  %3143 = load i32, i32* %3142, align 4
  %3144 = add i32 %3143, 1
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %RSI.i2547, align 8
  %3146 = lshr i32 %3144, 31
  %3147 = add i32 %3144, %3112
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RDX.i2544, align 8
  %3149 = icmp ult i32 %3147, %3112
  %3150 = icmp ult i32 %3147, %3144
  %3151 = or i1 %3149, %3150
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %68, align 1
  %3153 = and i32 %3147, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153)
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %74, align 1
  %3158 = xor i32 %3144, %3112
  %3159 = xor i32 %3158, %3147
  %3160 = lshr i32 %3159, 4
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  store i8 %3162, i8* %79, align 1
  %3163 = icmp eq i32 %3147, 0
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %82, align 1
  %3165 = lshr i32 %3147, 31
  %3166 = trunc i32 %3165 to i8
  store i8 %3166, i8* %85, align 1
  %3167 = xor i32 %3165, %3131
  %3168 = xor i32 %3165, %3146
  %3169 = add nuw nsw i32 %3167, %3168
  %3170 = icmp eq i32 %3169, 2
  %3171 = zext i1 %3170 to i8
  store i8 %3171, i8* %91, align 1
  %3172 = sext i32 %3147 to i64
  store i64 %3172, i64* %RCX.i2541, align 8
  %3173 = load i64, i64* %RAX.i2556, align 8
  %3174 = shl nsw i64 %3172, 2
  %3175 = add i64 %3174, %3173
  %3176 = add i64 %395, 1136
  store i64 %3176, i64* %PC.i, align 8
  %3177 = load <2 x float>, <2 x float>* %222, align 1
  %3178 = load <2 x i32>, <2 x i32>* %223, align 1
  %3179 = inttoptr i64 %3175 to float*
  %3180 = load float, float* %3179, align 4
  %3181 = extractelement <2 x float> %3177, i32 0
  %3182 = fsub float %3181, %3180
  store float %3182, float* %215, align 1
  %3183 = bitcast <2 x float> %3177 to <2 x i32>
  %3184 = extractelement <2 x i32> %3183, i32 1
  store i32 %3184, i32* %224, align 1
  %3185 = extractelement <2 x i32> %3178, i32 0
  store i32 %3185, i32* %225, align 1
  %3186 = extractelement <2 x i32> %3178, i32 1
  store i32 %3186, i32* %226, align 1
  %3187 = load i64, i64* %RBP.i, align 8
  %3188 = add i64 %3187, -40
  %3189 = add i64 %395, 1140
  store i64 %3189, i64* %PC.i, align 8
  %3190 = inttoptr i64 %3188 to i64*
  %3191 = load i64, i64* %3190, align 8
  store i64 %3191, i64* %RAX.i2556, align 8
  %3192 = add i64 %395, 1143
  store i64 %3192, i64* %PC.i, align 8
  %3193 = inttoptr i64 %3191 to i64*
  %3194 = load i64, i64* %3193, align 8
  store i64 %3194, i64* %RAX.i2556, align 8
  %3195 = add i64 %395, 1147
  store i64 %3195, i64* %PC.i, align 8
  %3196 = load i64, i64* %3190, align 8
  store i64 %3196, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3197 = add i64 %395, 1155
  store i64 %3197, i64* %PC.i, align 8
  %3198 = load i64, i64* %3190, align 8
  store i64 %3198, i64* %RCX.i2541, align 8
  %3199 = add i64 %395, 1159
  store i64 %3199, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3200 = add i64 %395, 1163
  store i64 %3200, i64* %PC.i, align 8
  %3201 = load i64, i64* %3190, align 8
  store i64 %3201, i64* %RCX.i2541, align 8
  %3202 = add i64 %395, 1167
  store i64 %3202, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3203 = add i64 %3187, -52
  %3204 = add i64 %395, 1170
  store i64 %3204, i64* %PC.i, align 8
  %3205 = inttoptr i64 %3203 to i32*
  %3206 = load i32, i32* %3205, align 4
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RSI.i2547, align 8
  %3208 = add i64 %395, 1174
  store i64 %3208, i64* %PC.i, align 8
  %3209 = load i64, i64* %3190, align 8
  store i64 %3209, i64* %RCX.i2541, align 8
  %3210 = add i64 %3209, 16
  %3211 = add i64 %395, 1178
  store i64 %3211, i64* %PC.i, align 8
  %3212 = inttoptr i64 %3210 to i32*
  %3213 = load i32, i32* %3212, align 4
  %3214 = sext i32 %3206 to i64
  %3215 = sext i32 %3213 to i64
  %3216 = mul nsw i64 %3215, %3214
  %3217 = trunc i64 %3216 to i32
  %3218 = and i64 %3216, 4294967295
  store i64 %3218, i64* %RSI.i2547, align 8
  %3219 = shl i64 %3216, 32
  %3220 = ashr exact i64 %3219, 32
  %3221 = icmp ne i64 %3220, %3216
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %68, align 1
  %3223 = and i32 %3217, 255
  %3224 = tail call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  store i8 %3227, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3228 = lshr i32 %3217, 31
  %3229 = trunc i32 %3228 to i8
  store i8 %3229, i8* %85, align 1
  store i8 %3222, i8* %91, align 1
  %3230 = add i64 %395, 1182
  store i64 %3230, i64* %PC.i, align 8
  %3231 = load i64, i64* %3190, align 8
  store i64 %3231, i64* %RCX.i2541, align 8
  %3232 = add i64 %3231, 20
  %3233 = add i64 %395, 1186
  store i64 %3233, i64* %PC.i, align 8
  %3234 = inttoptr i64 %3232 to i32*
  %3235 = load i32, i32* %3234, align 4
  %3236 = shl i64 %3216, 32
  %3237 = ashr exact i64 %3236, 32
  %3238 = sext i32 %3235 to i64
  %3239 = mul nsw i64 %3238, %3237
  %3240 = and i64 %3239, 4294967295
  store i64 %3240, i64* %RSI.i2547, align 8
  %3241 = trunc i64 %3239 to i32
  %3242 = and i64 %3239, 4294967295
  store i64 %3242, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3243 = and i32 %3241, 255
  %3244 = tail call i32 @llvm.ctpop.i32(i32 %3243)
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = xor i8 %3246, 1
  store i8 %3247, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3248 = icmp eq i32 %3241, 0
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %82, align 1
  %3250 = lshr i32 %3241, 31
  %3251 = trunc i32 %3250 to i8
  store i8 %3251, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3252 = load i64, i64* %RBP.i, align 8
  %3253 = add i64 %3252, -56
  %3254 = add i64 %395, 1191
  store i64 %3254, i64* %PC.i, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = add i32 %3256, 1
  %3258 = zext i32 %3257 to i64
  store i64 %3258, i64* %RSI.i2547, align 8
  %3259 = icmp eq i32 %3256, -1
  %3260 = icmp eq i32 %3257, 0
  %3261 = or i1 %3259, %3260
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %68, align 1
  %3263 = and i32 %3257, 255
  %3264 = tail call i32 @llvm.ctpop.i32(i32 %3263)
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = xor i8 %3266, 1
  store i8 %3267, i8* %74, align 1
  %3268 = xor i32 %3256, %3257
  %3269 = lshr i32 %3268, 4
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  store i8 %3271, i8* %79, align 1
  %3272 = icmp eq i32 %3257, 0
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %82, align 1
  %3274 = lshr i32 %3257, 31
  %3275 = trunc i32 %3274 to i8
  store i8 %3275, i8* %85, align 1
  %3276 = lshr i32 %3256, 31
  %3277 = xor i32 %3274, %3276
  %3278 = add nuw nsw i32 %3277, %3274
  %3279 = icmp eq i32 %3278, 2
  %3280 = zext i1 %3279 to i8
  store i8 %3280, i8* %91, align 1
  %3281 = add i64 %3252, -40
  %3282 = add i64 %395, 1198
  store i64 %3282, i64* %PC.i, align 8
  %3283 = inttoptr i64 %3281 to i64*
  %3284 = load i64, i64* %3283, align 8
  store i64 %3284, i64* %RCX.i2541, align 8
  %3285 = add i64 %3284, 20
  %3286 = add i64 %395, 1202
  store i64 %3286, i64* %PC.i, align 8
  %3287 = inttoptr i64 %3285 to i32*
  %3288 = load i32, i32* %3287, align 4
  %3289 = sext i32 %3257 to i64
  %3290 = sext i32 %3288 to i64
  %3291 = mul nsw i64 %3290, %3289
  %3292 = and i64 %3291, 4294967295
  store i64 %3292, i64* %RSI.i2547, align 8
  %3293 = trunc i64 %3291 to i32
  %3294 = add i32 %3293, %3241
  %3295 = zext i32 %3294 to i64
  store i64 %3295, i64* %RDX.i2544, align 8
  %3296 = icmp ult i32 %3294, %3241
  %3297 = icmp ult i32 %3294, %3293
  %3298 = or i1 %3296, %3297
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %68, align 1
  %3300 = and i32 %3294, 255
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %74, align 1
  %3305 = xor i64 %3291, %3239
  %3306 = trunc i64 %3305 to i32
  %3307 = xor i32 %3306, %3294
  %3308 = lshr i32 %3307, 4
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  store i8 %3310, i8* %79, align 1
  %3311 = icmp eq i32 %3294, 0
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %82, align 1
  %3313 = lshr i32 %3294, 31
  %3314 = trunc i32 %3313 to i8
  store i8 %3314, i8* %85, align 1
  %3315 = lshr i32 %3293, 31
  %3316 = xor i32 %3313, %3250
  %3317 = xor i32 %3313, %3315
  %3318 = add nuw nsw i32 %3316, %3317
  %3319 = icmp eq i32 %3318, 2
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %91, align 1
  %3321 = load i64, i64* %RBP.i, align 8
  %3322 = add i64 %3321, -60
  %3323 = add i64 %395, 1207
  store i64 %3323, i64* %PC.i, align 8
  %3324 = inttoptr i64 %3322 to i32*
  %3325 = load i32, i32* %3324, align 4
  %3326 = add i32 %3325, -1
  %3327 = zext i32 %3326 to i64
  store i64 %3327, i64* %RSI.i2547, align 8
  %3328 = lshr i32 %3326, 31
  %3329 = add i32 %3326, %3294
  %3330 = zext i32 %3329 to i64
  store i64 %3330, i64* %RDX.i2544, align 8
  %3331 = icmp ult i32 %3329, %3294
  %3332 = icmp ult i32 %3329, %3326
  %3333 = or i1 %3331, %3332
  %3334 = zext i1 %3333 to i8
  store i8 %3334, i8* %68, align 1
  %3335 = and i32 %3329, 255
  %3336 = tail call i32 @llvm.ctpop.i32(i32 %3335)
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = xor i8 %3338, 1
  store i8 %3339, i8* %74, align 1
  %3340 = xor i32 %3326, %3294
  %3341 = xor i32 %3340, %3329
  %3342 = lshr i32 %3341, 4
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  store i8 %3344, i8* %79, align 1
  %3345 = icmp eq i32 %3329, 0
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %82, align 1
  %3347 = lshr i32 %3329, 31
  %3348 = trunc i32 %3347 to i8
  store i8 %3348, i8* %85, align 1
  %3349 = xor i32 %3347, %3313
  %3350 = xor i32 %3347, %3328
  %3351 = add nuw nsw i32 %3349, %3350
  %3352 = icmp eq i32 %3351, 2
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %91, align 1
  %3354 = sext i32 %3329 to i64
  store i64 %3354, i64* %RCX.i2541, align 8
  %3355 = load i64, i64* %RAX.i2556, align 8
  %3356 = shl nsw i64 %3354, 2
  %3357 = add i64 %3356, %3355
  %3358 = add i64 %395, 1220
  store i64 %3358, i64* %PC.i, align 8
  %3359 = load <2 x float>, <2 x float>* %222, align 1
  %3360 = load <2 x i32>, <2 x i32>* %223, align 1
  %3361 = inttoptr i64 %3357 to float*
  %3362 = load float, float* %3361, align 4
  %3363 = extractelement <2 x float> %3359, i32 0
  %3364 = fsub float %3363, %3362
  store float %3364, float* %215, align 1
  %3365 = bitcast <2 x float> %3359 to <2 x i32>
  %3366 = extractelement <2 x i32> %3365, i32 1
  store i32 %3366, i32* %224, align 1
  %3367 = extractelement <2 x i32> %3360, i32 0
  store i32 %3367, i32* %225, align 1
  %3368 = extractelement <2 x i32> %3360, i32 1
  store i32 %3368, i32* %226, align 1
  %3369 = load i64, i64* %RBP.i, align 8
  %3370 = add i64 %3369, -40
  %3371 = add i64 %395, 1224
  store i64 %3371, i64* %PC.i, align 8
  %3372 = inttoptr i64 %3370 to i64*
  %3373 = load i64, i64* %3372, align 8
  store i64 %3373, i64* %RAX.i2556, align 8
  %3374 = add i64 %395, 1227
  store i64 %3374, i64* %PC.i, align 8
  %3375 = inttoptr i64 %3373 to i64*
  %3376 = load i64, i64* %3375, align 8
  store i64 %3376, i64* %RAX.i2556, align 8
  %3377 = add i64 %395, 1231
  store i64 %3377, i64* %PC.i, align 8
  %3378 = load i64, i64* %3372, align 8
  store i64 %3378, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3379 = add i64 %395, 1239
  store i64 %3379, i64* %PC.i, align 8
  %3380 = load i64, i64* %3372, align 8
  store i64 %3380, i64* %RCX.i2541, align 8
  %3381 = add i64 %395, 1243
  store i64 %3381, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3382 = add i64 %395, 1247
  store i64 %3382, i64* %PC.i, align 8
  %3383 = load i64, i64* %3372, align 8
  store i64 %3383, i64* %RCX.i2541, align 8
  %3384 = add i64 %395, 1251
  store i64 %3384, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3385 = add i64 %3369, -52
  %3386 = add i64 %395, 1254
  store i64 %3386, i64* %PC.i, align 8
  %3387 = inttoptr i64 %3385 to i32*
  %3388 = load i32, i32* %3387, align 4
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RSI.i2547, align 8
  %3390 = add i64 %395, 1258
  store i64 %3390, i64* %PC.i, align 8
  %3391 = load i64, i64* %3372, align 8
  store i64 %3391, i64* %RCX.i2541, align 8
  %3392 = add i64 %3391, 16
  %3393 = add i64 %395, 1262
  store i64 %3393, i64* %PC.i, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = sext i32 %3388 to i64
  %3397 = sext i32 %3395 to i64
  %3398 = mul nsw i64 %3397, %3396
  %3399 = trunc i64 %3398 to i32
  %3400 = and i64 %3398, 4294967295
  store i64 %3400, i64* %RSI.i2547, align 8
  %3401 = shl i64 %3398, 32
  %3402 = ashr exact i64 %3401, 32
  %3403 = icmp ne i64 %3402, %3398
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %68, align 1
  %3405 = and i32 %3399, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3410 = lshr i32 %3399, 31
  %3411 = trunc i32 %3410 to i8
  store i8 %3411, i8* %85, align 1
  store i8 %3404, i8* %91, align 1
  %3412 = add i64 %395, 1266
  store i64 %3412, i64* %PC.i, align 8
  %3413 = load i64, i64* %3372, align 8
  store i64 %3413, i64* %RCX.i2541, align 8
  %3414 = add i64 %3413, 20
  %3415 = add i64 %395, 1270
  store i64 %3415, i64* %PC.i, align 8
  %3416 = inttoptr i64 %3414 to i32*
  %3417 = load i32, i32* %3416, align 4
  %3418 = shl i64 %3398, 32
  %3419 = ashr exact i64 %3418, 32
  %3420 = sext i32 %3417 to i64
  %3421 = mul nsw i64 %3420, %3419
  %3422 = and i64 %3421, 4294967295
  store i64 %3422, i64* %RSI.i2547, align 8
  %3423 = trunc i64 %3421 to i32
  %3424 = and i64 %3421, 4294967295
  store i64 %3424, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3425 = and i32 %3423, 255
  %3426 = tail call i32 @llvm.ctpop.i32(i32 %3425)
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = xor i8 %3428, 1
  store i8 %3429, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3430 = icmp eq i32 %3423, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %82, align 1
  %3432 = lshr i32 %3423, 31
  %3433 = trunc i32 %3432 to i8
  store i8 %3433, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3434 = load i64, i64* %RBP.i, align 8
  %3435 = add i64 %3434, -56
  %3436 = add i64 %395, 1275
  store i64 %3436, i64* %PC.i, align 8
  %3437 = inttoptr i64 %3435 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = add i32 %3438, -1
  %3440 = zext i32 %3439 to i64
  store i64 %3440, i64* %RSI.i2547, align 8
  %3441 = icmp eq i32 %3438, 0
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %68, align 1
  %3443 = and i32 %3439, 255
  %3444 = tail call i32 @llvm.ctpop.i32(i32 %3443)
  %3445 = trunc i32 %3444 to i8
  %3446 = and i8 %3445, 1
  %3447 = xor i8 %3446, 1
  store i8 %3447, i8* %74, align 1
  %3448 = xor i32 %3438, %3439
  %3449 = lshr i32 %3448, 4
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  store i8 %3451, i8* %79, align 1
  %3452 = icmp eq i32 %3439, 0
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %82, align 1
  %3454 = lshr i32 %3439, 31
  %3455 = trunc i32 %3454 to i8
  store i8 %3455, i8* %85, align 1
  %3456 = lshr i32 %3438, 31
  %3457 = xor i32 %3454, %3456
  %3458 = add nuw nsw i32 %3457, %3456
  %3459 = icmp eq i32 %3458, 2
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %91, align 1
  %3461 = add i64 %3434, -40
  %3462 = add i64 %395, 1282
  store i64 %3462, i64* %PC.i, align 8
  %3463 = inttoptr i64 %3461 to i64*
  %3464 = load i64, i64* %3463, align 8
  store i64 %3464, i64* %RCX.i2541, align 8
  %3465 = add i64 %3464, 20
  %3466 = add i64 %395, 1286
  store i64 %3466, i64* %PC.i, align 8
  %3467 = inttoptr i64 %3465 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = sext i32 %3439 to i64
  %3470 = sext i32 %3468 to i64
  %3471 = mul nsw i64 %3470, %3469
  %3472 = and i64 %3471, 4294967295
  store i64 %3472, i64* %RSI.i2547, align 8
  %3473 = trunc i64 %3471 to i32
  %3474 = add i32 %3473, %3423
  %3475 = zext i32 %3474 to i64
  store i64 %3475, i64* %RDX.i2544, align 8
  %3476 = icmp ult i32 %3474, %3423
  %3477 = icmp ult i32 %3474, %3473
  %3478 = or i1 %3476, %3477
  %3479 = zext i1 %3478 to i8
  store i8 %3479, i8* %68, align 1
  %3480 = and i32 %3474, 255
  %3481 = tail call i32 @llvm.ctpop.i32(i32 %3480)
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  %3484 = xor i8 %3483, 1
  store i8 %3484, i8* %74, align 1
  %3485 = xor i64 %3471, %3421
  %3486 = trunc i64 %3485 to i32
  %3487 = xor i32 %3486, %3474
  %3488 = lshr i32 %3487, 4
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  store i8 %3490, i8* %79, align 1
  %3491 = icmp eq i32 %3474, 0
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %82, align 1
  %3493 = lshr i32 %3474, 31
  %3494 = trunc i32 %3493 to i8
  store i8 %3494, i8* %85, align 1
  %3495 = lshr i32 %3473, 31
  %3496 = xor i32 %3493, %3432
  %3497 = xor i32 %3493, %3495
  %3498 = add nuw nsw i32 %3496, %3497
  %3499 = icmp eq i32 %3498, 2
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %91, align 1
  %3501 = load i64, i64* %RBP.i, align 8
  %3502 = add i64 %3501, -60
  %3503 = add i64 %395, 1291
  store i64 %3503, i64* %PC.i, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = add i32 %3505, -1
  %3507 = zext i32 %3506 to i64
  store i64 %3507, i64* %RSI.i2547, align 8
  %3508 = lshr i32 %3506, 31
  %3509 = add i32 %3506, %3474
  %3510 = zext i32 %3509 to i64
  store i64 %3510, i64* %RDX.i2544, align 8
  %3511 = icmp ult i32 %3509, %3474
  %3512 = icmp ult i32 %3509, %3506
  %3513 = or i1 %3511, %3512
  %3514 = zext i1 %3513 to i8
  store i8 %3514, i8* %68, align 1
  %3515 = and i32 %3509, 255
  %3516 = tail call i32 @llvm.ctpop.i32(i32 %3515)
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  %3519 = xor i8 %3518, 1
  store i8 %3519, i8* %74, align 1
  %3520 = xor i32 %3506, %3474
  %3521 = xor i32 %3520, %3509
  %3522 = lshr i32 %3521, 4
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  store i8 %3524, i8* %79, align 1
  %3525 = icmp eq i32 %3509, 0
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %82, align 1
  %3527 = lshr i32 %3509, 31
  %3528 = trunc i32 %3527 to i8
  store i8 %3528, i8* %85, align 1
  %3529 = xor i32 %3527, %3493
  %3530 = xor i32 %3527, %3508
  %3531 = add nuw nsw i32 %3529, %3530
  %3532 = icmp eq i32 %3531, 2
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %91, align 1
  %3534 = sext i32 %3509 to i64
  store i64 %3534, i64* %RCX.i2541, align 8
  %3535 = load i64, i64* %RAX.i2556, align 8
  %3536 = shl nsw i64 %3534, 2
  %3537 = add i64 %3536, %3535
  %3538 = add i64 %395, 1304
  store i64 %3538, i64* %PC.i, align 8
  %3539 = load <2 x float>, <2 x float>* %222, align 1
  %3540 = load <2 x i32>, <2 x i32>* %223, align 1
  %3541 = inttoptr i64 %3537 to float*
  %3542 = load float, float* %3541, align 4
  %3543 = extractelement <2 x float> %3539, i32 0
  %3544 = fadd float %3543, %3542
  store float %3544, float* %215, align 1
  %3545 = bitcast <2 x float> %3539 to <2 x i32>
  %3546 = extractelement <2 x i32> %3545, i32 1
  store i32 %3546, i32* %224, align 1
  %3547 = extractelement <2 x i32> %3540, i32 0
  store i32 %3547, i32* %225, align 1
  %3548 = extractelement <2 x i32> %3540, i32 1
  store i32 %3548, i32* %226, align 1
  %3549 = load <2 x float>, <2 x float>* %207, align 1
  %3550 = load <2 x i32>, <2 x i32>* %208, align 1
  %3551 = load <2 x float>, <2 x float>* %227, align 1
  %3552 = extractelement <2 x float> %3549, i32 0
  %3553 = extractelement <2 x float> %3551, i32 0
  %3554 = fmul float %3552, %3553
  store float %3554, float* %200, align 1
  %3555 = bitcast <2 x float> %3549 to <2 x i32>
  %3556 = extractelement <2 x i32> %3555, i32 1
  store i32 %3556, i32* %209, align 1
  %3557 = extractelement <2 x i32> %3550, i32 0
  store i32 %3557, i32* %210, align 1
  %3558 = extractelement <2 x i32> %3550, i32 1
  store i32 %3558, i32* %211, align 1
  %3559 = load <2 x float>, <2 x float>* %196, align 1
  %3560 = load <2 x i32>, <2 x i32>* %197, align 1
  %3561 = load <2 x float>, <2 x float>* %212, align 1
  %3562 = extractelement <2 x float> %3559, i32 0
  %3563 = extractelement <2 x float> %3561, i32 0
  %3564 = fadd float %3562, %3563
  store float %3564, float* %192, align 1
  %3565 = bitcast <2 x float> %3559 to <2 x i32>
  %3566 = extractelement <2 x i32> %3565, i32 1
  store i32 %3566, i32* %187, align 1
  %3567 = extractelement <2 x i32> %3560, i32 0
  store i32 %3567, i32* %188, align 1
  %3568 = extractelement <2 x i32> %3560, i32 1
  store i32 %3568, i32* %190, align 1
  %3569 = load i64, i64* %RBP.i, align 8
  %3570 = add i64 %3569, -24
  %3571 = add i64 %395, 1316
  store i64 %3571, i64* %PC.i, align 8
  %3572 = inttoptr i64 %3570 to i64*
  %3573 = load i64, i64* %3572, align 8
  store i64 %3573, i64* %RAX.i2556, align 8
  %3574 = add i64 %395, 1319
  store i64 %3574, i64* %PC.i, align 8
  %3575 = inttoptr i64 %3573 to i64*
  %3576 = load i64, i64* %3575, align 8
  store i64 %3576, i64* %RAX.i2556, align 8
  %3577 = add i64 %395, 1323
  store i64 %3577, i64* %PC.i, align 8
  %3578 = load i64, i64* %3572, align 8
  store i64 %3578, i64* %RCX.i2541, align 8
  %3579 = add i64 %3578, 12
  %3580 = add i64 %395, 1326
  store i64 %3580, i64* %PC.i, align 8
  %3581 = inttoptr i64 %3579 to i32*
  %3582 = load i32, i32* %3581, align 4
  %3583 = shl i32 %3582, 1
  %3584 = icmp slt i32 %3582, 0
  %3585 = icmp slt i32 %3583, 0
  %3586 = xor i1 %3584, %3585
  %3587 = zext i32 %3583 to i64
  store i64 %3587, i64* %RDX.i2544, align 8
  %.lobit10 = lshr i32 %3582, 31
  %3588 = trunc i32 %.lobit10 to i8
  store i8 %3588, i8* %68, align 1
  %3589 = and i32 %3583, 254
  %3590 = tail call i32 @llvm.ctpop.i32(i32 %3589)
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  %3593 = xor i8 %3592, 1
  store i8 %3593, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3594 = icmp eq i32 %3583, 0
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %82, align 1
  %3596 = lshr i32 %3582, 30
  %3597 = trunc i32 %3596 to i8
  %3598 = and i8 %3597, 1
  store i8 %3598, i8* %85, align 1
  %3599 = zext i1 %3586 to i8
  store i8 %3599, i8* %91, align 1
  %3600 = add i64 %395, 1332
  store i64 %3600, i64* %PC.i, align 8
  %3601 = load i64, i64* %3572, align 8
  store i64 %3601, i64* %RCX.i2541, align 8
  %3602 = add i64 %3601, 16
  %3603 = add i64 %395, 1336
  store i64 %3603, i64* %PC.i, align 8
  %3604 = inttoptr i64 %3602 to i32*
  %3605 = load i32, i32* %3604, align 4
  %3606 = sext i32 %3583 to i64
  %3607 = sext i32 %3605 to i64
  %3608 = mul nsw i64 %3607, %3606
  %3609 = trunc i64 %3608 to i32
  %3610 = and i64 %3608, 4294967294
  store i64 %3610, i64* %RDX.i2544, align 8
  %3611 = shl i64 %3608, 32
  %3612 = ashr exact i64 %3611, 32
  %3613 = icmp ne i64 %3612, %3608
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %68, align 1
  %3615 = and i32 %3609, 254
  %3616 = tail call i32 @llvm.ctpop.i32(i32 %3615)
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = xor i8 %3618, 1
  store i8 %3619, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3620 = lshr i32 %3609, 31
  %3621 = trunc i32 %3620 to i8
  store i8 %3621, i8* %85, align 1
  store i8 %3614, i8* %91, align 1
  %3622 = add i64 %395, 1340
  store i64 %3622, i64* %PC.i, align 8
  %3623 = load i64, i64* %3572, align 8
  store i64 %3623, i64* %RCX.i2541, align 8
  %3624 = add i64 %3623, 20
  %3625 = add i64 %395, 1344
  store i64 %3625, i64* %PC.i, align 8
  %3626 = inttoptr i64 %3624 to i32*
  %3627 = load i32, i32* %3626, align 4
  %3628 = shl i64 %3608, 32
  %3629 = ashr exact i64 %3628, 32
  %3630 = sext i32 %3627 to i64
  %3631 = mul nsw i64 %3630, %3629
  %3632 = trunc i64 %3631 to i32
  %3633 = and i64 %3631, 4294967295
  store i64 %3633, i64* %RDX.i2544, align 8
  %3634 = shl i64 %3631, 32
  %3635 = ashr exact i64 %3634, 32
  %3636 = icmp ne i64 %3635, %3631
  %3637 = zext i1 %3636 to i8
  store i8 %3637, i8* %68, align 1
  %3638 = and i32 %3632, 255
  %3639 = tail call i32 @llvm.ctpop.i32(i32 %3638)
  %3640 = trunc i32 %3639 to i8
  %3641 = and i8 %3640, 1
  %3642 = xor i8 %3641, 1
  store i8 %3642, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3643 = lshr i32 %3632, 31
  %3644 = trunc i32 %3643 to i8
  store i8 %3644, i8* %85, align 1
  store i8 %3637, i8* %91, align 1
  %3645 = load i64, i64* %RBP.i, align 8
  %3646 = add i64 %3645, -52
  %3647 = add i64 %395, 1347
  store i64 %3647, i64* %PC.i, align 8
  %3648 = inttoptr i64 %3646 to i32*
  %3649 = load i32, i32* %3648, align 4
  %3650 = zext i32 %3649 to i64
  store i64 %3650, i64* %RSI.i2547, align 8
  %3651 = add i64 %3645, -24
  %3652 = add i64 %395, 1351
  store i64 %3652, i64* %PC.i, align 8
  %3653 = inttoptr i64 %3651 to i64*
  %3654 = load i64, i64* %3653, align 8
  store i64 %3654, i64* %RCX.i2541, align 8
  %3655 = add i64 %3654, 16
  %3656 = add i64 %395, 1355
  store i64 %3656, i64* %PC.i, align 8
  %3657 = inttoptr i64 %3655 to i32*
  %3658 = load i32, i32* %3657, align 4
  %3659 = sext i32 %3649 to i64
  %3660 = sext i32 %3658 to i64
  %3661 = mul nsw i64 %3660, %3659
  %3662 = trunc i64 %3661 to i32
  %3663 = and i64 %3661, 4294967295
  store i64 %3663, i64* %RSI.i2547, align 8
  %3664 = shl i64 %3661, 32
  %3665 = ashr exact i64 %3664, 32
  %3666 = icmp ne i64 %3665, %3661
  %3667 = zext i1 %3666 to i8
  store i8 %3667, i8* %68, align 1
  %3668 = and i32 %3662, 255
  %3669 = tail call i32 @llvm.ctpop.i32(i32 %3668)
  %3670 = trunc i32 %3669 to i8
  %3671 = and i8 %3670, 1
  %3672 = xor i8 %3671, 1
  store i8 %3672, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3673 = lshr i32 %3662, 31
  %3674 = trunc i32 %3673 to i8
  store i8 %3674, i8* %85, align 1
  store i8 %3667, i8* %91, align 1
  %3675 = add i64 %395, 1359
  store i64 %3675, i64* %PC.i, align 8
  %3676 = load i64, i64* %3653, align 8
  store i64 %3676, i64* %RCX.i2541, align 8
  %3677 = add i64 %3676, 20
  %3678 = add i64 %395, 1363
  store i64 %3678, i64* %PC.i, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = shl i64 %3661, 32
  %3682 = ashr exact i64 %3681, 32
  %3683 = sext i32 %3680 to i64
  %3684 = mul nsw i64 %3683, %3682
  %3685 = and i64 %3684, 4294967295
  store i64 %3685, i64* %RSI.i2547, align 8
  %3686 = trunc i64 %3684 to i32
  %3687 = trunc i64 %3631 to i32
  %3688 = add i32 %3686, %3687
  %3689 = zext i32 %3688 to i64
  store i64 %3689, i64* %RDX.i2544, align 8
  %3690 = icmp ult i32 %3688, %3687
  %3691 = icmp ult i32 %3688, %3686
  %3692 = or i1 %3690, %3691
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %68, align 1
  %3694 = and i32 %3688, 255
  %3695 = tail call i32 @llvm.ctpop.i32(i32 %3694)
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = xor i8 %3697, 1
  store i8 %3698, i8* %74, align 1
  %3699 = xor i64 %3684, %3631
  %3700 = trunc i64 %3699 to i32
  %3701 = xor i32 %3700, %3688
  %3702 = lshr i32 %3701, 4
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  store i8 %3704, i8* %79, align 1
  %3705 = icmp eq i32 %3688, 0
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %82, align 1
  %3707 = lshr i32 %3688, 31
  %3708 = trunc i32 %3707 to i8
  store i8 %3708, i8* %85, align 1
  %3709 = lshr i32 %3687, 31
  %3710 = lshr i32 %3686, 31
  %3711 = xor i32 %3707, %3709
  %3712 = xor i32 %3707, %3710
  %3713 = add nuw nsw i32 %3711, %3712
  %3714 = icmp eq i32 %3713, 2
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %91, align 1
  %3716 = load i64, i64* %RBP.i, align 8
  %3717 = add i64 %3716, -56
  %3718 = add i64 %395, 1368
  store i64 %3718, i64* %PC.i, align 8
  %3719 = inttoptr i64 %3717 to i32*
  %3720 = load i32, i32* %3719, align 4
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RSI.i2547, align 8
  %3722 = add i64 %3716, -24
  %3723 = add i64 %395, 1372
  store i64 %3723, i64* %PC.i, align 8
  %3724 = inttoptr i64 %3722 to i64*
  %3725 = load i64, i64* %3724, align 8
  store i64 %3725, i64* %RCX.i2541, align 8
  %3726 = add i64 %3725, 20
  %3727 = add i64 %395, 1376
  store i64 %3727, i64* %PC.i, align 8
  %3728 = inttoptr i64 %3726 to i32*
  %3729 = load i32, i32* %3728, align 4
  %3730 = sext i32 %3720 to i64
  %3731 = sext i32 %3729 to i64
  %3732 = mul nsw i64 %3731, %3730
  %3733 = and i64 %3732, 4294967295
  store i64 %3733, i64* %RSI.i2547, align 8
  %3734 = trunc i64 %3732 to i32
  %3735 = add i32 %3734, %3688
  %3736 = zext i32 %3735 to i64
  store i64 %3736, i64* %RDX.i2544, align 8
  %3737 = icmp ult i32 %3735, %3688
  %3738 = icmp ult i32 %3735, %3734
  %3739 = or i1 %3737, %3738
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %68, align 1
  %3741 = and i32 %3735, 255
  %3742 = tail call i32 @llvm.ctpop.i32(i32 %3741)
  %3743 = trunc i32 %3742 to i8
  %3744 = and i8 %3743, 1
  %3745 = xor i8 %3744, 1
  store i8 %3745, i8* %74, align 1
  %3746 = xor i64 %3732, %3689
  %3747 = trunc i64 %3746 to i32
  %3748 = xor i32 %3747, %3735
  %3749 = lshr i32 %3748, 4
  %3750 = trunc i32 %3749 to i8
  %3751 = and i8 %3750, 1
  store i8 %3751, i8* %79, align 1
  %3752 = icmp eq i32 %3735, 0
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %82, align 1
  %3754 = lshr i32 %3735, 31
  %3755 = trunc i32 %3754 to i8
  store i8 %3755, i8* %85, align 1
  %3756 = lshr i32 %3734, 31
  %3757 = xor i32 %3754, %3707
  %3758 = xor i32 %3754, %3756
  %3759 = add nuw nsw i32 %3757, %3758
  %3760 = icmp eq i32 %3759, 2
  %3761 = zext i1 %3760 to i8
  store i8 %3761, i8* %91, align 1
  %3762 = add i64 %3716, -60
  %3763 = add i64 %395, 1381
  store i64 %3763, i64* %PC.i, align 8
  %3764 = inttoptr i64 %3762 to i32*
  %3765 = load i32, i32* %3764, align 4
  %3766 = add i32 %3765, %3735
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RDX.i2544, align 8
  %3768 = icmp ult i32 %3766, %3735
  %3769 = icmp ult i32 %3766, %3765
  %3770 = or i1 %3768, %3769
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %68, align 1
  %3772 = and i32 %3766, 255
  %3773 = tail call i32 @llvm.ctpop.i32(i32 %3772)
  %3774 = trunc i32 %3773 to i8
  %3775 = and i8 %3774, 1
  %3776 = xor i8 %3775, 1
  store i8 %3776, i8* %74, align 1
  %3777 = xor i32 %3765, %3735
  %3778 = xor i32 %3777, %3766
  %3779 = lshr i32 %3778, 4
  %3780 = trunc i32 %3779 to i8
  %3781 = and i8 %3780, 1
  store i8 %3781, i8* %79, align 1
  %3782 = icmp eq i32 %3766, 0
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %82, align 1
  %3784 = lshr i32 %3766, 31
  %3785 = trunc i32 %3784 to i8
  store i8 %3785, i8* %85, align 1
  %3786 = lshr i32 %3765, 31
  %3787 = xor i32 %3784, %3754
  %3788 = xor i32 %3784, %3786
  %3789 = add nuw nsw i32 %3787, %3788
  %3790 = icmp eq i32 %3789, 2
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %91, align 1
  %3792 = sext i32 %3766 to i64
  store i64 %3792, i64* %RCX.i2541, align 8
  %3793 = load i64, i64* %RAX.i2556, align 8
  %3794 = shl nsw i64 %3792, 2
  %3795 = add i64 %3794, %3793
  %3796 = add i64 %395, 1389
  store i64 %3796, i64* %PC.i, align 8
  %3797 = inttoptr i64 %3795 to i32*
  %3798 = load i32, i32* %3797, align 4
  %3799 = bitcast %union.VectorReg* %198 to i32*
  store i32 %3798, i32* %3799, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %3800 = load i64, i64* %RBP.i, align 8
  %3801 = add i64 %3800, -40
  %3802 = add i64 %395, 1393
  store i64 %3802, i64* %PC.i, align 8
  %3803 = inttoptr i64 %3801 to i64*
  %3804 = load i64, i64* %3803, align 8
  store i64 %3804, i64* %RAX.i2556, align 8
  %3805 = add i64 %395, 1396
  store i64 %3805, i64* %PC.i, align 8
  %3806 = inttoptr i64 %3804 to i64*
  %3807 = load i64, i64* %3806, align 8
  store i64 %3807, i64* %RAX.i2556, align 8
  %3808 = add i64 %395, 1400
  store i64 %3808, i64* %PC.i, align 8
  %3809 = load i64, i64* %3803, align 8
  store i64 %3809, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3810 = add i64 %395, 1408
  store i64 %3810, i64* %PC.i, align 8
  %3811 = load i64, i64* %3803, align 8
  store i64 %3811, i64* %RCX.i2541, align 8
  %3812 = add i64 %395, 1412
  store i64 %3812, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3813 = add i64 %395, 1416
  store i64 %3813, i64* %PC.i, align 8
  %3814 = load i64, i64* %3803, align 8
  store i64 %3814, i64* %RCX.i2541, align 8
  %3815 = add i64 %395, 1420
  store i64 %3815, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3816 = add i64 %3800, -52
  %3817 = add i64 %395, 1423
  store i64 %3817, i64* %PC.i, align 8
  %3818 = inttoptr i64 %3816 to i32*
  %3819 = load i32, i32* %3818, align 4
  %3820 = add i32 %3819, 1
  %3821 = zext i32 %3820 to i64
  store i64 %3821, i64* %RSI.i2547, align 8
  %3822 = icmp eq i32 %3819, -1
  %3823 = icmp eq i32 %3820, 0
  %3824 = or i1 %3822, %3823
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %68, align 1
  %3826 = and i32 %3820, 255
  %3827 = tail call i32 @llvm.ctpop.i32(i32 %3826)
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  %3830 = xor i8 %3829, 1
  store i8 %3830, i8* %74, align 1
  %3831 = xor i32 %3819, %3820
  %3832 = lshr i32 %3831, 4
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  store i8 %3834, i8* %79, align 1
  %3835 = icmp eq i32 %3820, 0
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %82, align 1
  %3837 = lshr i32 %3820, 31
  %3838 = trunc i32 %3837 to i8
  store i8 %3838, i8* %85, align 1
  %3839 = lshr i32 %3819, 31
  %3840 = xor i32 %3837, %3839
  %3841 = add nuw nsw i32 %3840, %3837
  %3842 = icmp eq i32 %3841, 2
  %3843 = zext i1 %3842 to i8
  store i8 %3843, i8* %91, align 1
  %3844 = load i64, i64* %RBP.i, align 8
  %3845 = add i64 %3844, -40
  %3846 = add i64 %395, 1430
  store i64 %3846, i64* %PC.i, align 8
  %3847 = inttoptr i64 %3845 to i64*
  %3848 = load i64, i64* %3847, align 8
  store i64 %3848, i64* %RCX.i2541, align 8
  %3849 = add i64 %3848, 16
  %3850 = add i64 %395, 1434
  store i64 %3850, i64* %PC.i, align 8
  %3851 = inttoptr i64 %3849 to i32*
  %3852 = load i32, i32* %3851, align 4
  %3853 = sext i32 %3820 to i64
  %3854 = sext i32 %3852 to i64
  %3855 = mul nsw i64 %3854, %3853
  %3856 = trunc i64 %3855 to i32
  %3857 = and i64 %3855, 4294967295
  store i64 %3857, i64* %RSI.i2547, align 8
  %3858 = shl i64 %3855, 32
  %3859 = ashr exact i64 %3858, 32
  %3860 = icmp ne i64 %3859, %3855
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %68, align 1
  %3862 = and i32 %3856, 255
  %3863 = tail call i32 @llvm.ctpop.i32(i32 %3862)
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  %3866 = xor i8 %3865, 1
  store i8 %3866, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3867 = lshr i32 %3856, 31
  %3868 = trunc i32 %3867 to i8
  store i8 %3868, i8* %85, align 1
  store i8 %3861, i8* %91, align 1
  %3869 = add i64 %395, 1438
  store i64 %3869, i64* %PC.i, align 8
  %3870 = load i64, i64* %3847, align 8
  store i64 %3870, i64* %RCX.i2541, align 8
  %3871 = add i64 %3870, 20
  %3872 = add i64 %395, 1442
  store i64 %3872, i64* %PC.i, align 8
  %3873 = inttoptr i64 %3871 to i32*
  %3874 = load i32, i32* %3873, align 4
  %3875 = shl i64 %3855, 32
  %3876 = ashr exact i64 %3875, 32
  %3877 = sext i32 %3874 to i64
  %3878 = mul nsw i64 %3877, %3876
  %3879 = and i64 %3878, 4294967295
  store i64 %3879, i64* %RSI.i2547, align 8
  %3880 = load i64, i64* %RDX.i2544, align 8
  %3881 = trunc i64 %3878 to i32
  %3882 = trunc i64 %3880 to i32
  %3883 = add i32 %3881, %3882
  %3884 = zext i32 %3883 to i64
  store i64 %3884, i64* %RDX.i2544, align 8
  %3885 = icmp ult i32 %3883, %3882
  %3886 = icmp ult i32 %3883, %3881
  %3887 = or i1 %3885, %3886
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %68, align 1
  %3889 = and i32 %3883, 255
  %3890 = tail call i32 @llvm.ctpop.i32(i32 %3889)
  %3891 = trunc i32 %3890 to i8
  %3892 = and i8 %3891, 1
  %3893 = xor i8 %3892, 1
  store i8 %3893, i8* %74, align 1
  %3894 = xor i64 %3878, %3880
  %3895 = trunc i64 %3894 to i32
  %3896 = xor i32 %3895, %3883
  %3897 = lshr i32 %3896, 4
  %3898 = trunc i32 %3897 to i8
  %3899 = and i8 %3898, 1
  store i8 %3899, i8* %79, align 1
  %3900 = icmp eq i32 %3883, 0
  %3901 = zext i1 %3900 to i8
  store i8 %3901, i8* %82, align 1
  %3902 = lshr i32 %3883, 31
  %3903 = trunc i32 %3902 to i8
  store i8 %3903, i8* %85, align 1
  %3904 = lshr i32 %3882, 31
  %3905 = lshr i32 %3881, 31
  %3906 = xor i32 %3902, %3904
  %3907 = xor i32 %3902, %3905
  %3908 = add nuw nsw i32 %3906, %3907
  %3909 = icmp eq i32 %3908, 2
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %91, align 1
  %3911 = load i64, i64* %RBP.i, align 8
  %3912 = add i64 %3911, -56
  %3913 = add i64 %395, 1447
  store i64 %3913, i64* %PC.i, align 8
  %3914 = inttoptr i64 %3912 to i32*
  %3915 = load i32, i32* %3914, align 4
  %3916 = zext i32 %3915 to i64
  store i64 %3916, i64* %RSI.i2547, align 8
  %3917 = add i64 %3911, -40
  %3918 = add i64 %395, 1451
  store i64 %3918, i64* %PC.i, align 8
  %3919 = inttoptr i64 %3917 to i64*
  %3920 = load i64, i64* %3919, align 8
  store i64 %3920, i64* %RCX.i2541, align 8
  %3921 = add i64 %3920, 20
  %3922 = add i64 %395, 1455
  store i64 %3922, i64* %PC.i, align 8
  %3923 = inttoptr i64 %3921 to i32*
  %3924 = load i32, i32* %3923, align 4
  %3925 = sext i32 %3915 to i64
  %3926 = sext i32 %3924 to i64
  %3927 = mul nsw i64 %3926, %3925
  %3928 = and i64 %3927, 4294967295
  store i64 %3928, i64* %RSI.i2547, align 8
  %3929 = trunc i64 %3927 to i32
  %3930 = add i32 %3929, %3883
  %3931 = zext i32 %3930 to i64
  store i64 %3931, i64* %RDX.i2544, align 8
  %3932 = icmp ult i32 %3930, %3883
  %3933 = icmp ult i32 %3930, %3929
  %3934 = or i1 %3932, %3933
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %68, align 1
  %3936 = and i32 %3930, 255
  %3937 = tail call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  store i8 %3940, i8* %74, align 1
  %3941 = xor i64 %3927, %3884
  %3942 = trunc i64 %3941 to i32
  %3943 = xor i32 %3942, %3930
  %3944 = lshr i32 %3943, 4
  %3945 = trunc i32 %3944 to i8
  %3946 = and i8 %3945, 1
  store i8 %3946, i8* %79, align 1
  %3947 = icmp eq i32 %3930, 0
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %82, align 1
  %3949 = lshr i32 %3930, 31
  %3950 = trunc i32 %3949 to i8
  store i8 %3950, i8* %85, align 1
  %3951 = lshr i32 %3929, 31
  %3952 = xor i32 %3949, %3902
  %3953 = xor i32 %3949, %3951
  %3954 = add nuw nsw i32 %3952, %3953
  %3955 = icmp eq i32 %3954, 2
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %91, align 1
  %3957 = add i64 %3911, -60
  %3958 = add i64 %395, 1460
  store i64 %3958, i64* %PC.i, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  %3961 = add i32 %3960, 1
  %3962 = zext i32 %3961 to i64
  store i64 %3962, i64* %RSI.i2547, align 8
  %3963 = lshr i32 %3961, 31
  %3964 = add i32 %3961, %3930
  %3965 = zext i32 %3964 to i64
  store i64 %3965, i64* %RDX.i2544, align 8
  %3966 = icmp ult i32 %3964, %3930
  %3967 = icmp ult i32 %3964, %3961
  %3968 = or i1 %3966, %3967
  %3969 = zext i1 %3968 to i8
  store i8 %3969, i8* %68, align 1
  %3970 = and i32 %3964, 255
  %3971 = tail call i32 @llvm.ctpop.i32(i32 %3970)
  %3972 = trunc i32 %3971 to i8
  %3973 = and i8 %3972, 1
  %3974 = xor i8 %3973, 1
  store i8 %3974, i8* %74, align 1
  %3975 = xor i32 %3961, %3930
  %3976 = xor i32 %3975, %3964
  %3977 = lshr i32 %3976, 4
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  store i8 %3979, i8* %79, align 1
  %3980 = icmp eq i32 %3964, 0
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %82, align 1
  %3982 = lshr i32 %3964, 31
  %3983 = trunc i32 %3982 to i8
  store i8 %3983, i8* %85, align 1
  %3984 = xor i32 %3982, %3949
  %3985 = xor i32 %3982, %3963
  %3986 = add nuw nsw i32 %3984, %3985
  %3987 = icmp eq i32 %3986, 2
  %3988 = zext i1 %3987 to i8
  store i8 %3988, i8* %91, align 1
  %3989 = sext i32 %3964 to i64
  store i64 %3989, i64* %RCX.i2541, align 8
  %3990 = load i64, i64* %RAX.i2556, align 8
  %3991 = shl nsw i64 %3989, 2
  %3992 = add i64 %3991, %3990
  %3993 = add i64 %395, 1473
  store i64 %3993, i64* %PC.i, align 8
  %3994 = inttoptr i64 %3992 to i32*
  %3995 = load i32, i32* %3994, align 4
  %3996 = bitcast %union.VectorReg* %213 to i32*
  store i32 %3995, i32* %3996, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %221, align 1
  %3997 = load i64, i64* %RBP.i, align 8
  %3998 = add i64 %3997, -40
  %3999 = add i64 %395, 1477
  store i64 %3999, i64* %PC.i, align 8
  %4000 = inttoptr i64 %3998 to i64*
  %4001 = load i64, i64* %4000, align 8
  store i64 %4001, i64* %RAX.i2556, align 8
  %4002 = add i64 %395, 1480
  store i64 %4002, i64* %PC.i, align 8
  %4003 = inttoptr i64 %4001 to i64*
  %4004 = load i64, i64* %4003, align 8
  store i64 %4004, i64* %RAX.i2556, align 8
  %4005 = add i64 %395, 1484
  store i64 %4005, i64* %PC.i, align 8
  %4006 = load i64, i64* %4000, align 8
  store i64 %4006, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4007 = add i64 %395, 1492
  store i64 %4007, i64* %PC.i, align 8
  %4008 = load i64, i64* %4000, align 8
  store i64 %4008, i64* %RCX.i2541, align 8
  %4009 = add i64 %395, 1496
  store i64 %4009, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4010 = add i64 %395, 1500
  store i64 %4010, i64* %PC.i, align 8
  %4011 = load i64, i64* %4000, align 8
  store i64 %4011, i64* %RCX.i2541, align 8
  %4012 = add i64 %395, 1504
  store i64 %4012, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4013 = add i64 %3997, -52
  %4014 = add i64 %395, 1507
  store i64 %4014, i64* %PC.i, align 8
  %4015 = inttoptr i64 %4013 to i32*
  %4016 = load i32, i32* %4015, align 4
  %4017 = add i32 %4016, -1
  %4018 = zext i32 %4017 to i64
  store i64 %4018, i64* %RSI.i2547, align 8
  %4019 = icmp eq i32 %4016, 0
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %68, align 1
  %4021 = and i32 %4017, 255
  %4022 = tail call i32 @llvm.ctpop.i32(i32 %4021)
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = xor i8 %4024, 1
  store i8 %4025, i8* %74, align 1
  %4026 = xor i32 %4016, %4017
  %4027 = lshr i32 %4026, 4
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  store i8 %4029, i8* %79, align 1
  %4030 = icmp eq i32 %4017, 0
  %4031 = zext i1 %4030 to i8
  store i8 %4031, i8* %82, align 1
  %4032 = lshr i32 %4017, 31
  %4033 = trunc i32 %4032 to i8
  store i8 %4033, i8* %85, align 1
  %4034 = lshr i32 %4016, 31
  %4035 = xor i32 %4032, %4034
  %4036 = add nuw nsw i32 %4035, %4034
  %4037 = icmp eq i32 %4036, 2
  %4038 = zext i1 %4037 to i8
  store i8 %4038, i8* %91, align 1
  %4039 = add i64 %395, 1514
  store i64 %4039, i64* %PC.i, align 8
  %4040 = load i64, i64* %4000, align 8
  store i64 %4040, i64* %RCX.i2541, align 8
  %4041 = add i64 %4040, 16
  %4042 = add i64 %395, 1518
  store i64 %4042, i64* %PC.i, align 8
  %4043 = inttoptr i64 %4041 to i32*
  %4044 = load i32, i32* %4043, align 4
  %4045 = sext i32 %4017 to i64
  %4046 = sext i32 %4044 to i64
  %4047 = mul nsw i64 %4046, %4045
  %4048 = trunc i64 %4047 to i32
  %4049 = and i64 %4047, 4294967295
  store i64 %4049, i64* %RSI.i2547, align 8
  %4050 = shl i64 %4047, 32
  %4051 = ashr exact i64 %4050, 32
  %4052 = icmp ne i64 %4051, %4047
  %4053 = zext i1 %4052 to i8
  store i8 %4053, i8* %68, align 1
  %4054 = and i32 %4048, 255
  %4055 = tail call i32 @llvm.ctpop.i32(i32 %4054)
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  %4058 = xor i8 %4057, 1
  store i8 %4058, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4059 = lshr i32 %4048, 31
  %4060 = trunc i32 %4059 to i8
  store i8 %4060, i8* %85, align 1
  store i8 %4053, i8* %91, align 1
  %4061 = load i64, i64* %RBP.i, align 8
  %4062 = add i64 %4061, -40
  %4063 = add i64 %395, 1522
  store i64 %4063, i64* %PC.i, align 8
  %4064 = inttoptr i64 %4062 to i64*
  %4065 = load i64, i64* %4064, align 8
  store i64 %4065, i64* %RCX.i2541, align 8
  %4066 = add i64 %4065, 20
  %4067 = add i64 %395, 1526
  store i64 %4067, i64* %PC.i, align 8
  %4068 = inttoptr i64 %4066 to i32*
  %4069 = load i32, i32* %4068, align 4
  %4070 = shl i64 %4047, 32
  %4071 = ashr exact i64 %4070, 32
  %4072 = sext i32 %4069 to i64
  %4073 = mul nsw i64 %4072, %4071
  %4074 = and i64 %4073, 4294967295
  store i64 %4074, i64* %RSI.i2547, align 8
  %4075 = load i64, i64* %RDX.i2544, align 8
  %4076 = trunc i64 %4073 to i32
  %4077 = trunc i64 %4075 to i32
  %4078 = add i32 %4076, %4077
  %4079 = zext i32 %4078 to i64
  store i64 %4079, i64* %RDX.i2544, align 8
  %4080 = icmp ult i32 %4078, %4077
  %4081 = icmp ult i32 %4078, %4076
  %4082 = or i1 %4080, %4081
  %4083 = zext i1 %4082 to i8
  store i8 %4083, i8* %68, align 1
  %4084 = and i32 %4078, 255
  %4085 = tail call i32 @llvm.ctpop.i32(i32 %4084)
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  %4088 = xor i8 %4087, 1
  store i8 %4088, i8* %74, align 1
  %4089 = xor i64 %4073, %4075
  %4090 = trunc i64 %4089 to i32
  %4091 = xor i32 %4090, %4078
  %4092 = lshr i32 %4091, 4
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  store i8 %4094, i8* %79, align 1
  %4095 = icmp eq i32 %4078, 0
  %4096 = zext i1 %4095 to i8
  store i8 %4096, i8* %82, align 1
  %4097 = lshr i32 %4078, 31
  %4098 = trunc i32 %4097 to i8
  store i8 %4098, i8* %85, align 1
  %4099 = lshr i32 %4077, 31
  %4100 = lshr i32 %4076, 31
  %4101 = xor i32 %4097, %4099
  %4102 = xor i32 %4097, %4100
  %4103 = add nuw nsw i32 %4101, %4102
  %4104 = icmp eq i32 %4103, 2
  %4105 = zext i1 %4104 to i8
  store i8 %4105, i8* %91, align 1
  %4106 = add i64 %4061, -56
  %4107 = add i64 %395, 1531
  store i64 %4107, i64* %PC.i, align 8
  %4108 = inttoptr i64 %4106 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = zext i32 %4109 to i64
  store i64 %4110, i64* %RSI.i2547, align 8
  %4111 = add i64 %395, 1535
  store i64 %4111, i64* %PC.i, align 8
  %4112 = load i64, i64* %4064, align 8
  store i64 %4112, i64* %RCX.i2541, align 8
  %4113 = add i64 %4112, 20
  %4114 = add i64 %395, 1539
  store i64 %4114, i64* %PC.i, align 8
  %4115 = inttoptr i64 %4113 to i32*
  %4116 = load i32, i32* %4115, align 4
  %4117 = sext i32 %4109 to i64
  %4118 = sext i32 %4116 to i64
  %4119 = mul nsw i64 %4118, %4117
  %4120 = and i64 %4119, 4294967295
  store i64 %4120, i64* %RSI.i2547, align 8
  %4121 = trunc i64 %4119 to i32
  %4122 = add i32 %4121, %4078
  %4123 = zext i32 %4122 to i64
  store i64 %4123, i64* %RDX.i2544, align 8
  %4124 = icmp ult i32 %4122, %4078
  %4125 = icmp ult i32 %4122, %4121
  %4126 = or i1 %4124, %4125
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %68, align 1
  %4128 = and i32 %4122, 255
  %4129 = tail call i32 @llvm.ctpop.i32(i32 %4128)
  %4130 = trunc i32 %4129 to i8
  %4131 = and i8 %4130, 1
  %4132 = xor i8 %4131, 1
  store i8 %4132, i8* %74, align 1
  %4133 = xor i64 %4119, %4079
  %4134 = trunc i64 %4133 to i32
  %4135 = xor i32 %4134, %4122
  %4136 = lshr i32 %4135, 4
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  store i8 %4138, i8* %79, align 1
  %4139 = icmp eq i32 %4122, 0
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %82, align 1
  %4141 = lshr i32 %4122, 31
  %4142 = trunc i32 %4141 to i8
  store i8 %4142, i8* %85, align 1
  %4143 = lshr i32 %4121, 31
  %4144 = xor i32 %4141, %4097
  %4145 = xor i32 %4141, %4143
  %4146 = add nuw nsw i32 %4144, %4145
  %4147 = icmp eq i32 %4146, 2
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %91, align 1
  %4149 = load i64, i64* %RBP.i, align 8
  %4150 = add i64 %4149, -60
  %4151 = add i64 %395, 1544
  store i64 %4151, i64* %PC.i, align 8
  %4152 = inttoptr i64 %4150 to i32*
  %4153 = load i32, i32* %4152, align 4
  %4154 = add i32 %4153, 1
  %4155 = zext i32 %4154 to i64
  store i64 %4155, i64* %RSI.i2547, align 8
  %4156 = lshr i32 %4154, 31
  %4157 = add i32 %4154, %4122
  %4158 = zext i32 %4157 to i64
  store i64 %4158, i64* %RDX.i2544, align 8
  %4159 = icmp ult i32 %4157, %4122
  %4160 = icmp ult i32 %4157, %4154
  %4161 = or i1 %4159, %4160
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %68, align 1
  %4163 = and i32 %4157, 255
  %4164 = tail call i32 @llvm.ctpop.i32(i32 %4163)
  %4165 = trunc i32 %4164 to i8
  %4166 = and i8 %4165, 1
  %4167 = xor i8 %4166, 1
  store i8 %4167, i8* %74, align 1
  %4168 = xor i32 %4154, %4122
  %4169 = xor i32 %4168, %4157
  %4170 = lshr i32 %4169, 4
  %4171 = trunc i32 %4170 to i8
  %4172 = and i8 %4171, 1
  store i8 %4172, i8* %79, align 1
  %4173 = icmp eq i32 %4157, 0
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %82, align 1
  %4175 = lshr i32 %4157, 31
  %4176 = trunc i32 %4175 to i8
  store i8 %4176, i8* %85, align 1
  %4177 = xor i32 %4175, %4141
  %4178 = xor i32 %4175, %4156
  %4179 = add nuw nsw i32 %4177, %4178
  %4180 = icmp eq i32 %4179, 2
  %4181 = zext i1 %4180 to i8
  store i8 %4181, i8* %91, align 1
  %4182 = sext i32 %4157 to i64
  store i64 %4182, i64* %RCX.i2541, align 8
  %4183 = load i64, i64* %RAX.i2556, align 8
  %4184 = shl nsw i64 %4182, 2
  %4185 = add i64 %4184, %4183
  %4186 = add i64 %395, 1557
  store i64 %4186, i64* %PC.i, align 8
  %4187 = load <2 x float>, <2 x float>* %222, align 1
  %4188 = load <2 x i32>, <2 x i32>* %223, align 1
  %4189 = inttoptr i64 %4185 to float*
  %4190 = load float, float* %4189, align 4
  %4191 = extractelement <2 x float> %4187, i32 0
  %4192 = fsub float %4191, %4190
  store float %4192, float* %215, align 1
  %4193 = bitcast <2 x float> %4187 to <2 x i32>
  %4194 = extractelement <2 x i32> %4193, i32 1
  store i32 %4194, i32* %224, align 1
  %4195 = extractelement <2 x i32> %4188, i32 0
  store i32 %4195, i32* %225, align 1
  %4196 = extractelement <2 x i32> %4188, i32 1
  store i32 %4196, i32* %226, align 1
  %4197 = load i64, i64* %RBP.i, align 8
  %4198 = add i64 %4197, -40
  %4199 = add i64 %395, 1561
  store i64 %4199, i64* %PC.i, align 8
  %4200 = inttoptr i64 %4198 to i64*
  %4201 = load i64, i64* %4200, align 8
  store i64 %4201, i64* %RAX.i2556, align 8
  %4202 = add i64 %395, 1564
  store i64 %4202, i64* %PC.i, align 8
  %4203 = inttoptr i64 %4201 to i64*
  %4204 = load i64, i64* %4203, align 8
  store i64 %4204, i64* %RAX.i2556, align 8
  %4205 = add i64 %395, 1568
  store i64 %4205, i64* %PC.i, align 8
  %4206 = load i64, i64* %4200, align 8
  store i64 %4206, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4207 = add i64 %395, 1576
  store i64 %4207, i64* %PC.i, align 8
  %4208 = load i64, i64* %4200, align 8
  store i64 %4208, i64* %RCX.i2541, align 8
  %4209 = add i64 %395, 1580
  store i64 %4209, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4210 = add i64 %395, 1584
  store i64 %4210, i64* %PC.i, align 8
  %4211 = load i64, i64* %4200, align 8
  store i64 %4211, i64* %RCX.i2541, align 8
  %4212 = add i64 %395, 1588
  store i64 %4212, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4213 = add i64 %4197, -52
  %4214 = add i64 %395, 1591
  store i64 %4214, i64* %PC.i, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = add i32 %4216, 1
  %4218 = zext i32 %4217 to i64
  store i64 %4218, i64* %RSI.i2547, align 8
  %4219 = icmp eq i32 %4216, -1
  %4220 = icmp eq i32 %4217, 0
  %4221 = or i1 %4219, %4220
  %4222 = zext i1 %4221 to i8
  store i8 %4222, i8* %68, align 1
  %4223 = and i32 %4217, 255
  %4224 = tail call i32 @llvm.ctpop.i32(i32 %4223)
  %4225 = trunc i32 %4224 to i8
  %4226 = and i8 %4225, 1
  %4227 = xor i8 %4226, 1
  store i8 %4227, i8* %74, align 1
  %4228 = xor i32 %4216, %4217
  %4229 = lshr i32 %4228, 4
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  store i8 %4231, i8* %79, align 1
  %4232 = icmp eq i32 %4217, 0
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %82, align 1
  %4234 = lshr i32 %4217, 31
  %4235 = trunc i32 %4234 to i8
  store i8 %4235, i8* %85, align 1
  %4236 = lshr i32 %4216, 31
  %4237 = xor i32 %4234, %4236
  %4238 = add nuw nsw i32 %4237, %4234
  %4239 = icmp eq i32 %4238, 2
  %4240 = zext i1 %4239 to i8
  store i8 %4240, i8* %91, align 1
  %4241 = load i64, i64* %RBP.i, align 8
  %4242 = add i64 %4241, -40
  %4243 = add i64 %395, 1598
  store i64 %4243, i64* %PC.i, align 8
  %4244 = inttoptr i64 %4242 to i64*
  %4245 = load i64, i64* %4244, align 8
  store i64 %4245, i64* %RCX.i2541, align 8
  %4246 = add i64 %4245, 16
  %4247 = add i64 %395, 1602
  store i64 %4247, i64* %PC.i, align 8
  %4248 = inttoptr i64 %4246 to i32*
  %4249 = load i32, i32* %4248, align 4
  %4250 = sext i32 %4217 to i64
  %4251 = sext i32 %4249 to i64
  %4252 = mul nsw i64 %4251, %4250
  %4253 = trunc i64 %4252 to i32
  %4254 = and i64 %4252, 4294967295
  store i64 %4254, i64* %RSI.i2547, align 8
  %4255 = shl i64 %4252, 32
  %4256 = ashr exact i64 %4255, 32
  %4257 = icmp ne i64 %4256, %4252
  %4258 = zext i1 %4257 to i8
  store i8 %4258, i8* %68, align 1
  %4259 = and i32 %4253, 255
  %4260 = tail call i32 @llvm.ctpop.i32(i32 %4259)
  %4261 = trunc i32 %4260 to i8
  %4262 = and i8 %4261, 1
  %4263 = xor i8 %4262, 1
  store i8 %4263, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4264 = lshr i32 %4253, 31
  %4265 = trunc i32 %4264 to i8
  store i8 %4265, i8* %85, align 1
  store i8 %4258, i8* %91, align 1
  %4266 = add i64 %395, 1606
  store i64 %4266, i64* %PC.i, align 8
  %4267 = load i64, i64* %4244, align 8
  store i64 %4267, i64* %RCX.i2541, align 8
  %4268 = add i64 %4267, 20
  %4269 = add i64 %395, 1610
  store i64 %4269, i64* %PC.i, align 8
  %4270 = inttoptr i64 %4268 to i32*
  %4271 = load i32, i32* %4270, align 4
  %4272 = shl i64 %4252, 32
  %4273 = ashr exact i64 %4272, 32
  %4274 = sext i32 %4271 to i64
  %4275 = mul nsw i64 %4274, %4273
  %4276 = and i64 %4275, 4294967295
  store i64 %4276, i64* %RSI.i2547, align 8
  %4277 = load i64, i64* %RDX.i2544, align 8
  %4278 = trunc i64 %4275 to i32
  %4279 = trunc i64 %4277 to i32
  %4280 = add i32 %4278, %4279
  %4281 = zext i32 %4280 to i64
  store i64 %4281, i64* %RDX.i2544, align 8
  %4282 = icmp ult i32 %4280, %4279
  %4283 = icmp ult i32 %4280, %4278
  %4284 = or i1 %4282, %4283
  %4285 = zext i1 %4284 to i8
  store i8 %4285, i8* %68, align 1
  %4286 = and i32 %4280, 255
  %4287 = tail call i32 @llvm.ctpop.i32(i32 %4286)
  %4288 = trunc i32 %4287 to i8
  %4289 = and i8 %4288, 1
  %4290 = xor i8 %4289, 1
  store i8 %4290, i8* %74, align 1
  %4291 = xor i64 %4275, %4277
  %4292 = trunc i64 %4291 to i32
  %4293 = xor i32 %4292, %4280
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %79, align 1
  %4297 = icmp eq i32 %4280, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %82, align 1
  %4299 = lshr i32 %4280, 31
  %4300 = trunc i32 %4299 to i8
  store i8 %4300, i8* %85, align 1
  %4301 = lshr i32 %4279, 31
  %4302 = lshr i32 %4278, 31
  %4303 = xor i32 %4299, %4301
  %4304 = xor i32 %4299, %4302
  %4305 = add nuw nsw i32 %4303, %4304
  %4306 = icmp eq i32 %4305, 2
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %91, align 1
  %4308 = load i64, i64* %RBP.i, align 8
  %4309 = add i64 %4308, -56
  %4310 = add i64 %395, 1615
  store i64 %4310, i64* %PC.i, align 8
  %4311 = inttoptr i64 %4309 to i32*
  %4312 = load i32, i32* %4311, align 4
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RSI.i2547, align 8
  %4314 = add i64 %4308, -40
  %4315 = add i64 %395, 1619
  store i64 %4315, i64* %PC.i, align 8
  %4316 = inttoptr i64 %4314 to i64*
  %4317 = load i64, i64* %4316, align 8
  store i64 %4317, i64* %RCX.i2541, align 8
  %4318 = add i64 %4317, 20
  %4319 = add i64 %395, 1623
  store i64 %4319, i64* %PC.i, align 8
  %4320 = inttoptr i64 %4318 to i32*
  %4321 = load i32, i32* %4320, align 4
  %4322 = sext i32 %4312 to i64
  %4323 = sext i32 %4321 to i64
  %4324 = mul nsw i64 %4323, %4322
  %4325 = and i64 %4324, 4294967295
  store i64 %4325, i64* %RSI.i2547, align 8
  %4326 = trunc i64 %4324 to i32
  %4327 = add i32 %4326, %4280
  %4328 = zext i32 %4327 to i64
  store i64 %4328, i64* %RDX.i2544, align 8
  %4329 = icmp ult i32 %4327, %4280
  %4330 = icmp ult i32 %4327, %4326
  %4331 = or i1 %4329, %4330
  %4332 = zext i1 %4331 to i8
  store i8 %4332, i8* %68, align 1
  %4333 = and i32 %4327, 255
  %4334 = tail call i32 @llvm.ctpop.i32(i32 %4333)
  %4335 = trunc i32 %4334 to i8
  %4336 = and i8 %4335, 1
  %4337 = xor i8 %4336, 1
  store i8 %4337, i8* %74, align 1
  %4338 = xor i64 %4324, %4281
  %4339 = trunc i64 %4338 to i32
  %4340 = xor i32 %4339, %4327
  %4341 = lshr i32 %4340, 4
  %4342 = trunc i32 %4341 to i8
  %4343 = and i8 %4342, 1
  store i8 %4343, i8* %79, align 1
  %4344 = icmp eq i32 %4327, 0
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %82, align 1
  %4346 = lshr i32 %4327, 31
  %4347 = trunc i32 %4346 to i8
  store i8 %4347, i8* %85, align 1
  %4348 = lshr i32 %4326, 31
  %4349 = xor i32 %4346, %4299
  %4350 = xor i32 %4346, %4348
  %4351 = add nuw nsw i32 %4349, %4350
  %4352 = icmp eq i32 %4351, 2
  %4353 = zext i1 %4352 to i8
  store i8 %4353, i8* %91, align 1
  %4354 = add i64 %4308, -60
  %4355 = add i64 %395, 1628
  store i64 %4355, i64* %PC.i, align 8
  %4356 = inttoptr i64 %4354 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = add i32 %4357, -1
  %4359 = zext i32 %4358 to i64
  store i64 %4359, i64* %RSI.i2547, align 8
  %4360 = lshr i32 %4358, 31
  %4361 = add i32 %4358, %4327
  %4362 = zext i32 %4361 to i64
  store i64 %4362, i64* %RDX.i2544, align 8
  %4363 = icmp ult i32 %4361, %4327
  %4364 = icmp ult i32 %4361, %4358
  %4365 = or i1 %4363, %4364
  %4366 = zext i1 %4365 to i8
  store i8 %4366, i8* %68, align 1
  %4367 = and i32 %4361, 255
  %4368 = tail call i32 @llvm.ctpop.i32(i32 %4367)
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = xor i8 %4370, 1
  store i8 %4371, i8* %74, align 1
  %4372 = xor i32 %4358, %4327
  %4373 = xor i32 %4372, %4361
  %4374 = lshr i32 %4373, 4
  %4375 = trunc i32 %4374 to i8
  %4376 = and i8 %4375, 1
  store i8 %4376, i8* %79, align 1
  %4377 = icmp eq i32 %4361, 0
  %4378 = zext i1 %4377 to i8
  store i8 %4378, i8* %82, align 1
  %4379 = lshr i32 %4361, 31
  %4380 = trunc i32 %4379 to i8
  store i8 %4380, i8* %85, align 1
  %4381 = xor i32 %4379, %4346
  %4382 = xor i32 %4379, %4360
  %4383 = add nuw nsw i32 %4381, %4382
  %4384 = icmp eq i32 %4383, 2
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %91, align 1
  %4386 = sext i32 %4361 to i64
  store i64 %4386, i64* %RCX.i2541, align 8
  %4387 = load i64, i64* %RAX.i2556, align 8
  %4388 = shl nsw i64 %4386, 2
  %4389 = add i64 %4388, %4387
  %4390 = add i64 %395, 1641
  store i64 %4390, i64* %PC.i, align 8
  %4391 = load <2 x float>, <2 x float>* %222, align 1
  %4392 = load <2 x i32>, <2 x i32>* %223, align 1
  %4393 = inttoptr i64 %4389 to float*
  %4394 = load float, float* %4393, align 4
  %4395 = extractelement <2 x float> %4391, i32 0
  %4396 = fsub float %4395, %4394
  store float %4396, float* %215, align 1
  %4397 = bitcast <2 x float> %4391 to <2 x i32>
  %4398 = extractelement <2 x i32> %4397, i32 1
  store i32 %4398, i32* %224, align 1
  %4399 = extractelement <2 x i32> %4392, i32 0
  store i32 %4399, i32* %225, align 1
  %4400 = extractelement <2 x i32> %4392, i32 1
  store i32 %4400, i32* %226, align 1
  %4401 = load i64, i64* %RBP.i, align 8
  %4402 = add i64 %4401, -40
  %4403 = add i64 %395, 1645
  store i64 %4403, i64* %PC.i, align 8
  %4404 = inttoptr i64 %4402 to i64*
  %4405 = load i64, i64* %4404, align 8
  store i64 %4405, i64* %RAX.i2556, align 8
  %4406 = add i64 %395, 1648
  store i64 %4406, i64* %PC.i, align 8
  %4407 = inttoptr i64 %4405 to i64*
  %4408 = load i64, i64* %4407, align 8
  store i64 %4408, i64* %RAX.i2556, align 8
  %4409 = add i64 %395, 1652
  store i64 %4409, i64* %PC.i, align 8
  %4410 = load i64, i64* %4404, align 8
  store i64 %4410, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4411 = add i64 %395, 1660
  store i64 %4411, i64* %PC.i, align 8
  %4412 = load i64, i64* %4404, align 8
  store i64 %4412, i64* %RCX.i2541, align 8
  %4413 = add i64 %395, 1664
  store i64 %4413, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4414 = add i64 %395, 1668
  store i64 %4414, i64* %PC.i, align 8
  %4415 = load i64, i64* %4404, align 8
  store i64 %4415, i64* %RCX.i2541, align 8
  %4416 = add i64 %395, 1672
  store i64 %4416, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4417 = add i64 %4401, -52
  %4418 = add i64 %395, 1675
  store i64 %4418, i64* %PC.i, align 8
  %4419 = inttoptr i64 %4417 to i32*
  %4420 = load i32, i32* %4419, align 4
  %4421 = add i32 %4420, -1
  %4422 = zext i32 %4421 to i64
  store i64 %4422, i64* %RSI.i2547, align 8
  %4423 = icmp eq i32 %4420, 0
  %4424 = zext i1 %4423 to i8
  store i8 %4424, i8* %68, align 1
  %4425 = and i32 %4421, 255
  %4426 = tail call i32 @llvm.ctpop.i32(i32 %4425)
  %4427 = trunc i32 %4426 to i8
  %4428 = and i8 %4427, 1
  %4429 = xor i8 %4428, 1
  store i8 %4429, i8* %74, align 1
  %4430 = xor i32 %4420, %4421
  %4431 = lshr i32 %4430, 4
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  store i8 %4433, i8* %79, align 1
  %4434 = icmp eq i32 %4421, 0
  %4435 = zext i1 %4434 to i8
  store i8 %4435, i8* %82, align 1
  %4436 = lshr i32 %4421, 31
  %4437 = trunc i32 %4436 to i8
  store i8 %4437, i8* %85, align 1
  %4438 = lshr i32 %4420, 31
  %4439 = xor i32 %4436, %4438
  %4440 = add nuw nsw i32 %4439, %4438
  %4441 = icmp eq i32 %4440, 2
  %4442 = zext i1 %4441 to i8
  store i8 %4442, i8* %91, align 1
  %4443 = add i64 %395, 1682
  store i64 %4443, i64* %PC.i, align 8
  %4444 = load i64, i64* %4404, align 8
  store i64 %4444, i64* %RCX.i2541, align 8
  %4445 = add i64 %4444, 16
  %4446 = add i64 %395, 1686
  store i64 %4446, i64* %PC.i, align 8
  %4447 = inttoptr i64 %4445 to i32*
  %4448 = load i32, i32* %4447, align 4
  %4449 = sext i32 %4421 to i64
  %4450 = sext i32 %4448 to i64
  %4451 = mul nsw i64 %4450, %4449
  %4452 = trunc i64 %4451 to i32
  %4453 = and i64 %4451, 4294967295
  store i64 %4453, i64* %RSI.i2547, align 8
  %4454 = shl i64 %4451, 32
  %4455 = ashr exact i64 %4454, 32
  %4456 = icmp ne i64 %4455, %4451
  %4457 = zext i1 %4456 to i8
  store i8 %4457, i8* %68, align 1
  %4458 = and i32 %4452, 255
  %4459 = tail call i32 @llvm.ctpop.i32(i32 %4458)
  %4460 = trunc i32 %4459 to i8
  %4461 = and i8 %4460, 1
  %4462 = xor i8 %4461, 1
  store i8 %4462, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4463 = lshr i32 %4452, 31
  %4464 = trunc i32 %4463 to i8
  store i8 %4464, i8* %85, align 1
  store i8 %4457, i8* %91, align 1
  %4465 = load i64, i64* %RBP.i, align 8
  %4466 = add i64 %4465, -40
  %4467 = add i64 %395, 1690
  store i64 %4467, i64* %PC.i, align 8
  %4468 = inttoptr i64 %4466 to i64*
  %4469 = load i64, i64* %4468, align 8
  store i64 %4469, i64* %RCX.i2541, align 8
  %4470 = add i64 %4469, 20
  %4471 = add i64 %395, 1694
  store i64 %4471, i64* %PC.i, align 8
  %4472 = inttoptr i64 %4470 to i32*
  %4473 = load i32, i32* %4472, align 4
  %4474 = shl i64 %4451, 32
  %4475 = ashr exact i64 %4474, 32
  %4476 = sext i32 %4473 to i64
  %4477 = mul nsw i64 %4476, %4475
  %4478 = and i64 %4477, 4294967295
  store i64 %4478, i64* %RSI.i2547, align 8
  %4479 = load i64, i64* %RDX.i2544, align 8
  %4480 = trunc i64 %4477 to i32
  %4481 = trunc i64 %4479 to i32
  %4482 = add i32 %4480, %4481
  %4483 = zext i32 %4482 to i64
  store i64 %4483, i64* %RDX.i2544, align 8
  %4484 = icmp ult i32 %4482, %4481
  %4485 = icmp ult i32 %4482, %4480
  %4486 = or i1 %4484, %4485
  %4487 = zext i1 %4486 to i8
  store i8 %4487, i8* %68, align 1
  %4488 = and i32 %4482, 255
  %4489 = tail call i32 @llvm.ctpop.i32(i32 %4488)
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = xor i8 %4491, 1
  store i8 %4492, i8* %74, align 1
  %4493 = xor i64 %4477, %4479
  %4494 = trunc i64 %4493 to i32
  %4495 = xor i32 %4494, %4482
  %4496 = lshr i32 %4495, 4
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  store i8 %4498, i8* %79, align 1
  %4499 = icmp eq i32 %4482, 0
  %4500 = zext i1 %4499 to i8
  store i8 %4500, i8* %82, align 1
  %4501 = lshr i32 %4482, 31
  %4502 = trunc i32 %4501 to i8
  store i8 %4502, i8* %85, align 1
  %4503 = lshr i32 %4481, 31
  %4504 = lshr i32 %4480, 31
  %4505 = xor i32 %4501, %4503
  %4506 = xor i32 %4501, %4504
  %4507 = add nuw nsw i32 %4505, %4506
  %4508 = icmp eq i32 %4507, 2
  %4509 = zext i1 %4508 to i8
  store i8 %4509, i8* %91, align 1
  %4510 = add i64 %4465, -56
  %4511 = add i64 %395, 1699
  store i64 %4511, i64* %PC.i, align 8
  %4512 = inttoptr i64 %4510 to i32*
  %4513 = load i32, i32* %4512, align 4
  %4514 = zext i32 %4513 to i64
  store i64 %4514, i64* %RSI.i2547, align 8
  %4515 = add i64 %395, 1703
  store i64 %4515, i64* %PC.i, align 8
  %4516 = load i64, i64* %4468, align 8
  store i64 %4516, i64* %RCX.i2541, align 8
  %4517 = add i64 %4516, 20
  %4518 = add i64 %395, 1707
  store i64 %4518, i64* %PC.i, align 8
  %4519 = inttoptr i64 %4517 to i32*
  %4520 = load i32, i32* %4519, align 4
  %4521 = sext i32 %4513 to i64
  %4522 = sext i32 %4520 to i64
  %4523 = mul nsw i64 %4522, %4521
  %4524 = and i64 %4523, 4294967295
  store i64 %4524, i64* %RSI.i2547, align 8
  %4525 = trunc i64 %4523 to i32
  %4526 = add i32 %4525, %4482
  %4527 = zext i32 %4526 to i64
  store i64 %4527, i64* %RDX.i2544, align 8
  %4528 = icmp ult i32 %4526, %4482
  %4529 = icmp ult i32 %4526, %4525
  %4530 = or i1 %4528, %4529
  %4531 = zext i1 %4530 to i8
  store i8 %4531, i8* %68, align 1
  %4532 = and i32 %4526, 255
  %4533 = tail call i32 @llvm.ctpop.i32(i32 %4532)
  %4534 = trunc i32 %4533 to i8
  %4535 = and i8 %4534, 1
  %4536 = xor i8 %4535, 1
  store i8 %4536, i8* %74, align 1
  %4537 = xor i64 %4523, %4483
  %4538 = trunc i64 %4537 to i32
  %4539 = xor i32 %4538, %4526
  %4540 = lshr i32 %4539, 4
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  store i8 %4542, i8* %79, align 1
  %4543 = icmp eq i32 %4526, 0
  %4544 = zext i1 %4543 to i8
  store i8 %4544, i8* %82, align 1
  %4545 = lshr i32 %4526, 31
  %4546 = trunc i32 %4545 to i8
  store i8 %4546, i8* %85, align 1
  %4547 = lshr i32 %4525, 31
  %4548 = xor i32 %4545, %4501
  %4549 = xor i32 %4545, %4547
  %4550 = add nuw nsw i32 %4548, %4549
  %4551 = icmp eq i32 %4550, 2
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %91, align 1
  %4553 = load i64, i64* %RBP.i, align 8
  %4554 = add i64 %4553, -60
  %4555 = add i64 %395, 1712
  store i64 %4555, i64* %PC.i, align 8
  %4556 = inttoptr i64 %4554 to i32*
  %4557 = load i32, i32* %4556, align 4
  %4558 = add i32 %4557, -1
  %4559 = zext i32 %4558 to i64
  store i64 %4559, i64* %RSI.i2547, align 8
  %4560 = lshr i32 %4558, 31
  %4561 = add i32 %4558, %4526
  %4562 = zext i32 %4561 to i64
  store i64 %4562, i64* %RDX.i2544, align 8
  %4563 = icmp ult i32 %4561, %4526
  %4564 = icmp ult i32 %4561, %4558
  %4565 = or i1 %4563, %4564
  %4566 = zext i1 %4565 to i8
  store i8 %4566, i8* %68, align 1
  %4567 = and i32 %4561, 255
  %4568 = tail call i32 @llvm.ctpop.i32(i32 %4567)
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  %4571 = xor i8 %4570, 1
  store i8 %4571, i8* %74, align 1
  %4572 = xor i32 %4558, %4526
  %4573 = xor i32 %4572, %4561
  %4574 = lshr i32 %4573, 4
  %4575 = trunc i32 %4574 to i8
  %4576 = and i8 %4575, 1
  store i8 %4576, i8* %79, align 1
  %4577 = icmp eq i32 %4561, 0
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %82, align 1
  %4579 = lshr i32 %4561, 31
  %4580 = trunc i32 %4579 to i8
  store i8 %4580, i8* %85, align 1
  %4581 = xor i32 %4579, %4545
  %4582 = xor i32 %4579, %4560
  %4583 = add nuw nsw i32 %4581, %4582
  %4584 = icmp eq i32 %4583, 2
  %4585 = zext i1 %4584 to i8
  store i8 %4585, i8* %91, align 1
  %4586 = sext i32 %4561 to i64
  store i64 %4586, i64* %RCX.i2541, align 8
  %4587 = load i64, i64* %RAX.i2556, align 8
  %4588 = shl nsw i64 %4586, 2
  %4589 = add i64 %4588, %4587
  %4590 = add i64 %395, 1725
  store i64 %4590, i64* %PC.i, align 8
  %4591 = load <2 x float>, <2 x float>* %222, align 1
  %4592 = load <2 x i32>, <2 x i32>* %223, align 1
  %4593 = inttoptr i64 %4589 to float*
  %4594 = load float, float* %4593, align 4
  %4595 = extractelement <2 x float> %4591, i32 0
  %4596 = fadd float %4595, %4594
  store float %4596, float* %215, align 1
  %4597 = bitcast <2 x float> %4591 to <2 x i32>
  %4598 = extractelement <2 x i32> %4597, i32 1
  store i32 %4598, i32* %224, align 1
  %4599 = extractelement <2 x i32> %4592, i32 0
  store i32 %4599, i32* %225, align 1
  %4600 = extractelement <2 x i32> %4592, i32 1
  store i32 %4600, i32* %226, align 1
  %4601 = load <2 x float>, <2 x float>* %207, align 1
  %4602 = load <2 x i32>, <2 x i32>* %208, align 1
  %4603 = load <2 x float>, <2 x float>* %227, align 1
  %4604 = extractelement <2 x float> %4601, i32 0
  %4605 = extractelement <2 x float> %4603, i32 0
  %4606 = fmul float %4604, %4605
  store float %4606, float* %200, align 1
  %4607 = bitcast <2 x float> %4601 to <2 x i32>
  %4608 = extractelement <2 x i32> %4607, i32 1
  store i32 %4608, i32* %209, align 1
  %4609 = extractelement <2 x i32> %4602, i32 0
  store i32 %4609, i32* %210, align 1
  %4610 = extractelement <2 x i32> %4602, i32 1
  store i32 %4610, i32* %211, align 1
  %4611 = load <2 x float>, <2 x float>* %196, align 1
  %4612 = load <2 x i32>, <2 x i32>* %197, align 1
  %4613 = load <2 x float>, <2 x float>* %212, align 1
  %4614 = extractelement <2 x float> %4611, i32 0
  %4615 = extractelement <2 x float> %4613, i32 0
  %4616 = fadd float %4614, %4615
  store float %4616, float* %192, align 1
  %4617 = bitcast <2 x float> %4611 to <2 x i32>
  %4618 = extractelement <2 x i32> %4617, i32 1
  store i32 %4618, i32* %187, align 1
  %4619 = extractelement <2 x i32> %4612, i32 0
  store i32 %4619, i32* %188, align 1
  %4620 = extractelement <2 x i32> %4612, i32 1
  store i32 %4620, i32* %190, align 1
  %4621 = load i64, i64* %RBP.i, align 8
  %4622 = add i64 %4621, -32
  %4623 = add i64 %395, 1737
  store i64 %4623, i64* %PC.i, align 8
  %4624 = inttoptr i64 %4622 to i64*
  %4625 = load i64, i64* %4624, align 8
  store i64 %4625, i64* %RAX.i2556, align 8
  %4626 = add i64 %395, 1740
  store i64 %4626, i64* %PC.i, align 8
  %4627 = inttoptr i64 %4625 to i64*
  %4628 = load i64, i64* %4627, align 8
  store i64 %4628, i64* %RAX.i2556, align 8
  %4629 = add i64 %395, 1744
  store i64 %4629, i64* %PC.i, align 8
  %4630 = load i64, i64* %4624, align 8
  store i64 %4630, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4631 = add i64 %395, 1752
  store i64 %4631, i64* %PC.i, align 8
  %4632 = load i64, i64* %4624, align 8
  store i64 %4632, i64* %RCX.i2541, align 8
  %4633 = add i64 %395, 1756
  store i64 %4633, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4634 = add i64 %395, 1760
  store i64 %4634, i64* %PC.i, align 8
  %4635 = load i64, i64* %4624, align 8
  store i64 %4635, i64* %RCX.i2541, align 8
  %4636 = add i64 %395, 1764
  store i64 %4636, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4637 = add i64 %4621, -52
  %4638 = add i64 %395, 1767
  store i64 %4638, i64* %PC.i, align 8
  %4639 = inttoptr i64 %4637 to i32*
  %4640 = load i32, i32* %4639, align 4
  %4641 = zext i32 %4640 to i64
  store i64 %4641, i64* %RSI.i2547, align 8
  %4642 = add i64 %395, 1771
  store i64 %4642, i64* %PC.i, align 8
  %4643 = load i64, i64* %4624, align 8
  store i64 %4643, i64* %RCX.i2541, align 8
  %4644 = add i64 %4643, 16
  %4645 = add i64 %395, 1775
  store i64 %4645, i64* %PC.i, align 8
  %4646 = inttoptr i64 %4644 to i32*
  %4647 = load i32, i32* %4646, align 4
  %4648 = sext i32 %4640 to i64
  %4649 = sext i32 %4647 to i64
  %4650 = mul nsw i64 %4649, %4648
  %4651 = trunc i64 %4650 to i32
  %4652 = and i64 %4650, 4294967295
  store i64 %4652, i64* %RSI.i2547, align 8
  %4653 = shl i64 %4650, 32
  %4654 = ashr exact i64 %4653, 32
  %4655 = icmp ne i64 %4654, %4650
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %68, align 1
  %4657 = and i32 %4651, 255
  %4658 = tail call i32 @llvm.ctpop.i32(i32 %4657)
  %4659 = trunc i32 %4658 to i8
  %4660 = and i8 %4659, 1
  %4661 = xor i8 %4660, 1
  store i8 %4661, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4662 = lshr i32 %4651, 31
  %4663 = trunc i32 %4662 to i8
  store i8 %4663, i8* %85, align 1
  store i8 %4656, i8* %91, align 1
  %4664 = add i64 %395, 1779
  store i64 %4664, i64* %PC.i, align 8
  %4665 = load i64, i64* %4624, align 8
  store i64 %4665, i64* %RCX.i2541, align 8
  %4666 = add i64 %4665, 20
  %4667 = add i64 %395, 1783
  store i64 %4667, i64* %PC.i, align 8
  %4668 = inttoptr i64 %4666 to i32*
  %4669 = load i32, i32* %4668, align 4
  %4670 = shl i64 %4650, 32
  %4671 = ashr exact i64 %4670, 32
  %4672 = sext i32 %4669 to i64
  %4673 = mul nsw i64 %4672, %4671
  %4674 = and i64 %4673, 4294967295
  store i64 %4674, i64* %RSI.i2547, align 8
  %4675 = trunc i64 %4673 to i32
  %4676 = and i64 %4673, 4294967295
  store i64 %4676, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %4677 = and i32 %4675, 255
  %4678 = tail call i32 @llvm.ctpop.i32(i32 %4677)
  %4679 = trunc i32 %4678 to i8
  %4680 = and i8 %4679, 1
  %4681 = xor i8 %4680, 1
  store i8 %4681, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %4682 = icmp eq i32 %4675, 0
  %4683 = zext i1 %4682 to i8
  store i8 %4683, i8* %82, align 1
  %4684 = lshr i32 %4675, 31
  %4685 = trunc i32 %4684 to i8
  store i8 %4685, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4686 = load i64, i64* %RBP.i, align 8
  %4687 = add i64 %4686, -56
  %4688 = add i64 %395, 1788
  store i64 %4688, i64* %PC.i, align 8
  %4689 = inttoptr i64 %4687 to i32*
  %4690 = load i32, i32* %4689, align 4
  %4691 = zext i32 %4690 to i64
  store i64 %4691, i64* %RSI.i2547, align 8
  %4692 = add i64 %4686, -32
  %4693 = add i64 %395, 1792
  store i64 %4693, i64* %PC.i, align 8
  %4694 = inttoptr i64 %4692 to i64*
  %4695 = load i64, i64* %4694, align 8
  store i64 %4695, i64* %RCX.i2541, align 8
  %4696 = add i64 %4695, 20
  %4697 = add i64 %395, 1796
  store i64 %4697, i64* %PC.i, align 8
  %4698 = inttoptr i64 %4696 to i32*
  %4699 = load i32, i32* %4698, align 4
  %4700 = sext i32 %4690 to i64
  %4701 = sext i32 %4699 to i64
  %4702 = mul nsw i64 %4701, %4700
  %4703 = and i64 %4702, 4294967295
  store i64 %4703, i64* %RSI.i2547, align 8
  %4704 = trunc i64 %4702 to i32
  %4705 = add i32 %4704, %4675
  %4706 = zext i32 %4705 to i64
  store i64 %4706, i64* %RDX.i2544, align 8
  %4707 = icmp ult i32 %4705, %4675
  %4708 = icmp ult i32 %4705, %4704
  %4709 = or i1 %4707, %4708
  %4710 = zext i1 %4709 to i8
  store i8 %4710, i8* %68, align 1
  %4711 = and i32 %4705, 255
  %4712 = tail call i32 @llvm.ctpop.i32(i32 %4711)
  %4713 = trunc i32 %4712 to i8
  %4714 = and i8 %4713, 1
  %4715 = xor i8 %4714, 1
  store i8 %4715, i8* %74, align 1
  %4716 = xor i64 %4702, %4673
  %4717 = trunc i64 %4716 to i32
  %4718 = xor i32 %4717, %4705
  %4719 = lshr i32 %4718, 4
  %4720 = trunc i32 %4719 to i8
  %4721 = and i8 %4720, 1
  store i8 %4721, i8* %79, align 1
  %4722 = icmp eq i32 %4705, 0
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %82, align 1
  %4724 = lshr i32 %4705, 31
  %4725 = trunc i32 %4724 to i8
  store i8 %4725, i8* %85, align 1
  %4726 = lshr i32 %4704, 31
  %4727 = xor i32 %4724, %4684
  %4728 = xor i32 %4724, %4726
  %4729 = add nuw nsw i32 %4727, %4728
  %4730 = icmp eq i32 %4729, 2
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %91, align 1
  %4732 = add i64 %4686, -60
  %4733 = add i64 %395, 1801
  store i64 %4733, i64* %PC.i, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = add i32 %4735, %4705
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %RDX.i2544, align 8
  %4738 = icmp ult i32 %4736, %4705
  %4739 = icmp ult i32 %4736, %4735
  %4740 = or i1 %4738, %4739
  %4741 = zext i1 %4740 to i8
  store i8 %4741, i8* %68, align 1
  %4742 = and i32 %4736, 255
  %4743 = tail call i32 @llvm.ctpop.i32(i32 %4742)
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  %4746 = xor i8 %4745, 1
  store i8 %4746, i8* %74, align 1
  %4747 = xor i32 %4735, %4705
  %4748 = xor i32 %4747, %4736
  %4749 = lshr i32 %4748, 4
  %4750 = trunc i32 %4749 to i8
  %4751 = and i8 %4750, 1
  store i8 %4751, i8* %79, align 1
  %4752 = icmp eq i32 %4736, 0
  %4753 = zext i1 %4752 to i8
  store i8 %4753, i8* %82, align 1
  %4754 = lshr i32 %4736, 31
  %4755 = trunc i32 %4754 to i8
  store i8 %4755, i8* %85, align 1
  %4756 = lshr i32 %4735, 31
  %4757 = xor i32 %4754, %4724
  %4758 = xor i32 %4754, %4756
  %4759 = add nuw nsw i32 %4757, %4758
  %4760 = icmp eq i32 %4759, 2
  %4761 = zext i1 %4760 to i8
  store i8 %4761, i8* %91, align 1
  %4762 = sext i32 %4736 to i64
  store i64 %4762, i64* %RCX.i2541, align 8
  %4763 = load i64, i64* %RAX.i2556, align 8
  %4764 = shl nsw i64 %4762, 2
  %4765 = add i64 %4764, %4763
  %4766 = add i64 %395, 1809
  store i64 %4766, i64* %PC.i, align 8
  %4767 = inttoptr i64 %4765 to i32*
  %4768 = load i32, i32* %4767, align 4
  %4769 = bitcast %union.VectorReg* %198 to i32*
  store i32 %4768, i32* %4769, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %4770 = load i64, i64* %RBP.i, align 8
  %4771 = add i64 %4770, -40
  %4772 = add i64 %395, 1813
  store i64 %4772, i64* %PC.i, align 8
  %4773 = inttoptr i64 %4771 to i64*
  %4774 = load i64, i64* %4773, align 8
  store i64 %4774, i64* %RAX.i2556, align 8
  %4775 = add i64 %395, 1816
  store i64 %4775, i64* %PC.i, align 8
  %4776 = inttoptr i64 %4774 to i64*
  %4777 = load i64, i64* %4776, align 8
  store i64 %4777, i64* %RAX.i2556, align 8
  %4778 = add i64 %395, 1820
  store i64 %4778, i64* %PC.i, align 8
  %4779 = load i64, i64* %4773, align 8
  store i64 %4779, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4780 = add i64 %395, 1828
  store i64 %4780, i64* %PC.i, align 8
  %4781 = load i64, i64* %4773, align 8
  store i64 %4781, i64* %RCX.i2541, align 8
  %4782 = add i64 %395, 1832
  store i64 %4782, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4783 = add i64 %395, 1836
  store i64 %4783, i64* %PC.i, align 8
  %4784 = load i64, i64* %4773, align 8
  store i64 %4784, i64* %RCX.i2541, align 8
  %4785 = add i64 %395, 1840
  store i64 %4785, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4786 = add i64 %4770, -52
  %4787 = add i64 %395, 1843
  store i64 %4787, i64* %PC.i, align 8
  %4788 = inttoptr i64 %4786 to i32*
  %4789 = load i32, i32* %4788, align 4
  %4790 = add i32 %4789, -1
  %4791 = zext i32 %4790 to i64
  store i64 %4791, i64* %RSI.i2547, align 8
  %4792 = icmp eq i32 %4789, 0
  %4793 = zext i1 %4792 to i8
  store i8 %4793, i8* %68, align 1
  %4794 = and i32 %4790, 255
  %4795 = tail call i32 @llvm.ctpop.i32(i32 %4794)
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  store i8 %4798, i8* %74, align 1
  %4799 = xor i32 %4789, %4790
  %4800 = lshr i32 %4799, 4
  %4801 = trunc i32 %4800 to i8
  %4802 = and i8 %4801, 1
  store i8 %4802, i8* %79, align 1
  %4803 = icmp eq i32 %4790, 0
  %4804 = zext i1 %4803 to i8
  store i8 %4804, i8* %82, align 1
  %4805 = lshr i32 %4790, 31
  %4806 = trunc i32 %4805 to i8
  store i8 %4806, i8* %85, align 1
  %4807 = lshr i32 %4789, 31
  %4808 = xor i32 %4805, %4807
  %4809 = add nuw nsw i32 %4808, %4807
  %4810 = icmp eq i32 %4809, 2
  %4811 = zext i1 %4810 to i8
  store i8 %4811, i8* %91, align 1
  %4812 = add i64 %395, 1850
  store i64 %4812, i64* %PC.i, align 8
  %4813 = load i64, i64* %4773, align 8
  store i64 %4813, i64* %RCX.i2541, align 8
  %4814 = add i64 %4813, 16
  %4815 = add i64 %395, 1854
  store i64 %4815, i64* %PC.i, align 8
  %4816 = inttoptr i64 %4814 to i32*
  %4817 = load i32, i32* %4816, align 4
  %4818 = sext i32 %4790 to i64
  %4819 = sext i32 %4817 to i64
  %4820 = mul nsw i64 %4819, %4818
  %4821 = trunc i64 %4820 to i32
  %4822 = and i64 %4820, 4294967295
  store i64 %4822, i64* %RSI.i2547, align 8
  %4823 = shl i64 %4820, 32
  %4824 = ashr exact i64 %4823, 32
  %4825 = icmp ne i64 %4824, %4820
  %4826 = zext i1 %4825 to i8
  store i8 %4826, i8* %68, align 1
  %4827 = and i32 %4821, 255
  %4828 = tail call i32 @llvm.ctpop.i32(i32 %4827)
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = xor i8 %4830, 1
  store i8 %4831, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4832 = lshr i32 %4821, 31
  %4833 = trunc i32 %4832 to i8
  store i8 %4833, i8* %85, align 1
  store i8 %4826, i8* %91, align 1
  %4834 = load i64, i64* %RBP.i, align 8
  %4835 = add i64 %4834, -40
  %4836 = add i64 %395, 1858
  store i64 %4836, i64* %PC.i, align 8
  %4837 = inttoptr i64 %4835 to i64*
  %4838 = load i64, i64* %4837, align 8
  store i64 %4838, i64* %RCX.i2541, align 8
  %4839 = add i64 %4838, 20
  %4840 = add i64 %395, 1862
  store i64 %4840, i64* %PC.i, align 8
  %4841 = inttoptr i64 %4839 to i32*
  %4842 = load i32, i32* %4841, align 4
  %4843 = shl i64 %4820, 32
  %4844 = ashr exact i64 %4843, 32
  %4845 = sext i32 %4842 to i64
  %4846 = mul nsw i64 %4845, %4844
  %4847 = and i64 %4846, 4294967295
  store i64 %4847, i64* %RSI.i2547, align 8
  %4848 = load i64, i64* %RDX.i2544, align 8
  %4849 = trunc i64 %4846 to i32
  %4850 = trunc i64 %4848 to i32
  %4851 = add i32 %4849, %4850
  %4852 = zext i32 %4851 to i64
  store i64 %4852, i64* %RDX.i2544, align 8
  %4853 = icmp ult i32 %4851, %4850
  %4854 = icmp ult i32 %4851, %4849
  %4855 = or i1 %4853, %4854
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %68, align 1
  %4857 = and i32 %4851, 255
  %4858 = tail call i32 @llvm.ctpop.i32(i32 %4857)
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  %4861 = xor i8 %4860, 1
  store i8 %4861, i8* %74, align 1
  %4862 = xor i64 %4846, %4848
  %4863 = trunc i64 %4862 to i32
  %4864 = xor i32 %4863, %4851
  %4865 = lshr i32 %4864, 4
  %4866 = trunc i32 %4865 to i8
  %4867 = and i8 %4866, 1
  store i8 %4867, i8* %79, align 1
  %4868 = icmp eq i32 %4851, 0
  %4869 = zext i1 %4868 to i8
  store i8 %4869, i8* %82, align 1
  %4870 = lshr i32 %4851, 31
  %4871 = trunc i32 %4870 to i8
  store i8 %4871, i8* %85, align 1
  %4872 = lshr i32 %4850, 31
  %4873 = lshr i32 %4849, 31
  %4874 = xor i32 %4870, %4872
  %4875 = xor i32 %4870, %4873
  %4876 = add nuw nsw i32 %4874, %4875
  %4877 = icmp eq i32 %4876, 2
  %4878 = zext i1 %4877 to i8
  store i8 %4878, i8* %91, align 1
  %4879 = add i64 %4834, -56
  %4880 = add i64 %395, 1867
  store i64 %4880, i64* %PC.i, align 8
  %4881 = inttoptr i64 %4879 to i32*
  %4882 = load i32, i32* %4881, align 4
  %4883 = zext i32 %4882 to i64
  store i64 %4883, i64* %RSI.i2547, align 8
  %4884 = add i64 %395, 1871
  store i64 %4884, i64* %PC.i, align 8
  %4885 = load i64, i64* %4837, align 8
  store i64 %4885, i64* %RCX.i2541, align 8
  %4886 = add i64 %4885, 20
  %4887 = add i64 %395, 1875
  store i64 %4887, i64* %PC.i, align 8
  %4888 = inttoptr i64 %4886 to i32*
  %4889 = load i32, i32* %4888, align 4
  %4890 = sext i32 %4882 to i64
  %4891 = sext i32 %4889 to i64
  %4892 = mul nsw i64 %4891, %4890
  %4893 = and i64 %4892, 4294967295
  store i64 %4893, i64* %RSI.i2547, align 8
  %4894 = trunc i64 %4892 to i32
  %4895 = add i32 %4894, %4851
  %4896 = zext i32 %4895 to i64
  store i64 %4896, i64* %RDX.i2544, align 8
  %4897 = icmp ult i32 %4895, %4851
  %4898 = icmp ult i32 %4895, %4894
  %4899 = or i1 %4897, %4898
  %4900 = zext i1 %4899 to i8
  store i8 %4900, i8* %68, align 1
  %4901 = and i32 %4895, 255
  %4902 = tail call i32 @llvm.ctpop.i32(i32 %4901)
  %4903 = trunc i32 %4902 to i8
  %4904 = and i8 %4903, 1
  %4905 = xor i8 %4904, 1
  store i8 %4905, i8* %74, align 1
  %4906 = xor i64 %4892, %4852
  %4907 = trunc i64 %4906 to i32
  %4908 = xor i32 %4907, %4895
  %4909 = lshr i32 %4908, 4
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  store i8 %4911, i8* %79, align 1
  %4912 = icmp eq i32 %4895, 0
  %4913 = zext i1 %4912 to i8
  store i8 %4913, i8* %82, align 1
  %4914 = lshr i32 %4895, 31
  %4915 = trunc i32 %4914 to i8
  store i8 %4915, i8* %85, align 1
  %4916 = lshr i32 %4894, 31
  %4917 = xor i32 %4914, %4870
  %4918 = xor i32 %4914, %4916
  %4919 = add nuw nsw i32 %4917, %4918
  %4920 = icmp eq i32 %4919, 2
  %4921 = zext i1 %4920 to i8
  store i8 %4921, i8* %91, align 1
  %4922 = load i64, i64* %RBP.i, align 8
  %4923 = add i64 %4922, -60
  %4924 = add i64 %395, 1880
  store i64 %4924, i64* %PC.i, align 8
  %4925 = inttoptr i64 %4923 to i32*
  %4926 = load i32, i32* %4925, align 4
  %4927 = add i32 %4926, %4895
  %4928 = zext i32 %4927 to i64
  store i64 %4928, i64* %RDX.i2544, align 8
  %4929 = icmp ult i32 %4927, %4895
  %4930 = icmp ult i32 %4927, %4926
  %4931 = or i1 %4929, %4930
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %68, align 1
  %4933 = and i32 %4927, 255
  %4934 = tail call i32 @llvm.ctpop.i32(i32 %4933)
  %4935 = trunc i32 %4934 to i8
  %4936 = and i8 %4935, 1
  %4937 = xor i8 %4936, 1
  store i8 %4937, i8* %74, align 1
  %4938 = xor i32 %4926, %4895
  %4939 = xor i32 %4938, %4927
  %4940 = lshr i32 %4939, 4
  %4941 = trunc i32 %4940 to i8
  %4942 = and i8 %4941, 1
  store i8 %4942, i8* %79, align 1
  %4943 = icmp eq i32 %4927, 0
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %82, align 1
  %4945 = lshr i32 %4927, 31
  %4946 = trunc i32 %4945 to i8
  store i8 %4946, i8* %85, align 1
  %4947 = lshr i32 %4926, 31
  %4948 = xor i32 %4945, %4914
  %4949 = xor i32 %4945, %4947
  %4950 = add nuw nsw i32 %4948, %4949
  %4951 = icmp eq i32 %4950, 2
  %4952 = zext i1 %4951 to i8
  store i8 %4952, i8* %91, align 1
  %4953 = sext i32 %4927 to i64
  store i64 %4953, i64* %RCX.i2541, align 8
  %4954 = load i64, i64* %RAX.i2556, align 8
  %4955 = shl nsw i64 %4953, 2
  %4956 = add i64 %4955, %4954
  %4957 = add i64 %395, 1888
  store i64 %4957, i64* %PC.i, align 8
  %4958 = load <2 x float>, <2 x float>* %207, align 1
  %4959 = load <2 x i32>, <2 x i32>* %208, align 1
  %4960 = inttoptr i64 %4956 to float*
  %4961 = load float, float* %4960, align 4
  %4962 = extractelement <2 x float> %4958, i32 0
  %4963 = fmul float %4962, %4961
  store float %4963, float* %200, align 1
  %4964 = bitcast <2 x float> %4958 to <2 x i32>
  %4965 = extractelement <2 x i32> %4964, i32 1
  store i32 %4965, i32* %209, align 1
  %4966 = extractelement <2 x i32> %4959, i32 0
  store i32 %4966, i32* %210, align 1
  %4967 = extractelement <2 x i32> %4959, i32 1
  store i32 %4967, i32* %211, align 1
  %4968 = load <2 x float>, <2 x float>* %196, align 1
  %4969 = load <2 x i32>, <2 x i32>* %197, align 1
  %4970 = load <2 x float>, <2 x float>* %212, align 1
  %4971 = extractelement <2 x float> %4968, i32 0
  %4972 = extractelement <2 x float> %4970, i32 0
  %4973 = fadd float %4971, %4972
  store float %4973, float* %192, align 1
  %4974 = bitcast <2 x float> %4968 to <2 x i32>
  %4975 = extractelement <2 x i32> %4974, i32 1
  store i32 %4975, i32* %187, align 1
  %4976 = extractelement <2 x i32> %4969, i32 0
  store i32 %4976, i32* %188, align 1
  %4977 = extractelement <2 x i32> %4969, i32 1
  store i32 %4977, i32* %190, align 1
  %4978 = add i64 %4922, -32
  %4979 = add i64 %395, 1896
  store i64 %4979, i64* %PC.i, align 8
  %4980 = inttoptr i64 %4978 to i64*
  %4981 = load i64, i64* %4980, align 8
  store i64 %4981, i64* %RAX.i2556, align 8
  %4982 = add i64 %395, 1899
  store i64 %4982, i64* %PC.i, align 8
  %4983 = inttoptr i64 %4981 to i64*
  %4984 = load i64, i64* %4983, align 8
  store i64 %4984, i64* %RAX.i2556, align 8
  %4985 = add i64 %395, 1903
  store i64 %4985, i64* %PC.i, align 8
  %4986 = load i64, i64* %4980, align 8
  store i64 %4986, i64* %RCX.i2541, align 8
  %4987 = add i64 %4986, 12
  %4988 = add i64 %395, 1906
  store i64 %4988, i64* %PC.i, align 8
  %4989 = inttoptr i64 %4987 to i32*
  %4990 = load i32, i32* %4989, align 4
  %4991 = zext i32 %4990 to i64
  store i64 %4991, i64* %RDX.i2544, align 8
  %4992 = load i64, i64* %RBP.i, align 8
  %4993 = add i64 %4992, -32
  %4994 = add i64 %395, 1913
  store i64 %4994, i64* %PC.i, align 8
  %4995 = inttoptr i64 %4993 to i64*
  %4996 = load i64, i64* %4995, align 8
  store i64 %4996, i64* %RCX.i2541, align 8
  %4997 = add i64 %4996, 16
  %4998 = add i64 %395, 1917
  store i64 %4998, i64* %PC.i, align 8
  %4999 = inttoptr i64 %4997 to i32*
  %5000 = load i32, i32* %4999, align 4
  %5001 = sext i32 %4990 to i64
  %5002 = sext i32 %5000 to i64
  %5003 = mul nsw i64 %5002, %5001
  %5004 = trunc i64 %5003 to i32
  %5005 = and i64 %5003, 4294967295
  store i64 %5005, i64* %RDX.i2544, align 8
  %5006 = shl i64 %5003, 32
  %5007 = ashr exact i64 %5006, 32
  %5008 = icmp ne i64 %5007, %5003
  %5009 = zext i1 %5008 to i8
  store i8 %5009, i8* %68, align 1
  %5010 = and i32 %5004, 255
  %5011 = tail call i32 @llvm.ctpop.i32(i32 %5010)
  %5012 = trunc i32 %5011 to i8
  %5013 = and i8 %5012, 1
  %5014 = xor i8 %5013, 1
  store i8 %5014, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5015 = lshr i32 %5004, 31
  %5016 = trunc i32 %5015 to i8
  store i8 %5016, i8* %85, align 1
  store i8 %5009, i8* %91, align 1
  %5017 = add i64 %395, 1921
  store i64 %5017, i64* %PC.i, align 8
  %5018 = load i64, i64* %4995, align 8
  store i64 %5018, i64* %RCX.i2541, align 8
  %5019 = add i64 %5018, 20
  %5020 = add i64 %395, 1925
  store i64 %5020, i64* %PC.i, align 8
  %5021 = inttoptr i64 %5019 to i32*
  %5022 = load i32, i32* %5021, align 4
  %5023 = shl i64 %5003, 32
  %5024 = ashr exact i64 %5023, 32
  %5025 = sext i32 %5022 to i64
  %5026 = mul nsw i64 %5025, %5024
  %5027 = trunc i64 %5026 to i32
  %5028 = and i64 %5026, 4294967295
  store i64 %5028, i64* %RDX.i2544, align 8
  %5029 = shl i64 %5026, 32
  %5030 = ashr exact i64 %5029, 32
  %5031 = icmp ne i64 %5030, %5026
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %68, align 1
  %5033 = and i32 %5027, 255
  %5034 = tail call i32 @llvm.ctpop.i32(i32 %5033)
  %5035 = trunc i32 %5034 to i8
  %5036 = and i8 %5035, 1
  %5037 = xor i8 %5036, 1
  store i8 %5037, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5038 = lshr i32 %5027, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %85, align 1
  store i8 %5032, i8* %91, align 1
  %5040 = add i64 %4992, -52
  %5041 = add i64 %395, 1928
  store i64 %5041, i64* %PC.i, align 8
  %5042 = inttoptr i64 %5040 to i32*
  %5043 = load i32, i32* %5042, align 4
  %5044 = zext i32 %5043 to i64
  store i64 %5044, i64* %RSI.i2547, align 8
  %5045 = add i64 %395, 1932
  store i64 %5045, i64* %PC.i, align 8
  %5046 = load i64, i64* %4995, align 8
  store i64 %5046, i64* %RCX.i2541, align 8
  %5047 = add i64 %5046, 16
  %5048 = add i64 %395, 1936
  store i64 %5048, i64* %PC.i, align 8
  %5049 = inttoptr i64 %5047 to i32*
  %5050 = load i32, i32* %5049, align 4
  %5051 = sext i32 %5043 to i64
  %5052 = sext i32 %5050 to i64
  %5053 = mul nsw i64 %5052, %5051
  %5054 = trunc i64 %5053 to i32
  %5055 = and i64 %5053, 4294967295
  store i64 %5055, i64* %RSI.i2547, align 8
  %5056 = shl i64 %5053, 32
  %5057 = ashr exact i64 %5056, 32
  %5058 = icmp ne i64 %5057, %5053
  %5059 = zext i1 %5058 to i8
  store i8 %5059, i8* %68, align 1
  %5060 = and i32 %5054, 255
  %5061 = tail call i32 @llvm.ctpop.i32(i32 %5060)
  %5062 = trunc i32 %5061 to i8
  %5063 = and i8 %5062, 1
  %5064 = xor i8 %5063, 1
  store i8 %5064, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5065 = lshr i32 %5054, 31
  %5066 = trunc i32 %5065 to i8
  store i8 %5066, i8* %85, align 1
  store i8 %5059, i8* %91, align 1
  %5067 = load i64, i64* %RBP.i, align 8
  %5068 = add i64 %5067, -32
  %5069 = add i64 %395, 1940
  store i64 %5069, i64* %PC.i, align 8
  %5070 = inttoptr i64 %5068 to i64*
  %5071 = load i64, i64* %5070, align 8
  store i64 %5071, i64* %RCX.i2541, align 8
  %5072 = add i64 %5071, 20
  %5073 = add i64 %395, 1944
  store i64 %5073, i64* %PC.i, align 8
  %5074 = inttoptr i64 %5072 to i32*
  %5075 = load i32, i32* %5074, align 4
  %5076 = shl i64 %5053, 32
  %5077 = ashr exact i64 %5076, 32
  %5078 = sext i32 %5075 to i64
  %5079 = mul nsw i64 %5078, %5077
  %5080 = and i64 %5079, 4294967295
  store i64 %5080, i64* %RSI.i2547, align 8
  %5081 = trunc i64 %5079 to i32
  %5082 = trunc i64 %5026 to i32
  %5083 = add i32 %5081, %5082
  %5084 = zext i32 %5083 to i64
  store i64 %5084, i64* %RDX.i2544, align 8
  %5085 = icmp ult i32 %5083, %5082
  %5086 = icmp ult i32 %5083, %5081
  %5087 = or i1 %5085, %5086
  %5088 = zext i1 %5087 to i8
  store i8 %5088, i8* %68, align 1
  %5089 = and i32 %5083, 255
  %5090 = tail call i32 @llvm.ctpop.i32(i32 %5089)
  %5091 = trunc i32 %5090 to i8
  %5092 = and i8 %5091, 1
  %5093 = xor i8 %5092, 1
  store i8 %5093, i8* %74, align 1
  %5094 = xor i64 %5079, %5026
  %5095 = trunc i64 %5094 to i32
  %5096 = xor i32 %5095, %5083
  %5097 = lshr i32 %5096, 4
  %5098 = trunc i32 %5097 to i8
  %5099 = and i8 %5098, 1
  store i8 %5099, i8* %79, align 1
  %5100 = icmp eq i32 %5083, 0
  %5101 = zext i1 %5100 to i8
  store i8 %5101, i8* %82, align 1
  %5102 = lshr i32 %5083, 31
  %5103 = trunc i32 %5102 to i8
  store i8 %5103, i8* %85, align 1
  %5104 = lshr i32 %5082, 31
  %5105 = lshr i32 %5081, 31
  %5106 = xor i32 %5102, %5104
  %5107 = xor i32 %5102, %5105
  %5108 = add nuw nsw i32 %5106, %5107
  %5109 = icmp eq i32 %5108, 2
  %5110 = zext i1 %5109 to i8
  store i8 %5110, i8* %91, align 1
  %5111 = add i64 %5067, -56
  %5112 = add i64 %395, 1949
  store i64 %5112, i64* %PC.i, align 8
  %5113 = inttoptr i64 %5111 to i32*
  %5114 = load i32, i32* %5113, align 4
  %5115 = zext i32 %5114 to i64
  store i64 %5115, i64* %RSI.i2547, align 8
  %5116 = add i64 %395, 1953
  store i64 %5116, i64* %PC.i, align 8
  %5117 = load i64, i64* %5070, align 8
  store i64 %5117, i64* %RCX.i2541, align 8
  %5118 = add i64 %5117, 20
  %5119 = add i64 %395, 1957
  store i64 %5119, i64* %PC.i, align 8
  %5120 = inttoptr i64 %5118 to i32*
  %5121 = load i32, i32* %5120, align 4
  %5122 = sext i32 %5114 to i64
  %5123 = sext i32 %5121 to i64
  %5124 = mul nsw i64 %5123, %5122
  %5125 = and i64 %5124, 4294967295
  store i64 %5125, i64* %RSI.i2547, align 8
  %5126 = trunc i64 %5124 to i32
  %5127 = add i32 %5126, %5083
  %5128 = zext i32 %5127 to i64
  store i64 %5128, i64* %RDX.i2544, align 8
  %5129 = icmp ult i32 %5127, %5083
  %5130 = icmp ult i32 %5127, %5126
  %5131 = or i1 %5129, %5130
  %5132 = zext i1 %5131 to i8
  store i8 %5132, i8* %68, align 1
  %5133 = and i32 %5127, 255
  %5134 = tail call i32 @llvm.ctpop.i32(i32 %5133)
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  %5137 = xor i8 %5136, 1
  store i8 %5137, i8* %74, align 1
  %5138 = xor i64 %5124, %5084
  %5139 = trunc i64 %5138 to i32
  %5140 = xor i32 %5139, %5127
  %5141 = lshr i32 %5140, 4
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  store i8 %5143, i8* %79, align 1
  %5144 = icmp eq i32 %5127, 0
  %5145 = zext i1 %5144 to i8
  store i8 %5145, i8* %82, align 1
  %5146 = lshr i32 %5127, 31
  %5147 = trunc i32 %5146 to i8
  store i8 %5147, i8* %85, align 1
  %5148 = lshr i32 %5126, 31
  %5149 = xor i32 %5146, %5102
  %5150 = xor i32 %5146, %5148
  %5151 = add nuw nsw i32 %5149, %5150
  %5152 = icmp eq i32 %5151, 2
  %5153 = zext i1 %5152 to i8
  store i8 %5153, i8* %91, align 1
  %5154 = load i64, i64* %RBP.i, align 8
  %5155 = add i64 %5154, -60
  %5156 = add i64 %395, 1962
  store i64 %5156, i64* %PC.i, align 8
  %5157 = inttoptr i64 %5155 to i32*
  %5158 = load i32, i32* %5157, align 4
  %5159 = add i32 %5158, %5127
  %5160 = zext i32 %5159 to i64
  store i64 %5160, i64* %RDX.i2544, align 8
  %5161 = icmp ult i32 %5159, %5127
  %5162 = icmp ult i32 %5159, %5158
  %5163 = or i1 %5161, %5162
  %5164 = zext i1 %5163 to i8
  store i8 %5164, i8* %68, align 1
  %5165 = and i32 %5159, 255
  %5166 = tail call i32 @llvm.ctpop.i32(i32 %5165)
  %5167 = trunc i32 %5166 to i8
  %5168 = and i8 %5167, 1
  %5169 = xor i8 %5168, 1
  store i8 %5169, i8* %74, align 1
  %5170 = xor i32 %5158, %5127
  %5171 = xor i32 %5170, %5159
  %5172 = lshr i32 %5171, 4
  %5173 = trunc i32 %5172 to i8
  %5174 = and i8 %5173, 1
  store i8 %5174, i8* %79, align 1
  %5175 = icmp eq i32 %5159, 0
  %5176 = zext i1 %5175 to i8
  store i8 %5176, i8* %82, align 1
  %5177 = lshr i32 %5159, 31
  %5178 = trunc i32 %5177 to i8
  store i8 %5178, i8* %85, align 1
  %5179 = lshr i32 %5158, 31
  %5180 = xor i32 %5177, %5146
  %5181 = xor i32 %5177, %5179
  %5182 = add nuw nsw i32 %5180, %5181
  %5183 = icmp eq i32 %5182, 2
  %5184 = zext i1 %5183 to i8
  store i8 %5184, i8* %91, align 1
  %5185 = sext i32 %5159 to i64
  store i64 %5185, i64* %RCX.i2541, align 8
  %5186 = load i64, i64* %RAX.i2556, align 8
  %5187 = shl nsw i64 %5185, 2
  %5188 = add i64 %5187, %5186
  %5189 = add i64 %395, 1970
  store i64 %5189, i64* %PC.i, align 8
  %5190 = inttoptr i64 %5188 to i32*
  %5191 = load i32, i32* %5190, align 4
  %5192 = bitcast %union.VectorReg* %198 to i32*
  store i32 %5191, i32* %5192, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %5193 = add i64 %5154, -40
  %5194 = add i64 %395, 1974
  store i64 %5194, i64* %PC.i, align 8
  %5195 = inttoptr i64 %5193 to i64*
  %5196 = load i64, i64* %5195, align 8
  store i64 %5196, i64* %RAX.i2556, align 8
  %5197 = add i64 %395, 1977
  store i64 %5197, i64* %PC.i, align 8
  %5198 = inttoptr i64 %5196 to i64*
  %5199 = load i64, i64* %5198, align 8
  store i64 %5199, i64* %RAX.i2556, align 8
  %5200 = add i64 %395, 1981
  store i64 %5200, i64* %PC.i, align 8
  %5201 = load i64, i64* %5195, align 8
  store i64 %5201, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5202 = add i64 %395, 1989
  store i64 %5202, i64* %PC.i, align 8
  %5203 = load i64, i64* %5195, align 8
  store i64 %5203, i64* %RCX.i2541, align 8
  %5204 = add i64 %395, 1993
  store i64 %5204, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5205 = add i64 %395, 1997
  store i64 %5205, i64* %PC.i, align 8
  %5206 = load i64, i64* %5195, align 8
  store i64 %5206, i64* %RCX.i2541, align 8
  %5207 = add i64 %395, 2001
  store i64 %5207, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5208 = load i64, i64* %RBP.i, align 8
  %5209 = add i64 %5208, -52
  %5210 = add i64 %395, 2004
  store i64 %5210, i64* %PC.i, align 8
  %5211 = inttoptr i64 %5209 to i32*
  %5212 = load i32, i32* %5211, align 4
  %5213 = zext i32 %5212 to i64
  store i64 %5213, i64* %RSI.i2547, align 8
  %5214 = add i64 %5208, -40
  %5215 = add i64 %395, 2008
  store i64 %5215, i64* %PC.i, align 8
  %5216 = inttoptr i64 %5214 to i64*
  %5217 = load i64, i64* %5216, align 8
  store i64 %5217, i64* %RCX.i2541, align 8
  %5218 = add i64 %5217, 16
  %5219 = add i64 %395, 2012
  store i64 %5219, i64* %PC.i, align 8
  %5220 = inttoptr i64 %5218 to i32*
  %5221 = load i32, i32* %5220, align 4
  %5222 = sext i32 %5212 to i64
  %5223 = sext i32 %5221 to i64
  %5224 = mul nsw i64 %5223, %5222
  %5225 = trunc i64 %5224 to i32
  %5226 = and i64 %5224, 4294967295
  store i64 %5226, i64* %RSI.i2547, align 8
  %5227 = shl i64 %5224, 32
  %5228 = ashr exact i64 %5227, 32
  %5229 = icmp ne i64 %5228, %5224
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %68, align 1
  %5231 = and i32 %5225, 255
  %5232 = tail call i32 @llvm.ctpop.i32(i32 %5231)
  %5233 = trunc i32 %5232 to i8
  %5234 = and i8 %5233, 1
  %5235 = xor i8 %5234, 1
  store i8 %5235, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5236 = lshr i32 %5225, 31
  %5237 = trunc i32 %5236 to i8
  store i8 %5237, i8* %85, align 1
  store i8 %5230, i8* %91, align 1
  %5238 = add i64 %395, 2016
  store i64 %5238, i64* %PC.i, align 8
  %5239 = load i64, i64* %5216, align 8
  store i64 %5239, i64* %RCX.i2541, align 8
  %5240 = add i64 %5239, 20
  %5241 = add i64 %395, 2020
  store i64 %5241, i64* %PC.i, align 8
  %5242 = inttoptr i64 %5240 to i32*
  %5243 = load i32, i32* %5242, align 4
  %5244 = shl i64 %5224, 32
  %5245 = ashr exact i64 %5244, 32
  %5246 = sext i32 %5243 to i64
  %5247 = mul nsw i64 %5246, %5245
  %5248 = and i64 %5247, 4294967295
  store i64 %5248, i64* %RSI.i2547, align 8
  %5249 = trunc i64 %5247 to i32
  %5250 = and i64 %5247, 4294967295
  store i64 %5250, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5251 = and i32 %5249, 255
  %5252 = tail call i32 @llvm.ctpop.i32(i32 %5251)
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = xor i8 %5254, 1
  store i8 %5255, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5256 = icmp eq i32 %5249, 0
  %5257 = zext i1 %5256 to i8
  store i8 %5257, i8* %82, align 1
  %5258 = lshr i32 %5249, 31
  %5259 = trunc i32 %5258 to i8
  store i8 %5259, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5260 = add i64 %5208, -56
  %5261 = add i64 %395, 2025
  store i64 %5261, i64* %PC.i, align 8
  %5262 = inttoptr i64 %5260 to i32*
  %5263 = load i32, i32* %5262, align 4
  %5264 = add i32 %5263, -1
  %5265 = zext i32 %5264 to i64
  store i64 %5265, i64* %RSI.i2547, align 8
  %5266 = icmp eq i32 %5263, 0
  %5267 = zext i1 %5266 to i8
  store i8 %5267, i8* %68, align 1
  %5268 = and i32 %5264, 255
  %5269 = tail call i32 @llvm.ctpop.i32(i32 %5268)
  %5270 = trunc i32 %5269 to i8
  %5271 = and i8 %5270, 1
  %5272 = xor i8 %5271, 1
  store i8 %5272, i8* %74, align 1
  %5273 = xor i32 %5263, %5264
  %5274 = lshr i32 %5273, 4
  %5275 = trunc i32 %5274 to i8
  %5276 = and i8 %5275, 1
  store i8 %5276, i8* %79, align 1
  %5277 = icmp eq i32 %5264, 0
  %5278 = zext i1 %5277 to i8
  store i8 %5278, i8* %82, align 1
  %5279 = lshr i32 %5264, 31
  %5280 = trunc i32 %5279 to i8
  store i8 %5280, i8* %85, align 1
  %5281 = lshr i32 %5263, 31
  %5282 = xor i32 %5279, %5281
  %5283 = add nuw nsw i32 %5282, %5281
  %5284 = icmp eq i32 %5283, 2
  %5285 = zext i1 %5284 to i8
  store i8 %5285, i8* %91, align 1
  %5286 = load i64, i64* %RBP.i, align 8
  %5287 = add i64 %5286, -40
  %5288 = add i64 %395, 2032
  store i64 %5288, i64* %PC.i, align 8
  %5289 = inttoptr i64 %5287 to i64*
  %5290 = load i64, i64* %5289, align 8
  store i64 %5290, i64* %RCX.i2541, align 8
  %5291 = add i64 %5290, 20
  %5292 = add i64 %395, 2036
  store i64 %5292, i64* %PC.i, align 8
  %5293 = inttoptr i64 %5291 to i32*
  %5294 = load i32, i32* %5293, align 4
  %5295 = sext i32 %5264 to i64
  %5296 = sext i32 %5294 to i64
  %5297 = mul nsw i64 %5296, %5295
  %5298 = and i64 %5297, 4294967295
  store i64 %5298, i64* %RSI.i2547, align 8
  %5299 = trunc i64 %5297 to i32
  %5300 = add i32 %5299, %5249
  %5301 = zext i32 %5300 to i64
  store i64 %5301, i64* %RDX.i2544, align 8
  %5302 = icmp ult i32 %5300, %5249
  %5303 = icmp ult i32 %5300, %5299
  %5304 = or i1 %5302, %5303
  %5305 = zext i1 %5304 to i8
  store i8 %5305, i8* %68, align 1
  %5306 = and i32 %5300, 255
  %5307 = tail call i32 @llvm.ctpop.i32(i32 %5306)
  %5308 = trunc i32 %5307 to i8
  %5309 = and i8 %5308, 1
  %5310 = xor i8 %5309, 1
  store i8 %5310, i8* %74, align 1
  %5311 = xor i64 %5297, %5247
  %5312 = trunc i64 %5311 to i32
  %5313 = xor i32 %5312, %5300
  %5314 = lshr i32 %5313, 4
  %5315 = trunc i32 %5314 to i8
  %5316 = and i8 %5315, 1
  store i8 %5316, i8* %79, align 1
  %5317 = icmp eq i32 %5300, 0
  %5318 = zext i1 %5317 to i8
  store i8 %5318, i8* %82, align 1
  %5319 = lshr i32 %5300, 31
  %5320 = trunc i32 %5319 to i8
  store i8 %5320, i8* %85, align 1
  %5321 = lshr i32 %5299, 31
  %5322 = xor i32 %5319, %5258
  %5323 = xor i32 %5319, %5321
  %5324 = add nuw nsw i32 %5322, %5323
  %5325 = icmp eq i32 %5324, 2
  %5326 = zext i1 %5325 to i8
  store i8 %5326, i8* %91, align 1
  %5327 = add i64 %5286, -60
  %5328 = add i64 %395, 2041
  store i64 %5328, i64* %PC.i, align 8
  %5329 = inttoptr i64 %5327 to i32*
  %5330 = load i32, i32* %5329, align 4
  %5331 = add i32 %5330, %5300
  %5332 = zext i32 %5331 to i64
  store i64 %5332, i64* %RDX.i2544, align 8
  %5333 = icmp ult i32 %5331, %5300
  %5334 = icmp ult i32 %5331, %5330
  %5335 = or i1 %5333, %5334
  %5336 = zext i1 %5335 to i8
  store i8 %5336, i8* %68, align 1
  %5337 = and i32 %5331, 255
  %5338 = tail call i32 @llvm.ctpop.i32(i32 %5337)
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  %5341 = xor i8 %5340, 1
  store i8 %5341, i8* %74, align 1
  %5342 = xor i32 %5330, %5300
  %5343 = xor i32 %5342, %5331
  %5344 = lshr i32 %5343, 4
  %5345 = trunc i32 %5344 to i8
  %5346 = and i8 %5345, 1
  store i8 %5346, i8* %79, align 1
  %5347 = icmp eq i32 %5331, 0
  %5348 = zext i1 %5347 to i8
  store i8 %5348, i8* %82, align 1
  %5349 = lshr i32 %5331, 31
  %5350 = trunc i32 %5349 to i8
  store i8 %5350, i8* %85, align 1
  %5351 = lshr i32 %5330, 31
  %5352 = xor i32 %5349, %5319
  %5353 = xor i32 %5349, %5351
  %5354 = add nuw nsw i32 %5352, %5353
  %5355 = icmp eq i32 %5354, 2
  %5356 = zext i1 %5355 to i8
  store i8 %5356, i8* %91, align 1
  %5357 = sext i32 %5331 to i64
  store i64 %5357, i64* %RCX.i2541, align 8
  %5358 = load i64, i64* %RAX.i2556, align 8
  %5359 = shl nsw i64 %5357, 2
  %5360 = add i64 %5359, %5358
  %5361 = add i64 %395, 2049
  store i64 %5361, i64* %PC.i, align 8
  %5362 = load <2 x float>, <2 x float>* %207, align 1
  %5363 = load <2 x i32>, <2 x i32>* %208, align 1
  %5364 = inttoptr i64 %5360 to float*
  %5365 = load float, float* %5364, align 4
  %5366 = extractelement <2 x float> %5362, i32 0
  %5367 = fmul float %5366, %5365
  store float %5367, float* %200, align 1
  %5368 = bitcast <2 x float> %5362 to <2 x i32>
  %5369 = extractelement <2 x i32> %5368, i32 1
  store i32 %5369, i32* %209, align 1
  %5370 = extractelement <2 x i32> %5363, i32 0
  store i32 %5370, i32* %210, align 1
  %5371 = extractelement <2 x i32> %5363, i32 1
  store i32 %5371, i32* %211, align 1
  %5372 = load <2 x float>, <2 x float>* %196, align 1
  %5373 = load <2 x i32>, <2 x i32>* %197, align 1
  %5374 = load <2 x float>, <2 x float>* %212, align 1
  %5375 = extractelement <2 x float> %5372, i32 0
  %5376 = extractelement <2 x float> %5374, i32 0
  %5377 = fadd float %5375, %5376
  store float %5377, float* %192, align 1
  %5378 = bitcast <2 x float> %5372 to <2 x i32>
  %5379 = extractelement <2 x i32> %5378, i32 1
  store i32 %5379, i32* %187, align 1
  %5380 = extractelement <2 x i32> %5373, i32 0
  store i32 %5380, i32* %188, align 1
  %5381 = extractelement <2 x i32> %5373, i32 1
  store i32 %5381, i32* %190, align 1
  %5382 = load i64, i64* %RBP.i, align 8
  %5383 = add i64 %5382, -32
  %5384 = add i64 %395, 2057
  store i64 %5384, i64* %PC.i, align 8
  %5385 = inttoptr i64 %5383 to i64*
  %5386 = load i64, i64* %5385, align 8
  store i64 %5386, i64* %RAX.i2556, align 8
  %5387 = add i64 %395, 2060
  store i64 %5387, i64* %PC.i, align 8
  %5388 = inttoptr i64 %5386 to i64*
  %5389 = load i64, i64* %5388, align 8
  store i64 %5389, i64* %RAX.i2556, align 8
  %5390 = add i64 %395, 2064
  store i64 %5390, i64* %PC.i, align 8
  %5391 = load i64, i64* %5385, align 8
  store i64 %5391, i64* %RCX.i2541, align 8
  %5392 = add i64 %5391, 12
  %5393 = add i64 %395, 2067
  store i64 %5393, i64* %PC.i, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = shl i32 %5395, 1
  %5397 = icmp slt i32 %5395, 0
  %5398 = icmp slt i32 %5396, 0
  %5399 = xor i1 %5397, %5398
  %5400 = zext i32 %5396 to i64
  store i64 %5400, i64* %RDX.i2544, align 8
  %.lobit11 = lshr i32 %5395, 31
  %5401 = trunc i32 %.lobit11 to i8
  store i8 %5401, i8* %68, align 1
  %5402 = and i32 %5396, 254
  %5403 = tail call i32 @llvm.ctpop.i32(i32 %5402)
  %5404 = trunc i32 %5403 to i8
  %5405 = and i8 %5404, 1
  %5406 = xor i8 %5405, 1
  store i8 %5406, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5407 = icmp eq i32 %5396, 0
  %5408 = zext i1 %5407 to i8
  store i8 %5408, i8* %82, align 1
  %5409 = lshr i32 %5395, 30
  %5410 = trunc i32 %5409 to i8
  %5411 = and i8 %5410, 1
  store i8 %5411, i8* %85, align 1
  %5412 = zext i1 %5399 to i8
  store i8 %5412, i8* %91, align 1
  %5413 = add i64 %395, 2073
  store i64 %5413, i64* %PC.i, align 8
  %5414 = load i64, i64* %5385, align 8
  store i64 %5414, i64* %RCX.i2541, align 8
  %5415 = add i64 %5414, 16
  %5416 = add i64 %395, 2077
  store i64 %5416, i64* %PC.i, align 8
  %5417 = inttoptr i64 %5415 to i32*
  %5418 = load i32, i32* %5417, align 4
  %5419 = sext i32 %5396 to i64
  %5420 = sext i32 %5418 to i64
  %5421 = mul nsw i64 %5420, %5419
  %5422 = trunc i64 %5421 to i32
  %5423 = and i64 %5421, 4294967294
  store i64 %5423, i64* %RDX.i2544, align 8
  %5424 = shl i64 %5421, 32
  %5425 = ashr exact i64 %5424, 32
  %5426 = icmp ne i64 %5425, %5421
  %5427 = zext i1 %5426 to i8
  store i8 %5427, i8* %68, align 1
  %5428 = and i32 %5422, 254
  %5429 = tail call i32 @llvm.ctpop.i32(i32 %5428)
  %5430 = trunc i32 %5429 to i8
  %5431 = and i8 %5430, 1
  %5432 = xor i8 %5431, 1
  store i8 %5432, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5433 = lshr i32 %5422, 31
  %5434 = trunc i32 %5433 to i8
  store i8 %5434, i8* %85, align 1
  store i8 %5427, i8* %91, align 1
  %5435 = add i64 %395, 2081
  store i64 %5435, i64* %PC.i, align 8
  %5436 = load i64, i64* %5385, align 8
  store i64 %5436, i64* %RCX.i2541, align 8
  %5437 = add i64 %5436, 20
  %5438 = add i64 %395, 2085
  store i64 %5438, i64* %PC.i, align 8
  %5439 = inttoptr i64 %5437 to i32*
  %5440 = load i32, i32* %5439, align 4
  %5441 = shl i64 %5421, 32
  %5442 = ashr exact i64 %5441, 32
  %5443 = sext i32 %5440 to i64
  %5444 = mul nsw i64 %5443, %5442
  %5445 = trunc i64 %5444 to i32
  %5446 = and i64 %5444, 4294967295
  store i64 %5446, i64* %RDX.i2544, align 8
  %5447 = shl i64 %5444, 32
  %5448 = ashr exact i64 %5447, 32
  %5449 = icmp ne i64 %5448, %5444
  %5450 = zext i1 %5449 to i8
  store i8 %5450, i8* %68, align 1
  %5451 = and i32 %5445, 255
  %5452 = tail call i32 @llvm.ctpop.i32(i32 %5451)
  %5453 = trunc i32 %5452 to i8
  %5454 = and i8 %5453, 1
  %5455 = xor i8 %5454, 1
  store i8 %5455, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5456 = lshr i32 %5445, 31
  %5457 = trunc i32 %5456 to i8
  store i8 %5457, i8* %85, align 1
  store i8 %5450, i8* %91, align 1
  %5458 = load i64, i64* %RBP.i, align 8
  %5459 = add i64 %5458, -52
  %5460 = add i64 %395, 2088
  store i64 %5460, i64* %PC.i, align 8
  %5461 = inttoptr i64 %5459 to i32*
  %5462 = load i32, i32* %5461, align 4
  %5463 = zext i32 %5462 to i64
  store i64 %5463, i64* %RSI.i2547, align 8
  %5464 = add i64 %5458, -32
  %5465 = add i64 %395, 2092
  store i64 %5465, i64* %PC.i, align 8
  %5466 = inttoptr i64 %5464 to i64*
  %5467 = load i64, i64* %5466, align 8
  store i64 %5467, i64* %RCX.i2541, align 8
  %5468 = add i64 %5467, 16
  %5469 = add i64 %395, 2096
  store i64 %5469, i64* %PC.i, align 8
  %5470 = inttoptr i64 %5468 to i32*
  %5471 = load i32, i32* %5470, align 4
  %5472 = sext i32 %5462 to i64
  %5473 = sext i32 %5471 to i64
  %5474 = mul nsw i64 %5473, %5472
  %5475 = trunc i64 %5474 to i32
  %5476 = and i64 %5474, 4294967295
  store i64 %5476, i64* %RSI.i2547, align 8
  %5477 = shl i64 %5474, 32
  %5478 = ashr exact i64 %5477, 32
  %5479 = icmp ne i64 %5478, %5474
  %5480 = zext i1 %5479 to i8
  store i8 %5480, i8* %68, align 1
  %5481 = and i32 %5475, 255
  %5482 = tail call i32 @llvm.ctpop.i32(i32 %5481)
  %5483 = trunc i32 %5482 to i8
  %5484 = and i8 %5483, 1
  %5485 = xor i8 %5484, 1
  store i8 %5485, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5486 = lshr i32 %5475, 31
  %5487 = trunc i32 %5486 to i8
  store i8 %5487, i8* %85, align 1
  store i8 %5480, i8* %91, align 1
  %5488 = add i64 %395, 2100
  store i64 %5488, i64* %PC.i, align 8
  %5489 = load i64, i64* %5466, align 8
  store i64 %5489, i64* %RCX.i2541, align 8
  %5490 = add i64 %5489, 20
  %5491 = add i64 %395, 2104
  store i64 %5491, i64* %PC.i, align 8
  %5492 = inttoptr i64 %5490 to i32*
  %5493 = load i32, i32* %5492, align 4
  %5494 = shl i64 %5474, 32
  %5495 = ashr exact i64 %5494, 32
  %5496 = sext i32 %5493 to i64
  %5497 = mul nsw i64 %5496, %5495
  %5498 = and i64 %5497, 4294967295
  store i64 %5498, i64* %RSI.i2547, align 8
  %5499 = trunc i64 %5497 to i32
  %5500 = trunc i64 %5444 to i32
  %5501 = add i32 %5499, %5500
  %5502 = zext i32 %5501 to i64
  store i64 %5502, i64* %RDX.i2544, align 8
  %5503 = icmp ult i32 %5501, %5500
  %5504 = icmp ult i32 %5501, %5499
  %5505 = or i1 %5503, %5504
  %5506 = zext i1 %5505 to i8
  store i8 %5506, i8* %68, align 1
  %5507 = and i32 %5501, 255
  %5508 = tail call i32 @llvm.ctpop.i32(i32 %5507)
  %5509 = trunc i32 %5508 to i8
  %5510 = and i8 %5509, 1
  %5511 = xor i8 %5510, 1
  store i8 %5511, i8* %74, align 1
  %5512 = xor i64 %5497, %5444
  %5513 = trunc i64 %5512 to i32
  %5514 = xor i32 %5513, %5501
  %5515 = lshr i32 %5514, 4
  %5516 = trunc i32 %5515 to i8
  %5517 = and i8 %5516, 1
  store i8 %5517, i8* %79, align 1
  %5518 = icmp eq i32 %5501, 0
  %5519 = zext i1 %5518 to i8
  store i8 %5519, i8* %82, align 1
  %5520 = lshr i32 %5501, 31
  %5521 = trunc i32 %5520 to i8
  store i8 %5521, i8* %85, align 1
  %5522 = lshr i32 %5500, 31
  %5523 = lshr i32 %5499, 31
  %5524 = xor i32 %5520, %5522
  %5525 = xor i32 %5520, %5523
  %5526 = add nuw nsw i32 %5524, %5525
  %5527 = icmp eq i32 %5526, 2
  %5528 = zext i1 %5527 to i8
  store i8 %5528, i8* %91, align 1
  %5529 = load i64, i64* %RBP.i, align 8
  %5530 = add i64 %5529, -56
  %5531 = add i64 %395, 2109
  store i64 %5531, i64* %PC.i, align 8
  %5532 = inttoptr i64 %5530 to i32*
  %5533 = load i32, i32* %5532, align 4
  %5534 = zext i32 %5533 to i64
  store i64 %5534, i64* %RSI.i2547, align 8
  %5535 = add i64 %5529, -32
  %5536 = add i64 %395, 2113
  store i64 %5536, i64* %PC.i, align 8
  %5537 = inttoptr i64 %5535 to i64*
  %5538 = load i64, i64* %5537, align 8
  store i64 %5538, i64* %RCX.i2541, align 8
  %5539 = add i64 %5538, 20
  %5540 = add i64 %395, 2117
  store i64 %5540, i64* %PC.i, align 8
  %5541 = inttoptr i64 %5539 to i32*
  %5542 = load i32, i32* %5541, align 4
  %5543 = sext i32 %5533 to i64
  %5544 = sext i32 %5542 to i64
  %5545 = mul nsw i64 %5544, %5543
  %5546 = and i64 %5545, 4294967295
  store i64 %5546, i64* %RSI.i2547, align 8
  %5547 = trunc i64 %5545 to i32
  %5548 = add i32 %5547, %5501
  %5549 = zext i32 %5548 to i64
  store i64 %5549, i64* %RDX.i2544, align 8
  %5550 = icmp ult i32 %5548, %5501
  %5551 = icmp ult i32 %5548, %5547
  %5552 = or i1 %5550, %5551
  %5553 = zext i1 %5552 to i8
  store i8 %5553, i8* %68, align 1
  %5554 = and i32 %5548, 255
  %5555 = tail call i32 @llvm.ctpop.i32(i32 %5554)
  %5556 = trunc i32 %5555 to i8
  %5557 = and i8 %5556, 1
  %5558 = xor i8 %5557, 1
  store i8 %5558, i8* %74, align 1
  %5559 = xor i64 %5545, %5502
  %5560 = trunc i64 %5559 to i32
  %5561 = xor i32 %5560, %5548
  %5562 = lshr i32 %5561, 4
  %5563 = trunc i32 %5562 to i8
  %5564 = and i8 %5563, 1
  store i8 %5564, i8* %79, align 1
  %5565 = icmp eq i32 %5548, 0
  %5566 = zext i1 %5565 to i8
  store i8 %5566, i8* %82, align 1
  %5567 = lshr i32 %5548, 31
  %5568 = trunc i32 %5567 to i8
  store i8 %5568, i8* %85, align 1
  %5569 = lshr i32 %5547, 31
  %5570 = xor i32 %5567, %5520
  %5571 = xor i32 %5567, %5569
  %5572 = add nuw nsw i32 %5570, %5571
  %5573 = icmp eq i32 %5572, 2
  %5574 = zext i1 %5573 to i8
  store i8 %5574, i8* %91, align 1
  %5575 = add i64 %5529, -60
  %5576 = add i64 %395, 2122
  store i64 %5576, i64* %PC.i, align 8
  %5577 = inttoptr i64 %5575 to i32*
  %5578 = load i32, i32* %5577, align 4
  %5579 = add i32 %5578, %5548
  %5580 = zext i32 %5579 to i64
  store i64 %5580, i64* %RDX.i2544, align 8
  %5581 = icmp ult i32 %5579, %5548
  %5582 = icmp ult i32 %5579, %5578
  %5583 = or i1 %5581, %5582
  %5584 = zext i1 %5583 to i8
  store i8 %5584, i8* %68, align 1
  %5585 = and i32 %5579, 255
  %5586 = tail call i32 @llvm.ctpop.i32(i32 %5585)
  %5587 = trunc i32 %5586 to i8
  %5588 = and i8 %5587, 1
  %5589 = xor i8 %5588, 1
  store i8 %5589, i8* %74, align 1
  %5590 = xor i32 %5578, %5548
  %5591 = xor i32 %5590, %5579
  %5592 = lshr i32 %5591, 4
  %5593 = trunc i32 %5592 to i8
  %5594 = and i8 %5593, 1
  store i8 %5594, i8* %79, align 1
  %5595 = icmp eq i32 %5579, 0
  %5596 = zext i1 %5595 to i8
  store i8 %5596, i8* %82, align 1
  %5597 = lshr i32 %5579, 31
  %5598 = trunc i32 %5597 to i8
  store i8 %5598, i8* %85, align 1
  %5599 = lshr i32 %5578, 31
  %5600 = xor i32 %5597, %5567
  %5601 = xor i32 %5597, %5599
  %5602 = add nuw nsw i32 %5600, %5601
  %5603 = icmp eq i32 %5602, 2
  %5604 = zext i1 %5603 to i8
  store i8 %5604, i8* %91, align 1
  %5605 = sext i32 %5579 to i64
  store i64 %5605, i64* %RCX.i2541, align 8
  %5606 = load i64, i64* %RAX.i2556, align 8
  %5607 = shl nsw i64 %5605, 2
  %5608 = add i64 %5607, %5606
  %5609 = add i64 %395, 2130
  store i64 %5609, i64* %PC.i, align 8
  %5610 = inttoptr i64 %5608 to i32*
  %5611 = load i32, i32* %5610, align 4
  %5612 = bitcast %union.VectorReg* %198 to i32*
  store i32 %5611, i32* %5612, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %5613 = load i64, i64* %RBP.i, align 8
  %5614 = add i64 %5613, -40
  %5615 = add i64 %395, 2134
  store i64 %5615, i64* %PC.i, align 8
  %5616 = inttoptr i64 %5614 to i64*
  %5617 = load i64, i64* %5616, align 8
  store i64 %5617, i64* %RAX.i2556, align 8
  %5618 = add i64 %395, 2137
  store i64 %5618, i64* %PC.i, align 8
  %5619 = inttoptr i64 %5617 to i64*
  %5620 = load i64, i64* %5619, align 8
  store i64 %5620, i64* %RAX.i2556, align 8
  %5621 = add i64 %395, 2141
  store i64 %5621, i64* %PC.i, align 8
  %5622 = load i64, i64* %5616, align 8
  store i64 %5622, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5623 = add i64 %395, 2149
  store i64 %5623, i64* %PC.i, align 8
  %5624 = load i64, i64* %5616, align 8
  store i64 %5624, i64* %RCX.i2541, align 8
  %5625 = add i64 %395, 2153
  store i64 %5625, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5626 = add i64 %395, 2157
  store i64 %5626, i64* %PC.i, align 8
  %5627 = load i64, i64* %5616, align 8
  store i64 %5627, i64* %RCX.i2541, align 8
  %5628 = add i64 %395, 2161
  store i64 %5628, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5629 = add i64 %5613, -52
  %5630 = add i64 %395, 2164
  store i64 %5630, i64* %PC.i, align 8
  %5631 = inttoptr i64 %5629 to i32*
  %5632 = load i32, i32* %5631, align 4
  %5633 = zext i32 %5632 to i64
  store i64 %5633, i64* %RSI.i2547, align 8
  %5634 = add i64 %395, 2168
  store i64 %5634, i64* %PC.i, align 8
  %5635 = load i64, i64* %5616, align 8
  store i64 %5635, i64* %RCX.i2541, align 8
  %5636 = add i64 %5635, 16
  %5637 = add i64 %395, 2172
  store i64 %5637, i64* %PC.i, align 8
  %5638 = inttoptr i64 %5636 to i32*
  %5639 = load i32, i32* %5638, align 4
  %5640 = sext i32 %5632 to i64
  %5641 = sext i32 %5639 to i64
  %5642 = mul nsw i64 %5641, %5640
  %5643 = trunc i64 %5642 to i32
  %5644 = and i64 %5642, 4294967295
  store i64 %5644, i64* %RSI.i2547, align 8
  %5645 = shl i64 %5642, 32
  %5646 = ashr exact i64 %5645, 32
  %5647 = icmp ne i64 %5646, %5642
  %5648 = zext i1 %5647 to i8
  store i8 %5648, i8* %68, align 1
  %5649 = and i32 %5643, 255
  %5650 = tail call i32 @llvm.ctpop.i32(i32 %5649)
  %5651 = trunc i32 %5650 to i8
  %5652 = and i8 %5651, 1
  %5653 = xor i8 %5652, 1
  store i8 %5653, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5654 = lshr i32 %5643, 31
  %5655 = trunc i32 %5654 to i8
  store i8 %5655, i8* %85, align 1
  store i8 %5648, i8* %91, align 1
  %5656 = add i64 %395, 2176
  store i64 %5656, i64* %PC.i, align 8
  %5657 = load i64, i64* %5616, align 8
  store i64 %5657, i64* %RCX.i2541, align 8
  %5658 = add i64 %5657, 20
  %5659 = add i64 %395, 2180
  store i64 %5659, i64* %PC.i, align 8
  %5660 = inttoptr i64 %5658 to i32*
  %5661 = load i32, i32* %5660, align 4
  %5662 = shl i64 %5642, 32
  %5663 = ashr exact i64 %5662, 32
  %5664 = sext i32 %5661 to i64
  %5665 = mul nsw i64 %5664, %5663
  %5666 = and i64 %5665, 4294967295
  store i64 %5666, i64* %RSI.i2547, align 8
  %5667 = trunc i64 %5665 to i32
  %5668 = and i64 %5665, 4294967295
  store i64 %5668, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5669 = and i32 %5667, 255
  %5670 = tail call i32 @llvm.ctpop.i32(i32 %5669)
  %5671 = trunc i32 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = xor i8 %5672, 1
  store i8 %5673, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5674 = icmp eq i32 %5667, 0
  %5675 = zext i1 %5674 to i8
  store i8 %5675, i8* %82, align 1
  %5676 = lshr i32 %5667, 31
  %5677 = trunc i32 %5676 to i8
  store i8 %5677, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5678 = load i64, i64* %RBP.i, align 8
  %5679 = add i64 %5678, -56
  %5680 = add i64 %395, 2185
  store i64 %5680, i64* %PC.i, align 8
  %5681 = inttoptr i64 %5679 to i32*
  %5682 = load i32, i32* %5681, align 4
  %5683 = zext i32 %5682 to i64
  store i64 %5683, i64* %RSI.i2547, align 8
  %5684 = add i64 %5678, -40
  %5685 = add i64 %395, 2189
  store i64 %5685, i64* %PC.i, align 8
  %5686 = inttoptr i64 %5684 to i64*
  %5687 = load i64, i64* %5686, align 8
  store i64 %5687, i64* %RCX.i2541, align 8
  %5688 = add i64 %5687, 20
  %5689 = add i64 %395, 2193
  store i64 %5689, i64* %PC.i, align 8
  %5690 = inttoptr i64 %5688 to i32*
  %5691 = load i32, i32* %5690, align 4
  %5692 = sext i32 %5682 to i64
  %5693 = sext i32 %5691 to i64
  %5694 = mul nsw i64 %5693, %5692
  %5695 = and i64 %5694, 4294967295
  store i64 %5695, i64* %RSI.i2547, align 8
  %5696 = trunc i64 %5694 to i32
  %5697 = add i32 %5696, %5667
  %5698 = zext i32 %5697 to i64
  store i64 %5698, i64* %RDX.i2544, align 8
  %5699 = icmp ult i32 %5697, %5667
  %5700 = icmp ult i32 %5697, %5696
  %5701 = or i1 %5699, %5700
  %5702 = zext i1 %5701 to i8
  store i8 %5702, i8* %68, align 1
  %5703 = and i32 %5697, 255
  %5704 = tail call i32 @llvm.ctpop.i32(i32 %5703)
  %5705 = trunc i32 %5704 to i8
  %5706 = and i8 %5705, 1
  %5707 = xor i8 %5706, 1
  store i8 %5707, i8* %74, align 1
  %5708 = xor i64 %5694, %5665
  %5709 = trunc i64 %5708 to i32
  %5710 = xor i32 %5709, %5697
  %5711 = lshr i32 %5710, 4
  %5712 = trunc i32 %5711 to i8
  %5713 = and i8 %5712, 1
  store i8 %5713, i8* %79, align 1
  %5714 = icmp eq i32 %5697, 0
  %5715 = zext i1 %5714 to i8
  store i8 %5715, i8* %82, align 1
  %5716 = lshr i32 %5697, 31
  %5717 = trunc i32 %5716 to i8
  store i8 %5717, i8* %85, align 1
  %5718 = lshr i32 %5696, 31
  %5719 = xor i32 %5716, %5676
  %5720 = xor i32 %5716, %5718
  %5721 = add nuw nsw i32 %5719, %5720
  %5722 = icmp eq i32 %5721, 2
  %5723 = zext i1 %5722 to i8
  store i8 %5723, i8* %91, align 1
  %5724 = add i64 %5678, -60
  %5725 = add i64 %395, 2198
  store i64 %5725, i64* %PC.i, align 8
  %5726 = inttoptr i64 %5724 to i32*
  %5727 = load i32, i32* %5726, align 4
  %5728 = add i32 %5727, -1
  %5729 = zext i32 %5728 to i64
  store i64 %5729, i64* %RSI.i2547, align 8
  %5730 = lshr i32 %5728, 31
  %5731 = add i32 %5728, %5697
  %5732 = zext i32 %5731 to i64
  store i64 %5732, i64* %RDX.i2544, align 8
  %5733 = icmp ult i32 %5731, %5697
  %5734 = icmp ult i32 %5731, %5728
  %5735 = or i1 %5733, %5734
  %5736 = zext i1 %5735 to i8
  store i8 %5736, i8* %68, align 1
  %5737 = and i32 %5731, 255
  %5738 = tail call i32 @llvm.ctpop.i32(i32 %5737)
  %5739 = trunc i32 %5738 to i8
  %5740 = and i8 %5739, 1
  %5741 = xor i8 %5740, 1
  store i8 %5741, i8* %74, align 1
  %5742 = xor i32 %5728, %5697
  %5743 = xor i32 %5742, %5731
  %5744 = lshr i32 %5743, 4
  %5745 = trunc i32 %5744 to i8
  %5746 = and i8 %5745, 1
  store i8 %5746, i8* %79, align 1
  %5747 = icmp eq i32 %5731, 0
  %5748 = zext i1 %5747 to i8
  store i8 %5748, i8* %82, align 1
  %5749 = lshr i32 %5731, 31
  %5750 = trunc i32 %5749 to i8
  store i8 %5750, i8* %85, align 1
  %5751 = xor i32 %5749, %5716
  %5752 = xor i32 %5749, %5730
  %5753 = add nuw nsw i32 %5751, %5752
  %5754 = icmp eq i32 %5753, 2
  %5755 = zext i1 %5754 to i8
  store i8 %5755, i8* %91, align 1
  %5756 = sext i32 %5731 to i64
  store i64 %5756, i64* %RCX.i2541, align 8
  %5757 = load i64, i64* %RAX.i2556, align 8
  %5758 = shl nsw i64 %5756, 2
  %5759 = add i64 %5758, %5757
  %5760 = add i64 %395, 2211
  store i64 %5760, i64* %PC.i, align 8
  %5761 = load <2 x float>, <2 x float>* %207, align 1
  %5762 = load <2 x i32>, <2 x i32>* %208, align 1
  %5763 = inttoptr i64 %5759 to float*
  %5764 = load float, float* %5763, align 4
  %5765 = extractelement <2 x float> %5761, i32 0
  %5766 = fmul float %5765, %5764
  store float %5766, float* %200, align 1
  %5767 = bitcast <2 x float> %5761 to <2 x i32>
  %5768 = extractelement <2 x i32> %5767, i32 1
  store i32 %5768, i32* %209, align 1
  %5769 = extractelement <2 x i32> %5762, i32 0
  store i32 %5769, i32* %210, align 1
  %5770 = extractelement <2 x i32> %5762, i32 1
  store i32 %5770, i32* %211, align 1
  %5771 = load <2 x float>, <2 x float>* %196, align 1
  %5772 = load <2 x i32>, <2 x i32>* %197, align 1
  %5773 = load <2 x float>, <2 x float>* %212, align 1
  %5774 = extractelement <2 x float> %5771, i32 0
  %5775 = extractelement <2 x float> %5773, i32 0
  %5776 = fadd float %5774, %5775
  store float %5776, float* %192, align 1
  %5777 = bitcast <2 x float> %5771 to <2 x i32>
  %5778 = extractelement <2 x i32> %5777, i32 1
  store i32 %5778, i32* %187, align 1
  %5779 = extractelement <2 x i32> %5772, i32 0
  store i32 %5779, i32* %188, align 1
  %5780 = extractelement <2 x i32> %5772, i32 1
  store i32 %5780, i32* %190, align 1
  %5781 = load i64, i64* %RBP.i, align 8
  %5782 = add i64 %5781, 16
  %5783 = add i64 %395, 2219
  store i64 %5783, i64* %PC.i, align 8
  %5784 = inttoptr i64 %5782 to i64*
  %5785 = load i64, i64* %5784, align 8
  store i64 %5785, i64* %RAX.i2556, align 8
  %5786 = add i64 %395, 2222
  store i64 %5786, i64* %PC.i, align 8
  %5787 = inttoptr i64 %5785 to i64*
  %5788 = load i64, i64* %5787, align 8
  store i64 %5788, i64* %RAX.i2556, align 8
  %5789 = add i64 %395, 2226
  store i64 %5789, i64* %PC.i, align 8
  %5790 = load i64, i64* %5784, align 8
  store i64 %5790, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5791 = add i64 %395, 2234
  store i64 %5791, i64* %PC.i, align 8
  %5792 = load i64, i64* %5784, align 8
  store i64 %5792, i64* %RCX.i2541, align 8
  %5793 = add i64 %395, 2238
  store i64 %5793, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5794 = add i64 %395, 2242
  store i64 %5794, i64* %PC.i, align 8
  %5795 = load i64, i64* %5784, align 8
  store i64 %5795, i64* %RCX.i2541, align 8
  %5796 = add i64 %395, 2246
  store i64 %5796, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5797 = add i64 %5781, -52
  %5798 = add i64 %395, 2249
  store i64 %5798, i64* %PC.i, align 8
  %5799 = inttoptr i64 %5797 to i32*
  %5800 = load i32, i32* %5799, align 4
  %5801 = zext i32 %5800 to i64
  store i64 %5801, i64* %RSI.i2547, align 8
  %5802 = add i64 %395, 2253
  store i64 %5802, i64* %PC.i, align 8
  %5803 = load i64, i64* %5784, align 8
  store i64 %5803, i64* %RCX.i2541, align 8
  %5804 = add i64 %5803, 16
  %5805 = add i64 %395, 2257
  store i64 %5805, i64* %PC.i, align 8
  %5806 = inttoptr i64 %5804 to i32*
  %5807 = load i32, i32* %5806, align 4
  %5808 = sext i32 %5800 to i64
  %5809 = sext i32 %5807 to i64
  %5810 = mul nsw i64 %5809, %5808
  %5811 = trunc i64 %5810 to i32
  %5812 = and i64 %5810, 4294967295
  store i64 %5812, i64* %RSI.i2547, align 8
  %5813 = shl i64 %5810, 32
  %5814 = ashr exact i64 %5813, 32
  %5815 = icmp ne i64 %5814, %5810
  %5816 = zext i1 %5815 to i8
  store i8 %5816, i8* %68, align 1
  %5817 = and i32 %5811, 255
  %5818 = tail call i32 @llvm.ctpop.i32(i32 %5817)
  %5819 = trunc i32 %5818 to i8
  %5820 = and i8 %5819, 1
  %5821 = xor i8 %5820, 1
  store i8 %5821, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5822 = lshr i32 %5811, 31
  %5823 = trunc i32 %5822 to i8
  store i8 %5823, i8* %85, align 1
  store i8 %5816, i8* %91, align 1
  %5824 = add i64 %395, 2261
  store i64 %5824, i64* %PC.i, align 8
  %5825 = load i64, i64* %5784, align 8
  store i64 %5825, i64* %RCX.i2541, align 8
  %5826 = add i64 %5825, 20
  %5827 = add i64 %395, 2265
  store i64 %5827, i64* %PC.i, align 8
  %5828 = inttoptr i64 %5826 to i32*
  %5829 = load i32, i32* %5828, align 4
  %5830 = shl i64 %5810, 32
  %5831 = ashr exact i64 %5830, 32
  %5832 = sext i32 %5829 to i64
  %5833 = mul nsw i64 %5832, %5831
  %5834 = and i64 %5833, 4294967295
  store i64 %5834, i64* %RSI.i2547, align 8
  %5835 = trunc i64 %5833 to i32
  %5836 = and i64 %5833, 4294967295
  store i64 %5836, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5837 = and i32 %5835, 255
  %5838 = tail call i32 @llvm.ctpop.i32(i32 %5837)
  %5839 = trunc i32 %5838 to i8
  %5840 = and i8 %5839, 1
  %5841 = xor i8 %5840, 1
  store i8 %5841, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5842 = icmp eq i32 %5835, 0
  %5843 = zext i1 %5842 to i8
  store i8 %5843, i8* %82, align 1
  %5844 = lshr i32 %5835, 31
  %5845 = trunc i32 %5844 to i8
  store i8 %5845, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5846 = load i64, i64* %RBP.i, align 8
  %5847 = add i64 %5846, -56
  %5848 = add i64 %395, 2270
  store i64 %5848, i64* %PC.i, align 8
  %5849 = inttoptr i64 %5847 to i32*
  %5850 = load i32, i32* %5849, align 4
  %5851 = zext i32 %5850 to i64
  store i64 %5851, i64* %RSI.i2547, align 8
  %5852 = add i64 %5846, 16
  %5853 = add i64 %395, 2274
  store i64 %5853, i64* %PC.i, align 8
  %5854 = inttoptr i64 %5852 to i64*
  %5855 = load i64, i64* %5854, align 8
  store i64 %5855, i64* %RCX.i2541, align 8
  %5856 = add i64 %5855, 20
  %5857 = add i64 %395, 2278
  store i64 %5857, i64* %PC.i, align 8
  %5858 = inttoptr i64 %5856 to i32*
  %5859 = load i32, i32* %5858, align 4
  %5860 = sext i32 %5850 to i64
  %5861 = sext i32 %5859 to i64
  %5862 = mul nsw i64 %5861, %5860
  %5863 = and i64 %5862, 4294967295
  store i64 %5863, i64* %RSI.i2547, align 8
  %5864 = trunc i64 %5862 to i32
  %5865 = add i32 %5864, %5835
  %5866 = zext i32 %5865 to i64
  store i64 %5866, i64* %RDX.i2544, align 8
  %5867 = icmp ult i32 %5865, %5835
  %5868 = icmp ult i32 %5865, %5864
  %5869 = or i1 %5867, %5868
  %5870 = zext i1 %5869 to i8
  store i8 %5870, i8* %68, align 1
  %5871 = and i32 %5865, 255
  %5872 = tail call i32 @llvm.ctpop.i32(i32 %5871)
  %5873 = trunc i32 %5872 to i8
  %5874 = and i8 %5873, 1
  %5875 = xor i8 %5874, 1
  store i8 %5875, i8* %74, align 1
  %5876 = xor i64 %5862, %5833
  %5877 = trunc i64 %5876 to i32
  %5878 = xor i32 %5877, %5865
  %5879 = lshr i32 %5878, 4
  %5880 = trunc i32 %5879 to i8
  %5881 = and i8 %5880, 1
  store i8 %5881, i8* %79, align 1
  %5882 = icmp eq i32 %5865, 0
  %5883 = zext i1 %5882 to i8
  store i8 %5883, i8* %82, align 1
  %5884 = lshr i32 %5865, 31
  %5885 = trunc i32 %5884 to i8
  store i8 %5885, i8* %85, align 1
  %5886 = lshr i32 %5864, 31
  %5887 = xor i32 %5884, %5844
  %5888 = xor i32 %5884, %5886
  %5889 = add nuw nsw i32 %5887, %5888
  %5890 = icmp eq i32 %5889, 2
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %91, align 1
  %5892 = add i64 %5846, -60
  %5893 = add i64 %395, 2283
  store i64 %5893, i64* %PC.i, align 8
  %5894 = inttoptr i64 %5892 to i32*
  %5895 = load i32, i32* %5894, align 4
  %5896 = add i32 %5895, %5865
  %5897 = zext i32 %5896 to i64
  store i64 %5897, i64* %RDX.i2544, align 8
  %5898 = icmp ult i32 %5896, %5865
  %5899 = icmp ult i32 %5896, %5895
  %5900 = or i1 %5898, %5899
  %5901 = zext i1 %5900 to i8
  store i8 %5901, i8* %68, align 1
  %5902 = and i32 %5896, 255
  %5903 = tail call i32 @llvm.ctpop.i32(i32 %5902)
  %5904 = trunc i32 %5903 to i8
  %5905 = and i8 %5904, 1
  %5906 = xor i8 %5905, 1
  store i8 %5906, i8* %74, align 1
  %5907 = xor i32 %5895, %5865
  %5908 = xor i32 %5907, %5896
  %5909 = lshr i32 %5908, 4
  %5910 = trunc i32 %5909 to i8
  %5911 = and i8 %5910, 1
  store i8 %5911, i8* %79, align 1
  %5912 = icmp eq i32 %5896, 0
  %5913 = zext i1 %5912 to i8
  store i8 %5913, i8* %82, align 1
  %5914 = lshr i32 %5896, 31
  %5915 = trunc i32 %5914 to i8
  store i8 %5915, i8* %85, align 1
  %5916 = lshr i32 %5895, 31
  %5917 = xor i32 %5914, %5884
  %5918 = xor i32 %5914, %5916
  %5919 = add nuw nsw i32 %5917, %5918
  %5920 = icmp eq i32 %5919, 2
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %91, align 1
  %5922 = sext i32 %5896 to i64
  store i64 %5922, i64* %RCX.i2541, align 8
  %5923 = load i64, i64* %RAX.i2556, align 8
  %5924 = shl nsw i64 %5922, 2
  %5925 = add i64 %5924, %5923
  %5926 = add i64 %395, 2291
  store i64 %5926, i64* %PC.i, align 8
  %5927 = load <2 x float>, <2 x float>* %196, align 1
  %5928 = load <2 x i32>, <2 x i32>* %197, align 1
  %5929 = inttoptr i64 %5925 to float*
  %5930 = load float, float* %5929, align 4
  %5931 = extractelement <2 x float> %5927, i32 0
  %5932 = fadd float %5931, %5930
  store float %5932, float* %192, align 1
  %5933 = bitcast <2 x float> %5927 to <2 x i32>
  %5934 = extractelement <2 x i32> %5933, i32 1
  store i32 %5934, i32* %187, align 1
  %5935 = extractelement <2 x i32> %5928, i32 0
  store i32 %5935, i32* %188, align 1
  %5936 = extractelement <2 x i32> %5928, i32 1
  store i32 %5936, i32* %190, align 1
  %5937 = load i64, i64* %RBP.i, align 8
  %5938 = add i64 %5937, -84
  %5939 = add i64 %395, 2296
  store i64 %5939, i64* %PC.i, align 8
  %5940 = load <2 x float>, <2 x float>* %191, align 1
  %5941 = extractelement <2 x float> %5940, i32 0
  %5942 = inttoptr i64 %5938 to float*
  store float %5941, float* %5942, align 4
  %5943 = load i64, i64* %RBP.i, align 8
  %5944 = add i64 %5943, -84
  %5945 = load i64, i64* %PC.i, align 8
  %5946 = add i64 %5945, 5
  store i64 %5946, i64* %PC.i, align 8
  %5947 = inttoptr i64 %5944 to i32*
  %5948 = load i32, i32* %5947, align 4
  %5949 = bitcast [32 x %union.VectorReg]* %182 to i32*
  store i32 %5948, i32* %5949, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %5950 = add i64 %5943, -16
  %5951 = add i64 %5945, 9
  store i64 %5951, i64* %PC.i, align 8
  %5952 = inttoptr i64 %5950 to i64*
  %5953 = load i64, i64* %5952, align 8
  store i64 %5953, i64* %RAX.i2556, align 8
  %5954 = add i64 %5945, 12
  store i64 %5954, i64* %PC.i, align 8
  %5955 = inttoptr i64 %5953 to i64*
  %5956 = load i64, i64* %5955, align 8
  store i64 %5956, i64* %RAX.i2556, align 8
  %5957 = add i64 %5945, 16
  store i64 %5957, i64* %PC.i, align 8
  %5958 = load i64, i64* %5952, align 8
  store i64 %5958, i64* %RCX.i2541, align 8
  %5959 = add i64 %5958, 12
  %5960 = add i64 %5945, 20
  store i64 %5960, i64* %PC.i, align 8
  %5961 = inttoptr i64 %5959 to i32*
  %5962 = load i32, i32* %5961, align 4
  %5963 = sext i32 %5962 to i64
  %5964 = mul nsw i64 %5963, 3
  %5965 = trunc i64 %5964 to i32
  %5966 = and i64 %5964, 4294967295
  store i64 %5966, i64* %RDX.i2544, align 8
  %5967 = mul i64 %5963, 12884901888
  %5968 = ashr exact i64 %5967, 32
  %5969 = icmp ne i64 %5968, %5964
  %5970 = zext i1 %5969 to i8
  store i8 %5970, i8* %68, align 1
  %5971 = and i32 %5965, 255
  %5972 = tail call i32 @llvm.ctpop.i32(i32 %5971)
  %5973 = trunc i32 %5972 to i8
  %5974 = and i8 %5973, 1
  %5975 = xor i8 %5974, 1
  store i8 %5975, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5976 = lshr i32 %5965, 31
  %5977 = trunc i32 %5976 to i8
  store i8 %5977, i8* %85, align 1
  store i8 %5970, i8* %91, align 1
  %5978 = add i64 %5945, 24
  store i64 %5978, i64* %PC.i, align 8
  %5979 = load i64, i64* %5952, align 8
  store i64 %5979, i64* %RCX.i2541, align 8
  %5980 = add i64 %5979, 16
  %5981 = add i64 %5945, 28
  store i64 %5981, i64* %PC.i, align 8
  %5982 = inttoptr i64 %5980 to i32*
  %5983 = load i32, i32* %5982, align 4
  %5984 = mul i64 %5963, 12884901888
  %5985 = ashr exact i64 %5984, 32
  %5986 = sext i32 %5983 to i64
  %5987 = mul nsw i64 %5986, %5985
  %5988 = trunc i64 %5987 to i32
  %5989 = and i64 %5987, 4294967295
  store i64 %5989, i64* %RDX.i2544, align 8
  %5990 = shl i64 %5987, 32
  %5991 = ashr exact i64 %5990, 32
  %5992 = icmp ne i64 %5991, %5987
  %5993 = zext i1 %5992 to i8
  store i8 %5993, i8* %68, align 1
  %5994 = and i32 %5988, 255
  %5995 = tail call i32 @llvm.ctpop.i32(i32 %5994)
  %5996 = trunc i32 %5995 to i8
  %5997 = and i8 %5996, 1
  %5998 = xor i8 %5997, 1
  store i8 %5998, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5999 = lshr i32 %5988, 31
  %6000 = trunc i32 %5999 to i8
  store i8 %6000, i8* %85, align 1
  store i8 %5993, i8* %91, align 1
  %6001 = add i64 %5945, 32
  store i64 %6001, i64* %PC.i, align 8
  %6002 = load i64, i64* %5952, align 8
  store i64 %6002, i64* %RCX.i2541, align 8
  %6003 = add i64 %6002, 20
  %6004 = add i64 %5945, 36
  store i64 %6004, i64* %PC.i, align 8
  %6005 = inttoptr i64 %6003 to i32*
  %6006 = load i32, i32* %6005, align 4
  %6007 = shl i64 %5987, 32
  %6008 = ashr exact i64 %6007, 32
  %6009 = sext i32 %6006 to i64
  %6010 = mul nsw i64 %6009, %6008
  %6011 = trunc i64 %6010 to i32
  %6012 = and i64 %6010, 4294967295
  store i64 %6012, i64* %RDX.i2544, align 8
  %6013 = shl i64 %6010, 32
  %6014 = ashr exact i64 %6013, 32
  %6015 = icmp ne i64 %6014, %6010
  %6016 = zext i1 %6015 to i8
  store i8 %6016, i8* %68, align 1
  %6017 = and i32 %6011, 255
  %6018 = tail call i32 @llvm.ctpop.i32(i32 %6017)
  %6019 = trunc i32 %6018 to i8
  %6020 = and i8 %6019, 1
  %6021 = xor i8 %6020, 1
  store i8 %6021, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6022 = lshr i32 %6011, 31
  %6023 = trunc i32 %6022 to i8
  store i8 %6023, i8* %85, align 1
  store i8 %6016, i8* %91, align 1
  %6024 = load i64, i64* %RBP.i, align 8
  %6025 = add i64 %6024, -52
  %6026 = add i64 %5945, 39
  store i64 %6026, i64* %PC.i, align 8
  %6027 = inttoptr i64 %6025 to i32*
  %6028 = load i32, i32* %6027, align 4
  %6029 = zext i32 %6028 to i64
  store i64 %6029, i64* %RSI.i2547, align 8
  %6030 = add i64 %6024, -16
  %6031 = add i64 %5945, 43
  store i64 %6031, i64* %PC.i, align 8
  %6032 = inttoptr i64 %6030 to i64*
  %6033 = load i64, i64* %6032, align 8
  store i64 %6033, i64* %RCX.i2541, align 8
  %6034 = add i64 %6033, 16
  %6035 = add i64 %5945, 47
  store i64 %6035, i64* %PC.i, align 8
  %6036 = inttoptr i64 %6034 to i32*
  %6037 = load i32, i32* %6036, align 4
  %6038 = sext i32 %6028 to i64
  %6039 = sext i32 %6037 to i64
  %6040 = mul nsw i64 %6039, %6038
  %6041 = trunc i64 %6040 to i32
  %6042 = and i64 %6040, 4294967295
  store i64 %6042, i64* %RSI.i2547, align 8
  %6043 = shl i64 %6040, 32
  %6044 = ashr exact i64 %6043, 32
  %6045 = icmp ne i64 %6044, %6040
  %6046 = zext i1 %6045 to i8
  store i8 %6046, i8* %68, align 1
  %6047 = and i32 %6041, 255
  %6048 = tail call i32 @llvm.ctpop.i32(i32 %6047)
  %6049 = trunc i32 %6048 to i8
  %6050 = and i8 %6049, 1
  %6051 = xor i8 %6050, 1
  store i8 %6051, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6052 = lshr i32 %6041, 31
  %6053 = trunc i32 %6052 to i8
  store i8 %6053, i8* %85, align 1
  store i8 %6046, i8* %91, align 1
  %6054 = add i64 %5945, 51
  store i64 %6054, i64* %PC.i, align 8
  %6055 = load i64, i64* %6032, align 8
  store i64 %6055, i64* %RCX.i2541, align 8
  %6056 = add i64 %6055, 20
  %6057 = add i64 %5945, 55
  store i64 %6057, i64* %PC.i, align 8
  %6058 = inttoptr i64 %6056 to i32*
  %6059 = load i32, i32* %6058, align 4
  %6060 = shl i64 %6040, 32
  %6061 = ashr exact i64 %6060, 32
  %6062 = sext i32 %6059 to i64
  %6063 = mul nsw i64 %6062, %6061
  %6064 = and i64 %6063, 4294967295
  store i64 %6064, i64* %RSI.i2547, align 8
  %6065 = trunc i64 %6063 to i32
  %6066 = trunc i64 %6010 to i32
  %6067 = add i32 %6065, %6066
  %6068 = zext i32 %6067 to i64
  store i64 %6068, i64* %RDX.i2544, align 8
  %6069 = icmp ult i32 %6067, %6066
  %6070 = icmp ult i32 %6067, %6065
  %6071 = or i1 %6069, %6070
  %6072 = zext i1 %6071 to i8
  store i8 %6072, i8* %68, align 1
  %6073 = and i32 %6067, 255
  %6074 = tail call i32 @llvm.ctpop.i32(i32 %6073)
  %6075 = trunc i32 %6074 to i8
  %6076 = and i8 %6075, 1
  %6077 = xor i8 %6076, 1
  store i8 %6077, i8* %74, align 1
  %6078 = xor i64 %6063, %6010
  %6079 = trunc i64 %6078 to i32
  %6080 = xor i32 %6079, %6067
  %6081 = lshr i32 %6080, 4
  %6082 = trunc i32 %6081 to i8
  %6083 = and i8 %6082, 1
  store i8 %6083, i8* %79, align 1
  %6084 = icmp eq i32 %6067, 0
  %6085 = zext i1 %6084 to i8
  store i8 %6085, i8* %82, align 1
  %6086 = lshr i32 %6067, 31
  %6087 = trunc i32 %6086 to i8
  store i8 %6087, i8* %85, align 1
  %6088 = lshr i32 %6066, 31
  %6089 = lshr i32 %6065, 31
  %6090 = xor i32 %6086, %6088
  %6091 = xor i32 %6086, %6089
  %6092 = add nuw nsw i32 %6090, %6091
  %6093 = icmp eq i32 %6092, 2
  %6094 = zext i1 %6093 to i8
  store i8 %6094, i8* %91, align 1
  %6095 = load i64, i64* %RBP.i, align 8
  %6096 = add i64 %6095, -56
  %6097 = add i64 %5945, 60
  store i64 %6097, i64* %PC.i, align 8
  %6098 = inttoptr i64 %6096 to i32*
  %6099 = load i32, i32* %6098, align 4
  %6100 = zext i32 %6099 to i64
  store i64 %6100, i64* %RSI.i2547, align 8
  %6101 = add i64 %6095, -16
  %6102 = add i64 %5945, 64
  store i64 %6102, i64* %PC.i, align 8
  %6103 = inttoptr i64 %6101 to i64*
  %6104 = load i64, i64* %6103, align 8
  store i64 %6104, i64* %RCX.i2541, align 8
  %6105 = add i64 %6104, 20
  %6106 = add i64 %5945, 68
  store i64 %6106, i64* %PC.i, align 8
  %6107 = inttoptr i64 %6105 to i32*
  %6108 = load i32, i32* %6107, align 4
  %6109 = sext i32 %6099 to i64
  %6110 = sext i32 %6108 to i64
  %6111 = mul nsw i64 %6110, %6109
  %6112 = and i64 %6111, 4294967295
  store i64 %6112, i64* %RSI.i2547, align 8
  %6113 = trunc i64 %6111 to i32
  %6114 = add i32 %6113, %6067
  %6115 = zext i32 %6114 to i64
  store i64 %6115, i64* %RDX.i2544, align 8
  %6116 = icmp ult i32 %6114, %6067
  %6117 = icmp ult i32 %6114, %6113
  %6118 = or i1 %6116, %6117
  %6119 = zext i1 %6118 to i8
  store i8 %6119, i8* %68, align 1
  %6120 = and i32 %6114, 255
  %6121 = tail call i32 @llvm.ctpop.i32(i32 %6120)
  %6122 = trunc i32 %6121 to i8
  %6123 = and i8 %6122, 1
  %6124 = xor i8 %6123, 1
  store i8 %6124, i8* %74, align 1
  %6125 = xor i64 %6111, %6068
  %6126 = trunc i64 %6125 to i32
  %6127 = xor i32 %6126, %6114
  %6128 = lshr i32 %6127, 4
  %6129 = trunc i32 %6128 to i8
  %6130 = and i8 %6129, 1
  store i8 %6130, i8* %79, align 1
  %6131 = icmp eq i32 %6114, 0
  %6132 = zext i1 %6131 to i8
  store i8 %6132, i8* %82, align 1
  %6133 = lshr i32 %6114, 31
  %6134 = trunc i32 %6133 to i8
  store i8 %6134, i8* %85, align 1
  %6135 = lshr i32 %6113, 31
  %6136 = xor i32 %6133, %6086
  %6137 = xor i32 %6133, %6135
  %6138 = add nuw nsw i32 %6136, %6137
  %6139 = icmp eq i32 %6138, 2
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %91, align 1
  %6141 = add i64 %6095, -60
  %6142 = add i64 %5945, 73
  store i64 %6142, i64* %PC.i, align 8
  %6143 = inttoptr i64 %6141 to i32*
  %6144 = load i32, i32* %6143, align 4
  %6145 = add i32 %6144, %6114
  %6146 = zext i32 %6145 to i64
  store i64 %6146, i64* %RDX.i2544, align 8
  %6147 = icmp ult i32 %6145, %6114
  %6148 = icmp ult i32 %6145, %6144
  %6149 = or i1 %6147, %6148
  %6150 = zext i1 %6149 to i8
  store i8 %6150, i8* %68, align 1
  %6151 = and i32 %6145, 255
  %6152 = tail call i32 @llvm.ctpop.i32(i32 %6151)
  %6153 = trunc i32 %6152 to i8
  %6154 = and i8 %6153, 1
  %6155 = xor i8 %6154, 1
  store i8 %6155, i8* %74, align 1
  %6156 = xor i32 %6144, %6114
  %6157 = xor i32 %6156, %6145
  %6158 = lshr i32 %6157, 4
  %6159 = trunc i32 %6158 to i8
  %6160 = and i8 %6159, 1
  store i8 %6160, i8* %79, align 1
  %6161 = icmp eq i32 %6145, 0
  %6162 = zext i1 %6161 to i8
  store i8 %6162, i8* %82, align 1
  %6163 = lshr i32 %6145, 31
  %6164 = trunc i32 %6163 to i8
  store i8 %6164, i8* %85, align 1
  %6165 = lshr i32 %6144, 31
  %6166 = xor i32 %6163, %6133
  %6167 = xor i32 %6163, %6165
  %6168 = add nuw nsw i32 %6166, %6167
  %6169 = icmp eq i32 %6168, 2
  %6170 = zext i1 %6169 to i8
  store i8 %6170, i8* %91, align 1
  %6171 = sext i32 %6145 to i64
  store i64 %6171, i64* %RCX.i2541, align 8
  %6172 = load i64, i64* %RAX.i2556, align 8
  %6173 = shl nsw i64 %6171, 2
  %6174 = add i64 %6173, %6172
  %6175 = add i64 %5945, 81
  store i64 %6175, i64* %PC.i, align 8
  %6176 = load <2 x float>, <2 x float>* %196, align 1
  %6177 = load <2 x i32>, <2 x i32>* %197, align 1
  %6178 = inttoptr i64 %6174 to float*
  %6179 = load float, float* %6178, align 4
  %6180 = extractelement <2 x float> %6176, i32 0
  %6181 = fmul float %6180, %6179
  store float %6181, float* %192, align 1
  %6182 = bitcast <2 x float> %6176 to <2 x i32>
  %6183 = extractelement <2 x i32> %6182, i32 1
  store i32 %6183, i32* %187, align 1
  %6184 = extractelement <2 x i32> %6177, i32 0
  store i32 %6184, i32* %188, align 1
  %6185 = extractelement <2 x i32> %6177, i32 1
  store i32 %6185, i32* %190, align 1
  %6186 = load i64, i64* %RBP.i, align 8
  %6187 = add i64 %6186, -40
  %6188 = add i64 %5945, 85
  store i64 %6188, i64* %PC.i, align 8
  %6189 = inttoptr i64 %6187 to i64*
  %6190 = load i64, i64* %6189, align 8
  store i64 %6190, i64* %RAX.i2556, align 8
  %6191 = add i64 %5945, 88
  store i64 %6191, i64* %PC.i, align 8
  %6192 = inttoptr i64 %6190 to i64*
  %6193 = load i64, i64* %6192, align 8
  store i64 %6193, i64* %RAX.i2556, align 8
  %6194 = add i64 %5945, 92
  store i64 %6194, i64* %PC.i, align 8
  %6195 = load i64, i64* %6189, align 8
  store i64 %6195, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6196 = add i64 %5945, 100
  store i64 %6196, i64* %PC.i, align 8
  %6197 = load i64, i64* %6189, align 8
  store i64 %6197, i64* %RCX.i2541, align 8
  %6198 = add i64 %5945, 104
  store i64 %6198, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6199 = add i64 %5945, 108
  store i64 %6199, i64* %PC.i, align 8
  %6200 = load i64, i64* %6189, align 8
  store i64 %6200, i64* %RCX.i2541, align 8
  %6201 = add i64 %5945, 112
  store i64 %6201, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6202 = add i64 %6186, -52
  %6203 = add i64 %5945, 115
  store i64 %6203, i64* %PC.i, align 8
  %6204 = inttoptr i64 %6202 to i32*
  %6205 = load i32, i32* %6204, align 4
  %6206 = zext i32 %6205 to i64
  store i64 %6206, i64* %RSI.i2547, align 8
  %6207 = add i64 %5945, 119
  store i64 %6207, i64* %PC.i, align 8
  %6208 = load i64, i64* %6189, align 8
  store i64 %6208, i64* %RCX.i2541, align 8
  %6209 = add i64 %6208, 16
  %6210 = add i64 %5945, 123
  store i64 %6210, i64* %PC.i, align 8
  %6211 = inttoptr i64 %6209 to i32*
  %6212 = load i32, i32* %6211, align 4
  %6213 = sext i32 %6205 to i64
  %6214 = sext i32 %6212 to i64
  %6215 = mul nsw i64 %6214, %6213
  %6216 = trunc i64 %6215 to i32
  %6217 = and i64 %6215, 4294967295
  store i64 %6217, i64* %RSI.i2547, align 8
  %6218 = shl i64 %6215, 32
  %6219 = ashr exact i64 %6218, 32
  %6220 = icmp ne i64 %6219, %6215
  %6221 = zext i1 %6220 to i8
  store i8 %6221, i8* %68, align 1
  %6222 = and i32 %6216, 255
  %6223 = tail call i32 @llvm.ctpop.i32(i32 %6222)
  %6224 = trunc i32 %6223 to i8
  %6225 = and i8 %6224, 1
  %6226 = xor i8 %6225, 1
  store i8 %6226, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6227 = lshr i32 %6216, 31
  %6228 = trunc i32 %6227 to i8
  store i8 %6228, i8* %85, align 1
  store i8 %6221, i8* %91, align 1
  %6229 = add i64 %5945, 127
  store i64 %6229, i64* %PC.i, align 8
  %6230 = load i64, i64* %6189, align 8
  store i64 %6230, i64* %RCX.i2541, align 8
  %6231 = add i64 %6230, 20
  %6232 = add i64 %5945, 131
  store i64 %6232, i64* %PC.i, align 8
  %6233 = inttoptr i64 %6231 to i32*
  %6234 = load i32, i32* %6233, align 4
  %6235 = shl i64 %6215, 32
  %6236 = ashr exact i64 %6235, 32
  %6237 = sext i32 %6234 to i64
  %6238 = mul nsw i64 %6237, %6236
  %6239 = and i64 %6238, 4294967295
  store i64 %6239, i64* %RSI.i2547, align 8
  %6240 = trunc i64 %6238 to i32
  %6241 = and i64 %6238, 4294967295
  store i64 %6241, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6242 = and i32 %6240, 255
  %6243 = tail call i32 @llvm.ctpop.i32(i32 %6242)
  %6244 = trunc i32 %6243 to i8
  %6245 = and i8 %6244, 1
  %6246 = xor i8 %6245, 1
  store i8 %6246, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6247 = icmp eq i32 %6240, 0
  %6248 = zext i1 %6247 to i8
  store i8 %6248, i8* %82, align 1
  %6249 = lshr i32 %6240, 31
  %6250 = trunc i32 %6249 to i8
  store i8 %6250, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6251 = load i64, i64* %RBP.i, align 8
  %6252 = add i64 %6251, -56
  %6253 = add i64 %5945, 136
  store i64 %6253, i64* %PC.i, align 8
  %6254 = inttoptr i64 %6252 to i32*
  %6255 = load i32, i32* %6254, align 4
  %6256 = zext i32 %6255 to i64
  store i64 %6256, i64* %RSI.i2547, align 8
  %6257 = add i64 %6251, -40
  %6258 = add i64 %5945, 140
  store i64 %6258, i64* %PC.i, align 8
  %6259 = inttoptr i64 %6257 to i64*
  %6260 = load i64, i64* %6259, align 8
  store i64 %6260, i64* %RCX.i2541, align 8
  %6261 = add i64 %6260, 20
  %6262 = add i64 %5945, 144
  store i64 %6262, i64* %PC.i, align 8
  %6263 = inttoptr i64 %6261 to i32*
  %6264 = load i32, i32* %6263, align 4
  %6265 = sext i32 %6255 to i64
  %6266 = sext i32 %6264 to i64
  %6267 = mul nsw i64 %6266, %6265
  %6268 = and i64 %6267, 4294967295
  store i64 %6268, i64* %RSI.i2547, align 8
  %6269 = trunc i64 %6267 to i32
  %6270 = add i32 %6269, %6240
  %6271 = zext i32 %6270 to i64
  store i64 %6271, i64* %RDX.i2544, align 8
  %6272 = icmp ult i32 %6270, %6240
  %6273 = icmp ult i32 %6270, %6269
  %6274 = or i1 %6272, %6273
  %6275 = zext i1 %6274 to i8
  store i8 %6275, i8* %68, align 1
  %6276 = and i32 %6270, 255
  %6277 = tail call i32 @llvm.ctpop.i32(i32 %6276)
  %6278 = trunc i32 %6277 to i8
  %6279 = and i8 %6278, 1
  %6280 = xor i8 %6279, 1
  store i8 %6280, i8* %74, align 1
  %6281 = xor i64 %6267, %6238
  %6282 = trunc i64 %6281 to i32
  %6283 = xor i32 %6282, %6270
  %6284 = lshr i32 %6283, 4
  %6285 = trunc i32 %6284 to i8
  %6286 = and i8 %6285, 1
  store i8 %6286, i8* %79, align 1
  %6287 = icmp eq i32 %6270, 0
  %6288 = zext i1 %6287 to i8
  store i8 %6288, i8* %82, align 1
  %6289 = lshr i32 %6270, 31
  %6290 = trunc i32 %6289 to i8
  store i8 %6290, i8* %85, align 1
  %6291 = lshr i32 %6269, 31
  %6292 = xor i32 %6289, %6249
  %6293 = xor i32 %6289, %6291
  %6294 = add nuw nsw i32 %6292, %6293
  %6295 = icmp eq i32 %6294, 2
  %6296 = zext i1 %6295 to i8
  store i8 %6296, i8* %91, align 1
  %6297 = add i64 %6251, -60
  %6298 = add i64 %5945, 149
  store i64 %6298, i64* %PC.i, align 8
  %6299 = inttoptr i64 %6297 to i32*
  %6300 = load i32, i32* %6299, align 4
  %6301 = add i32 %6300, %6270
  %6302 = zext i32 %6301 to i64
  store i64 %6302, i64* %RDX.i2544, align 8
  %6303 = icmp ult i32 %6301, %6270
  %6304 = icmp ult i32 %6301, %6300
  %6305 = or i1 %6303, %6304
  %6306 = zext i1 %6305 to i8
  store i8 %6306, i8* %68, align 1
  %6307 = and i32 %6301, 255
  %6308 = tail call i32 @llvm.ctpop.i32(i32 %6307)
  %6309 = trunc i32 %6308 to i8
  %6310 = and i8 %6309, 1
  %6311 = xor i8 %6310, 1
  store i8 %6311, i8* %74, align 1
  %6312 = xor i32 %6300, %6270
  %6313 = xor i32 %6312, %6301
  %6314 = lshr i32 %6313, 4
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  store i8 %6316, i8* %79, align 1
  %6317 = icmp eq i32 %6301, 0
  %6318 = zext i1 %6317 to i8
  store i8 %6318, i8* %82, align 1
  %6319 = lshr i32 %6301, 31
  %6320 = trunc i32 %6319 to i8
  store i8 %6320, i8* %85, align 1
  %6321 = lshr i32 %6300, 31
  %6322 = xor i32 %6319, %6289
  %6323 = xor i32 %6319, %6321
  %6324 = add nuw nsw i32 %6322, %6323
  %6325 = icmp eq i32 %6324, 2
  %6326 = zext i1 %6325 to i8
  store i8 %6326, i8* %91, align 1
  %6327 = sext i32 %6301 to i64
  store i64 %6327, i64* %RCX.i2541, align 8
  %6328 = load i64, i64* %RAX.i2556, align 8
  %6329 = shl nsw i64 %6327, 2
  %6330 = add i64 %6329, %6328
  %6331 = add i64 %5945, 157
  store i64 %6331, i64* %PC.i, align 8
  %6332 = load <2 x float>, <2 x float>* %196, align 1
  %6333 = load <2 x i32>, <2 x i32>* %197, align 1
  %6334 = inttoptr i64 %6330 to float*
  %6335 = load float, float* %6334, align 4
  %6336 = extractelement <2 x float> %6332, i32 0
  %6337 = fsub float %6336, %6335
  store float %6337, float* %192, align 1
  %6338 = bitcast <2 x float> %6332 to <2 x i32>
  %6339 = extractelement <2 x i32> %6338, i32 1
  store i32 %6339, i32* %187, align 1
  %6340 = extractelement <2 x i32> %6333, i32 0
  store i32 %6340, i32* %188, align 1
  %6341 = extractelement <2 x i32> %6333, i32 1
  store i32 %6341, i32* %190, align 1
  %6342 = load i64, i64* %RBP.i, align 8
  %6343 = add i64 %6342, -48
  %6344 = add i64 %5945, 161
  store i64 %6344, i64* %PC.i, align 8
  %6345 = inttoptr i64 %6343 to i64*
  %6346 = load i64, i64* %6345, align 8
  store i64 %6346, i64* %RAX.i2556, align 8
  %6347 = add i64 %5945, 164
  store i64 %6347, i64* %PC.i, align 8
  %6348 = inttoptr i64 %6346 to i64*
  %6349 = load i64, i64* %6348, align 8
  store i64 %6349, i64* %RAX.i2556, align 8
  %6350 = add i64 %5945, 168
  store i64 %6350, i64* %PC.i, align 8
  %6351 = load i64, i64* %6345, align 8
  store i64 %6351, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6352 = add i64 %5945, 176
  store i64 %6352, i64* %PC.i, align 8
  %6353 = load i64, i64* %6345, align 8
  store i64 %6353, i64* %RCX.i2541, align 8
  %6354 = add i64 %5945, 180
  store i64 %6354, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6355 = add i64 %5945, 184
  store i64 %6355, i64* %PC.i, align 8
  %6356 = load i64, i64* %6345, align 8
  store i64 %6356, i64* %RCX.i2541, align 8
  %6357 = add i64 %5945, 188
  store i64 %6357, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6358 = add i64 %6342, -52
  %6359 = add i64 %5945, 191
  store i64 %6359, i64* %PC.i, align 8
  %6360 = inttoptr i64 %6358 to i32*
  %6361 = load i32, i32* %6360, align 4
  %6362 = zext i32 %6361 to i64
  store i64 %6362, i64* %RSI.i2547, align 8
  %6363 = add i64 %5945, 195
  store i64 %6363, i64* %PC.i, align 8
  %6364 = load i64, i64* %6345, align 8
  store i64 %6364, i64* %RCX.i2541, align 8
  %6365 = add i64 %6364, 16
  %6366 = add i64 %5945, 199
  store i64 %6366, i64* %PC.i, align 8
  %6367 = inttoptr i64 %6365 to i32*
  %6368 = load i32, i32* %6367, align 4
  %6369 = sext i32 %6361 to i64
  %6370 = sext i32 %6368 to i64
  %6371 = mul nsw i64 %6370, %6369
  %6372 = trunc i64 %6371 to i32
  %6373 = and i64 %6371, 4294967295
  store i64 %6373, i64* %RSI.i2547, align 8
  %6374 = shl i64 %6371, 32
  %6375 = ashr exact i64 %6374, 32
  %6376 = icmp ne i64 %6375, %6371
  %6377 = zext i1 %6376 to i8
  store i8 %6377, i8* %68, align 1
  %6378 = and i32 %6372, 255
  %6379 = tail call i32 @llvm.ctpop.i32(i32 %6378)
  %6380 = trunc i32 %6379 to i8
  %6381 = and i8 %6380, 1
  %6382 = xor i8 %6381, 1
  store i8 %6382, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6383 = lshr i32 %6372, 31
  %6384 = trunc i32 %6383 to i8
  store i8 %6384, i8* %85, align 1
  store i8 %6377, i8* %91, align 1
  %6385 = add i64 %5945, 203
  store i64 %6385, i64* %PC.i, align 8
  %6386 = load i64, i64* %6345, align 8
  store i64 %6386, i64* %RCX.i2541, align 8
  %6387 = add i64 %6386, 20
  %6388 = add i64 %5945, 207
  store i64 %6388, i64* %PC.i, align 8
  %6389 = inttoptr i64 %6387 to i32*
  %6390 = load i32, i32* %6389, align 4
  %6391 = shl i64 %6371, 32
  %6392 = ashr exact i64 %6391, 32
  %6393 = sext i32 %6390 to i64
  %6394 = mul nsw i64 %6393, %6392
  %6395 = and i64 %6394, 4294967295
  store i64 %6395, i64* %RSI.i2547, align 8
  %6396 = trunc i64 %6394 to i32
  %6397 = and i64 %6394, 4294967295
  store i64 %6397, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6398 = and i32 %6396, 255
  %6399 = tail call i32 @llvm.ctpop.i32(i32 %6398)
  %6400 = trunc i32 %6399 to i8
  %6401 = and i8 %6400, 1
  %6402 = xor i8 %6401, 1
  store i8 %6402, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6403 = icmp eq i32 %6396, 0
  %6404 = zext i1 %6403 to i8
  store i8 %6404, i8* %82, align 1
  %6405 = lshr i32 %6396, 31
  %6406 = trunc i32 %6405 to i8
  store i8 %6406, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6407 = load i64, i64* %RBP.i, align 8
  %6408 = add i64 %6407, -56
  %6409 = add i64 %5945, 212
  store i64 %6409, i64* %PC.i, align 8
  %6410 = inttoptr i64 %6408 to i32*
  %6411 = load i32, i32* %6410, align 4
  %6412 = zext i32 %6411 to i64
  store i64 %6412, i64* %RSI.i2547, align 8
  %6413 = add i64 %6407, -48
  %6414 = add i64 %5945, 216
  store i64 %6414, i64* %PC.i, align 8
  %6415 = inttoptr i64 %6413 to i64*
  %6416 = load i64, i64* %6415, align 8
  store i64 %6416, i64* %RCX.i2541, align 8
  %6417 = add i64 %6416, 20
  %6418 = add i64 %5945, 220
  store i64 %6418, i64* %PC.i, align 8
  %6419 = inttoptr i64 %6417 to i32*
  %6420 = load i32, i32* %6419, align 4
  %6421 = sext i32 %6411 to i64
  %6422 = sext i32 %6420 to i64
  %6423 = mul nsw i64 %6422, %6421
  %6424 = and i64 %6423, 4294967295
  store i64 %6424, i64* %RSI.i2547, align 8
  %6425 = trunc i64 %6423 to i32
  %6426 = add i32 %6425, %6396
  %6427 = zext i32 %6426 to i64
  store i64 %6427, i64* %RDX.i2544, align 8
  %6428 = icmp ult i32 %6426, %6396
  %6429 = icmp ult i32 %6426, %6425
  %6430 = or i1 %6428, %6429
  %6431 = zext i1 %6430 to i8
  store i8 %6431, i8* %68, align 1
  %6432 = and i32 %6426, 255
  %6433 = tail call i32 @llvm.ctpop.i32(i32 %6432)
  %6434 = trunc i32 %6433 to i8
  %6435 = and i8 %6434, 1
  %6436 = xor i8 %6435, 1
  store i8 %6436, i8* %74, align 1
  %6437 = xor i64 %6423, %6394
  %6438 = trunc i64 %6437 to i32
  %6439 = xor i32 %6438, %6426
  %6440 = lshr i32 %6439, 4
  %6441 = trunc i32 %6440 to i8
  %6442 = and i8 %6441, 1
  store i8 %6442, i8* %79, align 1
  %6443 = icmp eq i32 %6426, 0
  %6444 = zext i1 %6443 to i8
  store i8 %6444, i8* %82, align 1
  %6445 = lshr i32 %6426, 31
  %6446 = trunc i32 %6445 to i8
  store i8 %6446, i8* %85, align 1
  %6447 = lshr i32 %6425, 31
  %6448 = xor i32 %6445, %6405
  %6449 = xor i32 %6445, %6447
  %6450 = add nuw nsw i32 %6448, %6449
  %6451 = icmp eq i32 %6450, 2
  %6452 = zext i1 %6451 to i8
  store i8 %6452, i8* %91, align 1
  %6453 = add i64 %6407, -60
  %6454 = add i64 %5945, 225
  store i64 %6454, i64* %PC.i, align 8
  %6455 = inttoptr i64 %6453 to i32*
  %6456 = load i32, i32* %6455, align 4
  %6457 = add i32 %6456, %6426
  %6458 = zext i32 %6457 to i64
  store i64 %6458, i64* %RDX.i2544, align 8
  %6459 = icmp ult i32 %6457, %6426
  %6460 = icmp ult i32 %6457, %6456
  %6461 = or i1 %6459, %6460
  %6462 = zext i1 %6461 to i8
  store i8 %6462, i8* %68, align 1
  %6463 = and i32 %6457, 255
  %6464 = tail call i32 @llvm.ctpop.i32(i32 %6463)
  %6465 = trunc i32 %6464 to i8
  %6466 = and i8 %6465, 1
  %6467 = xor i8 %6466, 1
  store i8 %6467, i8* %74, align 1
  %6468 = xor i32 %6456, %6426
  %6469 = xor i32 %6468, %6457
  %6470 = lshr i32 %6469, 4
  %6471 = trunc i32 %6470 to i8
  %6472 = and i8 %6471, 1
  store i8 %6472, i8* %79, align 1
  %6473 = icmp eq i32 %6457, 0
  %6474 = zext i1 %6473 to i8
  store i8 %6474, i8* %82, align 1
  %6475 = lshr i32 %6457, 31
  %6476 = trunc i32 %6475 to i8
  store i8 %6476, i8* %85, align 1
  %6477 = lshr i32 %6456, 31
  %6478 = xor i32 %6475, %6445
  %6479 = xor i32 %6475, %6477
  %6480 = add nuw nsw i32 %6478, %6479
  %6481 = icmp eq i32 %6480, 2
  %6482 = zext i1 %6481 to i8
  store i8 %6482, i8* %91, align 1
  %6483 = sext i32 %6457 to i64
  store i64 %6483, i64* %RCX.i2541, align 8
  %6484 = load i64, i64* %RAX.i2556, align 8
  %6485 = shl nsw i64 %6483, 2
  %6486 = add i64 %6485, %6484
  %6487 = add i64 %5945, 233
  store i64 %6487, i64* %PC.i, align 8
  %6488 = load <2 x float>, <2 x float>* %196, align 1
  %6489 = load <2 x i32>, <2 x i32>* %197, align 1
  %6490 = inttoptr i64 %6486 to float*
  %6491 = load float, float* %6490, align 4
  %6492 = extractelement <2 x float> %6488, i32 0
  %6493 = fmul float %6492, %6491
  store float %6493, float* %192, align 1
  %6494 = bitcast <2 x float> %6488 to <2 x i32>
  %6495 = extractelement <2 x i32> %6494, i32 1
  store i32 %6495, i32* %187, align 1
  %6496 = extractelement <2 x i32> %6489, i32 0
  store i32 %6496, i32* %188, align 1
  %6497 = extractelement <2 x i32> %6489, i32 1
  store i32 %6497, i32* %190, align 1
  %6498 = load i64, i64* %RBP.i, align 8
  %6499 = add i64 %6498, -88
  %6500 = add i64 %5945, 238
  store i64 %6500, i64* %PC.i, align 8
  %6501 = load <2 x float>, <2 x float>* %191, align 1
  %6502 = extractelement <2 x float> %6501, i32 0
  %6503 = inttoptr i64 %6499 to float*
  store float %6502, float* %6503, align 4
  %6504 = load i64, i64* %RBP.i, align 8
  %6505 = add i64 %6504, -88
  %6506 = load i64, i64* %PC.i, align 8
  %6507 = add i64 %6506, 5
  store i64 %6507, i64* %PC.i, align 8
  %6508 = inttoptr i64 %6505 to float*
  %6509 = inttoptr i64 %6505 to i32*
  %6510 = load i32, i32* %6509, align 4
  %6511 = bitcast [32 x %union.VectorReg]* %182 to i32*
  store i32 %6510, i32* %6511, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6512 = add i64 %6506, 10
  store i64 %6512, i64* %PC.i, align 8
  %6513 = load <2 x float>, <2 x float>* %196, align 1
  %6514 = load <2 x i32>, <2 x i32>* %197, align 1
  %6515 = load float, float* %6508, align 4
  %6516 = extractelement <2 x float> %6513, i32 0
  %6517 = fmul float %6516, %6515
  store float %6517, float* %192, align 1
  %6518 = bitcast <2 x float> %6513 to <2 x i32>
  %6519 = extractelement <2 x i32> %6518, i32 1
  store i32 %6519, i32* %187, align 1
  %6520 = extractelement <2 x i32> %6514, i32 0
  store i32 %6520, i32* %188, align 1
  %6521 = extractelement <2 x i32> %6514, i32 1
  store i32 %6521, i32* %190, align 1
  %6522 = add i64 %6504, -80
  %6523 = add i64 %6506, 15
  store i64 %6523, i64* %PC.i, align 8
  %6524 = load <2 x float>, <2 x float>* %196, align 1
  %6525 = load <2 x i32>, <2 x i32>* %197, align 1
  %6526 = inttoptr i64 %6522 to float*
  %6527 = load float, float* %6526, align 4
  %6528 = extractelement <2 x float> %6524, i32 0
  %6529 = fadd float %6528, %6527
  store float %6529, float* %192, align 1
  %6530 = bitcast <2 x float> %6524 to <2 x i32>
  %6531 = extractelement <2 x i32> %6530, i32 1
  store i32 %6531, i32* %187, align 1
  %6532 = extractelement <2 x i32> %6525, i32 0
  store i32 %6532, i32* %188, align 1
  %6533 = extractelement <2 x i32> %6525, i32 1
  store i32 %6533, i32* %190, align 1
  %6534 = add i64 %6506, 20
  store i64 %6534, i64* %PC.i, align 8
  %6535 = load <2 x float>, <2 x float>* %191, align 1
  %6536 = extractelement <2 x float> %6535, i32 0
  store float %6536, float* %6526, align 4
  %6537 = load i64, i64* %RBP.i, align 8
  %6538 = add i64 %6537, -40
  %6539 = load i64, i64* %PC.i, align 8
  %6540 = add i64 %6539, 4
  store i64 %6540, i64* %PC.i, align 8
  %6541 = inttoptr i64 %6538 to i64*
  %6542 = load i64, i64* %6541, align 8
  store i64 %6542, i64* %RAX.i2556, align 8
  %6543 = add i64 %6539, 7
  store i64 %6543, i64* %PC.i, align 8
  %6544 = inttoptr i64 %6542 to i64*
  %6545 = load i64, i64* %6544, align 8
  store i64 %6545, i64* %RAX.i2556, align 8
  %6546 = add i64 %6539, 11
  store i64 %6546, i64* %PC.i, align 8
  %6547 = load i64, i64* %6541, align 8
  store i64 %6547, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6548 = add i64 %6539, 19
  store i64 %6548, i64* %PC.i, align 8
  %6549 = load i64, i64* %6541, align 8
  store i64 %6549, i64* %RCX.i2541, align 8
  %6550 = add i64 %6539, 23
  store i64 %6550, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6551 = add i64 %6539, 27
  store i64 %6551, i64* %PC.i, align 8
  %6552 = load i64, i64* %6541, align 8
  store i64 %6552, i64* %RCX.i2541, align 8
  %6553 = add i64 %6539, 31
  store i64 %6553, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6554 = add i64 %6537, -52
  %6555 = add i64 %6539, 34
  store i64 %6555, i64* %PC.i, align 8
  %6556 = inttoptr i64 %6554 to i32*
  %6557 = load i32, i32* %6556, align 4
  %6558 = zext i32 %6557 to i64
  store i64 %6558, i64* %RSI.i2547, align 8
  %6559 = add i64 %6539, 38
  store i64 %6559, i64* %PC.i, align 8
  %6560 = load i64, i64* %6541, align 8
  store i64 %6560, i64* %RCX.i2541, align 8
  %6561 = add i64 %6560, 16
  %6562 = add i64 %6539, 42
  store i64 %6562, i64* %PC.i, align 8
  %6563 = inttoptr i64 %6561 to i32*
  %6564 = load i32, i32* %6563, align 4
  %6565 = sext i32 %6557 to i64
  %6566 = sext i32 %6564 to i64
  %6567 = mul nsw i64 %6566, %6565
  %6568 = trunc i64 %6567 to i32
  %6569 = and i64 %6567, 4294967295
  store i64 %6569, i64* %RSI.i2547, align 8
  %6570 = shl i64 %6567, 32
  %6571 = ashr exact i64 %6570, 32
  %6572 = icmp ne i64 %6571, %6567
  %6573 = zext i1 %6572 to i8
  store i8 %6573, i8* %68, align 1
  %6574 = and i32 %6568, 255
  %6575 = tail call i32 @llvm.ctpop.i32(i32 %6574)
  %6576 = trunc i32 %6575 to i8
  %6577 = and i8 %6576, 1
  %6578 = xor i8 %6577, 1
  store i8 %6578, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6579 = lshr i32 %6568, 31
  %6580 = trunc i32 %6579 to i8
  store i8 %6580, i8* %85, align 1
  store i8 %6573, i8* %91, align 1
  %6581 = load i64, i64* %RBP.i, align 8
  %6582 = add i64 %6581, -40
  %6583 = add i64 %6539, 46
  store i64 %6583, i64* %PC.i, align 8
  %6584 = inttoptr i64 %6582 to i64*
  %6585 = load i64, i64* %6584, align 8
  store i64 %6585, i64* %RCX.i2541, align 8
  %6586 = add i64 %6585, 20
  %6587 = add i64 %6539, 50
  store i64 %6587, i64* %PC.i, align 8
  %6588 = inttoptr i64 %6586 to i32*
  %6589 = load i32, i32* %6588, align 4
  %6590 = shl i64 %6567, 32
  %6591 = ashr exact i64 %6590, 32
  %6592 = sext i32 %6589 to i64
  %6593 = mul nsw i64 %6592, %6591
  %6594 = and i64 %6593, 4294967295
  store i64 %6594, i64* %RSI.i2547, align 8
  %6595 = trunc i64 %6593 to i32
  %6596 = and i64 %6593, 4294967295
  store i64 %6596, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6597 = and i32 %6595, 255
  %6598 = tail call i32 @llvm.ctpop.i32(i32 %6597)
  %6599 = trunc i32 %6598 to i8
  %6600 = and i8 %6599, 1
  %6601 = xor i8 %6600, 1
  store i8 %6601, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6602 = icmp eq i32 %6595, 0
  %6603 = zext i1 %6602 to i8
  store i8 %6603, i8* %82, align 1
  %6604 = lshr i32 %6595, 31
  %6605 = trunc i32 %6604 to i8
  store i8 %6605, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6606 = add i64 %6581, -56
  %6607 = add i64 %6539, 55
  store i64 %6607, i64* %PC.i, align 8
  %6608 = inttoptr i64 %6606 to i32*
  %6609 = load i32, i32* %6608, align 4
  %6610 = zext i32 %6609 to i64
  store i64 %6610, i64* %RSI.i2547, align 8
  %6611 = add i64 %6539, 59
  store i64 %6611, i64* %PC.i, align 8
  %6612 = load i64, i64* %6584, align 8
  store i64 %6612, i64* %RCX.i2541, align 8
  %6613 = add i64 %6612, 20
  %6614 = add i64 %6539, 63
  store i64 %6614, i64* %PC.i, align 8
  %6615 = inttoptr i64 %6613 to i32*
  %6616 = load i32, i32* %6615, align 4
  %6617 = sext i32 %6609 to i64
  %6618 = sext i32 %6616 to i64
  %6619 = mul nsw i64 %6618, %6617
  %6620 = and i64 %6619, 4294967295
  store i64 %6620, i64* %RSI.i2547, align 8
  %6621 = trunc i64 %6619 to i32
  %6622 = add i32 %6621, %6595
  %6623 = zext i32 %6622 to i64
  store i64 %6623, i64* %RDX.i2544, align 8
  %6624 = icmp ult i32 %6622, %6595
  %6625 = icmp ult i32 %6622, %6621
  %6626 = or i1 %6624, %6625
  %6627 = zext i1 %6626 to i8
  store i8 %6627, i8* %68, align 1
  %6628 = and i32 %6622, 255
  %6629 = tail call i32 @llvm.ctpop.i32(i32 %6628)
  %6630 = trunc i32 %6629 to i8
  %6631 = and i8 %6630, 1
  %6632 = xor i8 %6631, 1
  store i8 %6632, i8* %74, align 1
  %6633 = xor i64 %6619, %6593
  %6634 = trunc i64 %6633 to i32
  %6635 = xor i32 %6634, %6622
  %6636 = lshr i32 %6635, 4
  %6637 = trunc i32 %6636 to i8
  %6638 = and i8 %6637, 1
  store i8 %6638, i8* %79, align 1
  %6639 = icmp eq i32 %6622, 0
  %6640 = zext i1 %6639 to i8
  store i8 %6640, i8* %82, align 1
  %6641 = lshr i32 %6622, 31
  %6642 = trunc i32 %6641 to i8
  store i8 %6642, i8* %85, align 1
  %6643 = lshr i32 %6621, 31
  %6644 = xor i32 %6641, %6604
  %6645 = xor i32 %6641, %6643
  %6646 = add nuw nsw i32 %6644, %6645
  %6647 = icmp eq i32 %6646, 2
  %6648 = zext i1 %6647 to i8
  store i8 %6648, i8* %91, align 1
  %6649 = load i64, i64* %RBP.i, align 8
  %6650 = add i64 %6649, -60
  %6651 = add i64 %6539, 68
  store i64 %6651, i64* %PC.i, align 8
  %6652 = inttoptr i64 %6650 to i32*
  %6653 = load i32, i32* %6652, align 4
  %6654 = add i32 %6653, %6622
  %6655 = zext i32 %6654 to i64
  store i64 %6655, i64* %RDX.i2544, align 8
  %6656 = icmp ult i32 %6654, %6622
  %6657 = icmp ult i32 %6654, %6653
  %6658 = or i1 %6656, %6657
  %6659 = zext i1 %6658 to i8
  store i8 %6659, i8* %68, align 1
  %6660 = and i32 %6654, 255
  %6661 = tail call i32 @llvm.ctpop.i32(i32 %6660)
  %6662 = trunc i32 %6661 to i8
  %6663 = and i8 %6662, 1
  %6664 = xor i8 %6663, 1
  store i8 %6664, i8* %74, align 1
  %6665 = xor i32 %6653, %6622
  %6666 = xor i32 %6665, %6654
  %6667 = lshr i32 %6666, 4
  %6668 = trunc i32 %6667 to i8
  %6669 = and i8 %6668, 1
  store i8 %6669, i8* %79, align 1
  %6670 = icmp eq i32 %6654, 0
  %6671 = zext i1 %6670 to i8
  store i8 %6671, i8* %82, align 1
  %6672 = lshr i32 %6654, 31
  %6673 = trunc i32 %6672 to i8
  store i8 %6673, i8* %85, align 1
  %6674 = lshr i32 %6653, 31
  %6675 = xor i32 %6672, %6641
  %6676 = xor i32 %6672, %6674
  %6677 = add nuw nsw i32 %6675, %6676
  %6678 = icmp eq i32 %6677, 2
  %6679 = zext i1 %6678 to i8
  store i8 %6679, i8* %91, align 1
  %6680 = sext i32 %6654 to i64
  store i64 %6680, i64* %RCX.i2541, align 8
  %6681 = load i64, i64* %RAX.i2556, align 8
  %6682 = shl nsw i64 %6680, 2
  %6683 = add i64 %6682, %6681
  %6684 = add i64 %6539, 76
  store i64 %6684, i64* %PC.i, align 8
  %6685 = inttoptr i64 %6683 to i32*
  %6686 = load i32, i32* %6685, align 4
  %6687 = bitcast [32 x %union.VectorReg]* %182 to i32*
  store i32 %6686, i32* %6687, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6688 = load i32, i32* bitcast (%G_0x603058_type* @G_0x603058 to i32*), align 8
  %6689 = bitcast %union.VectorReg* %198 to i32*
  store i32 %6688, i32* %6689, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %6690 = add i64 %6649, -88
  %6691 = add i64 %6539, 90
  store i64 %6691, i64* %PC.i, align 8
  %6692 = load <2 x float>, <2 x float>* %207, align 1
  %6693 = load <2 x i32>, <2 x i32>* %208, align 1
  %6694 = inttoptr i64 %6690 to float*
  %6695 = load float, float* %6694, align 4
  %6696 = extractelement <2 x float> %6692, i32 0
  %6697 = fmul float %6696, %6695
  store float %6697, float* %200, align 1
  %6698 = bitcast <2 x float> %6692 to <2 x i32>
  %6699 = extractelement <2 x i32> %6698, i32 1
  store i32 %6699, i32* %209, align 1
  %6700 = extractelement <2 x i32> %6693, i32 0
  store i32 %6700, i32* %210, align 1
  %6701 = extractelement <2 x i32> %6693, i32 1
  store i32 %6701, i32* %211, align 1
  %6702 = load <2 x float>, <2 x float>* %196, align 1
  %6703 = load <2 x i32>, <2 x i32>* %197, align 1
  %6704 = load <2 x float>, <2 x float>* %212, align 1
  %6705 = extractelement <2 x float> %6702, i32 0
  %6706 = extractelement <2 x float> %6704, i32 0
  %6707 = fadd float %6705, %6706
  store float %6707, float* %192, align 1
  %6708 = bitcast <2 x float> %6702 to <2 x i32>
  %6709 = extractelement <2 x i32> %6708, i32 1
  store i32 %6709, i32* %187, align 1
  %6710 = extractelement <2 x i32> %6703, i32 0
  store i32 %6710, i32* %188, align 1
  %6711 = extractelement <2 x i32> %6703, i32 1
  store i32 %6711, i32* %190, align 1
  %6712 = add i64 %6649, 24
  %6713 = add i64 %6539, 98
  store i64 %6713, i64* %PC.i, align 8
  %6714 = inttoptr i64 %6712 to i64*
  %6715 = load i64, i64* %6714, align 8
  store i64 %6715, i64* %RAX.i2556, align 8
  %6716 = add i64 %6539, 101
  store i64 %6716, i64* %PC.i, align 8
  %6717 = inttoptr i64 %6715 to i64*
  %6718 = load i64, i64* %6717, align 8
  store i64 %6718, i64* %RAX.i2556, align 8
  %6719 = load i64, i64* %RBP.i, align 8
  %6720 = add i64 %6719, 24
  %6721 = add i64 %6539, 105
  store i64 %6721, i64* %PC.i, align 8
  %6722 = inttoptr i64 %6720 to i64*
  %6723 = load i64, i64* %6722, align 8
  store i64 %6723, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6724 = add i64 %6539, 113
  store i64 %6724, i64* %PC.i, align 8
  %6725 = load i64, i64* %6722, align 8
  store i64 %6725, i64* %RCX.i2541, align 8
  %6726 = add i64 %6539, 117
  store i64 %6726, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6727 = add i64 %6539, 121
  store i64 %6727, i64* %PC.i, align 8
  %6728 = load i64, i64* %6722, align 8
  store i64 %6728, i64* %RCX.i2541, align 8
  %6729 = add i64 %6539, 125
  store i64 %6729, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6730 = add i64 %6719, -52
  %6731 = add i64 %6539, 128
  store i64 %6731, i64* %PC.i, align 8
  %6732 = inttoptr i64 %6730 to i32*
  %6733 = load i32, i32* %6732, align 4
  %6734 = zext i32 %6733 to i64
  store i64 %6734, i64* %RSI.i2547, align 8
  %6735 = add i64 %6539, 132
  store i64 %6735, i64* %PC.i, align 8
  %6736 = load i64, i64* %6722, align 8
  store i64 %6736, i64* %RCX.i2541, align 8
  %6737 = add i64 %6736, 16
  %6738 = add i64 %6539, 136
  store i64 %6738, i64* %PC.i, align 8
  %6739 = inttoptr i64 %6737 to i32*
  %6740 = load i32, i32* %6739, align 4
  %6741 = sext i32 %6733 to i64
  %6742 = sext i32 %6740 to i64
  %6743 = mul nsw i64 %6742, %6741
  %6744 = trunc i64 %6743 to i32
  %6745 = and i64 %6743, 4294967295
  store i64 %6745, i64* %RSI.i2547, align 8
  %6746 = shl i64 %6743, 32
  %6747 = ashr exact i64 %6746, 32
  %6748 = icmp ne i64 %6747, %6743
  %6749 = zext i1 %6748 to i8
  store i8 %6749, i8* %68, align 1
  %6750 = and i32 %6744, 255
  %6751 = tail call i32 @llvm.ctpop.i32(i32 %6750)
  %6752 = trunc i32 %6751 to i8
  %6753 = and i8 %6752, 1
  %6754 = xor i8 %6753, 1
  store i8 %6754, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6755 = lshr i32 %6744, 31
  %6756 = trunc i32 %6755 to i8
  store i8 %6756, i8* %85, align 1
  store i8 %6749, i8* %91, align 1
  %6757 = add i64 %6539, 140
  store i64 %6757, i64* %PC.i, align 8
  %6758 = load i64, i64* %6722, align 8
  store i64 %6758, i64* %RCX.i2541, align 8
  %6759 = add i64 %6758, 20
  %6760 = add i64 %6539, 144
  store i64 %6760, i64* %PC.i, align 8
  %6761 = inttoptr i64 %6759 to i32*
  %6762 = load i32, i32* %6761, align 4
  %6763 = shl i64 %6743, 32
  %6764 = ashr exact i64 %6763, 32
  %6765 = sext i32 %6762 to i64
  %6766 = mul nsw i64 %6765, %6764
  %6767 = and i64 %6766, 4294967295
  store i64 %6767, i64* %RSI.i2547, align 8
  %6768 = trunc i64 %6766 to i32
  %6769 = and i64 %6766, 4294967295
  store i64 %6769, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6770 = and i32 %6768, 255
  %6771 = tail call i32 @llvm.ctpop.i32(i32 %6770)
  %6772 = trunc i32 %6771 to i8
  %6773 = and i8 %6772, 1
  %6774 = xor i8 %6773, 1
  store i8 %6774, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6775 = icmp eq i32 %6768, 0
  %6776 = zext i1 %6775 to i8
  store i8 %6776, i8* %82, align 1
  %6777 = lshr i32 %6768, 31
  %6778 = trunc i32 %6777 to i8
  store i8 %6778, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6779 = load i64, i64* %RBP.i, align 8
  %6780 = add i64 %6779, -56
  %6781 = add i64 %6539, 149
  store i64 %6781, i64* %PC.i, align 8
  %6782 = inttoptr i64 %6780 to i32*
  %6783 = load i32, i32* %6782, align 4
  %6784 = zext i32 %6783 to i64
  store i64 %6784, i64* %RSI.i2547, align 8
  %6785 = add i64 %6779, 24
  %6786 = add i64 %6539, 153
  store i64 %6786, i64* %PC.i, align 8
  %6787 = inttoptr i64 %6785 to i64*
  %6788 = load i64, i64* %6787, align 8
  store i64 %6788, i64* %RCX.i2541, align 8
  %6789 = add i64 %6788, 20
  %6790 = add i64 %6539, 157
  store i64 %6790, i64* %PC.i, align 8
  %6791 = inttoptr i64 %6789 to i32*
  %6792 = load i32, i32* %6791, align 4
  %6793 = sext i32 %6783 to i64
  %6794 = sext i32 %6792 to i64
  %6795 = mul nsw i64 %6794, %6793
  %6796 = and i64 %6795, 4294967295
  store i64 %6796, i64* %RSI.i2547, align 8
  %6797 = trunc i64 %6795 to i32
  %6798 = add i32 %6797, %6768
  %6799 = zext i32 %6798 to i64
  store i64 %6799, i64* %RDX.i2544, align 8
  %6800 = icmp ult i32 %6798, %6768
  %6801 = icmp ult i32 %6798, %6797
  %6802 = or i1 %6800, %6801
  %6803 = zext i1 %6802 to i8
  store i8 %6803, i8* %68, align 1
  %6804 = and i32 %6798, 255
  %6805 = tail call i32 @llvm.ctpop.i32(i32 %6804)
  %6806 = trunc i32 %6805 to i8
  %6807 = and i8 %6806, 1
  %6808 = xor i8 %6807, 1
  store i8 %6808, i8* %74, align 1
  %6809 = xor i64 %6795, %6766
  %6810 = trunc i64 %6809 to i32
  %6811 = xor i32 %6810, %6798
  %6812 = lshr i32 %6811, 4
  %6813 = trunc i32 %6812 to i8
  %6814 = and i8 %6813, 1
  store i8 %6814, i8* %79, align 1
  %6815 = icmp eq i32 %6798, 0
  %6816 = zext i1 %6815 to i8
  store i8 %6816, i8* %82, align 1
  %6817 = lshr i32 %6798, 31
  %6818 = trunc i32 %6817 to i8
  store i8 %6818, i8* %85, align 1
  %6819 = lshr i32 %6797, 31
  %6820 = xor i32 %6817, %6777
  %6821 = xor i32 %6817, %6819
  %6822 = add nuw nsw i32 %6820, %6821
  %6823 = icmp eq i32 %6822, 2
  %6824 = zext i1 %6823 to i8
  store i8 %6824, i8* %91, align 1
  %6825 = add i64 %6779, -60
  %6826 = add i64 %6539, 162
  store i64 %6826, i64* %PC.i, align 8
  %6827 = inttoptr i64 %6825 to i32*
  %6828 = load i32, i32* %6827, align 4
  %6829 = add i32 %6828, %6798
  %6830 = zext i32 %6829 to i64
  store i64 %6830, i64* %RDX.i2544, align 8
  %6831 = icmp ult i32 %6829, %6798
  %6832 = icmp ult i32 %6829, %6828
  %6833 = or i1 %6831, %6832
  %6834 = zext i1 %6833 to i8
  store i8 %6834, i8* %68, align 1
  %6835 = and i32 %6829, 255
  %6836 = tail call i32 @llvm.ctpop.i32(i32 %6835)
  %6837 = trunc i32 %6836 to i8
  %6838 = and i8 %6837, 1
  %6839 = xor i8 %6838, 1
  store i8 %6839, i8* %74, align 1
  %6840 = xor i32 %6828, %6798
  %6841 = xor i32 %6840, %6829
  %6842 = lshr i32 %6841, 4
  %6843 = trunc i32 %6842 to i8
  %6844 = and i8 %6843, 1
  store i8 %6844, i8* %79, align 1
  %6845 = icmp eq i32 %6829, 0
  %6846 = zext i1 %6845 to i8
  store i8 %6846, i8* %82, align 1
  %6847 = lshr i32 %6829, 31
  %6848 = trunc i32 %6847 to i8
  store i8 %6848, i8* %85, align 1
  %6849 = lshr i32 %6828, 31
  %6850 = xor i32 %6847, %6817
  %6851 = xor i32 %6847, %6849
  %6852 = add nuw nsw i32 %6850, %6851
  %6853 = icmp eq i32 %6852, 2
  %6854 = zext i1 %6853 to i8
  store i8 %6854, i8* %91, align 1
  %6855 = sext i32 %6829 to i64
  store i64 %6855, i64* %RCX.i2541, align 8
  %6856 = load i64, i64* %RAX.i2556, align 8
  %6857 = shl nsw i64 %6855, 2
  %6858 = add i64 %6857, %6856
  %6859 = add i64 %6539, 170
  store i64 %6859, i64* %PC.i, align 8
  %6860 = load <2 x float>, <2 x float>* %191, align 1
  %6861 = extractelement <2 x float> %6860, i32 0
  %6862 = inttoptr i64 %6858 to float*
  store float %6861, float* %6862, align 4
  %6863 = load i64, i64* %RBP.i, align 8
  %6864 = add i64 %6863, -60
  %6865 = load i64, i64* %PC.i, align 8
  %6866 = add i64 %6865, 3
  store i64 %6866, i64* %PC.i, align 8
  %6867 = inttoptr i64 %6864 to i32*
  %6868 = load i32, i32* %6867, align 4
  %6869 = add i32 %6868, 1
  %6870 = zext i32 %6869 to i64
  store i64 %6870, i64* %RAX.i2556, align 8
  %6871 = icmp eq i32 %6868, -1
  %6872 = icmp eq i32 %6869, 0
  %6873 = or i1 %6871, %6872
  %6874 = zext i1 %6873 to i8
  store i8 %6874, i8* %68, align 1
  %6875 = and i32 %6869, 255
  %6876 = tail call i32 @llvm.ctpop.i32(i32 %6875)
  %6877 = trunc i32 %6876 to i8
  %6878 = and i8 %6877, 1
  %6879 = xor i8 %6878, 1
  store i8 %6879, i8* %74, align 1
  %6880 = xor i32 %6868, %6869
  %6881 = lshr i32 %6880, 4
  %6882 = trunc i32 %6881 to i8
  %6883 = and i8 %6882, 1
  store i8 %6883, i8* %79, align 1
  %6884 = icmp eq i32 %6869, 0
  %6885 = zext i1 %6884 to i8
  store i8 %6885, i8* %82, align 1
  %6886 = lshr i32 %6869, 31
  %6887 = trunc i32 %6886 to i8
  store i8 %6887, i8* %85, align 1
  %6888 = lshr i32 %6868, 31
  %6889 = xor i32 %6886, %6888
  %6890 = add nuw nsw i32 %6889, %6886
  %6891 = icmp eq i32 %6890, 2
  %6892 = zext i1 %6891 to i8
  store i8 %6892, i8* %91, align 1
  %6893 = add i64 %6865, 9
  store i64 %6893, i64* %PC.i, align 8
  store i32 %6869, i32* %6867, align 4
  %6894 = load i64, i64* %PC.i, align 8
  %6895 = add i64 %6894, -2748
  store i64 %6895, i64* %3, align 8
  br label %block_.L_400d6a

block_.L_40182b:                                  ; preds = %block_.L_400d6a
  %6896 = add i64 %359, -56
  %6897 = add i64 %395, 8
  store i64 %6897, i64* %PC.i, align 8
  %6898 = inttoptr i64 %6896 to i32*
  %6899 = load i32, i32* %6898, align 4
  %6900 = add i32 %6899, 1
  %6901 = zext i32 %6900 to i64
  store i64 %6901, i64* %RAX.i2556, align 8
  %6902 = icmp eq i32 %6899, -1
  %6903 = icmp eq i32 %6900, 0
  %6904 = or i1 %6902, %6903
  %6905 = zext i1 %6904 to i8
  store i8 %6905, i8* %68, align 1
  %6906 = and i32 %6900, 255
  %6907 = tail call i32 @llvm.ctpop.i32(i32 %6906)
  %6908 = trunc i32 %6907 to i8
  %6909 = and i8 %6908, 1
  %6910 = xor i8 %6909, 1
  store i8 %6910, i8* %74, align 1
  %6911 = xor i32 %6899, %6900
  %6912 = lshr i32 %6911, 4
  %6913 = trunc i32 %6912 to i8
  %6914 = and i8 %6913, 1
  store i8 %6914, i8* %79, align 1
  %6915 = icmp eq i32 %6900, 0
  %6916 = zext i1 %6915 to i8
  store i8 %6916, i8* %82, align 1
  %6917 = lshr i32 %6900, 31
  %6918 = trunc i32 %6917 to i8
  store i8 %6918, i8* %85, align 1
  %6919 = lshr i32 %6899, 31
  %6920 = xor i32 %6917, %6919
  %6921 = add nuw nsw i32 %6920, %6917
  %6922 = icmp eq i32 %6921, 2
  %6923 = zext i1 %6922 to i8
  store i8 %6923, i8* %91, align 1
  %6924 = add i64 %395, 14
  store i64 %6924, i64* %PC.i, align 8
  store i32 %6900, i32* %6898, align 4
  %6925 = load i64, i64* %PC.i, align 8
  %6926 = add i64 %6925, -2786
  store i64 %6926, i64* %3, align 8
  br label %block_.L_400d57

block_.L_40183e:                                  ; preds = %block_.L_400d57
  %6927 = add i64 %318, -52
  %6928 = add i64 %354, 8
  store i64 %6928, i64* %PC.i, align 8
  %6929 = inttoptr i64 %6927 to i32*
  %6930 = load i32, i32* %6929, align 4
  %6931 = add i32 %6930, 1
  %6932 = zext i32 %6931 to i64
  store i64 %6932, i64* %RAX.i2556, align 8
  %6933 = icmp eq i32 %6930, -1
  %6934 = icmp eq i32 %6931, 0
  %6935 = or i1 %6933, %6934
  %6936 = zext i1 %6935 to i8
  store i8 %6936, i8* %68, align 1
  %6937 = and i32 %6931, 255
  %6938 = tail call i32 @llvm.ctpop.i32(i32 %6937)
  %6939 = trunc i32 %6938 to i8
  %6940 = and i8 %6939, 1
  %6941 = xor i8 %6940, 1
  store i8 %6941, i8* %74, align 1
  %6942 = xor i32 %6930, %6931
  %6943 = lshr i32 %6942, 4
  %6944 = trunc i32 %6943 to i8
  %6945 = and i8 %6944, 1
  store i8 %6945, i8* %79, align 1
  %6946 = icmp eq i32 %6931, 0
  %6947 = zext i1 %6946 to i8
  store i8 %6947, i8* %82, align 1
  %6948 = lshr i32 %6931, 31
  %6949 = trunc i32 %6948 to i8
  store i8 %6949, i8* %85, align 1
  %6950 = lshr i32 %6930, 31
  %6951 = xor i32 %6948, %6950
  %6952 = add nuw nsw i32 %6951, %6948
  %6953 = icmp eq i32 %6952, 2
  %6954 = zext i1 %6953 to i8
  store i8 %6954, i8* %91, align 1
  %6955 = add i64 %354, 14
  store i64 %6955, i64* %PC.i, align 8
  store i32 %6931, i32* %6929, align 4
  %6956 = load i64, i64* %PC.i, align 8
  %6957 = add i64 %6956, -2824
  store i64 %6957, i64* %3, align 8
  br label %block_.L_400d44

block_.L_401851:                                  ; preds = %block_.L_400d44
  %6958 = add i64 %313, 7
  store i64 %6958, i64* %PC.i, align 8
  store i32 1, i32* %280, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_401858

block_.L_401858:                                  ; preds = %block_.L_401943, %block_.L_401851
  %6959 = phi i64 [ %7470, %block_.L_401943 ], [ %.pre4, %block_.L_401851 ]
  %6960 = load i64, i64* %RBP.i, align 8
  %6961 = add i64 %6960, -52
  %6962 = add i64 %6959, 3
  store i64 %6962, i64* %PC.i, align 8
  %6963 = inttoptr i64 %6961 to i32*
  %6964 = load i32, i32* %6963, align 4
  %6965 = zext i32 %6964 to i64
  store i64 %6965, i64* %RAX.i2556, align 8
  %6966 = add i64 %6960, -68
  %6967 = add i64 %6959, 6
  store i64 %6967, i64* %PC.i, align 8
  %6968 = inttoptr i64 %6966 to i32*
  %6969 = load i32, i32* %6968, align 4
  %6970 = sub i32 %6964, %6969
  %6971 = icmp ult i32 %6964, %6969
  %6972 = zext i1 %6971 to i8
  store i8 %6972, i8* %68, align 1
  %6973 = and i32 %6970, 255
  %6974 = tail call i32 @llvm.ctpop.i32(i32 %6973)
  %6975 = trunc i32 %6974 to i8
  %6976 = and i8 %6975, 1
  %6977 = xor i8 %6976, 1
  store i8 %6977, i8* %74, align 1
  %6978 = xor i32 %6969, %6964
  %6979 = xor i32 %6978, %6970
  %6980 = lshr i32 %6979, 4
  %6981 = trunc i32 %6980 to i8
  %6982 = and i8 %6981, 1
  store i8 %6982, i8* %79, align 1
  %6983 = icmp eq i32 %6970, 0
  %6984 = zext i1 %6983 to i8
  store i8 %6984, i8* %82, align 1
  %6985 = lshr i32 %6970, 31
  %6986 = trunc i32 %6985 to i8
  store i8 %6986, i8* %85, align 1
  %6987 = lshr i32 %6964, 31
  %6988 = lshr i32 %6969, 31
  %6989 = xor i32 %6988, %6987
  %6990 = xor i32 %6985, %6987
  %6991 = add nuw nsw i32 %6990, %6989
  %6992 = icmp eq i32 %6991, 2
  %6993 = zext i1 %6992 to i8
  store i8 %6993, i8* %91, align 1
  %6994 = icmp ne i8 %6986, 0
  %6995 = xor i1 %6994, %6992
  %.v12 = select i1 %6995, i64 12, i64 254
  %6996 = add i64 %6959, %.v12
  store i64 %6996, i64* %3, align 8
  br i1 %6995, label %block_401864, label %block_.L_401956

block_401864:                                     ; preds = %block_.L_401858
  %6997 = add i64 %6960, -56
  %6998 = add i64 %6996, 7
  store i64 %6998, i64* %PC.i, align 8
  %6999 = inttoptr i64 %6997 to i32*
  store i32 1, i32* %6999, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_40186b

block_.L_40186b:                                  ; preds = %block_.L_401930, %block_401864
  %7000 = phi i64 [ %7439, %block_.L_401930 ], [ %.pre5, %block_401864 ]
  %7001 = load i64, i64* %RBP.i, align 8
  %7002 = add i64 %7001, -56
  %7003 = add i64 %7000, 3
  store i64 %7003, i64* %PC.i, align 8
  %7004 = inttoptr i64 %7002 to i32*
  %7005 = load i32, i32* %7004, align 4
  %7006 = zext i32 %7005 to i64
  store i64 %7006, i64* %RAX.i2556, align 8
  %7007 = add i64 %7001, -72
  %7008 = add i64 %7000, 6
  store i64 %7008, i64* %PC.i, align 8
  %7009 = inttoptr i64 %7007 to i32*
  %7010 = load i32, i32* %7009, align 4
  %7011 = sub i32 %7005, %7010
  %7012 = icmp ult i32 %7005, %7010
  %7013 = zext i1 %7012 to i8
  store i8 %7013, i8* %68, align 1
  %7014 = and i32 %7011, 255
  %7015 = tail call i32 @llvm.ctpop.i32(i32 %7014)
  %7016 = trunc i32 %7015 to i8
  %7017 = and i8 %7016, 1
  %7018 = xor i8 %7017, 1
  store i8 %7018, i8* %74, align 1
  %7019 = xor i32 %7010, %7005
  %7020 = xor i32 %7019, %7011
  %7021 = lshr i32 %7020, 4
  %7022 = trunc i32 %7021 to i8
  %7023 = and i8 %7022, 1
  store i8 %7023, i8* %79, align 1
  %7024 = icmp eq i32 %7011, 0
  %7025 = zext i1 %7024 to i8
  store i8 %7025, i8* %82, align 1
  %7026 = lshr i32 %7011, 31
  %7027 = trunc i32 %7026 to i8
  store i8 %7027, i8* %85, align 1
  %7028 = lshr i32 %7005, 31
  %7029 = lshr i32 %7010, 31
  %7030 = xor i32 %7029, %7028
  %7031 = xor i32 %7026, %7028
  %7032 = add nuw nsw i32 %7031, %7030
  %7033 = icmp eq i32 %7032, 2
  %7034 = zext i1 %7033 to i8
  store i8 %7034, i8* %91, align 1
  %7035 = icmp ne i8 %7027, 0
  %7036 = xor i1 %7035, %7033
  %.v13 = select i1 %7036, i64 12, i64 216
  %7037 = add i64 %7000, %.v13
  store i64 %7037, i64* %3, align 8
  br i1 %7036, label %block_401877, label %block_.L_401943

block_401877:                                     ; preds = %block_.L_40186b
  %7038 = add i64 %7001, -60
  %7039 = add i64 %7037, 7
  store i64 %7039, i64* %PC.i, align 8
  %7040 = inttoptr i64 %7038 to i32*
  store i32 1, i32* %7040, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_40187e

block_.L_40187e:                                  ; preds = %block_40188a, %block_401877
  %7041 = phi i64 [ %7408, %block_40188a ], [ %.pre6, %block_401877 ]
  %7042 = load i64, i64* %RBP.i, align 8
  %7043 = add i64 %7042, -60
  %7044 = add i64 %7041, 3
  store i64 %7044, i64* %PC.i, align 8
  %7045 = inttoptr i64 %7043 to i32*
  %7046 = load i32, i32* %7045, align 4
  %7047 = zext i32 %7046 to i64
  store i64 %7047, i64* %RAX.i2556, align 8
  %7048 = add i64 %7042, -76
  %7049 = add i64 %7041, 6
  store i64 %7049, i64* %PC.i, align 8
  %7050 = inttoptr i64 %7048 to i32*
  %7051 = load i32, i32* %7050, align 4
  %7052 = sub i32 %7046, %7051
  %7053 = icmp ult i32 %7046, %7051
  %7054 = zext i1 %7053 to i8
  store i8 %7054, i8* %68, align 1
  %7055 = and i32 %7052, 255
  %7056 = tail call i32 @llvm.ctpop.i32(i32 %7055)
  %7057 = trunc i32 %7056 to i8
  %7058 = and i8 %7057, 1
  %7059 = xor i8 %7058, 1
  store i8 %7059, i8* %74, align 1
  %7060 = xor i32 %7051, %7046
  %7061 = xor i32 %7060, %7052
  %7062 = lshr i32 %7061, 4
  %7063 = trunc i32 %7062 to i8
  %7064 = and i8 %7063, 1
  store i8 %7064, i8* %79, align 1
  %7065 = icmp eq i32 %7052, 0
  %7066 = zext i1 %7065 to i8
  store i8 %7066, i8* %82, align 1
  %7067 = lshr i32 %7052, 31
  %7068 = trunc i32 %7067 to i8
  store i8 %7068, i8* %85, align 1
  %7069 = lshr i32 %7046, 31
  %7070 = lshr i32 %7051, 31
  %7071 = xor i32 %7070, %7069
  %7072 = xor i32 %7067, %7069
  %7073 = add nuw nsw i32 %7072, %7071
  %7074 = icmp eq i32 %7073, 2
  %7075 = zext i1 %7074 to i8
  store i8 %7075, i8* %91, align 1
  %7076 = icmp ne i8 %7068, 0
  %7077 = xor i1 %7076, %7074
  %.v14 = select i1 %7077, i64 12, i64 178
  %7078 = add i64 %7041, %.v14
  store i64 %7078, i64* %3, align 8
  br i1 %7077, label %block_40188a, label %block_.L_401930

block_40188a:                                     ; preds = %block_.L_40187e
  %7079 = add i64 %7042, 24
  %7080 = add i64 %7078, 4
  store i64 %7080, i64* %PC.i, align 8
  %7081 = inttoptr i64 %7079 to i64*
  %7082 = load i64, i64* %7081, align 8
  store i64 %7082, i64* %RAX.i2556, align 8
  %7083 = add i64 %7078, 7
  store i64 %7083, i64* %PC.i, align 8
  %7084 = inttoptr i64 %7082 to i64*
  %7085 = load i64, i64* %7084, align 8
  store i64 %7085, i64* %RAX.i2556, align 8
  %7086 = add i64 %7078, 11
  store i64 %7086, i64* %PC.i, align 8
  %7087 = load i64, i64* %7081, align 8
  store i64 %7087, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7088 = add i64 %7078, 19
  store i64 %7088, i64* %PC.i, align 8
  %7089 = load i64, i64* %7081, align 8
  store i64 %7089, i64* %RCX.i2541, align 8
  %7090 = add i64 %7078, 23
  store i64 %7090, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7091 = add i64 %7078, 27
  store i64 %7091, i64* %PC.i, align 8
  %7092 = load i64, i64* %7081, align 8
  store i64 %7092, i64* %RCX.i2541, align 8
  %7093 = add i64 %7078, 31
  store i64 %7093, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7094 = add i64 %7042, -52
  %7095 = add i64 %7078, 34
  store i64 %7095, i64* %PC.i, align 8
  %7096 = inttoptr i64 %7094 to i32*
  %7097 = load i32, i32* %7096, align 4
  %7098 = zext i32 %7097 to i64
  store i64 %7098, i64* %RSI.i2547, align 8
  %7099 = add i64 %7078, 38
  store i64 %7099, i64* %PC.i, align 8
  %7100 = load i64, i64* %7081, align 8
  store i64 %7100, i64* %RCX.i2541, align 8
  %7101 = add i64 %7100, 16
  %7102 = add i64 %7078, 42
  store i64 %7102, i64* %PC.i, align 8
  %7103 = inttoptr i64 %7101 to i32*
  %7104 = load i32, i32* %7103, align 4
  %7105 = sext i32 %7097 to i64
  %7106 = sext i32 %7104 to i64
  %7107 = mul nsw i64 %7106, %7105
  %7108 = trunc i64 %7107 to i32
  %7109 = and i64 %7107, 4294967295
  store i64 %7109, i64* %RSI.i2547, align 8
  %7110 = shl i64 %7107, 32
  %7111 = ashr exact i64 %7110, 32
  %7112 = icmp ne i64 %7111, %7107
  %7113 = zext i1 %7112 to i8
  store i8 %7113, i8* %68, align 1
  %7114 = and i32 %7108, 255
  %7115 = tail call i32 @llvm.ctpop.i32(i32 %7114)
  %7116 = trunc i32 %7115 to i8
  %7117 = and i8 %7116, 1
  %7118 = xor i8 %7117, 1
  store i8 %7118, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %7119 = lshr i32 %7108, 31
  %7120 = trunc i32 %7119 to i8
  store i8 %7120, i8* %85, align 1
  store i8 %7113, i8* %91, align 1
  %7121 = add i64 %7078, 46
  store i64 %7121, i64* %PC.i, align 8
  %7122 = load i64, i64* %7081, align 8
  store i64 %7122, i64* %RCX.i2541, align 8
  %7123 = add i64 %7122, 20
  %7124 = add i64 %7078, 50
  store i64 %7124, i64* %PC.i, align 8
  %7125 = inttoptr i64 %7123 to i32*
  %7126 = load i32, i32* %7125, align 4
  %7127 = shl i64 %7107, 32
  %7128 = ashr exact i64 %7127, 32
  %7129 = sext i32 %7126 to i64
  %7130 = mul nsw i64 %7129, %7128
  %7131 = and i64 %7130, 4294967295
  store i64 %7131, i64* %RSI.i2547, align 8
  %7132 = trunc i64 %7130 to i32
  %7133 = and i64 %7130, 4294967295
  store i64 %7133, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %7134 = and i32 %7132, 255
  %7135 = tail call i32 @llvm.ctpop.i32(i32 %7134)
  %7136 = trunc i32 %7135 to i8
  %7137 = and i8 %7136, 1
  %7138 = xor i8 %7137, 1
  store i8 %7138, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %7139 = icmp eq i32 %7132, 0
  %7140 = zext i1 %7139 to i8
  store i8 %7140, i8* %82, align 1
  %7141 = lshr i32 %7132, 31
  %7142 = trunc i32 %7141 to i8
  store i8 %7142, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7143 = load i64, i64* %RBP.i, align 8
  %7144 = add i64 %7143, -56
  %7145 = add i64 %7078, 55
  store i64 %7145, i64* %PC.i, align 8
  %7146 = inttoptr i64 %7144 to i32*
  %7147 = load i32, i32* %7146, align 4
  %7148 = zext i32 %7147 to i64
  store i64 %7148, i64* %RSI.i2547, align 8
  %7149 = add i64 %7143, 24
  %7150 = add i64 %7078, 59
  store i64 %7150, i64* %PC.i, align 8
  %7151 = inttoptr i64 %7149 to i64*
  %7152 = load i64, i64* %7151, align 8
  store i64 %7152, i64* %RCX.i2541, align 8
  %7153 = add i64 %7152, 20
  %7154 = add i64 %7078, 63
  store i64 %7154, i64* %PC.i, align 8
  %7155 = inttoptr i64 %7153 to i32*
  %7156 = load i32, i32* %7155, align 4
  %7157 = sext i32 %7147 to i64
  %7158 = sext i32 %7156 to i64
  %7159 = mul nsw i64 %7158, %7157
  %7160 = and i64 %7159, 4294967295
  store i64 %7160, i64* %RSI.i2547, align 8
  %7161 = trunc i64 %7159 to i32
  %7162 = add i32 %7161, %7132
  %7163 = zext i32 %7162 to i64
  store i64 %7163, i64* %RDX.i2544, align 8
  %7164 = icmp ult i32 %7162, %7132
  %7165 = icmp ult i32 %7162, %7161
  %7166 = or i1 %7164, %7165
  %7167 = zext i1 %7166 to i8
  store i8 %7167, i8* %68, align 1
  %7168 = and i32 %7162, 255
  %7169 = tail call i32 @llvm.ctpop.i32(i32 %7168)
  %7170 = trunc i32 %7169 to i8
  %7171 = and i8 %7170, 1
  %7172 = xor i8 %7171, 1
  store i8 %7172, i8* %74, align 1
  %7173 = xor i64 %7159, %7130
  %7174 = trunc i64 %7173 to i32
  %7175 = xor i32 %7174, %7162
  %7176 = lshr i32 %7175, 4
  %7177 = trunc i32 %7176 to i8
  %7178 = and i8 %7177, 1
  store i8 %7178, i8* %79, align 1
  %7179 = icmp eq i32 %7162, 0
  %7180 = zext i1 %7179 to i8
  store i8 %7180, i8* %82, align 1
  %7181 = lshr i32 %7162, 31
  %7182 = trunc i32 %7181 to i8
  store i8 %7182, i8* %85, align 1
  %7183 = lshr i32 %7161, 31
  %7184 = xor i32 %7181, %7141
  %7185 = xor i32 %7181, %7183
  %7186 = add nuw nsw i32 %7184, %7185
  %7187 = icmp eq i32 %7186, 2
  %7188 = zext i1 %7187 to i8
  store i8 %7188, i8* %91, align 1
  %7189 = add i64 %7143, -60
  %7190 = add i64 %7078, 68
  store i64 %7190, i64* %PC.i, align 8
  %7191 = inttoptr i64 %7189 to i32*
  %7192 = load i32, i32* %7191, align 4
  %7193 = add i32 %7192, %7162
  %7194 = zext i32 %7193 to i64
  store i64 %7194, i64* %RDX.i2544, align 8
  %7195 = icmp ult i32 %7193, %7162
  %7196 = icmp ult i32 %7193, %7192
  %7197 = or i1 %7195, %7196
  %7198 = zext i1 %7197 to i8
  store i8 %7198, i8* %68, align 1
  %7199 = and i32 %7193, 255
  %7200 = tail call i32 @llvm.ctpop.i32(i32 %7199)
  %7201 = trunc i32 %7200 to i8
  %7202 = and i8 %7201, 1
  %7203 = xor i8 %7202, 1
  store i8 %7203, i8* %74, align 1
  %7204 = xor i32 %7192, %7162
  %7205 = xor i32 %7204, %7193
  %7206 = lshr i32 %7205, 4
  %7207 = trunc i32 %7206 to i8
  %7208 = and i8 %7207, 1
  store i8 %7208, i8* %79, align 1
  %7209 = icmp eq i32 %7193, 0
  %7210 = zext i1 %7209 to i8
  store i8 %7210, i8* %82, align 1
  %7211 = lshr i32 %7193, 31
  %7212 = trunc i32 %7211 to i8
  store i8 %7212, i8* %85, align 1
  %7213 = lshr i32 %7192, 31
  %7214 = xor i32 %7211, %7181
  %7215 = xor i32 %7211, %7213
  %7216 = add nuw nsw i32 %7214, %7215
  %7217 = icmp eq i32 %7216, 2
  %7218 = zext i1 %7217 to i8
  store i8 %7218, i8* %91, align 1
  %7219 = sext i32 %7193 to i64
  store i64 %7219, i64* %RCX.i2541, align 8
  %7220 = load i64, i64* %RAX.i2556, align 8
  %7221 = shl nsw i64 %7219, 2
  %7222 = add i64 %7221, %7220
  %7223 = add i64 %7078, 76
  store i64 %7223, i64* %PC.i, align 8
  %7224 = inttoptr i64 %7222 to i32*
  %7225 = load i32, i32* %7224, align 4
  %7226 = bitcast [32 x %union.VectorReg]* %182 to i32*
  store i32 %7225, i32* %7226, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %7227 = load i64, i64* %RBP.i, align 8
  %7228 = add i64 %7227, -40
  %7229 = add i64 %7078, 80
  store i64 %7229, i64* %PC.i, align 8
  %7230 = inttoptr i64 %7228 to i64*
  %7231 = load i64, i64* %7230, align 8
  store i64 %7231, i64* %RAX.i2556, align 8
  %7232 = add i64 %7078, 83
  store i64 %7232, i64* %PC.i, align 8
  %7233 = inttoptr i64 %7231 to i64*
  %7234 = load i64, i64* %7233, align 8
  store i64 %7234, i64* %RAX.i2556, align 8
  %7235 = add i64 %7078, 87
  store i64 %7235, i64* %PC.i, align 8
  %7236 = load i64, i64* %7230, align 8
  store i64 %7236, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7237 = add i64 %7078, 95
  store i64 %7237, i64* %PC.i, align 8
  %7238 = load i64, i64* %7230, align 8
  store i64 %7238, i64* %RCX.i2541, align 8
  %7239 = add i64 %7078, 99
  store i64 %7239, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7240 = add i64 %7078, 103
  store i64 %7240, i64* %PC.i, align 8
  %7241 = load i64, i64* %7230, align 8
  store i64 %7241, i64* %RCX.i2541, align 8
  %7242 = add i64 %7078, 107
  store i64 %7242, i64* %PC.i, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7243 = add i64 %7227, -52
  %7244 = add i64 %7078, 110
  store i64 %7244, i64* %PC.i, align 8
  %7245 = inttoptr i64 %7243 to i32*
  %7246 = load i32, i32* %7245, align 4
  %7247 = zext i32 %7246 to i64
  store i64 %7247, i64* %RSI.i2547, align 8
  %7248 = add i64 %7078, 114
  store i64 %7248, i64* %PC.i, align 8
  %7249 = load i64, i64* %7230, align 8
  store i64 %7249, i64* %RCX.i2541, align 8
  %7250 = add i64 %7249, 16
  %7251 = add i64 %7078, 118
  store i64 %7251, i64* %PC.i, align 8
  %7252 = inttoptr i64 %7250 to i32*
  %7253 = load i32, i32* %7252, align 4
  %7254 = sext i32 %7246 to i64
  %7255 = sext i32 %7253 to i64
  %7256 = mul nsw i64 %7255, %7254
  %7257 = trunc i64 %7256 to i32
  %7258 = and i64 %7256, 4294967295
  store i64 %7258, i64* %RSI.i2547, align 8
  %7259 = shl i64 %7256, 32
  %7260 = ashr exact i64 %7259, 32
  %7261 = icmp ne i64 %7260, %7256
  %7262 = zext i1 %7261 to i8
  store i8 %7262, i8* %68, align 1
  %7263 = and i32 %7257, 255
  %7264 = tail call i32 @llvm.ctpop.i32(i32 %7263)
  %7265 = trunc i32 %7264 to i8
  %7266 = and i8 %7265, 1
  %7267 = xor i8 %7266, 1
  store i8 %7267, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %7268 = lshr i32 %7257, 31
  %7269 = trunc i32 %7268 to i8
  store i8 %7269, i8* %85, align 1
  store i8 %7262, i8* %91, align 1
  %7270 = add i64 %7078, 122
  store i64 %7270, i64* %PC.i, align 8
  %7271 = load i64, i64* %7230, align 8
  store i64 %7271, i64* %RCX.i2541, align 8
  %7272 = add i64 %7271, 20
  %7273 = add i64 %7078, 126
  store i64 %7273, i64* %PC.i, align 8
  %7274 = inttoptr i64 %7272 to i32*
  %7275 = load i32, i32* %7274, align 4
  %7276 = shl i64 %7256, 32
  %7277 = ashr exact i64 %7276, 32
  %7278 = sext i32 %7275 to i64
  %7279 = mul nsw i64 %7278, %7277
  %7280 = and i64 %7279, 4294967295
  store i64 %7280, i64* %RSI.i2547, align 8
  %7281 = trunc i64 %7279 to i32
  %7282 = and i64 %7279, 4294967295
  store i64 %7282, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %7283 = and i32 %7281, 255
  %7284 = tail call i32 @llvm.ctpop.i32(i32 %7283)
  %7285 = trunc i32 %7284 to i8
  %7286 = and i8 %7285, 1
  %7287 = xor i8 %7286, 1
  store i8 %7287, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %7288 = icmp eq i32 %7281, 0
  %7289 = zext i1 %7288 to i8
  store i8 %7289, i8* %82, align 1
  %7290 = lshr i32 %7281, 31
  %7291 = trunc i32 %7290 to i8
  store i8 %7291, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7292 = load i64, i64* %RBP.i, align 8
  %7293 = add i64 %7292, -56
  %7294 = add i64 %7078, 131
  store i64 %7294, i64* %PC.i, align 8
  %7295 = inttoptr i64 %7293 to i32*
  %7296 = load i32, i32* %7295, align 4
  %7297 = zext i32 %7296 to i64
  store i64 %7297, i64* %RSI.i2547, align 8
  %7298 = add i64 %7292, -40
  %7299 = add i64 %7078, 135
  store i64 %7299, i64* %PC.i, align 8
  %7300 = inttoptr i64 %7298 to i64*
  %7301 = load i64, i64* %7300, align 8
  store i64 %7301, i64* %RCX.i2541, align 8
  %7302 = add i64 %7301, 20
  %7303 = add i64 %7078, 139
  store i64 %7303, i64* %PC.i, align 8
  %7304 = inttoptr i64 %7302 to i32*
  %7305 = load i32, i32* %7304, align 4
  %7306 = sext i32 %7296 to i64
  %7307 = sext i32 %7305 to i64
  %7308 = mul nsw i64 %7307, %7306
  %7309 = and i64 %7308, 4294967295
  store i64 %7309, i64* %RSI.i2547, align 8
  %7310 = trunc i64 %7308 to i32
  %7311 = add i32 %7310, %7281
  %7312 = zext i32 %7311 to i64
  store i64 %7312, i64* %RDX.i2544, align 8
  %7313 = icmp ult i32 %7311, %7281
  %7314 = icmp ult i32 %7311, %7310
  %7315 = or i1 %7313, %7314
  %7316 = zext i1 %7315 to i8
  store i8 %7316, i8* %68, align 1
  %7317 = and i32 %7311, 255
  %7318 = tail call i32 @llvm.ctpop.i32(i32 %7317)
  %7319 = trunc i32 %7318 to i8
  %7320 = and i8 %7319, 1
  %7321 = xor i8 %7320, 1
  store i8 %7321, i8* %74, align 1
  %7322 = xor i64 %7308, %7279
  %7323 = trunc i64 %7322 to i32
  %7324 = xor i32 %7323, %7311
  %7325 = lshr i32 %7324, 4
  %7326 = trunc i32 %7325 to i8
  %7327 = and i8 %7326, 1
  store i8 %7327, i8* %79, align 1
  %7328 = icmp eq i32 %7311, 0
  %7329 = zext i1 %7328 to i8
  store i8 %7329, i8* %82, align 1
  %7330 = lshr i32 %7311, 31
  %7331 = trunc i32 %7330 to i8
  store i8 %7331, i8* %85, align 1
  %7332 = lshr i32 %7310, 31
  %7333 = xor i32 %7330, %7290
  %7334 = xor i32 %7330, %7332
  %7335 = add nuw nsw i32 %7333, %7334
  %7336 = icmp eq i32 %7335, 2
  %7337 = zext i1 %7336 to i8
  store i8 %7337, i8* %91, align 1
  %7338 = add i64 %7292, -60
  %7339 = add i64 %7078, 144
  store i64 %7339, i64* %PC.i, align 8
  %7340 = inttoptr i64 %7338 to i32*
  %7341 = load i32, i32* %7340, align 4
  %7342 = add i32 %7341, %7311
  %7343 = zext i32 %7342 to i64
  store i64 %7343, i64* %RDX.i2544, align 8
  %7344 = icmp ult i32 %7342, %7311
  %7345 = icmp ult i32 %7342, %7341
  %7346 = or i1 %7344, %7345
  %7347 = zext i1 %7346 to i8
  store i8 %7347, i8* %68, align 1
  %7348 = and i32 %7342, 255
  %7349 = tail call i32 @llvm.ctpop.i32(i32 %7348)
  %7350 = trunc i32 %7349 to i8
  %7351 = and i8 %7350, 1
  %7352 = xor i8 %7351, 1
  store i8 %7352, i8* %74, align 1
  %7353 = xor i32 %7341, %7311
  %7354 = xor i32 %7353, %7342
  %7355 = lshr i32 %7354, 4
  %7356 = trunc i32 %7355 to i8
  %7357 = and i8 %7356, 1
  store i8 %7357, i8* %79, align 1
  %7358 = icmp eq i32 %7342, 0
  %7359 = zext i1 %7358 to i8
  store i8 %7359, i8* %82, align 1
  %7360 = lshr i32 %7342, 31
  %7361 = trunc i32 %7360 to i8
  store i8 %7361, i8* %85, align 1
  %7362 = lshr i32 %7341, 31
  %7363 = xor i32 %7360, %7330
  %7364 = xor i32 %7360, %7362
  %7365 = add nuw nsw i32 %7363, %7364
  %7366 = icmp eq i32 %7365, 2
  %7367 = zext i1 %7366 to i8
  store i8 %7367, i8* %91, align 1
  %7368 = sext i32 %7342 to i64
  store i64 %7368, i64* %RCX.i2541, align 8
  %7369 = load i64, i64* %RAX.i2556, align 8
  %7370 = shl nsw i64 %7368, 2
  %7371 = add i64 %7370, %7369
  %7372 = add i64 %7078, 152
  store i64 %7372, i64* %PC.i, align 8
  %7373 = load <2 x float>, <2 x float>* %191, align 1
  %7374 = extractelement <2 x float> %7373, i32 0
  %7375 = inttoptr i64 %7371 to float*
  store float %7374, float* %7375, align 4
  %7376 = load i64, i64* %RBP.i, align 8
  %7377 = add i64 %7376, -60
  %7378 = load i64, i64* %PC.i, align 8
  %7379 = add i64 %7378, 3
  store i64 %7379, i64* %PC.i, align 8
  %7380 = inttoptr i64 %7377 to i32*
  %7381 = load i32, i32* %7380, align 4
  %7382 = add i32 %7381, 1
  %7383 = zext i32 %7382 to i64
  store i64 %7383, i64* %RAX.i2556, align 8
  %7384 = icmp eq i32 %7381, -1
  %7385 = icmp eq i32 %7382, 0
  %7386 = or i1 %7384, %7385
  %7387 = zext i1 %7386 to i8
  store i8 %7387, i8* %68, align 1
  %7388 = and i32 %7382, 255
  %7389 = tail call i32 @llvm.ctpop.i32(i32 %7388)
  %7390 = trunc i32 %7389 to i8
  %7391 = and i8 %7390, 1
  %7392 = xor i8 %7391, 1
  store i8 %7392, i8* %74, align 1
  %7393 = xor i32 %7381, %7382
  %7394 = lshr i32 %7393, 4
  %7395 = trunc i32 %7394 to i8
  %7396 = and i8 %7395, 1
  store i8 %7396, i8* %79, align 1
  %7397 = icmp eq i32 %7382, 0
  %7398 = zext i1 %7397 to i8
  store i8 %7398, i8* %82, align 1
  %7399 = lshr i32 %7382, 31
  %7400 = trunc i32 %7399 to i8
  store i8 %7400, i8* %85, align 1
  %7401 = lshr i32 %7381, 31
  %7402 = xor i32 %7399, %7401
  %7403 = add nuw nsw i32 %7402, %7399
  %7404 = icmp eq i32 %7403, 2
  %7405 = zext i1 %7404 to i8
  store i8 %7405, i8* %91, align 1
  %7406 = add i64 %7378, 9
  store i64 %7406, i64* %PC.i, align 8
  store i32 %7382, i32* %7380, align 4
  %7407 = load i64, i64* %PC.i, align 8
  %7408 = add i64 %7407, -173
  store i64 %7408, i64* %3, align 8
  br label %block_.L_40187e

block_.L_401930:                                  ; preds = %block_.L_40187e
  %7409 = add i64 %7042, -56
  %7410 = add i64 %7078, 8
  store i64 %7410, i64* %PC.i, align 8
  %7411 = inttoptr i64 %7409 to i32*
  %7412 = load i32, i32* %7411, align 4
  %7413 = add i32 %7412, 1
  %7414 = zext i32 %7413 to i64
  store i64 %7414, i64* %RAX.i2556, align 8
  %7415 = icmp eq i32 %7412, -1
  %7416 = icmp eq i32 %7413, 0
  %7417 = or i1 %7415, %7416
  %7418 = zext i1 %7417 to i8
  store i8 %7418, i8* %68, align 1
  %7419 = and i32 %7413, 255
  %7420 = tail call i32 @llvm.ctpop.i32(i32 %7419)
  %7421 = trunc i32 %7420 to i8
  %7422 = and i8 %7421, 1
  %7423 = xor i8 %7422, 1
  store i8 %7423, i8* %74, align 1
  %7424 = xor i32 %7412, %7413
  %7425 = lshr i32 %7424, 4
  %7426 = trunc i32 %7425 to i8
  %7427 = and i8 %7426, 1
  store i8 %7427, i8* %79, align 1
  %7428 = icmp eq i32 %7413, 0
  %7429 = zext i1 %7428 to i8
  store i8 %7429, i8* %82, align 1
  %7430 = lshr i32 %7413, 31
  %7431 = trunc i32 %7430 to i8
  store i8 %7431, i8* %85, align 1
  %7432 = lshr i32 %7412, 31
  %7433 = xor i32 %7430, %7432
  %7434 = add nuw nsw i32 %7433, %7430
  %7435 = icmp eq i32 %7434, 2
  %7436 = zext i1 %7435 to i8
  store i8 %7436, i8* %91, align 1
  %7437 = add i64 %7078, 14
  store i64 %7437, i64* %PC.i, align 8
  store i32 %7413, i32* %7411, align 4
  %7438 = load i64, i64* %PC.i, align 8
  %7439 = add i64 %7438, -211
  store i64 %7439, i64* %3, align 8
  br label %block_.L_40186b

block_.L_401943:                                  ; preds = %block_.L_40186b
  %7440 = add i64 %7001, -52
  %7441 = add i64 %7037, 8
  store i64 %7441, i64* %PC.i, align 8
  %7442 = inttoptr i64 %7440 to i32*
  %7443 = load i32, i32* %7442, align 4
  %7444 = add i32 %7443, 1
  %7445 = zext i32 %7444 to i64
  store i64 %7445, i64* %RAX.i2556, align 8
  %7446 = icmp eq i32 %7443, -1
  %7447 = icmp eq i32 %7444, 0
  %7448 = or i1 %7446, %7447
  %7449 = zext i1 %7448 to i8
  store i8 %7449, i8* %68, align 1
  %7450 = and i32 %7444, 255
  %7451 = tail call i32 @llvm.ctpop.i32(i32 %7450)
  %7452 = trunc i32 %7451 to i8
  %7453 = and i8 %7452, 1
  %7454 = xor i8 %7453, 1
  store i8 %7454, i8* %74, align 1
  %7455 = xor i32 %7443, %7444
  %7456 = lshr i32 %7455, 4
  %7457 = trunc i32 %7456 to i8
  %7458 = and i8 %7457, 1
  store i8 %7458, i8* %79, align 1
  %7459 = icmp eq i32 %7444, 0
  %7460 = zext i1 %7459 to i8
  store i8 %7460, i8* %82, align 1
  %7461 = lshr i32 %7444, 31
  %7462 = trunc i32 %7461 to i8
  store i8 %7462, i8* %85, align 1
  %7463 = lshr i32 %7443, 31
  %7464 = xor i32 %7461, %7463
  %7465 = add nuw nsw i32 %7464, %7461
  %7466 = icmp eq i32 %7465, 2
  %7467 = zext i1 %7466 to i8
  store i8 %7467, i8* %91, align 1
  %7468 = add i64 %7037, 14
  store i64 %7468, i64* %PC.i, align 8
  store i32 %7444, i32* %7442, align 4
  %7469 = load i64, i64* %PC.i, align 8
  %7470 = add i64 %7469, -249
  store i64 %7470, i64* %3, align 8
  br label %block_.L_401858

block_.L_401956:                                  ; preds = %block_.L_401858
  %7471 = add i64 %6960, -64
  %7472 = add i64 %6996, 8
  store i64 %7472, i64* %PC.i, align 8
  %7473 = inttoptr i64 %7471 to i32*
  %7474 = load i32, i32* %7473, align 4
  %7475 = add i32 %7474, 1
  %7476 = zext i32 %7475 to i64
  store i64 %7476, i64* %RAX.i2556, align 8
  %7477 = icmp eq i32 %7474, -1
  %7478 = icmp eq i32 %7475, 0
  %7479 = or i1 %7477, %7478
  %7480 = zext i1 %7479 to i8
  store i8 %7480, i8* %68, align 1
  %7481 = and i32 %7475, 255
  %7482 = tail call i32 @llvm.ctpop.i32(i32 %7481)
  %7483 = trunc i32 %7482 to i8
  %7484 = and i8 %7483, 1
  %7485 = xor i8 %7484, 1
  store i8 %7485, i8* %74, align 1
  %7486 = xor i32 %7474, %7475
  %7487 = lshr i32 %7486, 4
  %7488 = trunc i32 %7487 to i8
  %7489 = and i8 %7488, 1
  store i8 %7489, i8* %79, align 1
  %7490 = icmp eq i32 %7475, 0
  %7491 = zext i1 %7490 to i8
  store i8 %7491, i8* %82, align 1
  %7492 = lshr i32 %7475, 31
  %7493 = trunc i32 %7492 to i8
  store i8 %7493, i8* %85, align 1
  %7494 = lshr i32 %7474, 31
  %7495 = xor i32 %7492, %7494
  %7496 = add nuw nsw i32 %7495, %7492
  %7497 = icmp eq i32 %7496, 2
  %7498 = zext i1 %7497 to i8
  store i8 %7498, i8* %91, align 1
  %7499 = add i64 %6996, 14
  store i64 %7499, i64* %PC.i, align 8
  store i32 %7475, i32* %7473, align 4
  %7500 = load i64, i64* %PC.i, align 8
  %7501 = add i64 %7500, -3131
  store i64 %7501, i64* %3, align 8
  br label %block_.L_400d29

block_.L_401969:                                  ; preds = %block_.L_400d29
  %7502 = add i64 %229, -80
  %7503 = add i64 %265, 5
  store i64 %7503, i64* %PC.i, align 8
  %7504 = inttoptr i64 %7502 to i32*
  %7505 = load i32, i32* %7504, align 4
  %7506 = bitcast [32 x %union.VectorReg]* %182 to i32*
  store i32 %7505, i32* %7506, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %7507 = add i64 %265, 6
  store i64 %7507, i64* %PC.i, align 8
  %7508 = load i64, i64* %6, align 8
  %7509 = add i64 %7508, 8
  %7510 = inttoptr i64 %7508 to i64*
  %7511 = load i64, i64* %7510, align 8
  store i64 %7511, i64* %RBP.i, align 8
  store i64 %7509, i64* %6, align 8
  %7512 = add i64 %265, 7
  store i64 %7512, i64* %PC.i, align 8
  %7513 = inttoptr i64 %7509 to i64*
  %7514 = load i64, i64* %7513, align 8
  store i64 %7514, i64* %3, align 8
  %7515 = add i64 %7508, 16
  store i64 %7515, i64* %6, align 8
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

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0xc__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

define %struct.Memory* @routine_jge_.L_401969(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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

define %struct.Memory* @routine_jge_.L_401851(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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

define %struct.Memory* @routine_jge_.L_40183e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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

define %struct.Memory* @routine_jge_.L_40182b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
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

define %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

define %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RDX, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x603058_type* @G_0x603058 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401830(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_400d57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401843(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401956(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401943(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401930(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40187e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401935(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40186b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401948(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401858(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40195b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d29(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
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
