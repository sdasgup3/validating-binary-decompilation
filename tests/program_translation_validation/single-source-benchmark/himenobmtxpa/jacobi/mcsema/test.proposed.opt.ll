; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603058_type = type <{ [16 x i8] }>
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
  %RAX.i2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i2556, align 8
  %R10.i2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i2554, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2550 = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i2550, align 4
  %22 = add i64 %10, 14
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i2547, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %RDX.i2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RDX.i2544, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %RCX.i2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %RCX.i2541, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R8.i, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -48
  %50 = load i64, i64* %R9.i, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -40
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RCX.i2541, align 8
  %RDI.i2532 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %60 = add i64 %59, 12
  %61 = add i64 %56, 7
  store i64 %61, i64* %3, align 8
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
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %64, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -40
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RCX.i2541, align 8
  %101 = add i64 %100, 16
  %102 = add i64 %97, 7
  store i64 %102, i64* %3, align 8
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
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 %105, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -40
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RCX.i2541, align 8
  %136 = add i64 %135, 20
  %137 = add i64 %132, 7
  store i64 %137, i64* %3, align 8
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
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  store i32 %140, i32* %164, align 4
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -64
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 7
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i32*
  store i32 0, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -96
  %172 = load i64, i64* %R10.i2554, align 8
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -104
  %178 = load i64, i64* %RAX.i2556, align 8
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
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
  %196 = bitcast i64* %184 to <2 x i32>*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %198 = bitcast %union.VectorReg* %197 to i8*
  %199 = bitcast %union.VectorReg* %197 to float*
  %200 = getelementptr inbounds i8, i8* %198, i64 4
  %201 = bitcast i8* %200 to float*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %203 = bitcast i64* %202 to float*
  %204 = getelementptr inbounds i8, i8* %198, i64 12
  %205 = bitcast i8* %204 to float*
  %206 = bitcast %union.VectorReg* %197 to <2 x float>*
  %207 = bitcast i64* %202 to <2 x i32>*
  %208 = bitcast i8* %200 to i32*
  %209 = bitcast i64* %202 to i32*
  %210 = bitcast i8* %204 to i32*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %212 = bitcast %union.VectorReg* %211 to i8*
  %213 = bitcast %union.VectorReg* %211 to float*
  %214 = getelementptr inbounds i8, i8* %212, i64 4
  %215 = bitcast i8* %214 to float*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %217 = bitcast i64* %216 to float*
  %218 = getelementptr inbounds i8, i8* %212, i64 12
  %219 = bitcast i8* %218 to float*
  %220 = bitcast %union.VectorReg* %211 to <2 x float>*
  %221 = bitcast i64* %216 to <2 x i32>*
  %222 = bitcast i8* %214 to i32*
  %223 = bitcast i64* %216 to i32*
  %224 = bitcast i8* %218 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400d29

block_.L_400d29:                                  ; preds = %block_.L_401956, %entry
  %225 = phi i64 [ %7348, %block_.L_401956 ], [ %.pre, %entry ]
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -64
  %228 = add i64 %225, 3
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX.i2556, align 8
  %232 = add i64 %226, -4
  %233 = add i64 %225, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = sub i32 %230, %235
  %237 = icmp ult i32 %230, %235
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %68, align 1
  %239 = and i32 %236, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %74, align 1
  %244 = xor i32 %235, %230
  %245 = xor i32 %244, %236
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %79, align 1
  %249 = icmp eq i32 %236, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %82, align 1
  %251 = lshr i32 %236, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %85, align 1
  %253 = lshr i32 %230, 31
  %254 = lshr i32 %235, 31
  %255 = xor i32 %254, %253
  %256 = xor i32 %251, %253
  %257 = add nuw nsw i32 %256, %255
  %258 = icmp eq i32 %257, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %91, align 1
  %260 = icmp ne i8 %252, 0
  %261 = xor i1 %260, %258
  %.v = select i1 %261, i64 12, i64 3136
  %262 = add i64 %225, %.v
  store i64 %262, i64* %3, align 8
  br i1 %261, label %block_400d35, label %block_.L_401969

block_400d35:                                     ; preds = %block_.L_400d29
  store i32 0, i32* %185, align 1
  store i32 0, i32* %187, align 1
  store i32 0, i32* %188, align 1
  store i32 0, i32* %190, align 1
  %263 = add i64 %226, -80
  %264 = add i64 %262, 8
  store i64 %264, i64* %3, align 8
  %265 = load <2 x float>, <2 x float>* %191, align 1
  %266 = extractelement <2 x float> %265, i32 0
  %267 = inttoptr i64 %263 to float*
  store float %266, float* %267, align 4
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -52
  %270 = load i64, i64* %3, align 8
  %271 = add i64 %270, 7
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %269 to i32*
  store i32 1, i32* %272, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d44:                                  ; preds = %block_.L_40183e, %block_400d35
  %273 = phi i64 [ %6815, %block_.L_40183e ], [ %.pre1, %block_400d35 ]
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -52
  %276 = add i64 %273, 3
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX.i2556, align 8
  %280 = add i64 %274, -68
  %281 = add i64 %273, 6
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = sub i32 %278, %283
  %285 = icmp ult i32 %278, %283
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %68, align 1
  %287 = and i32 %284, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %74, align 1
  %292 = xor i32 %283, %278
  %293 = xor i32 %292, %284
  %294 = lshr i32 %293, 4
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  store i8 %296, i8* %79, align 1
  %297 = icmp eq i32 %284, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %82, align 1
  %299 = lshr i32 %284, 31
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %85, align 1
  %301 = lshr i32 %278, 31
  %302 = lshr i32 %283, 31
  %303 = xor i32 %302, %301
  %304 = xor i32 %299, %301
  %305 = add nuw nsw i32 %304, %303
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %91, align 1
  %308 = icmp ne i8 %300, 0
  %309 = xor i1 %308, %306
  %.v7 = select i1 %309, i64 12, i64 2829
  %310 = add i64 %273, %.v7
  store i64 %310, i64* %3, align 8
  br i1 %309, label %block_400d50, label %block_.L_401851

block_400d50:                                     ; preds = %block_.L_400d44
  %311 = add i64 %274, -56
  %312 = add i64 %310, 7
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  store i32 1, i32* %313, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400d57

block_.L_400d57:                                  ; preds = %block_.L_40182b, %block_400d50
  %314 = phi i64 [ %6785, %block_.L_40182b ], [ %.pre2, %block_400d50 ]
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -56
  %317 = add i64 %314, 3
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i2556, align 8
  %321 = add i64 %315, -72
  %322 = add i64 %314, 6
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = sub i32 %319, %324
  %326 = icmp ult i32 %319, %324
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %68, align 1
  %328 = and i32 %325, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %74, align 1
  %333 = xor i32 %324, %319
  %334 = xor i32 %333, %325
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %79, align 1
  %338 = icmp eq i32 %325, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %82, align 1
  %340 = lshr i32 %325, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %85, align 1
  %342 = lshr i32 %319, 31
  %343 = lshr i32 %324, 31
  %344 = xor i32 %343, %342
  %345 = xor i32 %340, %342
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %91, align 1
  %349 = icmp ne i8 %341, 0
  %350 = xor i1 %349, %347
  %.v8 = select i1 %350, i64 12, i64 2791
  %351 = add i64 %314, %.v8
  store i64 %351, i64* %3, align 8
  br i1 %350, label %block_400d63, label %block_.L_40183e

block_400d63:                                     ; preds = %block_.L_400d57
  %352 = add i64 %315, -60
  %353 = add i64 %351, 7
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  store i32 1, i32* %354, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400d6a

block_.L_400d6a:                                  ; preds = %block_400d76, %block_400d63
  %355 = phi i64 [ %6755, %block_400d76 ], [ %.pre3, %block_400d63 ]
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -60
  %358 = add i64 %355, 3
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RAX.i2556, align 8
  %362 = add i64 %356, -76
  %363 = add i64 %355, 6
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sub i32 %360, %365
  %367 = icmp ult i32 %360, %365
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %68, align 1
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %74, align 1
  %374 = xor i32 %365, %360
  %375 = xor i32 %374, %366
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %79, align 1
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %82, align 1
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %85, align 1
  %383 = lshr i32 %360, 31
  %384 = lshr i32 %365, 31
  %385 = xor i32 %384, %383
  %386 = xor i32 %381, %383
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %91, align 1
  %390 = icmp ne i8 %382, 0
  %391 = xor i1 %390, %388
  %.v9 = select i1 %391, i64 12, i64 2753
  %392 = add i64 %355, %.v9
  store i64 %392, i64* %3, align 8
  br i1 %391, label %block_400d76, label %block_.L_40182b

block_400d76:                                     ; preds = %block_.L_400d6a
  %393 = add i64 %356, -16
  %394 = add i64 %392, 4
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX.i2556, align 8
  %397 = add i64 %392, 7
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i2556, align 8
  %400 = add i64 %392, 11
  store i64 %400, i64* %3, align 8
  %401 = load i64, i64* %395, align 8
  store i64 %401, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %402 = add i64 %392, 19
  store i64 %402, i64* %3, align 8
  %403 = load i64, i64* %395, align 8
  store i64 %403, i64* %RCX.i2541, align 8
  %404 = add i64 %392, 23
  store i64 %404, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %405 = add i64 %392, 27
  store i64 %405, i64* %3, align 8
  %406 = load i64, i64* %395, align 8
  store i64 %406, i64* %RCX.i2541, align 8
  %407 = add i64 %392, 31
  store i64 %407, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %408 = add i64 %356, -52
  %409 = add i64 %392, 34
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RSI.i2547, align 8
  %413 = add i64 %392, 38
  store i64 %413, i64* %3, align 8
  %414 = load i64, i64* %395, align 8
  store i64 %414, i64* %RCX.i2541, align 8
  %415 = add i64 %414, 16
  %416 = add i64 %392, 42
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %411 to i64
  %420 = sext i32 %418 to i64
  %421 = mul nsw i64 %420, %419
  %422 = trunc i64 %421 to i32
  %423 = and i64 %421, 4294967295
  store i64 %423, i64* %RSI.i2547, align 8
  %424 = shl i64 %421, 32
  %425 = ashr exact i64 %424, 32
  %426 = icmp ne i64 %425, %421
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %68, align 1
  %428 = and i32 %422, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %433 = lshr i32 %422, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %85, align 1
  store i8 %427, i8* %91, align 1
  %435 = add i64 %392, 46
  store i64 %435, i64* %3, align 8
  %436 = load i64, i64* %395, align 8
  store i64 %436, i64* %RCX.i2541, align 8
  %437 = add i64 %436, 20
  %438 = add i64 %392, 50
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = mul nsw i64 %441, %425
  %443 = and i64 %442, 4294967295
  store i64 %443, i64* %RSI.i2547, align 8
  %444 = trunc i64 %442 to i32
  store i64 %443, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %445 = and i32 %444, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %450 = icmp eq i32 %444, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %82, align 1
  %452 = lshr i32 %444, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -56
  %456 = add i64 %392, 55
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RSI.i2547, align 8
  %460 = add i64 %454, -16
  %461 = add i64 %392, 59
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RCX.i2541, align 8
  %464 = add i64 %463, 20
  %465 = add i64 %392, 63
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %458 to i64
  %469 = sext i32 %467 to i64
  %470 = mul nsw i64 %469, %468
  %471 = and i64 %470, 4294967295
  store i64 %471, i64* %RSI.i2547, align 8
  %472 = trunc i64 %470 to i32
  %473 = add i32 %472, %444
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RDX.i2544, align 8
  %475 = icmp ult i32 %473, %444
  %476 = icmp ult i32 %473, %472
  %477 = or i1 %475, %476
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %68, align 1
  %479 = and i32 %473, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %74, align 1
  %484 = xor i64 %470, %442
  %485 = trunc i64 %484 to i32
  %486 = xor i32 %485, %473
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %79, align 1
  %490 = icmp eq i32 %473, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %82, align 1
  %492 = lshr i32 %473, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %85, align 1
  %494 = lshr i32 %472, 31
  %495 = xor i32 %492, %452
  %496 = xor i32 %492, %494
  %497 = add nuw nsw i32 %495, %496
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %91, align 1
  %500 = add i64 %454, -60
  %501 = add i64 %392, 68
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i32 %503, %473
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDX.i2544, align 8
  %506 = icmp ult i32 %504, %473
  %507 = icmp ult i32 %504, %503
  %508 = or i1 %506, %507
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %68, align 1
  %510 = and i32 %504, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %74, align 1
  %515 = xor i32 %503, %473
  %516 = xor i32 %515, %504
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %79, align 1
  %520 = icmp eq i32 %504, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %82, align 1
  %522 = lshr i32 %504, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %85, align 1
  %524 = lshr i32 %503, 31
  %525 = xor i32 %522, %492
  %526 = xor i32 %522, %524
  %527 = add nuw nsw i32 %525, %526
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %91, align 1
  %530 = sext i32 %504 to i64
  store i64 %530, i64* %RCX.i2541, align 8
  %531 = load i64, i64* %RAX.i2556, align 8
  %532 = shl nsw i64 %530, 2
  %533 = add i64 %532, %531
  %534 = add i64 %392, 76
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  store i32 %536, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -40
  %539 = add i64 %392, 80
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RAX.i2556, align 8
  %542 = add i64 %392, 83
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RAX.i2556, align 8
  %545 = add i64 %392, 87
  store i64 %545, i64* %3, align 8
  %546 = load i64, i64* %540, align 8
  store i64 %546, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %547 = add i64 %392, 95
  store i64 %547, i64* %3, align 8
  %548 = load i64, i64* %540, align 8
  store i64 %548, i64* %RCX.i2541, align 8
  %549 = add i64 %392, 99
  store i64 %549, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %550 = add i64 %392, 103
  store i64 %550, i64* %3, align 8
  %551 = load i64, i64* %540, align 8
  store i64 %551, i64* %RCX.i2541, align 8
  %552 = add i64 %392, 107
  store i64 %552, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %553 = add i64 %537, -52
  %554 = add i64 %392, 110
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, 1
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RSI.i2547, align 8
  %559 = icmp eq i32 %556, -1
  %560 = icmp eq i32 %557, 0
  %561 = or i1 %559, %560
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %68, align 1
  %563 = and i32 %557, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %74, align 1
  %568 = xor i32 %556, %557
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %79, align 1
  %572 = zext i1 %560 to i8
  store i8 %572, i8* %82, align 1
  %573 = lshr i32 %557, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %85, align 1
  %575 = lshr i32 %556, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %91, align 1
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -40
  %582 = add i64 %392, 117
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %RCX.i2541, align 8
  %585 = add i64 %584, 16
  %586 = add i64 %392, 121
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %557 to i64
  %590 = sext i32 %588 to i64
  %591 = mul nsw i64 %590, %589
  %592 = trunc i64 %591 to i32
  %593 = and i64 %591, 4294967295
  store i64 %593, i64* %RSI.i2547, align 8
  %594 = shl i64 %591, 32
  %595 = ashr exact i64 %594, 32
  %596 = icmp ne i64 %595, %591
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %68, align 1
  %598 = and i32 %592, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %603 = lshr i32 %592, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %85, align 1
  store i8 %597, i8* %91, align 1
  %605 = add i64 %392, 125
  store i64 %605, i64* %3, align 8
  %606 = load i64, i64* %583, align 8
  store i64 %606, i64* %RCX.i2541, align 8
  %607 = add i64 %606, 20
  %608 = add i64 %392, 129
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = sext i32 %610 to i64
  %612 = mul nsw i64 %611, %595
  %613 = and i64 %612, 4294967295
  store i64 %613, i64* %RSI.i2547, align 8
  %614 = load i64, i64* %RDX.i2544, align 8
  %615 = trunc i64 %612 to i32
  %616 = trunc i64 %614 to i32
  %617 = add i32 %615, %616
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RDX.i2544, align 8
  %619 = icmp ult i32 %617, %616
  %620 = icmp ult i32 %617, %615
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %68, align 1
  %623 = and i32 %617, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %74, align 1
  %628 = xor i64 %612, %614
  %629 = trunc i64 %628 to i32
  %630 = xor i32 %629, %617
  %631 = lshr i32 %630, 4
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %79, align 1
  %634 = icmp eq i32 %617, 0
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %82, align 1
  %636 = lshr i32 %617, 31
  %637 = trunc i32 %636 to i8
  store i8 %637, i8* %85, align 1
  %638 = lshr i32 %616, 31
  %639 = lshr i32 %615, 31
  %640 = xor i32 %636, %638
  %641 = xor i32 %636, %639
  %642 = add nuw nsw i32 %640, %641
  %643 = icmp eq i32 %642, 2
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %91, align 1
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -56
  %647 = add i64 %392, 134
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RSI.i2547, align 8
  %651 = add i64 %645, -40
  %652 = add i64 %392, 138
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RCX.i2541, align 8
  %655 = add i64 %654, 20
  %656 = add i64 %392, 142
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = sext i32 %649 to i64
  %660 = sext i32 %658 to i64
  %661 = mul nsw i64 %660, %659
  %662 = and i64 %661, 4294967295
  store i64 %662, i64* %RSI.i2547, align 8
  %663 = trunc i64 %661 to i32
  %664 = add i32 %663, %617
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RDX.i2544, align 8
  %666 = icmp ult i32 %664, %617
  %667 = icmp ult i32 %664, %663
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %68, align 1
  %670 = and i32 %664, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %74, align 1
  %675 = xor i64 %661, %618
  %676 = trunc i64 %675 to i32
  %677 = xor i32 %676, %664
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %79, align 1
  %681 = icmp eq i32 %664, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %82, align 1
  %683 = lshr i32 %664, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %85, align 1
  %685 = lshr i32 %663, 31
  %686 = xor i32 %683, %636
  %687 = xor i32 %683, %685
  %688 = add nuw nsw i32 %686, %687
  %689 = icmp eq i32 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %91, align 1
  %691 = add i64 %645, -60
  %692 = add i64 %392, 147
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = add i32 %694, %664
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RDX.i2544, align 8
  %697 = icmp ult i32 %695, %664
  %698 = icmp ult i32 %695, %694
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %68, align 1
  %701 = and i32 %695, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %74, align 1
  %706 = xor i32 %694, %664
  %707 = xor i32 %706, %695
  %708 = lshr i32 %707, 4
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  store i8 %710, i8* %79, align 1
  %711 = icmp eq i32 %695, 0
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %82, align 1
  %713 = lshr i32 %695, 31
  %714 = trunc i32 %713 to i8
  store i8 %714, i8* %85, align 1
  %715 = lshr i32 %694, 31
  %716 = xor i32 %713, %683
  %717 = xor i32 %713, %715
  %718 = add nuw nsw i32 %716, %717
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %91, align 1
  %721 = sext i32 %695 to i64
  store i64 %721, i64* %RCX.i2541, align 8
  %722 = load i64, i64* %RAX.i2556, align 8
  %723 = shl nsw i64 %721, 2
  %724 = add i64 %723, %722
  %725 = add i64 %392, 155
  store i64 %725, i64* %3, align 8
  %726 = load <2 x float>, <2 x float>* %191, align 1
  %727 = load <2 x i32>, <2 x i32>* %196, align 1
  %728 = inttoptr i64 %724 to float*
  %729 = load float, float* %728, align 4
  %730 = extractelement <2 x float> %726, i32 0
  %731 = fmul float %730, %729
  store float %731, float* %192, align 1
  %732 = bitcast <2 x float> %726 to <2 x i32>
  %733 = extractelement <2 x i32> %732, i32 1
  store i32 %733, i32* %187, align 1
  %734 = extractelement <2 x i32> %727, i32 0
  store i32 %734, i32* %188, align 1
  %735 = extractelement <2 x i32> %727, i32 1
  store i32 %735, i32* %190, align 1
  %736 = load i64, i64* %RBP.i, align 8
  %737 = add i64 %736, -16
  %738 = add i64 %392, 159
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i64*
  %740 = load i64, i64* %739, align 8
  store i64 %740, i64* %RAX.i2556, align 8
  %741 = add i64 %392, 162
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RAX.i2556, align 8
  %744 = add i64 %392, 166
  store i64 %744, i64* %3, align 8
  %745 = load i64, i64* %739, align 8
  store i64 %745, i64* %RCX.i2541, align 8
  %746 = add i64 %745, 12
  %747 = add i64 %392, 169
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RDX.i2544, align 8
  %751 = add i64 %392, 176
  store i64 %751, i64* %3, align 8
  %752 = load i64, i64* %739, align 8
  store i64 %752, i64* %RCX.i2541, align 8
  %753 = add i64 %752, 16
  %754 = add i64 %392, 180
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sext i32 %749 to i64
  %758 = sext i32 %756 to i64
  %759 = mul nsw i64 %758, %757
  %760 = trunc i64 %759 to i32
  %761 = and i64 %759, 4294967295
  store i64 %761, i64* %RDX.i2544, align 8
  %762 = shl i64 %759, 32
  %763 = ashr exact i64 %762, 32
  %764 = icmp ne i64 %763, %759
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %68, align 1
  %766 = and i32 %760, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %771 = lshr i32 %760, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %85, align 1
  store i8 %765, i8* %91, align 1
  %773 = add i64 %392, 184
  store i64 %773, i64* %3, align 8
  %774 = load i64, i64* %739, align 8
  store i64 %774, i64* %RCX.i2541, align 8
  %775 = add i64 %774, 20
  %776 = add i64 %392, 188
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %778 to i64
  %780 = mul nsw i64 %779, %763
  %781 = trunc i64 %780 to i32
  %782 = and i64 %780, 4294967295
  store i64 %782, i64* %RDX.i2544, align 8
  %783 = shl i64 %780, 32
  %784 = ashr exact i64 %783, 32
  %785 = icmp ne i64 %784, %780
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %68, align 1
  %787 = and i32 %781, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %792 = lshr i32 %781, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %85, align 1
  store i8 %786, i8* %91, align 1
  %794 = add i64 %736, -52
  %795 = add i64 %392, 191
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RSI.i2547, align 8
  %799 = add i64 %392, 195
  store i64 %799, i64* %3, align 8
  %800 = load i64, i64* %739, align 8
  store i64 %800, i64* %RCX.i2541, align 8
  %801 = add i64 %800, 16
  %802 = add i64 %392, 199
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = sext i32 %797 to i64
  %806 = sext i32 %804 to i64
  %807 = mul nsw i64 %806, %805
  %808 = trunc i64 %807 to i32
  %809 = and i64 %807, 4294967295
  store i64 %809, i64* %RSI.i2547, align 8
  %810 = shl i64 %807, 32
  %811 = ashr exact i64 %810, 32
  %812 = icmp ne i64 %811, %807
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %68, align 1
  %814 = and i32 %808, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %819 = lshr i32 %808, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %85, align 1
  store i8 %813, i8* %91, align 1
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -16
  %823 = add i64 %392, 203
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  %825 = load i64, i64* %824, align 8
  store i64 %825, i64* %RCX.i2541, align 8
  %826 = add i64 %825, 20
  %827 = add i64 %392, 207
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = sext i32 %829 to i64
  %831 = mul nsw i64 %830, %811
  %832 = and i64 %831, 4294967295
  store i64 %832, i64* %RSI.i2547, align 8
  %833 = trunc i64 %831 to i32
  %834 = add i32 %833, %781
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RDX.i2544, align 8
  %836 = icmp ult i32 %834, %781
  %837 = icmp ult i32 %834, %833
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %68, align 1
  %840 = and i32 %834, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %74, align 1
  %845 = xor i64 %831, %780
  %846 = trunc i64 %845 to i32
  %847 = xor i32 %846, %834
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %79, align 1
  %851 = icmp eq i32 %834, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %82, align 1
  %853 = lshr i32 %834, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %85, align 1
  %855 = lshr i32 %833, 31
  %856 = xor i32 %853, %792
  %857 = xor i32 %853, %855
  %858 = add nuw nsw i32 %856, %857
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %91, align 1
  %861 = add i64 %821, -56
  %862 = add i64 %392, 212
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RSI.i2547, align 8
  %866 = add i64 %392, 216
  store i64 %866, i64* %3, align 8
  %867 = load i64, i64* %824, align 8
  store i64 %867, i64* %RCX.i2541, align 8
  %868 = add i64 %867, 20
  %869 = add i64 %392, 220
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = sext i32 %864 to i64
  %873 = sext i32 %871 to i64
  %874 = mul nsw i64 %873, %872
  %875 = and i64 %874, 4294967295
  store i64 %875, i64* %RSI.i2547, align 8
  %876 = trunc i64 %874 to i32
  %877 = add i32 %876, %834
  %878 = zext i32 %877 to i64
  store i64 %878, i64* %RDX.i2544, align 8
  %879 = icmp ult i32 %877, %834
  %880 = icmp ult i32 %877, %876
  %881 = or i1 %879, %880
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %68, align 1
  %883 = and i32 %877, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %74, align 1
  %888 = xor i64 %874, %835
  %889 = trunc i64 %888 to i32
  %890 = xor i32 %889, %877
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %79, align 1
  %894 = icmp eq i32 %877, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %82, align 1
  %896 = lshr i32 %877, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %85, align 1
  %898 = lshr i32 %876, 31
  %899 = xor i32 %896, %853
  %900 = xor i32 %896, %898
  %901 = add nuw nsw i32 %899, %900
  %902 = icmp eq i32 %901, 2
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %91, align 1
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -60
  %906 = add i64 %392, 225
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, %877
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RDX.i2544, align 8
  %911 = icmp ult i32 %909, %877
  %912 = icmp ult i32 %909, %908
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %68, align 1
  %915 = and i32 %909, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %74, align 1
  %920 = xor i32 %908, %877
  %921 = xor i32 %920, %909
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %79, align 1
  %925 = icmp eq i32 %909, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %82, align 1
  %927 = lshr i32 %909, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %85, align 1
  %929 = lshr i32 %908, 31
  %930 = xor i32 %927, %896
  %931 = xor i32 %927, %929
  %932 = add nuw nsw i32 %930, %931
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %91, align 1
  %935 = sext i32 %909 to i64
  store i64 %935, i64* %RCX.i2541, align 8
  %936 = load i64, i64* %RAX.i2556, align 8
  %937 = shl nsw i64 %935, 2
  %938 = add i64 %937, %936
  %939 = add i64 %392, 233
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = bitcast %union.VectorReg* %197 to i32*
  store i32 %941, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %943 = add i64 %904, -40
  %944 = add i64 %392, 237
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RAX.i2556, align 8
  %947 = add i64 %392, 240
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i64*
  %949 = load i64, i64* %948, align 8
  store i64 %949, i64* %RAX.i2556, align 8
  %950 = add i64 %392, 244
  store i64 %950, i64* %3, align 8
  %951 = load i64, i64* %945, align 8
  store i64 %951, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %952 = add i64 %392, 252
  store i64 %952, i64* %3, align 8
  %953 = load i64, i64* %945, align 8
  store i64 %953, i64* %RCX.i2541, align 8
  %954 = add i64 %392, 256
  store i64 %954, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %955 = add i64 %392, 260
  store i64 %955, i64* %3, align 8
  %956 = load i64, i64* %945, align 8
  store i64 %956, i64* %RCX.i2541, align 8
  %957 = add i64 %392, 264
  store i64 %957, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %958 = load i64, i64* %RBP.i, align 8
  %959 = add i64 %958, -52
  %960 = add i64 %392, 267
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RSI.i2547, align 8
  %964 = add i64 %958, -40
  %965 = add i64 %392, 271
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RCX.i2541, align 8
  %968 = add i64 %967, 16
  %969 = add i64 %392, 275
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %962 to i64
  %973 = sext i32 %971 to i64
  %974 = mul nsw i64 %973, %972
  %975 = trunc i64 %974 to i32
  %976 = and i64 %974, 4294967295
  store i64 %976, i64* %RSI.i2547, align 8
  %977 = shl i64 %974, 32
  %978 = ashr exact i64 %977, 32
  %979 = icmp ne i64 %978, %974
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %68, align 1
  %981 = and i32 %975, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %986 = lshr i32 %975, 31
  %987 = trunc i32 %986 to i8
  store i8 %987, i8* %85, align 1
  store i8 %980, i8* %91, align 1
  %988 = add i64 %392, 279
  store i64 %988, i64* %3, align 8
  %989 = load i64, i64* %966, align 8
  store i64 %989, i64* %RCX.i2541, align 8
  %990 = add i64 %989, 20
  %991 = add i64 %392, 283
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = sext i32 %993 to i64
  %995 = mul nsw i64 %994, %978
  %996 = and i64 %995, 4294967295
  store i64 %996, i64* %RSI.i2547, align 8
  %997 = trunc i64 %995 to i32
  store i64 %996, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %998 = and i32 %997, 255
  %999 = tail call i32 @llvm.ctpop.i32(i32 %998)
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1003 = icmp eq i32 %997, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %82, align 1
  %1005 = lshr i32 %997, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1007 = add i64 %958, -56
  %1008 = add i64 %392, 288
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = add i32 %1010, 1
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RSI.i2547, align 8
  %1013 = icmp eq i32 %1010, -1
  %1014 = icmp eq i32 %1011, 0
  %1015 = or i1 %1013, %1014
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %68, align 1
  %1017 = and i32 %1011, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %74, align 1
  %1022 = xor i32 %1010, %1011
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %79, align 1
  %1026 = zext i1 %1014 to i8
  store i8 %1026, i8* %82, align 1
  %1027 = lshr i32 %1011, 31
  %1028 = trunc i32 %1027 to i8
  store i8 %1028, i8* %85, align 1
  %1029 = lshr i32 %1010, 31
  %1030 = xor i32 %1027, %1029
  %1031 = add nuw nsw i32 %1030, %1027
  %1032 = icmp eq i32 %1031, 2
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %91, align 1
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -40
  %1036 = add i64 %392, 295
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RCX.i2541, align 8
  %1039 = add i64 %1038, 20
  %1040 = add i64 %392, 299
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sext i32 %1011 to i64
  %1044 = sext i32 %1042 to i64
  %1045 = mul nsw i64 %1044, %1043
  %1046 = and i64 %1045, 4294967295
  store i64 %1046, i64* %RSI.i2547, align 8
  %1047 = trunc i64 %1045 to i32
  %1048 = add i32 %1047, %997
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RDX.i2544, align 8
  %1050 = icmp ult i32 %1048, %997
  %1051 = icmp ult i32 %1048, %1047
  %1052 = or i1 %1050, %1051
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %68, align 1
  %1054 = and i32 %1048, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %74, align 1
  %1059 = xor i64 %1045, %995
  %1060 = trunc i64 %1059 to i32
  %1061 = xor i32 %1060, %1048
  %1062 = lshr i32 %1061, 4
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  store i8 %1064, i8* %79, align 1
  %1065 = icmp eq i32 %1048, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %82, align 1
  %1067 = lshr i32 %1048, 31
  %1068 = trunc i32 %1067 to i8
  store i8 %1068, i8* %85, align 1
  %1069 = lshr i32 %1047, 31
  %1070 = xor i32 %1067, %1005
  %1071 = xor i32 %1067, %1069
  %1072 = add nuw nsw i32 %1070, %1071
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %91, align 1
  %1075 = add i64 %1034, -60
  %1076 = add i64 %392, 304
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = add i32 %1078, %1048
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RDX.i2544, align 8
  %1081 = icmp ult i32 %1079, %1048
  %1082 = icmp ult i32 %1079, %1078
  %1083 = or i1 %1081, %1082
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %68, align 1
  %1085 = and i32 %1079, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %74, align 1
  %1090 = xor i32 %1078, %1048
  %1091 = xor i32 %1090, %1079
  %1092 = lshr i32 %1091, 4
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %79, align 1
  %1095 = icmp eq i32 %1079, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %82, align 1
  %1097 = lshr i32 %1079, 31
  %1098 = trunc i32 %1097 to i8
  store i8 %1098, i8* %85, align 1
  %1099 = lshr i32 %1078, 31
  %1100 = xor i32 %1097, %1067
  %1101 = xor i32 %1097, %1099
  %1102 = add nuw nsw i32 %1100, %1101
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %91, align 1
  %1105 = sext i32 %1079 to i64
  store i64 %1105, i64* %RCX.i2541, align 8
  %1106 = load i64, i64* %RAX.i2556, align 8
  %1107 = shl nsw i64 %1105, 2
  %1108 = add i64 %1107, %1106
  %1109 = add i64 %392, 312
  store i64 %1109, i64* %3, align 8
  %1110 = load <2 x float>, <2 x float>* %206, align 1
  %1111 = load <2 x i32>, <2 x i32>* %207, align 1
  %1112 = inttoptr i64 %1108 to float*
  %1113 = load float, float* %1112, align 4
  %1114 = extractelement <2 x float> %1110, i32 0
  %1115 = fmul float %1114, %1113
  store float %1115, float* %199, align 1
  %1116 = bitcast <2 x float> %1110 to <2 x i32>
  %1117 = extractelement <2 x i32> %1116, i32 1
  store i32 %1117, i32* %208, align 1
  %1118 = extractelement <2 x i32> %1111, i32 0
  store i32 %1118, i32* %209, align 1
  %1119 = extractelement <2 x i32> %1111, i32 1
  store i32 %1119, i32* %210, align 1
  %1120 = load <2 x float>, <2 x float>* %191, align 1
  %1121 = load <2 x i32>, <2 x i32>* %196, align 1
  %1122 = load <2 x float>, <2 x float>* %206, align 1
  %1123 = extractelement <2 x float> %1120, i32 0
  %1124 = extractelement <2 x float> %1122, i32 0
  %1125 = fadd float %1123, %1124
  store float %1125, float* %192, align 1
  %1126 = bitcast <2 x float> %1120 to <2 x i32>
  %1127 = extractelement <2 x i32> %1126, i32 1
  store i32 %1127, i32* %187, align 1
  %1128 = extractelement <2 x i32> %1121, i32 0
  store i32 %1128, i32* %188, align 1
  %1129 = extractelement <2 x i32> %1121, i32 1
  store i32 %1129, i32* %190, align 1
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -16
  %1132 = add i64 %392, 320
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %RAX.i2556, align 8
  %1135 = add i64 %392, 323
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i64*
  %1137 = load i64, i64* %1136, align 8
  store i64 %1137, i64* %RAX.i2556, align 8
  %1138 = add i64 %392, 327
  store i64 %1138, i64* %3, align 8
  %1139 = load i64, i64* %1133, align 8
  store i64 %1139, i64* %RCX.i2541, align 8
  %1140 = add i64 %1139, 12
  %1141 = add i64 %392, 330
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = shl i32 %1143, 1
  %1145 = icmp slt i32 %1143, 0
  %1146 = icmp slt i32 %1144, 0
  %1147 = xor i1 %1145, %1146
  %1148 = zext i32 %1144 to i64
  store i64 %1148, i64* %RDX.i2544, align 8
  %.lobit = lshr i32 %1143, 31
  %1149 = trunc i32 %.lobit to i8
  store i8 %1149, i8* %68, align 1
  %1150 = and i32 %1144, 254
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1155 = icmp eq i32 %1144, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %82, align 1
  %1157 = lshr i32 %1143, 30
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %85, align 1
  %1160 = zext i1 %1147 to i8
  store i8 %1160, i8* %91, align 1
  %1161 = add i64 %392, 337
  store i64 %1161, i64* %3, align 8
  %1162 = load i64, i64* %1133, align 8
  store i64 %1162, i64* %RCX.i2541, align 8
  %1163 = add i64 %1162, 16
  %1164 = add i64 %392, 341
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = sext i32 %1144 to i64
  %1168 = sext i32 %1166 to i64
  %1169 = mul nsw i64 %1168, %1167
  %1170 = trunc i64 %1169 to i32
  %1171 = and i64 %1169, 4294967294
  store i64 %1171, i64* %RDX.i2544, align 8
  %1172 = shl i64 %1169, 32
  %1173 = ashr exact i64 %1172, 32
  %1174 = icmp ne i64 %1173, %1169
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %68, align 1
  %1176 = and i32 %1170, 254
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1181 = lshr i32 %1170, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %85, align 1
  store i8 %1175, i8* %91, align 1
  %1183 = add i64 %392, 345
  store i64 %1183, i64* %3, align 8
  %1184 = load i64, i64* %1133, align 8
  store i64 %1184, i64* %RCX.i2541, align 8
  %1185 = add i64 %1184, 20
  %1186 = add i64 %392, 349
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = mul nsw i64 %1189, %1173
  %1191 = trunc i64 %1190 to i32
  %1192 = and i64 %1190, 4294967295
  store i64 %1192, i64* %RDX.i2544, align 8
  %1193 = shl i64 %1190, 32
  %1194 = ashr exact i64 %1193, 32
  %1195 = icmp ne i64 %1194, %1190
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %68, align 1
  %1197 = and i32 %1191, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1202 = lshr i32 %1191, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %85, align 1
  store i8 %1196, i8* %91, align 1
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -52
  %1206 = add i64 %392, 352
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RSI.i2547, align 8
  %1210 = add i64 %1204, -16
  %1211 = add i64 %392, 356
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RCX.i2541, align 8
  %1214 = add i64 %1213, 16
  %1215 = add i64 %392, 360
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = sext i32 %1208 to i64
  %1219 = sext i32 %1217 to i64
  %1220 = mul nsw i64 %1219, %1218
  %1221 = trunc i64 %1220 to i32
  %1222 = and i64 %1220, 4294967295
  store i64 %1222, i64* %RSI.i2547, align 8
  %1223 = shl i64 %1220, 32
  %1224 = ashr exact i64 %1223, 32
  %1225 = icmp ne i64 %1224, %1220
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %68, align 1
  %1227 = and i32 %1221, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1232 = lshr i32 %1221, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %85, align 1
  store i8 %1226, i8* %91, align 1
  %1234 = add i64 %392, 364
  store i64 %1234, i64* %3, align 8
  %1235 = load i64, i64* %1212, align 8
  store i64 %1235, i64* %RCX.i2541, align 8
  %1236 = add i64 %1235, 20
  %1237 = add i64 %392, 368
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = sext i32 %1239 to i64
  %1241 = mul nsw i64 %1240, %1224
  %1242 = and i64 %1241, 4294967295
  store i64 %1242, i64* %RSI.i2547, align 8
  %1243 = trunc i64 %1241 to i32
  %1244 = add i32 %1243, %1191
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RDX.i2544, align 8
  %1246 = icmp ult i32 %1244, %1191
  %1247 = icmp ult i32 %1244, %1243
  %1248 = or i1 %1246, %1247
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %68, align 1
  %1250 = and i32 %1244, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250)
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %74, align 1
  %1255 = xor i64 %1241, %1190
  %1256 = trunc i64 %1255 to i32
  %1257 = xor i32 %1256, %1244
  %1258 = lshr i32 %1257, 4
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  store i8 %1260, i8* %79, align 1
  %1261 = icmp eq i32 %1244, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %82, align 1
  %1263 = lshr i32 %1244, 31
  %1264 = trunc i32 %1263 to i8
  store i8 %1264, i8* %85, align 1
  %1265 = lshr i32 %1243, 31
  %1266 = xor i32 %1263, %1202
  %1267 = xor i32 %1263, %1265
  %1268 = add nuw nsw i32 %1266, %1267
  %1269 = icmp eq i32 %1268, 2
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %91, align 1
  %1271 = load i64, i64* %RBP.i, align 8
  %1272 = add i64 %1271, -56
  %1273 = add i64 %392, 373
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RSI.i2547, align 8
  %1277 = add i64 %1271, -16
  %1278 = add i64 %392, 377
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i64*
  %1280 = load i64, i64* %1279, align 8
  store i64 %1280, i64* %RCX.i2541, align 8
  %1281 = add i64 %1280, 20
  %1282 = add i64 %392, 381
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sext i32 %1275 to i64
  %1286 = sext i32 %1284 to i64
  %1287 = mul nsw i64 %1286, %1285
  %1288 = and i64 %1287, 4294967295
  store i64 %1288, i64* %RSI.i2547, align 8
  %1289 = trunc i64 %1287 to i32
  %1290 = add i32 %1289, %1244
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RDX.i2544, align 8
  %1292 = icmp ult i32 %1290, %1244
  %1293 = icmp ult i32 %1290, %1289
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %68, align 1
  %1296 = and i32 %1290, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %74, align 1
  %1301 = xor i64 %1287, %1245
  %1302 = trunc i64 %1301 to i32
  %1303 = xor i32 %1302, %1290
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %79, align 1
  %1307 = icmp eq i32 %1290, 0
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %82, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = trunc i32 %1309 to i8
  store i8 %1310, i8* %85, align 1
  %1311 = lshr i32 %1289, 31
  %1312 = xor i32 %1309, %1263
  %1313 = xor i32 %1309, %1311
  %1314 = add nuw nsw i32 %1312, %1313
  %1315 = icmp eq i32 %1314, 2
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %91, align 1
  %1317 = add i64 %1271, -60
  %1318 = add i64 %392, 386
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = add i32 %1320, %1290
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RDX.i2544, align 8
  %1323 = icmp ult i32 %1321, %1290
  %1324 = icmp ult i32 %1321, %1320
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %68, align 1
  %1327 = and i32 %1321, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %74, align 1
  %1332 = xor i32 %1320, %1290
  %1333 = xor i32 %1332, %1321
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  store i8 %1336, i8* %79, align 1
  %1337 = icmp eq i32 %1321, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %82, align 1
  %1339 = lshr i32 %1321, 31
  %1340 = trunc i32 %1339 to i8
  store i8 %1340, i8* %85, align 1
  %1341 = lshr i32 %1320, 31
  %1342 = xor i32 %1339, %1309
  %1343 = xor i32 %1339, %1341
  %1344 = add nuw nsw i32 %1342, %1343
  %1345 = icmp eq i32 %1344, 2
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %91, align 1
  %1347 = sext i32 %1321 to i64
  store i64 %1347, i64* %RCX.i2541, align 8
  %1348 = load i64, i64* %RAX.i2556, align 8
  %1349 = shl nsw i64 %1347, 2
  %1350 = add i64 %1349, %1348
  %1351 = add i64 %392, 394
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  store i32 %1353, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -40
  %1356 = add i64 %392, 398
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i64*
  %1358 = load i64, i64* %1357, align 8
  store i64 %1358, i64* %RAX.i2556, align 8
  %1359 = add i64 %392, 401
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RAX.i2556, align 8
  %1362 = add i64 %392, 405
  store i64 %1362, i64* %3, align 8
  %1363 = load i64, i64* %1357, align 8
  store i64 %1363, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1364 = add i64 %392, 413
  store i64 %1364, i64* %3, align 8
  %1365 = load i64, i64* %1357, align 8
  store i64 %1365, i64* %RCX.i2541, align 8
  %1366 = add i64 %392, 417
  store i64 %1366, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1367 = add i64 %392, 421
  store i64 %1367, i64* %3, align 8
  %1368 = load i64, i64* %1357, align 8
  store i64 %1368, i64* %RCX.i2541, align 8
  %1369 = add i64 %392, 425
  store i64 %1369, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1370 = add i64 %1354, -52
  %1371 = add i64 %392, 428
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RSI.i2547, align 8
  %1375 = add i64 %392, 432
  store i64 %1375, i64* %3, align 8
  %1376 = load i64, i64* %1357, align 8
  store i64 %1376, i64* %RCX.i2541, align 8
  %1377 = add i64 %1376, 16
  %1378 = add i64 %392, 436
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = sext i32 %1373 to i64
  %1382 = sext i32 %1380 to i64
  %1383 = mul nsw i64 %1382, %1381
  %1384 = trunc i64 %1383 to i32
  %1385 = and i64 %1383, 4294967295
  store i64 %1385, i64* %RSI.i2547, align 8
  %1386 = shl i64 %1383, 32
  %1387 = ashr exact i64 %1386, 32
  %1388 = icmp ne i64 %1387, %1383
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %68, align 1
  %1390 = and i32 %1384, 255
  %1391 = tail call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  store i8 %1394, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1395 = lshr i32 %1384, 31
  %1396 = trunc i32 %1395 to i8
  store i8 %1396, i8* %85, align 1
  store i8 %1389, i8* %91, align 1
  %1397 = add i64 %392, 440
  store i64 %1397, i64* %3, align 8
  %1398 = load i64, i64* %1357, align 8
  store i64 %1398, i64* %RCX.i2541, align 8
  %1399 = add i64 %1398, 20
  %1400 = add i64 %392, 444
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  %1402 = load i32, i32* %1401, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = mul nsw i64 %1403, %1387
  %1405 = and i64 %1404, 4294967295
  store i64 %1405, i64* %RSI.i2547, align 8
  %1406 = trunc i64 %1404 to i32
  store i64 %1405, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1407 = and i32 %1406, 255
  %1408 = tail call i32 @llvm.ctpop.i32(i32 %1407)
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  store i8 %1411, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1412 = icmp eq i32 %1406, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %82, align 1
  %1414 = lshr i32 %1406, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -56
  %1418 = add i64 %392, 449
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = zext i32 %1420 to i64
  store i64 %1421, i64* %RSI.i2547, align 8
  %1422 = add i64 %1416, -40
  %1423 = add i64 %392, 453
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i64*
  %1425 = load i64, i64* %1424, align 8
  store i64 %1425, i64* %RCX.i2541, align 8
  %1426 = add i64 %1425, 20
  %1427 = add i64 %392, 457
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = sext i32 %1420 to i64
  %1431 = sext i32 %1429 to i64
  %1432 = mul nsw i64 %1431, %1430
  %1433 = and i64 %1432, 4294967295
  store i64 %1433, i64* %RSI.i2547, align 8
  %1434 = trunc i64 %1432 to i32
  %1435 = add i32 %1434, %1406
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RDX.i2544, align 8
  %1437 = icmp ult i32 %1435, %1406
  %1438 = icmp ult i32 %1435, %1434
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %68, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %74, align 1
  %1446 = xor i64 %1432, %1404
  %1447 = trunc i64 %1446 to i32
  %1448 = xor i32 %1447, %1435
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %79, align 1
  %1452 = icmp eq i32 %1435, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %82, align 1
  %1454 = lshr i32 %1435, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %85, align 1
  %1456 = lshr i32 %1434, 31
  %1457 = xor i32 %1454, %1414
  %1458 = xor i32 %1454, %1456
  %1459 = add nuw nsw i32 %1457, %1458
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %91, align 1
  %1462 = add i64 %1416, -60
  %1463 = add i64 %392, 462
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = add i32 %1465, 1
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RSI.i2547, align 8
  %1468 = lshr i32 %1466, 31
  %1469 = add i32 %1466, %1435
  %1470 = zext i32 %1469 to i64
  store i64 %1470, i64* %RDX.i2544, align 8
  %1471 = icmp ult i32 %1469, %1435
  %1472 = icmp ult i32 %1469, %1466
  %1473 = or i1 %1471, %1472
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %68, align 1
  %1475 = and i32 %1469, 255
  %1476 = tail call i32 @llvm.ctpop.i32(i32 %1475)
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  %1479 = xor i8 %1478, 1
  store i8 %1479, i8* %74, align 1
  %1480 = xor i32 %1466, %1435
  %1481 = xor i32 %1480, %1469
  %1482 = lshr i32 %1481, 4
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  store i8 %1484, i8* %79, align 1
  %1485 = icmp eq i32 %1469, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %82, align 1
  %1487 = lshr i32 %1469, 31
  %1488 = trunc i32 %1487 to i8
  store i8 %1488, i8* %85, align 1
  %1489 = xor i32 %1487, %1454
  %1490 = xor i32 %1487, %1468
  %1491 = add nuw nsw i32 %1489, %1490
  %1492 = icmp eq i32 %1491, 2
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %91, align 1
  %1494 = sext i32 %1469 to i64
  store i64 %1494, i64* %RCX.i2541, align 8
  %1495 = load i64, i64* %RAX.i2556, align 8
  %1496 = shl nsw i64 %1494, 2
  %1497 = add i64 %1496, %1495
  %1498 = add i64 %392, 475
  store i64 %1498, i64* %3, align 8
  %1499 = load <2 x float>, <2 x float>* %206, align 1
  %1500 = load <2 x i32>, <2 x i32>* %207, align 1
  %1501 = inttoptr i64 %1497 to float*
  %1502 = load float, float* %1501, align 4
  %1503 = extractelement <2 x float> %1499, i32 0
  %1504 = fmul float %1503, %1502
  store float %1504, float* %199, align 1
  %1505 = bitcast <2 x float> %1499 to <2 x i32>
  %1506 = extractelement <2 x i32> %1505, i32 1
  store i32 %1506, i32* %208, align 1
  %1507 = extractelement <2 x i32> %1500, i32 0
  store i32 %1507, i32* %209, align 1
  %1508 = extractelement <2 x i32> %1500, i32 1
  store i32 %1508, i32* %210, align 1
  %1509 = load <2 x float>, <2 x float>* %191, align 1
  %1510 = load <2 x i32>, <2 x i32>* %196, align 1
  %1511 = load <2 x float>, <2 x float>* %206, align 1
  %1512 = extractelement <2 x float> %1509, i32 0
  %1513 = extractelement <2 x float> %1511, i32 0
  %1514 = fadd float %1512, %1513
  store float %1514, float* %192, align 1
  %1515 = bitcast <2 x float> %1509 to <2 x i32>
  %1516 = extractelement <2 x i32> %1515, i32 1
  store i32 %1516, i32* %187, align 1
  %1517 = extractelement <2 x i32> %1510, i32 0
  store i32 %1517, i32* %188, align 1
  %1518 = extractelement <2 x i32> %1510, i32 1
  store i32 %1518, i32* %190, align 1
  %1519 = load i64, i64* %RBP.i, align 8
  %1520 = add i64 %1519, -24
  %1521 = add i64 %392, 483
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i64*
  %1523 = load i64, i64* %1522, align 8
  store i64 %1523, i64* %RAX.i2556, align 8
  %1524 = add i64 %392, 486
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i2556, align 8
  %1527 = add i64 %392, 490
  store i64 %1527, i64* %3, align 8
  %1528 = load i64, i64* %1522, align 8
  store i64 %1528, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1529 = add i64 %392, 498
  store i64 %1529, i64* %3, align 8
  %1530 = load i64, i64* %1522, align 8
  store i64 %1530, i64* %RCX.i2541, align 8
  %1531 = add i64 %392, 502
  store i64 %1531, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1532 = add i64 %392, 506
  store i64 %1532, i64* %3, align 8
  %1533 = load i64, i64* %1522, align 8
  store i64 %1533, i64* %RCX.i2541, align 8
  %1534 = add i64 %392, 510
  store i64 %1534, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1535 = add i64 %1519, -52
  %1536 = add i64 %392, 513
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RSI.i2547, align 8
  %1540 = add i64 %392, 517
  store i64 %1540, i64* %3, align 8
  %1541 = load i64, i64* %1522, align 8
  store i64 %1541, i64* %RCX.i2541, align 8
  %1542 = add i64 %1541, 16
  %1543 = add i64 %392, 521
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = sext i32 %1538 to i64
  %1547 = sext i32 %1545 to i64
  %1548 = mul nsw i64 %1547, %1546
  %1549 = trunc i64 %1548 to i32
  %1550 = and i64 %1548, 4294967295
  store i64 %1550, i64* %RSI.i2547, align 8
  %1551 = shl i64 %1548, 32
  %1552 = ashr exact i64 %1551, 32
  %1553 = icmp ne i64 %1552, %1548
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %68, align 1
  %1555 = and i32 %1549, 255
  %1556 = tail call i32 @llvm.ctpop.i32(i32 %1555)
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = xor i8 %1558, 1
  store i8 %1559, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1560 = lshr i32 %1549, 31
  %1561 = trunc i32 %1560 to i8
  store i8 %1561, i8* %85, align 1
  store i8 %1554, i8* %91, align 1
  %1562 = add i64 %392, 525
  store i64 %1562, i64* %3, align 8
  %1563 = load i64, i64* %1522, align 8
  store i64 %1563, i64* %RCX.i2541, align 8
  %1564 = add i64 %1563, 20
  %1565 = add i64 %392, 529
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = mul nsw i64 %1568, %1552
  %1570 = and i64 %1569, 4294967295
  store i64 %1570, i64* %RSI.i2547, align 8
  %1571 = trunc i64 %1569 to i32
  store i64 %1570, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1572 = and i32 %1571, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1577 = icmp eq i32 %1571, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %82, align 1
  %1579 = lshr i32 %1571, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1581 = load i64, i64* %RBP.i, align 8
  %1582 = add i64 %1581, -56
  %1583 = add i64 %392, 534
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RSI.i2547, align 8
  %1587 = add i64 %1581, -24
  %1588 = add i64 %392, 538
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i64*
  %1590 = load i64, i64* %1589, align 8
  store i64 %1590, i64* %RCX.i2541, align 8
  %1591 = add i64 %1590, 20
  %1592 = add i64 %392, 542
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = sext i32 %1585 to i64
  %1596 = sext i32 %1594 to i64
  %1597 = mul nsw i64 %1596, %1595
  %1598 = and i64 %1597, 4294967295
  store i64 %1598, i64* %RSI.i2547, align 8
  %1599 = trunc i64 %1597 to i32
  %1600 = add i32 %1599, %1571
  %1601 = zext i32 %1600 to i64
  store i64 %1601, i64* %RDX.i2544, align 8
  %1602 = icmp ult i32 %1600, %1571
  %1603 = icmp ult i32 %1600, %1599
  %1604 = or i1 %1602, %1603
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %68, align 1
  %1606 = and i32 %1600, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %74, align 1
  %1611 = xor i64 %1597, %1569
  %1612 = trunc i64 %1611 to i32
  %1613 = xor i32 %1612, %1600
  %1614 = lshr i32 %1613, 4
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  store i8 %1616, i8* %79, align 1
  %1617 = icmp eq i32 %1600, 0
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %82, align 1
  %1619 = lshr i32 %1600, 31
  %1620 = trunc i32 %1619 to i8
  store i8 %1620, i8* %85, align 1
  %1621 = lshr i32 %1599, 31
  %1622 = xor i32 %1619, %1579
  %1623 = xor i32 %1619, %1621
  %1624 = add nuw nsw i32 %1622, %1623
  %1625 = icmp eq i32 %1624, 2
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %91, align 1
  %1627 = add i64 %1581, -60
  %1628 = add i64 %392, 547
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  %1631 = add i32 %1630, %1600
  %1632 = zext i32 %1631 to i64
  store i64 %1632, i64* %RDX.i2544, align 8
  %1633 = icmp ult i32 %1631, %1600
  %1634 = icmp ult i32 %1631, %1630
  %1635 = or i1 %1633, %1634
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %68, align 1
  %1637 = and i32 %1631, 255
  %1638 = tail call i32 @llvm.ctpop.i32(i32 %1637)
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  %1641 = xor i8 %1640, 1
  store i8 %1641, i8* %74, align 1
  %1642 = xor i32 %1630, %1600
  %1643 = xor i32 %1642, %1631
  %1644 = lshr i32 %1643, 4
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  store i8 %1646, i8* %79, align 1
  %1647 = icmp eq i32 %1631, 0
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %82, align 1
  %1649 = lshr i32 %1631, 31
  %1650 = trunc i32 %1649 to i8
  store i8 %1650, i8* %85, align 1
  %1651 = lshr i32 %1630, 31
  %1652 = xor i32 %1649, %1619
  %1653 = xor i32 %1649, %1651
  %1654 = add nuw nsw i32 %1652, %1653
  %1655 = icmp eq i32 %1654, 2
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %91, align 1
  %1657 = sext i32 %1631 to i64
  store i64 %1657, i64* %RCX.i2541, align 8
  %1658 = load i64, i64* %RAX.i2556, align 8
  %1659 = shl nsw i64 %1657, 2
  %1660 = add i64 %1659, %1658
  %1661 = add i64 %392, 555
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i32*
  %1663 = load i32, i32* %1662, align 4
  store i32 %1663, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -40
  %1666 = add i64 %392, 559
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %RAX.i2556, align 8
  %1669 = add i64 %392, 562
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i64*
  %1671 = load i64, i64* %1670, align 8
  store i64 %1671, i64* %RAX.i2556, align 8
  %1672 = add i64 %392, 566
  store i64 %1672, i64* %3, align 8
  %1673 = load i64, i64* %1667, align 8
  store i64 %1673, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1674 = add i64 %392, 574
  store i64 %1674, i64* %3, align 8
  %1675 = load i64, i64* %1667, align 8
  store i64 %1675, i64* %RCX.i2541, align 8
  %1676 = add i64 %392, 578
  store i64 %1676, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1677 = add i64 %392, 582
  store i64 %1677, i64* %3, align 8
  %1678 = load i64, i64* %1667, align 8
  store i64 %1678, i64* %RCX.i2541, align 8
  %1679 = add i64 %392, 586
  store i64 %1679, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1680 = add i64 %1664, -52
  %1681 = add i64 %392, 589
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = add i32 %1683, 1
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RSI.i2547, align 8
  %1686 = icmp eq i32 %1683, -1
  %1687 = icmp eq i32 %1684, 0
  %1688 = or i1 %1686, %1687
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %68, align 1
  %1690 = and i32 %1684, 255
  %1691 = tail call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  store i8 %1694, i8* %74, align 1
  %1695 = xor i32 %1683, %1684
  %1696 = lshr i32 %1695, 4
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, i8* %79, align 1
  %1699 = zext i1 %1687 to i8
  store i8 %1699, i8* %82, align 1
  %1700 = lshr i32 %1684, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %85, align 1
  %1702 = lshr i32 %1683, 31
  %1703 = xor i32 %1700, %1702
  %1704 = add nuw nsw i32 %1703, %1700
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %91, align 1
  %1707 = load i64, i64* %RBP.i, align 8
  %1708 = add i64 %1707, -40
  %1709 = add i64 %392, 596
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RCX.i2541, align 8
  %1712 = add i64 %1711, 16
  %1713 = add i64 %392, 600
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sext i32 %1684 to i64
  %1717 = sext i32 %1715 to i64
  %1718 = mul nsw i64 %1717, %1716
  %1719 = trunc i64 %1718 to i32
  %1720 = and i64 %1718, 4294967295
  store i64 %1720, i64* %RSI.i2547, align 8
  %1721 = shl i64 %1718, 32
  %1722 = ashr exact i64 %1721, 32
  %1723 = icmp ne i64 %1722, %1718
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %68, align 1
  %1725 = and i32 %1719, 255
  %1726 = tail call i32 @llvm.ctpop.i32(i32 %1725)
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = xor i8 %1728, 1
  store i8 %1729, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1730 = lshr i32 %1719, 31
  %1731 = trunc i32 %1730 to i8
  store i8 %1731, i8* %85, align 1
  store i8 %1724, i8* %91, align 1
  %1732 = add i64 %392, 604
  store i64 %1732, i64* %3, align 8
  %1733 = load i64, i64* %1710, align 8
  store i64 %1733, i64* %RCX.i2541, align 8
  %1734 = add i64 %1733, 20
  %1735 = add i64 %392, 608
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i32*
  %1737 = load i32, i32* %1736, align 4
  %1738 = sext i32 %1737 to i64
  %1739 = mul nsw i64 %1738, %1722
  %1740 = and i64 %1739, 4294967295
  store i64 %1740, i64* %RSI.i2547, align 8
  %1741 = load i64, i64* %RDX.i2544, align 8
  %1742 = trunc i64 %1739 to i32
  %1743 = trunc i64 %1741 to i32
  %1744 = add i32 %1742, %1743
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RDX.i2544, align 8
  %1746 = icmp ult i32 %1744, %1743
  %1747 = icmp ult i32 %1744, %1742
  %1748 = or i1 %1746, %1747
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %68, align 1
  %1750 = and i32 %1744, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %74, align 1
  %1755 = xor i64 %1739, %1741
  %1756 = trunc i64 %1755 to i32
  %1757 = xor i32 %1756, %1744
  %1758 = lshr i32 %1757, 4
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  store i8 %1760, i8* %79, align 1
  %1761 = icmp eq i32 %1744, 0
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %82, align 1
  %1763 = lshr i32 %1744, 31
  %1764 = trunc i32 %1763 to i8
  store i8 %1764, i8* %85, align 1
  %1765 = lshr i32 %1743, 31
  %1766 = lshr i32 %1742, 31
  %1767 = xor i32 %1763, %1765
  %1768 = xor i32 %1763, %1766
  %1769 = add nuw nsw i32 %1767, %1768
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %91, align 1
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -56
  %1774 = add i64 %392, 613
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = add i32 %1776, 1
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RSI.i2547, align 8
  %1779 = icmp eq i32 %1776, -1
  %1780 = icmp eq i32 %1777, 0
  %1781 = or i1 %1779, %1780
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %68, align 1
  %1783 = and i32 %1777, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %74, align 1
  %1788 = xor i32 %1776, %1777
  %1789 = lshr i32 %1788, 4
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  store i8 %1791, i8* %79, align 1
  %1792 = zext i1 %1780 to i8
  store i8 %1792, i8* %82, align 1
  %1793 = lshr i32 %1777, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %85, align 1
  %1795 = lshr i32 %1776, 31
  %1796 = xor i32 %1793, %1795
  %1797 = add nuw nsw i32 %1796, %1793
  %1798 = icmp eq i32 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %91, align 1
  %1800 = add i64 %1772, -40
  %1801 = add i64 %392, 620
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RCX.i2541, align 8
  %1804 = add i64 %1803, 20
  %1805 = add i64 %392, 624
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i32*
  %1807 = load i32, i32* %1806, align 4
  %1808 = sext i32 %1777 to i64
  %1809 = sext i32 %1807 to i64
  %1810 = mul nsw i64 %1809, %1808
  %1811 = and i64 %1810, 4294967295
  store i64 %1811, i64* %RSI.i2547, align 8
  %1812 = load i64, i64* %RDX.i2544, align 8
  %1813 = trunc i64 %1810 to i32
  %1814 = trunc i64 %1812 to i32
  %1815 = add i32 %1813, %1814
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RDX.i2544, align 8
  %1817 = icmp ult i32 %1815, %1814
  %1818 = icmp ult i32 %1815, %1813
  %1819 = or i1 %1817, %1818
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %68, align 1
  %1821 = and i32 %1815, 255
  %1822 = tail call i32 @llvm.ctpop.i32(i32 %1821)
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = xor i8 %1824, 1
  store i8 %1825, i8* %74, align 1
  %1826 = xor i64 %1810, %1812
  %1827 = trunc i64 %1826 to i32
  %1828 = xor i32 %1827, %1815
  %1829 = lshr i32 %1828, 4
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  store i8 %1831, i8* %79, align 1
  %1832 = icmp eq i32 %1815, 0
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %82, align 1
  %1834 = lshr i32 %1815, 31
  %1835 = trunc i32 %1834 to i8
  store i8 %1835, i8* %85, align 1
  %1836 = lshr i32 %1814, 31
  %1837 = lshr i32 %1813, 31
  %1838 = xor i32 %1834, %1836
  %1839 = xor i32 %1834, %1837
  %1840 = add nuw nsw i32 %1838, %1839
  %1841 = icmp eq i32 %1840, 2
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %91, align 1
  %1843 = load i64, i64* %RBP.i, align 8
  %1844 = add i64 %1843, -60
  %1845 = add i64 %392, 629
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = add i32 %1847, %1815
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RDX.i2544, align 8
  %1850 = icmp ult i32 %1848, %1815
  %1851 = icmp ult i32 %1848, %1847
  %1852 = or i1 %1850, %1851
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %68, align 1
  %1854 = and i32 %1848, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %74, align 1
  %1859 = xor i32 %1847, %1815
  %1860 = xor i32 %1859, %1848
  %1861 = lshr i32 %1860, 4
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  store i8 %1863, i8* %79, align 1
  %1864 = icmp eq i32 %1848, 0
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %82, align 1
  %1866 = lshr i32 %1848, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %85, align 1
  %1868 = lshr i32 %1847, 31
  %1869 = xor i32 %1866, %1834
  %1870 = xor i32 %1866, %1868
  %1871 = add nuw nsw i32 %1869, %1870
  %1872 = icmp eq i32 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %91, align 1
  %1874 = sext i32 %1848 to i64
  store i64 %1874, i64* %RCX.i2541, align 8
  %1875 = load i64, i64* %RAX.i2556, align 8
  %1876 = shl nsw i64 %1874, 2
  %1877 = add i64 %1876, %1875
  %1878 = add i64 %392, 637
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = bitcast %union.VectorReg* %211 to i32*
  store i32 %1880, i32* %1881, align 1
  store float 0.000000e+00, float* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  %1882 = add i64 %1843, -40
  %1883 = add i64 %392, 641
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i64*
  %1885 = load i64, i64* %1884, align 8
  store i64 %1885, i64* %RAX.i2556, align 8
  %1886 = add i64 %392, 644
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i64*
  %1888 = load i64, i64* %1887, align 8
  store i64 %1888, i64* %RAX.i2556, align 8
  %1889 = add i64 %392, 648
  store i64 %1889, i64* %3, align 8
  %1890 = load i64, i64* %1884, align 8
  store i64 %1890, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1891 = add i64 %392, 656
  store i64 %1891, i64* %3, align 8
  %1892 = load i64, i64* %1884, align 8
  store i64 %1892, i64* %RCX.i2541, align 8
  %1893 = add i64 %392, 660
  store i64 %1893, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1894 = add i64 %392, 664
  store i64 %1894, i64* %3, align 8
  %1895 = load i64, i64* %1884, align 8
  store i64 %1895, i64* %RCX.i2541, align 8
  %1896 = add i64 %392, 668
  store i64 %1896, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -52
  %1899 = add i64 %392, 671
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, 1
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RSI.i2547, align 8
  %1904 = icmp eq i32 %1901, -1
  %1905 = icmp eq i32 %1902, 0
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %68, align 1
  %1908 = and i32 %1902, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %74, align 1
  %1913 = xor i32 %1901, %1902
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  store i8 %1916, i8* %79, align 1
  %1917 = zext i1 %1905 to i8
  store i8 %1917, i8* %82, align 1
  %1918 = lshr i32 %1902, 31
  %1919 = trunc i32 %1918 to i8
  store i8 %1919, i8* %85, align 1
  %1920 = lshr i32 %1901, 31
  %1921 = xor i32 %1918, %1920
  %1922 = add nuw nsw i32 %1921, %1918
  %1923 = icmp eq i32 %1922, 2
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %91, align 1
  %1925 = add i64 %1897, -40
  %1926 = add i64 %392, 678
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i64*
  %1928 = load i64, i64* %1927, align 8
  store i64 %1928, i64* %RCX.i2541, align 8
  %1929 = add i64 %1928, 16
  %1930 = add i64 %392, 682
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = sext i32 %1902 to i64
  %1934 = sext i32 %1932 to i64
  %1935 = mul nsw i64 %1934, %1933
  %1936 = trunc i64 %1935 to i32
  %1937 = and i64 %1935, 4294967295
  store i64 %1937, i64* %RSI.i2547, align 8
  %1938 = shl i64 %1935, 32
  %1939 = ashr exact i64 %1938, 32
  %1940 = icmp ne i64 %1939, %1935
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %68, align 1
  %1942 = and i32 %1936, 255
  %1943 = tail call i32 @llvm.ctpop.i32(i32 %1942)
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = xor i8 %1945, 1
  store i8 %1946, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1947 = lshr i32 %1936, 31
  %1948 = trunc i32 %1947 to i8
  store i8 %1948, i8* %85, align 1
  store i8 %1941, i8* %91, align 1
  %1949 = add i64 %392, 686
  store i64 %1949, i64* %3, align 8
  %1950 = load i64, i64* %1927, align 8
  store i64 %1950, i64* %RCX.i2541, align 8
  %1951 = add i64 %1950, 20
  %1952 = add i64 %392, 690
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i32*
  %1954 = load i32, i32* %1953, align 4
  %1955 = sext i32 %1954 to i64
  %1956 = mul nsw i64 %1955, %1939
  %1957 = and i64 %1956, 4294967295
  store i64 %1957, i64* %RSI.i2547, align 8
  %1958 = load i64, i64* %RDX.i2544, align 8
  %1959 = trunc i64 %1956 to i32
  %1960 = trunc i64 %1958 to i32
  %1961 = add i32 %1959, %1960
  %1962 = zext i32 %1961 to i64
  store i64 %1962, i64* %RDX.i2544, align 8
  %1963 = icmp ult i32 %1961, %1960
  %1964 = icmp ult i32 %1961, %1959
  %1965 = or i1 %1963, %1964
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %68, align 1
  %1967 = and i32 %1961, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %74, align 1
  %1972 = xor i64 %1956, %1958
  %1973 = trunc i64 %1972 to i32
  %1974 = xor i32 %1973, %1961
  %1975 = lshr i32 %1974, 4
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  store i8 %1977, i8* %79, align 1
  %1978 = icmp eq i32 %1961, 0
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %82, align 1
  %1980 = lshr i32 %1961, 31
  %1981 = trunc i32 %1980 to i8
  store i8 %1981, i8* %85, align 1
  %1982 = lshr i32 %1960, 31
  %1983 = lshr i32 %1959, 31
  %1984 = xor i32 %1980, %1982
  %1985 = xor i32 %1980, %1983
  %1986 = add nuw nsw i32 %1984, %1985
  %1987 = icmp eq i32 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %91, align 1
  %1989 = load i64, i64* %RBP.i, align 8
  %1990 = add i64 %1989, -56
  %1991 = add i64 %392, 695
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = add i32 %1993, -1
  %1995 = zext i32 %1994 to i64
  store i64 %1995, i64* %RSI.i2547, align 8
  %1996 = icmp eq i32 %1993, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %68, align 1
  %1998 = and i32 %1994, 255
  %1999 = tail call i32 @llvm.ctpop.i32(i32 %1998)
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = xor i8 %2001, 1
  store i8 %2002, i8* %74, align 1
  %2003 = xor i32 %1993, %1994
  %2004 = lshr i32 %2003, 4
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  store i8 %2006, i8* %79, align 1
  %2007 = icmp eq i32 %1994, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %82, align 1
  %2009 = lshr i32 %1994, 31
  %2010 = trunc i32 %2009 to i8
  store i8 %2010, i8* %85, align 1
  %2011 = lshr i32 %1993, 31
  %2012 = xor i32 %2009, %2011
  %2013 = add nuw nsw i32 %2012, %2011
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %91, align 1
  %2016 = add i64 %1989, -40
  %2017 = add i64 %392, 702
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i64*
  %2019 = load i64, i64* %2018, align 8
  store i64 %2019, i64* %RCX.i2541, align 8
  %2020 = add i64 %2019, 20
  %2021 = add i64 %392, 706
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = sext i32 %1994 to i64
  %2025 = sext i32 %2023 to i64
  %2026 = mul nsw i64 %2025, %2024
  %2027 = and i64 %2026, 4294967295
  store i64 %2027, i64* %RSI.i2547, align 8
  %2028 = load i64, i64* %RDX.i2544, align 8
  %2029 = trunc i64 %2026 to i32
  %2030 = trunc i64 %2028 to i32
  %2031 = add i32 %2029, %2030
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RDX.i2544, align 8
  %2033 = icmp ult i32 %2031, %2030
  %2034 = icmp ult i32 %2031, %2029
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %68, align 1
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %74, align 1
  %2042 = xor i64 %2026, %2028
  %2043 = trunc i64 %2042 to i32
  %2044 = xor i32 %2043, %2031
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %79, align 1
  %2048 = icmp eq i32 %2031, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %82, align 1
  %2050 = lshr i32 %2031, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %85, align 1
  %2052 = lshr i32 %2030, 31
  %2053 = lshr i32 %2029, 31
  %2054 = xor i32 %2050, %2052
  %2055 = xor i32 %2050, %2053
  %2056 = add nuw nsw i32 %2054, %2055
  %2057 = icmp eq i32 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %91, align 1
  %2059 = load i64, i64* %RBP.i, align 8
  %2060 = add i64 %2059, -60
  %2061 = add i64 %392, 711
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = add i32 %2063, %2031
  %2065 = zext i32 %2064 to i64
  store i64 %2065, i64* %RDX.i2544, align 8
  %2066 = icmp ult i32 %2064, %2031
  %2067 = icmp ult i32 %2064, %2063
  %2068 = or i1 %2066, %2067
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %68, align 1
  %2070 = and i32 %2064, 255
  %2071 = tail call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  store i8 %2074, i8* %74, align 1
  %2075 = xor i32 %2063, %2031
  %2076 = xor i32 %2075, %2064
  %2077 = lshr i32 %2076, 4
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %79, align 1
  %2080 = icmp eq i32 %2064, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %82, align 1
  %2082 = lshr i32 %2064, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %85, align 1
  %2084 = lshr i32 %2063, 31
  %2085 = xor i32 %2082, %2050
  %2086 = xor i32 %2082, %2084
  %2087 = add nuw nsw i32 %2085, %2086
  %2088 = icmp eq i32 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %91, align 1
  %2090 = sext i32 %2064 to i64
  store i64 %2090, i64* %RCX.i2541, align 8
  %2091 = load i64, i64* %RAX.i2556, align 8
  %2092 = shl nsw i64 %2090, 2
  %2093 = add i64 %2092, %2091
  %2094 = add i64 %392, 719
  store i64 %2094, i64* %3, align 8
  %2095 = load <2 x float>, <2 x float>* %220, align 1
  %2096 = load <2 x i32>, <2 x i32>* %221, align 1
  %2097 = inttoptr i64 %2093 to float*
  %2098 = load float, float* %2097, align 4
  %2099 = extractelement <2 x float> %2095, i32 0
  %2100 = fsub float %2099, %2098
  store float %2100, float* %213, align 1
  %2101 = bitcast <2 x float> %2095 to <2 x i32>
  %2102 = extractelement <2 x i32> %2101, i32 1
  store i32 %2102, i32* %222, align 1
  %2103 = extractelement <2 x i32> %2096, i32 0
  store i32 %2103, i32* %223, align 1
  %2104 = extractelement <2 x i32> %2096, i32 1
  store i32 %2104, i32* %224, align 1
  %2105 = add i64 %2059, -40
  %2106 = add i64 %392, 723
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i64*
  %2108 = load i64, i64* %2107, align 8
  store i64 %2108, i64* %RAX.i2556, align 8
  %2109 = add i64 %392, 726
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i64*
  %2111 = load i64, i64* %2110, align 8
  store i64 %2111, i64* %RAX.i2556, align 8
  %2112 = add i64 %392, 730
  store i64 %2112, i64* %3, align 8
  %2113 = load i64, i64* %2107, align 8
  store i64 %2113, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2114 = add i64 %392, 738
  store i64 %2114, i64* %3, align 8
  %2115 = load i64, i64* %2107, align 8
  store i64 %2115, i64* %RCX.i2541, align 8
  %2116 = add i64 %392, 742
  store i64 %2116, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2117 = load i64, i64* %RBP.i, align 8
  %2118 = add i64 %2117, -40
  %2119 = add i64 %392, 746
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i64*
  %2121 = load i64, i64* %2120, align 8
  store i64 %2121, i64* %RCX.i2541, align 8
  %2122 = add i64 %392, 750
  store i64 %2122, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2123 = add i64 %2117, -52
  %2124 = add i64 %392, 753
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = add i32 %2126, -1
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RSI.i2547, align 8
  %2129 = icmp eq i32 %2126, 0
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %68, align 1
  %2131 = and i32 %2127, 255
  %2132 = tail call i32 @llvm.ctpop.i32(i32 %2131)
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = xor i8 %2134, 1
  store i8 %2135, i8* %74, align 1
  %2136 = xor i32 %2126, %2127
  %2137 = lshr i32 %2136, 4
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  store i8 %2139, i8* %79, align 1
  %2140 = icmp eq i32 %2127, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %82, align 1
  %2142 = lshr i32 %2127, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %85, align 1
  %2144 = lshr i32 %2126, 31
  %2145 = xor i32 %2142, %2144
  %2146 = add nuw nsw i32 %2145, %2144
  %2147 = icmp eq i32 %2146, 2
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %91, align 1
  %2149 = add i64 %392, 760
  store i64 %2149, i64* %3, align 8
  %2150 = load i64, i64* %2120, align 8
  store i64 %2150, i64* %RCX.i2541, align 8
  %2151 = add i64 %2150, 16
  %2152 = add i64 %392, 764
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i32*
  %2154 = load i32, i32* %2153, align 4
  %2155 = sext i32 %2127 to i64
  %2156 = sext i32 %2154 to i64
  %2157 = mul nsw i64 %2156, %2155
  %2158 = trunc i64 %2157 to i32
  %2159 = and i64 %2157, 4294967295
  store i64 %2159, i64* %RSI.i2547, align 8
  %2160 = shl i64 %2157, 32
  %2161 = ashr exact i64 %2160, 32
  %2162 = icmp ne i64 %2161, %2157
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %68, align 1
  %2164 = and i32 %2158, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164)
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2169 = lshr i32 %2158, 31
  %2170 = trunc i32 %2169 to i8
  store i8 %2170, i8* %85, align 1
  store i8 %2163, i8* %91, align 1
  %2171 = add i64 %392, 768
  store i64 %2171, i64* %3, align 8
  %2172 = load i64, i64* %2120, align 8
  store i64 %2172, i64* %RCX.i2541, align 8
  %2173 = add i64 %2172, 20
  %2174 = add i64 %392, 772
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = sext i32 %2176 to i64
  %2178 = mul nsw i64 %2177, %2161
  %2179 = and i64 %2178, 4294967295
  store i64 %2179, i64* %RSI.i2547, align 8
  %2180 = load i64, i64* %RDX.i2544, align 8
  %2181 = trunc i64 %2178 to i32
  %2182 = trunc i64 %2180 to i32
  %2183 = add i32 %2181, %2182
  %2184 = zext i32 %2183 to i64
  store i64 %2184, i64* %RDX.i2544, align 8
  %2185 = icmp ult i32 %2183, %2182
  %2186 = icmp ult i32 %2183, %2181
  %2187 = or i1 %2185, %2186
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %68, align 1
  %2189 = and i32 %2183, 255
  %2190 = tail call i32 @llvm.ctpop.i32(i32 %2189)
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = xor i8 %2192, 1
  store i8 %2193, i8* %74, align 1
  %2194 = xor i64 %2178, %2180
  %2195 = trunc i64 %2194 to i32
  %2196 = xor i32 %2195, %2183
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %79, align 1
  %2200 = icmp eq i32 %2183, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %82, align 1
  %2202 = lshr i32 %2183, 31
  %2203 = trunc i32 %2202 to i8
  store i8 %2203, i8* %85, align 1
  %2204 = lshr i32 %2182, 31
  %2205 = lshr i32 %2181, 31
  %2206 = xor i32 %2202, %2204
  %2207 = xor i32 %2202, %2205
  %2208 = add nuw nsw i32 %2206, %2207
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %91, align 1
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -56
  %2213 = add i64 %392, 777
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i32*
  %2215 = load i32, i32* %2214, align 4
  %2216 = add i32 %2215, 1
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RSI.i2547, align 8
  %2218 = icmp eq i32 %2215, -1
  %2219 = icmp eq i32 %2216, 0
  %2220 = or i1 %2218, %2219
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %68, align 1
  %2222 = and i32 %2216, 255
  %2223 = tail call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  store i8 %2226, i8* %74, align 1
  %2227 = xor i32 %2215, %2216
  %2228 = lshr i32 %2227, 4
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  store i8 %2230, i8* %79, align 1
  %2231 = zext i1 %2219 to i8
  store i8 %2231, i8* %82, align 1
  %2232 = lshr i32 %2216, 31
  %2233 = trunc i32 %2232 to i8
  store i8 %2233, i8* %85, align 1
  %2234 = lshr i32 %2215, 31
  %2235 = xor i32 %2232, %2234
  %2236 = add nuw nsw i32 %2235, %2232
  %2237 = icmp eq i32 %2236, 2
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %91, align 1
  %2239 = add i64 %2211, -40
  %2240 = add i64 %392, 784
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i64*
  %2242 = load i64, i64* %2241, align 8
  store i64 %2242, i64* %RCX.i2541, align 8
  %2243 = add i64 %2242, 20
  %2244 = add i64 %392, 788
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = sext i32 %2216 to i64
  %2248 = sext i32 %2246 to i64
  %2249 = mul nsw i64 %2248, %2247
  %2250 = and i64 %2249, 4294967295
  store i64 %2250, i64* %RSI.i2547, align 8
  %2251 = load i64, i64* %RDX.i2544, align 8
  %2252 = trunc i64 %2249 to i32
  %2253 = trunc i64 %2251 to i32
  %2254 = add i32 %2252, %2253
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RDX.i2544, align 8
  %2256 = icmp ult i32 %2254, %2253
  %2257 = icmp ult i32 %2254, %2252
  %2258 = or i1 %2256, %2257
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %68, align 1
  %2260 = and i32 %2254, 255
  %2261 = tail call i32 @llvm.ctpop.i32(i32 %2260)
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  %2264 = xor i8 %2263, 1
  store i8 %2264, i8* %74, align 1
  %2265 = xor i64 %2249, %2251
  %2266 = trunc i64 %2265 to i32
  %2267 = xor i32 %2266, %2254
  %2268 = lshr i32 %2267, 4
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  store i8 %2270, i8* %79, align 1
  %2271 = icmp eq i32 %2254, 0
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %82, align 1
  %2273 = lshr i32 %2254, 31
  %2274 = trunc i32 %2273 to i8
  store i8 %2274, i8* %85, align 1
  %2275 = lshr i32 %2253, 31
  %2276 = lshr i32 %2252, 31
  %2277 = xor i32 %2273, %2275
  %2278 = xor i32 %2273, %2276
  %2279 = add nuw nsw i32 %2277, %2278
  %2280 = icmp eq i32 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %91, align 1
  %2282 = load i64, i64* %RBP.i, align 8
  %2283 = add i64 %2282, -60
  %2284 = add i64 %392, 793
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2283 to i32*
  %2286 = load i32, i32* %2285, align 4
  %2287 = add i32 %2286, %2254
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RDX.i2544, align 8
  %2289 = icmp ult i32 %2287, %2254
  %2290 = icmp ult i32 %2287, %2286
  %2291 = or i1 %2289, %2290
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %68, align 1
  %2293 = and i32 %2287, 255
  %2294 = tail call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  store i8 %2297, i8* %74, align 1
  %2298 = xor i32 %2286, %2254
  %2299 = xor i32 %2298, %2287
  %2300 = lshr i32 %2299, 4
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  store i8 %2302, i8* %79, align 1
  %2303 = icmp eq i32 %2287, 0
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %82, align 1
  %2305 = lshr i32 %2287, 31
  %2306 = trunc i32 %2305 to i8
  store i8 %2306, i8* %85, align 1
  %2307 = lshr i32 %2286, 31
  %2308 = xor i32 %2305, %2273
  %2309 = xor i32 %2305, %2307
  %2310 = add nuw nsw i32 %2308, %2309
  %2311 = icmp eq i32 %2310, 2
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %91, align 1
  %2313 = sext i32 %2287 to i64
  store i64 %2313, i64* %RCX.i2541, align 8
  %2314 = load i64, i64* %RAX.i2556, align 8
  %2315 = shl nsw i64 %2313, 2
  %2316 = add i64 %2315, %2314
  %2317 = add i64 %392, 801
  store i64 %2317, i64* %3, align 8
  %2318 = load <2 x float>, <2 x float>* %220, align 1
  %2319 = load <2 x i32>, <2 x i32>* %221, align 1
  %2320 = inttoptr i64 %2316 to float*
  %2321 = load float, float* %2320, align 4
  %2322 = extractelement <2 x float> %2318, i32 0
  %2323 = fsub float %2322, %2321
  store float %2323, float* %213, align 1
  %2324 = bitcast <2 x float> %2318 to <2 x i32>
  %2325 = extractelement <2 x i32> %2324, i32 1
  store i32 %2325, i32* %222, align 1
  %2326 = extractelement <2 x i32> %2319, i32 0
  store i32 %2326, i32* %223, align 1
  %2327 = extractelement <2 x i32> %2319, i32 1
  store i32 %2327, i32* %224, align 1
  %2328 = add i64 %2282, -40
  %2329 = add i64 %392, 805
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i64*
  %2331 = load i64, i64* %2330, align 8
  store i64 %2331, i64* %RAX.i2556, align 8
  %2332 = add i64 %392, 808
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i64*
  %2334 = load i64, i64* %2333, align 8
  store i64 %2334, i64* %RAX.i2556, align 8
  %2335 = add i64 %392, 812
  store i64 %2335, i64* %3, align 8
  %2336 = load i64, i64* %2330, align 8
  store i64 %2336, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2337 = add i64 %392, 820
  store i64 %2337, i64* %3, align 8
  %2338 = load i64, i64* %2330, align 8
  store i64 %2338, i64* %RCX.i2541, align 8
  %2339 = add i64 %392, 824
  store i64 %2339, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2340 = load i64, i64* %RBP.i, align 8
  %2341 = add i64 %2340, -40
  %2342 = add i64 %392, 828
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i64*
  %2344 = load i64, i64* %2343, align 8
  store i64 %2344, i64* %RCX.i2541, align 8
  %2345 = add i64 %392, 832
  store i64 %2345, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2346 = add i64 %2340, -52
  %2347 = add i64 %392, 835
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i32*
  %2349 = load i32, i32* %2348, align 4
  %2350 = add i32 %2349, -1
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RSI.i2547, align 8
  %2352 = icmp eq i32 %2349, 0
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %68, align 1
  %2354 = and i32 %2350, 255
  %2355 = tail call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  store i8 %2358, i8* %74, align 1
  %2359 = xor i32 %2349, %2350
  %2360 = lshr i32 %2359, 4
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  store i8 %2362, i8* %79, align 1
  %2363 = icmp eq i32 %2350, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %82, align 1
  %2365 = lshr i32 %2350, 31
  %2366 = trunc i32 %2365 to i8
  store i8 %2366, i8* %85, align 1
  %2367 = lshr i32 %2349, 31
  %2368 = xor i32 %2365, %2367
  %2369 = add nuw nsw i32 %2368, %2367
  %2370 = icmp eq i32 %2369, 2
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %91, align 1
  %2372 = add i64 %392, 842
  store i64 %2372, i64* %3, align 8
  %2373 = load i64, i64* %2343, align 8
  store i64 %2373, i64* %RCX.i2541, align 8
  %2374 = add i64 %2373, 16
  %2375 = add i64 %392, 846
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = sext i32 %2350 to i64
  %2379 = sext i32 %2377 to i64
  %2380 = mul nsw i64 %2379, %2378
  %2381 = trunc i64 %2380 to i32
  %2382 = and i64 %2380, 4294967295
  store i64 %2382, i64* %RSI.i2547, align 8
  %2383 = shl i64 %2380, 32
  %2384 = ashr exact i64 %2383, 32
  %2385 = icmp ne i64 %2384, %2380
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %68, align 1
  %2387 = and i32 %2381, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2392 = lshr i32 %2381, 31
  %2393 = trunc i32 %2392 to i8
  store i8 %2393, i8* %85, align 1
  store i8 %2386, i8* %91, align 1
  %2394 = add i64 %392, 850
  store i64 %2394, i64* %3, align 8
  %2395 = load i64, i64* %2343, align 8
  store i64 %2395, i64* %RCX.i2541, align 8
  %2396 = add i64 %2395, 20
  %2397 = add i64 %392, 854
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i32*
  %2399 = load i32, i32* %2398, align 4
  %2400 = sext i32 %2399 to i64
  %2401 = mul nsw i64 %2400, %2384
  %2402 = and i64 %2401, 4294967295
  store i64 %2402, i64* %RSI.i2547, align 8
  %2403 = load i64, i64* %RDX.i2544, align 8
  %2404 = trunc i64 %2401 to i32
  %2405 = trunc i64 %2403 to i32
  %2406 = add i32 %2404, %2405
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RDX.i2544, align 8
  %2408 = icmp ult i32 %2406, %2405
  %2409 = icmp ult i32 %2406, %2404
  %2410 = or i1 %2408, %2409
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %68, align 1
  %2412 = and i32 %2406, 255
  %2413 = tail call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  store i8 %2416, i8* %74, align 1
  %2417 = xor i64 %2401, %2403
  %2418 = trunc i64 %2417 to i32
  %2419 = xor i32 %2418, %2406
  %2420 = lshr i32 %2419, 4
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  store i8 %2422, i8* %79, align 1
  %2423 = icmp eq i32 %2406, 0
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %82, align 1
  %2425 = lshr i32 %2406, 31
  %2426 = trunc i32 %2425 to i8
  store i8 %2426, i8* %85, align 1
  %2427 = lshr i32 %2405, 31
  %2428 = lshr i32 %2404, 31
  %2429 = xor i32 %2425, %2427
  %2430 = xor i32 %2425, %2428
  %2431 = add nuw nsw i32 %2429, %2430
  %2432 = icmp eq i32 %2431, 2
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %91, align 1
  %2434 = load i64, i64* %RBP.i, align 8
  %2435 = add i64 %2434, -56
  %2436 = add i64 %392, 859
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = add i32 %2438, -1
  %2440 = zext i32 %2439 to i64
  store i64 %2440, i64* %RSI.i2547, align 8
  %2441 = icmp eq i32 %2438, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %68, align 1
  %2443 = and i32 %2439, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  store i8 %2447, i8* %74, align 1
  %2448 = xor i32 %2438, %2439
  %2449 = lshr i32 %2448, 4
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  store i8 %2451, i8* %79, align 1
  %2452 = icmp eq i32 %2439, 0
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %82, align 1
  %2454 = lshr i32 %2439, 31
  %2455 = trunc i32 %2454 to i8
  store i8 %2455, i8* %85, align 1
  %2456 = lshr i32 %2438, 31
  %2457 = xor i32 %2454, %2456
  %2458 = add nuw nsw i32 %2457, %2456
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %91, align 1
  %2461 = add i64 %2434, -40
  %2462 = add i64 %392, 866
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i64*
  %2464 = load i64, i64* %2463, align 8
  store i64 %2464, i64* %RCX.i2541, align 8
  %2465 = add i64 %2464, 20
  %2466 = add i64 %392, 870
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = sext i32 %2439 to i64
  %2470 = sext i32 %2468 to i64
  %2471 = mul nsw i64 %2470, %2469
  %2472 = and i64 %2471, 4294967295
  store i64 %2472, i64* %RSI.i2547, align 8
  %2473 = load i64, i64* %RDX.i2544, align 8
  %2474 = trunc i64 %2471 to i32
  %2475 = trunc i64 %2473 to i32
  %2476 = add i32 %2474, %2475
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RDX.i2544, align 8
  %2478 = icmp ult i32 %2476, %2475
  %2479 = icmp ult i32 %2476, %2474
  %2480 = or i1 %2478, %2479
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %68, align 1
  %2482 = and i32 %2476, 255
  %2483 = tail call i32 @llvm.ctpop.i32(i32 %2482)
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  %2486 = xor i8 %2485, 1
  store i8 %2486, i8* %74, align 1
  %2487 = xor i64 %2471, %2473
  %2488 = trunc i64 %2487 to i32
  %2489 = xor i32 %2488, %2476
  %2490 = lshr i32 %2489, 4
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  store i8 %2492, i8* %79, align 1
  %2493 = icmp eq i32 %2476, 0
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %82, align 1
  %2495 = lshr i32 %2476, 31
  %2496 = trunc i32 %2495 to i8
  store i8 %2496, i8* %85, align 1
  %2497 = lshr i32 %2475, 31
  %2498 = lshr i32 %2474, 31
  %2499 = xor i32 %2495, %2497
  %2500 = xor i32 %2495, %2498
  %2501 = add nuw nsw i32 %2499, %2500
  %2502 = icmp eq i32 %2501, 2
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %91, align 1
  %2504 = load i64, i64* %RBP.i, align 8
  %2505 = add i64 %2504, -60
  %2506 = add i64 %392, 875
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  %2508 = load i32, i32* %2507, align 4
  %2509 = add i32 %2508, %2476
  %2510 = zext i32 %2509 to i64
  store i64 %2510, i64* %RDX.i2544, align 8
  %2511 = icmp ult i32 %2509, %2476
  %2512 = icmp ult i32 %2509, %2508
  %2513 = or i1 %2511, %2512
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %68, align 1
  %2515 = and i32 %2509, 255
  %2516 = tail call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  store i8 %2519, i8* %74, align 1
  %2520 = xor i32 %2508, %2476
  %2521 = xor i32 %2520, %2509
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %79, align 1
  %2525 = icmp eq i32 %2509, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %82, align 1
  %2527 = lshr i32 %2509, 31
  %2528 = trunc i32 %2527 to i8
  store i8 %2528, i8* %85, align 1
  %2529 = lshr i32 %2508, 31
  %2530 = xor i32 %2527, %2495
  %2531 = xor i32 %2527, %2529
  %2532 = add nuw nsw i32 %2530, %2531
  %2533 = icmp eq i32 %2532, 2
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %91, align 1
  %2535 = sext i32 %2509 to i64
  store i64 %2535, i64* %RCX.i2541, align 8
  %2536 = load i64, i64* %RAX.i2556, align 8
  %2537 = shl nsw i64 %2535, 2
  %2538 = add i64 %2537, %2536
  %2539 = add i64 %392, 883
  store i64 %2539, i64* %3, align 8
  %2540 = load <2 x float>, <2 x float>* %220, align 1
  %2541 = load <2 x i32>, <2 x i32>* %221, align 1
  %2542 = inttoptr i64 %2538 to float*
  %2543 = load float, float* %2542, align 4
  %2544 = extractelement <2 x float> %2540, i32 0
  %2545 = fadd float %2544, %2543
  store float %2545, float* %213, align 1
  %2546 = bitcast <2 x float> %2540 to <2 x i32>
  %2547 = extractelement <2 x i32> %2546, i32 1
  store i32 %2547, i32* %222, align 1
  %2548 = extractelement <2 x i32> %2541, i32 0
  store i32 %2548, i32* %223, align 1
  %2549 = extractelement <2 x i32> %2541, i32 1
  store i32 %2549, i32* %224, align 1
  %2550 = load <2 x float>, <2 x float>* %206, align 1
  %2551 = load <2 x i32>, <2 x i32>* %207, align 1
  %2552 = load <2 x float>, <2 x float>* %220, align 1
  %2553 = extractelement <2 x float> %2550, i32 0
  %2554 = extractelement <2 x float> %2552, i32 0
  %2555 = fmul float %2553, %2554
  store float %2555, float* %199, align 1
  %2556 = bitcast <2 x float> %2550 to <2 x i32>
  %2557 = extractelement <2 x i32> %2556, i32 1
  store i32 %2557, i32* %208, align 1
  %2558 = extractelement <2 x i32> %2551, i32 0
  store i32 %2558, i32* %209, align 1
  %2559 = extractelement <2 x i32> %2551, i32 1
  store i32 %2559, i32* %210, align 1
  %2560 = load <2 x float>, <2 x float>* %191, align 1
  %2561 = load <2 x i32>, <2 x i32>* %196, align 1
  %2562 = load <2 x float>, <2 x float>* %206, align 1
  %2563 = extractelement <2 x float> %2560, i32 0
  %2564 = extractelement <2 x float> %2562, i32 0
  %2565 = fadd float %2563, %2564
  store float %2565, float* %192, align 1
  %2566 = bitcast <2 x float> %2560 to <2 x i32>
  %2567 = extractelement <2 x i32> %2566, i32 1
  store i32 %2567, i32* %187, align 1
  %2568 = extractelement <2 x i32> %2561, i32 0
  store i32 %2568, i32* %188, align 1
  %2569 = extractelement <2 x i32> %2561, i32 1
  store i32 %2569, i32* %190, align 1
  %2570 = add i64 %2504, -24
  %2571 = add i64 %392, 895
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i64*
  %2573 = load i64, i64* %2572, align 8
  store i64 %2573, i64* %RAX.i2556, align 8
  %2574 = add i64 %392, 898
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i64*
  %2576 = load i64, i64* %2575, align 8
  store i64 %2576, i64* %RAX.i2556, align 8
  %2577 = load i64, i64* %RBP.i, align 8
  %2578 = add i64 %2577, -24
  %2579 = add i64 %392, 902
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i64*
  %2581 = load i64, i64* %2580, align 8
  store i64 %2581, i64* %RCX.i2541, align 8
  %2582 = add i64 %2581, 12
  %2583 = add i64 %392, 905
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = zext i32 %2585 to i64
  store i64 %2586, i64* %RDX.i2544, align 8
  %2587 = add i64 %392, 912
  store i64 %2587, i64* %3, align 8
  %2588 = load i64, i64* %2580, align 8
  store i64 %2588, i64* %RCX.i2541, align 8
  %2589 = add i64 %2588, 16
  %2590 = add i64 %392, 916
  store i64 %2590, i64* %3, align 8
  %2591 = inttoptr i64 %2589 to i32*
  %2592 = load i32, i32* %2591, align 4
  %2593 = sext i32 %2585 to i64
  %2594 = sext i32 %2592 to i64
  %2595 = mul nsw i64 %2594, %2593
  %2596 = trunc i64 %2595 to i32
  %2597 = and i64 %2595, 4294967295
  store i64 %2597, i64* %RDX.i2544, align 8
  %2598 = shl i64 %2595, 32
  %2599 = ashr exact i64 %2598, 32
  %2600 = icmp ne i64 %2599, %2595
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %68, align 1
  %2602 = and i32 %2596, 255
  %2603 = tail call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2607 = lshr i32 %2596, 31
  %2608 = trunc i32 %2607 to i8
  store i8 %2608, i8* %85, align 1
  store i8 %2601, i8* %91, align 1
  %2609 = add i64 %392, 920
  store i64 %2609, i64* %3, align 8
  %2610 = load i64, i64* %2580, align 8
  store i64 %2610, i64* %RCX.i2541, align 8
  %2611 = add i64 %2610, 20
  %2612 = add i64 %392, 924
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = sext i32 %2614 to i64
  %2616 = mul nsw i64 %2615, %2599
  %2617 = trunc i64 %2616 to i32
  %2618 = and i64 %2616, 4294967295
  store i64 %2618, i64* %RDX.i2544, align 8
  %2619 = shl i64 %2616, 32
  %2620 = ashr exact i64 %2619, 32
  %2621 = icmp ne i64 %2620, %2616
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %68, align 1
  %2623 = and i32 %2617, 255
  %2624 = tail call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  store i8 %2627, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2628 = lshr i32 %2617, 31
  %2629 = trunc i32 %2628 to i8
  store i8 %2629, i8* %85, align 1
  store i8 %2622, i8* %91, align 1
  %2630 = add i64 %2577, -52
  %2631 = add i64 %392, 927
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RSI.i2547, align 8
  %2635 = add i64 %392, 931
  store i64 %2635, i64* %3, align 8
  %2636 = load i64, i64* %2580, align 8
  store i64 %2636, i64* %RCX.i2541, align 8
  %2637 = add i64 %2636, 16
  %2638 = add i64 %392, 935
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = sext i32 %2633 to i64
  %2642 = sext i32 %2640 to i64
  %2643 = mul nsw i64 %2642, %2641
  %2644 = trunc i64 %2643 to i32
  %2645 = and i64 %2643, 4294967295
  store i64 %2645, i64* %RSI.i2547, align 8
  %2646 = shl i64 %2643, 32
  %2647 = ashr exact i64 %2646, 32
  %2648 = icmp ne i64 %2647, %2643
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %68, align 1
  %2650 = and i32 %2644, 255
  %2651 = tail call i32 @llvm.ctpop.i32(i32 %2650)
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  %2654 = xor i8 %2653, 1
  store i8 %2654, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2655 = lshr i32 %2644, 31
  %2656 = trunc i32 %2655 to i8
  store i8 %2656, i8* %85, align 1
  store i8 %2649, i8* %91, align 1
  %2657 = load i64, i64* %RBP.i, align 8
  %2658 = add i64 %2657, -24
  %2659 = add i64 %392, 939
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i64*
  %2661 = load i64, i64* %2660, align 8
  store i64 %2661, i64* %RCX.i2541, align 8
  %2662 = add i64 %2661, 20
  %2663 = add i64 %392, 943
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = sext i32 %2665 to i64
  %2667 = mul nsw i64 %2666, %2647
  %2668 = and i64 %2667, 4294967295
  store i64 %2668, i64* %RSI.i2547, align 8
  %2669 = trunc i64 %2667 to i32
  %2670 = add i32 %2669, %2617
  %2671 = zext i32 %2670 to i64
  store i64 %2671, i64* %RDX.i2544, align 8
  %2672 = icmp ult i32 %2670, %2617
  %2673 = icmp ult i32 %2670, %2669
  %2674 = or i1 %2672, %2673
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %68, align 1
  %2676 = and i32 %2670, 255
  %2677 = tail call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %74, align 1
  %2681 = xor i64 %2667, %2616
  %2682 = trunc i64 %2681 to i32
  %2683 = xor i32 %2682, %2670
  %2684 = lshr i32 %2683, 4
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  store i8 %2686, i8* %79, align 1
  %2687 = icmp eq i32 %2670, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %82, align 1
  %2689 = lshr i32 %2670, 31
  %2690 = trunc i32 %2689 to i8
  store i8 %2690, i8* %85, align 1
  %2691 = lshr i32 %2669, 31
  %2692 = xor i32 %2689, %2628
  %2693 = xor i32 %2689, %2691
  %2694 = add nuw nsw i32 %2692, %2693
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %91, align 1
  %2697 = add i64 %2657, -56
  %2698 = add i64 %392, 948
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RSI.i2547, align 8
  %2702 = add i64 %392, 952
  store i64 %2702, i64* %3, align 8
  %2703 = load i64, i64* %2660, align 8
  store i64 %2703, i64* %RCX.i2541, align 8
  %2704 = add i64 %2703, 20
  %2705 = add i64 %392, 956
  store i64 %2705, i64* %3, align 8
  %2706 = inttoptr i64 %2704 to i32*
  %2707 = load i32, i32* %2706, align 4
  %2708 = sext i32 %2700 to i64
  %2709 = sext i32 %2707 to i64
  %2710 = mul nsw i64 %2709, %2708
  %2711 = and i64 %2710, 4294967295
  store i64 %2711, i64* %RSI.i2547, align 8
  %2712 = trunc i64 %2710 to i32
  %2713 = add i32 %2712, %2670
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RDX.i2544, align 8
  %2715 = icmp ult i32 %2713, %2670
  %2716 = icmp ult i32 %2713, %2712
  %2717 = or i1 %2715, %2716
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %68, align 1
  %2719 = and i32 %2713, 255
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  store i8 %2723, i8* %74, align 1
  %2724 = xor i64 %2710, %2671
  %2725 = trunc i64 %2724 to i32
  %2726 = xor i32 %2725, %2713
  %2727 = lshr i32 %2726, 4
  %2728 = trunc i32 %2727 to i8
  %2729 = and i8 %2728, 1
  store i8 %2729, i8* %79, align 1
  %2730 = icmp eq i32 %2713, 0
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %82, align 1
  %2732 = lshr i32 %2713, 31
  %2733 = trunc i32 %2732 to i8
  store i8 %2733, i8* %85, align 1
  %2734 = lshr i32 %2712, 31
  %2735 = xor i32 %2732, %2689
  %2736 = xor i32 %2732, %2734
  %2737 = add nuw nsw i32 %2735, %2736
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %91, align 1
  %2740 = load i64, i64* %RBP.i, align 8
  %2741 = add i64 %2740, -60
  %2742 = add i64 %392, 961
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = add i32 %2744, %2713
  %2746 = zext i32 %2745 to i64
  store i64 %2746, i64* %RDX.i2544, align 8
  %2747 = icmp ult i32 %2745, %2713
  %2748 = icmp ult i32 %2745, %2744
  %2749 = or i1 %2747, %2748
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %68, align 1
  %2751 = and i32 %2745, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %74, align 1
  %2756 = xor i32 %2744, %2713
  %2757 = xor i32 %2756, %2745
  %2758 = lshr i32 %2757, 4
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  store i8 %2760, i8* %79, align 1
  %2761 = icmp eq i32 %2745, 0
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %82, align 1
  %2763 = lshr i32 %2745, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %85, align 1
  %2765 = lshr i32 %2744, 31
  %2766 = xor i32 %2763, %2732
  %2767 = xor i32 %2763, %2765
  %2768 = add nuw nsw i32 %2766, %2767
  %2769 = icmp eq i32 %2768, 2
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %91, align 1
  %2771 = sext i32 %2745 to i64
  store i64 %2771, i64* %RCX.i2541, align 8
  %2772 = load i64, i64* %RAX.i2556, align 8
  %2773 = shl nsw i64 %2771, 2
  %2774 = add i64 %2773, %2772
  %2775 = add i64 %392, 969
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2774 to i32*
  %2777 = load i32, i32* %2776, align 4
  store i32 %2777, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %2778 = add i64 %2740, -40
  %2779 = add i64 %392, 973
  store i64 %2779, i64* %3, align 8
  %2780 = inttoptr i64 %2778 to i64*
  %2781 = load i64, i64* %2780, align 8
  store i64 %2781, i64* %RAX.i2556, align 8
  %2782 = add i64 %392, 976
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i64*
  %2784 = load i64, i64* %2783, align 8
  store i64 %2784, i64* %RAX.i2556, align 8
  %2785 = add i64 %392, 980
  store i64 %2785, i64* %3, align 8
  %2786 = load i64, i64* %2780, align 8
  store i64 %2786, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2787 = add i64 %392, 988
  store i64 %2787, i64* %3, align 8
  %2788 = load i64, i64* %2780, align 8
  store i64 %2788, i64* %RCX.i2541, align 8
  %2789 = add i64 %392, 992
  store i64 %2789, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2790 = add i64 %392, 996
  store i64 %2790, i64* %3, align 8
  %2791 = load i64, i64* %2780, align 8
  store i64 %2791, i64* %RCX.i2541, align 8
  %2792 = add i64 %392, 1000
  store i64 %2792, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2793 = load i64, i64* %RBP.i, align 8
  %2794 = add i64 %2793, -52
  %2795 = add i64 %392, 1003
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i32*
  %2797 = load i32, i32* %2796, align 4
  %2798 = zext i32 %2797 to i64
  store i64 %2798, i64* %RSI.i2547, align 8
  %2799 = add i64 %2793, -40
  %2800 = add i64 %392, 1007
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i64*
  %2802 = load i64, i64* %2801, align 8
  store i64 %2802, i64* %RCX.i2541, align 8
  %2803 = add i64 %2802, 16
  %2804 = add i64 %392, 1011
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = sext i32 %2797 to i64
  %2808 = sext i32 %2806 to i64
  %2809 = mul nsw i64 %2808, %2807
  %2810 = trunc i64 %2809 to i32
  %2811 = and i64 %2809, 4294967295
  store i64 %2811, i64* %RSI.i2547, align 8
  %2812 = shl i64 %2809, 32
  %2813 = ashr exact i64 %2812, 32
  %2814 = icmp ne i64 %2813, %2809
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %68, align 1
  %2816 = and i32 %2810, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816)
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2821 = lshr i32 %2810, 31
  %2822 = trunc i32 %2821 to i8
  store i8 %2822, i8* %85, align 1
  store i8 %2815, i8* %91, align 1
  %2823 = add i64 %392, 1015
  store i64 %2823, i64* %3, align 8
  %2824 = load i64, i64* %2801, align 8
  store i64 %2824, i64* %RCX.i2541, align 8
  %2825 = add i64 %2824, 20
  %2826 = add i64 %392, 1019
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i32*
  %2828 = load i32, i32* %2827, align 4
  %2829 = sext i32 %2828 to i64
  %2830 = mul nsw i64 %2829, %2813
  %2831 = and i64 %2830, 4294967295
  store i64 %2831, i64* %RSI.i2547, align 8
  %2832 = trunc i64 %2830 to i32
  store i64 %2831, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %2833 = and i32 %2832, 255
  %2834 = tail call i32 @llvm.ctpop.i32(i32 %2833)
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  %2837 = xor i8 %2836, 1
  store i8 %2837, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %2838 = icmp eq i32 %2832, 0
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %82, align 1
  %2840 = lshr i32 %2832, 31
  %2841 = trunc i32 %2840 to i8
  store i8 %2841, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2842 = add i64 %2793, -56
  %2843 = add i64 %392, 1024
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i32*
  %2845 = load i32, i32* %2844, align 4
  %2846 = add i32 %2845, 1
  %2847 = zext i32 %2846 to i64
  store i64 %2847, i64* %RSI.i2547, align 8
  %2848 = icmp eq i32 %2845, -1
  %2849 = icmp eq i32 %2846, 0
  %2850 = or i1 %2848, %2849
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %68, align 1
  %2852 = and i32 %2846, 255
  %2853 = tail call i32 @llvm.ctpop.i32(i32 %2852)
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  %2856 = xor i8 %2855, 1
  store i8 %2856, i8* %74, align 1
  %2857 = xor i32 %2845, %2846
  %2858 = lshr i32 %2857, 4
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  store i8 %2860, i8* %79, align 1
  %2861 = zext i1 %2849 to i8
  store i8 %2861, i8* %82, align 1
  %2862 = lshr i32 %2846, 31
  %2863 = trunc i32 %2862 to i8
  store i8 %2863, i8* %85, align 1
  %2864 = lshr i32 %2845, 31
  %2865 = xor i32 %2862, %2864
  %2866 = add nuw nsw i32 %2865, %2862
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %91, align 1
  %2869 = load i64, i64* %RBP.i, align 8
  %2870 = add i64 %2869, -40
  %2871 = add i64 %392, 1031
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i64*
  %2873 = load i64, i64* %2872, align 8
  store i64 %2873, i64* %RCX.i2541, align 8
  %2874 = add i64 %2873, 20
  %2875 = add i64 %392, 1035
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i32*
  %2877 = load i32, i32* %2876, align 4
  %2878 = sext i32 %2846 to i64
  %2879 = sext i32 %2877 to i64
  %2880 = mul nsw i64 %2879, %2878
  %2881 = and i64 %2880, 4294967295
  store i64 %2881, i64* %RSI.i2547, align 8
  %2882 = trunc i64 %2880 to i32
  %2883 = add i32 %2882, %2832
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RDX.i2544, align 8
  %2885 = icmp ult i32 %2883, %2832
  %2886 = icmp ult i32 %2883, %2882
  %2887 = or i1 %2885, %2886
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %68, align 1
  %2889 = and i32 %2883, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %74, align 1
  %2894 = xor i64 %2880, %2830
  %2895 = trunc i64 %2894 to i32
  %2896 = xor i32 %2895, %2883
  %2897 = lshr i32 %2896, 4
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  store i8 %2899, i8* %79, align 1
  %2900 = icmp eq i32 %2883, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %82, align 1
  %2902 = lshr i32 %2883, 31
  %2903 = trunc i32 %2902 to i8
  store i8 %2903, i8* %85, align 1
  %2904 = lshr i32 %2882, 31
  %2905 = xor i32 %2902, %2840
  %2906 = xor i32 %2902, %2904
  %2907 = add nuw nsw i32 %2905, %2906
  %2908 = icmp eq i32 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %91, align 1
  %2910 = add i64 %2869, -60
  %2911 = add i64 %392, 1040
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = add i32 %2913, 1
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RSI.i2547, align 8
  %2916 = lshr i32 %2914, 31
  %2917 = add i32 %2914, %2883
  %2918 = zext i32 %2917 to i64
  store i64 %2918, i64* %RDX.i2544, align 8
  %2919 = icmp ult i32 %2917, %2883
  %2920 = icmp ult i32 %2917, %2914
  %2921 = or i1 %2919, %2920
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %68, align 1
  %2923 = and i32 %2917, 255
  %2924 = tail call i32 @llvm.ctpop.i32(i32 %2923)
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  %2927 = xor i8 %2926, 1
  store i8 %2927, i8* %74, align 1
  %2928 = xor i32 %2914, %2883
  %2929 = xor i32 %2928, %2917
  %2930 = lshr i32 %2929, 4
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  store i8 %2932, i8* %79, align 1
  %2933 = icmp eq i32 %2917, 0
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %82, align 1
  %2935 = lshr i32 %2917, 31
  %2936 = trunc i32 %2935 to i8
  store i8 %2936, i8* %85, align 1
  %2937 = xor i32 %2935, %2902
  %2938 = xor i32 %2935, %2916
  %2939 = add nuw nsw i32 %2937, %2938
  %2940 = icmp eq i32 %2939, 2
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %91, align 1
  %2942 = sext i32 %2917 to i64
  store i64 %2942, i64* %RCX.i2541, align 8
  %2943 = load i64, i64* %RAX.i2556, align 8
  %2944 = shl nsw i64 %2942, 2
  %2945 = add i64 %2944, %2943
  %2946 = add i64 %392, 1053
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  store i32 %2948, i32* %1881, align 1
  store float 0.000000e+00, float* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  %2949 = load i64, i64* %RBP.i, align 8
  %2950 = add i64 %2949, -40
  %2951 = add i64 %392, 1057
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i64*
  %2953 = load i64, i64* %2952, align 8
  store i64 %2953, i64* %RAX.i2556, align 8
  %2954 = add i64 %392, 1060
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i64*
  %2956 = load i64, i64* %2955, align 8
  store i64 %2956, i64* %RAX.i2556, align 8
  %2957 = add i64 %392, 1064
  store i64 %2957, i64* %3, align 8
  %2958 = load i64, i64* %2952, align 8
  store i64 %2958, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2959 = add i64 %392, 1072
  store i64 %2959, i64* %3, align 8
  %2960 = load i64, i64* %2952, align 8
  store i64 %2960, i64* %RCX.i2541, align 8
  %2961 = add i64 %392, 1076
  store i64 %2961, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2962 = add i64 %392, 1080
  store i64 %2962, i64* %3, align 8
  %2963 = load i64, i64* %2952, align 8
  store i64 %2963, i64* %RCX.i2541, align 8
  %2964 = add i64 %392, 1084
  store i64 %2964, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2965 = add i64 %2949, -52
  %2966 = add i64 %392, 1087
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = zext i32 %2968 to i64
  store i64 %2969, i64* %RSI.i2547, align 8
  %2970 = add i64 %392, 1091
  store i64 %2970, i64* %3, align 8
  %2971 = load i64, i64* %2952, align 8
  store i64 %2971, i64* %RCX.i2541, align 8
  %2972 = add i64 %2971, 16
  %2973 = add i64 %392, 1095
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = sext i32 %2968 to i64
  %2977 = sext i32 %2975 to i64
  %2978 = mul nsw i64 %2977, %2976
  %2979 = trunc i64 %2978 to i32
  %2980 = and i64 %2978, 4294967295
  store i64 %2980, i64* %RSI.i2547, align 8
  %2981 = shl i64 %2978, 32
  %2982 = ashr exact i64 %2981, 32
  %2983 = icmp ne i64 %2982, %2978
  %2984 = zext i1 %2983 to i8
  store i8 %2984, i8* %68, align 1
  %2985 = and i32 %2979, 255
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2990 = lshr i32 %2979, 31
  %2991 = trunc i32 %2990 to i8
  store i8 %2991, i8* %85, align 1
  store i8 %2984, i8* %91, align 1
  %2992 = add i64 %392, 1099
  store i64 %2992, i64* %3, align 8
  %2993 = load i64, i64* %2952, align 8
  store i64 %2993, i64* %RCX.i2541, align 8
  %2994 = add i64 %2993, 20
  %2995 = add i64 %392, 1103
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i32*
  %2997 = load i32, i32* %2996, align 4
  %2998 = sext i32 %2997 to i64
  %2999 = mul nsw i64 %2998, %2982
  %3000 = and i64 %2999, 4294967295
  store i64 %3000, i64* %RSI.i2547, align 8
  %3001 = trunc i64 %2999 to i32
  store i64 %3000, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3002 = and i32 %3001, 255
  %3003 = tail call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  store i8 %3006, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3007 = icmp eq i32 %3001, 0
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %82, align 1
  %3009 = lshr i32 %3001, 31
  %3010 = trunc i32 %3009 to i8
  store i8 %3010, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3011 = load i64, i64* %RBP.i, align 8
  %3012 = add i64 %3011, -56
  %3013 = add i64 %392, 1108
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i32*
  %3015 = load i32, i32* %3014, align 4
  %3016 = add i32 %3015, -1
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RSI.i2547, align 8
  %3018 = icmp eq i32 %3015, 0
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %68, align 1
  %3020 = and i32 %3016, 255
  %3021 = tail call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  store i8 %3024, i8* %74, align 1
  %3025 = xor i32 %3015, %3016
  %3026 = lshr i32 %3025, 4
  %3027 = trunc i32 %3026 to i8
  %3028 = and i8 %3027, 1
  store i8 %3028, i8* %79, align 1
  %3029 = icmp eq i32 %3016, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %82, align 1
  %3031 = lshr i32 %3016, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %85, align 1
  %3033 = lshr i32 %3015, 31
  %3034 = xor i32 %3031, %3033
  %3035 = add nuw nsw i32 %3034, %3033
  %3036 = icmp eq i32 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %91, align 1
  %3038 = add i64 %3011, -40
  %3039 = add i64 %392, 1115
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i64*
  %3041 = load i64, i64* %3040, align 8
  store i64 %3041, i64* %RCX.i2541, align 8
  %3042 = add i64 %3041, 20
  %3043 = add i64 %392, 1119
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = sext i32 %3016 to i64
  %3047 = sext i32 %3045 to i64
  %3048 = mul nsw i64 %3047, %3046
  %3049 = and i64 %3048, 4294967295
  store i64 %3049, i64* %RSI.i2547, align 8
  %3050 = trunc i64 %3048 to i32
  %3051 = add i32 %3050, %3001
  %3052 = zext i32 %3051 to i64
  store i64 %3052, i64* %RDX.i2544, align 8
  %3053 = icmp ult i32 %3051, %3001
  %3054 = icmp ult i32 %3051, %3050
  %3055 = or i1 %3053, %3054
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %68, align 1
  %3057 = and i32 %3051, 255
  %3058 = tail call i32 @llvm.ctpop.i32(i32 %3057)
  %3059 = trunc i32 %3058 to i8
  %3060 = and i8 %3059, 1
  %3061 = xor i8 %3060, 1
  store i8 %3061, i8* %74, align 1
  %3062 = xor i64 %3048, %2999
  %3063 = trunc i64 %3062 to i32
  %3064 = xor i32 %3063, %3051
  %3065 = lshr i32 %3064, 4
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  store i8 %3067, i8* %79, align 1
  %3068 = icmp eq i32 %3051, 0
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %82, align 1
  %3070 = lshr i32 %3051, 31
  %3071 = trunc i32 %3070 to i8
  store i8 %3071, i8* %85, align 1
  %3072 = lshr i32 %3050, 31
  %3073 = xor i32 %3070, %3009
  %3074 = xor i32 %3070, %3072
  %3075 = add nuw nsw i32 %3073, %3074
  %3076 = icmp eq i32 %3075, 2
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %91, align 1
  %3078 = load i64, i64* %RBP.i, align 8
  %3079 = add i64 %3078, -60
  %3080 = add i64 %392, 1124
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i32*
  %3082 = load i32, i32* %3081, align 4
  %3083 = add i32 %3082, 1
  %3084 = zext i32 %3083 to i64
  store i64 %3084, i64* %RSI.i2547, align 8
  %3085 = lshr i32 %3083, 31
  %3086 = add i32 %3083, %3051
  %3087 = zext i32 %3086 to i64
  store i64 %3087, i64* %RDX.i2544, align 8
  %3088 = icmp ult i32 %3086, %3051
  %3089 = icmp ult i32 %3086, %3083
  %3090 = or i1 %3088, %3089
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %68, align 1
  %3092 = and i32 %3086, 255
  %3093 = tail call i32 @llvm.ctpop.i32(i32 %3092)
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  store i8 %3096, i8* %74, align 1
  %3097 = xor i32 %3083, %3051
  %3098 = xor i32 %3097, %3086
  %3099 = lshr i32 %3098, 4
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  store i8 %3101, i8* %79, align 1
  %3102 = icmp eq i32 %3086, 0
  %3103 = zext i1 %3102 to i8
  store i8 %3103, i8* %82, align 1
  %3104 = lshr i32 %3086, 31
  %3105 = trunc i32 %3104 to i8
  store i8 %3105, i8* %85, align 1
  %3106 = xor i32 %3104, %3070
  %3107 = xor i32 %3104, %3085
  %3108 = add nuw nsw i32 %3106, %3107
  %3109 = icmp eq i32 %3108, 2
  %3110 = zext i1 %3109 to i8
  store i8 %3110, i8* %91, align 1
  %3111 = sext i32 %3086 to i64
  store i64 %3111, i64* %RCX.i2541, align 8
  %3112 = load i64, i64* %RAX.i2556, align 8
  %3113 = shl nsw i64 %3111, 2
  %3114 = add i64 %3113, %3112
  %3115 = add i64 %392, 1137
  store i64 %3115, i64* %3, align 8
  %3116 = load <2 x float>, <2 x float>* %220, align 1
  %3117 = load <2 x i32>, <2 x i32>* %221, align 1
  %3118 = inttoptr i64 %3114 to float*
  %3119 = load float, float* %3118, align 4
  %3120 = extractelement <2 x float> %3116, i32 0
  %3121 = fsub float %3120, %3119
  store float %3121, float* %213, align 1
  %3122 = bitcast <2 x float> %3116 to <2 x i32>
  %3123 = extractelement <2 x i32> %3122, i32 1
  store i32 %3123, i32* %222, align 1
  %3124 = extractelement <2 x i32> %3117, i32 0
  store i32 %3124, i32* %223, align 1
  %3125 = extractelement <2 x i32> %3117, i32 1
  store i32 %3125, i32* %224, align 1
  %3126 = load i64, i64* %RBP.i, align 8
  %3127 = add i64 %3126, -40
  %3128 = add i64 %392, 1141
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i64*
  %3130 = load i64, i64* %3129, align 8
  store i64 %3130, i64* %RAX.i2556, align 8
  %3131 = add i64 %392, 1144
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i64*
  %3133 = load i64, i64* %3132, align 8
  store i64 %3133, i64* %RAX.i2556, align 8
  %3134 = add i64 %392, 1148
  store i64 %3134, i64* %3, align 8
  %3135 = load i64, i64* %3129, align 8
  store i64 %3135, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3136 = add i64 %392, 1156
  store i64 %3136, i64* %3, align 8
  %3137 = load i64, i64* %3129, align 8
  store i64 %3137, i64* %RCX.i2541, align 8
  %3138 = add i64 %392, 1160
  store i64 %3138, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3139 = add i64 %392, 1164
  store i64 %3139, i64* %3, align 8
  %3140 = load i64, i64* %3129, align 8
  store i64 %3140, i64* %RCX.i2541, align 8
  %3141 = add i64 %392, 1168
  store i64 %3141, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3142 = add i64 %3126, -52
  %3143 = add i64 %392, 1171
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  %3145 = load i32, i32* %3144, align 4
  %3146 = zext i32 %3145 to i64
  store i64 %3146, i64* %RSI.i2547, align 8
  %3147 = add i64 %392, 1175
  store i64 %3147, i64* %3, align 8
  %3148 = load i64, i64* %3129, align 8
  store i64 %3148, i64* %RCX.i2541, align 8
  %3149 = add i64 %3148, 16
  %3150 = add i64 %392, 1179
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3149 to i32*
  %3152 = load i32, i32* %3151, align 4
  %3153 = sext i32 %3145 to i64
  %3154 = sext i32 %3152 to i64
  %3155 = mul nsw i64 %3154, %3153
  %3156 = trunc i64 %3155 to i32
  %3157 = and i64 %3155, 4294967295
  store i64 %3157, i64* %RSI.i2547, align 8
  %3158 = shl i64 %3155, 32
  %3159 = ashr exact i64 %3158, 32
  %3160 = icmp ne i64 %3159, %3155
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %68, align 1
  %3162 = and i32 %3156, 255
  %3163 = tail call i32 @llvm.ctpop.i32(i32 %3162)
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  %3166 = xor i8 %3165, 1
  store i8 %3166, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3167 = lshr i32 %3156, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %85, align 1
  store i8 %3161, i8* %91, align 1
  %3169 = add i64 %392, 1183
  store i64 %3169, i64* %3, align 8
  %3170 = load i64, i64* %3129, align 8
  store i64 %3170, i64* %RCX.i2541, align 8
  %3171 = add i64 %3170, 20
  %3172 = add i64 %392, 1187
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = sext i32 %3174 to i64
  %3176 = mul nsw i64 %3175, %3159
  %3177 = and i64 %3176, 4294967295
  store i64 %3177, i64* %RSI.i2547, align 8
  %3178 = trunc i64 %3176 to i32
  store i64 %3177, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3179 = and i32 %3178, 255
  %3180 = tail call i32 @llvm.ctpop.i32(i32 %3179)
  %3181 = trunc i32 %3180 to i8
  %3182 = and i8 %3181, 1
  %3183 = xor i8 %3182, 1
  store i8 %3183, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3184 = icmp eq i32 %3178, 0
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %82, align 1
  %3186 = lshr i32 %3178, 31
  %3187 = trunc i32 %3186 to i8
  store i8 %3187, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3188 = load i64, i64* %RBP.i, align 8
  %3189 = add i64 %3188, -56
  %3190 = add i64 %392, 1192
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i32*
  %3192 = load i32, i32* %3191, align 4
  %3193 = add i32 %3192, 1
  %3194 = zext i32 %3193 to i64
  store i64 %3194, i64* %RSI.i2547, align 8
  %3195 = icmp eq i32 %3192, -1
  %3196 = icmp eq i32 %3193, 0
  %3197 = or i1 %3195, %3196
  %3198 = zext i1 %3197 to i8
  store i8 %3198, i8* %68, align 1
  %3199 = and i32 %3193, 255
  %3200 = tail call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  store i8 %3203, i8* %74, align 1
  %3204 = xor i32 %3192, %3193
  %3205 = lshr i32 %3204, 4
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  store i8 %3207, i8* %79, align 1
  %3208 = zext i1 %3196 to i8
  store i8 %3208, i8* %82, align 1
  %3209 = lshr i32 %3193, 31
  %3210 = trunc i32 %3209 to i8
  store i8 %3210, i8* %85, align 1
  %3211 = lshr i32 %3192, 31
  %3212 = xor i32 %3209, %3211
  %3213 = add nuw nsw i32 %3212, %3209
  %3214 = icmp eq i32 %3213, 2
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %91, align 1
  %3216 = add i64 %3188, -40
  %3217 = add i64 %392, 1199
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i64*
  %3219 = load i64, i64* %3218, align 8
  store i64 %3219, i64* %RCX.i2541, align 8
  %3220 = add i64 %3219, 20
  %3221 = add i64 %392, 1203
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i32*
  %3223 = load i32, i32* %3222, align 4
  %3224 = sext i32 %3193 to i64
  %3225 = sext i32 %3223 to i64
  %3226 = mul nsw i64 %3225, %3224
  %3227 = and i64 %3226, 4294967295
  store i64 %3227, i64* %RSI.i2547, align 8
  %3228 = trunc i64 %3226 to i32
  %3229 = add i32 %3228, %3178
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RDX.i2544, align 8
  %3231 = icmp ult i32 %3229, %3178
  %3232 = icmp ult i32 %3229, %3228
  %3233 = or i1 %3231, %3232
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %68, align 1
  %3235 = and i32 %3229, 255
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235)
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  %3239 = xor i8 %3238, 1
  store i8 %3239, i8* %74, align 1
  %3240 = xor i64 %3226, %3176
  %3241 = trunc i64 %3240 to i32
  %3242 = xor i32 %3241, %3229
  %3243 = lshr i32 %3242, 4
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  store i8 %3245, i8* %79, align 1
  %3246 = icmp eq i32 %3229, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %82, align 1
  %3248 = lshr i32 %3229, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %85, align 1
  %3250 = lshr i32 %3228, 31
  %3251 = xor i32 %3248, %3186
  %3252 = xor i32 %3248, %3250
  %3253 = add nuw nsw i32 %3251, %3252
  %3254 = icmp eq i32 %3253, 2
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %91, align 1
  %3256 = load i64, i64* %RBP.i, align 8
  %3257 = add i64 %3256, -60
  %3258 = add i64 %392, 1208
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  %3261 = add i32 %3260, -1
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RSI.i2547, align 8
  %3263 = lshr i32 %3261, 31
  %3264 = add i32 %3261, %3229
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RDX.i2544, align 8
  %3266 = icmp ult i32 %3264, %3229
  %3267 = icmp ult i32 %3264, %3261
  %3268 = or i1 %3266, %3267
  %3269 = zext i1 %3268 to i8
  store i8 %3269, i8* %68, align 1
  %3270 = and i32 %3264, 255
  %3271 = tail call i32 @llvm.ctpop.i32(i32 %3270)
  %3272 = trunc i32 %3271 to i8
  %3273 = and i8 %3272, 1
  %3274 = xor i8 %3273, 1
  store i8 %3274, i8* %74, align 1
  %3275 = xor i32 %3261, %3229
  %3276 = xor i32 %3275, %3264
  %3277 = lshr i32 %3276, 4
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  store i8 %3279, i8* %79, align 1
  %3280 = icmp eq i32 %3264, 0
  %3281 = zext i1 %3280 to i8
  store i8 %3281, i8* %82, align 1
  %3282 = lshr i32 %3264, 31
  %3283 = trunc i32 %3282 to i8
  store i8 %3283, i8* %85, align 1
  %3284 = xor i32 %3282, %3248
  %3285 = xor i32 %3282, %3263
  %3286 = add nuw nsw i32 %3284, %3285
  %3287 = icmp eq i32 %3286, 2
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %91, align 1
  %3289 = sext i32 %3264 to i64
  store i64 %3289, i64* %RCX.i2541, align 8
  %3290 = load i64, i64* %RAX.i2556, align 8
  %3291 = shl nsw i64 %3289, 2
  %3292 = add i64 %3291, %3290
  %3293 = add i64 %392, 1221
  store i64 %3293, i64* %3, align 8
  %3294 = load <2 x float>, <2 x float>* %220, align 1
  %3295 = load <2 x i32>, <2 x i32>* %221, align 1
  %3296 = inttoptr i64 %3292 to float*
  %3297 = load float, float* %3296, align 4
  %3298 = extractelement <2 x float> %3294, i32 0
  %3299 = fsub float %3298, %3297
  store float %3299, float* %213, align 1
  %3300 = bitcast <2 x float> %3294 to <2 x i32>
  %3301 = extractelement <2 x i32> %3300, i32 1
  store i32 %3301, i32* %222, align 1
  %3302 = extractelement <2 x i32> %3295, i32 0
  store i32 %3302, i32* %223, align 1
  %3303 = extractelement <2 x i32> %3295, i32 1
  store i32 %3303, i32* %224, align 1
  %3304 = load i64, i64* %RBP.i, align 8
  %3305 = add i64 %3304, -40
  %3306 = add i64 %392, 1225
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3305 to i64*
  %3308 = load i64, i64* %3307, align 8
  store i64 %3308, i64* %RAX.i2556, align 8
  %3309 = add i64 %392, 1228
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i64*
  %3311 = load i64, i64* %3310, align 8
  store i64 %3311, i64* %RAX.i2556, align 8
  %3312 = add i64 %392, 1232
  store i64 %3312, i64* %3, align 8
  %3313 = load i64, i64* %3307, align 8
  store i64 %3313, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3314 = add i64 %392, 1240
  store i64 %3314, i64* %3, align 8
  %3315 = load i64, i64* %3307, align 8
  store i64 %3315, i64* %RCX.i2541, align 8
  %3316 = add i64 %392, 1244
  store i64 %3316, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3317 = add i64 %392, 1248
  store i64 %3317, i64* %3, align 8
  %3318 = load i64, i64* %3307, align 8
  store i64 %3318, i64* %RCX.i2541, align 8
  %3319 = add i64 %392, 1252
  store i64 %3319, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3320 = add i64 %3304, -52
  %3321 = add i64 %392, 1255
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3320 to i32*
  %3323 = load i32, i32* %3322, align 4
  %3324 = zext i32 %3323 to i64
  store i64 %3324, i64* %RSI.i2547, align 8
  %3325 = add i64 %392, 1259
  store i64 %3325, i64* %3, align 8
  %3326 = load i64, i64* %3307, align 8
  store i64 %3326, i64* %RCX.i2541, align 8
  %3327 = add i64 %3326, 16
  %3328 = add i64 %392, 1263
  store i64 %3328, i64* %3, align 8
  %3329 = inttoptr i64 %3327 to i32*
  %3330 = load i32, i32* %3329, align 4
  %3331 = sext i32 %3323 to i64
  %3332 = sext i32 %3330 to i64
  %3333 = mul nsw i64 %3332, %3331
  %3334 = trunc i64 %3333 to i32
  %3335 = and i64 %3333, 4294967295
  store i64 %3335, i64* %RSI.i2547, align 8
  %3336 = shl i64 %3333, 32
  %3337 = ashr exact i64 %3336, 32
  %3338 = icmp ne i64 %3337, %3333
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %68, align 1
  %3340 = and i32 %3334, 255
  %3341 = tail call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3345 = lshr i32 %3334, 31
  %3346 = trunc i32 %3345 to i8
  store i8 %3346, i8* %85, align 1
  store i8 %3339, i8* %91, align 1
  %3347 = add i64 %392, 1267
  store i64 %3347, i64* %3, align 8
  %3348 = load i64, i64* %3307, align 8
  store i64 %3348, i64* %RCX.i2541, align 8
  %3349 = add i64 %3348, 20
  %3350 = add i64 %392, 1271
  store i64 %3350, i64* %3, align 8
  %3351 = inttoptr i64 %3349 to i32*
  %3352 = load i32, i32* %3351, align 4
  %3353 = sext i32 %3352 to i64
  %3354 = mul nsw i64 %3353, %3337
  %3355 = and i64 %3354, 4294967295
  store i64 %3355, i64* %RSI.i2547, align 8
  %3356 = trunc i64 %3354 to i32
  store i64 %3355, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3357 = and i32 %3356, 255
  %3358 = tail call i32 @llvm.ctpop.i32(i32 %3357)
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  %3361 = xor i8 %3360, 1
  store i8 %3361, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3362 = icmp eq i32 %3356, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %82, align 1
  %3364 = lshr i32 %3356, 31
  %3365 = trunc i32 %3364 to i8
  store i8 %3365, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -56
  %3368 = add i64 %392, 1276
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = add i32 %3370, -1
  %3372 = zext i32 %3371 to i64
  store i64 %3372, i64* %RSI.i2547, align 8
  %3373 = icmp eq i32 %3370, 0
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %68, align 1
  %3375 = and i32 %3371, 255
  %3376 = tail call i32 @llvm.ctpop.i32(i32 %3375)
  %3377 = trunc i32 %3376 to i8
  %3378 = and i8 %3377, 1
  %3379 = xor i8 %3378, 1
  store i8 %3379, i8* %74, align 1
  %3380 = xor i32 %3370, %3371
  %3381 = lshr i32 %3380, 4
  %3382 = trunc i32 %3381 to i8
  %3383 = and i8 %3382, 1
  store i8 %3383, i8* %79, align 1
  %3384 = icmp eq i32 %3371, 0
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %82, align 1
  %3386 = lshr i32 %3371, 31
  %3387 = trunc i32 %3386 to i8
  store i8 %3387, i8* %85, align 1
  %3388 = lshr i32 %3370, 31
  %3389 = xor i32 %3386, %3388
  %3390 = add nuw nsw i32 %3389, %3388
  %3391 = icmp eq i32 %3390, 2
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %91, align 1
  %3393 = add i64 %3366, -40
  %3394 = add i64 %392, 1283
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i64*
  %3396 = load i64, i64* %3395, align 8
  store i64 %3396, i64* %RCX.i2541, align 8
  %3397 = add i64 %3396, 20
  %3398 = add i64 %392, 1287
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3397 to i32*
  %3400 = load i32, i32* %3399, align 4
  %3401 = sext i32 %3371 to i64
  %3402 = sext i32 %3400 to i64
  %3403 = mul nsw i64 %3402, %3401
  %3404 = and i64 %3403, 4294967295
  store i64 %3404, i64* %RSI.i2547, align 8
  %3405 = trunc i64 %3403 to i32
  %3406 = add i32 %3405, %3356
  %3407 = zext i32 %3406 to i64
  store i64 %3407, i64* %RDX.i2544, align 8
  %3408 = icmp ult i32 %3406, %3356
  %3409 = icmp ult i32 %3406, %3405
  %3410 = or i1 %3408, %3409
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %68, align 1
  %3412 = and i32 %3406, 255
  %3413 = tail call i32 @llvm.ctpop.i32(i32 %3412)
  %3414 = trunc i32 %3413 to i8
  %3415 = and i8 %3414, 1
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %74, align 1
  %3417 = xor i64 %3403, %3354
  %3418 = trunc i64 %3417 to i32
  %3419 = xor i32 %3418, %3406
  %3420 = lshr i32 %3419, 4
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  store i8 %3422, i8* %79, align 1
  %3423 = icmp eq i32 %3406, 0
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %82, align 1
  %3425 = lshr i32 %3406, 31
  %3426 = trunc i32 %3425 to i8
  store i8 %3426, i8* %85, align 1
  %3427 = lshr i32 %3405, 31
  %3428 = xor i32 %3425, %3364
  %3429 = xor i32 %3425, %3427
  %3430 = add nuw nsw i32 %3428, %3429
  %3431 = icmp eq i32 %3430, 2
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %91, align 1
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -60
  %3435 = add i64 %392, 1292
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i32*
  %3437 = load i32, i32* %3436, align 4
  %3438 = add i32 %3437, -1
  %3439 = zext i32 %3438 to i64
  store i64 %3439, i64* %RSI.i2547, align 8
  %3440 = lshr i32 %3438, 31
  %3441 = add i32 %3438, %3406
  %3442 = zext i32 %3441 to i64
  store i64 %3442, i64* %RDX.i2544, align 8
  %3443 = icmp ult i32 %3441, %3406
  %3444 = icmp ult i32 %3441, %3438
  %3445 = or i1 %3443, %3444
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %68, align 1
  %3447 = and i32 %3441, 255
  %3448 = tail call i32 @llvm.ctpop.i32(i32 %3447)
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  %3451 = xor i8 %3450, 1
  store i8 %3451, i8* %74, align 1
  %3452 = xor i32 %3438, %3406
  %3453 = xor i32 %3452, %3441
  %3454 = lshr i32 %3453, 4
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  store i8 %3456, i8* %79, align 1
  %3457 = icmp eq i32 %3441, 0
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %82, align 1
  %3459 = lshr i32 %3441, 31
  %3460 = trunc i32 %3459 to i8
  store i8 %3460, i8* %85, align 1
  %3461 = xor i32 %3459, %3425
  %3462 = xor i32 %3459, %3440
  %3463 = add nuw nsw i32 %3461, %3462
  %3464 = icmp eq i32 %3463, 2
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %91, align 1
  %3466 = sext i32 %3441 to i64
  store i64 %3466, i64* %RCX.i2541, align 8
  %3467 = load i64, i64* %RAX.i2556, align 8
  %3468 = shl nsw i64 %3466, 2
  %3469 = add i64 %3468, %3467
  %3470 = add i64 %392, 1305
  store i64 %3470, i64* %3, align 8
  %3471 = load <2 x float>, <2 x float>* %220, align 1
  %3472 = load <2 x i32>, <2 x i32>* %221, align 1
  %3473 = inttoptr i64 %3469 to float*
  %3474 = load float, float* %3473, align 4
  %3475 = extractelement <2 x float> %3471, i32 0
  %3476 = fadd float %3475, %3474
  store float %3476, float* %213, align 1
  %3477 = bitcast <2 x float> %3471 to <2 x i32>
  %3478 = extractelement <2 x i32> %3477, i32 1
  store i32 %3478, i32* %222, align 1
  %3479 = extractelement <2 x i32> %3472, i32 0
  store i32 %3479, i32* %223, align 1
  %3480 = extractelement <2 x i32> %3472, i32 1
  store i32 %3480, i32* %224, align 1
  %3481 = load <2 x float>, <2 x float>* %206, align 1
  %3482 = load <2 x i32>, <2 x i32>* %207, align 1
  %3483 = load <2 x float>, <2 x float>* %220, align 1
  %3484 = extractelement <2 x float> %3481, i32 0
  %3485 = extractelement <2 x float> %3483, i32 0
  %3486 = fmul float %3484, %3485
  store float %3486, float* %199, align 1
  %3487 = bitcast <2 x float> %3481 to <2 x i32>
  %3488 = extractelement <2 x i32> %3487, i32 1
  store i32 %3488, i32* %208, align 1
  %3489 = extractelement <2 x i32> %3482, i32 0
  store i32 %3489, i32* %209, align 1
  %3490 = extractelement <2 x i32> %3482, i32 1
  store i32 %3490, i32* %210, align 1
  %3491 = load <2 x float>, <2 x float>* %191, align 1
  %3492 = load <2 x i32>, <2 x i32>* %196, align 1
  %3493 = load <2 x float>, <2 x float>* %206, align 1
  %3494 = extractelement <2 x float> %3491, i32 0
  %3495 = extractelement <2 x float> %3493, i32 0
  %3496 = fadd float %3494, %3495
  store float %3496, float* %192, align 1
  %3497 = bitcast <2 x float> %3491 to <2 x i32>
  %3498 = extractelement <2 x i32> %3497, i32 1
  store i32 %3498, i32* %187, align 1
  %3499 = extractelement <2 x i32> %3492, i32 0
  store i32 %3499, i32* %188, align 1
  %3500 = extractelement <2 x i32> %3492, i32 1
  store i32 %3500, i32* %190, align 1
  %3501 = load i64, i64* %RBP.i, align 8
  %3502 = add i64 %3501, -24
  %3503 = add i64 %392, 1317
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i64*
  %3505 = load i64, i64* %3504, align 8
  store i64 %3505, i64* %RAX.i2556, align 8
  %3506 = add i64 %392, 1320
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i64*
  %3508 = load i64, i64* %3507, align 8
  store i64 %3508, i64* %RAX.i2556, align 8
  %3509 = add i64 %392, 1324
  store i64 %3509, i64* %3, align 8
  %3510 = load i64, i64* %3504, align 8
  store i64 %3510, i64* %RCX.i2541, align 8
  %3511 = add i64 %3510, 12
  %3512 = add i64 %392, 1327
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = shl i32 %3514, 1
  %3516 = icmp slt i32 %3514, 0
  %3517 = icmp slt i32 %3515, 0
  %3518 = xor i1 %3516, %3517
  %3519 = zext i32 %3515 to i64
  store i64 %3519, i64* %RDX.i2544, align 8
  %.lobit10 = lshr i32 %3514, 31
  %3520 = trunc i32 %.lobit10 to i8
  store i8 %3520, i8* %68, align 1
  %3521 = and i32 %3515, 254
  %3522 = tail call i32 @llvm.ctpop.i32(i32 %3521)
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  %3525 = xor i8 %3524, 1
  store i8 %3525, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3526 = icmp eq i32 %3515, 0
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %82, align 1
  %3528 = lshr i32 %3514, 30
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  store i8 %3530, i8* %85, align 1
  %3531 = zext i1 %3518 to i8
  store i8 %3531, i8* %91, align 1
  %3532 = add i64 %392, 1334
  store i64 %3532, i64* %3, align 8
  %3533 = load i64, i64* %3504, align 8
  store i64 %3533, i64* %RCX.i2541, align 8
  %3534 = add i64 %3533, 16
  %3535 = add i64 %392, 1338
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i32*
  %3537 = load i32, i32* %3536, align 4
  %3538 = sext i32 %3515 to i64
  %3539 = sext i32 %3537 to i64
  %3540 = mul nsw i64 %3539, %3538
  %3541 = trunc i64 %3540 to i32
  %3542 = and i64 %3540, 4294967294
  store i64 %3542, i64* %RDX.i2544, align 8
  %3543 = shl i64 %3540, 32
  %3544 = ashr exact i64 %3543, 32
  %3545 = icmp ne i64 %3544, %3540
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %68, align 1
  %3547 = and i32 %3541, 254
  %3548 = tail call i32 @llvm.ctpop.i32(i32 %3547)
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = xor i8 %3550, 1
  store i8 %3551, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3552 = lshr i32 %3541, 31
  %3553 = trunc i32 %3552 to i8
  store i8 %3553, i8* %85, align 1
  store i8 %3546, i8* %91, align 1
  %3554 = add i64 %392, 1342
  store i64 %3554, i64* %3, align 8
  %3555 = load i64, i64* %3504, align 8
  store i64 %3555, i64* %RCX.i2541, align 8
  %3556 = add i64 %3555, 20
  %3557 = add i64 %392, 1346
  store i64 %3557, i64* %3, align 8
  %3558 = inttoptr i64 %3556 to i32*
  %3559 = load i32, i32* %3558, align 4
  %3560 = sext i32 %3559 to i64
  %3561 = mul nsw i64 %3560, %3544
  %3562 = trunc i64 %3561 to i32
  %3563 = and i64 %3561, 4294967295
  store i64 %3563, i64* %RDX.i2544, align 8
  %3564 = shl i64 %3561, 32
  %3565 = ashr exact i64 %3564, 32
  %3566 = icmp ne i64 %3565, %3561
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %68, align 1
  %3568 = and i32 %3562, 255
  %3569 = tail call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  store i8 %3572, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3573 = lshr i32 %3562, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %85, align 1
  store i8 %3567, i8* %91, align 1
  %3575 = load i64, i64* %RBP.i, align 8
  %3576 = add i64 %3575, -52
  %3577 = add i64 %392, 1349
  store i64 %3577, i64* %3, align 8
  %3578 = inttoptr i64 %3576 to i32*
  %3579 = load i32, i32* %3578, align 4
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RSI.i2547, align 8
  %3581 = add i64 %3575, -24
  %3582 = add i64 %392, 1353
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3581 to i64*
  %3584 = load i64, i64* %3583, align 8
  store i64 %3584, i64* %RCX.i2541, align 8
  %3585 = add i64 %3584, 16
  %3586 = add i64 %392, 1357
  store i64 %3586, i64* %3, align 8
  %3587 = inttoptr i64 %3585 to i32*
  %3588 = load i32, i32* %3587, align 4
  %3589 = sext i32 %3579 to i64
  %3590 = sext i32 %3588 to i64
  %3591 = mul nsw i64 %3590, %3589
  %3592 = trunc i64 %3591 to i32
  %3593 = and i64 %3591, 4294967295
  store i64 %3593, i64* %RSI.i2547, align 8
  %3594 = shl i64 %3591, 32
  %3595 = ashr exact i64 %3594, 32
  %3596 = icmp ne i64 %3595, %3591
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %68, align 1
  %3598 = and i32 %3592, 255
  %3599 = tail call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  store i8 %3602, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3603 = lshr i32 %3592, 31
  %3604 = trunc i32 %3603 to i8
  store i8 %3604, i8* %85, align 1
  store i8 %3597, i8* %91, align 1
  %3605 = add i64 %392, 1361
  store i64 %3605, i64* %3, align 8
  %3606 = load i64, i64* %3583, align 8
  store i64 %3606, i64* %RCX.i2541, align 8
  %3607 = add i64 %3606, 20
  %3608 = add i64 %392, 1365
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3607 to i32*
  %3610 = load i32, i32* %3609, align 4
  %3611 = sext i32 %3610 to i64
  %3612 = mul nsw i64 %3611, %3595
  %3613 = and i64 %3612, 4294967295
  store i64 %3613, i64* %RSI.i2547, align 8
  %3614 = trunc i64 %3612 to i32
  %3615 = add i32 %3614, %3562
  %3616 = zext i32 %3615 to i64
  store i64 %3616, i64* %RDX.i2544, align 8
  %3617 = icmp ult i32 %3615, %3562
  %3618 = icmp ult i32 %3615, %3614
  %3619 = or i1 %3617, %3618
  %3620 = zext i1 %3619 to i8
  store i8 %3620, i8* %68, align 1
  %3621 = and i32 %3615, 255
  %3622 = tail call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  store i8 %3625, i8* %74, align 1
  %3626 = xor i64 %3612, %3561
  %3627 = trunc i64 %3626 to i32
  %3628 = xor i32 %3627, %3615
  %3629 = lshr i32 %3628, 4
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  store i8 %3631, i8* %79, align 1
  %3632 = icmp eq i32 %3615, 0
  %3633 = zext i1 %3632 to i8
  store i8 %3633, i8* %82, align 1
  %3634 = lshr i32 %3615, 31
  %3635 = trunc i32 %3634 to i8
  store i8 %3635, i8* %85, align 1
  %3636 = lshr i32 %3614, 31
  %3637 = xor i32 %3634, %3573
  %3638 = xor i32 %3634, %3636
  %3639 = add nuw nsw i32 %3637, %3638
  %3640 = icmp eq i32 %3639, 2
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %91, align 1
  %3642 = load i64, i64* %RBP.i, align 8
  %3643 = add i64 %3642, -56
  %3644 = add i64 %392, 1370
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3643 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RSI.i2547, align 8
  %3648 = add i64 %3642, -24
  %3649 = add i64 %392, 1374
  store i64 %3649, i64* %3, align 8
  %3650 = inttoptr i64 %3648 to i64*
  %3651 = load i64, i64* %3650, align 8
  store i64 %3651, i64* %RCX.i2541, align 8
  %3652 = add i64 %3651, 20
  %3653 = add i64 %392, 1378
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i32*
  %3655 = load i32, i32* %3654, align 4
  %3656 = sext i32 %3646 to i64
  %3657 = sext i32 %3655 to i64
  %3658 = mul nsw i64 %3657, %3656
  %3659 = and i64 %3658, 4294967295
  store i64 %3659, i64* %RSI.i2547, align 8
  %3660 = trunc i64 %3658 to i32
  %3661 = add i32 %3660, %3615
  %3662 = zext i32 %3661 to i64
  store i64 %3662, i64* %RDX.i2544, align 8
  %3663 = icmp ult i32 %3661, %3615
  %3664 = icmp ult i32 %3661, %3660
  %3665 = or i1 %3663, %3664
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %68, align 1
  %3667 = and i32 %3661, 255
  %3668 = tail call i32 @llvm.ctpop.i32(i32 %3667)
  %3669 = trunc i32 %3668 to i8
  %3670 = and i8 %3669, 1
  %3671 = xor i8 %3670, 1
  store i8 %3671, i8* %74, align 1
  %3672 = xor i64 %3658, %3616
  %3673 = trunc i64 %3672 to i32
  %3674 = xor i32 %3673, %3661
  %3675 = lshr i32 %3674, 4
  %3676 = trunc i32 %3675 to i8
  %3677 = and i8 %3676, 1
  store i8 %3677, i8* %79, align 1
  %3678 = icmp eq i32 %3661, 0
  %3679 = zext i1 %3678 to i8
  store i8 %3679, i8* %82, align 1
  %3680 = lshr i32 %3661, 31
  %3681 = trunc i32 %3680 to i8
  store i8 %3681, i8* %85, align 1
  %3682 = lshr i32 %3660, 31
  %3683 = xor i32 %3680, %3634
  %3684 = xor i32 %3680, %3682
  %3685 = add nuw nsw i32 %3683, %3684
  %3686 = icmp eq i32 %3685, 2
  %3687 = zext i1 %3686 to i8
  store i8 %3687, i8* %91, align 1
  %3688 = add i64 %3642, -60
  %3689 = add i64 %392, 1383
  store i64 %3689, i64* %3, align 8
  %3690 = inttoptr i64 %3688 to i32*
  %3691 = load i32, i32* %3690, align 4
  %3692 = add i32 %3691, %3661
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RDX.i2544, align 8
  %3694 = icmp ult i32 %3692, %3661
  %3695 = icmp ult i32 %3692, %3691
  %3696 = or i1 %3694, %3695
  %3697 = zext i1 %3696 to i8
  store i8 %3697, i8* %68, align 1
  %3698 = and i32 %3692, 255
  %3699 = tail call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  store i8 %3702, i8* %74, align 1
  %3703 = xor i32 %3691, %3661
  %3704 = xor i32 %3703, %3692
  %3705 = lshr i32 %3704, 4
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  store i8 %3707, i8* %79, align 1
  %3708 = icmp eq i32 %3692, 0
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %82, align 1
  %3710 = lshr i32 %3692, 31
  %3711 = trunc i32 %3710 to i8
  store i8 %3711, i8* %85, align 1
  %3712 = lshr i32 %3691, 31
  %3713 = xor i32 %3710, %3680
  %3714 = xor i32 %3710, %3712
  %3715 = add nuw nsw i32 %3713, %3714
  %3716 = icmp eq i32 %3715, 2
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %91, align 1
  %3718 = sext i32 %3692 to i64
  store i64 %3718, i64* %RCX.i2541, align 8
  %3719 = load i64, i64* %RAX.i2556, align 8
  %3720 = shl nsw i64 %3718, 2
  %3721 = add i64 %3720, %3719
  %3722 = add i64 %392, 1391
  store i64 %3722, i64* %3, align 8
  %3723 = inttoptr i64 %3721 to i32*
  %3724 = load i32, i32* %3723, align 4
  store i32 %3724, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %3725 = load i64, i64* %RBP.i, align 8
  %3726 = add i64 %3725, -40
  %3727 = add i64 %392, 1395
  store i64 %3727, i64* %3, align 8
  %3728 = inttoptr i64 %3726 to i64*
  %3729 = load i64, i64* %3728, align 8
  store i64 %3729, i64* %RAX.i2556, align 8
  %3730 = add i64 %392, 1398
  store i64 %3730, i64* %3, align 8
  %3731 = inttoptr i64 %3729 to i64*
  %3732 = load i64, i64* %3731, align 8
  store i64 %3732, i64* %RAX.i2556, align 8
  %3733 = add i64 %392, 1402
  store i64 %3733, i64* %3, align 8
  %3734 = load i64, i64* %3728, align 8
  store i64 %3734, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3735 = add i64 %392, 1410
  store i64 %3735, i64* %3, align 8
  %3736 = load i64, i64* %3728, align 8
  store i64 %3736, i64* %RCX.i2541, align 8
  %3737 = add i64 %392, 1414
  store i64 %3737, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3738 = add i64 %392, 1418
  store i64 %3738, i64* %3, align 8
  %3739 = load i64, i64* %3728, align 8
  store i64 %3739, i64* %RCX.i2541, align 8
  %3740 = add i64 %392, 1422
  store i64 %3740, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3741 = add i64 %3725, -52
  %3742 = add i64 %392, 1425
  store i64 %3742, i64* %3, align 8
  %3743 = inttoptr i64 %3741 to i32*
  %3744 = load i32, i32* %3743, align 4
  %3745 = add i32 %3744, 1
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %RSI.i2547, align 8
  %3747 = icmp eq i32 %3744, -1
  %3748 = icmp eq i32 %3745, 0
  %3749 = or i1 %3747, %3748
  %3750 = zext i1 %3749 to i8
  store i8 %3750, i8* %68, align 1
  %3751 = and i32 %3745, 255
  %3752 = tail call i32 @llvm.ctpop.i32(i32 %3751)
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  %3755 = xor i8 %3754, 1
  store i8 %3755, i8* %74, align 1
  %3756 = xor i32 %3744, %3745
  %3757 = lshr i32 %3756, 4
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  store i8 %3759, i8* %79, align 1
  %3760 = zext i1 %3748 to i8
  store i8 %3760, i8* %82, align 1
  %3761 = lshr i32 %3745, 31
  %3762 = trunc i32 %3761 to i8
  store i8 %3762, i8* %85, align 1
  %3763 = lshr i32 %3744, 31
  %3764 = xor i32 %3761, %3763
  %3765 = add nuw nsw i32 %3764, %3761
  %3766 = icmp eq i32 %3765, 2
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %91, align 1
  %3768 = load i64, i64* %RBP.i, align 8
  %3769 = add i64 %3768, -40
  %3770 = add i64 %392, 1432
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i64*
  %3772 = load i64, i64* %3771, align 8
  store i64 %3772, i64* %RCX.i2541, align 8
  %3773 = add i64 %3772, 16
  %3774 = add i64 %392, 1436
  store i64 %3774, i64* %3, align 8
  %3775 = inttoptr i64 %3773 to i32*
  %3776 = load i32, i32* %3775, align 4
  %3777 = sext i32 %3745 to i64
  %3778 = sext i32 %3776 to i64
  %3779 = mul nsw i64 %3778, %3777
  %3780 = trunc i64 %3779 to i32
  %3781 = and i64 %3779, 4294967295
  store i64 %3781, i64* %RSI.i2547, align 8
  %3782 = shl i64 %3779, 32
  %3783 = ashr exact i64 %3782, 32
  %3784 = icmp ne i64 %3783, %3779
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %68, align 1
  %3786 = and i32 %3780, 255
  %3787 = tail call i32 @llvm.ctpop.i32(i32 %3786)
  %3788 = trunc i32 %3787 to i8
  %3789 = and i8 %3788, 1
  %3790 = xor i8 %3789, 1
  store i8 %3790, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3791 = lshr i32 %3780, 31
  %3792 = trunc i32 %3791 to i8
  store i8 %3792, i8* %85, align 1
  store i8 %3785, i8* %91, align 1
  %3793 = add i64 %392, 1440
  store i64 %3793, i64* %3, align 8
  %3794 = load i64, i64* %3771, align 8
  store i64 %3794, i64* %RCX.i2541, align 8
  %3795 = add i64 %3794, 20
  %3796 = add i64 %392, 1444
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3795 to i32*
  %3798 = load i32, i32* %3797, align 4
  %3799 = sext i32 %3798 to i64
  %3800 = mul nsw i64 %3799, %3783
  %3801 = and i64 %3800, 4294967295
  store i64 %3801, i64* %RSI.i2547, align 8
  %3802 = load i64, i64* %RDX.i2544, align 8
  %3803 = trunc i64 %3800 to i32
  %3804 = trunc i64 %3802 to i32
  %3805 = add i32 %3803, %3804
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RDX.i2544, align 8
  %3807 = icmp ult i32 %3805, %3804
  %3808 = icmp ult i32 %3805, %3803
  %3809 = or i1 %3807, %3808
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %68, align 1
  %3811 = and i32 %3805, 255
  %3812 = tail call i32 @llvm.ctpop.i32(i32 %3811)
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  %3815 = xor i8 %3814, 1
  store i8 %3815, i8* %74, align 1
  %3816 = xor i64 %3800, %3802
  %3817 = trunc i64 %3816 to i32
  %3818 = xor i32 %3817, %3805
  %3819 = lshr i32 %3818, 4
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  store i8 %3821, i8* %79, align 1
  %3822 = icmp eq i32 %3805, 0
  %3823 = zext i1 %3822 to i8
  store i8 %3823, i8* %82, align 1
  %3824 = lshr i32 %3805, 31
  %3825 = trunc i32 %3824 to i8
  store i8 %3825, i8* %85, align 1
  %3826 = lshr i32 %3804, 31
  %3827 = lshr i32 %3803, 31
  %3828 = xor i32 %3824, %3826
  %3829 = xor i32 %3824, %3827
  %3830 = add nuw nsw i32 %3828, %3829
  %3831 = icmp eq i32 %3830, 2
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %91, align 1
  %3833 = load i64, i64* %RBP.i, align 8
  %3834 = add i64 %3833, -56
  %3835 = add i64 %392, 1449
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i32*
  %3837 = load i32, i32* %3836, align 4
  %3838 = zext i32 %3837 to i64
  store i64 %3838, i64* %RSI.i2547, align 8
  %3839 = add i64 %3833, -40
  %3840 = add i64 %392, 1453
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i64*
  %3842 = load i64, i64* %3841, align 8
  store i64 %3842, i64* %RCX.i2541, align 8
  %3843 = add i64 %3842, 20
  %3844 = add i64 %392, 1457
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i32*
  %3846 = load i32, i32* %3845, align 4
  %3847 = sext i32 %3837 to i64
  %3848 = sext i32 %3846 to i64
  %3849 = mul nsw i64 %3848, %3847
  %3850 = and i64 %3849, 4294967295
  store i64 %3850, i64* %RSI.i2547, align 8
  %3851 = trunc i64 %3849 to i32
  %3852 = add i32 %3851, %3805
  %3853 = zext i32 %3852 to i64
  store i64 %3853, i64* %RDX.i2544, align 8
  %3854 = icmp ult i32 %3852, %3805
  %3855 = icmp ult i32 %3852, %3851
  %3856 = or i1 %3854, %3855
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %68, align 1
  %3858 = and i32 %3852, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858)
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %74, align 1
  %3863 = xor i64 %3849, %3806
  %3864 = trunc i64 %3863 to i32
  %3865 = xor i32 %3864, %3852
  %3866 = lshr i32 %3865, 4
  %3867 = trunc i32 %3866 to i8
  %3868 = and i8 %3867, 1
  store i8 %3868, i8* %79, align 1
  %3869 = icmp eq i32 %3852, 0
  %3870 = zext i1 %3869 to i8
  store i8 %3870, i8* %82, align 1
  %3871 = lshr i32 %3852, 31
  %3872 = trunc i32 %3871 to i8
  store i8 %3872, i8* %85, align 1
  %3873 = lshr i32 %3851, 31
  %3874 = xor i32 %3871, %3824
  %3875 = xor i32 %3871, %3873
  %3876 = add nuw nsw i32 %3874, %3875
  %3877 = icmp eq i32 %3876, 2
  %3878 = zext i1 %3877 to i8
  store i8 %3878, i8* %91, align 1
  %3879 = add i64 %3833, -60
  %3880 = add i64 %392, 1462
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3879 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = add i32 %3882, 1
  %3884 = zext i32 %3883 to i64
  store i64 %3884, i64* %RSI.i2547, align 8
  %3885 = lshr i32 %3883, 31
  %3886 = add i32 %3883, %3852
  %3887 = zext i32 %3886 to i64
  store i64 %3887, i64* %RDX.i2544, align 8
  %3888 = icmp ult i32 %3886, %3852
  %3889 = icmp ult i32 %3886, %3883
  %3890 = or i1 %3888, %3889
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %68, align 1
  %3892 = and i32 %3886, 255
  %3893 = tail call i32 @llvm.ctpop.i32(i32 %3892)
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = xor i8 %3895, 1
  store i8 %3896, i8* %74, align 1
  %3897 = xor i32 %3883, %3852
  %3898 = xor i32 %3897, %3886
  %3899 = lshr i32 %3898, 4
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  store i8 %3901, i8* %79, align 1
  %3902 = icmp eq i32 %3886, 0
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %82, align 1
  %3904 = lshr i32 %3886, 31
  %3905 = trunc i32 %3904 to i8
  store i8 %3905, i8* %85, align 1
  %3906 = xor i32 %3904, %3871
  %3907 = xor i32 %3904, %3885
  %3908 = add nuw nsw i32 %3906, %3907
  %3909 = icmp eq i32 %3908, 2
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %91, align 1
  %3911 = sext i32 %3886 to i64
  store i64 %3911, i64* %RCX.i2541, align 8
  %3912 = load i64, i64* %RAX.i2556, align 8
  %3913 = shl nsw i64 %3911, 2
  %3914 = add i64 %3913, %3912
  %3915 = add i64 %392, 1475
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3914 to i32*
  %3917 = load i32, i32* %3916, align 4
  store i32 %3917, i32* %1881, align 1
  store float 0.000000e+00, float* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  %3918 = load i64, i64* %RBP.i, align 8
  %3919 = add i64 %3918, -40
  %3920 = add i64 %392, 1479
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i64*
  %3922 = load i64, i64* %3921, align 8
  store i64 %3922, i64* %RAX.i2556, align 8
  %3923 = add i64 %392, 1482
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i64*
  %3925 = load i64, i64* %3924, align 8
  store i64 %3925, i64* %RAX.i2556, align 8
  %3926 = add i64 %392, 1486
  store i64 %3926, i64* %3, align 8
  %3927 = load i64, i64* %3921, align 8
  store i64 %3927, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3928 = add i64 %392, 1494
  store i64 %3928, i64* %3, align 8
  %3929 = load i64, i64* %3921, align 8
  store i64 %3929, i64* %RCX.i2541, align 8
  %3930 = add i64 %392, 1498
  store i64 %3930, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3931 = add i64 %392, 1502
  store i64 %3931, i64* %3, align 8
  %3932 = load i64, i64* %3921, align 8
  store i64 %3932, i64* %RCX.i2541, align 8
  %3933 = add i64 %392, 1506
  store i64 %3933, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3934 = add i64 %3918, -52
  %3935 = add i64 %392, 1509
  store i64 %3935, i64* %3, align 8
  %3936 = inttoptr i64 %3934 to i32*
  %3937 = load i32, i32* %3936, align 4
  %3938 = add i32 %3937, -1
  %3939 = zext i32 %3938 to i64
  store i64 %3939, i64* %RSI.i2547, align 8
  %3940 = icmp eq i32 %3937, 0
  %3941 = zext i1 %3940 to i8
  store i8 %3941, i8* %68, align 1
  %3942 = and i32 %3938, 255
  %3943 = tail call i32 @llvm.ctpop.i32(i32 %3942)
  %3944 = trunc i32 %3943 to i8
  %3945 = and i8 %3944, 1
  %3946 = xor i8 %3945, 1
  store i8 %3946, i8* %74, align 1
  %3947 = xor i32 %3937, %3938
  %3948 = lshr i32 %3947, 4
  %3949 = trunc i32 %3948 to i8
  %3950 = and i8 %3949, 1
  store i8 %3950, i8* %79, align 1
  %3951 = icmp eq i32 %3938, 0
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %82, align 1
  %3953 = lshr i32 %3938, 31
  %3954 = trunc i32 %3953 to i8
  store i8 %3954, i8* %85, align 1
  %3955 = lshr i32 %3937, 31
  %3956 = xor i32 %3953, %3955
  %3957 = add nuw nsw i32 %3956, %3955
  %3958 = icmp eq i32 %3957, 2
  %3959 = zext i1 %3958 to i8
  store i8 %3959, i8* %91, align 1
  %3960 = add i64 %392, 1516
  store i64 %3960, i64* %3, align 8
  %3961 = load i64, i64* %3921, align 8
  store i64 %3961, i64* %RCX.i2541, align 8
  %3962 = add i64 %3961, 16
  %3963 = add i64 %392, 1520
  store i64 %3963, i64* %3, align 8
  %3964 = inttoptr i64 %3962 to i32*
  %3965 = load i32, i32* %3964, align 4
  %3966 = sext i32 %3938 to i64
  %3967 = sext i32 %3965 to i64
  %3968 = mul nsw i64 %3967, %3966
  %3969 = trunc i64 %3968 to i32
  %3970 = and i64 %3968, 4294967295
  store i64 %3970, i64* %RSI.i2547, align 8
  %3971 = shl i64 %3968, 32
  %3972 = ashr exact i64 %3971, 32
  %3973 = icmp ne i64 %3972, %3968
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %68, align 1
  %3975 = and i32 %3969, 255
  %3976 = tail call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  store i8 %3979, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3980 = lshr i32 %3969, 31
  %3981 = trunc i32 %3980 to i8
  store i8 %3981, i8* %85, align 1
  store i8 %3974, i8* %91, align 1
  %3982 = load i64, i64* %RBP.i, align 8
  %3983 = add i64 %3982, -40
  %3984 = add i64 %392, 1524
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3983 to i64*
  %3986 = load i64, i64* %3985, align 8
  store i64 %3986, i64* %RCX.i2541, align 8
  %3987 = add i64 %3986, 20
  %3988 = add i64 %392, 1528
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to i32*
  %3990 = load i32, i32* %3989, align 4
  %3991 = sext i32 %3990 to i64
  %3992 = mul nsw i64 %3991, %3972
  %3993 = and i64 %3992, 4294967295
  store i64 %3993, i64* %RSI.i2547, align 8
  %3994 = load i64, i64* %RDX.i2544, align 8
  %3995 = trunc i64 %3992 to i32
  %3996 = trunc i64 %3994 to i32
  %3997 = add i32 %3995, %3996
  %3998 = zext i32 %3997 to i64
  store i64 %3998, i64* %RDX.i2544, align 8
  %3999 = icmp ult i32 %3997, %3996
  %4000 = icmp ult i32 %3997, %3995
  %4001 = or i1 %3999, %4000
  %4002 = zext i1 %4001 to i8
  store i8 %4002, i8* %68, align 1
  %4003 = and i32 %3997, 255
  %4004 = tail call i32 @llvm.ctpop.i32(i32 %4003)
  %4005 = trunc i32 %4004 to i8
  %4006 = and i8 %4005, 1
  %4007 = xor i8 %4006, 1
  store i8 %4007, i8* %74, align 1
  %4008 = xor i64 %3992, %3994
  %4009 = trunc i64 %4008 to i32
  %4010 = xor i32 %4009, %3997
  %4011 = lshr i32 %4010, 4
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  store i8 %4013, i8* %79, align 1
  %4014 = icmp eq i32 %3997, 0
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %82, align 1
  %4016 = lshr i32 %3997, 31
  %4017 = trunc i32 %4016 to i8
  store i8 %4017, i8* %85, align 1
  %4018 = lshr i32 %3996, 31
  %4019 = lshr i32 %3995, 31
  %4020 = xor i32 %4016, %4018
  %4021 = xor i32 %4016, %4019
  %4022 = add nuw nsw i32 %4020, %4021
  %4023 = icmp eq i32 %4022, 2
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %91, align 1
  %4025 = add i64 %3982, -56
  %4026 = add i64 %392, 1533
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  %4028 = load i32, i32* %4027, align 4
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RSI.i2547, align 8
  %4030 = add i64 %392, 1537
  store i64 %4030, i64* %3, align 8
  %4031 = load i64, i64* %3985, align 8
  store i64 %4031, i64* %RCX.i2541, align 8
  %4032 = add i64 %4031, 20
  %4033 = add i64 %392, 1541
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i32*
  %4035 = load i32, i32* %4034, align 4
  %4036 = sext i32 %4028 to i64
  %4037 = sext i32 %4035 to i64
  %4038 = mul nsw i64 %4037, %4036
  %4039 = and i64 %4038, 4294967295
  store i64 %4039, i64* %RSI.i2547, align 8
  %4040 = trunc i64 %4038 to i32
  %4041 = add i32 %4040, %3997
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RDX.i2544, align 8
  %4043 = icmp ult i32 %4041, %3997
  %4044 = icmp ult i32 %4041, %4040
  %4045 = or i1 %4043, %4044
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %68, align 1
  %4047 = and i32 %4041, 255
  %4048 = tail call i32 @llvm.ctpop.i32(i32 %4047)
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  %4051 = xor i8 %4050, 1
  store i8 %4051, i8* %74, align 1
  %4052 = xor i64 %4038, %3998
  %4053 = trunc i64 %4052 to i32
  %4054 = xor i32 %4053, %4041
  %4055 = lshr i32 %4054, 4
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  store i8 %4057, i8* %79, align 1
  %4058 = icmp eq i32 %4041, 0
  %4059 = zext i1 %4058 to i8
  store i8 %4059, i8* %82, align 1
  %4060 = lshr i32 %4041, 31
  %4061 = trunc i32 %4060 to i8
  store i8 %4061, i8* %85, align 1
  %4062 = lshr i32 %4040, 31
  %4063 = xor i32 %4060, %4016
  %4064 = xor i32 %4060, %4062
  %4065 = add nuw nsw i32 %4063, %4064
  %4066 = icmp eq i32 %4065, 2
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %91, align 1
  %4068 = load i64, i64* %RBP.i, align 8
  %4069 = add i64 %4068, -60
  %4070 = add i64 %392, 1546
  store i64 %4070, i64* %3, align 8
  %4071 = inttoptr i64 %4069 to i32*
  %4072 = load i32, i32* %4071, align 4
  %4073 = add i32 %4072, 1
  %4074 = zext i32 %4073 to i64
  store i64 %4074, i64* %RSI.i2547, align 8
  %4075 = lshr i32 %4073, 31
  %4076 = add i32 %4073, %4041
  %4077 = zext i32 %4076 to i64
  store i64 %4077, i64* %RDX.i2544, align 8
  %4078 = icmp ult i32 %4076, %4041
  %4079 = icmp ult i32 %4076, %4073
  %4080 = or i1 %4078, %4079
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %68, align 1
  %4082 = and i32 %4076, 255
  %4083 = tail call i32 @llvm.ctpop.i32(i32 %4082)
  %4084 = trunc i32 %4083 to i8
  %4085 = and i8 %4084, 1
  %4086 = xor i8 %4085, 1
  store i8 %4086, i8* %74, align 1
  %4087 = xor i32 %4073, %4041
  %4088 = xor i32 %4087, %4076
  %4089 = lshr i32 %4088, 4
  %4090 = trunc i32 %4089 to i8
  %4091 = and i8 %4090, 1
  store i8 %4091, i8* %79, align 1
  %4092 = icmp eq i32 %4076, 0
  %4093 = zext i1 %4092 to i8
  store i8 %4093, i8* %82, align 1
  %4094 = lshr i32 %4076, 31
  %4095 = trunc i32 %4094 to i8
  store i8 %4095, i8* %85, align 1
  %4096 = xor i32 %4094, %4060
  %4097 = xor i32 %4094, %4075
  %4098 = add nuw nsw i32 %4096, %4097
  %4099 = icmp eq i32 %4098, 2
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %91, align 1
  %4101 = sext i32 %4076 to i64
  store i64 %4101, i64* %RCX.i2541, align 8
  %4102 = load i64, i64* %RAX.i2556, align 8
  %4103 = shl nsw i64 %4101, 2
  %4104 = add i64 %4103, %4102
  %4105 = add i64 %392, 1559
  store i64 %4105, i64* %3, align 8
  %4106 = load <2 x float>, <2 x float>* %220, align 1
  %4107 = load <2 x i32>, <2 x i32>* %221, align 1
  %4108 = inttoptr i64 %4104 to float*
  %4109 = load float, float* %4108, align 4
  %4110 = extractelement <2 x float> %4106, i32 0
  %4111 = fsub float %4110, %4109
  store float %4111, float* %213, align 1
  %4112 = bitcast <2 x float> %4106 to <2 x i32>
  %4113 = extractelement <2 x i32> %4112, i32 1
  store i32 %4113, i32* %222, align 1
  %4114 = extractelement <2 x i32> %4107, i32 0
  store i32 %4114, i32* %223, align 1
  %4115 = extractelement <2 x i32> %4107, i32 1
  store i32 %4115, i32* %224, align 1
  %4116 = load i64, i64* %RBP.i, align 8
  %4117 = add i64 %4116, -40
  %4118 = add i64 %392, 1563
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i64*
  %4120 = load i64, i64* %4119, align 8
  store i64 %4120, i64* %RAX.i2556, align 8
  %4121 = add i64 %392, 1566
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to i64*
  %4123 = load i64, i64* %4122, align 8
  store i64 %4123, i64* %RAX.i2556, align 8
  %4124 = add i64 %392, 1570
  store i64 %4124, i64* %3, align 8
  %4125 = load i64, i64* %4119, align 8
  store i64 %4125, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4126 = add i64 %392, 1578
  store i64 %4126, i64* %3, align 8
  %4127 = load i64, i64* %4119, align 8
  store i64 %4127, i64* %RCX.i2541, align 8
  %4128 = add i64 %392, 1582
  store i64 %4128, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4129 = add i64 %392, 1586
  store i64 %4129, i64* %3, align 8
  %4130 = load i64, i64* %4119, align 8
  store i64 %4130, i64* %RCX.i2541, align 8
  %4131 = add i64 %392, 1590
  store i64 %4131, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4132 = add i64 %4116, -52
  %4133 = add i64 %392, 1593
  store i64 %4133, i64* %3, align 8
  %4134 = inttoptr i64 %4132 to i32*
  %4135 = load i32, i32* %4134, align 4
  %4136 = add i32 %4135, 1
  %4137 = zext i32 %4136 to i64
  store i64 %4137, i64* %RSI.i2547, align 8
  %4138 = icmp eq i32 %4135, -1
  %4139 = icmp eq i32 %4136, 0
  %4140 = or i1 %4138, %4139
  %4141 = zext i1 %4140 to i8
  store i8 %4141, i8* %68, align 1
  %4142 = and i32 %4136, 255
  %4143 = tail call i32 @llvm.ctpop.i32(i32 %4142)
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  %4146 = xor i8 %4145, 1
  store i8 %4146, i8* %74, align 1
  %4147 = xor i32 %4135, %4136
  %4148 = lshr i32 %4147, 4
  %4149 = trunc i32 %4148 to i8
  %4150 = and i8 %4149, 1
  store i8 %4150, i8* %79, align 1
  %4151 = zext i1 %4139 to i8
  store i8 %4151, i8* %82, align 1
  %4152 = lshr i32 %4136, 31
  %4153 = trunc i32 %4152 to i8
  store i8 %4153, i8* %85, align 1
  %4154 = lshr i32 %4135, 31
  %4155 = xor i32 %4152, %4154
  %4156 = add nuw nsw i32 %4155, %4152
  %4157 = icmp eq i32 %4156, 2
  %4158 = zext i1 %4157 to i8
  store i8 %4158, i8* %91, align 1
  %4159 = load i64, i64* %RBP.i, align 8
  %4160 = add i64 %4159, -40
  %4161 = add i64 %392, 1600
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i64*
  %4163 = load i64, i64* %4162, align 8
  store i64 %4163, i64* %RCX.i2541, align 8
  %4164 = add i64 %4163, 16
  %4165 = add i64 %392, 1604
  store i64 %4165, i64* %3, align 8
  %4166 = inttoptr i64 %4164 to i32*
  %4167 = load i32, i32* %4166, align 4
  %4168 = sext i32 %4136 to i64
  %4169 = sext i32 %4167 to i64
  %4170 = mul nsw i64 %4169, %4168
  %4171 = trunc i64 %4170 to i32
  %4172 = and i64 %4170, 4294967295
  store i64 %4172, i64* %RSI.i2547, align 8
  %4173 = shl i64 %4170, 32
  %4174 = ashr exact i64 %4173, 32
  %4175 = icmp ne i64 %4174, %4170
  %4176 = zext i1 %4175 to i8
  store i8 %4176, i8* %68, align 1
  %4177 = and i32 %4171, 255
  %4178 = tail call i32 @llvm.ctpop.i32(i32 %4177)
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  %4181 = xor i8 %4180, 1
  store i8 %4181, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4182 = lshr i32 %4171, 31
  %4183 = trunc i32 %4182 to i8
  store i8 %4183, i8* %85, align 1
  store i8 %4176, i8* %91, align 1
  %4184 = add i64 %392, 1608
  store i64 %4184, i64* %3, align 8
  %4185 = load i64, i64* %4162, align 8
  store i64 %4185, i64* %RCX.i2541, align 8
  %4186 = add i64 %4185, 20
  %4187 = add i64 %392, 1612
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i32*
  %4189 = load i32, i32* %4188, align 4
  %4190 = sext i32 %4189 to i64
  %4191 = mul nsw i64 %4190, %4174
  %4192 = and i64 %4191, 4294967295
  store i64 %4192, i64* %RSI.i2547, align 8
  %4193 = load i64, i64* %RDX.i2544, align 8
  %4194 = trunc i64 %4191 to i32
  %4195 = trunc i64 %4193 to i32
  %4196 = add i32 %4194, %4195
  %4197 = zext i32 %4196 to i64
  store i64 %4197, i64* %RDX.i2544, align 8
  %4198 = icmp ult i32 %4196, %4195
  %4199 = icmp ult i32 %4196, %4194
  %4200 = or i1 %4198, %4199
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %68, align 1
  %4202 = and i32 %4196, 255
  %4203 = tail call i32 @llvm.ctpop.i32(i32 %4202)
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  %4206 = xor i8 %4205, 1
  store i8 %4206, i8* %74, align 1
  %4207 = xor i64 %4191, %4193
  %4208 = trunc i64 %4207 to i32
  %4209 = xor i32 %4208, %4196
  %4210 = lshr i32 %4209, 4
  %4211 = trunc i32 %4210 to i8
  %4212 = and i8 %4211, 1
  store i8 %4212, i8* %79, align 1
  %4213 = icmp eq i32 %4196, 0
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %82, align 1
  %4215 = lshr i32 %4196, 31
  %4216 = trunc i32 %4215 to i8
  store i8 %4216, i8* %85, align 1
  %4217 = lshr i32 %4195, 31
  %4218 = lshr i32 %4194, 31
  %4219 = xor i32 %4215, %4217
  %4220 = xor i32 %4215, %4218
  %4221 = add nuw nsw i32 %4219, %4220
  %4222 = icmp eq i32 %4221, 2
  %4223 = zext i1 %4222 to i8
  store i8 %4223, i8* %91, align 1
  %4224 = load i64, i64* %RBP.i, align 8
  %4225 = add i64 %4224, -56
  %4226 = add i64 %392, 1617
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i32*
  %4228 = load i32, i32* %4227, align 4
  %4229 = zext i32 %4228 to i64
  store i64 %4229, i64* %RSI.i2547, align 8
  %4230 = add i64 %4224, -40
  %4231 = add i64 %392, 1621
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i64*
  %4233 = load i64, i64* %4232, align 8
  store i64 %4233, i64* %RCX.i2541, align 8
  %4234 = add i64 %4233, 20
  %4235 = add i64 %392, 1625
  store i64 %4235, i64* %3, align 8
  %4236 = inttoptr i64 %4234 to i32*
  %4237 = load i32, i32* %4236, align 4
  %4238 = sext i32 %4228 to i64
  %4239 = sext i32 %4237 to i64
  %4240 = mul nsw i64 %4239, %4238
  %4241 = and i64 %4240, 4294967295
  store i64 %4241, i64* %RSI.i2547, align 8
  %4242 = trunc i64 %4240 to i32
  %4243 = add i32 %4242, %4196
  %4244 = zext i32 %4243 to i64
  store i64 %4244, i64* %RDX.i2544, align 8
  %4245 = icmp ult i32 %4243, %4196
  %4246 = icmp ult i32 %4243, %4242
  %4247 = or i1 %4245, %4246
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %68, align 1
  %4249 = and i32 %4243, 255
  %4250 = tail call i32 @llvm.ctpop.i32(i32 %4249)
  %4251 = trunc i32 %4250 to i8
  %4252 = and i8 %4251, 1
  %4253 = xor i8 %4252, 1
  store i8 %4253, i8* %74, align 1
  %4254 = xor i64 %4240, %4197
  %4255 = trunc i64 %4254 to i32
  %4256 = xor i32 %4255, %4243
  %4257 = lshr i32 %4256, 4
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  store i8 %4259, i8* %79, align 1
  %4260 = icmp eq i32 %4243, 0
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %82, align 1
  %4262 = lshr i32 %4243, 31
  %4263 = trunc i32 %4262 to i8
  store i8 %4263, i8* %85, align 1
  %4264 = lshr i32 %4242, 31
  %4265 = xor i32 %4262, %4215
  %4266 = xor i32 %4262, %4264
  %4267 = add nuw nsw i32 %4265, %4266
  %4268 = icmp eq i32 %4267, 2
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %91, align 1
  %4270 = add i64 %4224, -60
  %4271 = add i64 %392, 1630
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i32*
  %4273 = load i32, i32* %4272, align 4
  %4274 = add i32 %4273, -1
  %4275 = zext i32 %4274 to i64
  store i64 %4275, i64* %RSI.i2547, align 8
  %4276 = lshr i32 %4274, 31
  %4277 = add i32 %4274, %4243
  %4278 = zext i32 %4277 to i64
  store i64 %4278, i64* %RDX.i2544, align 8
  %4279 = icmp ult i32 %4277, %4243
  %4280 = icmp ult i32 %4277, %4274
  %4281 = or i1 %4279, %4280
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %68, align 1
  %4283 = and i32 %4277, 255
  %4284 = tail call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  store i8 %4287, i8* %74, align 1
  %4288 = xor i32 %4274, %4243
  %4289 = xor i32 %4288, %4277
  %4290 = lshr i32 %4289, 4
  %4291 = trunc i32 %4290 to i8
  %4292 = and i8 %4291, 1
  store i8 %4292, i8* %79, align 1
  %4293 = icmp eq i32 %4277, 0
  %4294 = zext i1 %4293 to i8
  store i8 %4294, i8* %82, align 1
  %4295 = lshr i32 %4277, 31
  %4296 = trunc i32 %4295 to i8
  store i8 %4296, i8* %85, align 1
  %4297 = xor i32 %4295, %4262
  %4298 = xor i32 %4295, %4276
  %4299 = add nuw nsw i32 %4297, %4298
  %4300 = icmp eq i32 %4299, 2
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %91, align 1
  %4302 = sext i32 %4277 to i64
  store i64 %4302, i64* %RCX.i2541, align 8
  %4303 = load i64, i64* %RAX.i2556, align 8
  %4304 = shl nsw i64 %4302, 2
  %4305 = add i64 %4304, %4303
  %4306 = add i64 %392, 1643
  store i64 %4306, i64* %3, align 8
  %4307 = load <2 x float>, <2 x float>* %220, align 1
  %4308 = load <2 x i32>, <2 x i32>* %221, align 1
  %4309 = inttoptr i64 %4305 to float*
  %4310 = load float, float* %4309, align 4
  %4311 = extractelement <2 x float> %4307, i32 0
  %4312 = fsub float %4311, %4310
  store float %4312, float* %213, align 1
  %4313 = bitcast <2 x float> %4307 to <2 x i32>
  %4314 = extractelement <2 x i32> %4313, i32 1
  store i32 %4314, i32* %222, align 1
  %4315 = extractelement <2 x i32> %4308, i32 0
  store i32 %4315, i32* %223, align 1
  %4316 = extractelement <2 x i32> %4308, i32 1
  store i32 %4316, i32* %224, align 1
  %4317 = load i64, i64* %RBP.i, align 8
  %4318 = add i64 %4317, -40
  %4319 = add i64 %392, 1647
  store i64 %4319, i64* %3, align 8
  %4320 = inttoptr i64 %4318 to i64*
  %4321 = load i64, i64* %4320, align 8
  store i64 %4321, i64* %RAX.i2556, align 8
  %4322 = add i64 %392, 1650
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4321 to i64*
  %4324 = load i64, i64* %4323, align 8
  store i64 %4324, i64* %RAX.i2556, align 8
  %4325 = add i64 %392, 1654
  store i64 %4325, i64* %3, align 8
  %4326 = load i64, i64* %4320, align 8
  store i64 %4326, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4327 = add i64 %392, 1662
  store i64 %4327, i64* %3, align 8
  %4328 = load i64, i64* %4320, align 8
  store i64 %4328, i64* %RCX.i2541, align 8
  %4329 = add i64 %392, 1666
  store i64 %4329, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4330 = add i64 %392, 1670
  store i64 %4330, i64* %3, align 8
  %4331 = load i64, i64* %4320, align 8
  store i64 %4331, i64* %RCX.i2541, align 8
  %4332 = add i64 %392, 1674
  store i64 %4332, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4333 = add i64 %4317, -52
  %4334 = add i64 %392, 1677
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i32*
  %4336 = load i32, i32* %4335, align 4
  %4337 = add i32 %4336, -1
  %4338 = zext i32 %4337 to i64
  store i64 %4338, i64* %RSI.i2547, align 8
  %4339 = icmp eq i32 %4336, 0
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %68, align 1
  %4341 = and i32 %4337, 255
  %4342 = tail call i32 @llvm.ctpop.i32(i32 %4341)
  %4343 = trunc i32 %4342 to i8
  %4344 = and i8 %4343, 1
  %4345 = xor i8 %4344, 1
  store i8 %4345, i8* %74, align 1
  %4346 = xor i32 %4336, %4337
  %4347 = lshr i32 %4346, 4
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  store i8 %4349, i8* %79, align 1
  %4350 = icmp eq i32 %4337, 0
  %4351 = zext i1 %4350 to i8
  store i8 %4351, i8* %82, align 1
  %4352 = lshr i32 %4337, 31
  %4353 = trunc i32 %4352 to i8
  store i8 %4353, i8* %85, align 1
  %4354 = lshr i32 %4336, 31
  %4355 = xor i32 %4352, %4354
  %4356 = add nuw nsw i32 %4355, %4354
  %4357 = icmp eq i32 %4356, 2
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %91, align 1
  %4359 = add i64 %392, 1684
  store i64 %4359, i64* %3, align 8
  %4360 = load i64, i64* %4320, align 8
  store i64 %4360, i64* %RCX.i2541, align 8
  %4361 = add i64 %4360, 16
  %4362 = add i64 %392, 1688
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  %4364 = load i32, i32* %4363, align 4
  %4365 = sext i32 %4337 to i64
  %4366 = sext i32 %4364 to i64
  %4367 = mul nsw i64 %4366, %4365
  %4368 = trunc i64 %4367 to i32
  %4369 = and i64 %4367, 4294967295
  store i64 %4369, i64* %RSI.i2547, align 8
  %4370 = shl i64 %4367, 32
  %4371 = ashr exact i64 %4370, 32
  %4372 = icmp ne i64 %4371, %4367
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %68, align 1
  %4374 = and i32 %4368, 255
  %4375 = tail call i32 @llvm.ctpop.i32(i32 %4374)
  %4376 = trunc i32 %4375 to i8
  %4377 = and i8 %4376, 1
  %4378 = xor i8 %4377, 1
  store i8 %4378, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4379 = lshr i32 %4368, 31
  %4380 = trunc i32 %4379 to i8
  store i8 %4380, i8* %85, align 1
  store i8 %4373, i8* %91, align 1
  %4381 = load i64, i64* %RBP.i, align 8
  %4382 = add i64 %4381, -40
  %4383 = add i64 %392, 1692
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i64*
  %4385 = load i64, i64* %4384, align 8
  store i64 %4385, i64* %RCX.i2541, align 8
  %4386 = add i64 %4385, 20
  %4387 = add i64 %392, 1696
  store i64 %4387, i64* %3, align 8
  %4388 = inttoptr i64 %4386 to i32*
  %4389 = load i32, i32* %4388, align 4
  %4390 = sext i32 %4389 to i64
  %4391 = mul nsw i64 %4390, %4371
  %4392 = and i64 %4391, 4294967295
  store i64 %4392, i64* %RSI.i2547, align 8
  %4393 = load i64, i64* %RDX.i2544, align 8
  %4394 = trunc i64 %4391 to i32
  %4395 = trunc i64 %4393 to i32
  %4396 = add i32 %4394, %4395
  %4397 = zext i32 %4396 to i64
  store i64 %4397, i64* %RDX.i2544, align 8
  %4398 = icmp ult i32 %4396, %4395
  %4399 = icmp ult i32 %4396, %4394
  %4400 = or i1 %4398, %4399
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %68, align 1
  %4402 = and i32 %4396, 255
  %4403 = tail call i32 @llvm.ctpop.i32(i32 %4402)
  %4404 = trunc i32 %4403 to i8
  %4405 = and i8 %4404, 1
  %4406 = xor i8 %4405, 1
  store i8 %4406, i8* %74, align 1
  %4407 = xor i64 %4391, %4393
  %4408 = trunc i64 %4407 to i32
  %4409 = xor i32 %4408, %4396
  %4410 = lshr i32 %4409, 4
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  store i8 %4412, i8* %79, align 1
  %4413 = icmp eq i32 %4396, 0
  %4414 = zext i1 %4413 to i8
  store i8 %4414, i8* %82, align 1
  %4415 = lshr i32 %4396, 31
  %4416 = trunc i32 %4415 to i8
  store i8 %4416, i8* %85, align 1
  %4417 = lshr i32 %4395, 31
  %4418 = lshr i32 %4394, 31
  %4419 = xor i32 %4415, %4417
  %4420 = xor i32 %4415, %4418
  %4421 = add nuw nsw i32 %4419, %4420
  %4422 = icmp eq i32 %4421, 2
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %91, align 1
  %4424 = add i64 %4381, -56
  %4425 = add i64 %392, 1701
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4424 to i32*
  %4427 = load i32, i32* %4426, align 4
  %4428 = zext i32 %4427 to i64
  store i64 %4428, i64* %RSI.i2547, align 8
  %4429 = add i64 %392, 1705
  store i64 %4429, i64* %3, align 8
  %4430 = load i64, i64* %4384, align 8
  store i64 %4430, i64* %RCX.i2541, align 8
  %4431 = add i64 %4430, 20
  %4432 = add i64 %392, 1709
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i32*
  %4434 = load i32, i32* %4433, align 4
  %4435 = sext i32 %4427 to i64
  %4436 = sext i32 %4434 to i64
  %4437 = mul nsw i64 %4436, %4435
  %4438 = and i64 %4437, 4294967295
  store i64 %4438, i64* %RSI.i2547, align 8
  %4439 = trunc i64 %4437 to i32
  %4440 = add i32 %4439, %4396
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %RDX.i2544, align 8
  %4442 = icmp ult i32 %4440, %4396
  %4443 = icmp ult i32 %4440, %4439
  %4444 = or i1 %4442, %4443
  %4445 = zext i1 %4444 to i8
  store i8 %4445, i8* %68, align 1
  %4446 = and i32 %4440, 255
  %4447 = tail call i32 @llvm.ctpop.i32(i32 %4446)
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  %4450 = xor i8 %4449, 1
  store i8 %4450, i8* %74, align 1
  %4451 = xor i64 %4437, %4397
  %4452 = trunc i64 %4451 to i32
  %4453 = xor i32 %4452, %4440
  %4454 = lshr i32 %4453, 4
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  store i8 %4456, i8* %79, align 1
  %4457 = icmp eq i32 %4440, 0
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %82, align 1
  %4459 = lshr i32 %4440, 31
  %4460 = trunc i32 %4459 to i8
  store i8 %4460, i8* %85, align 1
  %4461 = lshr i32 %4439, 31
  %4462 = xor i32 %4459, %4415
  %4463 = xor i32 %4459, %4461
  %4464 = add nuw nsw i32 %4462, %4463
  %4465 = icmp eq i32 %4464, 2
  %4466 = zext i1 %4465 to i8
  store i8 %4466, i8* %91, align 1
  %4467 = load i64, i64* %RBP.i, align 8
  %4468 = add i64 %4467, -60
  %4469 = add i64 %392, 1714
  store i64 %4469, i64* %3, align 8
  %4470 = inttoptr i64 %4468 to i32*
  %4471 = load i32, i32* %4470, align 4
  %4472 = add i32 %4471, -1
  %4473 = zext i32 %4472 to i64
  store i64 %4473, i64* %RSI.i2547, align 8
  %4474 = lshr i32 %4472, 31
  %4475 = add i32 %4472, %4440
  %4476 = zext i32 %4475 to i64
  store i64 %4476, i64* %RDX.i2544, align 8
  %4477 = icmp ult i32 %4475, %4440
  %4478 = icmp ult i32 %4475, %4472
  %4479 = or i1 %4477, %4478
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %68, align 1
  %4481 = and i32 %4475, 255
  %4482 = tail call i32 @llvm.ctpop.i32(i32 %4481)
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  %4485 = xor i8 %4484, 1
  store i8 %4485, i8* %74, align 1
  %4486 = xor i32 %4472, %4440
  %4487 = xor i32 %4486, %4475
  %4488 = lshr i32 %4487, 4
  %4489 = trunc i32 %4488 to i8
  %4490 = and i8 %4489, 1
  store i8 %4490, i8* %79, align 1
  %4491 = icmp eq i32 %4475, 0
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %82, align 1
  %4493 = lshr i32 %4475, 31
  %4494 = trunc i32 %4493 to i8
  store i8 %4494, i8* %85, align 1
  %4495 = xor i32 %4493, %4459
  %4496 = xor i32 %4493, %4474
  %4497 = add nuw nsw i32 %4495, %4496
  %4498 = icmp eq i32 %4497, 2
  %4499 = zext i1 %4498 to i8
  store i8 %4499, i8* %91, align 1
  %4500 = sext i32 %4475 to i64
  store i64 %4500, i64* %RCX.i2541, align 8
  %4501 = load i64, i64* %RAX.i2556, align 8
  %4502 = shl nsw i64 %4500, 2
  %4503 = add i64 %4502, %4501
  %4504 = add i64 %392, 1727
  store i64 %4504, i64* %3, align 8
  %4505 = load <2 x float>, <2 x float>* %220, align 1
  %4506 = load <2 x i32>, <2 x i32>* %221, align 1
  %4507 = inttoptr i64 %4503 to float*
  %4508 = load float, float* %4507, align 4
  %4509 = extractelement <2 x float> %4505, i32 0
  %4510 = fadd float %4509, %4508
  store float %4510, float* %213, align 1
  %4511 = bitcast <2 x float> %4505 to <2 x i32>
  %4512 = extractelement <2 x i32> %4511, i32 1
  store i32 %4512, i32* %222, align 1
  %4513 = extractelement <2 x i32> %4506, i32 0
  store i32 %4513, i32* %223, align 1
  %4514 = extractelement <2 x i32> %4506, i32 1
  store i32 %4514, i32* %224, align 1
  %4515 = load <2 x float>, <2 x float>* %206, align 1
  %4516 = load <2 x i32>, <2 x i32>* %207, align 1
  %4517 = load <2 x float>, <2 x float>* %220, align 1
  %4518 = extractelement <2 x float> %4515, i32 0
  %4519 = extractelement <2 x float> %4517, i32 0
  %4520 = fmul float %4518, %4519
  store float %4520, float* %199, align 1
  %4521 = bitcast <2 x float> %4515 to <2 x i32>
  %4522 = extractelement <2 x i32> %4521, i32 1
  store i32 %4522, i32* %208, align 1
  %4523 = extractelement <2 x i32> %4516, i32 0
  store i32 %4523, i32* %209, align 1
  %4524 = extractelement <2 x i32> %4516, i32 1
  store i32 %4524, i32* %210, align 1
  %4525 = load <2 x float>, <2 x float>* %191, align 1
  %4526 = load <2 x i32>, <2 x i32>* %196, align 1
  %4527 = load <2 x float>, <2 x float>* %206, align 1
  %4528 = extractelement <2 x float> %4525, i32 0
  %4529 = extractelement <2 x float> %4527, i32 0
  %4530 = fadd float %4528, %4529
  store float %4530, float* %192, align 1
  %4531 = bitcast <2 x float> %4525 to <2 x i32>
  %4532 = extractelement <2 x i32> %4531, i32 1
  store i32 %4532, i32* %187, align 1
  %4533 = extractelement <2 x i32> %4526, i32 0
  store i32 %4533, i32* %188, align 1
  %4534 = extractelement <2 x i32> %4526, i32 1
  store i32 %4534, i32* %190, align 1
  %4535 = load i64, i64* %RBP.i, align 8
  %4536 = add i64 %4535, -32
  %4537 = add i64 %392, 1739
  store i64 %4537, i64* %3, align 8
  %4538 = inttoptr i64 %4536 to i64*
  %4539 = load i64, i64* %4538, align 8
  store i64 %4539, i64* %RAX.i2556, align 8
  %4540 = add i64 %392, 1742
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to i64*
  %4542 = load i64, i64* %4541, align 8
  store i64 %4542, i64* %RAX.i2556, align 8
  %4543 = add i64 %392, 1746
  store i64 %4543, i64* %3, align 8
  %4544 = load i64, i64* %4538, align 8
  store i64 %4544, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4545 = add i64 %392, 1754
  store i64 %4545, i64* %3, align 8
  %4546 = load i64, i64* %4538, align 8
  store i64 %4546, i64* %RCX.i2541, align 8
  %4547 = add i64 %392, 1758
  store i64 %4547, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4548 = add i64 %392, 1762
  store i64 %4548, i64* %3, align 8
  %4549 = load i64, i64* %4538, align 8
  store i64 %4549, i64* %RCX.i2541, align 8
  %4550 = add i64 %392, 1766
  store i64 %4550, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4551 = add i64 %4535, -52
  %4552 = add i64 %392, 1769
  store i64 %4552, i64* %3, align 8
  %4553 = inttoptr i64 %4551 to i32*
  %4554 = load i32, i32* %4553, align 4
  %4555 = zext i32 %4554 to i64
  store i64 %4555, i64* %RSI.i2547, align 8
  %4556 = add i64 %392, 1773
  store i64 %4556, i64* %3, align 8
  %4557 = load i64, i64* %4538, align 8
  store i64 %4557, i64* %RCX.i2541, align 8
  %4558 = add i64 %4557, 16
  %4559 = add i64 %392, 1777
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i32*
  %4561 = load i32, i32* %4560, align 4
  %4562 = sext i32 %4554 to i64
  %4563 = sext i32 %4561 to i64
  %4564 = mul nsw i64 %4563, %4562
  %4565 = trunc i64 %4564 to i32
  %4566 = and i64 %4564, 4294967295
  store i64 %4566, i64* %RSI.i2547, align 8
  %4567 = shl i64 %4564, 32
  %4568 = ashr exact i64 %4567, 32
  %4569 = icmp ne i64 %4568, %4564
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %68, align 1
  %4571 = and i32 %4565, 255
  %4572 = tail call i32 @llvm.ctpop.i32(i32 %4571)
  %4573 = trunc i32 %4572 to i8
  %4574 = and i8 %4573, 1
  %4575 = xor i8 %4574, 1
  store i8 %4575, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4576 = lshr i32 %4565, 31
  %4577 = trunc i32 %4576 to i8
  store i8 %4577, i8* %85, align 1
  store i8 %4570, i8* %91, align 1
  %4578 = add i64 %392, 1781
  store i64 %4578, i64* %3, align 8
  %4579 = load i64, i64* %4538, align 8
  store i64 %4579, i64* %RCX.i2541, align 8
  %4580 = add i64 %4579, 20
  %4581 = add i64 %392, 1785
  store i64 %4581, i64* %3, align 8
  %4582 = inttoptr i64 %4580 to i32*
  %4583 = load i32, i32* %4582, align 4
  %4584 = sext i32 %4583 to i64
  %4585 = mul nsw i64 %4584, %4568
  %4586 = and i64 %4585, 4294967295
  store i64 %4586, i64* %RSI.i2547, align 8
  %4587 = trunc i64 %4585 to i32
  store i64 %4586, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %4588 = and i32 %4587, 255
  %4589 = tail call i32 @llvm.ctpop.i32(i32 %4588)
  %4590 = trunc i32 %4589 to i8
  %4591 = and i8 %4590, 1
  %4592 = xor i8 %4591, 1
  store i8 %4592, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %4593 = icmp eq i32 %4587, 0
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %82, align 1
  %4595 = lshr i32 %4587, 31
  %4596 = trunc i32 %4595 to i8
  store i8 %4596, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4597 = load i64, i64* %RBP.i, align 8
  %4598 = add i64 %4597, -56
  %4599 = add i64 %392, 1790
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i32*
  %4601 = load i32, i32* %4600, align 4
  %4602 = zext i32 %4601 to i64
  store i64 %4602, i64* %RSI.i2547, align 8
  %4603 = add i64 %4597, -32
  %4604 = add i64 %392, 1794
  store i64 %4604, i64* %3, align 8
  %4605 = inttoptr i64 %4603 to i64*
  %4606 = load i64, i64* %4605, align 8
  store i64 %4606, i64* %RCX.i2541, align 8
  %4607 = add i64 %4606, 20
  %4608 = add i64 %392, 1798
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i32*
  %4610 = load i32, i32* %4609, align 4
  %4611 = sext i32 %4601 to i64
  %4612 = sext i32 %4610 to i64
  %4613 = mul nsw i64 %4612, %4611
  %4614 = and i64 %4613, 4294967295
  store i64 %4614, i64* %RSI.i2547, align 8
  %4615 = trunc i64 %4613 to i32
  %4616 = add i32 %4615, %4587
  %4617 = zext i32 %4616 to i64
  store i64 %4617, i64* %RDX.i2544, align 8
  %4618 = icmp ult i32 %4616, %4587
  %4619 = icmp ult i32 %4616, %4615
  %4620 = or i1 %4618, %4619
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %68, align 1
  %4622 = and i32 %4616, 255
  %4623 = tail call i32 @llvm.ctpop.i32(i32 %4622)
  %4624 = trunc i32 %4623 to i8
  %4625 = and i8 %4624, 1
  %4626 = xor i8 %4625, 1
  store i8 %4626, i8* %74, align 1
  %4627 = xor i64 %4613, %4585
  %4628 = trunc i64 %4627 to i32
  %4629 = xor i32 %4628, %4616
  %4630 = lshr i32 %4629, 4
  %4631 = trunc i32 %4630 to i8
  %4632 = and i8 %4631, 1
  store i8 %4632, i8* %79, align 1
  %4633 = icmp eq i32 %4616, 0
  %4634 = zext i1 %4633 to i8
  store i8 %4634, i8* %82, align 1
  %4635 = lshr i32 %4616, 31
  %4636 = trunc i32 %4635 to i8
  store i8 %4636, i8* %85, align 1
  %4637 = lshr i32 %4615, 31
  %4638 = xor i32 %4635, %4595
  %4639 = xor i32 %4635, %4637
  %4640 = add nuw nsw i32 %4638, %4639
  %4641 = icmp eq i32 %4640, 2
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %91, align 1
  %4643 = add i64 %4597, -60
  %4644 = add i64 %392, 1803
  store i64 %4644, i64* %3, align 8
  %4645 = inttoptr i64 %4643 to i32*
  %4646 = load i32, i32* %4645, align 4
  %4647 = add i32 %4646, %4616
  %4648 = zext i32 %4647 to i64
  store i64 %4648, i64* %RDX.i2544, align 8
  %4649 = icmp ult i32 %4647, %4616
  %4650 = icmp ult i32 %4647, %4646
  %4651 = or i1 %4649, %4650
  %4652 = zext i1 %4651 to i8
  store i8 %4652, i8* %68, align 1
  %4653 = and i32 %4647, 255
  %4654 = tail call i32 @llvm.ctpop.i32(i32 %4653)
  %4655 = trunc i32 %4654 to i8
  %4656 = and i8 %4655, 1
  %4657 = xor i8 %4656, 1
  store i8 %4657, i8* %74, align 1
  %4658 = xor i32 %4646, %4616
  %4659 = xor i32 %4658, %4647
  %4660 = lshr i32 %4659, 4
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  store i8 %4662, i8* %79, align 1
  %4663 = icmp eq i32 %4647, 0
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %82, align 1
  %4665 = lshr i32 %4647, 31
  %4666 = trunc i32 %4665 to i8
  store i8 %4666, i8* %85, align 1
  %4667 = lshr i32 %4646, 31
  %4668 = xor i32 %4665, %4635
  %4669 = xor i32 %4665, %4667
  %4670 = add nuw nsw i32 %4668, %4669
  %4671 = icmp eq i32 %4670, 2
  %4672 = zext i1 %4671 to i8
  store i8 %4672, i8* %91, align 1
  %4673 = sext i32 %4647 to i64
  store i64 %4673, i64* %RCX.i2541, align 8
  %4674 = load i64, i64* %RAX.i2556, align 8
  %4675 = shl nsw i64 %4673, 2
  %4676 = add i64 %4675, %4674
  %4677 = add i64 %392, 1811
  store i64 %4677, i64* %3, align 8
  %4678 = inttoptr i64 %4676 to i32*
  %4679 = load i32, i32* %4678, align 4
  store i32 %4679, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %4680 = load i64, i64* %RBP.i, align 8
  %4681 = add i64 %4680, -40
  %4682 = add i64 %392, 1815
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i64*
  %4684 = load i64, i64* %4683, align 8
  store i64 %4684, i64* %RAX.i2556, align 8
  %4685 = add i64 %392, 1818
  store i64 %4685, i64* %3, align 8
  %4686 = inttoptr i64 %4684 to i64*
  %4687 = load i64, i64* %4686, align 8
  store i64 %4687, i64* %RAX.i2556, align 8
  %4688 = add i64 %392, 1822
  store i64 %4688, i64* %3, align 8
  %4689 = load i64, i64* %4683, align 8
  store i64 %4689, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4690 = add i64 %392, 1830
  store i64 %4690, i64* %3, align 8
  %4691 = load i64, i64* %4683, align 8
  store i64 %4691, i64* %RCX.i2541, align 8
  %4692 = add i64 %392, 1834
  store i64 %4692, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4693 = add i64 %392, 1838
  store i64 %4693, i64* %3, align 8
  %4694 = load i64, i64* %4683, align 8
  store i64 %4694, i64* %RCX.i2541, align 8
  %4695 = add i64 %392, 1842
  store i64 %4695, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4696 = add i64 %4680, -52
  %4697 = add i64 %392, 1845
  store i64 %4697, i64* %3, align 8
  %4698 = inttoptr i64 %4696 to i32*
  %4699 = load i32, i32* %4698, align 4
  %4700 = add i32 %4699, -1
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RSI.i2547, align 8
  %4702 = icmp eq i32 %4699, 0
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %68, align 1
  %4704 = and i32 %4700, 255
  %4705 = tail call i32 @llvm.ctpop.i32(i32 %4704)
  %4706 = trunc i32 %4705 to i8
  %4707 = and i8 %4706, 1
  %4708 = xor i8 %4707, 1
  store i8 %4708, i8* %74, align 1
  %4709 = xor i32 %4699, %4700
  %4710 = lshr i32 %4709, 4
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  store i8 %4712, i8* %79, align 1
  %4713 = icmp eq i32 %4700, 0
  %4714 = zext i1 %4713 to i8
  store i8 %4714, i8* %82, align 1
  %4715 = lshr i32 %4700, 31
  %4716 = trunc i32 %4715 to i8
  store i8 %4716, i8* %85, align 1
  %4717 = lshr i32 %4699, 31
  %4718 = xor i32 %4715, %4717
  %4719 = add nuw nsw i32 %4718, %4717
  %4720 = icmp eq i32 %4719, 2
  %4721 = zext i1 %4720 to i8
  store i8 %4721, i8* %91, align 1
  %4722 = add i64 %392, 1852
  store i64 %4722, i64* %3, align 8
  %4723 = load i64, i64* %4683, align 8
  store i64 %4723, i64* %RCX.i2541, align 8
  %4724 = add i64 %4723, 16
  %4725 = add i64 %392, 1856
  store i64 %4725, i64* %3, align 8
  %4726 = inttoptr i64 %4724 to i32*
  %4727 = load i32, i32* %4726, align 4
  %4728 = sext i32 %4700 to i64
  %4729 = sext i32 %4727 to i64
  %4730 = mul nsw i64 %4729, %4728
  %4731 = trunc i64 %4730 to i32
  %4732 = and i64 %4730, 4294967295
  store i64 %4732, i64* %RSI.i2547, align 8
  %4733 = shl i64 %4730, 32
  %4734 = ashr exact i64 %4733, 32
  %4735 = icmp ne i64 %4734, %4730
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %68, align 1
  %4737 = and i32 %4731, 255
  %4738 = tail call i32 @llvm.ctpop.i32(i32 %4737)
  %4739 = trunc i32 %4738 to i8
  %4740 = and i8 %4739, 1
  %4741 = xor i8 %4740, 1
  store i8 %4741, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4742 = lshr i32 %4731, 31
  %4743 = trunc i32 %4742 to i8
  store i8 %4743, i8* %85, align 1
  store i8 %4736, i8* %91, align 1
  %4744 = load i64, i64* %RBP.i, align 8
  %4745 = add i64 %4744, -40
  %4746 = add i64 %392, 1860
  store i64 %4746, i64* %3, align 8
  %4747 = inttoptr i64 %4745 to i64*
  %4748 = load i64, i64* %4747, align 8
  store i64 %4748, i64* %RCX.i2541, align 8
  %4749 = add i64 %4748, 20
  %4750 = add i64 %392, 1864
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i32*
  %4752 = load i32, i32* %4751, align 4
  %4753 = sext i32 %4752 to i64
  %4754 = mul nsw i64 %4753, %4734
  %4755 = and i64 %4754, 4294967295
  store i64 %4755, i64* %RSI.i2547, align 8
  %4756 = load i64, i64* %RDX.i2544, align 8
  %4757 = trunc i64 %4754 to i32
  %4758 = trunc i64 %4756 to i32
  %4759 = add i32 %4757, %4758
  %4760 = zext i32 %4759 to i64
  store i64 %4760, i64* %RDX.i2544, align 8
  %4761 = icmp ult i32 %4759, %4758
  %4762 = icmp ult i32 %4759, %4757
  %4763 = or i1 %4761, %4762
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %68, align 1
  %4765 = and i32 %4759, 255
  %4766 = tail call i32 @llvm.ctpop.i32(i32 %4765)
  %4767 = trunc i32 %4766 to i8
  %4768 = and i8 %4767, 1
  %4769 = xor i8 %4768, 1
  store i8 %4769, i8* %74, align 1
  %4770 = xor i64 %4754, %4756
  %4771 = trunc i64 %4770 to i32
  %4772 = xor i32 %4771, %4759
  %4773 = lshr i32 %4772, 4
  %4774 = trunc i32 %4773 to i8
  %4775 = and i8 %4774, 1
  store i8 %4775, i8* %79, align 1
  %4776 = icmp eq i32 %4759, 0
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %82, align 1
  %4778 = lshr i32 %4759, 31
  %4779 = trunc i32 %4778 to i8
  store i8 %4779, i8* %85, align 1
  %4780 = lshr i32 %4758, 31
  %4781 = lshr i32 %4757, 31
  %4782 = xor i32 %4778, %4780
  %4783 = xor i32 %4778, %4781
  %4784 = add nuw nsw i32 %4782, %4783
  %4785 = icmp eq i32 %4784, 2
  %4786 = zext i1 %4785 to i8
  store i8 %4786, i8* %91, align 1
  %4787 = add i64 %4744, -56
  %4788 = add i64 %392, 1869
  store i64 %4788, i64* %3, align 8
  %4789 = inttoptr i64 %4787 to i32*
  %4790 = load i32, i32* %4789, align 4
  %4791 = zext i32 %4790 to i64
  store i64 %4791, i64* %RSI.i2547, align 8
  %4792 = add i64 %392, 1873
  store i64 %4792, i64* %3, align 8
  %4793 = load i64, i64* %4747, align 8
  store i64 %4793, i64* %RCX.i2541, align 8
  %4794 = add i64 %4793, 20
  %4795 = add i64 %392, 1877
  store i64 %4795, i64* %3, align 8
  %4796 = inttoptr i64 %4794 to i32*
  %4797 = load i32, i32* %4796, align 4
  %4798 = sext i32 %4790 to i64
  %4799 = sext i32 %4797 to i64
  %4800 = mul nsw i64 %4799, %4798
  %4801 = and i64 %4800, 4294967295
  store i64 %4801, i64* %RSI.i2547, align 8
  %4802 = trunc i64 %4800 to i32
  %4803 = add i32 %4802, %4759
  %4804 = zext i32 %4803 to i64
  store i64 %4804, i64* %RDX.i2544, align 8
  %4805 = icmp ult i32 %4803, %4759
  %4806 = icmp ult i32 %4803, %4802
  %4807 = or i1 %4805, %4806
  %4808 = zext i1 %4807 to i8
  store i8 %4808, i8* %68, align 1
  %4809 = and i32 %4803, 255
  %4810 = tail call i32 @llvm.ctpop.i32(i32 %4809)
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  %4813 = xor i8 %4812, 1
  store i8 %4813, i8* %74, align 1
  %4814 = xor i64 %4800, %4760
  %4815 = trunc i64 %4814 to i32
  %4816 = xor i32 %4815, %4803
  %4817 = lshr i32 %4816, 4
  %4818 = trunc i32 %4817 to i8
  %4819 = and i8 %4818, 1
  store i8 %4819, i8* %79, align 1
  %4820 = icmp eq i32 %4803, 0
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %82, align 1
  %4822 = lshr i32 %4803, 31
  %4823 = trunc i32 %4822 to i8
  store i8 %4823, i8* %85, align 1
  %4824 = lshr i32 %4802, 31
  %4825 = xor i32 %4822, %4778
  %4826 = xor i32 %4822, %4824
  %4827 = add nuw nsw i32 %4825, %4826
  %4828 = icmp eq i32 %4827, 2
  %4829 = zext i1 %4828 to i8
  store i8 %4829, i8* %91, align 1
  %4830 = load i64, i64* %RBP.i, align 8
  %4831 = add i64 %4830, -60
  %4832 = add i64 %392, 1882
  store i64 %4832, i64* %3, align 8
  %4833 = inttoptr i64 %4831 to i32*
  %4834 = load i32, i32* %4833, align 4
  %4835 = add i32 %4834, %4803
  %4836 = zext i32 %4835 to i64
  store i64 %4836, i64* %RDX.i2544, align 8
  %4837 = icmp ult i32 %4835, %4803
  %4838 = icmp ult i32 %4835, %4834
  %4839 = or i1 %4837, %4838
  %4840 = zext i1 %4839 to i8
  store i8 %4840, i8* %68, align 1
  %4841 = and i32 %4835, 255
  %4842 = tail call i32 @llvm.ctpop.i32(i32 %4841)
  %4843 = trunc i32 %4842 to i8
  %4844 = and i8 %4843, 1
  %4845 = xor i8 %4844, 1
  store i8 %4845, i8* %74, align 1
  %4846 = xor i32 %4834, %4803
  %4847 = xor i32 %4846, %4835
  %4848 = lshr i32 %4847, 4
  %4849 = trunc i32 %4848 to i8
  %4850 = and i8 %4849, 1
  store i8 %4850, i8* %79, align 1
  %4851 = icmp eq i32 %4835, 0
  %4852 = zext i1 %4851 to i8
  store i8 %4852, i8* %82, align 1
  %4853 = lshr i32 %4835, 31
  %4854 = trunc i32 %4853 to i8
  store i8 %4854, i8* %85, align 1
  %4855 = lshr i32 %4834, 31
  %4856 = xor i32 %4853, %4822
  %4857 = xor i32 %4853, %4855
  %4858 = add nuw nsw i32 %4856, %4857
  %4859 = icmp eq i32 %4858, 2
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %91, align 1
  %4861 = sext i32 %4835 to i64
  store i64 %4861, i64* %RCX.i2541, align 8
  %4862 = load i64, i64* %RAX.i2556, align 8
  %4863 = shl nsw i64 %4861, 2
  %4864 = add i64 %4863, %4862
  %4865 = add i64 %392, 1890
  store i64 %4865, i64* %3, align 8
  %4866 = load <2 x float>, <2 x float>* %206, align 1
  %4867 = load <2 x i32>, <2 x i32>* %207, align 1
  %4868 = inttoptr i64 %4864 to float*
  %4869 = load float, float* %4868, align 4
  %4870 = extractelement <2 x float> %4866, i32 0
  %4871 = fmul float %4870, %4869
  store float %4871, float* %199, align 1
  %4872 = bitcast <2 x float> %4866 to <2 x i32>
  %4873 = extractelement <2 x i32> %4872, i32 1
  store i32 %4873, i32* %208, align 1
  %4874 = extractelement <2 x i32> %4867, i32 0
  store i32 %4874, i32* %209, align 1
  %4875 = extractelement <2 x i32> %4867, i32 1
  store i32 %4875, i32* %210, align 1
  %4876 = load <2 x float>, <2 x float>* %191, align 1
  %4877 = load <2 x i32>, <2 x i32>* %196, align 1
  %4878 = load <2 x float>, <2 x float>* %206, align 1
  %4879 = extractelement <2 x float> %4876, i32 0
  %4880 = extractelement <2 x float> %4878, i32 0
  %4881 = fadd float %4879, %4880
  store float %4881, float* %192, align 1
  %4882 = bitcast <2 x float> %4876 to <2 x i32>
  %4883 = extractelement <2 x i32> %4882, i32 1
  store i32 %4883, i32* %187, align 1
  %4884 = extractelement <2 x i32> %4877, i32 0
  store i32 %4884, i32* %188, align 1
  %4885 = extractelement <2 x i32> %4877, i32 1
  store i32 %4885, i32* %190, align 1
  %4886 = add i64 %4830, -32
  %4887 = add i64 %392, 1898
  store i64 %4887, i64* %3, align 8
  %4888 = inttoptr i64 %4886 to i64*
  %4889 = load i64, i64* %4888, align 8
  store i64 %4889, i64* %RAX.i2556, align 8
  %4890 = add i64 %392, 1901
  store i64 %4890, i64* %3, align 8
  %4891 = inttoptr i64 %4889 to i64*
  %4892 = load i64, i64* %4891, align 8
  store i64 %4892, i64* %RAX.i2556, align 8
  %4893 = add i64 %392, 1905
  store i64 %4893, i64* %3, align 8
  %4894 = load i64, i64* %4888, align 8
  store i64 %4894, i64* %RCX.i2541, align 8
  %4895 = add i64 %4894, 12
  %4896 = add i64 %392, 1908
  store i64 %4896, i64* %3, align 8
  %4897 = inttoptr i64 %4895 to i32*
  %4898 = load i32, i32* %4897, align 4
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RDX.i2544, align 8
  %4900 = load i64, i64* %RBP.i, align 8
  %4901 = add i64 %4900, -32
  %4902 = add i64 %392, 1915
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4901 to i64*
  %4904 = load i64, i64* %4903, align 8
  store i64 %4904, i64* %RCX.i2541, align 8
  %4905 = add i64 %4904, 16
  %4906 = add i64 %392, 1919
  store i64 %4906, i64* %3, align 8
  %4907 = inttoptr i64 %4905 to i32*
  %4908 = load i32, i32* %4907, align 4
  %4909 = sext i32 %4898 to i64
  %4910 = sext i32 %4908 to i64
  %4911 = mul nsw i64 %4910, %4909
  %4912 = trunc i64 %4911 to i32
  %4913 = and i64 %4911, 4294967295
  store i64 %4913, i64* %RDX.i2544, align 8
  %4914 = shl i64 %4911, 32
  %4915 = ashr exact i64 %4914, 32
  %4916 = icmp ne i64 %4915, %4911
  %4917 = zext i1 %4916 to i8
  store i8 %4917, i8* %68, align 1
  %4918 = and i32 %4912, 255
  %4919 = tail call i32 @llvm.ctpop.i32(i32 %4918)
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = xor i8 %4921, 1
  store i8 %4922, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4923 = lshr i32 %4912, 31
  %4924 = trunc i32 %4923 to i8
  store i8 %4924, i8* %85, align 1
  store i8 %4917, i8* %91, align 1
  %4925 = add i64 %392, 1923
  store i64 %4925, i64* %3, align 8
  %4926 = load i64, i64* %4903, align 8
  store i64 %4926, i64* %RCX.i2541, align 8
  %4927 = add i64 %4926, 20
  %4928 = add i64 %392, 1927
  store i64 %4928, i64* %3, align 8
  %4929 = inttoptr i64 %4927 to i32*
  %4930 = load i32, i32* %4929, align 4
  %4931 = sext i32 %4930 to i64
  %4932 = mul nsw i64 %4931, %4915
  %4933 = trunc i64 %4932 to i32
  %4934 = and i64 %4932, 4294967295
  store i64 %4934, i64* %RDX.i2544, align 8
  %4935 = shl i64 %4932, 32
  %4936 = ashr exact i64 %4935, 32
  %4937 = icmp ne i64 %4936, %4932
  %4938 = zext i1 %4937 to i8
  store i8 %4938, i8* %68, align 1
  %4939 = and i32 %4933, 255
  %4940 = tail call i32 @llvm.ctpop.i32(i32 %4939)
  %4941 = trunc i32 %4940 to i8
  %4942 = and i8 %4941, 1
  %4943 = xor i8 %4942, 1
  store i8 %4943, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4944 = lshr i32 %4933, 31
  %4945 = trunc i32 %4944 to i8
  store i8 %4945, i8* %85, align 1
  store i8 %4938, i8* %91, align 1
  %4946 = add i64 %4900, -52
  %4947 = add i64 %392, 1930
  store i64 %4947, i64* %3, align 8
  %4948 = inttoptr i64 %4946 to i32*
  %4949 = load i32, i32* %4948, align 4
  %4950 = zext i32 %4949 to i64
  store i64 %4950, i64* %RSI.i2547, align 8
  %4951 = add i64 %392, 1934
  store i64 %4951, i64* %3, align 8
  %4952 = load i64, i64* %4903, align 8
  store i64 %4952, i64* %RCX.i2541, align 8
  %4953 = add i64 %4952, 16
  %4954 = add i64 %392, 1938
  store i64 %4954, i64* %3, align 8
  %4955 = inttoptr i64 %4953 to i32*
  %4956 = load i32, i32* %4955, align 4
  %4957 = sext i32 %4949 to i64
  %4958 = sext i32 %4956 to i64
  %4959 = mul nsw i64 %4958, %4957
  %4960 = trunc i64 %4959 to i32
  %4961 = and i64 %4959, 4294967295
  store i64 %4961, i64* %RSI.i2547, align 8
  %4962 = shl i64 %4959, 32
  %4963 = ashr exact i64 %4962, 32
  %4964 = icmp ne i64 %4963, %4959
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %68, align 1
  %4966 = and i32 %4960, 255
  %4967 = tail call i32 @llvm.ctpop.i32(i32 %4966)
  %4968 = trunc i32 %4967 to i8
  %4969 = and i8 %4968, 1
  %4970 = xor i8 %4969, 1
  store i8 %4970, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4971 = lshr i32 %4960, 31
  %4972 = trunc i32 %4971 to i8
  store i8 %4972, i8* %85, align 1
  store i8 %4965, i8* %91, align 1
  %4973 = load i64, i64* %RBP.i, align 8
  %4974 = add i64 %4973, -32
  %4975 = add i64 %392, 1942
  store i64 %4975, i64* %3, align 8
  %4976 = inttoptr i64 %4974 to i64*
  %4977 = load i64, i64* %4976, align 8
  store i64 %4977, i64* %RCX.i2541, align 8
  %4978 = add i64 %4977, 20
  %4979 = add i64 %392, 1946
  store i64 %4979, i64* %3, align 8
  %4980 = inttoptr i64 %4978 to i32*
  %4981 = load i32, i32* %4980, align 4
  %4982 = sext i32 %4981 to i64
  %4983 = mul nsw i64 %4982, %4963
  %4984 = and i64 %4983, 4294967295
  store i64 %4984, i64* %RSI.i2547, align 8
  %4985 = trunc i64 %4983 to i32
  %4986 = add i32 %4985, %4933
  %4987 = zext i32 %4986 to i64
  store i64 %4987, i64* %RDX.i2544, align 8
  %4988 = icmp ult i32 %4986, %4933
  %4989 = icmp ult i32 %4986, %4985
  %4990 = or i1 %4988, %4989
  %4991 = zext i1 %4990 to i8
  store i8 %4991, i8* %68, align 1
  %4992 = and i32 %4986, 255
  %4993 = tail call i32 @llvm.ctpop.i32(i32 %4992)
  %4994 = trunc i32 %4993 to i8
  %4995 = and i8 %4994, 1
  %4996 = xor i8 %4995, 1
  store i8 %4996, i8* %74, align 1
  %4997 = xor i64 %4983, %4932
  %4998 = trunc i64 %4997 to i32
  %4999 = xor i32 %4998, %4986
  %5000 = lshr i32 %4999, 4
  %5001 = trunc i32 %5000 to i8
  %5002 = and i8 %5001, 1
  store i8 %5002, i8* %79, align 1
  %5003 = icmp eq i32 %4986, 0
  %5004 = zext i1 %5003 to i8
  store i8 %5004, i8* %82, align 1
  %5005 = lshr i32 %4986, 31
  %5006 = trunc i32 %5005 to i8
  store i8 %5006, i8* %85, align 1
  %5007 = lshr i32 %4985, 31
  %5008 = xor i32 %5005, %4944
  %5009 = xor i32 %5005, %5007
  %5010 = add nuw nsw i32 %5008, %5009
  %5011 = icmp eq i32 %5010, 2
  %5012 = zext i1 %5011 to i8
  store i8 %5012, i8* %91, align 1
  %5013 = add i64 %4973, -56
  %5014 = add i64 %392, 1951
  store i64 %5014, i64* %3, align 8
  %5015 = inttoptr i64 %5013 to i32*
  %5016 = load i32, i32* %5015, align 4
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RSI.i2547, align 8
  %5018 = add i64 %392, 1955
  store i64 %5018, i64* %3, align 8
  %5019 = load i64, i64* %4976, align 8
  store i64 %5019, i64* %RCX.i2541, align 8
  %5020 = add i64 %5019, 20
  %5021 = add i64 %392, 1959
  store i64 %5021, i64* %3, align 8
  %5022 = inttoptr i64 %5020 to i32*
  %5023 = load i32, i32* %5022, align 4
  %5024 = sext i32 %5016 to i64
  %5025 = sext i32 %5023 to i64
  %5026 = mul nsw i64 %5025, %5024
  %5027 = and i64 %5026, 4294967295
  store i64 %5027, i64* %RSI.i2547, align 8
  %5028 = trunc i64 %5026 to i32
  %5029 = add i32 %5028, %4986
  %5030 = zext i32 %5029 to i64
  store i64 %5030, i64* %RDX.i2544, align 8
  %5031 = icmp ult i32 %5029, %4986
  %5032 = icmp ult i32 %5029, %5028
  %5033 = or i1 %5031, %5032
  %5034 = zext i1 %5033 to i8
  store i8 %5034, i8* %68, align 1
  %5035 = and i32 %5029, 255
  %5036 = tail call i32 @llvm.ctpop.i32(i32 %5035)
  %5037 = trunc i32 %5036 to i8
  %5038 = and i8 %5037, 1
  %5039 = xor i8 %5038, 1
  store i8 %5039, i8* %74, align 1
  %5040 = xor i64 %5026, %4987
  %5041 = trunc i64 %5040 to i32
  %5042 = xor i32 %5041, %5029
  %5043 = lshr i32 %5042, 4
  %5044 = trunc i32 %5043 to i8
  %5045 = and i8 %5044, 1
  store i8 %5045, i8* %79, align 1
  %5046 = icmp eq i32 %5029, 0
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %82, align 1
  %5048 = lshr i32 %5029, 31
  %5049 = trunc i32 %5048 to i8
  store i8 %5049, i8* %85, align 1
  %5050 = lshr i32 %5028, 31
  %5051 = xor i32 %5048, %5005
  %5052 = xor i32 %5048, %5050
  %5053 = add nuw nsw i32 %5051, %5052
  %5054 = icmp eq i32 %5053, 2
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %91, align 1
  %5056 = load i64, i64* %RBP.i, align 8
  %5057 = add i64 %5056, -60
  %5058 = add i64 %392, 1964
  store i64 %5058, i64* %3, align 8
  %5059 = inttoptr i64 %5057 to i32*
  %5060 = load i32, i32* %5059, align 4
  %5061 = add i32 %5060, %5029
  %5062 = zext i32 %5061 to i64
  store i64 %5062, i64* %RDX.i2544, align 8
  %5063 = icmp ult i32 %5061, %5029
  %5064 = icmp ult i32 %5061, %5060
  %5065 = or i1 %5063, %5064
  %5066 = zext i1 %5065 to i8
  store i8 %5066, i8* %68, align 1
  %5067 = and i32 %5061, 255
  %5068 = tail call i32 @llvm.ctpop.i32(i32 %5067)
  %5069 = trunc i32 %5068 to i8
  %5070 = and i8 %5069, 1
  %5071 = xor i8 %5070, 1
  store i8 %5071, i8* %74, align 1
  %5072 = xor i32 %5060, %5029
  %5073 = xor i32 %5072, %5061
  %5074 = lshr i32 %5073, 4
  %5075 = trunc i32 %5074 to i8
  %5076 = and i8 %5075, 1
  store i8 %5076, i8* %79, align 1
  %5077 = icmp eq i32 %5061, 0
  %5078 = zext i1 %5077 to i8
  store i8 %5078, i8* %82, align 1
  %5079 = lshr i32 %5061, 31
  %5080 = trunc i32 %5079 to i8
  store i8 %5080, i8* %85, align 1
  %5081 = lshr i32 %5060, 31
  %5082 = xor i32 %5079, %5048
  %5083 = xor i32 %5079, %5081
  %5084 = add nuw nsw i32 %5082, %5083
  %5085 = icmp eq i32 %5084, 2
  %5086 = zext i1 %5085 to i8
  store i8 %5086, i8* %91, align 1
  %5087 = sext i32 %5061 to i64
  store i64 %5087, i64* %RCX.i2541, align 8
  %5088 = load i64, i64* %RAX.i2556, align 8
  %5089 = shl nsw i64 %5087, 2
  %5090 = add i64 %5089, %5088
  %5091 = add i64 %392, 1972
  store i64 %5091, i64* %3, align 8
  %5092 = inttoptr i64 %5090 to i32*
  %5093 = load i32, i32* %5092, align 4
  store i32 %5093, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %5094 = add i64 %5056, -40
  %5095 = add i64 %392, 1976
  store i64 %5095, i64* %3, align 8
  %5096 = inttoptr i64 %5094 to i64*
  %5097 = load i64, i64* %5096, align 8
  store i64 %5097, i64* %RAX.i2556, align 8
  %5098 = add i64 %392, 1979
  store i64 %5098, i64* %3, align 8
  %5099 = inttoptr i64 %5097 to i64*
  %5100 = load i64, i64* %5099, align 8
  store i64 %5100, i64* %RAX.i2556, align 8
  %5101 = add i64 %392, 1983
  store i64 %5101, i64* %3, align 8
  %5102 = load i64, i64* %5096, align 8
  store i64 %5102, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5103 = add i64 %392, 1991
  store i64 %5103, i64* %3, align 8
  %5104 = load i64, i64* %5096, align 8
  store i64 %5104, i64* %RCX.i2541, align 8
  %5105 = add i64 %392, 1995
  store i64 %5105, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5106 = add i64 %392, 1999
  store i64 %5106, i64* %3, align 8
  %5107 = load i64, i64* %5096, align 8
  store i64 %5107, i64* %RCX.i2541, align 8
  %5108 = add i64 %392, 2003
  store i64 %5108, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5109 = load i64, i64* %RBP.i, align 8
  %5110 = add i64 %5109, -52
  %5111 = add i64 %392, 2006
  store i64 %5111, i64* %3, align 8
  %5112 = inttoptr i64 %5110 to i32*
  %5113 = load i32, i32* %5112, align 4
  %5114 = zext i32 %5113 to i64
  store i64 %5114, i64* %RSI.i2547, align 8
  %5115 = add i64 %5109, -40
  %5116 = add i64 %392, 2010
  store i64 %5116, i64* %3, align 8
  %5117 = inttoptr i64 %5115 to i64*
  %5118 = load i64, i64* %5117, align 8
  store i64 %5118, i64* %RCX.i2541, align 8
  %5119 = add i64 %5118, 16
  %5120 = add i64 %392, 2014
  store i64 %5120, i64* %3, align 8
  %5121 = inttoptr i64 %5119 to i32*
  %5122 = load i32, i32* %5121, align 4
  %5123 = sext i32 %5113 to i64
  %5124 = sext i32 %5122 to i64
  %5125 = mul nsw i64 %5124, %5123
  %5126 = trunc i64 %5125 to i32
  %5127 = and i64 %5125, 4294967295
  store i64 %5127, i64* %RSI.i2547, align 8
  %5128 = shl i64 %5125, 32
  %5129 = ashr exact i64 %5128, 32
  %5130 = icmp ne i64 %5129, %5125
  %5131 = zext i1 %5130 to i8
  store i8 %5131, i8* %68, align 1
  %5132 = and i32 %5126, 255
  %5133 = tail call i32 @llvm.ctpop.i32(i32 %5132)
  %5134 = trunc i32 %5133 to i8
  %5135 = and i8 %5134, 1
  %5136 = xor i8 %5135, 1
  store i8 %5136, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5137 = lshr i32 %5126, 31
  %5138 = trunc i32 %5137 to i8
  store i8 %5138, i8* %85, align 1
  store i8 %5131, i8* %91, align 1
  %5139 = add i64 %392, 2018
  store i64 %5139, i64* %3, align 8
  %5140 = load i64, i64* %5117, align 8
  store i64 %5140, i64* %RCX.i2541, align 8
  %5141 = add i64 %5140, 20
  %5142 = add i64 %392, 2022
  store i64 %5142, i64* %3, align 8
  %5143 = inttoptr i64 %5141 to i32*
  %5144 = load i32, i32* %5143, align 4
  %5145 = sext i32 %5144 to i64
  %5146 = mul nsw i64 %5145, %5129
  %5147 = and i64 %5146, 4294967295
  store i64 %5147, i64* %RSI.i2547, align 8
  %5148 = trunc i64 %5146 to i32
  store i64 %5147, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5149 = and i32 %5148, 255
  %5150 = tail call i32 @llvm.ctpop.i32(i32 %5149)
  %5151 = trunc i32 %5150 to i8
  %5152 = and i8 %5151, 1
  %5153 = xor i8 %5152, 1
  store i8 %5153, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5154 = icmp eq i32 %5148, 0
  %5155 = zext i1 %5154 to i8
  store i8 %5155, i8* %82, align 1
  %5156 = lshr i32 %5148, 31
  %5157 = trunc i32 %5156 to i8
  store i8 %5157, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5158 = add i64 %5109, -56
  %5159 = add i64 %392, 2027
  store i64 %5159, i64* %3, align 8
  %5160 = inttoptr i64 %5158 to i32*
  %5161 = load i32, i32* %5160, align 4
  %5162 = add i32 %5161, -1
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RSI.i2547, align 8
  %5164 = icmp eq i32 %5161, 0
  %5165 = zext i1 %5164 to i8
  store i8 %5165, i8* %68, align 1
  %5166 = and i32 %5162, 255
  %5167 = tail call i32 @llvm.ctpop.i32(i32 %5166)
  %5168 = trunc i32 %5167 to i8
  %5169 = and i8 %5168, 1
  %5170 = xor i8 %5169, 1
  store i8 %5170, i8* %74, align 1
  %5171 = xor i32 %5161, %5162
  %5172 = lshr i32 %5171, 4
  %5173 = trunc i32 %5172 to i8
  %5174 = and i8 %5173, 1
  store i8 %5174, i8* %79, align 1
  %5175 = icmp eq i32 %5162, 0
  %5176 = zext i1 %5175 to i8
  store i8 %5176, i8* %82, align 1
  %5177 = lshr i32 %5162, 31
  %5178 = trunc i32 %5177 to i8
  store i8 %5178, i8* %85, align 1
  %5179 = lshr i32 %5161, 31
  %5180 = xor i32 %5177, %5179
  %5181 = add nuw nsw i32 %5180, %5179
  %5182 = icmp eq i32 %5181, 2
  %5183 = zext i1 %5182 to i8
  store i8 %5183, i8* %91, align 1
  %5184 = load i64, i64* %RBP.i, align 8
  %5185 = add i64 %5184, -40
  %5186 = add i64 %392, 2034
  store i64 %5186, i64* %3, align 8
  %5187 = inttoptr i64 %5185 to i64*
  %5188 = load i64, i64* %5187, align 8
  store i64 %5188, i64* %RCX.i2541, align 8
  %5189 = add i64 %5188, 20
  %5190 = add i64 %392, 2038
  store i64 %5190, i64* %3, align 8
  %5191 = inttoptr i64 %5189 to i32*
  %5192 = load i32, i32* %5191, align 4
  %5193 = sext i32 %5162 to i64
  %5194 = sext i32 %5192 to i64
  %5195 = mul nsw i64 %5194, %5193
  %5196 = and i64 %5195, 4294967295
  store i64 %5196, i64* %RSI.i2547, align 8
  %5197 = trunc i64 %5195 to i32
  %5198 = add i32 %5197, %5148
  %5199 = zext i32 %5198 to i64
  store i64 %5199, i64* %RDX.i2544, align 8
  %5200 = icmp ult i32 %5198, %5148
  %5201 = icmp ult i32 %5198, %5197
  %5202 = or i1 %5200, %5201
  %5203 = zext i1 %5202 to i8
  store i8 %5203, i8* %68, align 1
  %5204 = and i32 %5198, 255
  %5205 = tail call i32 @llvm.ctpop.i32(i32 %5204)
  %5206 = trunc i32 %5205 to i8
  %5207 = and i8 %5206, 1
  %5208 = xor i8 %5207, 1
  store i8 %5208, i8* %74, align 1
  %5209 = xor i64 %5195, %5146
  %5210 = trunc i64 %5209 to i32
  %5211 = xor i32 %5210, %5198
  %5212 = lshr i32 %5211, 4
  %5213 = trunc i32 %5212 to i8
  %5214 = and i8 %5213, 1
  store i8 %5214, i8* %79, align 1
  %5215 = icmp eq i32 %5198, 0
  %5216 = zext i1 %5215 to i8
  store i8 %5216, i8* %82, align 1
  %5217 = lshr i32 %5198, 31
  %5218 = trunc i32 %5217 to i8
  store i8 %5218, i8* %85, align 1
  %5219 = lshr i32 %5197, 31
  %5220 = xor i32 %5217, %5156
  %5221 = xor i32 %5217, %5219
  %5222 = add nuw nsw i32 %5220, %5221
  %5223 = icmp eq i32 %5222, 2
  %5224 = zext i1 %5223 to i8
  store i8 %5224, i8* %91, align 1
  %5225 = add i64 %5184, -60
  %5226 = add i64 %392, 2043
  store i64 %5226, i64* %3, align 8
  %5227 = inttoptr i64 %5225 to i32*
  %5228 = load i32, i32* %5227, align 4
  %5229 = add i32 %5228, %5198
  %5230 = zext i32 %5229 to i64
  store i64 %5230, i64* %RDX.i2544, align 8
  %5231 = icmp ult i32 %5229, %5198
  %5232 = icmp ult i32 %5229, %5228
  %5233 = or i1 %5231, %5232
  %5234 = zext i1 %5233 to i8
  store i8 %5234, i8* %68, align 1
  %5235 = and i32 %5229, 255
  %5236 = tail call i32 @llvm.ctpop.i32(i32 %5235)
  %5237 = trunc i32 %5236 to i8
  %5238 = and i8 %5237, 1
  %5239 = xor i8 %5238, 1
  store i8 %5239, i8* %74, align 1
  %5240 = xor i32 %5228, %5198
  %5241 = xor i32 %5240, %5229
  %5242 = lshr i32 %5241, 4
  %5243 = trunc i32 %5242 to i8
  %5244 = and i8 %5243, 1
  store i8 %5244, i8* %79, align 1
  %5245 = icmp eq i32 %5229, 0
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %82, align 1
  %5247 = lshr i32 %5229, 31
  %5248 = trunc i32 %5247 to i8
  store i8 %5248, i8* %85, align 1
  %5249 = lshr i32 %5228, 31
  %5250 = xor i32 %5247, %5217
  %5251 = xor i32 %5247, %5249
  %5252 = add nuw nsw i32 %5250, %5251
  %5253 = icmp eq i32 %5252, 2
  %5254 = zext i1 %5253 to i8
  store i8 %5254, i8* %91, align 1
  %5255 = sext i32 %5229 to i64
  store i64 %5255, i64* %RCX.i2541, align 8
  %5256 = load i64, i64* %RAX.i2556, align 8
  %5257 = shl nsw i64 %5255, 2
  %5258 = add i64 %5257, %5256
  %5259 = add i64 %392, 2051
  store i64 %5259, i64* %3, align 8
  %5260 = load <2 x float>, <2 x float>* %206, align 1
  %5261 = load <2 x i32>, <2 x i32>* %207, align 1
  %5262 = inttoptr i64 %5258 to float*
  %5263 = load float, float* %5262, align 4
  %5264 = extractelement <2 x float> %5260, i32 0
  %5265 = fmul float %5264, %5263
  store float %5265, float* %199, align 1
  %5266 = bitcast <2 x float> %5260 to <2 x i32>
  %5267 = extractelement <2 x i32> %5266, i32 1
  store i32 %5267, i32* %208, align 1
  %5268 = extractelement <2 x i32> %5261, i32 0
  store i32 %5268, i32* %209, align 1
  %5269 = extractelement <2 x i32> %5261, i32 1
  store i32 %5269, i32* %210, align 1
  %5270 = load <2 x float>, <2 x float>* %191, align 1
  %5271 = load <2 x i32>, <2 x i32>* %196, align 1
  %5272 = load <2 x float>, <2 x float>* %206, align 1
  %5273 = extractelement <2 x float> %5270, i32 0
  %5274 = extractelement <2 x float> %5272, i32 0
  %5275 = fadd float %5273, %5274
  store float %5275, float* %192, align 1
  %5276 = bitcast <2 x float> %5270 to <2 x i32>
  %5277 = extractelement <2 x i32> %5276, i32 1
  store i32 %5277, i32* %187, align 1
  %5278 = extractelement <2 x i32> %5271, i32 0
  store i32 %5278, i32* %188, align 1
  %5279 = extractelement <2 x i32> %5271, i32 1
  store i32 %5279, i32* %190, align 1
  %5280 = load i64, i64* %RBP.i, align 8
  %5281 = add i64 %5280, -32
  %5282 = add i64 %392, 2059
  store i64 %5282, i64* %3, align 8
  %5283 = inttoptr i64 %5281 to i64*
  %5284 = load i64, i64* %5283, align 8
  store i64 %5284, i64* %RAX.i2556, align 8
  %5285 = add i64 %392, 2062
  store i64 %5285, i64* %3, align 8
  %5286 = inttoptr i64 %5284 to i64*
  %5287 = load i64, i64* %5286, align 8
  store i64 %5287, i64* %RAX.i2556, align 8
  %5288 = add i64 %392, 2066
  store i64 %5288, i64* %3, align 8
  %5289 = load i64, i64* %5283, align 8
  store i64 %5289, i64* %RCX.i2541, align 8
  %5290 = add i64 %5289, 12
  %5291 = add i64 %392, 2069
  store i64 %5291, i64* %3, align 8
  %5292 = inttoptr i64 %5290 to i32*
  %5293 = load i32, i32* %5292, align 4
  %5294 = shl i32 %5293, 1
  %5295 = icmp slt i32 %5293, 0
  %5296 = icmp slt i32 %5294, 0
  %5297 = xor i1 %5295, %5296
  %5298 = zext i32 %5294 to i64
  store i64 %5298, i64* %RDX.i2544, align 8
  %.lobit11 = lshr i32 %5293, 31
  %5299 = trunc i32 %.lobit11 to i8
  store i8 %5299, i8* %68, align 1
  %5300 = and i32 %5294, 254
  %5301 = tail call i32 @llvm.ctpop.i32(i32 %5300)
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  store i8 %5304, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5305 = icmp eq i32 %5294, 0
  %5306 = zext i1 %5305 to i8
  store i8 %5306, i8* %82, align 1
  %5307 = lshr i32 %5293, 30
  %5308 = trunc i32 %5307 to i8
  %5309 = and i8 %5308, 1
  store i8 %5309, i8* %85, align 1
  %5310 = zext i1 %5297 to i8
  store i8 %5310, i8* %91, align 1
  %5311 = add i64 %392, 2076
  store i64 %5311, i64* %3, align 8
  %5312 = load i64, i64* %5283, align 8
  store i64 %5312, i64* %RCX.i2541, align 8
  %5313 = add i64 %5312, 16
  %5314 = add i64 %392, 2080
  store i64 %5314, i64* %3, align 8
  %5315 = inttoptr i64 %5313 to i32*
  %5316 = load i32, i32* %5315, align 4
  %5317 = sext i32 %5294 to i64
  %5318 = sext i32 %5316 to i64
  %5319 = mul nsw i64 %5318, %5317
  %5320 = trunc i64 %5319 to i32
  %5321 = and i64 %5319, 4294967294
  store i64 %5321, i64* %RDX.i2544, align 8
  %5322 = shl i64 %5319, 32
  %5323 = ashr exact i64 %5322, 32
  %5324 = icmp ne i64 %5323, %5319
  %5325 = zext i1 %5324 to i8
  store i8 %5325, i8* %68, align 1
  %5326 = and i32 %5320, 254
  %5327 = tail call i32 @llvm.ctpop.i32(i32 %5326)
  %5328 = trunc i32 %5327 to i8
  %5329 = and i8 %5328, 1
  %5330 = xor i8 %5329, 1
  store i8 %5330, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5331 = lshr i32 %5320, 31
  %5332 = trunc i32 %5331 to i8
  store i8 %5332, i8* %85, align 1
  store i8 %5325, i8* %91, align 1
  %5333 = add i64 %392, 2084
  store i64 %5333, i64* %3, align 8
  %5334 = load i64, i64* %5283, align 8
  store i64 %5334, i64* %RCX.i2541, align 8
  %5335 = add i64 %5334, 20
  %5336 = add i64 %392, 2088
  store i64 %5336, i64* %3, align 8
  %5337 = inttoptr i64 %5335 to i32*
  %5338 = load i32, i32* %5337, align 4
  %5339 = sext i32 %5338 to i64
  %5340 = mul nsw i64 %5339, %5323
  %5341 = trunc i64 %5340 to i32
  %5342 = and i64 %5340, 4294967295
  store i64 %5342, i64* %RDX.i2544, align 8
  %5343 = shl i64 %5340, 32
  %5344 = ashr exact i64 %5343, 32
  %5345 = icmp ne i64 %5344, %5340
  %5346 = zext i1 %5345 to i8
  store i8 %5346, i8* %68, align 1
  %5347 = and i32 %5341, 255
  %5348 = tail call i32 @llvm.ctpop.i32(i32 %5347)
  %5349 = trunc i32 %5348 to i8
  %5350 = and i8 %5349, 1
  %5351 = xor i8 %5350, 1
  store i8 %5351, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5352 = lshr i32 %5341, 31
  %5353 = trunc i32 %5352 to i8
  store i8 %5353, i8* %85, align 1
  store i8 %5346, i8* %91, align 1
  %5354 = load i64, i64* %RBP.i, align 8
  %5355 = add i64 %5354, -52
  %5356 = add i64 %392, 2091
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i32*
  %5358 = load i32, i32* %5357, align 4
  %5359 = zext i32 %5358 to i64
  store i64 %5359, i64* %RSI.i2547, align 8
  %5360 = add i64 %5354, -32
  %5361 = add i64 %392, 2095
  store i64 %5361, i64* %3, align 8
  %5362 = inttoptr i64 %5360 to i64*
  %5363 = load i64, i64* %5362, align 8
  store i64 %5363, i64* %RCX.i2541, align 8
  %5364 = add i64 %5363, 16
  %5365 = add i64 %392, 2099
  store i64 %5365, i64* %3, align 8
  %5366 = inttoptr i64 %5364 to i32*
  %5367 = load i32, i32* %5366, align 4
  %5368 = sext i32 %5358 to i64
  %5369 = sext i32 %5367 to i64
  %5370 = mul nsw i64 %5369, %5368
  %5371 = trunc i64 %5370 to i32
  %5372 = and i64 %5370, 4294967295
  store i64 %5372, i64* %RSI.i2547, align 8
  %5373 = shl i64 %5370, 32
  %5374 = ashr exact i64 %5373, 32
  %5375 = icmp ne i64 %5374, %5370
  %5376 = zext i1 %5375 to i8
  store i8 %5376, i8* %68, align 1
  %5377 = and i32 %5371, 255
  %5378 = tail call i32 @llvm.ctpop.i32(i32 %5377)
  %5379 = trunc i32 %5378 to i8
  %5380 = and i8 %5379, 1
  %5381 = xor i8 %5380, 1
  store i8 %5381, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5382 = lshr i32 %5371, 31
  %5383 = trunc i32 %5382 to i8
  store i8 %5383, i8* %85, align 1
  store i8 %5376, i8* %91, align 1
  %5384 = add i64 %392, 2103
  store i64 %5384, i64* %3, align 8
  %5385 = load i64, i64* %5362, align 8
  store i64 %5385, i64* %RCX.i2541, align 8
  %5386 = add i64 %5385, 20
  %5387 = add i64 %392, 2107
  store i64 %5387, i64* %3, align 8
  %5388 = inttoptr i64 %5386 to i32*
  %5389 = load i32, i32* %5388, align 4
  %5390 = sext i32 %5389 to i64
  %5391 = mul nsw i64 %5390, %5374
  %5392 = and i64 %5391, 4294967295
  store i64 %5392, i64* %RSI.i2547, align 8
  %5393 = trunc i64 %5391 to i32
  %5394 = add i32 %5393, %5341
  %5395 = zext i32 %5394 to i64
  store i64 %5395, i64* %RDX.i2544, align 8
  %5396 = icmp ult i32 %5394, %5341
  %5397 = icmp ult i32 %5394, %5393
  %5398 = or i1 %5396, %5397
  %5399 = zext i1 %5398 to i8
  store i8 %5399, i8* %68, align 1
  %5400 = and i32 %5394, 255
  %5401 = tail call i32 @llvm.ctpop.i32(i32 %5400)
  %5402 = trunc i32 %5401 to i8
  %5403 = and i8 %5402, 1
  %5404 = xor i8 %5403, 1
  store i8 %5404, i8* %74, align 1
  %5405 = xor i64 %5391, %5340
  %5406 = trunc i64 %5405 to i32
  %5407 = xor i32 %5406, %5394
  %5408 = lshr i32 %5407, 4
  %5409 = trunc i32 %5408 to i8
  %5410 = and i8 %5409, 1
  store i8 %5410, i8* %79, align 1
  %5411 = icmp eq i32 %5394, 0
  %5412 = zext i1 %5411 to i8
  store i8 %5412, i8* %82, align 1
  %5413 = lshr i32 %5394, 31
  %5414 = trunc i32 %5413 to i8
  store i8 %5414, i8* %85, align 1
  %5415 = lshr i32 %5393, 31
  %5416 = xor i32 %5413, %5352
  %5417 = xor i32 %5413, %5415
  %5418 = add nuw nsw i32 %5416, %5417
  %5419 = icmp eq i32 %5418, 2
  %5420 = zext i1 %5419 to i8
  store i8 %5420, i8* %91, align 1
  %5421 = load i64, i64* %RBP.i, align 8
  %5422 = add i64 %5421, -56
  %5423 = add i64 %392, 2112
  store i64 %5423, i64* %3, align 8
  %5424 = inttoptr i64 %5422 to i32*
  %5425 = load i32, i32* %5424, align 4
  %5426 = zext i32 %5425 to i64
  store i64 %5426, i64* %RSI.i2547, align 8
  %5427 = add i64 %5421, -32
  %5428 = add i64 %392, 2116
  store i64 %5428, i64* %3, align 8
  %5429 = inttoptr i64 %5427 to i64*
  %5430 = load i64, i64* %5429, align 8
  store i64 %5430, i64* %RCX.i2541, align 8
  %5431 = add i64 %5430, 20
  %5432 = add i64 %392, 2120
  store i64 %5432, i64* %3, align 8
  %5433 = inttoptr i64 %5431 to i32*
  %5434 = load i32, i32* %5433, align 4
  %5435 = sext i32 %5425 to i64
  %5436 = sext i32 %5434 to i64
  %5437 = mul nsw i64 %5436, %5435
  %5438 = and i64 %5437, 4294967295
  store i64 %5438, i64* %RSI.i2547, align 8
  %5439 = trunc i64 %5437 to i32
  %5440 = add i32 %5439, %5394
  %5441 = zext i32 %5440 to i64
  store i64 %5441, i64* %RDX.i2544, align 8
  %5442 = icmp ult i32 %5440, %5394
  %5443 = icmp ult i32 %5440, %5439
  %5444 = or i1 %5442, %5443
  %5445 = zext i1 %5444 to i8
  store i8 %5445, i8* %68, align 1
  %5446 = and i32 %5440, 255
  %5447 = tail call i32 @llvm.ctpop.i32(i32 %5446)
  %5448 = trunc i32 %5447 to i8
  %5449 = and i8 %5448, 1
  %5450 = xor i8 %5449, 1
  store i8 %5450, i8* %74, align 1
  %5451 = xor i64 %5437, %5395
  %5452 = trunc i64 %5451 to i32
  %5453 = xor i32 %5452, %5440
  %5454 = lshr i32 %5453, 4
  %5455 = trunc i32 %5454 to i8
  %5456 = and i8 %5455, 1
  store i8 %5456, i8* %79, align 1
  %5457 = icmp eq i32 %5440, 0
  %5458 = zext i1 %5457 to i8
  store i8 %5458, i8* %82, align 1
  %5459 = lshr i32 %5440, 31
  %5460 = trunc i32 %5459 to i8
  store i8 %5460, i8* %85, align 1
  %5461 = lshr i32 %5439, 31
  %5462 = xor i32 %5459, %5413
  %5463 = xor i32 %5459, %5461
  %5464 = add nuw nsw i32 %5462, %5463
  %5465 = icmp eq i32 %5464, 2
  %5466 = zext i1 %5465 to i8
  store i8 %5466, i8* %91, align 1
  %5467 = add i64 %5421, -60
  %5468 = add i64 %392, 2125
  store i64 %5468, i64* %3, align 8
  %5469 = inttoptr i64 %5467 to i32*
  %5470 = load i32, i32* %5469, align 4
  %5471 = add i32 %5470, %5440
  %5472 = zext i32 %5471 to i64
  store i64 %5472, i64* %RDX.i2544, align 8
  %5473 = icmp ult i32 %5471, %5440
  %5474 = icmp ult i32 %5471, %5470
  %5475 = or i1 %5473, %5474
  %5476 = zext i1 %5475 to i8
  store i8 %5476, i8* %68, align 1
  %5477 = and i32 %5471, 255
  %5478 = tail call i32 @llvm.ctpop.i32(i32 %5477)
  %5479 = trunc i32 %5478 to i8
  %5480 = and i8 %5479, 1
  %5481 = xor i8 %5480, 1
  store i8 %5481, i8* %74, align 1
  %5482 = xor i32 %5470, %5440
  %5483 = xor i32 %5482, %5471
  %5484 = lshr i32 %5483, 4
  %5485 = trunc i32 %5484 to i8
  %5486 = and i8 %5485, 1
  store i8 %5486, i8* %79, align 1
  %5487 = icmp eq i32 %5471, 0
  %5488 = zext i1 %5487 to i8
  store i8 %5488, i8* %82, align 1
  %5489 = lshr i32 %5471, 31
  %5490 = trunc i32 %5489 to i8
  store i8 %5490, i8* %85, align 1
  %5491 = lshr i32 %5470, 31
  %5492 = xor i32 %5489, %5459
  %5493 = xor i32 %5489, %5491
  %5494 = add nuw nsw i32 %5492, %5493
  %5495 = icmp eq i32 %5494, 2
  %5496 = zext i1 %5495 to i8
  store i8 %5496, i8* %91, align 1
  %5497 = sext i32 %5471 to i64
  store i64 %5497, i64* %RCX.i2541, align 8
  %5498 = load i64, i64* %RAX.i2556, align 8
  %5499 = shl nsw i64 %5497, 2
  %5500 = add i64 %5499, %5498
  %5501 = add i64 %392, 2133
  store i64 %5501, i64* %3, align 8
  %5502 = inttoptr i64 %5500 to i32*
  %5503 = load i32, i32* %5502, align 4
  store i32 %5503, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %5504 = load i64, i64* %RBP.i, align 8
  %5505 = add i64 %5504, -40
  %5506 = add i64 %392, 2137
  store i64 %5506, i64* %3, align 8
  %5507 = inttoptr i64 %5505 to i64*
  %5508 = load i64, i64* %5507, align 8
  store i64 %5508, i64* %RAX.i2556, align 8
  %5509 = add i64 %392, 2140
  store i64 %5509, i64* %3, align 8
  %5510 = inttoptr i64 %5508 to i64*
  %5511 = load i64, i64* %5510, align 8
  store i64 %5511, i64* %RAX.i2556, align 8
  %5512 = add i64 %392, 2144
  store i64 %5512, i64* %3, align 8
  %5513 = load i64, i64* %5507, align 8
  store i64 %5513, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5514 = add i64 %392, 2152
  store i64 %5514, i64* %3, align 8
  %5515 = load i64, i64* %5507, align 8
  store i64 %5515, i64* %RCX.i2541, align 8
  %5516 = add i64 %392, 2156
  store i64 %5516, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5517 = add i64 %392, 2160
  store i64 %5517, i64* %3, align 8
  %5518 = load i64, i64* %5507, align 8
  store i64 %5518, i64* %RCX.i2541, align 8
  %5519 = add i64 %392, 2164
  store i64 %5519, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5520 = add i64 %5504, -52
  %5521 = add i64 %392, 2167
  store i64 %5521, i64* %3, align 8
  %5522 = inttoptr i64 %5520 to i32*
  %5523 = load i32, i32* %5522, align 4
  %5524 = zext i32 %5523 to i64
  store i64 %5524, i64* %RSI.i2547, align 8
  %5525 = add i64 %392, 2171
  store i64 %5525, i64* %3, align 8
  %5526 = load i64, i64* %5507, align 8
  store i64 %5526, i64* %RCX.i2541, align 8
  %5527 = add i64 %5526, 16
  %5528 = add i64 %392, 2175
  store i64 %5528, i64* %3, align 8
  %5529 = inttoptr i64 %5527 to i32*
  %5530 = load i32, i32* %5529, align 4
  %5531 = sext i32 %5523 to i64
  %5532 = sext i32 %5530 to i64
  %5533 = mul nsw i64 %5532, %5531
  %5534 = trunc i64 %5533 to i32
  %5535 = and i64 %5533, 4294967295
  store i64 %5535, i64* %RSI.i2547, align 8
  %5536 = shl i64 %5533, 32
  %5537 = ashr exact i64 %5536, 32
  %5538 = icmp ne i64 %5537, %5533
  %5539 = zext i1 %5538 to i8
  store i8 %5539, i8* %68, align 1
  %5540 = and i32 %5534, 255
  %5541 = tail call i32 @llvm.ctpop.i32(i32 %5540)
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = xor i8 %5543, 1
  store i8 %5544, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5545 = lshr i32 %5534, 31
  %5546 = trunc i32 %5545 to i8
  store i8 %5546, i8* %85, align 1
  store i8 %5539, i8* %91, align 1
  %5547 = add i64 %392, 2179
  store i64 %5547, i64* %3, align 8
  %5548 = load i64, i64* %5507, align 8
  store i64 %5548, i64* %RCX.i2541, align 8
  %5549 = add i64 %5548, 20
  %5550 = add i64 %392, 2183
  store i64 %5550, i64* %3, align 8
  %5551 = inttoptr i64 %5549 to i32*
  %5552 = load i32, i32* %5551, align 4
  %5553 = sext i32 %5552 to i64
  %5554 = mul nsw i64 %5553, %5537
  %5555 = and i64 %5554, 4294967295
  store i64 %5555, i64* %RSI.i2547, align 8
  %5556 = trunc i64 %5554 to i32
  store i64 %5555, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5557 = and i32 %5556, 255
  %5558 = tail call i32 @llvm.ctpop.i32(i32 %5557)
  %5559 = trunc i32 %5558 to i8
  %5560 = and i8 %5559, 1
  %5561 = xor i8 %5560, 1
  store i8 %5561, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5562 = icmp eq i32 %5556, 0
  %5563 = zext i1 %5562 to i8
  store i8 %5563, i8* %82, align 1
  %5564 = lshr i32 %5556, 31
  %5565 = trunc i32 %5564 to i8
  store i8 %5565, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5566 = load i64, i64* %RBP.i, align 8
  %5567 = add i64 %5566, -56
  %5568 = add i64 %392, 2188
  store i64 %5568, i64* %3, align 8
  %5569 = inttoptr i64 %5567 to i32*
  %5570 = load i32, i32* %5569, align 4
  %5571 = zext i32 %5570 to i64
  store i64 %5571, i64* %RSI.i2547, align 8
  %5572 = add i64 %5566, -40
  %5573 = add i64 %392, 2192
  store i64 %5573, i64* %3, align 8
  %5574 = inttoptr i64 %5572 to i64*
  %5575 = load i64, i64* %5574, align 8
  store i64 %5575, i64* %RCX.i2541, align 8
  %5576 = add i64 %5575, 20
  %5577 = add i64 %392, 2196
  store i64 %5577, i64* %3, align 8
  %5578 = inttoptr i64 %5576 to i32*
  %5579 = load i32, i32* %5578, align 4
  %5580 = sext i32 %5570 to i64
  %5581 = sext i32 %5579 to i64
  %5582 = mul nsw i64 %5581, %5580
  %5583 = and i64 %5582, 4294967295
  store i64 %5583, i64* %RSI.i2547, align 8
  %5584 = trunc i64 %5582 to i32
  %5585 = add i32 %5584, %5556
  %5586 = zext i32 %5585 to i64
  store i64 %5586, i64* %RDX.i2544, align 8
  %5587 = icmp ult i32 %5585, %5556
  %5588 = icmp ult i32 %5585, %5584
  %5589 = or i1 %5587, %5588
  %5590 = zext i1 %5589 to i8
  store i8 %5590, i8* %68, align 1
  %5591 = and i32 %5585, 255
  %5592 = tail call i32 @llvm.ctpop.i32(i32 %5591)
  %5593 = trunc i32 %5592 to i8
  %5594 = and i8 %5593, 1
  %5595 = xor i8 %5594, 1
  store i8 %5595, i8* %74, align 1
  %5596 = xor i64 %5582, %5554
  %5597 = trunc i64 %5596 to i32
  %5598 = xor i32 %5597, %5585
  %5599 = lshr i32 %5598, 4
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  store i8 %5601, i8* %79, align 1
  %5602 = icmp eq i32 %5585, 0
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %82, align 1
  %5604 = lshr i32 %5585, 31
  %5605 = trunc i32 %5604 to i8
  store i8 %5605, i8* %85, align 1
  %5606 = lshr i32 %5584, 31
  %5607 = xor i32 %5604, %5564
  %5608 = xor i32 %5604, %5606
  %5609 = add nuw nsw i32 %5607, %5608
  %5610 = icmp eq i32 %5609, 2
  %5611 = zext i1 %5610 to i8
  store i8 %5611, i8* %91, align 1
  %5612 = add i64 %5566, -60
  %5613 = add i64 %392, 2201
  store i64 %5613, i64* %3, align 8
  %5614 = inttoptr i64 %5612 to i32*
  %5615 = load i32, i32* %5614, align 4
  %5616 = add i32 %5615, -1
  %5617 = zext i32 %5616 to i64
  store i64 %5617, i64* %RSI.i2547, align 8
  %5618 = lshr i32 %5616, 31
  %5619 = add i32 %5616, %5585
  %5620 = zext i32 %5619 to i64
  store i64 %5620, i64* %RDX.i2544, align 8
  %5621 = icmp ult i32 %5619, %5585
  %5622 = icmp ult i32 %5619, %5616
  %5623 = or i1 %5621, %5622
  %5624 = zext i1 %5623 to i8
  store i8 %5624, i8* %68, align 1
  %5625 = and i32 %5619, 255
  %5626 = tail call i32 @llvm.ctpop.i32(i32 %5625)
  %5627 = trunc i32 %5626 to i8
  %5628 = and i8 %5627, 1
  %5629 = xor i8 %5628, 1
  store i8 %5629, i8* %74, align 1
  %5630 = xor i32 %5616, %5585
  %5631 = xor i32 %5630, %5619
  %5632 = lshr i32 %5631, 4
  %5633 = trunc i32 %5632 to i8
  %5634 = and i8 %5633, 1
  store i8 %5634, i8* %79, align 1
  %5635 = icmp eq i32 %5619, 0
  %5636 = zext i1 %5635 to i8
  store i8 %5636, i8* %82, align 1
  %5637 = lshr i32 %5619, 31
  %5638 = trunc i32 %5637 to i8
  store i8 %5638, i8* %85, align 1
  %5639 = xor i32 %5637, %5604
  %5640 = xor i32 %5637, %5618
  %5641 = add nuw nsw i32 %5639, %5640
  %5642 = icmp eq i32 %5641, 2
  %5643 = zext i1 %5642 to i8
  store i8 %5643, i8* %91, align 1
  %5644 = sext i32 %5619 to i64
  store i64 %5644, i64* %RCX.i2541, align 8
  %5645 = load i64, i64* %RAX.i2556, align 8
  %5646 = shl nsw i64 %5644, 2
  %5647 = add i64 %5646, %5645
  %5648 = add i64 %392, 2214
  store i64 %5648, i64* %3, align 8
  %5649 = load <2 x float>, <2 x float>* %206, align 1
  %5650 = load <2 x i32>, <2 x i32>* %207, align 1
  %5651 = inttoptr i64 %5647 to float*
  %5652 = load float, float* %5651, align 4
  %5653 = extractelement <2 x float> %5649, i32 0
  %5654 = fmul float %5653, %5652
  store float %5654, float* %199, align 1
  %5655 = bitcast <2 x float> %5649 to <2 x i32>
  %5656 = extractelement <2 x i32> %5655, i32 1
  store i32 %5656, i32* %208, align 1
  %5657 = extractelement <2 x i32> %5650, i32 0
  store i32 %5657, i32* %209, align 1
  %5658 = extractelement <2 x i32> %5650, i32 1
  store i32 %5658, i32* %210, align 1
  %5659 = load <2 x float>, <2 x float>* %191, align 1
  %5660 = load <2 x i32>, <2 x i32>* %196, align 1
  %5661 = load <2 x float>, <2 x float>* %206, align 1
  %5662 = extractelement <2 x float> %5659, i32 0
  %5663 = extractelement <2 x float> %5661, i32 0
  %5664 = fadd float %5662, %5663
  store float %5664, float* %192, align 1
  %5665 = bitcast <2 x float> %5659 to <2 x i32>
  %5666 = extractelement <2 x i32> %5665, i32 1
  store i32 %5666, i32* %187, align 1
  %5667 = extractelement <2 x i32> %5660, i32 0
  store i32 %5667, i32* %188, align 1
  %5668 = extractelement <2 x i32> %5660, i32 1
  store i32 %5668, i32* %190, align 1
  %5669 = load i64, i64* %RBP.i, align 8
  %5670 = add i64 %5669, 16
  %5671 = add i64 %392, 2222
  store i64 %5671, i64* %3, align 8
  %5672 = inttoptr i64 %5670 to i64*
  %5673 = load i64, i64* %5672, align 8
  store i64 %5673, i64* %RAX.i2556, align 8
  %5674 = add i64 %392, 2225
  store i64 %5674, i64* %3, align 8
  %5675 = inttoptr i64 %5673 to i64*
  %5676 = load i64, i64* %5675, align 8
  store i64 %5676, i64* %RAX.i2556, align 8
  %5677 = add i64 %392, 2229
  store i64 %5677, i64* %3, align 8
  %5678 = load i64, i64* %5672, align 8
  store i64 %5678, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5679 = add i64 %392, 2237
  store i64 %5679, i64* %3, align 8
  %5680 = load i64, i64* %5672, align 8
  store i64 %5680, i64* %RCX.i2541, align 8
  %5681 = add i64 %392, 2241
  store i64 %5681, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5682 = add i64 %392, 2245
  store i64 %5682, i64* %3, align 8
  %5683 = load i64, i64* %5672, align 8
  store i64 %5683, i64* %RCX.i2541, align 8
  %5684 = add i64 %392, 2249
  store i64 %5684, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5685 = add i64 %5669, -52
  %5686 = add i64 %392, 2252
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = zext i32 %5688 to i64
  store i64 %5689, i64* %RSI.i2547, align 8
  %5690 = add i64 %392, 2256
  store i64 %5690, i64* %3, align 8
  %5691 = load i64, i64* %5672, align 8
  store i64 %5691, i64* %RCX.i2541, align 8
  %5692 = add i64 %5691, 16
  %5693 = add i64 %392, 2260
  store i64 %5693, i64* %3, align 8
  %5694 = inttoptr i64 %5692 to i32*
  %5695 = load i32, i32* %5694, align 4
  %5696 = sext i32 %5688 to i64
  %5697 = sext i32 %5695 to i64
  %5698 = mul nsw i64 %5697, %5696
  %5699 = trunc i64 %5698 to i32
  %5700 = and i64 %5698, 4294967295
  store i64 %5700, i64* %RSI.i2547, align 8
  %5701 = shl i64 %5698, 32
  %5702 = ashr exact i64 %5701, 32
  %5703 = icmp ne i64 %5702, %5698
  %5704 = zext i1 %5703 to i8
  store i8 %5704, i8* %68, align 1
  %5705 = and i32 %5699, 255
  %5706 = tail call i32 @llvm.ctpop.i32(i32 %5705)
  %5707 = trunc i32 %5706 to i8
  %5708 = and i8 %5707, 1
  %5709 = xor i8 %5708, 1
  store i8 %5709, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5710 = lshr i32 %5699, 31
  %5711 = trunc i32 %5710 to i8
  store i8 %5711, i8* %85, align 1
  store i8 %5704, i8* %91, align 1
  %5712 = add i64 %392, 2264
  store i64 %5712, i64* %3, align 8
  %5713 = load i64, i64* %5672, align 8
  store i64 %5713, i64* %RCX.i2541, align 8
  %5714 = add i64 %5713, 20
  %5715 = add i64 %392, 2268
  store i64 %5715, i64* %3, align 8
  %5716 = inttoptr i64 %5714 to i32*
  %5717 = load i32, i32* %5716, align 4
  %5718 = sext i32 %5717 to i64
  %5719 = mul nsw i64 %5718, %5702
  %5720 = and i64 %5719, 4294967295
  store i64 %5720, i64* %RSI.i2547, align 8
  %5721 = trunc i64 %5719 to i32
  store i64 %5720, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5722 = and i32 %5721, 255
  %5723 = tail call i32 @llvm.ctpop.i32(i32 %5722)
  %5724 = trunc i32 %5723 to i8
  %5725 = and i8 %5724, 1
  %5726 = xor i8 %5725, 1
  store i8 %5726, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5727 = icmp eq i32 %5721, 0
  %5728 = zext i1 %5727 to i8
  store i8 %5728, i8* %82, align 1
  %5729 = lshr i32 %5721, 31
  %5730 = trunc i32 %5729 to i8
  store i8 %5730, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5731 = load i64, i64* %RBP.i, align 8
  %5732 = add i64 %5731, -56
  %5733 = add i64 %392, 2273
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5732 to i32*
  %5735 = load i32, i32* %5734, align 4
  %5736 = zext i32 %5735 to i64
  store i64 %5736, i64* %RSI.i2547, align 8
  %5737 = add i64 %5731, 16
  %5738 = add i64 %392, 2277
  store i64 %5738, i64* %3, align 8
  %5739 = inttoptr i64 %5737 to i64*
  %5740 = load i64, i64* %5739, align 8
  store i64 %5740, i64* %RCX.i2541, align 8
  %5741 = add i64 %5740, 20
  %5742 = add i64 %392, 2281
  store i64 %5742, i64* %3, align 8
  %5743 = inttoptr i64 %5741 to i32*
  %5744 = load i32, i32* %5743, align 4
  %5745 = sext i32 %5735 to i64
  %5746 = sext i32 %5744 to i64
  %5747 = mul nsw i64 %5746, %5745
  %5748 = and i64 %5747, 4294967295
  store i64 %5748, i64* %RSI.i2547, align 8
  %5749 = trunc i64 %5747 to i32
  %5750 = add i32 %5749, %5721
  %5751 = zext i32 %5750 to i64
  store i64 %5751, i64* %RDX.i2544, align 8
  %5752 = icmp ult i32 %5750, %5721
  %5753 = icmp ult i32 %5750, %5749
  %5754 = or i1 %5752, %5753
  %5755 = zext i1 %5754 to i8
  store i8 %5755, i8* %68, align 1
  %5756 = and i32 %5750, 255
  %5757 = tail call i32 @llvm.ctpop.i32(i32 %5756)
  %5758 = trunc i32 %5757 to i8
  %5759 = and i8 %5758, 1
  %5760 = xor i8 %5759, 1
  store i8 %5760, i8* %74, align 1
  %5761 = xor i64 %5747, %5719
  %5762 = trunc i64 %5761 to i32
  %5763 = xor i32 %5762, %5750
  %5764 = lshr i32 %5763, 4
  %5765 = trunc i32 %5764 to i8
  %5766 = and i8 %5765, 1
  store i8 %5766, i8* %79, align 1
  %5767 = icmp eq i32 %5750, 0
  %5768 = zext i1 %5767 to i8
  store i8 %5768, i8* %82, align 1
  %5769 = lshr i32 %5750, 31
  %5770 = trunc i32 %5769 to i8
  store i8 %5770, i8* %85, align 1
  %5771 = lshr i32 %5749, 31
  %5772 = xor i32 %5769, %5729
  %5773 = xor i32 %5769, %5771
  %5774 = add nuw nsw i32 %5772, %5773
  %5775 = icmp eq i32 %5774, 2
  %5776 = zext i1 %5775 to i8
  store i8 %5776, i8* %91, align 1
  %5777 = add i64 %5731, -60
  %5778 = add i64 %392, 2286
  store i64 %5778, i64* %3, align 8
  %5779 = inttoptr i64 %5777 to i32*
  %5780 = load i32, i32* %5779, align 4
  %5781 = add i32 %5780, %5750
  %5782 = zext i32 %5781 to i64
  store i64 %5782, i64* %RDX.i2544, align 8
  %5783 = icmp ult i32 %5781, %5750
  %5784 = icmp ult i32 %5781, %5780
  %5785 = or i1 %5783, %5784
  %5786 = zext i1 %5785 to i8
  store i8 %5786, i8* %68, align 1
  %5787 = and i32 %5781, 255
  %5788 = tail call i32 @llvm.ctpop.i32(i32 %5787)
  %5789 = trunc i32 %5788 to i8
  %5790 = and i8 %5789, 1
  %5791 = xor i8 %5790, 1
  store i8 %5791, i8* %74, align 1
  %5792 = xor i32 %5780, %5750
  %5793 = xor i32 %5792, %5781
  %5794 = lshr i32 %5793, 4
  %5795 = trunc i32 %5794 to i8
  %5796 = and i8 %5795, 1
  store i8 %5796, i8* %79, align 1
  %5797 = icmp eq i32 %5781, 0
  %5798 = zext i1 %5797 to i8
  store i8 %5798, i8* %82, align 1
  %5799 = lshr i32 %5781, 31
  %5800 = trunc i32 %5799 to i8
  store i8 %5800, i8* %85, align 1
  %5801 = lshr i32 %5780, 31
  %5802 = xor i32 %5799, %5769
  %5803 = xor i32 %5799, %5801
  %5804 = add nuw nsw i32 %5802, %5803
  %5805 = icmp eq i32 %5804, 2
  %5806 = zext i1 %5805 to i8
  store i8 %5806, i8* %91, align 1
  %5807 = sext i32 %5781 to i64
  store i64 %5807, i64* %RCX.i2541, align 8
  %5808 = load i64, i64* %RAX.i2556, align 8
  %5809 = shl nsw i64 %5807, 2
  %5810 = add i64 %5809, %5808
  %5811 = add i64 %392, 2294
  store i64 %5811, i64* %3, align 8
  %5812 = load <2 x float>, <2 x float>* %191, align 1
  %5813 = load <2 x i32>, <2 x i32>* %196, align 1
  %5814 = inttoptr i64 %5810 to float*
  %5815 = load float, float* %5814, align 4
  %5816 = extractelement <2 x float> %5812, i32 0
  %5817 = fadd float %5816, %5815
  store float %5817, float* %192, align 1
  %5818 = bitcast <2 x float> %5812 to <2 x i32>
  %5819 = extractelement <2 x i32> %5818, i32 1
  store i32 %5819, i32* %187, align 1
  %5820 = extractelement <2 x i32> %5813, i32 0
  store i32 %5820, i32* %188, align 1
  %5821 = extractelement <2 x i32> %5813, i32 1
  store i32 %5821, i32* %190, align 1
  %5822 = load i64, i64* %RBP.i, align 8
  %5823 = add i64 %5822, -84
  %5824 = add i64 %392, 2299
  store i64 %5824, i64* %3, align 8
  %5825 = load <2 x float>, <2 x float>* %191, align 1
  %5826 = extractelement <2 x float> %5825, i32 0
  %5827 = inttoptr i64 %5823 to float*
  store float %5826, float* %5827, align 4
  %5828 = load i64, i64* %RBP.i, align 8
  %5829 = add i64 %5828, -84
  %5830 = load i64, i64* %3, align 8
  %5831 = add i64 %5830, 5
  store i64 %5831, i64* %3, align 8
  %5832 = inttoptr i64 %5829 to i32*
  %5833 = load i32, i32* %5832, align 4
  store i32 %5833, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %5834 = add i64 %5828, -16
  %5835 = add i64 %5830, 9
  store i64 %5835, i64* %3, align 8
  %5836 = inttoptr i64 %5834 to i64*
  %5837 = load i64, i64* %5836, align 8
  store i64 %5837, i64* %RAX.i2556, align 8
  %5838 = add i64 %5830, 12
  store i64 %5838, i64* %3, align 8
  %5839 = inttoptr i64 %5837 to i64*
  %5840 = load i64, i64* %5839, align 8
  store i64 %5840, i64* %RAX.i2556, align 8
  %5841 = add i64 %5830, 16
  store i64 %5841, i64* %3, align 8
  %5842 = load i64, i64* %5836, align 8
  store i64 %5842, i64* %RCX.i2541, align 8
  %5843 = add i64 %5842, 12
  %5844 = add i64 %5830, 20
  store i64 %5844, i64* %3, align 8
  %5845 = inttoptr i64 %5843 to i32*
  %5846 = load i32, i32* %5845, align 4
  %5847 = sext i32 %5846 to i64
  %5848 = mul nsw i64 %5847, 3
  %5849 = trunc i64 %5848 to i32
  %5850 = and i64 %5848, 4294967295
  store i64 %5850, i64* %RDX.i2544, align 8
  %5851 = mul i64 %5847, 12884901888
  %5852 = ashr exact i64 %5851, 32
  %5853 = icmp ne i64 %5852, %5848
  %5854 = zext i1 %5853 to i8
  store i8 %5854, i8* %68, align 1
  %5855 = and i32 %5849, 255
  %5856 = tail call i32 @llvm.ctpop.i32(i32 %5855)
  %5857 = trunc i32 %5856 to i8
  %5858 = and i8 %5857, 1
  %5859 = xor i8 %5858, 1
  store i8 %5859, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5860 = lshr i32 %5849, 31
  %5861 = trunc i32 %5860 to i8
  store i8 %5861, i8* %85, align 1
  store i8 %5854, i8* %91, align 1
  %5862 = add i64 %5830, 24
  store i64 %5862, i64* %3, align 8
  %5863 = load i64, i64* %5836, align 8
  store i64 %5863, i64* %RCX.i2541, align 8
  %5864 = add i64 %5863, 16
  %5865 = add i64 %5830, 28
  store i64 %5865, i64* %3, align 8
  %5866 = inttoptr i64 %5864 to i32*
  %5867 = load i32, i32* %5866, align 4
  %5868 = sext i32 %5867 to i64
  %5869 = mul nsw i64 %5868, %5852
  %5870 = trunc i64 %5869 to i32
  %5871 = and i64 %5869, 4294967295
  store i64 %5871, i64* %RDX.i2544, align 8
  %5872 = shl i64 %5869, 32
  %5873 = ashr exact i64 %5872, 32
  %5874 = icmp ne i64 %5873, %5869
  %5875 = zext i1 %5874 to i8
  store i8 %5875, i8* %68, align 1
  %5876 = and i32 %5870, 255
  %5877 = tail call i32 @llvm.ctpop.i32(i32 %5876)
  %5878 = trunc i32 %5877 to i8
  %5879 = and i8 %5878, 1
  %5880 = xor i8 %5879, 1
  store i8 %5880, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5881 = lshr i32 %5870, 31
  %5882 = trunc i32 %5881 to i8
  store i8 %5882, i8* %85, align 1
  store i8 %5875, i8* %91, align 1
  %5883 = add i64 %5830, 32
  store i64 %5883, i64* %3, align 8
  %5884 = load i64, i64* %5836, align 8
  store i64 %5884, i64* %RCX.i2541, align 8
  %5885 = add i64 %5884, 20
  %5886 = add i64 %5830, 36
  store i64 %5886, i64* %3, align 8
  %5887 = inttoptr i64 %5885 to i32*
  %5888 = load i32, i32* %5887, align 4
  %5889 = sext i32 %5888 to i64
  %5890 = mul nsw i64 %5889, %5873
  %5891 = trunc i64 %5890 to i32
  %5892 = and i64 %5890, 4294967295
  store i64 %5892, i64* %RDX.i2544, align 8
  %5893 = shl i64 %5890, 32
  %5894 = ashr exact i64 %5893, 32
  %5895 = icmp ne i64 %5894, %5890
  %5896 = zext i1 %5895 to i8
  store i8 %5896, i8* %68, align 1
  %5897 = and i32 %5891, 255
  %5898 = tail call i32 @llvm.ctpop.i32(i32 %5897)
  %5899 = trunc i32 %5898 to i8
  %5900 = and i8 %5899, 1
  %5901 = xor i8 %5900, 1
  store i8 %5901, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5902 = lshr i32 %5891, 31
  %5903 = trunc i32 %5902 to i8
  store i8 %5903, i8* %85, align 1
  store i8 %5896, i8* %91, align 1
  %5904 = load i64, i64* %RBP.i, align 8
  %5905 = add i64 %5904, -52
  %5906 = add i64 %5830, 39
  store i64 %5906, i64* %3, align 8
  %5907 = inttoptr i64 %5905 to i32*
  %5908 = load i32, i32* %5907, align 4
  %5909 = zext i32 %5908 to i64
  store i64 %5909, i64* %RSI.i2547, align 8
  %5910 = add i64 %5904, -16
  %5911 = add i64 %5830, 43
  store i64 %5911, i64* %3, align 8
  %5912 = inttoptr i64 %5910 to i64*
  %5913 = load i64, i64* %5912, align 8
  store i64 %5913, i64* %RCX.i2541, align 8
  %5914 = add i64 %5913, 16
  %5915 = add i64 %5830, 47
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5914 to i32*
  %5917 = load i32, i32* %5916, align 4
  %5918 = sext i32 %5908 to i64
  %5919 = sext i32 %5917 to i64
  %5920 = mul nsw i64 %5919, %5918
  %5921 = trunc i64 %5920 to i32
  %5922 = and i64 %5920, 4294967295
  store i64 %5922, i64* %RSI.i2547, align 8
  %5923 = shl i64 %5920, 32
  %5924 = ashr exact i64 %5923, 32
  %5925 = icmp ne i64 %5924, %5920
  %5926 = zext i1 %5925 to i8
  store i8 %5926, i8* %68, align 1
  %5927 = and i32 %5921, 255
  %5928 = tail call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  store i8 %5931, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5932 = lshr i32 %5921, 31
  %5933 = trunc i32 %5932 to i8
  store i8 %5933, i8* %85, align 1
  store i8 %5926, i8* %91, align 1
  %5934 = add i64 %5830, 51
  store i64 %5934, i64* %3, align 8
  %5935 = load i64, i64* %5912, align 8
  store i64 %5935, i64* %RCX.i2541, align 8
  %5936 = add i64 %5935, 20
  %5937 = add i64 %5830, 55
  store i64 %5937, i64* %3, align 8
  %5938 = inttoptr i64 %5936 to i32*
  %5939 = load i32, i32* %5938, align 4
  %5940 = sext i32 %5939 to i64
  %5941 = mul nsw i64 %5940, %5924
  %5942 = and i64 %5941, 4294967295
  store i64 %5942, i64* %RSI.i2547, align 8
  %5943 = trunc i64 %5941 to i32
  %5944 = add i32 %5943, %5891
  %5945 = zext i32 %5944 to i64
  store i64 %5945, i64* %RDX.i2544, align 8
  %5946 = icmp ult i32 %5944, %5891
  %5947 = icmp ult i32 %5944, %5943
  %5948 = or i1 %5946, %5947
  %5949 = zext i1 %5948 to i8
  store i8 %5949, i8* %68, align 1
  %5950 = and i32 %5944, 255
  %5951 = tail call i32 @llvm.ctpop.i32(i32 %5950)
  %5952 = trunc i32 %5951 to i8
  %5953 = and i8 %5952, 1
  %5954 = xor i8 %5953, 1
  store i8 %5954, i8* %74, align 1
  %5955 = xor i64 %5941, %5890
  %5956 = trunc i64 %5955 to i32
  %5957 = xor i32 %5956, %5944
  %5958 = lshr i32 %5957, 4
  %5959 = trunc i32 %5958 to i8
  %5960 = and i8 %5959, 1
  store i8 %5960, i8* %79, align 1
  %5961 = icmp eq i32 %5944, 0
  %5962 = zext i1 %5961 to i8
  store i8 %5962, i8* %82, align 1
  %5963 = lshr i32 %5944, 31
  %5964 = trunc i32 %5963 to i8
  store i8 %5964, i8* %85, align 1
  %5965 = lshr i32 %5943, 31
  %5966 = xor i32 %5963, %5902
  %5967 = xor i32 %5963, %5965
  %5968 = add nuw nsw i32 %5966, %5967
  %5969 = icmp eq i32 %5968, 2
  %5970 = zext i1 %5969 to i8
  store i8 %5970, i8* %91, align 1
  %5971 = load i64, i64* %RBP.i, align 8
  %5972 = add i64 %5971, -56
  %5973 = add i64 %5830, 60
  store i64 %5973, i64* %3, align 8
  %5974 = inttoptr i64 %5972 to i32*
  %5975 = load i32, i32* %5974, align 4
  %5976 = zext i32 %5975 to i64
  store i64 %5976, i64* %RSI.i2547, align 8
  %5977 = add i64 %5971, -16
  %5978 = add i64 %5830, 64
  store i64 %5978, i64* %3, align 8
  %5979 = inttoptr i64 %5977 to i64*
  %5980 = load i64, i64* %5979, align 8
  store i64 %5980, i64* %RCX.i2541, align 8
  %5981 = add i64 %5980, 20
  %5982 = add i64 %5830, 68
  store i64 %5982, i64* %3, align 8
  %5983 = inttoptr i64 %5981 to i32*
  %5984 = load i32, i32* %5983, align 4
  %5985 = sext i32 %5975 to i64
  %5986 = sext i32 %5984 to i64
  %5987 = mul nsw i64 %5986, %5985
  %5988 = and i64 %5987, 4294967295
  store i64 %5988, i64* %RSI.i2547, align 8
  %5989 = trunc i64 %5987 to i32
  %5990 = add i32 %5989, %5944
  %5991 = zext i32 %5990 to i64
  store i64 %5991, i64* %RDX.i2544, align 8
  %5992 = icmp ult i32 %5990, %5944
  %5993 = icmp ult i32 %5990, %5989
  %5994 = or i1 %5992, %5993
  %5995 = zext i1 %5994 to i8
  store i8 %5995, i8* %68, align 1
  %5996 = and i32 %5990, 255
  %5997 = tail call i32 @llvm.ctpop.i32(i32 %5996)
  %5998 = trunc i32 %5997 to i8
  %5999 = and i8 %5998, 1
  %6000 = xor i8 %5999, 1
  store i8 %6000, i8* %74, align 1
  %6001 = xor i64 %5987, %5945
  %6002 = trunc i64 %6001 to i32
  %6003 = xor i32 %6002, %5990
  %6004 = lshr i32 %6003, 4
  %6005 = trunc i32 %6004 to i8
  %6006 = and i8 %6005, 1
  store i8 %6006, i8* %79, align 1
  %6007 = icmp eq i32 %5990, 0
  %6008 = zext i1 %6007 to i8
  store i8 %6008, i8* %82, align 1
  %6009 = lshr i32 %5990, 31
  %6010 = trunc i32 %6009 to i8
  store i8 %6010, i8* %85, align 1
  %6011 = lshr i32 %5989, 31
  %6012 = xor i32 %6009, %5963
  %6013 = xor i32 %6009, %6011
  %6014 = add nuw nsw i32 %6012, %6013
  %6015 = icmp eq i32 %6014, 2
  %6016 = zext i1 %6015 to i8
  store i8 %6016, i8* %91, align 1
  %6017 = add i64 %5971, -60
  %6018 = add i64 %5830, 73
  store i64 %6018, i64* %3, align 8
  %6019 = inttoptr i64 %6017 to i32*
  %6020 = load i32, i32* %6019, align 4
  %6021 = add i32 %6020, %5990
  %6022 = zext i32 %6021 to i64
  store i64 %6022, i64* %RDX.i2544, align 8
  %6023 = icmp ult i32 %6021, %5990
  %6024 = icmp ult i32 %6021, %6020
  %6025 = or i1 %6023, %6024
  %6026 = zext i1 %6025 to i8
  store i8 %6026, i8* %68, align 1
  %6027 = and i32 %6021, 255
  %6028 = tail call i32 @llvm.ctpop.i32(i32 %6027)
  %6029 = trunc i32 %6028 to i8
  %6030 = and i8 %6029, 1
  %6031 = xor i8 %6030, 1
  store i8 %6031, i8* %74, align 1
  %6032 = xor i32 %6020, %5990
  %6033 = xor i32 %6032, %6021
  %6034 = lshr i32 %6033, 4
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  store i8 %6036, i8* %79, align 1
  %6037 = icmp eq i32 %6021, 0
  %6038 = zext i1 %6037 to i8
  store i8 %6038, i8* %82, align 1
  %6039 = lshr i32 %6021, 31
  %6040 = trunc i32 %6039 to i8
  store i8 %6040, i8* %85, align 1
  %6041 = lshr i32 %6020, 31
  %6042 = xor i32 %6039, %6009
  %6043 = xor i32 %6039, %6041
  %6044 = add nuw nsw i32 %6042, %6043
  %6045 = icmp eq i32 %6044, 2
  %6046 = zext i1 %6045 to i8
  store i8 %6046, i8* %91, align 1
  %6047 = sext i32 %6021 to i64
  store i64 %6047, i64* %RCX.i2541, align 8
  %6048 = load i64, i64* %RAX.i2556, align 8
  %6049 = shl nsw i64 %6047, 2
  %6050 = add i64 %6049, %6048
  %6051 = add i64 %5830, 81
  store i64 %6051, i64* %3, align 8
  %6052 = load <2 x float>, <2 x float>* %191, align 1
  %6053 = load <2 x i32>, <2 x i32>* %196, align 1
  %6054 = inttoptr i64 %6050 to float*
  %6055 = load float, float* %6054, align 4
  %6056 = extractelement <2 x float> %6052, i32 0
  %6057 = fmul float %6056, %6055
  store float %6057, float* %192, align 1
  %6058 = bitcast <2 x float> %6052 to <2 x i32>
  %6059 = extractelement <2 x i32> %6058, i32 1
  store i32 %6059, i32* %187, align 1
  %6060 = extractelement <2 x i32> %6053, i32 0
  store i32 %6060, i32* %188, align 1
  %6061 = extractelement <2 x i32> %6053, i32 1
  store i32 %6061, i32* %190, align 1
  %6062 = load i64, i64* %RBP.i, align 8
  %6063 = add i64 %6062, -40
  %6064 = add i64 %5830, 85
  store i64 %6064, i64* %3, align 8
  %6065 = inttoptr i64 %6063 to i64*
  %6066 = load i64, i64* %6065, align 8
  store i64 %6066, i64* %RAX.i2556, align 8
  %6067 = add i64 %5830, 88
  store i64 %6067, i64* %3, align 8
  %6068 = inttoptr i64 %6066 to i64*
  %6069 = load i64, i64* %6068, align 8
  store i64 %6069, i64* %RAX.i2556, align 8
  %6070 = add i64 %5830, 92
  store i64 %6070, i64* %3, align 8
  %6071 = load i64, i64* %6065, align 8
  store i64 %6071, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6072 = add i64 %5830, 100
  store i64 %6072, i64* %3, align 8
  %6073 = load i64, i64* %6065, align 8
  store i64 %6073, i64* %RCX.i2541, align 8
  %6074 = add i64 %5830, 104
  store i64 %6074, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6075 = add i64 %5830, 108
  store i64 %6075, i64* %3, align 8
  %6076 = load i64, i64* %6065, align 8
  store i64 %6076, i64* %RCX.i2541, align 8
  %6077 = add i64 %5830, 112
  store i64 %6077, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6078 = add i64 %6062, -52
  %6079 = add i64 %5830, 115
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6078 to i32*
  %6081 = load i32, i32* %6080, align 4
  %6082 = zext i32 %6081 to i64
  store i64 %6082, i64* %RSI.i2547, align 8
  %6083 = add i64 %5830, 119
  store i64 %6083, i64* %3, align 8
  %6084 = load i64, i64* %6065, align 8
  store i64 %6084, i64* %RCX.i2541, align 8
  %6085 = add i64 %6084, 16
  %6086 = add i64 %5830, 123
  store i64 %6086, i64* %3, align 8
  %6087 = inttoptr i64 %6085 to i32*
  %6088 = load i32, i32* %6087, align 4
  %6089 = sext i32 %6081 to i64
  %6090 = sext i32 %6088 to i64
  %6091 = mul nsw i64 %6090, %6089
  %6092 = trunc i64 %6091 to i32
  %6093 = and i64 %6091, 4294967295
  store i64 %6093, i64* %RSI.i2547, align 8
  %6094 = shl i64 %6091, 32
  %6095 = ashr exact i64 %6094, 32
  %6096 = icmp ne i64 %6095, %6091
  %6097 = zext i1 %6096 to i8
  store i8 %6097, i8* %68, align 1
  %6098 = and i32 %6092, 255
  %6099 = tail call i32 @llvm.ctpop.i32(i32 %6098)
  %6100 = trunc i32 %6099 to i8
  %6101 = and i8 %6100, 1
  %6102 = xor i8 %6101, 1
  store i8 %6102, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6103 = lshr i32 %6092, 31
  %6104 = trunc i32 %6103 to i8
  store i8 %6104, i8* %85, align 1
  store i8 %6097, i8* %91, align 1
  %6105 = add i64 %5830, 127
  store i64 %6105, i64* %3, align 8
  %6106 = load i64, i64* %6065, align 8
  store i64 %6106, i64* %RCX.i2541, align 8
  %6107 = add i64 %6106, 20
  %6108 = add i64 %5830, 131
  store i64 %6108, i64* %3, align 8
  %6109 = inttoptr i64 %6107 to i32*
  %6110 = load i32, i32* %6109, align 4
  %6111 = sext i32 %6110 to i64
  %6112 = mul nsw i64 %6111, %6095
  %6113 = and i64 %6112, 4294967295
  store i64 %6113, i64* %RSI.i2547, align 8
  %6114 = trunc i64 %6112 to i32
  store i64 %6113, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6115 = and i32 %6114, 255
  %6116 = tail call i32 @llvm.ctpop.i32(i32 %6115)
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  %6119 = xor i8 %6118, 1
  store i8 %6119, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6120 = icmp eq i32 %6114, 0
  %6121 = zext i1 %6120 to i8
  store i8 %6121, i8* %82, align 1
  %6122 = lshr i32 %6114, 31
  %6123 = trunc i32 %6122 to i8
  store i8 %6123, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6124 = load i64, i64* %RBP.i, align 8
  %6125 = add i64 %6124, -56
  %6126 = add i64 %5830, 136
  store i64 %6126, i64* %3, align 8
  %6127 = inttoptr i64 %6125 to i32*
  %6128 = load i32, i32* %6127, align 4
  %6129 = zext i32 %6128 to i64
  store i64 %6129, i64* %RSI.i2547, align 8
  %6130 = add i64 %6124, -40
  %6131 = add i64 %5830, 140
  store i64 %6131, i64* %3, align 8
  %6132 = inttoptr i64 %6130 to i64*
  %6133 = load i64, i64* %6132, align 8
  store i64 %6133, i64* %RCX.i2541, align 8
  %6134 = add i64 %6133, 20
  %6135 = add i64 %5830, 144
  store i64 %6135, i64* %3, align 8
  %6136 = inttoptr i64 %6134 to i32*
  %6137 = load i32, i32* %6136, align 4
  %6138 = sext i32 %6128 to i64
  %6139 = sext i32 %6137 to i64
  %6140 = mul nsw i64 %6139, %6138
  %6141 = and i64 %6140, 4294967295
  store i64 %6141, i64* %RSI.i2547, align 8
  %6142 = trunc i64 %6140 to i32
  %6143 = add i32 %6142, %6114
  %6144 = zext i32 %6143 to i64
  store i64 %6144, i64* %RDX.i2544, align 8
  %6145 = icmp ult i32 %6143, %6114
  %6146 = icmp ult i32 %6143, %6142
  %6147 = or i1 %6145, %6146
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %68, align 1
  %6149 = and i32 %6143, 255
  %6150 = tail call i32 @llvm.ctpop.i32(i32 %6149)
  %6151 = trunc i32 %6150 to i8
  %6152 = and i8 %6151, 1
  %6153 = xor i8 %6152, 1
  store i8 %6153, i8* %74, align 1
  %6154 = xor i64 %6140, %6112
  %6155 = trunc i64 %6154 to i32
  %6156 = xor i32 %6155, %6143
  %6157 = lshr i32 %6156, 4
  %6158 = trunc i32 %6157 to i8
  %6159 = and i8 %6158, 1
  store i8 %6159, i8* %79, align 1
  %6160 = icmp eq i32 %6143, 0
  %6161 = zext i1 %6160 to i8
  store i8 %6161, i8* %82, align 1
  %6162 = lshr i32 %6143, 31
  %6163 = trunc i32 %6162 to i8
  store i8 %6163, i8* %85, align 1
  %6164 = lshr i32 %6142, 31
  %6165 = xor i32 %6162, %6122
  %6166 = xor i32 %6162, %6164
  %6167 = add nuw nsw i32 %6165, %6166
  %6168 = icmp eq i32 %6167, 2
  %6169 = zext i1 %6168 to i8
  store i8 %6169, i8* %91, align 1
  %6170 = add i64 %6124, -60
  %6171 = add i64 %5830, 149
  store i64 %6171, i64* %3, align 8
  %6172 = inttoptr i64 %6170 to i32*
  %6173 = load i32, i32* %6172, align 4
  %6174 = add i32 %6173, %6143
  %6175 = zext i32 %6174 to i64
  store i64 %6175, i64* %RDX.i2544, align 8
  %6176 = icmp ult i32 %6174, %6143
  %6177 = icmp ult i32 %6174, %6173
  %6178 = or i1 %6176, %6177
  %6179 = zext i1 %6178 to i8
  store i8 %6179, i8* %68, align 1
  %6180 = and i32 %6174, 255
  %6181 = tail call i32 @llvm.ctpop.i32(i32 %6180)
  %6182 = trunc i32 %6181 to i8
  %6183 = and i8 %6182, 1
  %6184 = xor i8 %6183, 1
  store i8 %6184, i8* %74, align 1
  %6185 = xor i32 %6173, %6143
  %6186 = xor i32 %6185, %6174
  %6187 = lshr i32 %6186, 4
  %6188 = trunc i32 %6187 to i8
  %6189 = and i8 %6188, 1
  store i8 %6189, i8* %79, align 1
  %6190 = icmp eq i32 %6174, 0
  %6191 = zext i1 %6190 to i8
  store i8 %6191, i8* %82, align 1
  %6192 = lshr i32 %6174, 31
  %6193 = trunc i32 %6192 to i8
  store i8 %6193, i8* %85, align 1
  %6194 = lshr i32 %6173, 31
  %6195 = xor i32 %6192, %6162
  %6196 = xor i32 %6192, %6194
  %6197 = add nuw nsw i32 %6195, %6196
  %6198 = icmp eq i32 %6197, 2
  %6199 = zext i1 %6198 to i8
  store i8 %6199, i8* %91, align 1
  %6200 = sext i32 %6174 to i64
  store i64 %6200, i64* %RCX.i2541, align 8
  %6201 = load i64, i64* %RAX.i2556, align 8
  %6202 = shl nsw i64 %6200, 2
  %6203 = add i64 %6202, %6201
  %6204 = add i64 %5830, 157
  store i64 %6204, i64* %3, align 8
  %6205 = load <2 x float>, <2 x float>* %191, align 1
  %6206 = load <2 x i32>, <2 x i32>* %196, align 1
  %6207 = inttoptr i64 %6203 to float*
  %6208 = load float, float* %6207, align 4
  %6209 = extractelement <2 x float> %6205, i32 0
  %6210 = fsub float %6209, %6208
  store float %6210, float* %192, align 1
  %6211 = bitcast <2 x float> %6205 to <2 x i32>
  %6212 = extractelement <2 x i32> %6211, i32 1
  store i32 %6212, i32* %187, align 1
  %6213 = extractelement <2 x i32> %6206, i32 0
  store i32 %6213, i32* %188, align 1
  %6214 = extractelement <2 x i32> %6206, i32 1
  store i32 %6214, i32* %190, align 1
  %6215 = load i64, i64* %RBP.i, align 8
  %6216 = add i64 %6215, -48
  %6217 = add i64 %5830, 161
  store i64 %6217, i64* %3, align 8
  %6218 = inttoptr i64 %6216 to i64*
  %6219 = load i64, i64* %6218, align 8
  store i64 %6219, i64* %RAX.i2556, align 8
  %6220 = add i64 %5830, 164
  store i64 %6220, i64* %3, align 8
  %6221 = inttoptr i64 %6219 to i64*
  %6222 = load i64, i64* %6221, align 8
  store i64 %6222, i64* %RAX.i2556, align 8
  %6223 = add i64 %5830, 168
  store i64 %6223, i64* %3, align 8
  %6224 = load i64, i64* %6218, align 8
  store i64 %6224, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6225 = add i64 %5830, 176
  store i64 %6225, i64* %3, align 8
  %6226 = load i64, i64* %6218, align 8
  store i64 %6226, i64* %RCX.i2541, align 8
  %6227 = add i64 %5830, 180
  store i64 %6227, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6228 = add i64 %5830, 184
  store i64 %6228, i64* %3, align 8
  %6229 = load i64, i64* %6218, align 8
  store i64 %6229, i64* %RCX.i2541, align 8
  %6230 = add i64 %5830, 188
  store i64 %6230, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6231 = add i64 %6215, -52
  %6232 = add i64 %5830, 191
  store i64 %6232, i64* %3, align 8
  %6233 = inttoptr i64 %6231 to i32*
  %6234 = load i32, i32* %6233, align 4
  %6235 = zext i32 %6234 to i64
  store i64 %6235, i64* %RSI.i2547, align 8
  %6236 = add i64 %5830, 195
  store i64 %6236, i64* %3, align 8
  %6237 = load i64, i64* %6218, align 8
  store i64 %6237, i64* %RCX.i2541, align 8
  %6238 = add i64 %6237, 16
  %6239 = add i64 %5830, 199
  store i64 %6239, i64* %3, align 8
  %6240 = inttoptr i64 %6238 to i32*
  %6241 = load i32, i32* %6240, align 4
  %6242 = sext i32 %6234 to i64
  %6243 = sext i32 %6241 to i64
  %6244 = mul nsw i64 %6243, %6242
  %6245 = trunc i64 %6244 to i32
  %6246 = and i64 %6244, 4294967295
  store i64 %6246, i64* %RSI.i2547, align 8
  %6247 = shl i64 %6244, 32
  %6248 = ashr exact i64 %6247, 32
  %6249 = icmp ne i64 %6248, %6244
  %6250 = zext i1 %6249 to i8
  store i8 %6250, i8* %68, align 1
  %6251 = and i32 %6245, 255
  %6252 = tail call i32 @llvm.ctpop.i32(i32 %6251)
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  store i8 %6255, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6256 = lshr i32 %6245, 31
  %6257 = trunc i32 %6256 to i8
  store i8 %6257, i8* %85, align 1
  store i8 %6250, i8* %91, align 1
  %6258 = add i64 %5830, 203
  store i64 %6258, i64* %3, align 8
  %6259 = load i64, i64* %6218, align 8
  store i64 %6259, i64* %RCX.i2541, align 8
  %6260 = add i64 %6259, 20
  %6261 = add i64 %5830, 207
  store i64 %6261, i64* %3, align 8
  %6262 = inttoptr i64 %6260 to i32*
  %6263 = load i32, i32* %6262, align 4
  %6264 = sext i32 %6263 to i64
  %6265 = mul nsw i64 %6264, %6248
  %6266 = and i64 %6265, 4294967295
  store i64 %6266, i64* %RSI.i2547, align 8
  %6267 = trunc i64 %6265 to i32
  store i64 %6266, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6268 = and i32 %6267, 255
  %6269 = tail call i32 @llvm.ctpop.i32(i32 %6268)
  %6270 = trunc i32 %6269 to i8
  %6271 = and i8 %6270, 1
  %6272 = xor i8 %6271, 1
  store i8 %6272, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6273 = icmp eq i32 %6267, 0
  %6274 = zext i1 %6273 to i8
  store i8 %6274, i8* %82, align 1
  %6275 = lshr i32 %6267, 31
  %6276 = trunc i32 %6275 to i8
  store i8 %6276, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6277 = load i64, i64* %RBP.i, align 8
  %6278 = add i64 %6277, -56
  %6279 = add i64 %5830, 212
  store i64 %6279, i64* %3, align 8
  %6280 = inttoptr i64 %6278 to i32*
  %6281 = load i32, i32* %6280, align 4
  %6282 = zext i32 %6281 to i64
  store i64 %6282, i64* %RSI.i2547, align 8
  %6283 = add i64 %6277, -48
  %6284 = add i64 %5830, 216
  store i64 %6284, i64* %3, align 8
  %6285 = inttoptr i64 %6283 to i64*
  %6286 = load i64, i64* %6285, align 8
  store i64 %6286, i64* %RCX.i2541, align 8
  %6287 = add i64 %6286, 20
  %6288 = add i64 %5830, 220
  store i64 %6288, i64* %3, align 8
  %6289 = inttoptr i64 %6287 to i32*
  %6290 = load i32, i32* %6289, align 4
  %6291 = sext i32 %6281 to i64
  %6292 = sext i32 %6290 to i64
  %6293 = mul nsw i64 %6292, %6291
  %6294 = and i64 %6293, 4294967295
  store i64 %6294, i64* %RSI.i2547, align 8
  %6295 = trunc i64 %6293 to i32
  %6296 = add i32 %6295, %6267
  %6297 = zext i32 %6296 to i64
  store i64 %6297, i64* %RDX.i2544, align 8
  %6298 = icmp ult i32 %6296, %6267
  %6299 = icmp ult i32 %6296, %6295
  %6300 = or i1 %6298, %6299
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %68, align 1
  %6302 = and i32 %6296, 255
  %6303 = tail call i32 @llvm.ctpop.i32(i32 %6302)
  %6304 = trunc i32 %6303 to i8
  %6305 = and i8 %6304, 1
  %6306 = xor i8 %6305, 1
  store i8 %6306, i8* %74, align 1
  %6307 = xor i64 %6293, %6265
  %6308 = trunc i64 %6307 to i32
  %6309 = xor i32 %6308, %6296
  %6310 = lshr i32 %6309, 4
  %6311 = trunc i32 %6310 to i8
  %6312 = and i8 %6311, 1
  store i8 %6312, i8* %79, align 1
  %6313 = icmp eq i32 %6296, 0
  %6314 = zext i1 %6313 to i8
  store i8 %6314, i8* %82, align 1
  %6315 = lshr i32 %6296, 31
  %6316 = trunc i32 %6315 to i8
  store i8 %6316, i8* %85, align 1
  %6317 = lshr i32 %6295, 31
  %6318 = xor i32 %6315, %6275
  %6319 = xor i32 %6315, %6317
  %6320 = add nuw nsw i32 %6318, %6319
  %6321 = icmp eq i32 %6320, 2
  %6322 = zext i1 %6321 to i8
  store i8 %6322, i8* %91, align 1
  %6323 = add i64 %6277, -60
  %6324 = add i64 %5830, 225
  store i64 %6324, i64* %3, align 8
  %6325 = inttoptr i64 %6323 to i32*
  %6326 = load i32, i32* %6325, align 4
  %6327 = add i32 %6326, %6296
  %6328 = zext i32 %6327 to i64
  store i64 %6328, i64* %RDX.i2544, align 8
  %6329 = icmp ult i32 %6327, %6296
  %6330 = icmp ult i32 %6327, %6326
  %6331 = or i1 %6329, %6330
  %6332 = zext i1 %6331 to i8
  store i8 %6332, i8* %68, align 1
  %6333 = and i32 %6327, 255
  %6334 = tail call i32 @llvm.ctpop.i32(i32 %6333)
  %6335 = trunc i32 %6334 to i8
  %6336 = and i8 %6335, 1
  %6337 = xor i8 %6336, 1
  store i8 %6337, i8* %74, align 1
  %6338 = xor i32 %6326, %6296
  %6339 = xor i32 %6338, %6327
  %6340 = lshr i32 %6339, 4
  %6341 = trunc i32 %6340 to i8
  %6342 = and i8 %6341, 1
  store i8 %6342, i8* %79, align 1
  %6343 = icmp eq i32 %6327, 0
  %6344 = zext i1 %6343 to i8
  store i8 %6344, i8* %82, align 1
  %6345 = lshr i32 %6327, 31
  %6346 = trunc i32 %6345 to i8
  store i8 %6346, i8* %85, align 1
  %6347 = lshr i32 %6326, 31
  %6348 = xor i32 %6345, %6315
  %6349 = xor i32 %6345, %6347
  %6350 = add nuw nsw i32 %6348, %6349
  %6351 = icmp eq i32 %6350, 2
  %6352 = zext i1 %6351 to i8
  store i8 %6352, i8* %91, align 1
  %6353 = sext i32 %6327 to i64
  store i64 %6353, i64* %RCX.i2541, align 8
  %6354 = load i64, i64* %RAX.i2556, align 8
  %6355 = shl nsw i64 %6353, 2
  %6356 = add i64 %6355, %6354
  %6357 = add i64 %5830, 233
  store i64 %6357, i64* %3, align 8
  %6358 = load <2 x float>, <2 x float>* %191, align 1
  %6359 = load <2 x i32>, <2 x i32>* %196, align 1
  %6360 = inttoptr i64 %6356 to float*
  %6361 = load float, float* %6360, align 4
  %6362 = extractelement <2 x float> %6358, i32 0
  %6363 = fmul float %6362, %6361
  store float %6363, float* %192, align 1
  %6364 = bitcast <2 x float> %6358 to <2 x i32>
  %6365 = extractelement <2 x i32> %6364, i32 1
  store i32 %6365, i32* %187, align 1
  %6366 = extractelement <2 x i32> %6359, i32 0
  store i32 %6366, i32* %188, align 1
  %6367 = extractelement <2 x i32> %6359, i32 1
  store i32 %6367, i32* %190, align 1
  %6368 = load i64, i64* %RBP.i, align 8
  %6369 = add i64 %6368, -88
  %6370 = add i64 %5830, 238
  store i64 %6370, i64* %3, align 8
  %6371 = load <2 x float>, <2 x float>* %191, align 1
  %6372 = extractelement <2 x float> %6371, i32 0
  %6373 = inttoptr i64 %6369 to float*
  store float %6372, float* %6373, align 4
  %6374 = load i64, i64* %RBP.i, align 8
  %6375 = add i64 %6374, -88
  %6376 = load i64, i64* %3, align 8
  %6377 = add i64 %6376, 5
  store i64 %6377, i64* %3, align 8
  %6378 = inttoptr i64 %6375 to float*
  %6379 = inttoptr i64 %6375 to i32*
  %6380 = load i32, i32* %6379, align 4
  store i32 %6380, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6381 = add i64 %6376, 10
  store i64 %6381, i64* %3, align 8
  %6382 = load <2 x float>, <2 x float>* %191, align 1
  %6383 = load <2 x i32>, <2 x i32>* %196, align 1
  %6384 = load float, float* %6378, align 4
  %6385 = extractelement <2 x float> %6382, i32 0
  %6386 = fmul float %6385, %6384
  store float %6386, float* %192, align 1
  %6387 = bitcast <2 x float> %6382 to <2 x i32>
  %6388 = extractelement <2 x i32> %6387, i32 1
  store i32 %6388, i32* %187, align 1
  %6389 = extractelement <2 x i32> %6383, i32 0
  store i32 %6389, i32* %188, align 1
  %6390 = extractelement <2 x i32> %6383, i32 1
  store i32 %6390, i32* %190, align 1
  %6391 = add i64 %6374, -80
  %6392 = add i64 %6376, 15
  store i64 %6392, i64* %3, align 8
  %6393 = load <2 x float>, <2 x float>* %191, align 1
  %6394 = load <2 x i32>, <2 x i32>* %196, align 1
  %6395 = inttoptr i64 %6391 to float*
  %6396 = load float, float* %6395, align 4
  %6397 = extractelement <2 x float> %6393, i32 0
  %6398 = fadd float %6397, %6396
  store float %6398, float* %192, align 1
  %6399 = bitcast <2 x float> %6393 to <2 x i32>
  %6400 = extractelement <2 x i32> %6399, i32 1
  store i32 %6400, i32* %187, align 1
  %6401 = extractelement <2 x i32> %6394, i32 0
  store i32 %6401, i32* %188, align 1
  %6402 = extractelement <2 x i32> %6394, i32 1
  store i32 %6402, i32* %190, align 1
  %6403 = add i64 %6376, 20
  store i64 %6403, i64* %3, align 8
  %6404 = load <2 x float>, <2 x float>* %191, align 1
  %6405 = extractelement <2 x float> %6404, i32 0
  store float %6405, float* %6395, align 4
  %6406 = load i64, i64* %RBP.i, align 8
  %6407 = add i64 %6406, -40
  %6408 = load i64, i64* %3, align 8
  %6409 = add i64 %6408, 4
  store i64 %6409, i64* %3, align 8
  %6410 = inttoptr i64 %6407 to i64*
  %6411 = load i64, i64* %6410, align 8
  store i64 %6411, i64* %RAX.i2556, align 8
  %6412 = add i64 %6408, 7
  store i64 %6412, i64* %3, align 8
  %6413 = inttoptr i64 %6411 to i64*
  %6414 = load i64, i64* %6413, align 8
  store i64 %6414, i64* %RAX.i2556, align 8
  %6415 = add i64 %6408, 11
  store i64 %6415, i64* %3, align 8
  %6416 = load i64, i64* %6410, align 8
  store i64 %6416, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6417 = add i64 %6408, 19
  store i64 %6417, i64* %3, align 8
  %6418 = load i64, i64* %6410, align 8
  store i64 %6418, i64* %RCX.i2541, align 8
  %6419 = add i64 %6408, 23
  store i64 %6419, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6420 = add i64 %6408, 27
  store i64 %6420, i64* %3, align 8
  %6421 = load i64, i64* %6410, align 8
  store i64 %6421, i64* %RCX.i2541, align 8
  %6422 = add i64 %6408, 31
  store i64 %6422, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6423 = add i64 %6406, -52
  %6424 = add i64 %6408, 34
  store i64 %6424, i64* %3, align 8
  %6425 = inttoptr i64 %6423 to i32*
  %6426 = load i32, i32* %6425, align 4
  %6427 = zext i32 %6426 to i64
  store i64 %6427, i64* %RSI.i2547, align 8
  %6428 = add i64 %6408, 38
  store i64 %6428, i64* %3, align 8
  %6429 = load i64, i64* %6410, align 8
  store i64 %6429, i64* %RCX.i2541, align 8
  %6430 = add i64 %6429, 16
  %6431 = add i64 %6408, 42
  store i64 %6431, i64* %3, align 8
  %6432 = inttoptr i64 %6430 to i32*
  %6433 = load i32, i32* %6432, align 4
  %6434 = sext i32 %6426 to i64
  %6435 = sext i32 %6433 to i64
  %6436 = mul nsw i64 %6435, %6434
  %6437 = trunc i64 %6436 to i32
  %6438 = and i64 %6436, 4294967295
  store i64 %6438, i64* %RSI.i2547, align 8
  %6439 = shl i64 %6436, 32
  %6440 = ashr exact i64 %6439, 32
  %6441 = icmp ne i64 %6440, %6436
  %6442 = zext i1 %6441 to i8
  store i8 %6442, i8* %68, align 1
  %6443 = and i32 %6437, 255
  %6444 = tail call i32 @llvm.ctpop.i32(i32 %6443)
  %6445 = trunc i32 %6444 to i8
  %6446 = and i8 %6445, 1
  %6447 = xor i8 %6446, 1
  store i8 %6447, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6448 = lshr i32 %6437, 31
  %6449 = trunc i32 %6448 to i8
  store i8 %6449, i8* %85, align 1
  store i8 %6442, i8* %91, align 1
  %6450 = load i64, i64* %RBP.i, align 8
  %6451 = add i64 %6450, -40
  %6452 = add i64 %6408, 46
  store i64 %6452, i64* %3, align 8
  %6453 = inttoptr i64 %6451 to i64*
  %6454 = load i64, i64* %6453, align 8
  store i64 %6454, i64* %RCX.i2541, align 8
  %6455 = add i64 %6454, 20
  %6456 = add i64 %6408, 50
  store i64 %6456, i64* %3, align 8
  %6457 = inttoptr i64 %6455 to i32*
  %6458 = load i32, i32* %6457, align 4
  %6459 = sext i32 %6458 to i64
  %6460 = mul nsw i64 %6459, %6440
  %6461 = and i64 %6460, 4294967295
  store i64 %6461, i64* %RSI.i2547, align 8
  %6462 = trunc i64 %6460 to i32
  store i64 %6461, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6463 = and i32 %6462, 255
  %6464 = tail call i32 @llvm.ctpop.i32(i32 %6463)
  %6465 = trunc i32 %6464 to i8
  %6466 = and i8 %6465, 1
  %6467 = xor i8 %6466, 1
  store i8 %6467, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6468 = icmp eq i32 %6462, 0
  %6469 = zext i1 %6468 to i8
  store i8 %6469, i8* %82, align 1
  %6470 = lshr i32 %6462, 31
  %6471 = trunc i32 %6470 to i8
  store i8 %6471, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6472 = add i64 %6450, -56
  %6473 = add i64 %6408, 55
  store i64 %6473, i64* %3, align 8
  %6474 = inttoptr i64 %6472 to i32*
  %6475 = load i32, i32* %6474, align 4
  %6476 = zext i32 %6475 to i64
  store i64 %6476, i64* %RSI.i2547, align 8
  %6477 = add i64 %6408, 59
  store i64 %6477, i64* %3, align 8
  %6478 = load i64, i64* %6453, align 8
  store i64 %6478, i64* %RCX.i2541, align 8
  %6479 = add i64 %6478, 20
  %6480 = add i64 %6408, 63
  store i64 %6480, i64* %3, align 8
  %6481 = inttoptr i64 %6479 to i32*
  %6482 = load i32, i32* %6481, align 4
  %6483 = sext i32 %6475 to i64
  %6484 = sext i32 %6482 to i64
  %6485 = mul nsw i64 %6484, %6483
  %6486 = and i64 %6485, 4294967295
  store i64 %6486, i64* %RSI.i2547, align 8
  %6487 = trunc i64 %6485 to i32
  %6488 = add i32 %6487, %6462
  %6489 = zext i32 %6488 to i64
  store i64 %6489, i64* %RDX.i2544, align 8
  %6490 = icmp ult i32 %6488, %6462
  %6491 = icmp ult i32 %6488, %6487
  %6492 = or i1 %6490, %6491
  %6493 = zext i1 %6492 to i8
  store i8 %6493, i8* %68, align 1
  %6494 = and i32 %6488, 255
  %6495 = tail call i32 @llvm.ctpop.i32(i32 %6494)
  %6496 = trunc i32 %6495 to i8
  %6497 = and i8 %6496, 1
  %6498 = xor i8 %6497, 1
  store i8 %6498, i8* %74, align 1
  %6499 = xor i64 %6485, %6460
  %6500 = trunc i64 %6499 to i32
  %6501 = xor i32 %6500, %6488
  %6502 = lshr i32 %6501, 4
  %6503 = trunc i32 %6502 to i8
  %6504 = and i8 %6503, 1
  store i8 %6504, i8* %79, align 1
  %6505 = icmp eq i32 %6488, 0
  %6506 = zext i1 %6505 to i8
  store i8 %6506, i8* %82, align 1
  %6507 = lshr i32 %6488, 31
  %6508 = trunc i32 %6507 to i8
  store i8 %6508, i8* %85, align 1
  %6509 = lshr i32 %6487, 31
  %6510 = xor i32 %6507, %6470
  %6511 = xor i32 %6507, %6509
  %6512 = add nuw nsw i32 %6510, %6511
  %6513 = icmp eq i32 %6512, 2
  %6514 = zext i1 %6513 to i8
  store i8 %6514, i8* %91, align 1
  %6515 = load i64, i64* %RBP.i, align 8
  %6516 = add i64 %6515, -60
  %6517 = add i64 %6408, 68
  store i64 %6517, i64* %3, align 8
  %6518 = inttoptr i64 %6516 to i32*
  %6519 = load i32, i32* %6518, align 4
  %6520 = add i32 %6519, %6488
  %6521 = zext i32 %6520 to i64
  store i64 %6521, i64* %RDX.i2544, align 8
  %6522 = icmp ult i32 %6520, %6488
  %6523 = icmp ult i32 %6520, %6519
  %6524 = or i1 %6522, %6523
  %6525 = zext i1 %6524 to i8
  store i8 %6525, i8* %68, align 1
  %6526 = and i32 %6520, 255
  %6527 = tail call i32 @llvm.ctpop.i32(i32 %6526)
  %6528 = trunc i32 %6527 to i8
  %6529 = and i8 %6528, 1
  %6530 = xor i8 %6529, 1
  store i8 %6530, i8* %74, align 1
  %6531 = xor i32 %6519, %6488
  %6532 = xor i32 %6531, %6520
  %6533 = lshr i32 %6532, 4
  %6534 = trunc i32 %6533 to i8
  %6535 = and i8 %6534, 1
  store i8 %6535, i8* %79, align 1
  %6536 = icmp eq i32 %6520, 0
  %6537 = zext i1 %6536 to i8
  store i8 %6537, i8* %82, align 1
  %6538 = lshr i32 %6520, 31
  %6539 = trunc i32 %6538 to i8
  store i8 %6539, i8* %85, align 1
  %6540 = lshr i32 %6519, 31
  %6541 = xor i32 %6538, %6507
  %6542 = xor i32 %6538, %6540
  %6543 = add nuw nsw i32 %6541, %6542
  %6544 = icmp eq i32 %6543, 2
  %6545 = zext i1 %6544 to i8
  store i8 %6545, i8* %91, align 1
  %6546 = sext i32 %6520 to i64
  store i64 %6546, i64* %RCX.i2541, align 8
  %6547 = load i64, i64* %RAX.i2556, align 8
  %6548 = shl nsw i64 %6546, 2
  %6549 = add i64 %6548, %6547
  %6550 = add i64 %6408, 76
  store i64 %6550, i64* %3, align 8
  %6551 = inttoptr i64 %6549 to i32*
  %6552 = load i32, i32* %6551, align 4
  store i32 %6552, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6553 = load i32, i32* bitcast (%G_0x603058_type* @G_0x603058 to i32*), align 8
  store i32 %6553, i32* %942, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %6554 = add i64 %6515, -88
  %6555 = add i64 %6408, 90
  store i64 %6555, i64* %3, align 8
  %6556 = load <2 x float>, <2 x float>* %206, align 1
  %6557 = load <2 x i32>, <2 x i32>* %207, align 1
  %6558 = inttoptr i64 %6554 to float*
  %6559 = load float, float* %6558, align 4
  %6560 = extractelement <2 x float> %6556, i32 0
  %6561 = fmul float %6560, %6559
  store float %6561, float* %199, align 1
  %6562 = bitcast <2 x float> %6556 to <2 x i32>
  %6563 = extractelement <2 x i32> %6562, i32 1
  store i32 %6563, i32* %208, align 1
  %6564 = extractelement <2 x i32> %6557, i32 0
  store i32 %6564, i32* %209, align 1
  %6565 = extractelement <2 x i32> %6557, i32 1
  store i32 %6565, i32* %210, align 1
  %6566 = load <2 x float>, <2 x float>* %191, align 1
  %6567 = load <2 x i32>, <2 x i32>* %196, align 1
  %6568 = load <2 x float>, <2 x float>* %206, align 1
  %6569 = extractelement <2 x float> %6566, i32 0
  %6570 = extractelement <2 x float> %6568, i32 0
  %6571 = fadd float %6569, %6570
  store float %6571, float* %192, align 1
  %6572 = bitcast <2 x float> %6566 to <2 x i32>
  %6573 = extractelement <2 x i32> %6572, i32 1
  store i32 %6573, i32* %187, align 1
  %6574 = extractelement <2 x i32> %6567, i32 0
  store i32 %6574, i32* %188, align 1
  %6575 = extractelement <2 x i32> %6567, i32 1
  store i32 %6575, i32* %190, align 1
  %6576 = add i64 %6515, 24
  %6577 = add i64 %6408, 98
  store i64 %6577, i64* %3, align 8
  %6578 = inttoptr i64 %6576 to i64*
  %6579 = load i64, i64* %6578, align 8
  store i64 %6579, i64* %RAX.i2556, align 8
  %6580 = add i64 %6408, 101
  store i64 %6580, i64* %3, align 8
  %6581 = inttoptr i64 %6579 to i64*
  %6582 = load i64, i64* %6581, align 8
  store i64 %6582, i64* %RAX.i2556, align 8
  %6583 = load i64, i64* %RBP.i, align 8
  %6584 = add i64 %6583, 24
  %6585 = add i64 %6408, 105
  store i64 %6585, i64* %3, align 8
  %6586 = inttoptr i64 %6584 to i64*
  %6587 = load i64, i64* %6586, align 8
  store i64 %6587, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6588 = add i64 %6408, 113
  store i64 %6588, i64* %3, align 8
  %6589 = load i64, i64* %6586, align 8
  store i64 %6589, i64* %RCX.i2541, align 8
  %6590 = add i64 %6408, 117
  store i64 %6590, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6591 = add i64 %6408, 121
  store i64 %6591, i64* %3, align 8
  %6592 = load i64, i64* %6586, align 8
  store i64 %6592, i64* %RCX.i2541, align 8
  %6593 = add i64 %6408, 125
  store i64 %6593, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6594 = add i64 %6583, -52
  %6595 = add i64 %6408, 128
  store i64 %6595, i64* %3, align 8
  %6596 = inttoptr i64 %6594 to i32*
  %6597 = load i32, i32* %6596, align 4
  %6598 = zext i32 %6597 to i64
  store i64 %6598, i64* %RSI.i2547, align 8
  %6599 = add i64 %6408, 132
  store i64 %6599, i64* %3, align 8
  %6600 = load i64, i64* %6586, align 8
  store i64 %6600, i64* %RCX.i2541, align 8
  %6601 = add i64 %6600, 16
  %6602 = add i64 %6408, 136
  store i64 %6602, i64* %3, align 8
  %6603 = inttoptr i64 %6601 to i32*
  %6604 = load i32, i32* %6603, align 4
  %6605 = sext i32 %6597 to i64
  %6606 = sext i32 %6604 to i64
  %6607 = mul nsw i64 %6606, %6605
  %6608 = trunc i64 %6607 to i32
  %6609 = and i64 %6607, 4294967295
  store i64 %6609, i64* %RSI.i2547, align 8
  %6610 = shl i64 %6607, 32
  %6611 = ashr exact i64 %6610, 32
  %6612 = icmp ne i64 %6611, %6607
  %6613 = zext i1 %6612 to i8
  store i8 %6613, i8* %68, align 1
  %6614 = and i32 %6608, 255
  %6615 = tail call i32 @llvm.ctpop.i32(i32 %6614)
  %6616 = trunc i32 %6615 to i8
  %6617 = and i8 %6616, 1
  %6618 = xor i8 %6617, 1
  store i8 %6618, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6619 = lshr i32 %6608, 31
  %6620 = trunc i32 %6619 to i8
  store i8 %6620, i8* %85, align 1
  store i8 %6613, i8* %91, align 1
  %6621 = add i64 %6408, 140
  store i64 %6621, i64* %3, align 8
  %6622 = load i64, i64* %6586, align 8
  store i64 %6622, i64* %RCX.i2541, align 8
  %6623 = add i64 %6622, 20
  %6624 = add i64 %6408, 144
  store i64 %6624, i64* %3, align 8
  %6625 = inttoptr i64 %6623 to i32*
  %6626 = load i32, i32* %6625, align 4
  %6627 = sext i32 %6626 to i64
  %6628 = mul nsw i64 %6627, %6611
  %6629 = and i64 %6628, 4294967295
  store i64 %6629, i64* %RSI.i2547, align 8
  %6630 = trunc i64 %6628 to i32
  store i64 %6629, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6631 = and i32 %6630, 255
  %6632 = tail call i32 @llvm.ctpop.i32(i32 %6631)
  %6633 = trunc i32 %6632 to i8
  %6634 = and i8 %6633, 1
  %6635 = xor i8 %6634, 1
  store i8 %6635, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6636 = icmp eq i32 %6630, 0
  %6637 = zext i1 %6636 to i8
  store i8 %6637, i8* %82, align 1
  %6638 = lshr i32 %6630, 31
  %6639 = trunc i32 %6638 to i8
  store i8 %6639, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6640 = load i64, i64* %RBP.i, align 8
  %6641 = add i64 %6640, -56
  %6642 = add i64 %6408, 149
  store i64 %6642, i64* %3, align 8
  %6643 = inttoptr i64 %6641 to i32*
  %6644 = load i32, i32* %6643, align 4
  %6645 = zext i32 %6644 to i64
  store i64 %6645, i64* %RSI.i2547, align 8
  %6646 = add i64 %6640, 24
  %6647 = add i64 %6408, 153
  store i64 %6647, i64* %3, align 8
  %6648 = inttoptr i64 %6646 to i64*
  %6649 = load i64, i64* %6648, align 8
  store i64 %6649, i64* %RCX.i2541, align 8
  %6650 = add i64 %6649, 20
  %6651 = add i64 %6408, 157
  store i64 %6651, i64* %3, align 8
  %6652 = inttoptr i64 %6650 to i32*
  %6653 = load i32, i32* %6652, align 4
  %6654 = sext i32 %6644 to i64
  %6655 = sext i32 %6653 to i64
  %6656 = mul nsw i64 %6655, %6654
  %6657 = and i64 %6656, 4294967295
  store i64 %6657, i64* %RSI.i2547, align 8
  %6658 = trunc i64 %6656 to i32
  %6659 = add i32 %6658, %6630
  %6660 = zext i32 %6659 to i64
  store i64 %6660, i64* %RDX.i2544, align 8
  %6661 = icmp ult i32 %6659, %6630
  %6662 = icmp ult i32 %6659, %6658
  %6663 = or i1 %6661, %6662
  %6664 = zext i1 %6663 to i8
  store i8 %6664, i8* %68, align 1
  %6665 = and i32 %6659, 255
  %6666 = tail call i32 @llvm.ctpop.i32(i32 %6665)
  %6667 = trunc i32 %6666 to i8
  %6668 = and i8 %6667, 1
  %6669 = xor i8 %6668, 1
  store i8 %6669, i8* %74, align 1
  %6670 = xor i64 %6656, %6628
  %6671 = trunc i64 %6670 to i32
  %6672 = xor i32 %6671, %6659
  %6673 = lshr i32 %6672, 4
  %6674 = trunc i32 %6673 to i8
  %6675 = and i8 %6674, 1
  store i8 %6675, i8* %79, align 1
  %6676 = icmp eq i32 %6659, 0
  %6677 = zext i1 %6676 to i8
  store i8 %6677, i8* %82, align 1
  %6678 = lshr i32 %6659, 31
  %6679 = trunc i32 %6678 to i8
  store i8 %6679, i8* %85, align 1
  %6680 = lshr i32 %6658, 31
  %6681 = xor i32 %6678, %6638
  %6682 = xor i32 %6678, %6680
  %6683 = add nuw nsw i32 %6681, %6682
  %6684 = icmp eq i32 %6683, 2
  %6685 = zext i1 %6684 to i8
  store i8 %6685, i8* %91, align 1
  %6686 = add i64 %6640, -60
  %6687 = add i64 %6408, 162
  store i64 %6687, i64* %3, align 8
  %6688 = inttoptr i64 %6686 to i32*
  %6689 = load i32, i32* %6688, align 4
  %6690 = add i32 %6689, %6659
  %6691 = zext i32 %6690 to i64
  store i64 %6691, i64* %RDX.i2544, align 8
  %6692 = icmp ult i32 %6690, %6659
  %6693 = icmp ult i32 %6690, %6689
  %6694 = or i1 %6692, %6693
  %6695 = zext i1 %6694 to i8
  store i8 %6695, i8* %68, align 1
  %6696 = and i32 %6690, 255
  %6697 = tail call i32 @llvm.ctpop.i32(i32 %6696)
  %6698 = trunc i32 %6697 to i8
  %6699 = and i8 %6698, 1
  %6700 = xor i8 %6699, 1
  store i8 %6700, i8* %74, align 1
  %6701 = xor i32 %6689, %6659
  %6702 = xor i32 %6701, %6690
  %6703 = lshr i32 %6702, 4
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  store i8 %6705, i8* %79, align 1
  %6706 = icmp eq i32 %6690, 0
  %6707 = zext i1 %6706 to i8
  store i8 %6707, i8* %82, align 1
  %6708 = lshr i32 %6690, 31
  %6709 = trunc i32 %6708 to i8
  store i8 %6709, i8* %85, align 1
  %6710 = lshr i32 %6689, 31
  %6711 = xor i32 %6708, %6678
  %6712 = xor i32 %6708, %6710
  %6713 = add nuw nsw i32 %6711, %6712
  %6714 = icmp eq i32 %6713, 2
  %6715 = zext i1 %6714 to i8
  store i8 %6715, i8* %91, align 1
  %6716 = sext i32 %6690 to i64
  store i64 %6716, i64* %RCX.i2541, align 8
  %6717 = load i64, i64* %RAX.i2556, align 8
  %6718 = shl nsw i64 %6716, 2
  %6719 = add i64 %6718, %6717
  %6720 = add i64 %6408, 170
  store i64 %6720, i64* %3, align 8
  %6721 = load <2 x float>, <2 x float>* %191, align 1
  %6722 = extractelement <2 x float> %6721, i32 0
  %6723 = inttoptr i64 %6719 to float*
  store float %6722, float* %6723, align 4
  %6724 = load i64, i64* %RBP.i, align 8
  %6725 = add i64 %6724, -60
  %6726 = load i64, i64* %3, align 8
  %6727 = add i64 %6726, 3
  store i64 %6727, i64* %3, align 8
  %6728 = inttoptr i64 %6725 to i32*
  %6729 = load i32, i32* %6728, align 4
  %6730 = add i32 %6729, 1
  %6731 = zext i32 %6730 to i64
  store i64 %6731, i64* %RAX.i2556, align 8
  %6732 = icmp eq i32 %6729, -1
  %6733 = icmp eq i32 %6730, 0
  %6734 = or i1 %6732, %6733
  %6735 = zext i1 %6734 to i8
  store i8 %6735, i8* %68, align 1
  %6736 = and i32 %6730, 255
  %6737 = tail call i32 @llvm.ctpop.i32(i32 %6736)
  %6738 = trunc i32 %6737 to i8
  %6739 = and i8 %6738, 1
  %6740 = xor i8 %6739, 1
  store i8 %6740, i8* %74, align 1
  %6741 = xor i32 %6729, %6730
  %6742 = lshr i32 %6741, 4
  %6743 = trunc i32 %6742 to i8
  %6744 = and i8 %6743, 1
  store i8 %6744, i8* %79, align 1
  %6745 = zext i1 %6733 to i8
  store i8 %6745, i8* %82, align 1
  %6746 = lshr i32 %6730, 31
  %6747 = trunc i32 %6746 to i8
  store i8 %6747, i8* %85, align 1
  %6748 = lshr i32 %6729, 31
  %6749 = xor i32 %6746, %6748
  %6750 = add nuw nsw i32 %6749, %6746
  %6751 = icmp eq i32 %6750, 2
  %6752 = zext i1 %6751 to i8
  store i8 %6752, i8* %91, align 1
  %6753 = add i64 %6726, 9
  store i64 %6753, i64* %3, align 8
  store i32 %6730, i32* %6728, align 4
  %6754 = load i64, i64* %3, align 8
  %6755 = add i64 %6754, -2748
  store i64 %6755, i64* %3, align 8
  br label %block_.L_400d6a

block_.L_40182b:                                  ; preds = %block_.L_400d6a
  %6756 = add i64 %356, -56
  %6757 = add i64 %392, 8
  store i64 %6757, i64* %3, align 8
  %6758 = inttoptr i64 %6756 to i32*
  %6759 = load i32, i32* %6758, align 4
  %6760 = add i32 %6759, 1
  %6761 = zext i32 %6760 to i64
  store i64 %6761, i64* %RAX.i2556, align 8
  %6762 = icmp eq i32 %6759, -1
  %6763 = icmp eq i32 %6760, 0
  %6764 = or i1 %6762, %6763
  %6765 = zext i1 %6764 to i8
  store i8 %6765, i8* %68, align 1
  %6766 = and i32 %6760, 255
  %6767 = tail call i32 @llvm.ctpop.i32(i32 %6766)
  %6768 = trunc i32 %6767 to i8
  %6769 = and i8 %6768, 1
  %6770 = xor i8 %6769, 1
  store i8 %6770, i8* %74, align 1
  %6771 = xor i32 %6759, %6760
  %6772 = lshr i32 %6771, 4
  %6773 = trunc i32 %6772 to i8
  %6774 = and i8 %6773, 1
  store i8 %6774, i8* %79, align 1
  %6775 = zext i1 %6763 to i8
  store i8 %6775, i8* %82, align 1
  %6776 = lshr i32 %6760, 31
  %6777 = trunc i32 %6776 to i8
  store i8 %6777, i8* %85, align 1
  %6778 = lshr i32 %6759, 31
  %6779 = xor i32 %6776, %6778
  %6780 = add nuw nsw i32 %6779, %6776
  %6781 = icmp eq i32 %6780, 2
  %6782 = zext i1 %6781 to i8
  store i8 %6782, i8* %91, align 1
  %6783 = add i64 %392, 14
  store i64 %6783, i64* %3, align 8
  store i32 %6760, i32* %6758, align 4
  %6784 = load i64, i64* %3, align 8
  %6785 = add i64 %6784, -2786
  store i64 %6785, i64* %3, align 8
  br label %block_.L_400d57

block_.L_40183e:                                  ; preds = %block_.L_400d57
  %6786 = add i64 %315, -52
  %6787 = add i64 %351, 8
  store i64 %6787, i64* %3, align 8
  %6788 = inttoptr i64 %6786 to i32*
  %6789 = load i32, i32* %6788, align 4
  %6790 = add i32 %6789, 1
  %6791 = zext i32 %6790 to i64
  store i64 %6791, i64* %RAX.i2556, align 8
  %6792 = icmp eq i32 %6789, -1
  %6793 = icmp eq i32 %6790, 0
  %6794 = or i1 %6792, %6793
  %6795 = zext i1 %6794 to i8
  store i8 %6795, i8* %68, align 1
  %6796 = and i32 %6790, 255
  %6797 = tail call i32 @llvm.ctpop.i32(i32 %6796)
  %6798 = trunc i32 %6797 to i8
  %6799 = and i8 %6798, 1
  %6800 = xor i8 %6799, 1
  store i8 %6800, i8* %74, align 1
  %6801 = xor i32 %6789, %6790
  %6802 = lshr i32 %6801, 4
  %6803 = trunc i32 %6802 to i8
  %6804 = and i8 %6803, 1
  store i8 %6804, i8* %79, align 1
  %6805 = zext i1 %6793 to i8
  store i8 %6805, i8* %82, align 1
  %6806 = lshr i32 %6790, 31
  %6807 = trunc i32 %6806 to i8
  store i8 %6807, i8* %85, align 1
  %6808 = lshr i32 %6789, 31
  %6809 = xor i32 %6806, %6808
  %6810 = add nuw nsw i32 %6809, %6806
  %6811 = icmp eq i32 %6810, 2
  %6812 = zext i1 %6811 to i8
  store i8 %6812, i8* %91, align 1
  %6813 = add i64 %351, 14
  store i64 %6813, i64* %3, align 8
  store i32 %6790, i32* %6788, align 4
  %6814 = load i64, i64* %3, align 8
  %6815 = add i64 %6814, -2824
  store i64 %6815, i64* %3, align 8
  br label %block_.L_400d44

block_.L_401851:                                  ; preds = %block_.L_400d44
  %6816 = add i64 %310, 7
  store i64 %6816, i64* %3, align 8
  store i32 1, i32* %277, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_401858

block_.L_401858:                                  ; preds = %block_.L_401943, %block_.L_401851
  %6817 = phi i64 [ %7318, %block_.L_401943 ], [ %.pre4, %block_.L_401851 ]
  %6818 = load i64, i64* %RBP.i, align 8
  %6819 = add i64 %6818, -52
  %6820 = add i64 %6817, 3
  store i64 %6820, i64* %3, align 8
  %6821 = inttoptr i64 %6819 to i32*
  %6822 = load i32, i32* %6821, align 4
  %6823 = zext i32 %6822 to i64
  store i64 %6823, i64* %RAX.i2556, align 8
  %6824 = add i64 %6818, -68
  %6825 = add i64 %6817, 6
  store i64 %6825, i64* %3, align 8
  %6826 = inttoptr i64 %6824 to i32*
  %6827 = load i32, i32* %6826, align 4
  %6828 = sub i32 %6822, %6827
  %6829 = icmp ult i32 %6822, %6827
  %6830 = zext i1 %6829 to i8
  store i8 %6830, i8* %68, align 1
  %6831 = and i32 %6828, 255
  %6832 = tail call i32 @llvm.ctpop.i32(i32 %6831)
  %6833 = trunc i32 %6832 to i8
  %6834 = and i8 %6833, 1
  %6835 = xor i8 %6834, 1
  store i8 %6835, i8* %74, align 1
  %6836 = xor i32 %6827, %6822
  %6837 = xor i32 %6836, %6828
  %6838 = lshr i32 %6837, 4
  %6839 = trunc i32 %6838 to i8
  %6840 = and i8 %6839, 1
  store i8 %6840, i8* %79, align 1
  %6841 = icmp eq i32 %6828, 0
  %6842 = zext i1 %6841 to i8
  store i8 %6842, i8* %82, align 1
  %6843 = lshr i32 %6828, 31
  %6844 = trunc i32 %6843 to i8
  store i8 %6844, i8* %85, align 1
  %6845 = lshr i32 %6822, 31
  %6846 = lshr i32 %6827, 31
  %6847 = xor i32 %6846, %6845
  %6848 = xor i32 %6843, %6845
  %6849 = add nuw nsw i32 %6848, %6847
  %6850 = icmp eq i32 %6849, 2
  %6851 = zext i1 %6850 to i8
  store i8 %6851, i8* %91, align 1
  %6852 = icmp ne i8 %6844, 0
  %6853 = xor i1 %6852, %6850
  %.v12 = select i1 %6853, i64 12, i64 254
  %6854 = add i64 %6817, %.v12
  store i64 %6854, i64* %3, align 8
  br i1 %6853, label %block_401864, label %block_.L_401956

block_401864:                                     ; preds = %block_.L_401858
  %6855 = add i64 %6818, -56
  %6856 = add i64 %6854, 7
  store i64 %6856, i64* %3, align 8
  %6857 = inttoptr i64 %6855 to i32*
  store i32 1, i32* %6857, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_40186b

block_.L_40186b:                                  ; preds = %block_.L_401930, %block_401864
  %6858 = phi i64 [ %7288, %block_.L_401930 ], [ %.pre5, %block_401864 ]
  %6859 = load i64, i64* %RBP.i, align 8
  %6860 = add i64 %6859, -56
  %6861 = add i64 %6858, 3
  store i64 %6861, i64* %3, align 8
  %6862 = inttoptr i64 %6860 to i32*
  %6863 = load i32, i32* %6862, align 4
  %6864 = zext i32 %6863 to i64
  store i64 %6864, i64* %RAX.i2556, align 8
  %6865 = add i64 %6859, -72
  %6866 = add i64 %6858, 6
  store i64 %6866, i64* %3, align 8
  %6867 = inttoptr i64 %6865 to i32*
  %6868 = load i32, i32* %6867, align 4
  %6869 = sub i32 %6863, %6868
  %6870 = icmp ult i32 %6863, %6868
  %6871 = zext i1 %6870 to i8
  store i8 %6871, i8* %68, align 1
  %6872 = and i32 %6869, 255
  %6873 = tail call i32 @llvm.ctpop.i32(i32 %6872)
  %6874 = trunc i32 %6873 to i8
  %6875 = and i8 %6874, 1
  %6876 = xor i8 %6875, 1
  store i8 %6876, i8* %74, align 1
  %6877 = xor i32 %6868, %6863
  %6878 = xor i32 %6877, %6869
  %6879 = lshr i32 %6878, 4
  %6880 = trunc i32 %6879 to i8
  %6881 = and i8 %6880, 1
  store i8 %6881, i8* %79, align 1
  %6882 = icmp eq i32 %6869, 0
  %6883 = zext i1 %6882 to i8
  store i8 %6883, i8* %82, align 1
  %6884 = lshr i32 %6869, 31
  %6885 = trunc i32 %6884 to i8
  store i8 %6885, i8* %85, align 1
  %6886 = lshr i32 %6863, 31
  %6887 = lshr i32 %6868, 31
  %6888 = xor i32 %6887, %6886
  %6889 = xor i32 %6884, %6886
  %6890 = add nuw nsw i32 %6889, %6888
  %6891 = icmp eq i32 %6890, 2
  %6892 = zext i1 %6891 to i8
  store i8 %6892, i8* %91, align 1
  %6893 = icmp ne i8 %6885, 0
  %6894 = xor i1 %6893, %6891
  %.v13 = select i1 %6894, i64 12, i64 216
  %6895 = add i64 %6858, %.v13
  store i64 %6895, i64* %3, align 8
  br i1 %6894, label %block_401877, label %block_.L_401943

block_401877:                                     ; preds = %block_.L_40186b
  %6896 = add i64 %6859, -60
  %6897 = add i64 %6895, 7
  store i64 %6897, i64* %3, align 8
  %6898 = inttoptr i64 %6896 to i32*
  store i32 1, i32* %6898, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_40187e

block_.L_40187e:                                  ; preds = %block_40188a, %block_401877
  %6899 = phi i64 [ %7258, %block_40188a ], [ %.pre6, %block_401877 ]
  %6900 = load i64, i64* %RBP.i, align 8
  %6901 = add i64 %6900, -60
  %6902 = add i64 %6899, 3
  store i64 %6902, i64* %3, align 8
  %6903 = inttoptr i64 %6901 to i32*
  %6904 = load i32, i32* %6903, align 4
  %6905 = zext i32 %6904 to i64
  store i64 %6905, i64* %RAX.i2556, align 8
  %6906 = add i64 %6900, -76
  %6907 = add i64 %6899, 6
  store i64 %6907, i64* %3, align 8
  %6908 = inttoptr i64 %6906 to i32*
  %6909 = load i32, i32* %6908, align 4
  %6910 = sub i32 %6904, %6909
  %6911 = icmp ult i32 %6904, %6909
  %6912 = zext i1 %6911 to i8
  store i8 %6912, i8* %68, align 1
  %6913 = and i32 %6910, 255
  %6914 = tail call i32 @llvm.ctpop.i32(i32 %6913)
  %6915 = trunc i32 %6914 to i8
  %6916 = and i8 %6915, 1
  %6917 = xor i8 %6916, 1
  store i8 %6917, i8* %74, align 1
  %6918 = xor i32 %6909, %6904
  %6919 = xor i32 %6918, %6910
  %6920 = lshr i32 %6919, 4
  %6921 = trunc i32 %6920 to i8
  %6922 = and i8 %6921, 1
  store i8 %6922, i8* %79, align 1
  %6923 = icmp eq i32 %6910, 0
  %6924 = zext i1 %6923 to i8
  store i8 %6924, i8* %82, align 1
  %6925 = lshr i32 %6910, 31
  %6926 = trunc i32 %6925 to i8
  store i8 %6926, i8* %85, align 1
  %6927 = lshr i32 %6904, 31
  %6928 = lshr i32 %6909, 31
  %6929 = xor i32 %6928, %6927
  %6930 = xor i32 %6925, %6927
  %6931 = add nuw nsw i32 %6930, %6929
  %6932 = icmp eq i32 %6931, 2
  %6933 = zext i1 %6932 to i8
  store i8 %6933, i8* %91, align 1
  %6934 = icmp ne i8 %6926, 0
  %6935 = xor i1 %6934, %6932
  %.v14 = select i1 %6935, i64 12, i64 178
  %6936 = add i64 %6899, %.v14
  store i64 %6936, i64* %3, align 8
  br i1 %6935, label %block_40188a, label %block_.L_401930

block_40188a:                                     ; preds = %block_.L_40187e
  %6937 = add i64 %6900, 24
  %6938 = add i64 %6936, 4
  store i64 %6938, i64* %3, align 8
  %6939 = inttoptr i64 %6937 to i64*
  %6940 = load i64, i64* %6939, align 8
  store i64 %6940, i64* %RAX.i2556, align 8
  %6941 = add i64 %6936, 7
  store i64 %6941, i64* %3, align 8
  %6942 = inttoptr i64 %6940 to i64*
  %6943 = load i64, i64* %6942, align 8
  store i64 %6943, i64* %RAX.i2556, align 8
  %6944 = add i64 %6936, 11
  store i64 %6944, i64* %3, align 8
  %6945 = load i64, i64* %6939, align 8
  store i64 %6945, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6946 = add i64 %6936, 19
  store i64 %6946, i64* %3, align 8
  %6947 = load i64, i64* %6939, align 8
  store i64 %6947, i64* %RCX.i2541, align 8
  %6948 = add i64 %6936, 23
  store i64 %6948, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6949 = add i64 %6936, 27
  store i64 %6949, i64* %3, align 8
  %6950 = load i64, i64* %6939, align 8
  store i64 %6950, i64* %RCX.i2541, align 8
  %6951 = add i64 %6936, 31
  store i64 %6951, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6952 = add i64 %6900, -52
  %6953 = add i64 %6936, 34
  store i64 %6953, i64* %3, align 8
  %6954 = inttoptr i64 %6952 to i32*
  %6955 = load i32, i32* %6954, align 4
  %6956 = zext i32 %6955 to i64
  store i64 %6956, i64* %RSI.i2547, align 8
  %6957 = add i64 %6936, 38
  store i64 %6957, i64* %3, align 8
  %6958 = load i64, i64* %6939, align 8
  store i64 %6958, i64* %RCX.i2541, align 8
  %6959 = add i64 %6958, 16
  %6960 = add i64 %6936, 42
  store i64 %6960, i64* %3, align 8
  %6961 = inttoptr i64 %6959 to i32*
  %6962 = load i32, i32* %6961, align 4
  %6963 = sext i32 %6955 to i64
  %6964 = sext i32 %6962 to i64
  %6965 = mul nsw i64 %6964, %6963
  %6966 = trunc i64 %6965 to i32
  %6967 = and i64 %6965, 4294967295
  store i64 %6967, i64* %RSI.i2547, align 8
  %6968 = shl i64 %6965, 32
  %6969 = ashr exact i64 %6968, 32
  %6970 = icmp ne i64 %6969, %6965
  %6971 = zext i1 %6970 to i8
  store i8 %6971, i8* %68, align 1
  %6972 = and i32 %6966, 255
  %6973 = tail call i32 @llvm.ctpop.i32(i32 %6972)
  %6974 = trunc i32 %6973 to i8
  %6975 = and i8 %6974, 1
  %6976 = xor i8 %6975, 1
  store i8 %6976, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6977 = lshr i32 %6966, 31
  %6978 = trunc i32 %6977 to i8
  store i8 %6978, i8* %85, align 1
  store i8 %6971, i8* %91, align 1
  %6979 = add i64 %6936, 46
  store i64 %6979, i64* %3, align 8
  %6980 = load i64, i64* %6939, align 8
  store i64 %6980, i64* %RCX.i2541, align 8
  %6981 = add i64 %6980, 20
  %6982 = add i64 %6936, 50
  store i64 %6982, i64* %3, align 8
  %6983 = inttoptr i64 %6981 to i32*
  %6984 = load i32, i32* %6983, align 4
  %6985 = sext i32 %6984 to i64
  %6986 = mul nsw i64 %6985, %6969
  %6987 = and i64 %6986, 4294967295
  store i64 %6987, i64* %RSI.i2547, align 8
  %6988 = trunc i64 %6986 to i32
  store i64 %6987, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6989 = and i32 %6988, 255
  %6990 = tail call i32 @llvm.ctpop.i32(i32 %6989)
  %6991 = trunc i32 %6990 to i8
  %6992 = and i8 %6991, 1
  %6993 = xor i8 %6992, 1
  store i8 %6993, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6994 = icmp eq i32 %6988, 0
  %6995 = zext i1 %6994 to i8
  store i8 %6995, i8* %82, align 1
  %6996 = lshr i32 %6988, 31
  %6997 = trunc i32 %6996 to i8
  store i8 %6997, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6998 = load i64, i64* %RBP.i, align 8
  %6999 = add i64 %6998, -56
  %7000 = add i64 %6936, 55
  store i64 %7000, i64* %3, align 8
  %7001 = inttoptr i64 %6999 to i32*
  %7002 = load i32, i32* %7001, align 4
  %7003 = zext i32 %7002 to i64
  store i64 %7003, i64* %RSI.i2547, align 8
  %7004 = add i64 %6998, 24
  %7005 = add i64 %6936, 59
  store i64 %7005, i64* %3, align 8
  %7006 = inttoptr i64 %7004 to i64*
  %7007 = load i64, i64* %7006, align 8
  store i64 %7007, i64* %RCX.i2541, align 8
  %7008 = add i64 %7007, 20
  %7009 = add i64 %6936, 63
  store i64 %7009, i64* %3, align 8
  %7010 = inttoptr i64 %7008 to i32*
  %7011 = load i32, i32* %7010, align 4
  %7012 = sext i32 %7002 to i64
  %7013 = sext i32 %7011 to i64
  %7014 = mul nsw i64 %7013, %7012
  %7015 = and i64 %7014, 4294967295
  store i64 %7015, i64* %RSI.i2547, align 8
  %7016 = trunc i64 %7014 to i32
  %7017 = add i32 %7016, %6988
  %7018 = zext i32 %7017 to i64
  store i64 %7018, i64* %RDX.i2544, align 8
  %7019 = icmp ult i32 %7017, %6988
  %7020 = icmp ult i32 %7017, %7016
  %7021 = or i1 %7019, %7020
  %7022 = zext i1 %7021 to i8
  store i8 %7022, i8* %68, align 1
  %7023 = and i32 %7017, 255
  %7024 = tail call i32 @llvm.ctpop.i32(i32 %7023)
  %7025 = trunc i32 %7024 to i8
  %7026 = and i8 %7025, 1
  %7027 = xor i8 %7026, 1
  store i8 %7027, i8* %74, align 1
  %7028 = xor i64 %7014, %6986
  %7029 = trunc i64 %7028 to i32
  %7030 = xor i32 %7029, %7017
  %7031 = lshr i32 %7030, 4
  %7032 = trunc i32 %7031 to i8
  %7033 = and i8 %7032, 1
  store i8 %7033, i8* %79, align 1
  %7034 = icmp eq i32 %7017, 0
  %7035 = zext i1 %7034 to i8
  store i8 %7035, i8* %82, align 1
  %7036 = lshr i32 %7017, 31
  %7037 = trunc i32 %7036 to i8
  store i8 %7037, i8* %85, align 1
  %7038 = lshr i32 %7016, 31
  %7039 = xor i32 %7036, %6996
  %7040 = xor i32 %7036, %7038
  %7041 = add nuw nsw i32 %7039, %7040
  %7042 = icmp eq i32 %7041, 2
  %7043 = zext i1 %7042 to i8
  store i8 %7043, i8* %91, align 1
  %7044 = add i64 %6998, -60
  %7045 = add i64 %6936, 68
  store i64 %7045, i64* %3, align 8
  %7046 = inttoptr i64 %7044 to i32*
  %7047 = load i32, i32* %7046, align 4
  %7048 = add i32 %7047, %7017
  %7049 = zext i32 %7048 to i64
  store i64 %7049, i64* %RDX.i2544, align 8
  %7050 = icmp ult i32 %7048, %7017
  %7051 = icmp ult i32 %7048, %7047
  %7052 = or i1 %7050, %7051
  %7053 = zext i1 %7052 to i8
  store i8 %7053, i8* %68, align 1
  %7054 = and i32 %7048, 255
  %7055 = tail call i32 @llvm.ctpop.i32(i32 %7054)
  %7056 = trunc i32 %7055 to i8
  %7057 = and i8 %7056, 1
  %7058 = xor i8 %7057, 1
  store i8 %7058, i8* %74, align 1
  %7059 = xor i32 %7047, %7017
  %7060 = xor i32 %7059, %7048
  %7061 = lshr i32 %7060, 4
  %7062 = trunc i32 %7061 to i8
  %7063 = and i8 %7062, 1
  store i8 %7063, i8* %79, align 1
  %7064 = icmp eq i32 %7048, 0
  %7065 = zext i1 %7064 to i8
  store i8 %7065, i8* %82, align 1
  %7066 = lshr i32 %7048, 31
  %7067 = trunc i32 %7066 to i8
  store i8 %7067, i8* %85, align 1
  %7068 = lshr i32 %7047, 31
  %7069 = xor i32 %7066, %7036
  %7070 = xor i32 %7066, %7068
  %7071 = add nuw nsw i32 %7069, %7070
  %7072 = icmp eq i32 %7071, 2
  %7073 = zext i1 %7072 to i8
  store i8 %7073, i8* %91, align 1
  %7074 = sext i32 %7048 to i64
  store i64 %7074, i64* %RCX.i2541, align 8
  %7075 = load i64, i64* %RAX.i2556, align 8
  %7076 = shl nsw i64 %7074, 2
  %7077 = add i64 %7076, %7075
  %7078 = add i64 %6936, 76
  store i64 %7078, i64* %3, align 8
  %7079 = inttoptr i64 %7077 to i32*
  %7080 = load i32, i32* %7079, align 4
  store i32 %7080, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %7081 = load i64, i64* %RBP.i, align 8
  %7082 = add i64 %7081, -40
  %7083 = add i64 %6936, 80
  store i64 %7083, i64* %3, align 8
  %7084 = inttoptr i64 %7082 to i64*
  %7085 = load i64, i64* %7084, align 8
  store i64 %7085, i64* %RAX.i2556, align 8
  %7086 = add i64 %6936, 83
  store i64 %7086, i64* %3, align 8
  %7087 = inttoptr i64 %7085 to i64*
  %7088 = load i64, i64* %7087, align 8
  store i64 %7088, i64* %RAX.i2556, align 8
  %7089 = add i64 %6936, 87
  store i64 %7089, i64* %3, align 8
  %7090 = load i64, i64* %7084, align 8
  store i64 %7090, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7091 = add i64 %6936, 95
  store i64 %7091, i64* %3, align 8
  %7092 = load i64, i64* %7084, align 8
  store i64 %7092, i64* %RCX.i2541, align 8
  %7093 = add i64 %6936, 99
  store i64 %7093, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7094 = add i64 %6936, 103
  store i64 %7094, i64* %3, align 8
  %7095 = load i64, i64* %7084, align 8
  store i64 %7095, i64* %RCX.i2541, align 8
  %7096 = add i64 %6936, 107
  store i64 %7096, i64* %3, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7097 = add i64 %7081, -52
  %7098 = add i64 %6936, 110
  store i64 %7098, i64* %3, align 8
  %7099 = inttoptr i64 %7097 to i32*
  %7100 = load i32, i32* %7099, align 4
  %7101 = zext i32 %7100 to i64
  store i64 %7101, i64* %RSI.i2547, align 8
  %7102 = add i64 %6936, 114
  store i64 %7102, i64* %3, align 8
  %7103 = load i64, i64* %7084, align 8
  store i64 %7103, i64* %RCX.i2541, align 8
  %7104 = add i64 %7103, 16
  %7105 = add i64 %6936, 118
  store i64 %7105, i64* %3, align 8
  %7106 = inttoptr i64 %7104 to i32*
  %7107 = load i32, i32* %7106, align 4
  %7108 = sext i32 %7100 to i64
  %7109 = sext i32 %7107 to i64
  %7110 = mul nsw i64 %7109, %7108
  %7111 = trunc i64 %7110 to i32
  %7112 = and i64 %7110, 4294967295
  store i64 %7112, i64* %RSI.i2547, align 8
  %7113 = shl i64 %7110, 32
  %7114 = ashr exact i64 %7113, 32
  %7115 = icmp ne i64 %7114, %7110
  %7116 = zext i1 %7115 to i8
  store i8 %7116, i8* %68, align 1
  %7117 = and i32 %7111, 255
  %7118 = tail call i32 @llvm.ctpop.i32(i32 %7117)
  %7119 = trunc i32 %7118 to i8
  %7120 = and i8 %7119, 1
  %7121 = xor i8 %7120, 1
  store i8 %7121, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %7122 = lshr i32 %7111, 31
  %7123 = trunc i32 %7122 to i8
  store i8 %7123, i8* %85, align 1
  store i8 %7116, i8* %91, align 1
  %7124 = add i64 %6936, 122
  store i64 %7124, i64* %3, align 8
  %7125 = load i64, i64* %7084, align 8
  store i64 %7125, i64* %RCX.i2541, align 8
  %7126 = add i64 %7125, 20
  %7127 = add i64 %6936, 126
  store i64 %7127, i64* %3, align 8
  %7128 = inttoptr i64 %7126 to i32*
  %7129 = load i32, i32* %7128, align 4
  %7130 = sext i32 %7129 to i64
  %7131 = mul nsw i64 %7130, %7114
  %7132 = and i64 %7131, 4294967295
  store i64 %7132, i64* %RSI.i2547, align 8
  %7133 = trunc i64 %7131 to i32
  store i64 %7132, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %7134 = and i32 %7133, 255
  %7135 = tail call i32 @llvm.ctpop.i32(i32 %7134)
  %7136 = trunc i32 %7135 to i8
  %7137 = and i8 %7136, 1
  %7138 = xor i8 %7137, 1
  store i8 %7138, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %7139 = icmp eq i32 %7133, 0
  %7140 = zext i1 %7139 to i8
  store i8 %7140, i8* %82, align 1
  %7141 = lshr i32 %7133, 31
  %7142 = trunc i32 %7141 to i8
  store i8 %7142, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %7143 = load i64, i64* %RBP.i, align 8
  %7144 = add i64 %7143, -56
  %7145 = add i64 %6936, 131
  store i64 %7145, i64* %3, align 8
  %7146 = inttoptr i64 %7144 to i32*
  %7147 = load i32, i32* %7146, align 4
  %7148 = zext i32 %7147 to i64
  store i64 %7148, i64* %RSI.i2547, align 8
  %7149 = add i64 %7143, -40
  %7150 = add i64 %6936, 135
  store i64 %7150, i64* %3, align 8
  %7151 = inttoptr i64 %7149 to i64*
  %7152 = load i64, i64* %7151, align 8
  store i64 %7152, i64* %RCX.i2541, align 8
  %7153 = add i64 %7152, 20
  %7154 = add i64 %6936, 139
  store i64 %7154, i64* %3, align 8
  %7155 = inttoptr i64 %7153 to i32*
  %7156 = load i32, i32* %7155, align 4
  %7157 = sext i32 %7147 to i64
  %7158 = sext i32 %7156 to i64
  %7159 = mul nsw i64 %7158, %7157
  %7160 = and i64 %7159, 4294967295
  store i64 %7160, i64* %RSI.i2547, align 8
  %7161 = trunc i64 %7159 to i32
  %7162 = add i32 %7161, %7133
  %7163 = zext i32 %7162 to i64
  store i64 %7163, i64* %RDX.i2544, align 8
  %7164 = icmp ult i32 %7162, %7133
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
  %7173 = xor i64 %7159, %7131
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
  %7190 = add i64 %6936, 144
  store i64 %7190, i64* %3, align 8
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
  %7223 = add i64 %6936, 152
  store i64 %7223, i64* %3, align 8
  %7224 = load <2 x float>, <2 x float>* %191, align 1
  %7225 = extractelement <2 x float> %7224, i32 0
  %7226 = inttoptr i64 %7222 to float*
  store float %7225, float* %7226, align 4
  %7227 = load i64, i64* %RBP.i, align 8
  %7228 = add i64 %7227, -60
  %7229 = load i64, i64* %3, align 8
  %7230 = add i64 %7229, 3
  store i64 %7230, i64* %3, align 8
  %7231 = inttoptr i64 %7228 to i32*
  %7232 = load i32, i32* %7231, align 4
  %7233 = add i32 %7232, 1
  %7234 = zext i32 %7233 to i64
  store i64 %7234, i64* %RAX.i2556, align 8
  %7235 = icmp eq i32 %7232, -1
  %7236 = icmp eq i32 %7233, 0
  %7237 = or i1 %7235, %7236
  %7238 = zext i1 %7237 to i8
  store i8 %7238, i8* %68, align 1
  %7239 = and i32 %7233, 255
  %7240 = tail call i32 @llvm.ctpop.i32(i32 %7239)
  %7241 = trunc i32 %7240 to i8
  %7242 = and i8 %7241, 1
  %7243 = xor i8 %7242, 1
  store i8 %7243, i8* %74, align 1
  %7244 = xor i32 %7232, %7233
  %7245 = lshr i32 %7244, 4
  %7246 = trunc i32 %7245 to i8
  %7247 = and i8 %7246, 1
  store i8 %7247, i8* %79, align 1
  %7248 = zext i1 %7236 to i8
  store i8 %7248, i8* %82, align 1
  %7249 = lshr i32 %7233, 31
  %7250 = trunc i32 %7249 to i8
  store i8 %7250, i8* %85, align 1
  %7251 = lshr i32 %7232, 31
  %7252 = xor i32 %7249, %7251
  %7253 = add nuw nsw i32 %7252, %7249
  %7254 = icmp eq i32 %7253, 2
  %7255 = zext i1 %7254 to i8
  store i8 %7255, i8* %91, align 1
  %7256 = add i64 %7229, 9
  store i64 %7256, i64* %3, align 8
  store i32 %7233, i32* %7231, align 4
  %7257 = load i64, i64* %3, align 8
  %7258 = add i64 %7257, -173
  store i64 %7258, i64* %3, align 8
  br label %block_.L_40187e

block_.L_401930:                                  ; preds = %block_.L_40187e
  %7259 = add i64 %6900, -56
  %7260 = add i64 %6936, 8
  store i64 %7260, i64* %3, align 8
  %7261 = inttoptr i64 %7259 to i32*
  %7262 = load i32, i32* %7261, align 4
  %7263 = add i32 %7262, 1
  %7264 = zext i32 %7263 to i64
  store i64 %7264, i64* %RAX.i2556, align 8
  %7265 = icmp eq i32 %7262, -1
  %7266 = icmp eq i32 %7263, 0
  %7267 = or i1 %7265, %7266
  %7268 = zext i1 %7267 to i8
  store i8 %7268, i8* %68, align 1
  %7269 = and i32 %7263, 255
  %7270 = tail call i32 @llvm.ctpop.i32(i32 %7269)
  %7271 = trunc i32 %7270 to i8
  %7272 = and i8 %7271, 1
  %7273 = xor i8 %7272, 1
  store i8 %7273, i8* %74, align 1
  %7274 = xor i32 %7262, %7263
  %7275 = lshr i32 %7274, 4
  %7276 = trunc i32 %7275 to i8
  %7277 = and i8 %7276, 1
  store i8 %7277, i8* %79, align 1
  %7278 = zext i1 %7266 to i8
  store i8 %7278, i8* %82, align 1
  %7279 = lshr i32 %7263, 31
  %7280 = trunc i32 %7279 to i8
  store i8 %7280, i8* %85, align 1
  %7281 = lshr i32 %7262, 31
  %7282 = xor i32 %7279, %7281
  %7283 = add nuw nsw i32 %7282, %7279
  %7284 = icmp eq i32 %7283, 2
  %7285 = zext i1 %7284 to i8
  store i8 %7285, i8* %91, align 1
  %7286 = add i64 %6936, 14
  store i64 %7286, i64* %3, align 8
  store i32 %7263, i32* %7261, align 4
  %7287 = load i64, i64* %3, align 8
  %7288 = add i64 %7287, -211
  store i64 %7288, i64* %3, align 8
  br label %block_.L_40186b

block_.L_401943:                                  ; preds = %block_.L_40186b
  %7289 = add i64 %6859, -52
  %7290 = add i64 %6895, 8
  store i64 %7290, i64* %3, align 8
  %7291 = inttoptr i64 %7289 to i32*
  %7292 = load i32, i32* %7291, align 4
  %7293 = add i32 %7292, 1
  %7294 = zext i32 %7293 to i64
  store i64 %7294, i64* %RAX.i2556, align 8
  %7295 = icmp eq i32 %7292, -1
  %7296 = icmp eq i32 %7293, 0
  %7297 = or i1 %7295, %7296
  %7298 = zext i1 %7297 to i8
  store i8 %7298, i8* %68, align 1
  %7299 = and i32 %7293, 255
  %7300 = tail call i32 @llvm.ctpop.i32(i32 %7299)
  %7301 = trunc i32 %7300 to i8
  %7302 = and i8 %7301, 1
  %7303 = xor i8 %7302, 1
  store i8 %7303, i8* %74, align 1
  %7304 = xor i32 %7292, %7293
  %7305 = lshr i32 %7304, 4
  %7306 = trunc i32 %7305 to i8
  %7307 = and i8 %7306, 1
  store i8 %7307, i8* %79, align 1
  %7308 = zext i1 %7296 to i8
  store i8 %7308, i8* %82, align 1
  %7309 = lshr i32 %7293, 31
  %7310 = trunc i32 %7309 to i8
  store i8 %7310, i8* %85, align 1
  %7311 = lshr i32 %7292, 31
  %7312 = xor i32 %7309, %7311
  %7313 = add nuw nsw i32 %7312, %7309
  %7314 = icmp eq i32 %7313, 2
  %7315 = zext i1 %7314 to i8
  store i8 %7315, i8* %91, align 1
  %7316 = add i64 %6895, 14
  store i64 %7316, i64* %3, align 8
  store i32 %7293, i32* %7291, align 4
  %7317 = load i64, i64* %3, align 8
  %7318 = add i64 %7317, -249
  store i64 %7318, i64* %3, align 8
  br label %block_.L_401858

block_.L_401956:                                  ; preds = %block_.L_401858
  %7319 = add i64 %6818, -64
  %7320 = add i64 %6854, 8
  store i64 %7320, i64* %3, align 8
  %7321 = inttoptr i64 %7319 to i32*
  %7322 = load i32, i32* %7321, align 4
  %7323 = add i32 %7322, 1
  %7324 = zext i32 %7323 to i64
  store i64 %7324, i64* %RAX.i2556, align 8
  %7325 = icmp eq i32 %7322, -1
  %7326 = icmp eq i32 %7323, 0
  %7327 = or i1 %7325, %7326
  %7328 = zext i1 %7327 to i8
  store i8 %7328, i8* %68, align 1
  %7329 = and i32 %7323, 255
  %7330 = tail call i32 @llvm.ctpop.i32(i32 %7329)
  %7331 = trunc i32 %7330 to i8
  %7332 = and i8 %7331, 1
  %7333 = xor i8 %7332, 1
  store i8 %7333, i8* %74, align 1
  %7334 = xor i32 %7322, %7323
  %7335 = lshr i32 %7334, 4
  %7336 = trunc i32 %7335 to i8
  %7337 = and i8 %7336, 1
  store i8 %7337, i8* %79, align 1
  %7338 = zext i1 %7326 to i8
  store i8 %7338, i8* %82, align 1
  %7339 = lshr i32 %7323, 31
  %7340 = trunc i32 %7339 to i8
  store i8 %7340, i8* %85, align 1
  %7341 = lshr i32 %7322, 31
  %7342 = xor i32 %7339, %7341
  %7343 = add nuw nsw i32 %7342, %7339
  %7344 = icmp eq i32 %7343, 2
  %7345 = zext i1 %7344 to i8
  store i8 %7345, i8* %91, align 1
  %7346 = add i64 %6854, 14
  store i64 %7346, i64* %3, align 8
  store i32 %7323, i32* %7321, align 4
  %7347 = load i64, i64* %3, align 8
  %7348 = add i64 %7347, -3131
  store i64 %7348, i64* %3, align 8
  br label %block_.L_400d29

block_.L_401969:                                  ; preds = %block_.L_400d29
  %7349 = add i64 %226, -80
  %7350 = add i64 %262, 5
  store i64 %7350, i64* %3, align 8
  %7351 = inttoptr i64 %7349 to i32*
  %7352 = load i32, i32* %7351, align 4
  store i32 %7352, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %7353 = add i64 %262, 6
  store i64 %7353, i64* %3, align 8
  %7354 = load i64, i64* %6, align 8
  %7355 = add i64 %7354, 8
  %7356 = inttoptr i64 %7354 to i64*
  %7357 = load i64, i64* %7356, align 8
  store i64 %7357, i64* %RBP.i, align 8
  store i64 %7355, i64* %6, align 8
  %7358 = add i64 %262, 7
  store i64 %7358, i64* %3, align 8
  %7359 = inttoptr i64 %7355 to i64*
  %7360 = load i64, i64* %7359, align 8
  store i64 %7360, i64* %3, align 8
  %7361 = add i64 %7354, 16
  store i64 %7361, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %5 = add i64 %4, 3
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401830(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401843(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40187e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401935(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40186b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401948(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401858(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40195b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
