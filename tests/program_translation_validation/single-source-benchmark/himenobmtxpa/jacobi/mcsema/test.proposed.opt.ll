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
  %225 = phi i64 [ %7034, %block_.L_401956 ], [ %.pre, %entry ]
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
  %273 = phi i64 [ %6505, %block_.L_40183e ], [ %.pre1, %block_400d35 ]
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
  %314 = phi i64 [ %6475, %block_.L_40182b ], [ %.pre2, %block_400d50 ]
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
  %355 = phi i64 [ %6445, %block_400d76 ], [ %.pre3, %block_400d63 ]
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
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %404 = add i64 %392, 27
  store i64 %404, i64* %3, align 8
  %405 = load i64, i64* %395, align 8
  store i64 %405, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %406 = add i64 %356, -52
  %407 = add i64 %392, 34
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RSI.i2547, align 8
  %411 = add i64 %392, 38
  store i64 %411, i64* %3, align 8
  %412 = load i64, i64* %395, align 8
  store i64 %412, i64* %RCX.i2541, align 8
  %413 = add i64 %412, 16
  %414 = add i64 %392, 42
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %409 to i64
  %418 = sext i32 %416 to i64
  %419 = mul nsw i64 %418, %417
  %420 = trunc i64 %419 to i32
  %421 = and i64 %419, 4294967295
  store i64 %421, i64* %RSI.i2547, align 8
  %422 = shl i64 %419, 32
  %423 = ashr exact i64 %422, 32
  %424 = icmp ne i64 %423, %419
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %68, align 1
  %426 = and i32 %420, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %431 = lshr i32 %420, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %85, align 1
  store i8 %425, i8* %91, align 1
  %433 = add i64 %392, 46
  store i64 %433, i64* %3, align 8
  %434 = load i64, i64* %395, align 8
  store i64 %434, i64* %RCX.i2541, align 8
  %435 = add i64 %434, 20
  %436 = add i64 %392, 50
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  %440 = mul nsw i64 %439, %423
  %441 = and i64 %440, 4294967295
  store i64 %441, i64* %RSI.i2547, align 8
  %442 = trunc i64 %440 to i32
  store i64 %441, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %443 = and i32 %442, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %448 = icmp eq i32 %442, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %82, align 1
  %450 = lshr i32 %442, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -56
  %454 = add i64 %392, 55
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RSI.i2547, align 8
  %458 = add i64 %452, -16
  %459 = add i64 %392, 59
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RCX.i2541, align 8
  %462 = add i64 %461, 20
  %463 = add i64 %392, 63
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %456 to i64
  %467 = sext i32 %465 to i64
  %468 = mul nsw i64 %467, %466
  %469 = and i64 %468, 4294967295
  store i64 %469, i64* %RSI.i2547, align 8
  %470 = trunc i64 %468 to i32
  %471 = add i32 %470, %442
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RDX.i2544, align 8
  %473 = icmp ult i32 %471, %442
  %474 = icmp ult i32 %471, %470
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %68, align 1
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %74, align 1
  %482 = xor i64 %468, %440
  %483 = trunc i64 %482 to i32
  %484 = xor i32 %483, %471
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %79, align 1
  %488 = icmp eq i32 %471, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %82, align 1
  %490 = lshr i32 %471, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %85, align 1
  %492 = lshr i32 %470, 31
  %493 = xor i32 %490, %450
  %494 = xor i32 %490, %492
  %495 = add nuw nsw i32 %493, %494
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %91, align 1
  %498 = add i64 %452, -60
  %499 = add i64 %392, 68
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, %471
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RDX.i2544, align 8
  %504 = icmp ult i32 %502, %471
  %505 = icmp ult i32 %502, %501
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %68, align 1
  %508 = and i32 %502, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %74, align 1
  %513 = xor i32 %501, %471
  %514 = xor i32 %513, %502
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %79, align 1
  %518 = icmp eq i32 %502, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %82, align 1
  %520 = lshr i32 %502, 31
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %85, align 1
  %522 = lshr i32 %501, 31
  %523 = xor i32 %520, %490
  %524 = xor i32 %520, %522
  %525 = add nuw nsw i32 %523, %524
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %91, align 1
  %528 = sext i32 %502 to i64
  store i64 %528, i64* %RCX.i2541, align 8
  %529 = load i64, i64* %RAX.i2556, align 8
  %530 = shl nsw i64 %528, 2
  %531 = add i64 %530, %529
  %532 = add i64 %392, 76
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  store i32 %534, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -40
  %537 = add i64 %392, 80
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i2556, align 8
  %540 = add i64 %392, 83
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i64*
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %RAX.i2556, align 8
  %543 = add i64 %392, 87
  store i64 %543, i64* %3, align 8
  %544 = load i64, i64* %538, align 8
  store i64 %544, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %545 = add i64 %392, 95
  store i64 %545, i64* %3, align 8
  %546 = load i64, i64* %538, align 8
  store i64 %546, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %547 = add i64 %392, 103
  store i64 %547, i64* %3, align 8
  %548 = load i64, i64* %538, align 8
  store i64 %548, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %549 = add i64 %535, -52
  %550 = add i64 %392, 110
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %552, 1
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RSI.i2547, align 8
  %555 = icmp eq i32 %552, -1
  %556 = icmp eq i32 %553, 0
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %68, align 1
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %74, align 1
  %564 = xor i32 %552, %553
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %79, align 1
  %568 = zext i1 %556 to i8
  store i8 %568, i8* %82, align 1
  %569 = lshr i32 %553, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %85, align 1
  %571 = lshr i32 %552, 31
  %572 = xor i32 %569, %571
  %573 = add nuw nsw i32 %572, %569
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %91, align 1
  %576 = add i64 %392, 117
  store i64 %576, i64* %3, align 8
  %577 = load i64, i64* %538, align 8
  store i64 %577, i64* %RCX.i2541, align 8
  %578 = add i64 %577, 16
  %579 = add i64 %392, 121
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %553 to i64
  %583 = sext i32 %581 to i64
  %584 = mul nsw i64 %583, %582
  %585 = trunc i64 %584 to i32
  %586 = and i64 %584, 4294967295
  store i64 %586, i64* %RSI.i2547, align 8
  %587 = shl i64 %584, 32
  %588 = ashr exact i64 %587, 32
  %589 = icmp ne i64 %588, %584
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %68, align 1
  %591 = and i32 %585, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %596 = lshr i32 %585, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %85, align 1
  store i8 %590, i8* %91, align 1
  %598 = add i64 %392, 125
  store i64 %598, i64* %3, align 8
  %599 = load i64, i64* %538, align 8
  store i64 %599, i64* %RCX.i2541, align 8
  %600 = add i64 %599, 20
  %601 = add i64 %392, 129
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  %605 = mul nsw i64 %604, %588
  %606 = and i64 %605, 4294967295
  store i64 %606, i64* %RSI.i2547, align 8
  %607 = trunc i64 %605 to i32
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %609 = and i32 %607, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %614 = icmp eq i32 %607, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %82, align 1
  %616 = lshr i32 %607, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -56
  %620 = add i64 %392, 134
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RSI.i2547, align 8
  %624 = add i64 %618, -40
  %625 = add i64 %392, 138
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RCX.i2541, align 8
  %628 = add i64 %627, 20
  %629 = add i64 %392, 142
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = sext i32 %622 to i64
  %633 = sext i32 %631 to i64
  %634 = mul nsw i64 %633, %632
  %635 = and i64 %634, 4294967295
  store i64 %635, i64* %RSI.i2547, align 8
  %636 = trunc i64 %634 to i32
  %637 = add i32 %636, %607
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RDX.i2544, align 8
  %639 = icmp ult i32 %637, %607
  %640 = icmp ult i32 %637, %636
  %641 = or i1 %639, %640
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %68, align 1
  %643 = and i32 %637, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %74, align 1
  %648 = xor i64 %634, %608
  %649 = trunc i64 %648 to i32
  %650 = xor i32 %649, %637
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %79, align 1
  %654 = icmp eq i32 %637, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %82, align 1
  %656 = lshr i32 %637, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %85, align 1
  %658 = lshr i32 %636, 31
  %659 = xor i32 %656, %616
  %660 = xor i32 %656, %658
  %661 = add nuw nsw i32 %659, %660
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %91, align 1
  %664 = add i64 %618, -60
  %665 = add i64 %392, 147
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = add i32 %667, %637
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RDX.i2544, align 8
  %670 = icmp ult i32 %668, %637
  %671 = icmp ult i32 %668, %667
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %68, align 1
  %674 = and i32 %668, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %74, align 1
  %679 = xor i32 %667, %637
  %680 = xor i32 %679, %668
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %79, align 1
  %684 = icmp eq i32 %668, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %82, align 1
  %686 = lshr i32 %668, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %85, align 1
  %688 = lshr i32 %667, 31
  %689 = xor i32 %686, %656
  %690 = xor i32 %686, %688
  %691 = add nuw nsw i32 %689, %690
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %91, align 1
  %694 = sext i32 %668 to i64
  store i64 %694, i64* %RCX.i2541, align 8
  %695 = load i64, i64* %RAX.i2556, align 8
  %696 = shl nsw i64 %694, 2
  %697 = add i64 %696, %695
  %698 = add i64 %392, 155
  store i64 %698, i64* %3, align 8
  %699 = load <2 x float>, <2 x float>* %191, align 1
  %700 = load <2 x i32>, <2 x i32>* %196, align 1
  %701 = inttoptr i64 %697 to float*
  %702 = load float, float* %701, align 4
  %703 = extractelement <2 x float> %699, i32 0
  %704 = fmul float %703, %702
  store float %704, float* %192, align 1
  %705 = bitcast <2 x float> %699 to <2 x i32>
  %706 = extractelement <2 x i32> %705, i32 1
  store i32 %706, i32* %187, align 1
  %707 = extractelement <2 x i32> %700, i32 0
  store i32 %707, i32* %188, align 1
  %708 = extractelement <2 x i32> %700, i32 1
  store i32 %708, i32* %190, align 1
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -16
  %711 = add i64 %392, 159
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX.i2556, align 8
  %714 = add i64 %392, 162
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RAX.i2556, align 8
  %717 = add i64 %392, 166
  store i64 %717, i64* %3, align 8
  %718 = load i64, i64* %712, align 8
  store i64 %718, i64* %RCX.i2541, align 8
  %719 = add i64 %718, 12
  %720 = add i64 %392, 169
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDX.i2544, align 8
  %724 = add i64 %392, 176
  store i64 %724, i64* %3, align 8
  %725 = load i64, i64* %712, align 8
  store i64 %725, i64* %RCX.i2541, align 8
  %726 = add i64 %725, 16
  %727 = add i64 %392, 180
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = sext i32 %722 to i64
  %731 = sext i32 %729 to i64
  %732 = mul nsw i64 %731, %730
  %733 = trunc i64 %732 to i32
  %734 = and i64 %732, 4294967295
  store i64 %734, i64* %RDX.i2544, align 8
  %735 = shl i64 %732, 32
  %736 = ashr exact i64 %735, 32
  %737 = icmp ne i64 %736, %732
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %68, align 1
  %739 = and i32 %733, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %744 = lshr i32 %733, 31
  %745 = trunc i32 %744 to i8
  store i8 %745, i8* %85, align 1
  store i8 %738, i8* %91, align 1
  %746 = add i64 %392, 184
  store i64 %746, i64* %3, align 8
  %747 = load i64, i64* %712, align 8
  store i64 %747, i64* %RCX.i2541, align 8
  %748 = add i64 %747, 20
  %749 = add i64 %392, 188
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  %753 = mul nsw i64 %752, %736
  %754 = trunc i64 %753 to i32
  %755 = and i64 %753, 4294967295
  store i64 %755, i64* %RDX.i2544, align 8
  %756 = shl i64 %753, 32
  %757 = ashr exact i64 %756, 32
  %758 = icmp ne i64 %757, %753
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %68, align 1
  %760 = and i32 %754, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %765 = lshr i32 %754, 31
  %766 = trunc i32 %765 to i8
  store i8 %766, i8* %85, align 1
  store i8 %759, i8* %91, align 1
  %767 = add i64 %709, -52
  %768 = add i64 %392, 191
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RSI.i2547, align 8
  %772 = add i64 %392, 195
  store i64 %772, i64* %3, align 8
  %773 = load i64, i64* %712, align 8
  store i64 %773, i64* %RCX.i2541, align 8
  %774 = add i64 %773, 16
  %775 = add i64 %392, 199
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sext i32 %770 to i64
  %779 = sext i32 %777 to i64
  %780 = mul nsw i64 %779, %778
  %781 = trunc i64 %780 to i32
  %782 = and i64 %780, 4294967295
  store i64 %782, i64* %RSI.i2547, align 8
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
  %794 = load i64, i64* %RBP.i, align 8
  %795 = add i64 %794, -16
  %796 = add i64 %392, 203
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i64*
  %798 = load i64, i64* %797, align 8
  store i64 %798, i64* %RCX.i2541, align 8
  %799 = add i64 %798, 20
  %800 = add i64 %392, 207
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sext i32 %802 to i64
  %804 = mul nsw i64 %803, %784
  %805 = and i64 %804, 4294967295
  store i64 %805, i64* %RSI.i2547, align 8
  %806 = trunc i64 %804 to i32
  %807 = add i32 %806, %754
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RDX.i2544, align 8
  %809 = icmp ult i32 %807, %754
  %810 = icmp ult i32 %807, %806
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %68, align 1
  %813 = and i32 %807, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %74, align 1
  %818 = xor i64 %804, %753
  %819 = trunc i64 %818 to i32
  %820 = xor i32 %819, %807
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %79, align 1
  %824 = icmp eq i32 %807, 0
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %82, align 1
  %826 = lshr i32 %807, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %85, align 1
  %828 = lshr i32 %806, 31
  %829 = xor i32 %826, %765
  %830 = xor i32 %826, %828
  %831 = add nuw nsw i32 %829, %830
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %91, align 1
  %834 = add i64 %794, -56
  %835 = add i64 %392, 212
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RSI.i2547, align 8
  %839 = add i64 %392, 216
  store i64 %839, i64* %3, align 8
  %840 = load i64, i64* %797, align 8
  store i64 %840, i64* %RCX.i2541, align 8
  %841 = add i64 %840, 20
  %842 = add i64 %392, 220
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %837 to i64
  %846 = sext i32 %844 to i64
  %847 = mul nsw i64 %846, %845
  %848 = and i64 %847, 4294967295
  store i64 %848, i64* %RSI.i2547, align 8
  %849 = trunc i64 %847 to i32
  %850 = add i32 %849, %807
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RDX.i2544, align 8
  %852 = icmp ult i32 %850, %807
  %853 = icmp ult i32 %850, %849
  %854 = or i1 %852, %853
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %68, align 1
  %856 = and i32 %850, 255
  %857 = tail call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %74, align 1
  %861 = xor i64 %847, %808
  %862 = trunc i64 %861 to i32
  %863 = xor i32 %862, %850
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %79, align 1
  %867 = icmp eq i32 %850, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %82, align 1
  %869 = lshr i32 %850, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %85, align 1
  %871 = lshr i32 %849, 31
  %872 = xor i32 %869, %826
  %873 = xor i32 %869, %871
  %874 = add nuw nsw i32 %872, %873
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %91, align 1
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -60
  %879 = add i64 %392, 225
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = add i32 %881, %850
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RDX.i2544, align 8
  %884 = icmp ult i32 %882, %850
  %885 = icmp ult i32 %882, %881
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %68, align 1
  %888 = and i32 %882, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %74, align 1
  %893 = xor i32 %881, %850
  %894 = xor i32 %893, %882
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %79, align 1
  %898 = icmp eq i32 %882, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %82, align 1
  %900 = lshr i32 %882, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %85, align 1
  %902 = lshr i32 %881, 31
  %903 = xor i32 %900, %869
  %904 = xor i32 %900, %902
  %905 = add nuw nsw i32 %903, %904
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %91, align 1
  %908 = sext i32 %882 to i64
  store i64 %908, i64* %RCX.i2541, align 8
  %909 = load i64, i64* %RAX.i2556, align 8
  %910 = shl nsw i64 %908, 2
  %911 = add i64 %910, %909
  %912 = add i64 %392, 233
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = bitcast %union.VectorReg* %197 to i32*
  store i32 %914, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %916 = add i64 %877, -40
  %917 = add i64 %392, 237
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i64*
  %919 = load i64, i64* %918, align 8
  store i64 %919, i64* %RAX.i2556, align 8
  %920 = add i64 %392, 240
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i64*
  %922 = load i64, i64* %921, align 8
  store i64 %922, i64* %RAX.i2556, align 8
  %923 = add i64 %392, 244
  store i64 %923, i64* %3, align 8
  %924 = load i64, i64* %918, align 8
  store i64 %924, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %925 = add i64 %392, 252
  store i64 %925, i64* %3, align 8
  %926 = load i64, i64* %918, align 8
  store i64 %926, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %927 = add i64 %392, 260
  store i64 %927, i64* %3, align 8
  %928 = load i64, i64* %918, align 8
  store i64 %928, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -52
  %931 = add i64 %392, 267
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RSI.i2547, align 8
  %935 = add i64 %929, -40
  %936 = add i64 %392, 271
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %RCX.i2541, align 8
  %939 = add i64 %938, 16
  %940 = add i64 %392, 275
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = sext i32 %933 to i64
  %944 = sext i32 %942 to i64
  %945 = mul nsw i64 %944, %943
  %946 = trunc i64 %945 to i32
  %947 = and i64 %945, 4294967295
  store i64 %947, i64* %RSI.i2547, align 8
  %948 = shl i64 %945, 32
  %949 = ashr exact i64 %948, 32
  %950 = icmp ne i64 %949, %945
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %68, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %957 = lshr i32 %946, 31
  %958 = trunc i32 %957 to i8
  store i8 %958, i8* %85, align 1
  store i8 %951, i8* %91, align 1
  %959 = add i64 %392, 279
  store i64 %959, i64* %3, align 8
  %960 = load i64, i64* %937, align 8
  store i64 %960, i64* %RCX.i2541, align 8
  %961 = add i64 %960, 20
  %962 = add i64 %392, 283
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = sext i32 %964 to i64
  %966 = mul nsw i64 %965, %949
  %967 = and i64 %966, 4294967295
  store i64 %967, i64* %RSI.i2547, align 8
  %968 = trunc i64 %966 to i32
  store i64 %967, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %969 = and i32 %968, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %974 = icmp eq i32 %968, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %82, align 1
  %976 = lshr i32 %968, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %978 = add i64 %929, -56
  %979 = add i64 %392, 288
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = add i32 %981, 1
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RSI.i2547, align 8
  %984 = icmp eq i32 %981, -1
  %985 = icmp eq i32 %982, 0
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %68, align 1
  %988 = and i32 %982, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %74, align 1
  %993 = xor i32 %981, %982
  %994 = lshr i32 %993, 4
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  store i8 %996, i8* %79, align 1
  %997 = zext i1 %985 to i8
  store i8 %997, i8* %82, align 1
  %998 = lshr i32 %982, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %85, align 1
  %1000 = lshr i32 %981, 31
  %1001 = xor i32 %998, %1000
  %1002 = add nuw nsw i32 %1001, %998
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %91, align 1
  %1005 = load i64, i64* %RBP.i, align 8
  %1006 = add i64 %1005, -40
  %1007 = add i64 %392, 295
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RCX.i2541, align 8
  %1010 = add i64 %1009, 20
  %1011 = add i64 %392, 299
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = sext i32 %982 to i64
  %1015 = sext i32 %1013 to i64
  %1016 = mul nsw i64 %1015, %1014
  %1017 = and i64 %1016, 4294967295
  store i64 %1017, i64* %RSI.i2547, align 8
  %1018 = trunc i64 %1016 to i32
  %1019 = add i32 %1018, %968
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RDX.i2544, align 8
  %1021 = icmp ult i32 %1019, %968
  %1022 = icmp ult i32 %1019, %1018
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %68, align 1
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %74, align 1
  %1030 = xor i64 %1016, %966
  %1031 = trunc i64 %1030 to i32
  %1032 = xor i32 %1031, %1019
  %1033 = lshr i32 %1032, 4
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  store i8 %1035, i8* %79, align 1
  %1036 = icmp eq i32 %1019, 0
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %82, align 1
  %1038 = lshr i32 %1019, 31
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* %85, align 1
  %1040 = lshr i32 %1018, 31
  %1041 = xor i32 %1038, %976
  %1042 = xor i32 %1038, %1040
  %1043 = add nuw nsw i32 %1041, %1042
  %1044 = icmp eq i32 %1043, 2
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %91, align 1
  %1046 = add i64 %1005, -60
  %1047 = add i64 %392, 304
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  %1050 = add i32 %1049, %1019
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RDX.i2544, align 8
  %1052 = icmp ult i32 %1050, %1019
  %1053 = icmp ult i32 %1050, %1049
  %1054 = or i1 %1052, %1053
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %68, align 1
  %1056 = and i32 %1050, 255
  %1057 = tail call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  store i8 %1060, i8* %74, align 1
  %1061 = xor i32 %1049, %1019
  %1062 = xor i32 %1061, %1050
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %79, align 1
  %1066 = icmp eq i32 %1050, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %82, align 1
  %1068 = lshr i32 %1050, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %85, align 1
  %1070 = lshr i32 %1049, 31
  %1071 = xor i32 %1068, %1038
  %1072 = xor i32 %1068, %1070
  %1073 = add nuw nsw i32 %1071, %1072
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %91, align 1
  %1076 = sext i32 %1050 to i64
  store i64 %1076, i64* %RCX.i2541, align 8
  %1077 = load i64, i64* %RAX.i2556, align 8
  %1078 = shl nsw i64 %1076, 2
  %1079 = add i64 %1078, %1077
  %1080 = add i64 %392, 312
  store i64 %1080, i64* %3, align 8
  %1081 = load <2 x float>, <2 x float>* %206, align 1
  %1082 = load <2 x i32>, <2 x i32>* %207, align 1
  %1083 = inttoptr i64 %1079 to float*
  %1084 = load float, float* %1083, align 4
  %1085 = extractelement <2 x float> %1081, i32 0
  %1086 = fmul float %1085, %1084
  store float %1086, float* %199, align 1
  %1087 = bitcast <2 x float> %1081 to <2 x i32>
  %1088 = extractelement <2 x i32> %1087, i32 1
  store i32 %1088, i32* %208, align 1
  %1089 = extractelement <2 x i32> %1082, i32 0
  store i32 %1089, i32* %209, align 1
  %1090 = extractelement <2 x i32> %1082, i32 1
  store i32 %1090, i32* %210, align 1
  %1091 = load <2 x float>, <2 x float>* %191, align 1
  %1092 = load <2 x i32>, <2 x i32>* %196, align 1
  %1093 = load <2 x float>, <2 x float>* %206, align 1
  %1094 = extractelement <2 x float> %1091, i32 0
  %1095 = extractelement <2 x float> %1093, i32 0
  %1096 = fadd float %1094, %1095
  store float %1096, float* %192, align 1
  %1097 = bitcast <2 x float> %1091 to <2 x i32>
  %1098 = extractelement <2 x i32> %1097, i32 1
  store i32 %1098, i32* %187, align 1
  %1099 = extractelement <2 x i32> %1092, i32 0
  store i32 %1099, i32* %188, align 1
  %1100 = extractelement <2 x i32> %1092, i32 1
  store i32 %1100, i32* %190, align 1
  %1101 = load i64, i64* %RBP.i, align 8
  %1102 = add i64 %1101, -16
  %1103 = add i64 %392, 320
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %RAX.i2556, align 8
  %1106 = add i64 %392, 323
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RAX.i2556, align 8
  %1109 = add i64 %392, 327
  store i64 %1109, i64* %3, align 8
  %1110 = load i64, i64* %1104, align 8
  store i64 %1110, i64* %RCX.i2541, align 8
  %1111 = add i64 %1110, 12
  %1112 = add i64 %392, 330
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = shl i32 %1114, 1
  %1116 = icmp slt i32 %1114, 0
  %1117 = icmp slt i32 %1115, 0
  %1118 = xor i1 %1116, %1117
  %1119 = zext i32 %1115 to i64
  store i64 %1119, i64* %RDX.i2544, align 8
  %.lobit = lshr i32 %1114, 31
  %1120 = trunc i32 %.lobit to i8
  store i8 %1120, i8* %68, align 1
  %1121 = and i32 %1115, 254
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1126 = icmp eq i32 %1115, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %82, align 1
  %1128 = lshr i32 %1114, 30
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %85, align 1
  %1131 = zext i1 %1118 to i8
  store i8 %1131, i8* %91, align 1
  %1132 = add i64 %392, 337
  store i64 %1132, i64* %3, align 8
  %1133 = load i64, i64* %1104, align 8
  store i64 %1133, i64* %RCX.i2541, align 8
  %1134 = add i64 %1133, 16
  %1135 = add i64 %392, 341
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = sext i32 %1115 to i64
  %1139 = sext i32 %1137 to i64
  %1140 = mul nsw i64 %1139, %1138
  %1141 = trunc i64 %1140 to i32
  %1142 = and i64 %1140, 4294967294
  store i64 %1142, i64* %RDX.i2544, align 8
  %1143 = shl i64 %1140, 32
  %1144 = ashr exact i64 %1143, 32
  %1145 = icmp ne i64 %1144, %1140
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %68, align 1
  %1147 = and i32 %1141, 254
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1152 = lshr i32 %1141, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %85, align 1
  store i8 %1146, i8* %91, align 1
  %1154 = add i64 %392, 345
  store i64 %1154, i64* %3, align 8
  %1155 = load i64, i64* %1104, align 8
  store i64 %1155, i64* %RCX.i2541, align 8
  %1156 = add i64 %1155, 20
  %1157 = add i64 %392, 349
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = sext i32 %1159 to i64
  %1161 = mul nsw i64 %1160, %1144
  %1162 = trunc i64 %1161 to i32
  %1163 = and i64 %1161, 4294967295
  store i64 %1163, i64* %RDX.i2544, align 8
  %1164 = shl i64 %1161, 32
  %1165 = ashr exact i64 %1164, 32
  %1166 = icmp ne i64 %1165, %1161
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %68, align 1
  %1168 = and i32 %1162, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1173 = lshr i32 %1162, 31
  %1174 = trunc i32 %1173 to i8
  store i8 %1174, i8* %85, align 1
  store i8 %1167, i8* %91, align 1
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -52
  %1177 = add i64 %392, 352
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RSI.i2547, align 8
  %1181 = add i64 %1175, -16
  %1182 = add i64 %392, 356
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i64*
  %1184 = load i64, i64* %1183, align 8
  store i64 %1184, i64* %RCX.i2541, align 8
  %1185 = add i64 %1184, 16
  %1186 = add i64 %392, 360
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = sext i32 %1179 to i64
  %1190 = sext i32 %1188 to i64
  %1191 = mul nsw i64 %1190, %1189
  %1192 = trunc i64 %1191 to i32
  %1193 = and i64 %1191, 4294967295
  store i64 %1193, i64* %RSI.i2547, align 8
  %1194 = shl i64 %1191, 32
  %1195 = ashr exact i64 %1194, 32
  %1196 = icmp ne i64 %1195, %1191
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %68, align 1
  %1198 = and i32 %1192, 255
  %1199 = tail call i32 @llvm.ctpop.i32(i32 %1198)
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  store i8 %1202, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1203 = lshr i32 %1192, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %85, align 1
  store i8 %1197, i8* %91, align 1
  %1205 = add i64 %392, 364
  store i64 %1205, i64* %3, align 8
  %1206 = load i64, i64* %1183, align 8
  store i64 %1206, i64* %RCX.i2541, align 8
  %1207 = add i64 %1206, 20
  %1208 = add i64 %392, 368
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = sext i32 %1210 to i64
  %1212 = mul nsw i64 %1211, %1195
  %1213 = and i64 %1212, 4294967295
  store i64 %1213, i64* %RSI.i2547, align 8
  %1214 = trunc i64 %1212 to i32
  %1215 = add i32 %1214, %1162
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RDX.i2544, align 8
  %1217 = icmp ult i32 %1215, %1162
  %1218 = icmp ult i32 %1215, %1214
  %1219 = or i1 %1217, %1218
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %68, align 1
  %1221 = and i32 %1215, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %74, align 1
  %1226 = xor i64 %1212, %1161
  %1227 = trunc i64 %1226 to i32
  %1228 = xor i32 %1227, %1215
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %79, align 1
  %1232 = icmp eq i32 %1215, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %82, align 1
  %1234 = lshr i32 %1215, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %85, align 1
  %1236 = lshr i32 %1214, 31
  %1237 = xor i32 %1234, %1173
  %1238 = xor i32 %1234, %1236
  %1239 = add nuw nsw i32 %1237, %1238
  %1240 = icmp eq i32 %1239, 2
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %91, align 1
  %1242 = add i64 %1175, -56
  %1243 = add i64 %392, 373
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %RSI.i2547, align 8
  %1247 = add i64 %392, 377
  store i64 %1247, i64* %3, align 8
  %1248 = load i64, i64* %1183, align 8
  store i64 %1248, i64* %RCX.i2541, align 8
  %1249 = add i64 %1248, 20
  %1250 = add i64 %392, 381
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = sext i32 %1245 to i64
  %1254 = sext i32 %1252 to i64
  %1255 = mul nsw i64 %1254, %1253
  %1256 = and i64 %1255, 4294967295
  store i64 %1256, i64* %RSI.i2547, align 8
  %1257 = trunc i64 %1255 to i32
  %1258 = add i32 %1257, %1215
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RDX.i2544, align 8
  %1260 = icmp ult i32 %1258, %1215
  %1261 = icmp ult i32 %1258, %1257
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %68, align 1
  %1264 = and i32 %1258, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %74, align 1
  %1269 = xor i64 %1255, %1216
  %1270 = trunc i64 %1269 to i32
  %1271 = xor i32 %1270, %1258
  %1272 = lshr i32 %1271, 4
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  store i8 %1274, i8* %79, align 1
  %1275 = icmp eq i32 %1258, 0
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %82, align 1
  %1277 = lshr i32 %1258, 31
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* %85, align 1
  %1279 = lshr i32 %1257, 31
  %1280 = xor i32 %1277, %1234
  %1281 = xor i32 %1277, %1279
  %1282 = add nuw nsw i32 %1280, %1281
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %91, align 1
  %1285 = add i64 %1175, -60
  %1286 = add i64 %392, 386
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = add i32 %1288, %1258
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RDX.i2544, align 8
  %1291 = icmp ult i32 %1289, %1258
  %1292 = icmp ult i32 %1289, %1288
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %68, align 1
  %1295 = and i32 %1289, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %74, align 1
  %1300 = xor i32 %1288, %1258
  %1301 = xor i32 %1300, %1289
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %79, align 1
  %1305 = icmp eq i32 %1289, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %82, align 1
  %1307 = lshr i32 %1289, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %85, align 1
  %1309 = lshr i32 %1288, 31
  %1310 = xor i32 %1307, %1277
  %1311 = xor i32 %1307, %1309
  %1312 = add nuw nsw i32 %1310, %1311
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %91, align 1
  %1315 = sext i32 %1289 to i64
  store i64 %1315, i64* %RCX.i2541, align 8
  %1316 = load i64, i64* %RAX.i2556, align 8
  %1317 = shl nsw i64 %1315, 2
  %1318 = add i64 %1317, %1316
  %1319 = add i64 %392, 394
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  store i32 %1321, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -40
  %1324 = add i64 %392, 398
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i64*
  %1326 = load i64, i64* %1325, align 8
  store i64 %1326, i64* %RAX.i2556, align 8
  %1327 = add i64 %392, 401
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RAX.i2556, align 8
  %1330 = add i64 %392, 405
  store i64 %1330, i64* %3, align 8
  %1331 = load i64, i64* %1325, align 8
  store i64 %1331, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1332 = add i64 %392, 413
  store i64 %1332, i64* %3, align 8
  %1333 = load i64, i64* %1325, align 8
  store i64 %1333, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1334 = add i64 %392, 421
  store i64 %1334, i64* %3, align 8
  %1335 = load i64, i64* %1325, align 8
  store i64 %1335, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1336 = add i64 %1322, -52
  %1337 = add i64 %392, 428
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RSI.i2547, align 8
  %1341 = add i64 %392, 432
  store i64 %1341, i64* %3, align 8
  %1342 = load i64, i64* %1325, align 8
  store i64 %1342, i64* %RCX.i2541, align 8
  %1343 = add i64 %1342, 16
  %1344 = add i64 %392, 436
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = sext i32 %1339 to i64
  %1348 = sext i32 %1346 to i64
  %1349 = mul nsw i64 %1348, %1347
  %1350 = trunc i64 %1349 to i32
  %1351 = and i64 %1349, 4294967295
  store i64 %1351, i64* %RSI.i2547, align 8
  %1352 = shl i64 %1349, 32
  %1353 = ashr exact i64 %1352, 32
  %1354 = icmp ne i64 %1353, %1349
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %68, align 1
  %1356 = and i32 %1350, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1361 = lshr i32 %1350, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %85, align 1
  store i8 %1355, i8* %91, align 1
  %1363 = add i64 %392, 440
  store i64 %1363, i64* %3, align 8
  %1364 = load i64, i64* %1325, align 8
  store i64 %1364, i64* %RCX.i2541, align 8
  %1365 = add i64 %1364, 20
  %1366 = add i64 %392, 444
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = sext i32 %1368 to i64
  %1370 = mul nsw i64 %1369, %1353
  %1371 = and i64 %1370, 4294967295
  store i64 %1371, i64* %RSI.i2547, align 8
  %1372 = trunc i64 %1370 to i32
  store i64 %1371, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1378 = icmp eq i32 %1372, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %82, align 1
  %1380 = lshr i32 %1372, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -56
  %1384 = add i64 %392, 449
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RSI.i2547, align 8
  %1388 = add i64 %1382, -40
  %1389 = add i64 %392, 453
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  store i64 %1391, i64* %RCX.i2541, align 8
  %1392 = add i64 %1391, 20
  %1393 = add i64 %392, 457
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = sext i32 %1386 to i64
  %1397 = sext i32 %1395 to i64
  %1398 = mul nsw i64 %1397, %1396
  %1399 = and i64 %1398, 4294967295
  store i64 %1399, i64* %RSI.i2547, align 8
  %1400 = trunc i64 %1398 to i32
  %1401 = add i32 %1400, %1372
  %1402 = zext i32 %1401 to i64
  store i64 %1402, i64* %RDX.i2544, align 8
  %1403 = icmp ult i32 %1401, %1372
  %1404 = icmp ult i32 %1401, %1400
  %1405 = or i1 %1403, %1404
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %68, align 1
  %1407 = and i32 %1401, 255
  %1408 = tail call i32 @llvm.ctpop.i32(i32 %1407)
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  store i8 %1411, i8* %74, align 1
  %1412 = xor i64 %1398, %1370
  %1413 = trunc i64 %1412 to i32
  %1414 = xor i32 %1413, %1401
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %79, align 1
  %1418 = icmp eq i32 %1401, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %82, align 1
  %1420 = lshr i32 %1401, 31
  %1421 = trunc i32 %1420 to i8
  store i8 %1421, i8* %85, align 1
  %1422 = lshr i32 %1400, 31
  %1423 = xor i32 %1420, %1380
  %1424 = xor i32 %1420, %1422
  %1425 = add nuw nsw i32 %1423, %1424
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %91, align 1
  %1428 = add i64 %1382, -60
  %1429 = add i64 %392, 462
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = add i32 %1431, 1
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RSI.i2547, align 8
  %1434 = lshr i32 %1432, 31
  %1435 = add i32 %1432, %1401
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RDX.i2544, align 8
  %1437 = icmp ult i32 %1435, %1401
  %1438 = icmp ult i32 %1435, %1432
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %68, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %74, align 1
  %1446 = xor i32 %1432, %1401
  %1447 = xor i32 %1446, %1435
  %1448 = lshr i32 %1447, 4
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %79, align 1
  %1451 = icmp eq i32 %1435, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %82, align 1
  %1453 = lshr i32 %1435, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %85, align 1
  %1455 = xor i32 %1453, %1420
  %1456 = xor i32 %1453, %1434
  %1457 = add nuw nsw i32 %1455, %1456
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %91, align 1
  %1460 = sext i32 %1435 to i64
  store i64 %1460, i64* %RCX.i2541, align 8
  %1461 = load i64, i64* %RAX.i2556, align 8
  %1462 = shl nsw i64 %1460, 2
  %1463 = add i64 %1462, %1461
  %1464 = add i64 %392, 475
  store i64 %1464, i64* %3, align 8
  %1465 = load <2 x float>, <2 x float>* %206, align 1
  %1466 = load <2 x i32>, <2 x i32>* %207, align 1
  %1467 = inttoptr i64 %1463 to float*
  %1468 = load float, float* %1467, align 4
  %1469 = extractelement <2 x float> %1465, i32 0
  %1470 = fmul float %1469, %1468
  store float %1470, float* %199, align 1
  %1471 = bitcast <2 x float> %1465 to <2 x i32>
  %1472 = extractelement <2 x i32> %1471, i32 1
  store i32 %1472, i32* %208, align 1
  %1473 = extractelement <2 x i32> %1466, i32 0
  store i32 %1473, i32* %209, align 1
  %1474 = extractelement <2 x i32> %1466, i32 1
  store i32 %1474, i32* %210, align 1
  %1475 = load <2 x float>, <2 x float>* %191, align 1
  %1476 = load <2 x i32>, <2 x i32>* %196, align 1
  %1477 = load <2 x float>, <2 x float>* %206, align 1
  %1478 = extractelement <2 x float> %1475, i32 0
  %1479 = extractelement <2 x float> %1477, i32 0
  %1480 = fadd float %1478, %1479
  store float %1480, float* %192, align 1
  %1481 = bitcast <2 x float> %1475 to <2 x i32>
  %1482 = extractelement <2 x i32> %1481, i32 1
  store i32 %1482, i32* %187, align 1
  %1483 = extractelement <2 x i32> %1476, i32 0
  store i32 %1483, i32* %188, align 1
  %1484 = extractelement <2 x i32> %1476, i32 1
  store i32 %1484, i32* %190, align 1
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -24
  %1487 = add i64 %392, 483
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RAX.i2556, align 8
  %1490 = add i64 %392, 486
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %RAX.i2556, align 8
  %1493 = add i64 %392, 490
  store i64 %1493, i64* %3, align 8
  %1494 = load i64, i64* %1488, align 8
  store i64 %1494, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1495 = add i64 %392, 498
  store i64 %1495, i64* %3, align 8
  %1496 = load i64, i64* %1488, align 8
  store i64 %1496, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1497 = add i64 %392, 506
  store i64 %1497, i64* %3, align 8
  %1498 = load i64, i64* %1488, align 8
  store i64 %1498, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1499 = add i64 %1485, -52
  %1500 = add i64 %392, 513
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RSI.i2547, align 8
  %1504 = add i64 %392, 517
  store i64 %1504, i64* %3, align 8
  %1505 = load i64, i64* %1488, align 8
  store i64 %1505, i64* %RCX.i2541, align 8
  %1506 = add i64 %1505, 16
  %1507 = add i64 %392, 521
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = sext i32 %1502 to i64
  %1511 = sext i32 %1509 to i64
  %1512 = mul nsw i64 %1511, %1510
  %1513 = trunc i64 %1512 to i32
  %1514 = and i64 %1512, 4294967295
  store i64 %1514, i64* %RSI.i2547, align 8
  %1515 = shl i64 %1512, 32
  %1516 = ashr exact i64 %1515, 32
  %1517 = icmp ne i64 %1516, %1512
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %68, align 1
  %1519 = and i32 %1513, 255
  %1520 = tail call i32 @llvm.ctpop.i32(i32 %1519)
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  store i8 %1523, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1524 = lshr i32 %1513, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %85, align 1
  store i8 %1518, i8* %91, align 1
  %1526 = add i64 %392, 525
  store i64 %1526, i64* %3, align 8
  %1527 = load i64, i64* %1488, align 8
  store i64 %1527, i64* %RCX.i2541, align 8
  %1528 = add i64 %1527, 20
  %1529 = add i64 %392, 529
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = sext i32 %1531 to i64
  %1533 = mul nsw i64 %1532, %1516
  %1534 = and i64 %1533, 4294967295
  store i64 %1534, i64* %RSI.i2547, align 8
  %1535 = trunc i64 %1533 to i32
  store i64 %1534, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1536 = and i32 %1535, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1541 = icmp eq i32 %1535, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %82, align 1
  %1543 = lshr i32 %1535, 31
  %1544 = trunc i32 %1543 to i8
  store i8 %1544, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1545 = load i64, i64* %RBP.i, align 8
  %1546 = add i64 %1545, -56
  %1547 = add i64 %392, 534
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = zext i32 %1549 to i64
  store i64 %1550, i64* %RSI.i2547, align 8
  %1551 = add i64 %1545, -24
  %1552 = add i64 %392, 538
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i64*
  %1554 = load i64, i64* %1553, align 8
  store i64 %1554, i64* %RCX.i2541, align 8
  %1555 = add i64 %1554, 20
  %1556 = add i64 %392, 542
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  %1558 = load i32, i32* %1557, align 4
  %1559 = sext i32 %1549 to i64
  %1560 = sext i32 %1558 to i64
  %1561 = mul nsw i64 %1560, %1559
  %1562 = and i64 %1561, 4294967295
  store i64 %1562, i64* %RSI.i2547, align 8
  %1563 = trunc i64 %1561 to i32
  %1564 = add i32 %1563, %1535
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RDX.i2544, align 8
  %1566 = icmp ult i32 %1564, %1535
  %1567 = icmp ult i32 %1564, %1563
  %1568 = or i1 %1566, %1567
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %68, align 1
  %1570 = and i32 %1564, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %74, align 1
  %1575 = xor i64 %1561, %1533
  %1576 = trunc i64 %1575 to i32
  %1577 = xor i32 %1576, %1564
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %79, align 1
  %1581 = icmp eq i32 %1564, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %82, align 1
  %1583 = lshr i32 %1564, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %85, align 1
  %1585 = lshr i32 %1563, 31
  %1586 = xor i32 %1583, %1543
  %1587 = xor i32 %1583, %1585
  %1588 = add nuw nsw i32 %1586, %1587
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %91, align 1
  %1591 = add i64 %1545, -60
  %1592 = add i64 %392, 547
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = add i32 %1594, %1564
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RDX.i2544, align 8
  %1597 = icmp ult i32 %1595, %1564
  %1598 = icmp ult i32 %1595, %1594
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %68, align 1
  %1601 = and i32 %1595, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %74, align 1
  %1606 = xor i32 %1594, %1564
  %1607 = xor i32 %1606, %1595
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %79, align 1
  %1611 = icmp eq i32 %1595, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %82, align 1
  %1613 = lshr i32 %1595, 31
  %1614 = trunc i32 %1613 to i8
  store i8 %1614, i8* %85, align 1
  %1615 = lshr i32 %1594, 31
  %1616 = xor i32 %1613, %1583
  %1617 = xor i32 %1613, %1615
  %1618 = add nuw nsw i32 %1616, %1617
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %91, align 1
  %1621 = sext i32 %1595 to i64
  store i64 %1621, i64* %RCX.i2541, align 8
  %1622 = load i64, i64* %RAX.i2556, align 8
  %1623 = shl nsw i64 %1621, 2
  %1624 = add i64 %1623, %1622
  %1625 = add i64 %392, 555
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  store i32 %1627, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %1628 = load i64, i64* %RBP.i, align 8
  %1629 = add i64 %1628, -40
  %1630 = add i64 %392, 559
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %RAX.i2556, align 8
  %1633 = add i64 %392, 562
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %RAX.i2556, align 8
  %1636 = add i64 %392, 566
  store i64 %1636, i64* %3, align 8
  %1637 = load i64, i64* %1631, align 8
  store i64 %1637, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1638 = add i64 %392, 574
  store i64 %1638, i64* %3, align 8
  %1639 = load i64, i64* %1631, align 8
  store i64 %1639, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1640 = add i64 %392, 582
  store i64 %1640, i64* %3, align 8
  %1641 = load i64, i64* %1631, align 8
  store i64 %1641, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1642 = add i64 %1628, -52
  %1643 = add i64 %392, 589
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, 1
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RSI.i2547, align 8
  %1648 = icmp eq i32 %1645, -1
  %1649 = icmp eq i32 %1646, 0
  %1650 = or i1 %1648, %1649
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %68, align 1
  %1652 = and i32 %1646, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %74, align 1
  %1657 = xor i32 %1645, %1646
  %1658 = lshr i32 %1657, 4
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  store i8 %1660, i8* %79, align 1
  %1661 = zext i1 %1649 to i8
  store i8 %1661, i8* %82, align 1
  %1662 = lshr i32 %1646, 31
  %1663 = trunc i32 %1662 to i8
  store i8 %1663, i8* %85, align 1
  %1664 = lshr i32 %1645, 31
  %1665 = xor i32 %1662, %1664
  %1666 = add nuw nsw i32 %1665, %1662
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %91, align 1
  %1669 = add i64 %392, 596
  store i64 %1669, i64* %3, align 8
  %1670 = load i64, i64* %1631, align 8
  store i64 %1670, i64* %RCX.i2541, align 8
  %1671 = add i64 %1670, 16
  %1672 = add i64 %392, 600
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = sext i32 %1646 to i64
  %1676 = sext i32 %1674 to i64
  %1677 = mul nsw i64 %1676, %1675
  %1678 = trunc i64 %1677 to i32
  %1679 = and i64 %1677, 4294967295
  store i64 %1679, i64* %RSI.i2547, align 8
  %1680 = shl i64 %1677, 32
  %1681 = ashr exact i64 %1680, 32
  %1682 = icmp ne i64 %1681, %1677
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %68, align 1
  %1684 = and i32 %1678, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1689 = lshr i32 %1678, 31
  %1690 = trunc i32 %1689 to i8
  store i8 %1690, i8* %85, align 1
  store i8 %1683, i8* %91, align 1
  %1691 = add i64 %392, 604
  store i64 %1691, i64* %3, align 8
  %1692 = load i64, i64* %1631, align 8
  store i64 %1692, i64* %RCX.i2541, align 8
  %1693 = add i64 %1692, 20
  %1694 = add i64 %392, 608
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = sext i32 %1696 to i64
  %1698 = mul nsw i64 %1697, %1681
  %1699 = and i64 %1698, 4294967295
  store i64 %1699, i64* %RSI.i2547, align 8
  %1700 = trunc i64 %1698 to i32
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1702 = and i32 %1700, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1707 = icmp eq i32 %1700, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %82, align 1
  %1709 = lshr i32 %1700, 31
  %1710 = trunc i32 %1709 to i8
  store i8 %1710, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1711 = load i64, i64* %RBP.i, align 8
  %1712 = add i64 %1711, -56
  %1713 = add i64 %392, 613
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = add i32 %1715, 1
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RSI.i2547, align 8
  %1718 = icmp eq i32 %1715, -1
  %1719 = icmp eq i32 %1716, 0
  %1720 = or i1 %1718, %1719
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %68, align 1
  %1722 = and i32 %1716, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %74, align 1
  %1727 = xor i32 %1715, %1716
  %1728 = lshr i32 %1727, 4
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  store i8 %1730, i8* %79, align 1
  %1731 = zext i1 %1719 to i8
  store i8 %1731, i8* %82, align 1
  %1732 = lshr i32 %1716, 31
  %1733 = trunc i32 %1732 to i8
  store i8 %1733, i8* %85, align 1
  %1734 = lshr i32 %1715, 31
  %1735 = xor i32 %1732, %1734
  %1736 = add nuw nsw i32 %1735, %1732
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %91, align 1
  %1739 = add i64 %1711, -40
  %1740 = add i64 %392, 620
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i64*
  %1742 = load i64, i64* %1741, align 8
  store i64 %1742, i64* %RCX.i2541, align 8
  %1743 = add i64 %1742, 20
  %1744 = add i64 %392, 624
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = sext i32 %1716 to i64
  %1748 = sext i32 %1746 to i64
  %1749 = mul nsw i64 %1748, %1747
  %1750 = and i64 %1749, 4294967295
  store i64 %1750, i64* %RSI.i2547, align 8
  %1751 = trunc i64 %1749 to i32
  %1752 = add i32 %1751, %1700
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RDX.i2544, align 8
  %1754 = icmp ult i32 %1752, %1700
  %1755 = icmp ult i32 %1752, %1751
  %1756 = or i1 %1754, %1755
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %68, align 1
  %1758 = and i32 %1752, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %74, align 1
  %1763 = xor i64 %1749, %1701
  %1764 = trunc i64 %1763 to i32
  %1765 = xor i32 %1764, %1752
  %1766 = lshr i32 %1765, 4
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  store i8 %1768, i8* %79, align 1
  %1769 = icmp eq i32 %1752, 0
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %82, align 1
  %1771 = lshr i32 %1752, 31
  %1772 = trunc i32 %1771 to i8
  store i8 %1772, i8* %85, align 1
  %1773 = lshr i32 %1751, 31
  %1774 = xor i32 %1771, %1709
  %1775 = xor i32 %1771, %1773
  %1776 = add nuw nsw i32 %1774, %1775
  %1777 = icmp eq i32 %1776, 2
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %91, align 1
  %1779 = add i64 %1711, -60
  %1780 = add i64 %392, 629
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = add i32 %1782, %1752
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RDX.i2544, align 8
  %1785 = icmp ult i32 %1783, %1752
  %1786 = icmp ult i32 %1783, %1782
  %1787 = or i1 %1785, %1786
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %68, align 1
  %1789 = and i32 %1783, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %74, align 1
  %1794 = xor i32 %1782, %1752
  %1795 = xor i32 %1794, %1783
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %79, align 1
  %1799 = icmp eq i32 %1783, 0
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %82, align 1
  %1801 = lshr i32 %1783, 31
  %1802 = trunc i32 %1801 to i8
  store i8 %1802, i8* %85, align 1
  %1803 = lshr i32 %1782, 31
  %1804 = xor i32 %1801, %1771
  %1805 = xor i32 %1801, %1803
  %1806 = add nuw nsw i32 %1804, %1805
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %91, align 1
  %1809 = sext i32 %1783 to i64
  store i64 %1809, i64* %RCX.i2541, align 8
  %1810 = load i64, i64* %RAX.i2556, align 8
  %1811 = shl nsw i64 %1809, 2
  %1812 = add i64 %1811, %1810
  %1813 = add i64 %392, 637
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = bitcast %union.VectorReg* %211 to i32*
  store i32 %1815, i32* %1816, align 1
  store float 0.000000e+00, float* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  %1817 = add i64 %392, 641
  store i64 %1817, i64* %3, align 8
  %1818 = load i64, i64* %1741, align 8
  store i64 %1818, i64* %RAX.i2556, align 8
  %1819 = add i64 %392, 644
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %RAX.i2556, align 8
  %1822 = add i64 %392, 648
  store i64 %1822, i64* %3, align 8
  %1823 = load i64, i64* %1741, align 8
  store i64 %1823, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1824 = add i64 %392, 656
  store i64 %1824, i64* %3, align 8
  %1825 = load i64, i64* %1741, align 8
  store i64 %1825, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1826 = add i64 %392, 664
  store i64 %1826, i64* %3, align 8
  %1827 = load i64, i64* %1741, align 8
  store i64 %1827, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1828 = load i64, i64* %RBP.i, align 8
  %1829 = add i64 %1828, -52
  %1830 = add i64 %392, 671
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = add i32 %1832, 1
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RSI.i2547, align 8
  %1835 = icmp eq i32 %1832, -1
  %1836 = icmp eq i32 %1833, 0
  %1837 = or i1 %1835, %1836
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %68, align 1
  %1839 = and i32 %1833, 255
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %74, align 1
  %1844 = xor i32 %1832, %1833
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  store i8 %1847, i8* %79, align 1
  %1848 = zext i1 %1836 to i8
  store i8 %1848, i8* %82, align 1
  %1849 = lshr i32 %1833, 31
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, i8* %85, align 1
  %1851 = lshr i32 %1832, 31
  %1852 = xor i32 %1849, %1851
  %1853 = add nuw nsw i32 %1852, %1849
  %1854 = icmp eq i32 %1853, 2
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %91, align 1
  %1856 = add i64 %1828, -40
  %1857 = add i64 %392, 678
  store i64 %1857, i64* %3, align 8
  %1858 = inttoptr i64 %1856 to i64*
  %1859 = load i64, i64* %1858, align 8
  store i64 %1859, i64* %RCX.i2541, align 8
  %1860 = add i64 %1859, 16
  %1861 = add i64 %392, 682
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = sext i32 %1833 to i64
  %1865 = sext i32 %1863 to i64
  %1866 = mul nsw i64 %1865, %1864
  %1867 = trunc i64 %1866 to i32
  %1868 = and i64 %1866, 4294967295
  store i64 %1868, i64* %RSI.i2547, align 8
  %1869 = shl i64 %1866, 32
  %1870 = ashr exact i64 %1869, 32
  %1871 = icmp ne i64 %1870, %1866
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %68, align 1
  %1873 = and i32 %1867, 255
  %1874 = tail call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  store i8 %1877, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %1878 = lshr i32 %1867, 31
  %1879 = trunc i32 %1878 to i8
  store i8 %1879, i8* %85, align 1
  store i8 %1872, i8* %91, align 1
  %1880 = add i64 %392, 686
  store i64 %1880, i64* %3, align 8
  %1881 = load i64, i64* %1858, align 8
  store i64 %1881, i64* %RCX.i2541, align 8
  %1882 = add i64 %1881, 20
  %1883 = add i64 %392, 690
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = sext i32 %1885 to i64
  %1887 = mul nsw i64 %1886, %1870
  %1888 = and i64 %1887, 4294967295
  store i64 %1888, i64* %RSI.i2547, align 8
  %1889 = trunc i64 %1887 to i32
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %1891 = and i32 %1889, 255
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %1896 = icmp eq i32 %1889, 0
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %82, align 1
  %1898 = lshr i32 %1889, 31
  %1899 = trunc i32 %1898 to i8
  store i8 %1899, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -56
  %1902 = add i64 %392, 695
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = add i32 %1904, -1
  %1906 = zext i32 %1905 to i64
  store i64 %1906, i64* %RSI.i2547, align 8
  %1907 = icmp eq i32 %1904, 0
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %68, align 1
  %1909 = and i32 %1905, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909)
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %74, align 1
  %1914 = xor i32 %1904, %1905
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %79, align 1
  %1918 = icmp eq i32 %1905, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %82, align 1
  %1920 = lshr i32 %1905, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %85, align 1
  %1922 = lshr i32 %1904, 31
  %1923 = xor i32 %1920, %1922
  %1924 = add nuw nsw i32 %1923, %1922
  %1925 = icmp eq i32 %1924, 2
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %91, align 1
  %1927 = add i64 %1900, -40
  %1928 = add i64 %392, 702
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i64*
  %1930 = load i64, i64* %1929, align 8
  store i64 %1930, i64* %RCX.i2541, align 8
  %1931 = add i64 %1930, 20
  %1932 = add i64 %392, 706
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = sext i32 %1905 to i64
  %1936 = sext i32 %1934 to i64
  %1937 = mul nsw i64 %1936, %1935
  %1938 = and i64 %1937, 4294967295
  store i64 %1938, i64* %RSI.i2547, align 8
  %1939 = trunc i64 %1937 to i32
  %1940 = add i32 %1939, %1889
  %1941 = zext i32 %1940 to i64
  store i64 %1941, i64* %RDX.i2544, align 8
  %1942 = icmp ult i32 %1940, %1889
  %1943 = icmp ult i32 %1940, %1939
  %1944 = or i1 %1942, %1943
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %68, align 1
  %1946 = and i32 %1940, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %74, align 1
  %1951 = xor i64 %1937, %1890
  %1952 = trunc i64 %1951 to i32
  %1953 = xor i32 %1952, %1940
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %79, align 1
  %1957 = icmp eq i32 %1940, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %82, align 1
  %1959 = lshr i32 %1940, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %85, align 1
  %1961 = lshr i32 %1939, 31
  %1962 = xor i32 %1959, %1898
  %1963 = xor i32 %1959, %1961
  %1964 = add nuw nsw i32 %1962, %1963
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %91, align 1
  %1967 = add i64 %1900, -60
  %1968 = add i64 %392, 711
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = add i32 %1970, %1940
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RDX.i2544, align 8
  %1973 = icmp ult i32 %1971, %1940
  %1974 = icmp ult i32 %1971, %1970
  %1975 = or i1 %1973, %1974
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %68, align 1
  %1977 = and i32 %1971, 255
  %1978 = tail call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  store i8 %1981, i8* %74, align 1
  %1982 = xor i32 %1970, %1940
  %1983 = xor i32 %1982, %1971
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %79, align 1
  %1987 = icmp eq i32 %1971, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %82, align 1
  %1989 = lshr i32 %1971, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %85, align 1
  %1991 = lshr i32 %1970, 31
  %1992 = xor i32 %1989, %1959
  %1993 = xor i32 %1989, %1991
  %1994 = add nuw nsw i32 %1992, %1993
  %1995 = icmp eq i32 %1994, 2
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %91, align 1
  %1997 = sext i32 %1971 to i64
  store i64 %1997, i64* %RCX.i2541, align 8
  %1998 = load i64, i64* %RAX.i2556, align 8
  %1999 = shl nsw i64 %1997, 2
  %2000 = add i64 %1999, %1998
  %2001 = add i64 %392, 719
  store i64 %2001, i64* %3, align 8
  %2002 = load <2 x float>, <2 x float>* %220, align 1
  %2003 = load <2 x i32>, <2 x i32>* %221, align 1
  %2004 = inttoptr i64 %2000 to float*
  %2005 = load float, float* %2004, align 4
  %2006 = extractelement <2 x float> %2002, i32 0
  %2007 = fsub float %2006, %2005
  store float %2007, float* %213, align 1
  %2008 = bitcast <2 x float> %2002 to <2 x i32>
  %2009 = extractelement <2 x i32> %2008, i32 1
  store i32 %2009, i32* %222, align 1
  %2010 = extractelement <2 x i32> %2003, i32 0
  store i32 %2010, i32* %223, align 1
  %2011 = extractelement <2 x i32> %2003, i32 1
  store i32 %2011, i32* %224, align 1
  %2012 = add i64 %392, 723
  store i64 %2012, i64* %3, align 8
  %2013 = load i64, i64* %1929, align 8
  store i64 %2013, i64* %RAX.i2556, align 8
  %2014 = add i64 %392, 726
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %RAX.i2556, align 8
  %2017 = add i64 %392, 730
  store i64 %2017, i64* %3, align 8
  %2018 = load i64, i64* %1929, align 8
  store i64 %2018, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2019 = add i64 %392, 738
  store i64 %2019, i64* %3, align 8
  %2020 = load i64, i64* %1929, align 8
  store i64 %2020, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -40
  %2023 = add i64 %392, 746
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i64*
  %2025 = load i64, i64* %2024, align 8
  store i64 %2025, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2026 = add i64 %2021, -52
  %2027 = add i64 %392, 753
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = add i32 %2029, -1
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RSI.i2547, align 8
  %2032 = icmp eq i32 %2029, 0
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %68, align 1
  %2034 = and i32 %2030, 255
  %2035 = tail call i32 @llvm.ctpop.i32(i32 %2034)
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  %2038 = xor i8 %2037, 1
  store i8 %2038, i8* %74, align 1
  %2039 = xor i32 %2029, %2030
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %79, align 1
  %2043 = icmp eq i32 %2030, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %82, align 1
  %2045 = lshr i32 %2030, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %85, align 1
  %2047 = lshr i32 %2029, 31
  %2048 = xor i32 %2045, %2047
  %2049 = add nuw nsw i32 %2048, %2047
  %2050 = icmp eq i32 %2049, 2
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %91, align 1
  %2052 = add i64 %392, 760
  store i64 %2052, i64* %3, align 8
  %2053 = load i64, i64* %2024, align 8
  store i64 %2053, i64* %RCX.i2541, align 8
  %2054 = add i64 %2053, 16
  %2055 = add i64 %392, 764
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i32*
  %2057 = load i32, i32* %2056, align 4
  %2058 = sext i32 %2030 to i64
  %2059 = sext i32 %2057 to i64
  %2060 = mul nsw i64 %2059, %2058
  %2061 = trunc i64 %2060 to i32
  %2062 = and i64 %2060, 4294967295
  store i64 %2062, i64* %RSI.i2547, align 8
  %2063 = shl i64 %2060, 32
  %2064 = ashr exact i64 %2063, 32
  %2065 = icmp ne i64 %2064, %2060
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %68, align 1
  %2067 = and i32 %2061, 255
  %2068 = tail call i32 @llvm.ctpop.i32(i32 %2067)
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = xor i8 %2070, 1
  store i8 %2071, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2072 = lshr i32 %2061, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %85, align 1
  store i8 %2066, i8* %91, align 1
  %2074 = add i64 %392, 768
  store i64 %2074, i64* %3, align 8
  %2075 = load i64, i64* %2024, align 8
  store i64 %2075, i64* %RCX.i2541, align 8
  %2076 = add i64 %2075, 20
  %2077 = add i64 %392, 772
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  %2079 = load i32, i32* %2078, align 4
  %2080 = sext i32 %2079 to i64
  %2081 = mul nsw i64 %2080, %2064
  %2082 = and i64 %2081, 4294967295
  store i64 %2082, i64* %RSI.i2547, align 8
  %2083 = trunc i64 %2081 to i32
  %2084 = zext i32 %2083 to i64
  store i64 %2084, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %2085 = and i32 %2083, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %2090 = icmp eq i32 %2083, 0
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %82, align 1
  %2092 = lshr i32 %2083, 31
  %2093 = trunc i32 %2092 to i8
  store i8 %2093, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2094 = load i64, i64* %RBP.i, align 8
  %2095 = add i64 %2094, -56
  %2096 = add i64 %392, 777
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = add i32 %2098, 1
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RSI.i2547, align 8
  %2101 = icmp eq i32 %2098, -1
  %2102 = icmp eq i32 %2099, 0
  %2103 = or i1 %2101, %2102
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %68, align 1
  %2105 = and i32 %2099, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %74, align 1
  %2110 = xor i32 %2098, %2099
  %2111 = lshr i32 %2110, 4
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  store i8 %2113, i8* %79, align 1
  %2114 = zext i1 %2102 to i8
  store i8 %2114, i8* %82, align 1
  %2115 = lshr i32 %2099, 31
  %2116 = trunc i32 %2115 to i8
  store i8 %2116, i8* %85, align 1
  %2117 = lshr i32 %2098, 31
  %2118 = xor i32 %2115, %2117
  %2119 = add nuw nsw i32 %2118, %2115
  %2120 = icmp eq i32 %2119, 2
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %91, align 1
  %2122 = add i64 %2094, -40
  %2123 = add i64 %392, 784
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %RCX.i2541, align 8
  %2126 = add i64 %2125, 20
  %2127 = add i64 %392, 788
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = sext i32 %2099 to i64
  %2131 = sext i32 %2129 to i64
  %2132 = mul nsw i64 %2131, %2130
  %2133 = and i64 %2132, 4294967295
  store i64 %2133, i64* %RSI.i2547, align 8
  %2134 = trunc i64 %2132 to i32
  %2135 = add i32 %2134, %2083
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RDX.i2544, align 8
  %2137 = icmp ult i32 %2135, %2083
  %2138 = icmp ult i32 %2135, %2134
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %68, align 1
  %2141 = and i32 %2135, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %74, align 1
  %2146 = xor i64 %2132, %2084
  %2147 = trunc i64 %2146 to i32
  %2148 = xor i32 %2147, %2135
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  store i8 %2151, i8* %79, align 1
  %2152 = icmp eq i32 %2135, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %82, align 1
  %2154 = lshr i32 %2135, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %85, align 1
  %2156 = lshr i32 %2134, 31
  %2157 = xor i32 %2154, %2092
  %2158 = xor i32 %2154, %2156
  %2159 = add nuw nsw i32 %2157, %2158
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %91, align 1
  %2162 = add i64 %2094, -60
  %2163 = add i64 %392, 793
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = add i32 %2165, %2135
  %2167 = zext i32 %2166 to i64
  store i64 %2167, i64* %RDX.i2544, align 8
  %2168 = icmp ult i32 %2166, %2135
  %2169 = icmp ult i32 %2166, %2165
  %2170 = or i1 %2168, %2169
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %68, align 1
  %2172 = and i32 %2166, 255
  %2173 = tail call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  store i8 %2176, i8* %74, align 1
  %2177 = xor i32 %2165, %2135
  %2178 = xor i32 %2177, %2166
  %2179 = lshr i32 %2178, 4
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  store i8 %2181, i8* %79, align 1
  %2182 = icmp eq i32 %2166, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %82, align 1
  %2184 = lshr i32 %2166, 31
  %2185 = trunc i32 %2184 to i8
  store i8 %2185, i8* %85, align 1
  %2186 = lshr i32 %2165, 31
  %2187 = xor i32 %2184, %2154
  %2188 = xor i32 %2184, %2186
  %2189 = add nuw nsw i32 %2187, %2188
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %91, align 1
  %2192 = sext i32 %2166 to i64
  store i64 %2192, i64* %RCX.i2541, align 8
  %2193 = load i64, i64* %RAX.i2556, align 8
  %2194 = shl nsw i64 %2192, 2
  %2195 = add i64 %2194, %2193
  %2196 = add i64 %392, 801
  store i64 %2196, i64* %3, align 8
  %2197 = load <2 x float>, <2 x float>* %220, align 1
  %2198 = load <2 x i32>, <2 x i32>* %221, align 1
  %2199 = inttoptr i64 %2195 to float*
  %2200 = load float, float* %2199, align 4
  %2201 = extractelement <2 x float> %2197, i32 0
  %2202 = fsub float %2201, %2200
  store float %2202, float* %213, align 1
  %2203 = bitcast <2 x float> %2197 to <2 x i32>
  %2204 = extractelement <2 x i32> %2203, i32 1
  store i32 %2204, i32* %222, align 1
  %2205 = extractelement <2 x i32> %2198, i32 0
  store i32 %2205, i32* %223, align 1
  %2206 = extractelement <2 x i32> %2198, i32 1
  store i32 %2206, i32* %224, align 1
  %2207 = add i64 %392, 805
  store i64 %2207, i64* %3, align 8
  %2208 = load i64, i64* %2124, align 8
  store i64 %2208, i64* %RAX.i2556, align 8
  %2209 = add i64 %392, 808
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i64*
  %2211 = load i64, i64* %2210, align 8
  store i64 %2211, i64* %RAX.i2556, align 8
  %2212 = add i64 %392, 812
  store i64 %2212, i64* %3, align 8
  %2213 = load i64, i64* %2124, align 8
  store i64 %2213, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2214 = add i64 %392, 820
  store i64 %2214, i64* %3, align 8
  %2215 = load i64, i64* %2124, align 8
  store i64 %2215, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2216 = load i64, i64* %RBP.i, align 8
  %2217 = add i64 %2216, -40
  %2218 = add i64 %392, 828
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i64*
  %2220 = load i64, i64* %2219, align 8
  store i64 %2220, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2221 = add i64 %2216, -52
  %2222 = add i64 %392, 835
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i32*
  %2224 = load i32, i32* %2223, align 4
  %2225 = add i32 %2224, -1
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RSI.i2547, align 8
  %2227 = icmp eq i32 %2224, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %68, align 1
  %2229 = and i32 %2225, 255
  %2230 = tail call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  store i8 %2233, i8* %74, align 1
  %2234 = xor i32 %2224, %2225
  %2235 = lshr i32 %2234, 4
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  store i8 %2237, i8* %79, align 1
  %2238 = icmp eq i32 %2225, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %82, align 1
  %2240 = lshr i32 %2225, 31
  %2241 = trunc i32 %2240 to i8
  store i8 %2241, i8* %85, align 1
  %2242 = lshr i32 %2224, 31
  %2243 = xor i32 %2240, %2242
  %2244 = add nuw nsw i32 %2243, %2242
  %2245 = icmp eq i32 %2244, 2
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %91, align 1
  %2247 = add i64 %392, 842
  store i64 %2247, i64* %3, align 8
  %2248 = load i64, i64* %2219, align 8
  store i64 %2248, i64* %RCX.i2541, align 8
  %2249 = add i64 %2248, 16
  %2250 = add i64 %392, 846
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = sext i32 %2225 to i64
  %2254 = sext i32 %2252 to i64
  %2255 = mul nsw i64 %2254, %2253
  %2256 = trunc i64 %2255 to i32
  %2257 = and i64 %2255, 4294967295
  store i64 %2257, i64* %RSI.i2547, align 8
  %2258 = shl i64 %2255, 32
  %2259 = ashr exact i64 %2258, 32
  %2260 = icmp ne i64 %2259, %2255
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %68, align 1
  %2262 = and i32 %2256, 255
  %2263 = tail call i32 @llvm.ctpop.i32(i32 %2262)
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = xor i8 %2265, 1
  store i8 %2266, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2267 = lshr i32 %2256, 31
  %2268 = trunc i32 %2267 to i8
  store i8 %2268, i8* %85, align 1
  store i8 %2261, i8* %91, align 1
  %2269 = add i64 %392, 850
  store i64 %2269, i64* %3, align 8
  %2270 = load i64, i64* %2219, align 8
  store i64 %2270, i64* %RCX.i2541, align 8
  %2271 = add i64 %2270, 20
  %2272 = add i64 %392, 854
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = sext i32 %2274 to i64
  %2276 = mul nsw i64 %2275, %2259
  %2277 = and i64 %2276, 4294967295
  store i64 %2277, i64* %RSI.i2547, align 8
  %2278 = trunc i64 %2276 to i32
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %2280 = and i32 %2278, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %2285 = icmp eq i32 %2278, 0
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %82, align 1
  %2287 = lshr i32 %2278, 31
  %2288 = trunc i32 %2287 to i8
  store i8 %2288, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2289 = load i64, i64* %RBP.i, align 8
  %2290 = add i64 %2289, -56
  %2291 = add i64 %392, 859
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = add i32 %2293, -1
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RSI.i2547, align 8
  %2296 = icmp eq i32 %2293, 0
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %68, align 1
  %2298 = and i32 %2294, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298)
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %74, align 1
  %2303 = xor i32 %2293, %2294
  %2304 = lshr i32 %2303, 4
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  store i8 %2306, i8* %79, align 1
  %2307 = icmp eq i32 %2294, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %82, align 1
  %2309 = lshr i32 %2294, 31
  %2310 = trunc i32 %2309 to i8
  store i8 %2310, i8* %85, align 1
  %2311 = lshr i32 %2293, 31
  %2312 = xor i32 %2309, %2311
  %2313 = add nuw nsw i32 %2312, %2311
  %2314 = icmp eq i32 %2313, 2
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %91, align 1
  %2316 = add i64 %2289, -40
  %2317 = add i64 %392, 866
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i64*
  %2319 = load i64, i64* %2318, align 8
  store i64 %2319, i64* %RCX.i2541, align 8
  %2320 = add i64 %2319, 20
  %2321 = add i64 %392, 870
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = sext i32 %2294 to i64
  %2325 = sext i32 %2323 to i64
  %2326 = mul nsw i64 %2325, %2324
  %2327 = and i64 %2326, 4294967295
  store i64 %2327, i64* %RSI.i2547, align 8
  %2328 = trunc i64 %2326 to i32
  %2329 = add i32 %2328, %2278
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RDX.i2544, align 8
  %2331 = icmp ult i32 %2329, %2278
  %2332 = icmp ult i32 %2329, %2328
  %2333 = or i1 %2331, %2332
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %68, align 1
  %2335 = and i32 %2329, 255
  %2336 = tail call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  store i8 %2339, i8* %74, align 1
  %2340 = xor i64 %2326, %2279
  %2341 = trunc i64 %2340 to i32
  %2342 = xor i32 %2341, %2329
  %2343 = lshr i32 %2342, 4
  %2344 = trunc i32 %2343 to i8
  %2345 = and i8 %2344, 1
  store i8 %2345, i8* %79, align 1
  %2346 = icmp eq i32 %2329, 0
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %82, align 1
  %2348 = lshr i32 %2329, 31
  %2349 = trunc i32 %2348 to i8
  store i8 %2349, i8* %85, align 1
  %2350 = lshr i32 %2328, 31
  %2351 = xor i32 %2348, %2287
  %2352 = xor i32 %2348, %2350
  %2353 = add nuw nsw i32 %2351, %2352
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %91, align 1
  %2356 = add i64 %2289, -60
  %2357 = add i64 %392, 875
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i32*
  %2359 = load i32, i32* %2358, align 4
  %2360 = add i32 %2359, %2329
  %2361 = zext i32 %2360 to i64
  store i64 %2361, i64* %RDX.i2544, align 8
  %2362 = icmp ult i32 %2360, %2329
  %2363 = icmp ult i32 %2360, %2359
  %2364 = or i1 %2362, %2363
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %68, align 1
  %2366 = and i32 %2360, 255
  %2367 = tail call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  store i8 %2370, i8* %74, align 1
  %2371 = xor i32 %2359, %2329
  %2372 = xor i32 %2371, %2360
  %2373 = lshr i32 %2372, 4
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  store i8 %2375, i8* %79, align 1
  %2376 = icmp eq i32 %2360, 0
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %82, align 1
  %2378 = lshr i32 %2360, 31
  %2379 = trunc i32 %2378 to i8
  store i8 %2379, i8* %85, align 1
  %2380 = lshr i32 %2359, 31
  %2381 = xor i32 %2378, %2348
  %2382 = xor i32 %2378, %2380
  %2383 = add nuw nsw i32 %2381, %2382
  %2384 = icmp eq i32 %2383, 2
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %91, align 1
  %2386 = sext i32 %2360 to i64
  store i64 %2386, i64* %RCX.i2541, align 8
  %2387 = load i64, i64* %RAX.i2556, align 8
  %2388 = shl nsw i64 %2386, 2
  %2389 = add i64 %2388, %2387
  %2390 = add i64 %392, 883
  store i64 %2390, i64* %3, align 8
  %2391 = load <2 x float>, <2 x float>* %220, align 1
  %2392 = load <2 x i32>, <2 x i32>* %221, align 1
  %2393 = inttoptr i64 %2389 to float*
  %2394 = load float, float* %2393, align 4
  %2395 = extractelement <2 x float> %2391, i32 0
  %2396 = fadd float %2395, %2394
  store float %2396, float* %213, align 1
  %2397 = bitcast <2 x float> %2391 to <2 x i32>
  %2398 = extractelement <2 x i32> %2397, i32 1
  store i32 %2398, i32* %222, align 1
  %2399 = extractelement <2 x i32> %2392, i32 0
  store i32 %2399, i32* %223, align 1
  %2400 = extractelement <2 x i32> %2392, i32 1
  store i32 %2400, i32* %224, align 1
  %2401 = load <2 x float>, <2 x float>* %206, align 1
  %2402 = load <2 x i32>, <2 x i32>* %207, align 1
  %2403 = load <2 x float>, <2 x float>* %220, align 1
  %2404 = extractelement <2 x float> %2401, i32 0
  %2405 = extractelement <2 x float> %2403, i32 0
  %2406 = fmul float %2404, %2405
  store float %2406, float* %199, align 1
  %2407 = bitcast <2 x float> %2401 to <2 x i32>
  %2408 = extractelement <2 x i32> %2407, i32 1
  store i32 %2408, i32* %208, align 1
  %2409 = extractelement <2 x i32> %2402, i32 0
  store i32 %2409, i32* %209, align 1
  %2410 = extractelement <2 x i32> %2402, i32 1
  store i32 %2410, i32* %210, align 1
  %2411 = load <2 x float>, <2 x float>* %191, align 1
  %2412 = load <2 x i32>, <2 x i32>* %196, align 1
  %2413 = load <2 x float>, <2 x float>* %206, align 1
  %2414 = extractelement <2 x float> %2411, i32 0
  %2415 = extractelement <2 x float> %2413, i32 0
  %2416 = fadd float %2414, %2415
  store float %2416, float* %192, align 1
  %2417 = bitcast <2 x float> %2411 to <2 x i32>
  %2418 = extractelement <2 x i32> %2417, i32 1
  store i32 %2418, i32* %187, align 1
  %2419 = extractelement <2 x i32> %2412, i32 0
  store i32 %2419, i32* %188, align 1
  %2420 = extractelement <2 x i32> %2412, i32 1
  store i32 %2420, i32* %190, align 1
  %2421 = add i64 %2289, -24
  %2422 = add i64 %392, 895
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i64*
  %2424 = load i64, i64* %2423, align 8
  store i64 %2424, i64* %RAX.i2556, align 8
  %2425 = add i64 %392, 898
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i64*
  %2427 = load i64, i64* %2426, align 8
  store i64 %2427, i64* %RAX.i2556, align 8
  %2428 = load i64, i64* %RBP.i, align 8
  %2429 = add i64 %2428, -24
  %2430 = add i64 %392, 902
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i64*
  %2432 = load i64, i64* %2431, align 8
  store i64 %2432, i64* %RCX.i2541, align 8
  %2433 = add i64 %2432, 12
  %2434 = add i64 %392, 905
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = zext i32 %2436 to i64
  store i64 %2437, i64* %RDX.i2544, align 8
  %2438 = add i64 %392, 912
  store i64 %2438, i64* %3, align 8
  %2439 = load i64, i64* %2431, align 8
  store i64 %2439, i64* %RCX.i2541, align 8
  %2440 = add i64 %2439, 16
  %2441 = add i64 %392, 916
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = sext i32 %2436 to i64
  %2445 = sext i32 %2443 to i64
  %2446 = mul nsw i64 %2445, %2444
  %2447 = trunc i64 %2446 to i32
  %2448 = and i64 %2446, 4294967295
  store i64 %2448, i64* %RDX.i2544, align 8
  %2449 = shl i64 %2446, 32
  %2450 = ashr exact i64 %2449, 32
  %2451 = icmp ne i64 %2450, %2446
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %68, align 1
  %2453 = and i32 %2447, 255
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2458 = lshr i32 %2447, 31
  %2459 = trunc i32 %2458 to i8
  store i8 %2459, i8* %85, align 1
  store i8 %2452, i8* %91, align 1
  %2460 = add i64 %392, 920
  store i64 %2460, i64* %3, align 8
  %2461 = load i64, i64* %2431, align 8
  store i64 %2461, i64* %RCX.i2541, align 8
  %2462 = add i64 %2461, 20
  %2463 = add i64 %392, 924
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  %2465 = load i32, i32* %2464, align 4
  %2466 = sext i32 %2465 to i64
  %2467 = mul nsw i64 %2466, %2450
  %2468 = trunc i64 %2467 to i32
  %2469 = and i64 %2467, 4294967295
  store i64 %2469, i64* %RDX.i2544, align 8
  %2470 = shl i64 %2467, 32
  %2471 = ashr exact i64 %2470, 32
  %2472 = icmp ne i64 %2471, %2467
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %68, align 1
  %2474 = and i32 %2468, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2479 = lshr i32 %2468, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %85, align 1
  store i8 %2473, i8* %91, align 1
  %2481 = add i64 %2428, -52
  %2482 = add i64 %392, 927
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RSI.i2547, align 8
  %2486 = add i64 %392, 931
  store i64 %2486, i64* %3, align 8
  %2487 = load i64, i64* %2431, align 8
  store i64 %2487, i64* %RCX.i2541, align 8
  %2488 = add i64 %2487, 16
  %2489 = add i64 %392, 935
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  %2492 = sext i32 %2484 to i64
  %2493 = sext i32 %2491 to i64
  %2494 = mul nsw i64 %2493, %2492
  %2495 = trunc i64 %2494 to i32
  %2496 = and i64 %2494, 4294967295
  store i64 %2496, i64* %RSI.i2547, align 8
  %2497 = shl i64 %2494, 32
  %2498 = ashr exact i64 %2497, 32
  %2499 = icmp ne i64 %2498, %2494
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %68, align 1
  %2501 = and i32 %2495, 255
  %2502 = tail call i32 @llvm.ctpop.i32(i32 %2501)
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  %2505 = xor i8 %2504, 1
  store i8 %2505, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2506 = lshr i32 %2495, 31
  %2507 = trunc i32 %2506 to i8
  store i8 %2507, i8* %85, align 1
  store i8 %2500, i8* %91, align 1
  %2508 = load i64, i64* %RBP.i, align 8
  %2509 = add i64 %2508, -24
  %2510 = add i64 %392, 939
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i64*
  %2512 = load i64, i64* %2511, align 8
  store i64 %2512, i64* %RCX.i2541, align 8
  %2513 = add i64 %2512, 20
  %2514 = add i64 %392, 943
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = sext i32 %2516 to i64
  %2518 = mul nsw i64 %2517, %2498
  %2519 = and i64 %2518, 4294967295
  store i64 %2519, i64* %RSI.i2547, align 8
  %2520 = trunc i64 %2518 to i32
  %2521 = add i32 %2520, %2468
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RDX.i2544, align 8
  %2523 = icmp ult i32 %2521, %2468
  %2524 = icmp ult i32 %2521, %2520
  %2525 = or i1 %2523, %2524
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %68, align 1
  %2527 = and i32 %2521, 255
  %2528 = tail call i32 @llvm.ctpop.i32(i32 %2527)
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  %2531 = xor i8 %2530, 1
  store i8 %2531, i8* %74, align 1
  %2532 = xor i64 %2518, %2467
  %2533 = trunc i64 %2532 to i32
  %2534 = xor i32 %2533, %2521
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  store i8 %2537, i8* %79, align 1
  %2538 = icmp eq i32 %2521, 0
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %82, align 1
  %2540 = lshr i32 %2521, 31
  %2541 = trunc i32 %2540 to i8
  store i8 %2541, i8* %85, align 1
  %2542 = lshr i32 %2520, 31
  %2543 = xor i32 %2540, %2479
  %2544 = xor i32 %2540, %2542
  %2545 = add nuw nsw i32 %2543, %2544
  %2546 = icmp eq i32 %2545, 2
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %91, align 1
  %2548 = add i64 %2508, -56
  %2549 = add i64 %392, 948
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = zext i32 %2551 to i64
  store i64 %2552, i64* %RSI.i2547, align 8
  %2553 = add i64 %392, 952
  store i64 %2553, i64* %3, align 8
  %2554 = load i64, i64* %2511, align 8
  store i64 %2554, i64* %RCX.i2541, align 8
  %2555 = add i64 %2554, 20
  %2556 = add i64 %392, 956
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = sext i32 %2551 to i64
  %2560 = sext i32 %2558 to i64
  %2561 = mul nsw i64 %2560, %2559
  %2562 = and i64 %2561, 4294967295
  store i64 %2562, i64* %RSI.i2547, align 8
  %2563 = trunc i64 %2561 to i32
  %2564 = add i32 %2563, %2521
  %2565 = zext i32 %2564 to i64
  store i64 %2565, i64* %RDX.i2544, align 8
  %2566 = icmp ult i32 %2564, %2521
  %2567 = icmp ult i32 %2564, %2563
  %2568 = or i1 %2566, %2567
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %68, align 1
  %2570 = and i32 %2564, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %74, align 1
  %2575 = xor i64 %2561, %2522
  %2576 = trunc i64 %2575 to i32
  %2577 = xor i32 %2576, %2564
  %2578 = lshr i32 %2577, 4
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  store i8 %2580, i8* %79, align 1
  %2581 = icmp eq i32 %2564, 0
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %82, align 1
  %2583 = lshr i32 %2564, 31
  %2584 = trunc i32 %2583 to i8
  store i8 %2584, i8* %85, align 1
  %2585 = lshr i32 %2563, 31
  %2586 = xor i32 %2583, %2540
  %2587 = xor i32 %2583, %2585
  %2588 = add nuw nsw i32 %2586, %2587
  %2589 = icmp eq i32 %2588, 2
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %91, align 1
  %2591 = load i64, i64* %RBP.i, align 8
  %2592 = add i64 %2591, -60
  %2593 = add i64 %392, 961
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2592 to i32*
  %2595 = load i32, i32* %2594, align 4
  %2596 = add i32 %2595, %2564
  %2597 = zext i32 %2596 to i64
  store i64 %2597, i64* %RDX.i2544, align 8
  %2598 = icmp ult i32 %2596, %2564
  %2599 = icmp ult i32 %2596, %2595
  %2600 = or i1 %2598, %2599
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %68, align 1
  %2602 = and i32 %2596, 255
  %2603 = tail call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %74, align 1
  %2607 = xor i32 %2595, %2564
  %2608 = xor i32 %2607, %2596
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %79, align 1
  %2612 = icmp eq i32 %2596, 0
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %82, align 1
  %2614 = lshr i32 %2596, 31
  %2615 = trunc i32 %2614 to i8
  store i8 %2615, i8* %85, align 1
  %2616 = lshr i32 %2595, 31
  %2617 = xor i32 %2614, %2583
  %2618 = xor i32 %2614, %2616
  %2619 = add nuw nsw i32 %2617, %2618
  %2620 = icmp eq i32 %2619, 2
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %91, align 1
  %2622 = sext i32 %2596 to i64
  store i64 %2622, i64* %RCX.i2541, align 8
  %2623 = load i64, i64* %RAX.i2556, align 8
  %2624 = shl nsw i64 %2622, 2
  %2625 = add i64 %2624, %2623
  %2626 = add i64 %392, 969
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  %2628 = load i32, i32* %2627, align 4
  store i32 %2628, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %2629 = add i64 %2591, -40
  %2630 = add i64 %392, 973
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i64*
  %2632 = load i64, i64* %2631, align 8
  store i64 %2632, i64* %RAX.i2556, align 8
  %2633 = add i64 %392, 976
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i64*
  %2635 = load i64, i64* %2634, align 8
  store i64 %2635, i64* %RAX.i2556, align 8
  %2636 = add i64 %392, 980
  store i64 %2636, i64* %3, align 8
  %2637 = load i64, i64* %2631, align 8
  store i64 %2637, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2638 = add i64 %392, 988
  store i64 %2638, i64* %3, align 8
  %2639 = load i64, i64* %2631, align 8
  store i64 %2639, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2640 = add i64 %392, 996
  store i64 %2640, i64* %3, align 8
  %2641 = load i64, i64* %2631, align 8
  store i64 %2641, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2642 = load i64, i64* %RBP.i, align 8
  %2643 = add i64 %2642, -52
  %2644 = add i64 %392, 1003
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to i32*
  %2646 = load i32, i32* %2645, align 4
  %2647 = zext i32 %2646 to i64
  store i64 %2647, i64* %RSI.i2547, align 8
  %2648 = add i64 %2642, -40
  %2649 = add i64 %392, 1007
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2648 to i64*
  %2651 = load i64, i64* %2650, align 8
  store i64 %2651, i64* %RCX.i2541, align 8
  %2652 = add i64 %2651, 16
  %2653 = add i64 %392, 1011
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = sext i32 %2646 to i64
  %2657 = sext i32 %2655 to i64
  %2658 = mul nsw i64 %2657, %2656
  %2659 = trunc i64 %2658 to i32
  %2660 = and i64 %2658, 4294967295
  store i64 %2660, i64* %RSI.i2547, align 8
  %2661 = shl i64 %2658, 32
  %2662 = ashr exact i64 %2661, 32
  %2663 = icmp ne i64 %2662, %2658
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %68, align 1
  %2665 = and i32 %2659, 255
  %2666 = tail call i32 @llvm.ctpop.i32(i32 %2665)
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  store i8 %2669, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2670 = lshr i32 %2659, 31
  %2671 = trunc i32 %2670 to i8
  store i8 %2671, i8* %85, align 1
  store i8 %2664, i8* %91, align 1
  %2672 = add i64 %392, 1015
  store i64 %2672, i64* %3, align 8
  %2673 = load i64, i64* %2650, align 8
  store i64 %2673, i64* %RCX.i2541, align 8
  %2674 = add i64 %2673, 20
  %2675 = add i64 %392, 1019
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = sext i32 %2677 to i64
  %2679 = mul nsw i64 %2678, %2662
  %2680 = and i64 %2679, 4294967295
  store i64 %2680, i64* %RSI.i2547, align 8
  %2681 = trunc i64 %2679 to i32
  store i64 %2680, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %2682 = and i32 %2681, 255
  %2683 = tail call i32 @llvm.ctpop.i32(i32 %2682)
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  store i8 %2686, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %2687 = icmp eq i32 %2681, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %82, align 1
  %2689 = lshr i32 %2681, 31
  %2690 = trunc i32 %2689 to i8
  store i8 %2690, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2691 = add i64 %2642, -56
  %2692 = add i64 %392, 1024
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  %2695 = add i32 %2694, 1
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RSI.i2547, align 8
  %2697 = icmp eq i32 %2694, -1
  %2698 = icmp eq i32 %2695, 0
  %2699 = or i1 %2697, %2698
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %68, align 1
  %2701 = and i32 %2695, 255
  %2702 = tail call i32 @llvm.ctpop.i32(i32 %2701)
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = xor i8 %2704, 1
  store i8 %2705, i8* %74, align 1
  %2706 = xor i32 %2694, %2695
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %79, align 1
  %2710 = zext i1 %2698 to i8
  store i8 %2710, i8* %82, align 1
  %2711 = lshr i32 %2695, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %85, align 1
  %2713 = lshr i32 %2694, 31
  %2714 = xor i32 %2711, %2713
  %2715 = add nuw nsw i32 %2714, %2711
  %2716 = icmp eq i32 %2715, 2
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %91, align 1
  %2718 = load i64, i64* %RBP.i, align 8
  %2719 = add i64 %2718, -40
  %2720 = add i64 %392, 1031
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i64*
  %2722 = load i64, i64* %2721, align 8
  store i64 %2722, i64* %RCX.i2541, align 8
  %2723 = add i64 %2722, 20
  %2724 = add i64 %392, 1035
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = sext i32 %2695 to i64
  %2728 = sext i32 %2726 to i64
  %2729 = mul nsw i64 %2728, %2727
  %2730 = and i64 %2729, 4294967295
  store i64 %2730, i64* %RSI.i2547, align 8
  %2731 = trunc i64 %2729 to i32
  %2732 = add i32 %2731, %2681
  %2733 = zext i32 %2732 to i64
  store i64 %2733, i64* %RDX.i2544, align 8
  %2734 = icmp ult i32 %2732, %2681
  %2735 = icmp ult i32 %2732, %2731
  %2736 = or i1 %2734, %2735
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %68, align 1
  %2738 = and i32 %2732, 255
  %2739 = tail call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  store i8 %2742, i8* %74, align 1
  %2743 = xor i64 %2729, %2679
  %2744 = trunc i64 %2743 to i32
  %2745 = xor i32 %2744, %2732
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %79, align 1
  %2749 = icmp eq i32 %2732, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %82, align 1
  %2751 = lshr i32 %2732, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %85, align 1
  %2753 = lshr i32 %2731, 31
  %2754 = xor i32 %2751, %2689
  %2755 = xor i32 %2751, %2753
  %2756 = add nuw nsw i32 %2754, %2755
  %2757 = icmp eq i32 %2756, 2
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %91, align 1
  %2759 = add i64 %2718, -60
  %2760 = add i64 %392, 1040
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = add i32 %2762, 1
  %2764 = zext i32 %2763 to i64
  store i64 %2764, i64* %RSI.i2547, align 8
  %2765 = lshr i32 %2763, 31
  %2766 = add i32 %2763, %2732
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %RDX.i2544, align 8
  %2768 = icmp ult i32 %2766, %2732
  %2769 = icmp ult i32 %2766, %2763
  %2770 = or i1 %2768, %2769
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %68, align 1
  %2772 = and i32 %2766, 255
  %2773 = tail call i32 @llvm.ctpop.i32(i32 %2772)
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  %2776 = xor i8 %2775, 1
  store i8 %2776, i8* %74, align 1
  %2777 = xor i32 %2763, %2732
  %2778 = xor i32 %2777, %2766
  %2779 = lshr i32 %2778, 4
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %79, align 1
  %2782 = icmp eq i32 %2766, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %82, align 1
  %2784 = lshr i32 %2766, 31
  %2785 = trunc i32 %2784 to i8
  store i8 %2785, i8* %85, align 1
  %2786 = xor i32 %2784, %2751
  %2787 = xor i32 %2784, %2765
  %2788 = add nuw nsw i32 %2786, %2787
  %2789 = icmp eq i32 %2788, 2
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %91, align 1
  %2791 = sext i32 %2766 to i64
  store i64 %2791, i64* %RCX.i2541, align 8
  %2792 = load i64, i64* %RAX.i2556, align 8
  %2793 = shl nsw i64 %2791, 2
  %2794 = add i64 %2793, %2792
  %2795 = add i64 %392, 1053
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i32*
  %2797 = load i32, i32* %2796, align 4
  store i32 %2797, i32* %1816, align 1
  store float 0.000000e+00, float* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  %2798 = load i64, i64* %RBP.i, align 8
  %2799 = add i64 %2798, -40
  %2800 = add i64 %392, 1057
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i64*
  %2802 = load i64, i64* %2801, align 8
  store i64 %2802, i64* %RAX.i2556, align 8
  %2803 = add i64 %392, 1060
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i64*
  %2805 = load i64, i64* %2804, align 8
  store i64 %2805, i64* %RAX.i2556, align 8
  %2806 = add i64 %392, 1064
  store i64 %2806, i64* %3, align 8
  %2807 = load i64, i64* %2801, align 8
  store i64 %2807, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2808 = add i64 %392, 1072
  store i64 %2808, i64* %3, align 8
  %2809 = load i64, i64* %2801, align 8
  store i64 %2809, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2810 = add i64 %392, 1080
  store i64 %2810, i64* %3, align 8
  %2811 = load i64, i64* %2801, align 8
  store i64 %2811, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2812 = add i64 %2798, -52
  %2813 = add i64 %392, 1087
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i32*
  %2815 = load i32, i32* %2814, align 4
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RSI.i2547, align 8
  %2817 = add i64 %392, 1091
  store i64 %2817, i64* %3, align 8
  %2818 = load i64, i64* %2801, align 8
  store i64 %2818, i64* %RCX.i2541, align 8
  %2819 = add i64 %2818, 16
  %2820 = add i64 %392, 1095
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i32*
  %2822 = load i32, i32* %2821, align 4
  %2823 = sext i32 %2815 to i64
  %2824 = sext i32 %2822 to i64
  %2825 = mul nsw i64 %2824, %2823
  %2826 = trunc i64 %2825 to i32
  %2827 = and i64 %2825, 4294967295
  store i64 %2827, i64* %RSI.i2547, align 8
  %2828 = shl i64 %2825, 32
  %2829 = ashr exact i64 %2828, 32
  %2830 = icmp ne i64 %2829, %2825
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %68, align 1
  %2832 = and i32 %2826, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832)
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %2837 = lshr i32 %2826, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %85, align 1
  store i8 %2831, i8* %91, align 1
  %2839 = add i64 %392, 1099
  store i64 %2839, i64* %3, align 8
  %2840 = load i64, i64* %2801, align 8
  store i64 %2840, i64* %RCX.i2541, align 8
  %2841 = add i64 %2840, 20
  %2842 = add i64 %392, 1103
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = sext i32 %2844 to i64
  %2846 = mul nsw i64 %2845, %2829
  %2847 = and i64 %2846, 4294967295
  store i64 %2847, i64* %RSI.i2547, align 8
  %2848 = trunc i64 %2846 to i32
  store i64 %2847, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %2849 = and i32 %2848, 255
  %2850 = tail call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  store i8 %2853, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %2854 = icmp eq i32 %2848, 0
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %82, align 1
  %2856 = lshr i32 %2848, 31
  %2857 = trunc i32 %2856 to i8
  store i8 %2857, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -56
  %2860 = add i64 %392, 1108
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = add i32 %2862, -1
  %2864 = zext i32 %2863 to i64
  store i64 %2864, i64* %RSI.i2547, align 8
  %2865 = icmp eq i32 %2862, 0
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %68, align 1
  %2867 = and i32 %2863, 255
  %2868 = tail call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  store i8 %2871, i8* %74, align 1
  %2872 = xor i32 %2862, %2863
  %2873 = lshr i32 %2872, 4
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %79, align 1
  %2876 = icmp eq i32 %2863, 0
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %82, align 1
  %2878 = lshr i32 %2863, 31
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %85, align 1
  %2880 = lshr i32 %2862, 31
  %2881 = xor i32 %2878, %2880
  %2882 = add nuw nsw i32 %2881, %2880
  %2883 = icmp eq i32 %2882, 2
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %91, align 1
  %2885 = add i64 %2858, -40
  %2886 = add i64 %392, 1115
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i64*
  %2888 = load i64, i64* %2887, align 8
  store i64 %2888, i64* %RCX.i2541, align 8
  %2889 = add i64 %2888, 20
  %2890 = add i64 %392, 1119
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2889 to i32*
  %2892 = load i32, i32* %2891, align 4
  %2893 = sext i32 %2863 to i64
  %2894 = sext i32 %2892 to i64
  %2895 = mul nsw i64 %2894, %2893
  %2896 = and i64 %2895, 4294967295
  store i64 %2896, i64* %RSI.i2547, align 8
  %2897 = trunc i64 %2895 to i32
  %2898 = add i32 %2897, %2848
  %2899 = zext i32 %2898 to i64
  store i64 %2899, i64* %RDX.i2544, align 8
  %2900 = icmp ult i32 %2898, %2848
  %2901 = icmp ult i32 %2898, %2897
  %2902 = or i1 %2900, %2901
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %68, align 1
  %2904 = and i32 %2898, 255
  %2905 = tail call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  store i8 %2908, i8* %74, align 1
  %2909 = xor i64 %2895, %2846
  %2910 = trunc i64 %2909 to i32
  %2911 = xor i32 %2910, %2898
  %2912 = lshr i32 %2911, 4
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  store i8 %2914, i8* %79, align 1
  %2915 = icmp eq i32 %2898, 0
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %82, align 1
  %2917 = lshr i32 %2898, 31
  %2918 = trunc i32 %2917 to i8
  store i8 %2918, i8* %85, align 1
  %2919 = lshr i32 %2897, 31
  %2920 = xor i32 %2917, %2856
  %2921 = xor i32 %2917, %2919
  %2922 = add nuw nsw i32 %2920, %2921
  %2923 = icmp eq i32 %2922, 2
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %91, align 1
  %2925 = add i64 %2858, -60
  %2926 = add i64 %392, 1124
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = add i32 %2928, 1
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RSI.i2547, align 8
  %2931 = lshr i32 %2929, 31
  %2932 = add i32 %2929, %2898
  %2933 = zext i32 %2932 to i64
  store i64 %2933, i64* %RDX.i2544, align 8
  %2934 = icmp ult i32 %2932, %2898
  %2935 = icmp ult i32 %2932, %2929
  %2936 = or i1 %2934, %2935
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %68, align 1
  %2938 = and i32 %2932, 255
  %2939 = tail call i32 @llvm.ctpop.i32(i32 %2938)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  store i8 %2942, i8* %74, align 1
  %2943 = xor i32 %2929, %2898
  %2944 = xor i32 %2943, %2932
  %2945 = lshr i32 %2944, 4
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  store i8 %2947, i8* %79, align 1
  %2948 = icmp eq i32 %2932, 0
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %82, align 1
  %2950 = lshr i32 %2932, 31
  %2951 = trunc i32 %2950 to i8
  store i8 %2951, i8* %85, align 1
  %2952 = xor i32 %2950, %2917
  %2953 = xor i32 %2950, %2931
  %2954 = add nuw nsw i32 %2952, %2953
  %2955 = icmp eq i32 %2954, 2
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %91, align 1
  %2957 = sext i32 %2932 to i64
  store i64 %2957, i64* %RCX.i2541, align 8
  %2958 = load i64, i64* %RAX.i2556, align 8
  %2959 = shl nsw i64 %2957, 2
  %2960 = add i64 %2959, %2958
  %2961 = add i64 %392, 1137
  store i64 %2961, i64* %3, align 8
  %2962 = load <2 x float>, <2 x float>* %220, align 1
  %2963 = load <2 x i32>, <2 x i32>* %221, align 1
  %2964 = inttoptr i64 %2960 to float*
  %2965 = load float, float* %2964, align 4
  %2966 = extractelement <2 x float> %2962, i32 0
  %2967 = fsub float %2966, %2965
  store float %2967, float* %213, align 1
  %2968 = bitcast <2 x float> %2962 to <2 x i32>
  %2969 = extractelement <2 x i32> %2968, i32 1
  store i32 %2969, i32* %222, align 1
  %2970 = extractelement <2 x i32> %2963, i32 0
  store i32 %2970, i32* %223, align 1
  %2971 = extractelement <2 x i32> %2963, i32 1
  store i32 %2971, i32* %224, align 1
  %2972 = load i64, i64* %RBP.i, align 8
  %2973 = add i64 %2972, -40
  %2974 = add i64 %392, 1141
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2973 to i64*
  %2976 = load i64, i64* %2975, align 8
  store i64 %2976, i64* %RAX.i2556, align 8
  %2977 = add i64 %392, 1144
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i64*
  %2979 = load i64, i64* %2978, align 8
  store i64 %2979, i64* %RAX.i2556, align 8
  %2980 = add i64 %392, 1148
  store i64 %2980, i64* %3, align 8
  %2981 = load i64, i64* %2975, align 8
  store i64 %2981, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2982 = add i64 %392, 1156
  store i64 %2982, i64* %3, align 8
  %2983 = load i64, i64* %2975, align 8
  store i64 %2983, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2984 = add i64 %392, 1164
  store i64 %2984, i64* %3, align 8
  %2985 = load i64, i64* %2975, align 8
  store i64 %2985, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %2986 = add i64 %2972, -52
  %2987 = add i64 %392, 1171
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = zext i32 %2989 to i64
  store i64 %2990, i64* %RSI.i2547, align 8
  %2991 = add i64 %392, 1175
  store i64 %2991, i64* %3, align 8
  %2992 = load i64, i64* %2975, align 8
  store i64 %2992, i64* %RCX.i2541, align 8
  %2993 = add i64 %2992, 16
  %2994 = add i64 %392, 1179
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = sext i32 %2989 to i64
  %2998 = sext i32 %2996 to i64
  %2999 = mul nsw i64 %2998, %2997
  %3000 = trunc i64 %2999 to i32
  %3001 = and i64 %2999, 4294967295
  store i64 %3001, i64* %RSI.i2547, align 8
  %3002 = shl i64 %2999, 32
  %3003 = ashr exact i64 %3002, 32
  %3004 = icmp ne i64 %3003, %2999
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %68, align 1
  %3006 = and i32 %3000, 255
  %3007 = tail call i32 @llvm.ctpop.i32(i32 %3006)
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  store i8 %3010, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3011 = lshr i32 %3000, 31
  %3012 = trunc i32 %3011 to i8
  store i8 %3012, i8* %85, align 1
  store i8 %3005, i8* %91, align 1
  %3013 = add i64 %392, 1183
  store i64 %3013, i64* %3, align 8
  %3014 = load i64, i64* %2975, align 8
  store i64 %3014, i64* %RCX.i2541, align 8
  %3015 = add i64 %3014, 20
  %3016 = add i64 %392, 1187
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  %3018 = load i32, i32* %3017, align 4
  %3019 = sext i32 %3018 to i64
  %3020 = mul nsw i64 %3019, %3003
  %3021 = and i64 %3020, 4294967295
  store i64 %3021, i64* %RSI.i2547, align 8
  %3022 = trunc i64 %3020 to i32
  store i64 %3021, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3023 = and i32 %3022, 255
  %3024 = tail call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  store i8 %3027, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3028 = icmp eq i32 %3022, 0
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %82, align 1
  %3030 = lshr i32 %3022, 31
  %3031 = trunc i32 %3030 to i8
  store i8 %3031, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3032 = load i64, i64* %RBP.i, align 8
  %3033 = add i64 %3032, -56
  %3034 = add i64 %392, 1192
  store i64 %3034, i64* %3, align 8
  %3035 = inttoptr i64 %3033 to i32*
  %3036 = load i32, i32* %3035, align 4
  %3037 = add i32 %3036, 1
  %3038 = zext i32 %3037 to i64
  store i64 %3038, i64* %RSI.i2547, align 8
  %3039 = icmp eq i32 %3036, -1
  %3040 = icmp eq i32 %3037, 0
  %3041 = or i1 %3039, %3040
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %68, align 1
  %3043 = and i32 %3037, 255
  %3044 = tail call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  store i8 %3047, i8* %74, align 1
  %3048 = xor i32 %3036, %3037
  %3049 = lshr i32 %3048, 4
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  store i8 %3051, i8* %79, align 1
  %3052 = zext i1 %3040 to i8
  store i8 %3052, i8* %82, align 1
  %3053 = lshr i32 %3037, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %85, align 1
  %3055 = lshr i32 %3036, 31
  %3056 = xor i32 %3053, %3055
  %3057 = add nuw nsw i32 %3056, %3053
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %91, align 1
  %3060 = add i64 %3032, -40
  %3061 = add i64 %392, 1199
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i64*
  %3063 = load i64, i64* %3062, align 8
  store i64 %3063, i64* %RCX.i2541, align 8
  %3064 = add i64 %3063, 20
  %3065 = add i64 %392, 1203
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = sext i32 %3037 to i64
  %3069 = sext i32 %3067 to i64
  %3070 = mul nsw i64 %3069, %3068
  %3071 = and i64 %3070, 4294967295
  store i64 %3071, i64* %RSI.i2547, align 8
  %3072 = trunc i64 %3070 to i32
  %3073 = add i32 %3072, %3022
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RDX.i2544, align 8
  %3075 = icmp ult i32 %3073, %3022
  %3076 = icmp ult i32 %3073, %3072
  %3077 = or i1 %3075, %3076
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %68, align 1
  %3079 = and i32 %3073, 255
  %3080 = tail call i32 @llvm.ctpop.i32(i32 %3079)
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %74, align 1
  %3084 = xor i64 %3070, %3020
  %3085 = trunc i64 %3084 to i32
  %3086 = xor i32 %3085, %3073
  %3087 = lshr i32 %3086, 4
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  store i8 %3089, i8* %79, align 1
  %3090 = icmp eq i32 %3073, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %82, align 1
  %3092 = lshr i32 %3073, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %85, align 1
  %3094 = lshr i32 %3072, 31
  %3095 = xor i32 %3092, %3030
  %3096 = xor i32 %3092, %3094
  %3097 = add nuw nsw i32 %3095, %3096
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %91, align 1
  %3100 = add i64 %3032, -60
  %3101 = add i64 %392, 1208
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = add i32 %3103, -1
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RSI.i2547, align 8
  %3106 = lshr i32 %3104, 31
  %3107 = add i32 %3104, %3073
  %3108 = zext i32 %3107 to i64
  store i64 %3108, i64* %RDX.i2544, align 8
  %3109 = icmp ult i32 %3107, %3073
  %3110 = icmp ult i32 %3107, %3104
  %3111 = or i1 %3109, %3110
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %68, align 1
  %3113 = and i32 %3107, 255
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %74, align 1
  %3118 = xor i32 %3104, %3073
  %3119 = xor i32 %3118, %3107
  %3120 = lshr i32 %3119, 4
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  store i8 %3122, i8* %79, align 1
  %3123 = icmp eq i32 %3107, 0
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %82, align 1
  %3125 = lshr i32 %3107, 31
  %3126 = trunc i32 %3125 to i8
  store i8 %3126, i8* %85, align 1
  %3127 = xor i32 %3125, %3092
  %3128 = xor i32 %3125, %3106
  %3129 = add nuw nsw i32 %3127, %3128
  %3130 = icmp eq i32 %3129, 2
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %91, align 1
  %3132 = sext i32 %3107 to i64
  store i64 %3132, i64* %RCX.i2541, align 8
  %3133 = load i64, i64* %RAX.i2556, align 8
  %3134 = shl nsw i64 %3132, 2
  %3135 = add i64 %3134, %3133
  %3136 = add i64 %392, 1221
  store i64 %3136, i64* %3, align 8
  %3137 = load <2 x float>, <2 x float>* %220, align 1
  %3138 = load <2 x i32>, <2 x i32>* %221, align 1
  %3139 = inttoptr i64 %3135 to float*
  %3140 = load float, float* %3139, align 4
  %3141 = extractelement <2 x float> %3137, i32 0
  %3142 = fsub float %3141, %3140
  store float %3142, float* %213, align 1
  %3143 = bitcast <2 x float> %3137 to <2 x i32>
  %3144 = extractelement <2 x i32> %3143, i32 1
  store i32 %3144, i32* %222, align 1
  %3145 = extractelement <2 x i32> %3138, i32 0
  store i32 %3145, i32* %223, align 1
  %3146 = extractelement <2 x i32> %3138, i32 1
  store i32 %3146, i32* %224, align 1
  %3147 = load i64, i64* %RBP.i, align 8
  %3148 = add i64 %3147, -40
  %3149 = add i64 %392, 1225
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i64*
  %3151 = load i64, i64* %3150, align 8
  store i64 %3151, i64* %RAX.i2556, align 8
  %3152 = add i64 %392, 1228
  store i64 %3152, i64* %3, align 8
  %3153 = inttoptr i64 %3151 to i64*
  %3154 = load i64, i64* %3153, align 8
  store i64 %3154, i64* %RAX.i2556, align 8
  %3155 = add i64 %392, 1232
  store i64 %3155, i64* %3, align 8
  %3156 = load i64, i64* %3150, align 8
  store i64 %3156, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3157 = add i64 %392, 1240
  store i64 %3157, i64* %3, align 8
  %3158 = load i64, i64* %3150, align 8
  store i64 %3158, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3159 = add i64 %392, 1248
  store i64 %3159, i64* %3, align 8
  %3160 = load i64, i64* %3150, align 8
  store i64 %3160, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3161 = add i64 %3147, -52
  %3162 = add i64 %392, 1255
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i32*
  %3164 = load i32, i32* %3163, align 4
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RSI.i2547, align 8
  %3166 = add i64 %392, 1259
  store i64 %3166, i64* %3, align 8
  %3167 = load i64, i64* %3150, align 8
  store i64 %3167, i64* %RCX.i2541, align 8
  %3168 = add i64 %3167, 16
  %3169 = add i64 %392, 1263
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i32*
  %3171 = load i32, i32* %3170, align 4
  %3172 = sext i32 %3164 to i64
  %3173 = sext i32 %3171 to i64
  %3174 = mul nsw i64 %3173, %3172
  %3175 = trunc i64 %3174 to i32
  %3176 = and i64 %3174, 4294967295
  store i64 %3176, i64* %RSI.i2547, align 8
  %3177 = shl i64 %3174, 32
  %3178 = ashr exact i64 %3177, 32
  %3179 = icmp ne i64 %3178, %3174
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %68, align 1
  %3181 = and i32 %3175, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3186 = lshr i32 %3175, 31
  %3187 = trunc i32 %3186 to i8
  store i8 %3187, i8* %85, align 1
  store i8 %3180, i8* %91, align 1
  %3188 = add i64 %392, 1267
  store i64 %3188, i64* %3, align 8
  %3189 = load i64, i64* %3150, align 8
  store i64 %3189, i64* %RCX.i2541, align 8
  %3190 = add i64 %3189, 20
  %3191 = add i64 %392, 1271
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i32*
  %3193 = load i32, i32* %3192, align 4
  %3194 = sext i32 %3193 to i64
  %3195 = mul nsw i64 %3194, %3178
  %3196 = and i64 %3195, 4294967295
  store i64 %3196, i64* %RSI.i2547, align 8
  %3197 = trunc i64 %3195 to i32
  store i64 %3196, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3198 = and i32 %3197, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3203 = icmp eq i32 %3197, 0
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %82, align 1
  %3205 = lshr i32 %3197, 31
  %3206 = trunc i32 %3205 to i8
  store i8 %3206, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3207 = load i64, i64* %RBP.i, align 8
  %3208 = add i64 %3207, -56
  %3209 = add i64 %392, 1276
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i32*
  %3211 = load i32, i32* %3210, align 4
  %3212 = add i32 %3211, -1
  %3213 = zext i32 %3212 to i64
  store i64 %3213, i64* %RSI.i2547, align 8
  %3214 = icmp eq i32 %3211, 0
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %68, align 1
  %3216 = and i32 %3212, 255
  %3217 = tail call i32 @llvm.ctpop.i32(i32 %3216)
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = xor i8 %3219, 1
  store i8 %3220, i8* %74, align 1
  %3221 = xor i32 %3211, %3212
  %3222 = lshr i32 %3221, 4
  %3223 = trunc i32 %3222 to i8
  %3224 = and i8 %3223, 1
  store i8 %3224, i8* %79, align 1
  %3225 = icmp eq i32 %3212, 0
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %82, align 1
  %3227 = lshr i32 %3212, 31
  %3228 = trunc i32 %3227 to i8
  store i8 %3228, i8* %85, align 1
  %3229 = lshr i32 %3211, 31
  %3230 = xor i32 %3227, %3229
  %3231 = add nuw nsw i32 %3230, %3229
  %3232 = icmp eq i32 %3231, 2
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %91, align 1
  %3234 = add i64 %3207, -40
  %3235 = add i64 %392, 1283
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i64*
  %3237 = load i64, i64* %3236, align 8
  store i64 %3237, i64* %RCX.i2541, align 8
  %3238 = add i64 %3237, 20
  %3239 = add i64 %392, 1287
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = sext i32 %3212 to i64
  %3243 = sext i32 %3241 to i64
  %3244 = mul nsw i64 %3243, %3242
  %3245 = and i64 %3244, 4294967295
  store i64 %3245, i64* %RSI.i2547, align 8
  %3246 = trunc i64 %3244 to i32
  %3247 = add i32 %3246, %3197
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RDX.i2544, align 8
  %3249 = icmp ult i32 %3247, %3197
  %3250 = icmp ult i32 %3247, %3246
  %3251 = or i1 %3249, %3250
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %68, align 1
  %3253 = and i32 %3247, 255
  %3254 = tail call i32 @llvm.ctpop.i32(i32 %3253)
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = xor i8 %3256, 1
  store i8 %3257, i8* %74, align 1
  %3258 = xor i64 %3244, %3195
  %3259 = trunc i64 %3258 to i32
  %3260 = xor i32 %3259, %3247
  %3261 = lshr i32 %3260, 4
  %3262 = trunc i32 %3261 to i8
  %3263 = and i8 %3262, 1
  store i8 %3263, i8* %79, align 1
  %3264 = icmp eq i32 %3247, 0
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %82, align 1
  %3266 = lshr i32 %3247, 31
  %3267 = trunc i32 %3266 to i8
  store i8 %3267, i8* %85, align 1
  %3268 = lshr i32 %3246, 31
  %3269 = xor i32 %3266, %3205
  %3270 = xor i32 %3266, %3268
  %3271 = add nuw nsw i32 %3269, %3270
  %3272 = icmp eq i32 %3271, 2
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %91, align 1
  %3274 = add i64 %3207, -60
  %3275 = add i64 %392, 1292
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = add i32 %3277, -1
  %3279 = zext i32 %3278 to i64
  store i64 %3279, i64* %RSI.i2547, align 8
  %3280 = lshr i32 %3278, 31
  %3281 = add i32 %3278, %3247
  %3282 = zext i32 %3281 to i64
  store i64 %3282, i64* %RDX.i2544, align 8
  %3283 = icmp ult i32 %3281, %3247
  %3284 = icmp ult i32 %3281, %3278
  %3285 = or i1 %3283, %3284
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %68, align 1
  %3287 = and i32 %3281, 255
  %3288 = tail call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %74, align 1
  %3292 = xor i32 %3278, %3247
  %3293 = xor i32 %3292, %3281
  %3294 = lshr i32 %3293, 4
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  store i8 %3296, i8* %79, align 1
  %3297 = icmp eq i32 %3281, 0
  %3298 = zext i1 %3297 to i8
  store i8 %3298, i8* %82, align 1
  %3299 = lshr i32 %3281, 31
  %3300 = trunc i32 %3299 to i8
  store i8 %3300, i8* %85, align 1
  %3301 = xor i32 %3299, %3266
  %3302 = xor i32 %3299, %3280
  %3303 = add nuw nsw i32 %3301, %3302
  %3304 = icmp eq i32 %3303, 2
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %91, align 1
  %3306 = sext i32 %3281 to i64
  store i64 %3306, i64* %RCX.i2541, align 8
  %3307 = load i64, i64* %RAX.i2556, align 8
  %3308 = shl nsw i64 %3306, 2
  %3309 = add i64 %3308, %3307
  %3310 = add i64 %392, 1305
  store i64 %3310, i64* %3, align 8
  %3311 = load <2 x float>, <2 x float>* %220, align 1
  %3312 = load <2 x i32>, <2 x i32>* %221, align 1
  %3313 = inttoptr i64 %3309 to float*
  %3314 = load float, float* %3313, align 4
  %3315 = extractelement <2 x float> %3311, i32 0
  %3316 = fadd float %3315, %3314
  store float %3316, float* %213, align 1
  %3317 = bitcast <2 x float> %3311 to <2 x i32>
  %3318 = extractelement <2 x i32> %3317, i32 1
  store i32 %3318, i32* %222, align 1
  %3319 = extractelement <2 x i32> %3312, i32 0
  store i32 %3319, i32* %223, align 1
  %3320 = extractelement <2 x i32> %3312, i32 1
  store i32 %3320, i32* %224, align 1
  %3321 = load <2 x float>, <2 x float>* %206, align 1
  %3322 = load <2 x i32>, <2 x i32>* %207, align 1
  %3323 = load <2 x float>, <2 x float>* %220, align 1
  %3324 = extractelement <2 x float> %3321, i32 0
  %3325 = extractelement <2 x float> %3323, i32 0
  %3326 = fmul float %3324, %3325
  store float %3326, float* %199, align 1
  %3327 = bitcast <2 x float> %3321 to <2 x i32>
  %3328 = extractelement <2 x i32> %3327, i32 1
  store i32 %3328, i32* %208, align 1
  %3329 = extractelement <2 x i32> %3322, i32 0
  store i32 %3329, i32* %209, align 1
  %3330 = extractelement <2 x i32> %3322, i32 1
  store i32 %3330, i32* %210, align 1
  %3331 = load <2 x float>, <2 x float>* %191, align 1
  %3332 = load <2 x i32>, <2 x i32>* %196, align 1
  %3333 = load <2 x float>, <2 x float>* %206, align 1
  %3334 = extractelement <2 x float> %3331, i32 0
  %3335 = extractelement <2 x float> %3333, i32 0
  %3336 = fadd float %3334, %3335
  store float %3336, float* %192, align 1
  %3337 = bitcast <2 x float> %3331 to <2 x i32>
  %3338 = extractelement <2 x i32> %3337, i32 1
  store i32 %3338, i32* %187, align 1
  %3339 = extractelement <2 x i32> %3332, i32 0
  store i32 %3339, i32* %188, align 1
  %3340 = extractelement <2 x i32> %3332, i32 1
  store i32 %3340, i32* %190, align 1
  %3341 = load i64, i64* %RBP.i, align 8
  %3342 = add i64 %3341, -24
  %3343 = add i64 %392, 1317
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i64*
  %3345 = load i64, i64* %3344, align 8
  store i64 %3345, i64* %RAX.i2556, align 8
  %3346 = add i64 %392, 1320
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i64*
  %3348 = load i64, i64* %3347, align 8
  store i64 %3348, i64* %RAX.i2556, align 8
  %3349 = add i64 %392, 1324
  store i64 %3349, i64* %3, align 8
  %3350 = load i64, i64* %3344, align 8
  store i64 %3350, i64* %RCX.i2541, align 8
  %3351 = add i64 %3350, 12
  %3352 = add i64 %392, 1327
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = shl i32 %3354, 1
  %3356 = icmp slt i32 %3354, 0
  %3357 = icmp slt i32 %3355, 0
  %3358 = xor i1 %3356, %3357
  %3359 = zext i32 %3355 to i64
  store i64 %3359, i64* %RDX.i2544, align 8
  %.lobit10 = lshr i32 %3354, 31
  %3360 = trunc i32 %.lobit10 to i8
  store i8 %3360, i8* %68, align 1
  %3361 = and i32 %3355, 254
  %3362 = tail call i32 @llvm.ctpop.i32(i32 %3361)
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = xor i8 %3364, 1
  store i8 %3365, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3366 = icmp eq i32 %3355, 0
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %82, align 1
  %3368 = lshr i32 %3354, 30
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  store i8 %3370, i8* %85, align 1
  %3371 = zext i1 %3358 to i8
  store i8 %3371, i8* %91, align 1
  %3372 = add i64 %392, 1334
  store i64 %3372, i64* %3, align 8
  %3373 = load i64, i64* %3344, align 8
  store i64 %3373, i64* %RCX.i2541, align 8
  %3374 = add i64 %3373, 16
  %3375 = add i64 %392, 1338
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  %3377 = load i32, i32* %3376, align 4
  %3378 = sext i32 %3355 to i64
  %3379 = sext i32 %3377 to i64
  %3380 = mul nsw i64 %3379, %3378
  %3381 = trunc i64 %3380 to i32
  %3382 = and i64 %3380, 4294967294
  store i64 %3382, i64* %RDX.i2544, align 8
  %3383 = shl i64 %3380, 32
  %3384 = ashr exact i64 %3383, 32
  %3385 = icmp ne i64 %3384, %3380
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %68, align 1
  %3387 = and i32 %3381, 254
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3392 = lshr i32 %3381, 31
  %3393 = trunc i32 %3392 to i8
  store i8 %3393, i8* %85, align 1
  store i8 %3386, i8* %91, align 1
  %3394 = add i64 %392, 1342
  store i64 %3394, i64* %3, align 8
  %3395 = load i64, i64* %3344, align 8
  store i64 %3395, i64* %RCX.i2541, align 8
  %3396 = add i64 %3395, 20
  %3397 = add i64 %392, 1346
  store i64 %3397, i64* %3, align 8
  %3398 = inttoptr i64 %3396 to i32*
  %3399 = load i32, i32* %3398, align 4
  %3400 = sext i32 %3399 to i64
  %3401 = mul nsw i64 %3400, %3384
  %3402 = trunc i64 %3401 to i32
  %3403 = and i64 %3401, 4294967295
  store i64 %3403, i64* %RDX.i2544, align 8
  %3404 = shl i64 %3401, 32
  %3405 = ashr exact i64 %3404, 32
  %3406 = icmp ne i64 %3405, %3401
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %68, align 1
  %3408 = and i32 %3402, 255
  %3409 = tail call i32 @llvm.ctpop.i32(i32 %3408)
  %3410 = trunc i32 %3409 to i8
  %3411 = and i8 %3410, 1
  %3412 = xor i8 %3411, 1
  store i8 %3412, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3413 = lshr i32 %3402, 31
  %3414 = trunc i32 %3413 to i8
  store i8 %3414, i8* %85, align 1
  store i8 %3407, i8* %91, align 1
  %3415 = load i64, i64* %RBP.i, align 8
  %3416 = add i64 %3415, -52
  %3417 = add i64 %392, 1349
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i32*
  %3419 = load i32, i32* %3418, align 4
  %3420 = zext i32 %3419 to i64
  store i64 %3420, i64* %RSI.i2547, align 8
  %3421 = add i64 %3415, -24
  %3422 = add i64 %392, 1353
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i64*
  %3424 = load i64, i64* %3423, align 8
  store i64 %3424, i64* %RCX.i2541, align 8
  %3425 = add i64 %3424, 16
  %3426 = add i64 %392, 1357
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i32*
  %3428 = load i32, i32* %3427, align 4
  %3429 = sext i32 %3419 to i64
  %3430 = sext i32 %3428 to i64
  %3431 = mul nsw i64 %3430, %3429
  %3432 = trunc i64 %3431 to i32
  %3433 = and i64 %3431, 4294967295
  store i64 %3433, i64* %RSI.i2547, align 8
  %3434 = shl i64 %3431, 32
  %3435 = ashr exact i64 %3434, 32
  %3436 = icmp ne i64 %3435, %3431
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %68, align 1
  %3438 = and i32 %3432, 255
  %3439 = tail call i32 @llvm.ctpop.i32(i32 %3438)
  %3440 = trunc i32 %3439 to i8
  %3441 = and i8 %3440, 1
  %3442 = xor i8 %3441, 1
  store i8 %3442, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3443 = lshr i32 %3432, 31
  %3444 = trunc i32 %3443 to i8
  store i8 %3444, i8* %85, align 1
  store i8 %3437, i8* %91, align 1
  %3445 = add i64 %392, 1361
  store i64 %3445, i64* %3, align 8
  %3446 = load i64, i64* %3423, align 8
  store i64 %3446, i64* %RCX.i2541, align 8
  %3447 = add i64 %3446, 20
  %3448 = add i64 %392, 1365
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = sext i32 %3450 to i64
  %3452 = mul nsw i64 %3451, %3435
  %3453 = and i64 %3452, 4294967295
  store i64 %3453, i64* %RSI.i2547, align 8
  %3454 = trunc i64 %3452 to i32
  %3455 = add i32 %3454, %3402
  %3456 = zext i32 %3455 to i64
  store i64 %3456, i64* %RDX.i2544, align 8
  %3457 = icmp ult i32 %3455, %3402
  %3458 = icmp ult i32 %3455, %3454
  %3459 = or i1 %3457, %3458
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %68, align 1
  %3461 = and i32 %3455, 255
  %3462 = tail call i32 @llvm.ctpop.i32(i32 %3461)
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = xor i8 %3464, 1
  store i8 %3465, i8* %74, align 1
  %3466 = xor i64 %3452, %3401
  %3467 = trunc i64 %3466 to i32
  %3468 = xor i32 %3467, %3455
  %3469 = lshr i32 %3468, 4
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  store i8 %3471, i8* %79, align 1
  %3472 = icmp eq i32 %3455, 0
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %82, align 1
  %3474 = lshr i32 %3455, 31
  %3475 = trunc i32 %3474 to i8
  store i8 %3475, i8* %85, align 1
  %3476 = lshr i32 %3454, 31
  %3477 = xor i32 %3474, %3413
  %3478 = xor i32 %3474, %3476
  %3479 = add nuw nsw i32 %3477, %3478
  %3480 = icmp eq i32 %3479, 2
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %91, align 1
  %3482 = add i64 %3415, -56
  %3483 = add i64 %392, 1370
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = zext i32 %3485 to i64
  store i64 %3486, i64* %RSI.i2547, align 8
  %3487 = add i64 %392, 1374
  store i64 %3487, i64* %3, align 8
  %3488 = load i64, i64* %3423, align 8
  store i64 %3488, i64* %RCX.i2541, align 8
  %3489 = add i64 %3488, 20
  %3490 = add i64 %392, 1378
  store i64 %3490, i64* %3, align 8
  %3491 = inttoptr i64 %3489 to i32*
  %3492 = load i32, i32* %3491, align 4
  %3493 = sext i32 %3485 to i64
  %3494 = sext i32 %3492 to i64
  %3495 = mul nsw i64 %3494, %3493
  %3496 = and i64 %3495, 4294967295
  store i64 %3496, i64* %RSI.i2547, align 8
  %3497 = trunc i64 %3495 to i32
  %3498 = add i32 %3497, %3455
  %3499 = zext i32 %3498 to i64
  store i64 %3499, i64* %RDX.i2544, align 8
  %3500 = icmp ult i32 %3498, %3455
  %3501 = icmp ult i32 %3498, %3497
  %3502 = or i1 %3500, %3501
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %68, align 1
  %3504 = and i32 %3498, 255
  %3505 = tail call i32 @llvm.ctpop.i32(i32 %3504)
  %3506 = trunc i32 %3505 to i8
  %3507 = and i8 %3506, 1
  %3508 = xor i8 %3507, 1
  store i8 %3508, i8* %74, align 1
  %3509 = xor i64 %3495, %3456
  %3510 = trunc i64 %3509 to i32
  %3511 = xor i32 %3510, %3498
  %3512 = lshr i32 %3511, 4
  %3513 = trunc i32 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %79, align 1
  %3515 = icmp eq i32 %3498, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %82, align 1
  %3517 = lshr i32 %3498, 31
  %3518 = trunc i32 %3517 to i8
  store i8 %3518, i8* %85, align 1
  %3519 = lshr i32 %3497, 31
  %3520 = xor i32 %3517, %3474
  %3521 = xor i32 %3517, %3519
  %3522 = add nuw nsw i32 %3520, %3521
  %3523 = icmp eq i32 %3522, 2
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %91, align 1
  %3525 = add i64 %3415, -60
  %3526 = add i64 %392, 1383
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3525 to i32*
  %3528 = load i32, i32* %3527, align 4
  %3529 = add i32 %3528, %3498
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RDX.i2544, align 8
  %3531 = icmp ult i32 %3529, %3498
  %3532 = icmp ult i32 %3529, %3528
  %3533 = or i1 %3531, %3532
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %68, align 1
  %3535 = and i32 %3529, 255
  %3536 = tail call i32 @llvm.ctpop.i32(i32 %3535)
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  %3539 = xor i8 %3538, 1
  store i8 %3539, i8* %74, align 1
  %3540 = xor i32 %3528, %3498
  %3541 = xor i32 %3540, %3529
  %3542 = lshr i32 %3541, 4
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  store i8 %3544, i8* %79, align 1
  %3545 = icmp eq i32 %3529, 0
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %82, align 1
  %3547 = lshr i32 %3529, 31
  %3548 = trunc i32 %3547 to i8
  store i8 %3548, i8* %85, align 1
  %3549 = lshr i32 %3528, 31
  %3550 = xor i32 %3547, %3517
  %3551 = xor i32 %3547, %3549
  %3552 = add nuw nsw i32 %3550, %3551
  %3553 = icmp eq i32 %3552, 2
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %91, align 1
  %3555 = sext i32 %3529 to i64
  store i64 %3555, i64* %RCX.i2541, align 8
  %3556 = load i64, i64* %RAX.i2556, align 8
  %3557 = shl nsw i64 %3555, 2
  %3558 = add i64 %3557, %3556
  %3559 = add i64 %392, 1391
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  %3561 = load i32, i32* %3560, align 4
  store i32 %3561, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %3562 = load i64, i64* %RBP.i, align 8
  %3563 = add i64 %3562, -40
  %3564 = add i64 %392, 1395
  store i64 %3564, i64* %3, align 8
  %3565 = inttoptr i64 %3563 to i64*
  %3566 = load i64, i64* %3565, align 8
  store i64 %3566, i64* %RAX.i2556, align 8
  %3567 = add i64 %392, 1398
  store i64 %3567, i64* %3, align 8
  %3568 = inttoptr i64 %3566 to i64*
  %3569 = load i64, i64* %3568, align 8
  store i64 %3569, i64* %RAX.i2556, align 8
  %3570 = add i64 %392, 1402
  store i64 %3570, i64* %3, align 8
  %3571 = load i64, i64* %3565, align 8
  store i64 %3571, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3572 = add i64 %392, 1410
  store i64 %3572, i64* %3, align 8
  %3573 = load i64, i64* %3565, align 8
  store i64 %3573, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3574 = add i64 %392, 1418
  store i64 %3574, i64* %3, align 8
  %3575 = load i64, i64* %3565, align 8
  store i64 %3575, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3576 = add i64 %3562, -52
  %3577 = add i64 %392, 1425
  store i64 %3577, i64* %3, align 8
  %3578 = inttoptr i64 %3576 to i32*
  %3579 = load i32, i32* %3578, align 4
  %3580 = add i32 %3579, 1
  %3581 = zext i32 %3580 to i64
  store i64 %3581, i64* %RSI.i2547, align 8
  %3582 = icmp eq i32 %3579, -1
  %3583 = icmp eq i32 %3580, 0
  %3584 = or i1 %3582, %3583
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %68, align 1
  %3586 = and i32 %3580, 255
  %3587 = tail call i32 @llvm.ctpop.i32(i32 %3586)
  %3588 = trunc i32 %3587 to i8
  %3589 = and i8 %3588, 1
  %3590 = xor i8 %3589, 1
  store i8 %3590, i8* %74, align 1
  %3591 = xor i32 %3579, %3580
  %3592 = lshr i32 %3591, 4
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  store i8 %3594, i8* %79, align 1
  %3595 = zext i1 %3583 to i8
  store i8 %3595, i8* %82, align 1
  %3596 = lshr i32 %3580, 31
  %3597 = trunc i32 %3596 to i8
  store i8 %3597, i8* %85, align 1
  %3598 = lshr i32 %3579, 31
  %3599 = xor i32 %3596, %3598
  %3600 = add nuw nsw i32 %3599, %3596
  %3601 = icmp eq i32 %3600, 2
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %91, align 1
  %3603 = add i64 %392, 1432
  store i64 %3603, i64* %3, align 8
  %3604 = load i64, i64* %3565, align 8
  store i64 %3604, i64* %RCX.i2541, align 8
  %3605 = add i64 %3604, 16
  %3606 = add i64 %392, 1436
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = sext i32 %3580 to i64
  %3610 = sext i32 %3608 to i64
  %3611 = mul nsw i64 %3610, %3609
  %3612 = trunc i64 %3611 to i32
  %3613 = and i64 %3611, 4294967295
  store i64 %3613, i64* %RSI.i2547, align 8
  %3614 = shl i64 %3611, 32
  %3615 = ashr exact i64 %3614, 32
  %3616 = icmp ne i64 %3615, %3611
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %68, align 1
  %3618 = and i32 %3612, 255
  %3619 = tail call i32 @llvm.ctpop.i32(i32 %3618)
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  %3622 = xor i8 %3621, 1
  store i8 %3622, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3623 = lshr i32 %3612, 31
  %3624 = trunc i32 %3623 to i8
  store i8 %3624, i8* %85, align 1
  store i8 %3617, i8* %91, align 1
  %3625 = add i64 %392, 1440
  store i64 %3625, i64* %3, align 8
  %3626 = load i64, i64* %3565, align 8
  store i64 %3626, i64* %RCX.i2541, align 8
  %3627 = add i64 %3626, 20
  %3628 = add i64 %392, 1444
  store i64 %3628, i64* %3, align 8
  %3629 = inttoptr i64 %3627 to i32*
  %3630 = load i32, i32* %3629, align 4
  %3631 = sext i32 %3630 to i64
  %3632 = mul nsw i64 %3631, %3615
  %3633 = and i64 %3632, 4294967295
  store i64 %3633, i64* %RSI.i2547, align 8
  %3634 = trunc i64 %3632 to i32
  %3635 = zext i32 %3634 to i64
  store i64 %3635, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3636 = and i32 %3634, 255
  %3637 = tail call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  store i8 %3640, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3641 = icmp eq i32 %3634, 0
  %3642 = zext i1 %3641 to i8
  store i8 %3642, i8* %82, align 1
  %3643 = lshr i32 %3634, 31
  %3644 = trunc i32 %3643 to i8
  store i8 %3644, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3645 = load i64, i64* %RBP.i, align 8
  %3646 = add i64 %3645, -56
  %3647 = add i64 %392, 1449
  store i64 %3647, i64* %3, align 8
  %3648 = inttoptr i64 %3646 to i32*
  %3649 = load i32, i32* %3648, align 4
  %3650 = zext i32 %3649 to i64
  store i64 %3650, i64* %RSI.i2547, align 8
  %3651 = add i64 %3645, -40
  %3652 = add i64 %392, 1453
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3651 to i64*
  %3654 = load i64, i64* %3653, align 8
  store i64 %3654, i64* %RCX.i2541, align 8
  %3655 = add i64 %3654, 20
  %3656 = add i64 %392, 1457
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i32*
  %3658 = load i32, i32* %3657, align 4
  %3659 = sext i32 %3649 to i64
  %3660 = sext i32 %3658 to i64
  %3661 = mul nsw i64 %3660, %3659
  %3662 = and i64 %3661, 4294967295
  store i64 %3662, i64* %RSI.i2547, align 8
  %3663 = trunc i64 %3661 to i32
  %3664 = add i32 %3663, %3634
  %3665 = zext i32 %3664 to i64
  store i64 %3665, i64* %RDX.i2544, align 8
  %3666 = icmp ult i32 %3664, %3634
  %3667 = icmp ult i32 %3664, %3663
  %3668 = or i1 %3666, %3667
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %68, align 1
  %3670 = and i32 %3664, 255
  %3671 = tail call i32 @llvm.ctpop.i32(i32 %3670)
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = xor i8 %3673, 1
  store i8 %3674, i8* %74, align 1
  %3675 = xor i64 %3661, %3635
  %3676 = trunc i64 %3675 to i32
  %3677 = xor i32 %3676, %3664
  %3678 = lshr i32 %3677, 4
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  store i8 %3680, i8* %79, align 1
  %3681 = icmp eq i32 %3664, 0
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %82, align 1
  %3683 = lshr i32 %3664, 31
  %3684 = trunc i32 %3683 to i8
  store i8 %3684, i8* %85, align 1
  %3685 = lshr i32 %3663, 31
  %3686 = xor i32 %3683, %3643
  %3687 = xor i32 %3683, %3685
  %3688 = add nuw nsw i32 %3686, %3687
  %3689 = icmp eq i32 %3688, 2
  %3690 = zext i1 %3689 to i8
  store i8 %3690, i8* %91, align 1
  %3691 = add i64 %3645, -60
  %3692 = add i64 %392, 1462
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3691 to i32*
  %3694 = load i32, i32* %3693, align 4
  %3695 = add i32 %3694, 1
  %3696 = zext i32 %3695 to i64
  store i64 %3696, i64* %RSI.i2547, align 8
  %3697 = lshr i32 %3695, 31
  %3698 = add i32 %3695, %3664
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RDX.i2544, align 8
  %3700 = icmp ult i32 %3698, %3664
  %3701 = icmp ult i32 %3698, %3695
  %3702 = or i1 %3700, %3701
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %68, align 1
  %3704 = and i32 %3698, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %74, align 1
  %3709 = xor i32 %3695, %3664
  %3710 = xor i32 %3709, %3698
  %3711 = lshr i32 %3710, 4
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  store i8 %3713, i8* %79, align 1
  %3714 = icmp eq i32 %3698, 0
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %82, align 1
  %3716 = lshr i32 %3698, 31
  %3717 = trunc i32 %3716 to i8
  store i8 %3717, i8* %85, align 1
  %3718 = xor i32 %3716, %3683
  %3719 = xor i32 %3716, %3697
  %3720 = add nuw nsw i32 %3718, %3719
  %3721 = icmp eq i32 %3720, 2
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %91, align 1
  %3723 = sext i32 %3698 to i64
  store i64 %3723, i64* %RCX.i2541, align 8
  %3724 = load i64, i64* %RAX.i2556, align 8
  %3725 = shl nsw i64 %3723, 2
  %3726 = add i64 %3725, %3724
  %3727 = add i64 %392, 1475
  store i64 %3727, i64* %3, align 8
  %3728 = inttoptr i64 %3726 to i32*
  %3729 = load i32, i32* %3728, align 4
  store i32 %3729, i32* %1816, align 1
  store float 0.000000e+00, float* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  %3730 = load i64, i64* %RBP.i, align 8
  %3731 = add i64 %3730, -40
  %3732 = add i64 %392, 1479
  store i64 %3732, i64* %3, align 8
  %3733 = inttoptr i64 %3731 to i64*
  %3734 = load i64, i64* %3733, align 8
  store i64 %3734, i64* %RAX.i2556, align 8
  %3735 = add i64 %392, 1482
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3734 to i64*
  %3737 = load i64, i64* %3736, align 8
  store i64 %3737, i64* %RAX.i2556, align 8
  %3738 = add i64 %392, 1486
  store i64 %3738, i64* %3, align 8
  %3739 = load i64, i64* %3733, align 8
  store i64 %3739, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3740 = add i64 %392, 1494
  store i64 %3740, i64* %3, align 8
  %3741 = load i64, i64* %3733, align 8
  store i64 %3741, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3742 = add i64 %392, 1502
  store i64 %3742, i64* %3, align 8
  %3743 = load i64, i64* %3733, align 8
  store i64 %3743, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3744 = add i64 %3730, -52
  %3745 = add i64 %392, 1509
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = add i32 %3747, -1
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %RSI.i2547, align 8
  %3750 = icmp eq i32 %3747, 0
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %68, align 1
  %3752 = and i32 %3748, 255
  %3753 = tail call i32 @llvm.ctpop.i32(i32 %3752)
  %3754 = trunc i32 %3753 to i8
  %3755 = and i8 %3754, 1
  %3756 = xor i8 %3755, 1
  store i8 %3756, i8* %74, align 1
  %3757 = xor i32 %3747, %3748
  %3758 = lshr i32 %3757, 4
  %3759 = trunc i32 %3758 to i8
  %3760 = and i8 %3759, 1
  store i8 %3760, i8* %79, align 1
  %3761 = icmp eq i32 %3748, 0
  %3762 = zext i1 %3761 to i8
  store i8 %3762, i8* %82, align 1
  %3763 = lshr i32 %3748, 31
  %3764 = trunc i32 %3763 to i8
  store i8 %3764, i8* %85, align 1
  %3765 = lshr i32 %3747, 31
  %3766 = xor i32 %3763, %3765
  %3767 = add nuw nsw i32 %3766, %3765
  %3768 = icmp eq i32 %3767, 2
  %3769 = zext i1 %3768 to i8
  store i8 %3769, i8* %91, align 1
  %3770 = add i64 %392, 1516
  store i64 %3770, i64* %3, align 8
  %3771 = load i64, i64* %3733, align 8
  store i64 %3771, i64* %RCX.i2541, align 8
  %3772 = add i64 %3771, 16
  %3773 = add i64 %392, 1520
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i32*
  %3775 = load i32, i32* %3774, align 4
  %3776 = sext i32 %3748 to i64
  %3777 = sext i32 %3775 to i64
  %3778 = mul nsw i64 %3777, %3776
  %3779 = trunc i64 %3778 to i32
  %3780 = and i64 %3778, 4294967295
  store i64 %3780, i64* %RSI.i2547, align 8
  %3781 = shl i64 %3778, 32
  %3782 = ashr exact i64 %3781, 32
  %3783 = icmp ne i64 %3782, %3778
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %68, align 1
  %3785 = and i32 %3779, 255
  %3786 = tail call i32 @llvm.ctpop.i32(i32 %3785)
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  %3789 = xor i8 %3788, 1
  store i8 %3789, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3790 = lshr i32 %3779, 31
  %3791 = trunc i32 %3790 to i8
  store i8 %3791, i8* %85, align 1
  store i8 %3784, i8* %91, align 1
  %3792 = load i64, i64* %RBP.i, align 8
  %3793 = add i64 %3792, -40
  %3794 = add i64 %392, 1524
  store i64 %3794, i64* %3, align 8
  %3795 = inttoptr i64 %3793 to i64*
  %3796 = load i64, i64* %3795, align 8
  store i64 %3796, i64* %RCX.i2541, align 8
  %3797 = add i64 %3796, 20
  %3798 = add i64 %392, 1528
  store i64 %3798, i64* %3, align 8
  %3799 = inttoptr i64 %3797 to i32*
  %3800 = load i32, i32* %3799, align 4
  %3801 = sext i32 %3800 to i64
  %3802 = mul nsw i64 %3801, %3782
  %3803 = and i64 %3802, 4294967295
  store i64 %3803, i64* %RSI.i2547, align 8
  %3804 = trunc i64 %3802 to i32
  %3805 = zext i32 %3804 to i64
  store i64 %3805, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3806 = and i32 %3804, 255
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3811 = icmp eq i32 %3804, 0
  %3812 = zext i1 %3811 to i8
  store i8 %3812, i8* %82, align 1
  %3813 = lshr i32 %3804, 31
  %3814 = trunc i32 %3813 to i8
  store i8 %3814, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3815 = add i64 %3792, -56
  %3816 = add i64 %392, 1533
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RSI.i2547, align 8
  %3820 = add i64 %392, 1537
  store i64 %3820, i64* %3, align 8
  %3821 = load i64, i64* %3795, align 8
  store i64 %3821, i64* %RCX.i2541, align 8
  %3822 = add i64 %3821, 20
  %3823 = add i64 %392, 1541
  store i64 %3823, i64* %3, align 8
  %3824 = inttoptr i64 %3822 to i32*
  %3825 = load i32, i32* %3824, align 4
  %3826 = sext i32 %3818 to i64
  %3827 = sext i32 %3825 to i64
  %3828 = mul nsw i64 %3827, %3826
  %3829 = and i64 %3828, 4294967295
  store i64 %3829, i64* %RSI.i2547, align 8
  %3830 = trunc i64 %3828 to i32
  %3831 = add i32 %3830, %3804
  %3832 = zext i32 %3831 to i64
  store i64 %3832, i64* %RDX.i2544, align 8
  %3833 = icmp ult i32 %3831, %3804
  %3834 = icmp ult i32 %3831, %3830
  %3835 = or i1 %3833, %3834
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %68, align 1
  %3837 = and i32 %3831, 255
  %3838 = tail call i32 @llvm.ctpop.i32(i32 %3837)
  %3839 = trunc i32 %3838 to i8
  %3840 = and i8 %3839, 1
  %3841 = xor i8 %3840, 1
  store i8 %3841, i8* %74, align 1
  %3842 = xor i64 %3828, %3805
  %3843 = trunc i64 %3842 to i32
  %3844 = xor i32 %3843, %3831
  %3845 = lshr i32 %3844, 4
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  store i8 %3847, i8* %79, align 1
  %3848 = icmp eq i32 %3831, 0
  %3849 = zext i1 %3848 to i8
  store i8 %3849, i8* %82, align 1
  %3850 = lshr i32 %3831, 31
  %3851 = trunc i32 %3850 to i8
  store i8 %3851, i8* %85, align 1
  %3852 = lshr i32 %3830, 31
  %3853 = xor i32 %3850, %3813
  %3854 = xor i32 %3850, %3852
  %3855 = add nuw nsw i32 %3853, %3854
  %3856 = icmp eq i32 %3855, 2
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %91, align 1
  %3858 = add i64 %3792, -60
  %3859 = add i64 %392, 1546
  store i64 %3859, i64* %3, align 8
  %3860 = inttoptr i64 %3858 to i32*
  %3861 = load i32, i32* %3860, align 4
  %3862 = add i32 %3861, 1
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RSI.i2547, align 8
  %3864 = lshr i32 %3862, 31
  %3865 = add i32 %3862, %3831
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RDX.i2544, align 8
  %3867 = icmp ult i32 %3865, %3831
  %3868 = icmp ult i32 %3865, %3862
  %3869 = or i1 %3867, %3868
  %3870 = zext i1 %3869 to i8
  store i8 %3870, i8* %68, align 1
  %3871 = and i32 %3865, 255
  %3872 = tail call i32 @llvm.ctpop.i32(i32 %3871)
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = xor i8 %3874, 1
  store i8 %3875, i8* %74, align 1
  %3876 = xor i32 %3862, %3831
  %3877 = xor i32 %3876, %3865
  %3878 = lshr i32 %3877, 4
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  store i8 %3880, i8* %79, align 1
  %3881 = icmp eq i32 %3865, 0
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %82, align 1
  %3883 = lshr i32 %3865, 31
  %3884 = trunc i32 %3883 to i8
  store i8 %3884, i8* %85, align 1
  %3885 = xor i32 %3883, %3850
  %3886 = xor i32 %3883, %3864
  %3887 = add nuw nsw i32 %3885, %3886
  %3888 = icmp eq i32 %3887, 2
  %3889 = zext i1 %3888 to i8
  store i8 %3889, i8* %91, align 1
  %3890 = sext i32 %3865 to i64
  store i64 %3890, i64* %RCX.i2541, align 8
  %3891 = load i64, i64* %RAX.i2556, align 8
  %3892 = shl nsw i64 %3890, 2
  %3893 = add i64 %3892, %3891
  %3894 = add i64 %392, 1559
  store i64 %3894, i64* %3, align 8
  %3895 = load <2 x float>, <2 x float>* %220, align 1
  %3896 = load <2 x i32>, <2 x i32>* %221, align 1
  %3897 = inttoptr i64 %3893 to float*
  %3898 = load float, float* %3897, align 4
  %3899 = extractelement <2 x float> %3895, i32 0
  %3900 = fsub float %3899, %3898
  store float %3900, float* %213, align 1
  %3901 = bitcast <2 x float> %3895 to <2 x i32>
  %3902 = extractelement <2 x i32> %3901, i32 1
  store i32 %3902, i32* %222, align 1
  %3903 = extractelement <2 x i32> %3896, i32 0
  store i32 %3903, i32* %223, align 1
  %3904 = extractelement <2 x i32> %3896, i32 1
  store i32 %3904, i32* %224, align 1
  %3905 = load i64, i64* %RBP.i, align 8
  %3906 = add i64 %3905, -40
  %3907 = add i64 %392, 1563
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i64*
  %3909 = load i64, i64* %3908, align 8
  store i64 %3909, i64* %RAX.i2556, align 8
  %3910 = add i64 %392, 1566
  store i64 %3910, i64* %3, align 8
  %3911 = inttoptr i64 %3909 to i64*
  %3912 = load i64, i64* %3911, align 8
  store i64 %3912, i64* %RAX.i2556, align 8
  %3913 = add i64 %392, 1570
  store i64 %3913, i64* %3, align 8
  %3914 = load i64, i64* %3908, align 8
  store i64 %3914, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3915 = add i64 %392, 1578
  store i64 %3915, i64* %3, align 8
  %3916 = load i64, i64* %3908, align 8
  store i64 %3916, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3917 = add i64 %392, 1586
  store i64 %3917, i64* %3, align 8
  %3918 = load i64, i64* %3908, align 8
  store i64 %3918, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3919 = add i64 %3905, -52
  %3920 = add i64 %392, 1593
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i32*
  %3922 = load i32, i32* %3921, align 4
  %3923 = add i32 %3922, 1
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RSI.i2547, align 8
  %3925 = icmp eq i32 %3922, -1
  %3926 = icmp eq i32 %3923, 0
  %3927 = or i1 %3925, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %68, align 1
  %3929 = and i32 %3923, 255
  %3930 = tail call i32 @llvm.ctpop.i32(i32 %3929)
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  store i8 %3933, i8* %74, align 1
  %3934 = xor i32 %3922, %3923
  %3935 = lshr i32 %3934, 4
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  store i8 %3937, i8* %79, align 1
  %3938 = zext i1 %3926 to i8
  store i8 %3938, i8* %82, align 1
  %3939 = lshr i32 %3923, 31
  %3940 = trunc i32 %3939 to i8
  store i8 %3940, i8* %85, align 1
  %3941 = lshr i32 %3922, 31
  %3942 = xor i32 %3939, %3941
  %3943 = add nuw nsw i32 %3942, %3939
  %3944 = icmp eq i32 %3943, 2
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %91, align 1
  %3946 = add i64 %392, 1600
  store i64 %3946, i64* %3, align 8
  %3947 = load i64, i64* %3908, align 8
  store i64 %3947, i64* %RCX.i2541, align 8
  %3948 = add i64 %3947, 16
  %3949 = add i64 %392, 1604
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3948 to i32*
  %3951 = load i32, i32* %3950, align 4
  %3952 = sext i32 %3923 to i64
  %3953 = sext i32 %3951 to i64
  %3954 = mul nsw i64 %3953, %3952
  %3955 = trunc i64 %3954 to i32
  %3956 = and i64 %3954, 4294967295
  store i64 %3956, i64* %RSI.i2547, align 8
  %3957 = shl i64 %3954, 32
  %3958 = ashr exact i64 %3957, 32
  %3959 = icmp ne i64 %3958, %3954
  %3960 = zext i1 %3959 to i8
  store i8 %3960, i8* %68, align 1
  %3961 = and i32 %3955, 255
  %3962 = tail call i32 @llvm.ctpop.i32(i32 %3961)
  %3963 = trunc i32 %3962 to i8
  %3964 = and i8 %3963, 1
  %3965 = xor i8 %3964, 1
  store i8 %3965, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %3966 = lshr i32 %3955, 31
  %3967 = trunc i32 %3966 to i8
  store i8 %3967, i8* %85, align 1
  store i8 %3960, i8* %91, align 1
  %3968 = add i64 %392, 1608
  store i64 %3968, i64* %3, align 8
  %3969 = load i64, i64* %3908, align 8
  store i64 %3969, i64* %RCX.i2541, align 8
  %3970 = add i64 %3969, 20
  %3971 = add i64 %392, 1612
  store i64 %3971, i64* %3, align 8
  %3972 = inttoptr i64 %3970 to i32*
  %3973 = load i32, i32* %3972, align 4
  %3974 = sext i32 %3973 to i64
  %3975 = mul nsw i64 %3974, %3958
  %3976 = and i64 %3975, 4294967295
  store i64 %3976, i64* %RSI.i2547, align 8
  %3977 = trunc i64 %3975 to i32
  %3978 = zext i32 %3977 to i64
  store i64 %3978, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %3979 = and i32 %3977, 255
  %3980 = tail call i32 @llvm.ctpop.i32(i32 %3979)
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  %3983 = xor i8 %3982, 1
  store i8 %3983, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %3984 = icmp eq i32 %3977, 0
  %3985 = zext i1 %3984 to i8
  store i8 %3985, i8* %82, align 1
  %3986 = lshr i32 %3977, 31
  %3987 = trunc i32 %3986 to i8
  store i8 %3987, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %3988 = load i64, i64* %RBP.i, align 8
  %3989 = add i64 %3988, -56
  %3990 = add i64 %392, 1617
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3989 to i32*
  %3992 = load i32, i32* %3991, align 4
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RSI.i2547, align 8
  %3994 = add i64 %3988, -40
  %3995 = add i64 %392, 1621
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i64*
  %3997 = load i64, i64* %3996, align 8
  store i64 %3997, i64* %RCX.i2541, align 8
  %3998 = add i64 %3997, 20
  %3999 = add i64 %392, 1625
  store i64 %3999, i64* %3, align 8
  %4000 = inttoptr i64 %3998 to i32*
  %4001 = load i32, i32* %4000, align 4
  %4002 = sext i32 %3992 to i64
  %4003 = sext i32 %4001 to i64
  %4004 = mul nsw i64 %4003, %4002
  %4005 = and i64 %4004, 4294967295
  store i64 %4005, i64* %RSI.i2547, align 8
  %4006 = trunc i64 %4004 to i32
  %4007 = add i32 %4006, %3977
  %4008 = zext i32 %4007 to i64
  store i64 %4008, i64* %RDX.i2544, align 8
  %4009 = icmp ult i32 %4007, %3977
  %4010 = icmp ult i32 %4007, %4006
  %4011 = or i1 %4009, %4010
  %4012 = zext i1 %4011 to i8
  store i8 %4012, i8* %68, align 1
  %4013 = and i32 %4007, 255
  %4014 = tail call i32 @llvm.ctpop.i32(i32 %4013)
  %4015 = trunc i32 %4014 to i8
  %4016 = and i8 %4015, 1
  %4017 = xor i8 %4016, 1
  store i8 %4017, i8* %74, align 1
  %4018 = xor i64 %4004, %3978
  %4019 = trunc i64 %4018 to i32
  %4020 = xor i32 %4019, %4007
  %4021 = lshr i32 %4020, 4
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  store i8 %4023, i8* %79, align 1
  %4024 = icmp eq i32 %4007, 0
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %82, align 1
  %4026 = lshr i32 %4007, 31
  %4027 = trunc i32 %4026 to i8
  store i8 %4027, i8* %85, align 1
  %4028 = lshr i32 %4006, 31
  %4029 = xor i32 %4026, %3986
  %4030 = xor i32 %4026, %4028
  %4031 = add nuw nsw i32 %4029, %4030
  %4032 = icmp eq i32 %4031, 2
  %4033 = zext i1 %4032 to i8
  store i8 %4033, i8* %91, align 1
  %4034 = add i64 %3988, -60
  %4035 = add i64 %392, 1630
  store i64 %4035, i64* %3, align 8
  %4036 = inttoptr i64 %4034 to i32*
  %4037 = load i32, i32* %4036, align 4
  %4038 = add i32 %4037, -1
  %4039 = zext i32 %4038 to i64
  store i64 %4039, i64* %RSI.i2547, align 8
  %4040 = lshr i32 %4038, 31
  %4041 = add i32 %4038, %4007
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RDX.i2544, align 8
  %4043 = icmp ult i32 %4041, %4007
  %4044 = icmp ult i32 %4041, %4038
  %4045 = or i1 %4043, %4044
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %68, align 1
  %4047 = and i32 %4041, 255
  %4048 = tail call i32 @llvm.ctpop.i32(i32 %4047)
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  %4051 = xor i8 %4050, 1
  store i8 %4051, i8* %74, align 1
  %4052 = xor i32 %4038, %4007
  %4053 = xor i32 %4052, %4041
  %4054 = lshr i32 %4053, 4
  %4055 = trunc i32 %4054 to i8
  %4056 = and i8 %4055, 1
  store i8 %4056, i8* %79, align 1
  %4057 = icmp eq i32 %4041, 0
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %82, align 1
  %4059 = lshr i32 %4041, 31
  %4060 = trunc i32 %4059 to i8
  store i8 %4060, i8* %85, align 1
  %4061 = xor i32 %4059, %4026
  %4062 = xor i32 %4059, %4040
  %4063 = add nuw nsw i32 %4061, %4062
  %4064 = icmp eq i32 %4063, 2
  %4065 = zext i1 %4064 to i8
  store i8 %4065, i8* %91, align 1
  %4066 = sext i32 %4041 to i64
  store i64 %4066, i64* %RCX.i2541, align 8
  %4067 = load i64, i64* %RAX.i2556, align 8
  %4068 = shl nsw i64 %4066, 2
  %4069 = add i64 %4068, %4067
  %4070 = add i64 %392, 1643
  store i64 %4070, i64* %3, align 8
  %4071 = load <2 x float>, <2 x float>* %220, align 1
  %4072 = load <2 x i32>, <2 x i32>* %221, align 1
  %4073 = inttoptr i64 %4069 to float*
  %4074 = load float, float* %4073, align 4
  %4075 = extractelement <2 x float> %4071, i32 0
  %4076 = fsub float %4075, %4074
  store float %4076, float* %213, align 1
  %4077 = bitcast <2 x float> %4071 to <2 x i32>
  %4078 = extractelement <2 x i32> %4077, i32 1
  store i32 %4078, i32* %222, align 1
  %4079 = extractelement <2 x i32> %4072, i32 0
  store i32 %4079, i32* %223, align 1
  %4080 = extractelement <2 x i32> %4072, i32 1
  store i32 %4080, i32* %224, align 1
  %4081 = load i64, i64* %RBP.i, align 8
  %4082 = add i64 %4081, -40
  %4083 = add i64 %392, 1647
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i64*
  %4085 = load i64, i64* %4084, align 8
  store i64 %4085, i64* %RAX.i2556, align 8
  %4086 = add i64 %392, 1650
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i64*
  %4088 = load i64, i64* %4087, align 8
  store i64 %4088, i64* %RAX.i2556, align 8
  %4089 = add i64 %392, 1654
  store i64 %4089, i64* %3, align 8
  %4090 = load i64, i64* %4084, align 8
  store i64 %4090, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4091 = add i64 %392, 1662
  store i64 %4091, i64* %3, align 8
  %4092 = load i64, i64* %4084, align 8
  store i64 %4092, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4093 = add i64 %392, 1670
  store i64 %4093, i64* %3, align 8
  %4094 = load i64, i64* %4084, align 8
  store i64 %4094, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4095 = add i64 %4081, -52
  %4096 = add i64 %392, 1677
  store i64 %4096, i64* %3, align 8
  %4097 = inttoptr i64 %4095 to i32*
  %4098 = load i32, i32* %4097, align 4
  %4099 = add i32 %4098, -1
  %4100 = zext i32 %4099 to i64
  store i64 %4100, i64* %RSI.i2547, align 8
  %4101 = icmp eq i32 %4098, 0
  %4102 = zext i1 %4101 to i8
  store i8 %4102, i8* %68, align 1
  %4103 = and i32 %4099, 255
  %4104 = tail call i32 @llvm.ctpop.i32(i32 %4103)
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  %4107 = xor i8 %4106, 1
  store i8 %4107, i8* %74, align 1
  %4108 = xor i32 %4098, %4099
  %4109 = lshr i32 %4108, 4
  %4110 = trunc i32 %4109 to i8
  %4111 = and i8 %4110, 1
  store i8 %4111, i8* %79, align 1
  %4112 = icmp eq i32 %4099, 0
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %82, align 1
  %4114 = lshr i32 %4099, 31
  %4115 = trunc i32 %4114 to i8
  store i8 %4115, i8* %85, align 1
  %4116 = lshr i32 %4098, 31
  %4117 = xor i32 %4114, %4116
  %4118 = add nuw nsw i32 %4117, %4116
  %4119 = icmp eq i32 %4118, 2
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %91, align 1
  %4121 = add i64 %392, 1684
  store i64 %4121, i64* %3, align 8
  %4122 = load i64, i64* %4084, align 8
  store i64 %4122, i64* %RCX.i2541, align 8
  %4123 = add i64 %4122, 16
  %4124 = add i64 %392, 1688
  store i64 %4124, i64* %3, align 8
  %4125 = inttoptr i64 %4123 to i32*
  %4126 = load i32, i32* %4125, align 4
  %4127 = sext i32 %4099 to i64
  %4128 = sext i32 %4126 to i64
  %4129 = mul nsw i64 %4128, %4127
  %4130 = trunc i64 %4129 to i32
  %4131 = and i64 %4129, 4294967295
  store i64 %4131, i64* %RSI.i2547, align 8
  %4132 = shl i64 %4129, 32
  %4133 = ashr exact i64 %4132, 32
  %4134 = icmp ne i64 %4133, %4129
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %68, align 1
  %4136 = and i32 %4130, 255
  %4137 = tail call i32 @llvm.ctpop.i32(i32 %4136)
  %4138 = trunc i32 %4137 to i8
  %4139 = and i8 %4138, 1
  %4140 = xor i8 %4139, 1
  store i8 %4140, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4141 = lshr i32 %4130, 31
  %4142 = trunc i32 %4141 to i8
  store i8 %4142, i8* %85, align 1
  store i8 %4135, i8* %91, align 1
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -40
  %4145 = add i64 %392, 1692
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i64*
  %4147 = load i64, i64* %4146, align 8
  store i64 %4147, i64* %RCX.i2541, align 8
  %4148 = add i64 %4147, 20
  %4149 = add i64 %392, 1696
  store i64 %4149, i64* %3, align 8
  %4150 = inttoptr i64 %4148 to i32*
  %4151 = load i32, i32* %4150, align 4
  %4152 = sext i32 %4151 to i64
  %4153 = mul nsw i64 %4152, %4133
  %4154 = and i64 %4153, 4294967295
  store i64 %4154, i64* %RSI.i2547, align 8
  %4155 = trunc i64 %4153 to i32
  %4156 = zext i32 %4155 to i64
  store i64 %4156, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %4157 = and i32 %4155, 255
  %4158 = tail call i32 @llvm.ctpop.i32(i32 %4157)
  %4159 = trunc i32 %4158 to i8
  %4160 = and i8 %4159, 1
  %4161 = xor i8 %4160, 1
  store i8 %4161, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %4162 = icmp eq i32 %4155, 0
  %4163 = zext i1 %4162 to i8
  store i8 %4163, i8* %82, align 1
  %4164 = lshr i32 %4155, 31
  %4165 = trunc i32 %4164 to i8
  store i8 %4165, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4166 = add i64 %4143, -56
  %4167 = add i64 %392, 1701
  store i64 %4167, i64* %3, align 8
  %4168 = inttoptr i64 %4166 to i32*
  %4169 = load i32, i32* %4168, align 4
  %4170 = zext i32 %4169 to i64
  store i64 %4170, i64* %RSI.i2547, align 8
  %4171 = add i64 %392, 1705
  store i64 %4171, i64* %3, align 8
  %4172 = load i64, i64* %4146, align 8
  store i64 %4172, i64* %RCX.i2541, align 8
  %4173 = add i64 %4172, 20
  %4174 = add i64 %392, 1709
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i32*
  %4176 = load i32, i32* %4175, align 4
  %4177 = sext i32 %4169 to i64
  %4178 = sext i32 %4176 to i64
  %4179 = mul nsw i64 %4178, %4177
  %4180 = and i64 %4179, 4294967295
  store i64 %4180, i64* %RSI.i2547, align 8
  %4181 = trunc i64 %4179 to i32
  %4182 = add i32 %4181, %4155
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RDX.i2544, align 8
  %4184 = icmp ult i32 %4182, %4155
  %4185 = icmp ult i32 %4182, %4181
  %4186 = or i1 %4184, %4185
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %68, align 1
  %4188 = and i32 %4182, 255
  %4189 = tail call i32 @llvm.ctpop.i32(i32 %4188)
  %4190 = trunc i32 %4189 to i8
  %4191 = and i8 %4190, 1
  %4192 = xor i8 %4191, 1
  store i8 %4192, i8* %74, align 1
  %4193 = xor i64 %4179, %4156
  %4194 = trunc i64 %4193 to i32
  %4195 = xor i32 %4194, %4182
  %4196 = lshr i32 %4195, 4
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  store i8 %4198, i8* %79, align 1
  %4199 = icmp eq i32 %4182, 0
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %82, align 1
  %4201 = lshr i32 %4182, 31
  %4202 = trunc i32 %4201 to i8
  store i8 %4202, i8* %85, align 1
  %4203 = lshr i32 %4181, 31
  %4204 = xor i32 %4201, %4164
  %4205 = xor i32 %4201, %4203
  %4206 = add nuw nsw i32 %4204, %4205
  %4207 = icmp eq i32 %4206, 2
  %4208 = zext i1 %4207 to i8
  store i8 %4208, i8* %91, align 1
  %4209 = add i64 %4143, -60
  %4210 = add i64 %392, 1714
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to i32*
  %4212 = load i32, i32* %4211, align 4
  %4213 = add i32 %4212, -1
  %4214 = zext i32 %4213 to i64
  store i64 %4214, i64* %RSI.i2547, align 8
  %4215 = lshr i32 %4213, 31
  %4216 = add i32 %4213, %4182
  %4217 = zext i32 %4216 to i64
  store i64 %4217, i64* %RDX.i2544, align 8
  %4218 = icmp ult i32 %4216, %4182
  %4219 = icmp ult i32 %4216, %4213
  %4220 = or i1 %4218, %4219
  %4221 = zext i1 %4220 to i8
  store i8 %4221, i8* %68, align 1
  %4222 = and i32 %4216, 255
  %4223 = tail call i32 @llvm.ctpop.i32(i32 %4222)
  %4224 = trunc i32 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = xor i8 %4225, 1
  store i8 %4226, i8* %74, align 1
  %4227 = xor i32 %4213, %4182
  %4228 = xor i32 %4227, %4216
  %4229 = lshr i32 %4228, 4
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  store i8 %4231, i8* %79, align 1
  %4232 = icmp eq i32 %4216, 0
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %82, align 1
  %4234 = lshr i32 %4216, 31
  %4235 = trunc i32 %4234 to i8
  store i8 %4235, i8* %85, align 1
  %4236 = xor i32 %4234, %4201
  %4237 = xor i32 %4234, %4215
  %4238 = add nuw nsw i32 %4236, %4237
  %4239 = icmp eq i32 %4238, 2
  %4240 = zext i1 %4239 to i8
  store i8 %4240, i8* %91, align 1
  %4241 = sext i32 %4216 to i64
  store i64 %4241, i64* %RCX.i2541, align 8
  %4242 = load i64, i64* %RAX.i2556, align 8
  %4243 = shl nsw i64 %4241, 2
  %4244 = add i64 %4243, %4242
  %4245 = add i64 %392, 1727
  store i64 %4245, i64* %3, align 8
  %4246 = load <2 x float>, <2 x float>* %220, align 1
  %4247 = load <2 x i32>, <2 x i32>* %221, align 1
  %4248 = inttoptr i64 %4244 to float*
  %4249 = load float, float* %4248, align 4
  %4250 = extractelement <2 x float> %4246, i32 0
  %4251 = fadd float %4250, %4249
  store float %4251, float* %213, align 1
  %4252 = bitcast <2 x float> %4246 to <2 x i32>
  %4253 = extractelement <2 x i32> %4252, i32 1
  store i32 %4253, i32* %222, align 1
  %4254 = extractelement <2 x i32> %4247, i32 0
  store i32 %4254, i32* %223, align 1
  %4255 = extractelement <2 x i32> %4247, i32 1
  store i32 %4255, i32* %224, align 1
  %4256 = load <2 x float>, <2 x float>* %206, align 1
  %4257 = load <2 x i32>, <2 x i32>* %207, align 1
  %4258 = load <2 x float>, <2 x float>* %220, align 1
  %4259 = extractelement <2 x float> %4256, i32 0
  %4260 = extractelement <2 x float> %4258, i32 0
  %4261 = fmul float %4259, %4260
  store float %4261, float* %199, align 1
  %4262 = bitcast <2 x float> %4256 to <2 x i32>
  %4263 = extractelement <2 x i32> %4262, i32 1
  store i32 %4263, i32* %208, align 1
  %4264 = extractelement <2 x i32> %4257, i32 0
  store i32 %4264, i32* %209, align 1
  %4265 = extractelement <2 x i32> %4257, i32 1
  store i32 %4265, i32* %210, align 1
  %4266 = load <2 x float>, <2 x float>* %191, align 1
  %4267 = load <2 x i32>, <2 x i32>* %196, align 1
  %4268 = load <2 x float>, <2 x float>* %206, align 1
  %4269 = extractelement <2 x float> %4266, i32 0
  %4270 = extractelement <2 x float> %4268, i32 0
  %4271 = fadd float %4269, %4270
  store float %4271, float* %192, align 1
  %4272 = bitcast <2 x float> %4266 to <2 x i32>
  %4273 = extractelement <2 x i32> %4272, i32 1
  store i32 %4273, i32* %187, align 1
  %4274 = extractelement <2 x i32> %4267, i32 0
  store i32 %4274, i32* %188, align 1
  %4275 = extractelement <2 x i32> %4267, i32 1
  store i32 %4275, i32* %190, align 1
  %4276 = load i64, i64* %RBP.i, align 8
  %4277 = add i64 %4276, -32
  %4278 = add i64 %392, 1739
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4277 to i64*
  %4280 = load i64, i64* %4279, align 8
  store i64 %4280, i64* %RAX.i2556, align 8
  %4281 = add i64 %392, 1742
  store i64 %4281, i64* %3, align 8
  %4282 = inttoptr i64 %4280 to i64*
  %4283 = load i64, i64* %4282, align 8
  store i64 %4283, i64* %RAX.i2556, align 8
  %4284 = add i64 %392, 1746
  store i64 %4284, i64* %3, align 8
  %4285 = load i64, i64* %4279, align 8
  store i64 %4285, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4286 = add i64 %392, 1754
  store i64 %4286, i64* %3, align 8
  %4287 = load i64, i64* %4279, align 8
  store i64 %4287, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4288 = add i64 %392, 1762
  store i64 %4288, i64* %3, align 8
  %4289 = load i64, i64* %4279, align 8
  store i64 %4289, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4290 = add i64 %4276, -52
  %4291 = add i64 %392, 1769
  store i64 %4291, i64* %3, align 8
  %4292 = inttoptr i64 %4290 to i32*
  %4293 = load i32, i32* %4292, align 4
  %4294 = zext i32 %4293 to i64
  store i64 %4294, i64* %RSI.i2547, align 8
  %4295 = add i64 %392, 1773
  store i64 %4295, i64* %3, align 8
  %4296 = load i64, i64* %4279, align 8
  store i64 %4296, i64* %RCX.i2541, align 8
  %4297 = add i64 %4296, 16
  %4298 = add i64 %392, 1777
  store i64 %4298, i64* %3, align 8
  %4299 = inttoptr i64 %4297 to i32*
  %4300 = load i32, i32* %4299, align 4
  %4301 = sext i32 %4293 to i64
  %4302 = sext i32 %4300 to i64
  %4303 = mul nsw i64 %4302, %4301
  %4304 = trunc i64 %4303 to i32
  %4305 = and i64 %4303, 4294967295
  store i64 %4305, i64* %RSI.i2547, align 8
  %4306 = shl i64 %4303, 32
  %4307 = ashr exact i64 %4306, 32
  %4308 = icmp ne i64 %4307, %4303
  %4309 = zext i1 %4308 to i8
  store i8 %4309, i8* %68, align 1
  %4310 = and i32 %4304, 255
  %4311 = tail call i32 @llvm.ctpop.i32(i32 %4310)
  %4312 = trunc i32 %4311 to i8
  %4313 = and i8 %4312, 1
  %4314 = xor i8 %4313, 1
  store i8 %4314, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4315 = lshr i32 %4304, 31
  %4316 = trunc i32 %4315 to i8
  store i8 %4316, i8* %85, align 1
  store i8 %4309, i8* %91, align 1
  %4317 = add i64 %392, 1781
  store i64 %4317, i64* %3, align 8
  %4318 = load i64, i64* %4279, align 8
  store i64 %4318, i64* %RCX.i2541, align 8
  %4319 = add i64 %4318, 20
  %4320 = add i64 %392, 1785
  store i64 %4320, i64* %3, align 8
  %4321 = inttoptr i64 %4319 to i32*
  %4322 = load i32, i32* %4321, align 4
  %4323 = sext i32 %4322 to i64
  %4324 = mul nsw i64 %4323, %4307
  %4325 = and i64 %4324, 4294967295
  store i64 %4325, i64* %RSI.i2547, align 8
  %4326 = trunc i64 %4324 to i32
  store i64 %4325, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %4327 = and i32 %4326, 255
  %4328 = tail call i32 @llvm.ctpop.i32(i32 %4327)
  %4329 = trunc i32 %4328 to i8
  %4330 = and i8 %4329, 1
  %4331 = xor i8 %4330, 1
  store i8 %4331, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %4332 = icmp eq i32 %4326, 0
  %4333 = zext i1 %4332 to i8
  store i8 %4333, i8* %82, align 1
  %4334 = lshr i32 %4326, 31
  %4335 = trunc i32 %4334 to i8
  store i8 %4335, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4336 = load i64, i64* %RBP.i, align 8
  %4337 = add i64 %4336, -56
  %4338 = add i64 %392, 1790
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = zext i32 %4340 to i64
  store i64 %4341, i64* %RSI.i2547, align 8
  %4342 = add i64 %4336, -32
  %4343 = add i64 %392, 1794
  store i64 %4343, i64* %3, align 8
  %4344 = inttoptr i64 %4342 to i64*
  %4345 = load i64, i64* %4344, align 8
  store i64 %4345, i64* %RCX.i2541, align 8
  %4346 = add i64 %4345, 20
  %4347 = add i64 %392, 1798
  store i64 %4347, i64* %3, align 8
  %4348 = inttoptr i64 %4346 to i32*
  %4349 = load i32, i32* %4348, align 4
  %4350 = sext i32 %4340 to i64
  %4351 = sext i32 %4349 to i64
  %4352 = mul nsw i64 %4351, %4350
  %4353 = and i64 %4352, 4294967295
  store i64 %4353, i64* %RSI.i2547, align 8
  %4354 = trunc i64 %4352 to i32
  %4355 = add i32 %4354, %4326
  %4356 = zext i32 %4355 to i64
  store i64 %4356, i64* %RDX.i2544, align 8
  %4357 = icmp ult i32 %4355, %4326
  %4358 = icmp ult i32 %4355, %4354
  %4359 = or i1 %4357, %4358
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %68, align 1
  %4361 = and i32 %4355, 255
  %4362 = tail call i32 @llvm.ctpop.i32(i32 %4361)
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = xor i8 %4364, 1
  store i8 %4365, i8* %74, align 1
  %4366 = xor i64 %4352, %4324
  %4367 = trunc i64 %4366 to i32
  %4368 = xor i32 %4367, %4355
  %4369 = lshr i32 %4368, 4
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  store i8 %4371, i8* %79, align 1
  %4372 = icmp eq i32 %4355, 0
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %82, align 1
  %4374 = lshr i32 %4355, 31
  %4375 = trunc i32 %4374 to i8
  store i8 %4375, i8* %85, align 1
  %4376 = lshr i32 %4354, 31
  %4377 = xor i32 %4374, %4334
  %4378 = xor i32 %4374, %4376
  %4379 = add nuw nsw i32 %4377, %4378
  %4380 = icmp eq i32 %4379, 2
  %4381 = zext i1 %4380 to i8
  store i8 %4381, i8* %91, align 1
  %4382 = add i64 %4336, -60
  %4383 = add i64 %392, 1803
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  %4385 = load i32, i32* %4384, align 4
  %4386 = add i32 %4385, %4355
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %RDX.i2544, align 8
  %4388 = icmp ult i32 %4386, %4355
  %4389 = icmp ult i32 %4386, %4385
  %4390 = or i1 %4388, %4389
  %4391 = zext i1 %4390 to i8
  store i8 %4391, i8* %68, align 1
  %4392 = and i32 %4386, 255
  %4393 = tail call i32 @llvm.ctpop.i32(i32 %4392)
  %4394 = trunc i32 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = xor i8 %4395, 1
  store i8 %4396, i8* %74, align 1
  %4397 = xor i32 %4385, %4355
  %4398 = xor i32 %4397, %4386
  %4399 = lshr i32 %4398, 4
  %4400 = trunc i32 %4399 to i8
  %4401 = and i8 %4400, 1
  store i8 %4401, i8* %79, align 1
  %4402 = icmp eq i32 %4386, 0
  %4403 = zext i1 %4402 to i8
  store i8 %4403, i8* %82, align 1
  %4404 = lshr i32 %4386, 31
  %4405 = trunc i32 %4404 to i8
  store i8 %4405, i8* %85, align 1
  %4406 = lshr i32 %4385, 31
  %4407 = xor i32 %4404, %4374
  %4408 = xor i32 %4404, %4406
  %4409 = add nuw nsw i32 %4407, %4408
  %4410 = icmp eq i32 %4409, 2
  %4411 = zext i1 %4410 to i8
  store i8 %4411, i8* %91, align 1
  %4412 = sext i32 %4386 to i64
  store i64 %4412, i64* %RCX.i2541, align 8
  %4413 = load i64, i64* %RAX.i2556, align 8
  %4414 = shl nsw i64 %4412, 2
  %4415 = add i64 %4414, %4413
  %4416 = add i64 %392, 1811
  store i64 %4416, i64* %3, align 8
  %4417 = inttoptr i64 %4415 to i32*
  %4418 = load i32, i32* %4417, align 4
  store i32 %4418, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %4419 = load i64, i64* %RBP.i, align 8
  %4420 = add i64 %4419, -40
  %4421 = add i64 %392, 1815
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to i64*
  %4423 = load i64, i64* %4422, align 8
  store i64 %4423, i64* %RAX.i2556, align 8
  %4424 = add i64 %392, 1818
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i64*
  %4426 = load i64, i64* %4425, align 8
  store i64 %4426, i64* %RAX.i2556, align 8
  %4427 = add i64 %392, 1822
  store i64 %4427, i64* %3, align 8
  %4428 = load i64, i64* %4422, align 8
  store i64 %4428, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4429 = add i64 %392, 1830
  store i64 %4429, i64* %3, align 8
  %4430 = load i64, i64* %4422, align 8
  store i64 %4430, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4431 = add i64 %392, 1838
  store i64 %4431, i64* %3, align 8
  %4432 = load i64, i64* %4422, align 8
  store i64 %4432, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4433 = add i64 %4419, -52
  %4434 = add i64 %392, 1845
  store i64 %4434, i64* %3, align 8
  %4435 = inttoptr i64 %4433 to i32*
  %4436 = load i32, i32* %4435, align 4
  %4437 = add i32 %4436, -1
  %4438 = zext i32 %4437 to i64
  store i64 %4438, i64* %RSI.i2547, align 8
  %4439 = icmp eq i32 %4436, 0
  %4440 = zext i1 %4439 to i8
  store i8 %4440, i8* %68, align 1
  %4441 = and i32 %4437, 255
  %4442 = tail call i32 @llvm.ctpop.i32(i32 %4441)
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = xor i8 %4444, 1
  store i8 %4445, i8* %74, align 1
  %4446 = xor i32 %4436, %4437
  %4447 = lshr i32 %4446, 4
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  store i8 %4449, i8* %79, align 1
  %4450 = icmp eq i32 %4437, 0
  %4451 = zext i1 %4450 to i8
  store i8 %4451, i8* %82, align 1
  %4452 = lshr i32 %4437, 31
  %4453 = trunc i32 %4452 to i8
  store i8 %4453, i8* %85, align 1
  %4454 = lshr i32 %4436, 31
  %4455 = xor i32 %4452, %4454
  %4456 = add nuw nsw i32 %4455, %4454
  %4457 = icmp eq i32 %4456, 2
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %91, align 1
  %4459 = add i64 %392, 1852
  store i64 %4459, i64* %3, align 8
  %4460 = load i64, i64* %4422, align 8
  store i64 %4460, i64* %RCX.i2541, align 8
  %4461 = add i64 %4460, 16
  %4462 = add i64 %392, 1856
  store i64 %4462, i64* %3, align 8
  %4463 = inttoptr i64 %4461 to i32*
  %4464 = load i32, i32* %4463, align 4
  %4465 = sext i32 %4437 to i64
  %4466 = sext i32 %4464 to i64
  %4467 = mul nsw i64 %4466, %4465
  %4468 = trunc i64 %4467 to i32
  %4469 = and i64 %4467, 4294967295
  store i64 %4469, i64* %RSI.i2547, align 8
  %4470 = shl i64 %4467, 32
  %4471 = ashr exact i64 %4470, 32
  %4472 = icmp ne i64 %4471, %4467
  %4473 = zext i1 %4472 to i8
  store i8 %4473, i8* %68, align 1
  %4474 = and i32 %4468, 255
  %4475 = tail call i32 @llvm.ctpop.i32(i32 %4474)
  %4476 = trunc i32 %4475 to i8
  %4477 = and i8 %4476, 1
  %4478 = xor i8 %4477, 1
  store i8 %4478, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4479 = lshr i32 %4468, 31
  %4480 = trunc i32 %4479 to i8
  store i8 %4480, i8* %85, align 1
  store i8 %4473, i8* %91, align 1
  %4481 = load i64, i64* %RBP.i, align 8
  %4482 = add i64 %4481, -40
  %4483 = add i64 %392, 1860
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i64*
  %4485 = load i64, i64* %4484, align 8
  store i64 %4485, i64* %RCX.i2541, align 8
  %4486 = add i64 %4485, 20
  %4487 = add i64 %392, 1864
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  %4490 = sext i32 %4489 to i64
  %4491 = mul nsw i64 %4490, %4471
  %4492 = and i64 %4491, 4294967295
  store i64 %4492, i64* %RSI.i2547, align 8
  %4493 = trunc i64 %4491 to i32
  %4494 = zext i32 %4493 to i64
  store i64 %4494, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %4495 = and i32 %4493, 255
  %4496 = tail call i32 @llvm.ctpop.i32(i32 %4495)
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  %4499 = xor i8 %4498, 1
  store i8 %4499, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %4500 = icmp eq i32 %4493, 0
  %4501 = zext i1 %4500 to i8
  store i8 %4501, i8* %82, align 1
  %4502 = lshr i32 %4493, 31
  %4503 = trunc i32 %4502 to i8
  store i8 %4503, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4504 = add i64 %4481, -56
  %4505 = add i64 %392, 1869
  store i64 %4505, i64* %3, align 8
  %4506 = inttoptr i64 %4504 to i32*
  %4507 = load i32, i32* %4506, align 4
  %4508 = zext i32 %4507 to i64
  store i64 %4508, i64* %RSI.i2547, align 8
  %4509 = add i64 %392, 1873
  store i64 %4509, i64* %3, align 8
  %4510 = load i64, i64* %4484, align 8
  store i64 %4510, i64* %RCX.i2541, align 8
  %4511 = add i64 %4510, 20
  %4512 = add i64 %392, 1877
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4511 to i32*
  %4514 = load i32, i32* %4513, align 4
  %4515 = sext i32 %4507 to i64
  %4516 = sext i32 %4514 to i64
  %4517 = mul nsw i64 %4516, %4515
  %4518 = and i64 %4517, 4294967295
  store i64 %4518, i64* %RSI.i2547, align 8
  %4519 = trunc i64 %4517 to i32
  %4520 = add i32 %4519, %4493
  %4521 = zext i32 %4520 to i64
  store i64 %4521, i64* %RDX.i2544, align 8
  %4522 = icmp ult i32 %4520, %4493
  %4523 = icmp ult i32 %4520, %4519
  %4524 = or i1 %4522, %4523
  %4525 = zext i1 %4524 to i8
  store i8 %4525, i8* %68, align 1
  %4526 = and i32 %4520, 255
  %4527 = tail call i32 @llvm.ctpop.i32(i32 %4526)
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = xor i8 %4529, 1
  store i8 %4530, i8* %74, align 1
  %4531 = xor i64 %4517, %4494
  %4532 = trunc i64 %4531 to i32
  %4533 = xor i32 %4532, %4520
  %4534 = lshr i32 %4533, 4
  %4535 = trunc i32 %4534 to i8
  %4536 = and i8 %4535, 1
  store i8 %4536, i8* %79, align 1
  %4537 = icmp eq i32 %4520, 0
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %82, align 1
  %4539 = lshr i32 %4520, 31
  %4540 = trunc i32 %4539 to i8
  store i8 %4540, i8* %85, align 1
  %4541 = lshr i32 %4519, 31
  %4542 = xor i32 %4539, %4502
  %4543 = xor i32 %4539, %4541
  %4544 = add nuw nsw i32 %4542, %4543
  %4545 = icmp eq i32 %4544, 2
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %91, align 1
  %4547 = add i64 %4481, -60
  %4548 = add i64 %392, 1882
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to i32*
  %4550 = load i32, i32* %4549, align 4
  %4551 = add i32 %4550, %4520
  %4552 = zext i32 %4551 to i64
  store i64 %4552, i64* %RDX.i2544, align 8
  %4553 = icmp ult i32 %4551, %4520
  %4554 = icmp ult i32 %4551, %4550
  %4555 = or i1 %4553, %4554
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %68, align 1
  %4557 = and i32 %4551, 255
  %4558 = tail call i32 @llvm.ctpop.i32(i32 %4557)
  %4559 = trunc i32 %4558 to i8
  %4560 = and i8 %4559, 1
  %4561 = xor i8 %4560, 1
  store i8 %4561, i8* %74, align 1
  %4562 = xor i32 %4550, %4520
  %4563 = xor i32 %4562, %4551
  %4564 = lshr i32 %4563, 4
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  store i8 %4566, i8* %79, align 1
  %4567 = icmp eq i32 %4551, 0
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %82, align 1
  %4569 = lshr i32 %4551, 31
  %4570 = trunc i32 %4569 to i8
  store i8 %4570, i8* %85, align 1
  %4571 = lshr i32 %4550, 31
  %4572 = xor i32 %4569, %4539
  %4573 = xor i32 %4569, %4571
  %4574 = add nuw nsw i32 %4572, %4573
  %4575 = icmp eq i32 %4574, 2
  %4576 = zext i1 %4575 to i8
  store i8 %4576, i8* %91, align 1
  %4577 = sext i32 %4551 to i64
  store i64 %4577, i64* %RCX.i2541, align 8
  %4578 = load i64, i64* %RAX.i2556, align 8
  %4579 = shl nsw i64 %4577, 2
  %4580 = add i64 %4579, %4578
  %4581 = add i64 %392, 1890
  store i64 %4581, i64* %3, align 8
  %4582 = load <2 x float>, <2 x float>* %206, align 1
  %4583 = load <2 x i32>, <2 x i32>* %207, align 1
  %4584 = inttoptr i64 %4580 to float*
  %4585 = load float, float* %4584, align 4
  %4586 = extractelement <2 x float> %4582, i32 0
  %4587 = fmul float %4586, %4585
  store float %4587, float* %199, align 1
  %4588 = bitcast <2 x float> %4582 to <2 x i32>
  %4589 = extractelement <2 x i32> %4588, i32 1
  store i32 %4589, i32* %208, align 1
  %4590 = extractelement <2 x i32> %4583, i32 0
  store i32 %4590, i32* %209, align 1
  %4591 = extractelement <2 x i32> %4583, i32 1
  store i32 %4591, i32* %210, align 1
  %4592 = load <2 x float>, <2 x float>* %191, align 1
  %4593 = load <2 x i32>, <2 x i32>* %196, align 1
  %4594 = load <2 x float>, <2 x float>* %206, align 1
  %4595 = extractelement <2 x float> %4592, i32 0
  %4596 = extractelement <2 x float> %4594, i32 0
  %4597 = fadd float %4595, %4596
  store float %4597, float* %192, align 1
  %4598 = bitcast <2 x float> %4592 to <2 x i32>
  %4599 = extractelement <2 x i32> %4598, i32 1
  store i32 %4599, i32* %187, align 1
  %4600 = extractelement <2 x i32> %4593, i32 0
  store i32 %4600, i32* %188, align 1
  %4601 = extractelement <2 x i32> %4593, i32 1
  store i32 %4601, i32* %190, align 1
  %4602 = add i64 %4481, -32
  %4603 = add i64 %392, 1898
  store i64 %4603, i64* %3, align 8
  %4604 = inttoptr i64 %4602 to i64*
  %4605 = load i64, i64* %4604, align 8
  store i64 %4605, i64* %RAX.i2556, align 8
  %4606 = add i64 %392, 1901
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i64*
  %4608 = load i64, i64* %4607, align 8
  store i64 %4608, i64* %RAX.i2556, align 8
  %4609 = add i64 %392, 1905
  store i64 %4609, i64* %3, align 8
  %4610 = load i64, i64* %4604, align 8
  store i64 %4610, i64* %RCX.i2541, align 8
  %4611 = add i64 %4610, 12
  %4612 = add i64 %392, 1908
  store i64 %4612, i64* %3, align 8
  %4613 = inttoptr i64 %4611 to i32*
  %4614 = load i32, i32* %4613, align 4
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RDX.i2544, align 8
  %4616 = load i64, i64* %RBP.i, align 8
  %4617 = add i64 %4616, -32
  %4618 = add i64 %392, 1915
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4617 to i64*
  %4620 = load i64, i64* %4619, align 8
  store i64 %4620, i64* %RCX.i2541, align 8
  %4621 = add i64 %4620, 16
  %4622 = add i64 %392, 1919
  store i64 %4622, i64* %3, align 8
  %4623 = inttoptr i64 %4621 to i32*
  %4624 = load i32, i32* %4623, align 4
  %4625 = sext i32 %4614 to i64
  %4626 = sext i32 %4624 to i64
  %4627 = mul nsw i64 %4626, %4625
  %4628 = trunc i64 %4627 to i32
  %4629 = and i64 %4627, 4294967295
  store i64 %4629, i64* %RDX.i2544, align 8
  %4630 = shl i64 %4627, 32
  %4631 = ashr exact i64 %4630, 32
  %4632 = icmp ne i64 %4631, %4627
  %4633 = zext i1 %4632 to i8
  store i8 %4633, i8* %68, align 1
  %4634 = and i32 %4628, 255
  %4635 = tail call i32 @llvm.ctpop.i32(i32 %4634)
  %4636 = trunc i32 %4635 to i8
  %4637 = and i8 %4636, 1
  %4638 = xor i8 %4637, 1
  store i8 %4638, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4639 = lshr i32 %4628, 31
  %4640 = trunc i32 %4639 to i8
  store i8 %4640, i8* %85, align 1
  store i8 %4633, i8* %91, align 1
  %4641 = add i64 %392, 1923
  store i64 %4641, i64* %3, align 8
  %4642 = load i64, i64* %4619, align 8
  store i64 %4642, i64* %RCX.i2541, align 8
  %4643 = add i64 %4642, 20
  %4644 = add i64 %392, 1927
  store i64 %4644, i64* %3, align 8
  %4645 = inttoptr i64 %4643 to i32*
  %4646 = load i32, i32* %4645, align 4
  %4647 = sext i32 %4646 to i64
  %4648 = mul nsw i64 %4647, %4631
  %4649 = trunc i64 %4648 to i32
  %4650 = and i64 %4648, 4294967295
  store i64 %4650, i64* %RDX.i2544, align 8
  %4651 = shl i64 %4648, 32
  %4652 = ashr exact i64 %4651, 32
  %4653 = icmp ne i64 %4652, %4648
  %4654 = zext i1 %4653 to i8
  store i8 %4654, i8* %68, align 1
  %4655 = and i32 %4649, 255
  %4656 = tail call i32 @llvm.ctpop.i32(i32 %4655)
  %4657 = trunc i32 %4656 to i8
  %4658 = and i8 %4657, 1
  %4659 = xor i8 %4658, 1
  store i8 %4659, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4660 = lshr i32 %4649, 31
  %4661 = trunc i32 %4660 to i8
  store i8 %4661, i8* %85, align 1
  store i8 %4654, i8* %91, align 1
  %4662 = add i64 %4616, -52
  %4663 = add i64 %392, 1930
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i32*
  %4665 = load i32, i32* %4664, align 4
  %4666 = zext i32 %4665 to i64
  store i64 %4666, i64* %RSI.i2547, align 8
  %4667 = add i64 %392, 1934
  store i64 %4667, i64* %3, align 8
  %4668 = load i64, i64* %4619, align 8
  store i64 %4668, i64* %RCX.i2541, align 8
  %4669 = add i64 %4668, 16
  %4670 = add i64 %392, 1938
  store i64 %4670, i64* %3, align 8
  %4671 = inttoptr i64 %4669 to i32*
  %4672 = load i32, i32* %4671, align 4
  %4673 = sext i32 %4665 to i64
  %4674 = sext i32 %4672 to i64
  %4675 = mul nsw i64 %4674, %4673
  %4676 = trunc i64 %4675 to i32
  %4677 = and i64 %4675, 4294967295
  store i64 %4677, i64* %RSI.i2547, align 8
  %4678 = shl i64 %4675, 32
  %4679 = ashr exact i64 %4678, 32
  %4680 = icmp ne i64 %4679, %4675
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %68, align 1
  %4682 = and i32 %4676, 255
  %4683 = tail call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  store i8 %4686, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4687 = lshr i32 %4676, 31
  %4688 = trunc i32 %4687 to i8
  store i8 %4688, i8* %85, align 1
  store i8 %4681, i8* %91, align 1
  %4689 = load i64, i64* %RBP.i, align 8
  %4690 = add i64 %4689, -32
  %4691 = add i64 %392, 1942
  store i64 %4691, i64* %3, align 8
  %4692 = inttoptr i64 %4690 to i64*
  %4693 = load i64, i64* %4692, align 8
  store i64 %4693, i64* %RCX.i2541, align 8
  %4694 = add i64 %4693, 20
  %4695 = add i64 %392, 1946
  store i64 %4695, i64* %3, align 8
  %4696 = inttoptr i64 %4694 to i32*
  %4697 = load i32, i32* %4696, align 4
  %4698 = sext i32 %4697 to i64
  %4699 = mul nsw i64 %4698, %4679
  %4700 = and i64 %4699, 4294967295
  store i64 %4700, i64* %RSI.i2547, align 8
  %4701 = trunc i64 %4699 to i32
  %4702 = add i32 %4701, %4649
  %4703 = zext i32 %4702 to i64
  store i64 %4703, i64* %RDX.i2544, align 8
  %4704 = icmp ult i32 %4702, %4649
  %4705 = icmp ult i32 %4702, %4701
  %4706 = or i1 %4704, %4705
  %4707 = zext i1 %4706 to i8
  store i8 %4707, i8* %68, align 1
  %4708 = and i32 %4702, 255
  %4709 = tail call i32 @llvm.ctpop.i32(i32 %4708)
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = xor i8 %4711, 1
  store i8 %4712, i8* %74, align 1
  %4713 = xor i64 %4699, %4648
  %4714 = trunc i64 %4713 to i32
  %4715 = xor i32 %4714, %4702
  %4716 = lshr i32 %4715, 4
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  store i8 %4718, i8* %79, align 1
  %4719 = icmp eq i32 %4702, 0
  %4720 = zext i1 %4719 to i8
  store i8 %4720, i8* %82, align 1
  %4721 = lshr i32 %4702, 31
  %4722 = trunc i32 %4721 to i8
  store i8 %4722, i8* %85, align 1
  %4723 = lshr i32 %4701, 31
  %4724 = xor i32 %4721, %4660
  %4725 = xor i32 %4721, %4723
  %4726 = add nuw nsw i32 %4724, %4725
  %4727 = icmp eq i32 %4726, 2
  %4728 = zext i1 %4727 to i8
  store i8 %4728, i8* %91, align 1
  %4729 = add i64 %4689, -56
  %4730 = add i64 %392, 1951
  store i64 %4730, i64* %3, align 8
  %4731 = inttoptr i64 %4729 to i32*
  %4732 = load i32, i32* %4731, align 4
  %4733 = zext i32 %4732 to i64
  store i64 %4733, i64* %RSI.i2547, align 8
  %4734 = add i64 %392, 1955
  store i64 %4734, i64* %3, align 8
  %4735 = load i64, i64* %4692, align 8
  store i64 %4735, i64* %RCX.i2541, align 8
  %4736 = add i64 %4735, 20
  %4737 = add i64 %392, 1959
  store i64 %4737, i64* %3, align 8
  %4738 = inttoptr i64 %4736 to i32*
  %4739 = load i32, i32* %4738, align 4
  %4740 = sext i32 %4732 to i64
  %4741 = sext i32 %4739 to i64
  %4742 = mul nsw i64 %4741, %4740
  %4743 = and i64 %4742, 4294967295
  store i64 %4743, i64* %RSI.i2547, align 8
  %4744 = trunc i64 %4742 to i32
  %4745 = add i32 %4744, %4702
  %4746 = zext i32 %4745 to i64
  store i64 %4746, i64* %RDX.i2544, align 8
  %4747 = icmp ult i32 %4745, %4702
  %4748 = icmp ult i32 %4745, %4744
  %4749 = or i1 %4747, %4748
  %4750 = zext i1 %4749 to i8
  store i8 %4750, i8* %68, align 1
  %4751 = and i32 %4745, 255
  %4752 = tail call i32 @llvm.ctpop.i32(i32 %4751)
  %4753 = trunc i32 %4752 to i8
  %4754 = and i8 %4753, 1
  %4755 = xor i8 %4754, 1
  store i8 %4755, i8* %74, align 1
  %4756 = xor i64 %4742, %4703
  %4757 = trunc i64 %4756 to i32
  %4758 = xor i32 %4757, %4745
  %4759 = lshr i32 %4758, 4
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  store i8 %4761, i8* %79, align 1
  %4762 = icmp eq i32 %4745, 0
  %4763 = zext i1 %4762 to i8
  store i8 %4763, i8* %82, align 1
  %4764 = lshr i32 %4745, 31
  %4765 = trunc i32 %4764 to i8
  store i8 %4765, i8* %85, align 1
  %4766 = lshr i32 %4744, 31
  %4767 = xor i32 %4764, %4721
  %4768 = xor i32 %4764, %4766
  %4769 = add nuw nsw i32 %4767, %4768
  %4770 = icmp eq i32 %4769, 2
  %4771 = zext i1 %4770 to i8
  store i8 %4771, i8* %91, align 1
  %4772 = load i64, i64* %RBP.i, align 8
  %4773 = add i64 %4772, -60
  %4774 = add i64 %392, 1964
  store i64 %4774, i64* %3, align 8
  %4775 = inttoptr i64 %4773 to i32*
  %4776 = load i32, i32* %4775, align 4
  %4777 = add i32 %4776, %4745
  %4778 = zext i32 %4777 to i64
  store i64 %4778, i64* %RDX.i2544, align 8
  %4779 = icmp ult i32 %4777, %4745
  %4780 = icmp ult i32 %4777, %4776
  %4781 = or i1 %4779, %4780
  %4782 = zext i1 %4781 to i8
  store i8 %4782, i8* %68, align 1
  %4783 = and i32 %4777, 255
  %4784 = tail call i32 @llvm.ctpop.i32(i32 %4783)
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  store i8 %4787, i8* %74, align 1
  %4788 = xor i32 %4776, %4745
  %4789 = xor i32 %4788, %4777
  %4790 = lshr i32 %4789, 4
  %4791 = trunc i32 %4790 to i8
  %4792 = and i8 %4791, 1
  store i8 %4792, i8* %79, align 1
  %4793 = icmp eq i32 %4777, 0
  %4794 = zext i1 %4793 to i8
  store i8 %4794, i8* %82, align 1
  %4795 = lshr i32 %4777, 31
  %4796 = trunc i32 %4795 to i8
  store i8 %4796, i8* %85, align 1
  %4797 = lshr i32 %4776, 31
  %4798 = xor i32 %4795, %4764
  %4799 = xor i32 %4795, %4797
  %4800 = add nuw nsw i32 %4798, %4799
  %4801 = icmp eq i32 %4800, 2
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %91, align 1
  %4803 = sext i32 %4777 to i64
  store i64 %4803, i64* %RCX.i2541, align 8
  %4804 = load i64, i64* %RAX.i2556, align 8
  %4805 = shl nsw i64 %4803, 2
  %4806 = add i64 %4805, %4804
  %4807 = add i64 %392, 1972
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i32*
  %4809 = load i32, i32* %4808, align 4
  store i32 %4809, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %4810 = add i64 %4772, -40
  %4811 = add i64 %392, 1976
  store i64 %4811, i64* %3, align 8
  %4812 = inttoptr i64 %4810 to i64*
  %4813 = load i64, i64* %4812, align 8
  store i64 %4813, i64* %RAX.i2556, align 8
  %4814 = add i64 %392, 1979
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i64*
  %4816 = load i64, i64* %4815, align 8
  store i64 %4816, i64* %RAX.i2556, align 8
  %4817 = add i64 %392, 1983
  store i64 %4817, i64* %3, align 8
  %4818 = load i64, i64* %4812, align 8
  store i64 %4818, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4819 = add i64 %392, 1991
  store i64 %4819, i64* %3, align 8
  %4820 = load i64, i64* %4812, align 8
  store i64 %4820, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4821 = add i64 %392, 1999
  store i64 %4821, i64* %3, align 8
  %4822 = load i64, i64* %4812, align 8
  store i64 %4822, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4823 = load i64, i64* %RBP.i, align 8
  %4824 = add i64 %4823, -52
  %4825 = add i64 %392, 2006
  store i64 %4825, i64* %3, align 8
  %4826 = inttoptr i64 %4824 to i32*
  %4827 = load i32, i32* %4826, align 4
  %4828 = zext i32 %4827 to i64
  store i64 %4828, i64* %RSI.i2547, align 8
  %4829 = add i64 %4823, -40
  %4830 = add i64 %392, 2010
  store i64 %4830, i64* %3, align 8
  %4831 = inttoptr i64 %4829 to i64*
  %4832 = load i64, i64* %4831, align 8
  store i64 %4832, i64* %RCX.i2541, align 8
  %4833 = add i64 %4832, 16
  %4834 = add i64 %392, 2014
  store i64 %4834, i64* %3, align 8
  %4835 = inttoptr i64 %4833 to i32*
  %4836 = load i32, i32* %4835, align 4
  %4837 = sext i32 %4827 to i64
  %4838 = sext i32 %4836 to i64
  %4839 = mul nsw i64 %4838, %4837
  %4840 = trunc i64 %4839 to i32
  %4841 = and i64 %4839, 4294967295
  store i64 %4841, i64* %RSI.i2547, align 8
  %4842 = shl i64 %4839, 32
  %4843 = ashr exact i64 %4842, 32
  %4844 = icmp ne i64 %4843, %4839
  %4845 = zext i1 %4844 to i8
  store i8 %4845, i8* %68, align 1
  %4846 = and i32 %4840, 255
  %4847 = tail call i32 @llvm.ctpop.i32(i32 %4846)
  %4848 = trunc i32 %4847 to i8
  %4849 = and i8 %4848, 1
  %4850 = xor i8 %4849, 1
  store i8 %4850, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %4851 = lshr i32 %4840, 31
  %4852 = trunc i32 %4851 to i8
  store i8 %4852, i8* %85, align 1
  store i8 %4845, i8* %91, align 1
  %4853 = add i64 %392, 2018
  store i64 %4853, i64* %3, align 8
  %4854 = load i64, i64* %4831, align 8
  store i64 %4854, i64* %RCX.i2541, align 8
  %4855 = add i64 %4854, 20
  %4856 = add i64 %392, 2022
  store i64 %4856, i64* %3, align 8
  %4857 = inttoptr i64 %4855 to i32*
  %4858 = load i32, i32* %4857, align 4
  %4859 = sext i32 %4858 to i64
  %4860 = mul nsw i64 %4859, %4843
  %4861 = and i64 %4860, 4294967295
  store i64 %4861, i64* %RSI.i2547, align 8
  %4862 = trunc i64 %4860 to i32
  store i64 %4861, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %4863 = and i32 %4862, 255
  %4864 = tail call i32 @llvm.ctpop.i32(i32 %4863)
  %4865 = trunc i32 %4864 to i8
  %4866 = and i8 %4865, 1
  %4867 = xor i8 %4866, 1
  store i8 %4867, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %4868 = icmp eq i32 %4862, 0
  %4869 = zext i1 %4868 to i8
  store i8 %4869, i8* %82, align 1
  %4870 = lshr i32 %4862, 31
  %4871 = trunc i32 %4870 to i8
  store i8 %4871, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %4872 = add i64 %4823, -56
  %4873 = add i64 %392, 2027
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = add i32 %4875, -1
  %4877 = zext i32 %4876 to i64
  store i64 %4877, i64* %RSI.i2547, align 8
  %4878 = icmp eq i32 %4875, 0
  %4879 = zext i1 %4878 to i8
  store i8 %4879, i8* %68, align 1
  %4880 = and i32 %4876, 255
  %4881 = tail call i32 @llvm.ctpop.i32(i32 %4880)
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = xor i8 %4883, 1
  store i8 %4884, i8* %74, align 1
  %4885 = xor i32 %4875, %4876
  %4886 = lshr i32 %4885, 4
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  store i8 %4888, i8* %79, align 1
  %4889 = icmp eq i32 %4876, 0
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %82, align 1
  %4891 = lshr i32 %4876, 31
  %4892 = trunc i32 %4891 to i8
  store i8 %4892, i8* %85, align 1
  %4893 = lshr i32 %4875, 31
  %4894 = xor i32 %4891, %4893
  %4895 = add nuw nsw i32 %4894, %4893
  %4896 = icmp eq i32 %4895, 2
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %91, align 1
  %4898 = load i64, i64* %RBP.i, align 8
  %4899 = add i64 %4898, -40
  %4900 = add i64 %392, 2034
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4899 to i64*
  %4902 = load i64, i64* %4901, align 8
  store i64 %4902, i64* %RCX.i2541, align 8
  %4903 = add i64 %4902, 20
  %4904 = add i64 %392, 2038
  store i64 %4904, i64* %3, align 8
  %4905 = inttoptr i64 %4903 to i32*
  %4906 = load i32, i32* %4905, align 4
  %4907 = sext i32 %4876 to i64
  %4908 = sext i32 %4906 to i64
  %4909 = mul nsw i64 %4908, %4907
  %4910 = and i64 %4909, 4294967295
  store i64 %4910, i64* %RSI.i2547, align 8
  %4911 = trunc i64 %4909 to i32
  %4912 = add i32 %4911, %4862
  %4913 = zext i32 %4912 to i64
  store i64 %4913, i64* %RDX.i2544, align 8
  %4914 = icmp ult i32 %4912, %4862
  %4915 = icmp ult i32 %4912, %4911
  %4916 = or i1 %4914, %4915
  %4917 = zext i1 %4916 to i8
  store i8 %4917, i8* %68, align 1
  %4918 = and i32 %4912, 255
  %4919 = tail call i32 @llvm.ctpop.i32(i32 %4918)
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = xor i8 %4921, 1
  store i8 %4922, i8* %74, align 1
  %4923 = xor i64 %4909, %4860
  %4924 = trunc i64 %4923 to i32
  %4925 = xor i32 %4924, %4912
  %4926 = lshr i32 %4925, 4
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  store i8 %4928, i8* %79, align 1
  %4929 = icmp eq i32 %4912, 0
  %4930 = zext i1 %4929 to i8
  store i8 %4930, i8* %82, align 1
  %4931 = lshr i32 %4912, 31
  %4932 = trunc i32 %4931 to i8
  store i8 %4932, i8* %85, align 1
  %4933 = lshr i32 %4911, 31
  %4934 = xor i32 %4931, %4870
  %4935 = xor i32 %4931, %4933
  %4936 = add nuw nsw i32 %4934, %4935
  %4937 = icmp eq i32 %4936, 2
  %4938 = zext i1 %4937 to i8
  store i8 %4938, i8* %91, align 1
  %4939 = add i64 %4898, -60
  %4940 = add i64 %392, 2043
  store i64 %4940, i64* %3, align 8
  %4941 = inttoptr i64 %4939 to i32*
  %4942 = load i32, i32* %4941, align 4
  %4943 = add i32 %4942, %4912
  %4944 = zext i32 %4943 to i64
  store i64 %4944, i64* %RDX.i2544, align 8
  %4945 = icmp ult i32 %4943, %4912
  %4946 = icmp ult i32 %4943, %4942
  %4947 = or i1 %4945, %4946
  %4948 = zext i1 %4947 to i8
  store i8 %4948, i8* %68, align 1
  %4949 = and i32 %4943, 255
  %4950 = tail call i32 @llvm.ctpop.i32(i32 %4949)
  %4951 = trunc i32 %4950 to i8
  %4952 = and i8 %4951, 1
  %4953 = xor i8 %4952, 1
  store i8 %4953, i8* %74, align 1
  %4954 = xor i32 %4942, %4912
  %4955 = xor i32 %4954, %4943
  %4956 = lshr i32 %4955, 4
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  store i8 %4958, i8* %79, align 1
  %4959 = icmp eq i32 %4943, 0
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %82, align 1
  %4961 = lshr i32 %4943, 31
  %4962 = trunc i32 %4961 to i8
  store i8 %4962, i8* %85, align 1
  %4963 = lshr i32 %4942, 31
  %4964 = xor i32 %4961, %4931
  %4965 = xor i32 %4961, %4963
  %4966 = add nuw nsw i32 %4964, %4965
  %4967 = icmp eq i32 %4966, 2
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %91, align 1
  %4969 = sext i32 %4943 to i64
  store i64 %4969, i64* %RCX.i2541, align 8
  %4970 = load i64, i64* %RAX.i2556, align 8
  %4971 = shl nsw i64 %4969, 2
  %4972 = add i64 %4971, %4970
  %4973 = add i64 %392, 2051
  store i64 %4973, i64* %3, align 8
  %4974 = load <2 x float>, <2 x float>* %206, align 1
  %4975 = load <2 x i32>, <2 x i32>* %207, align 1
  %4976 = inttoptr i64 %4972 to float*
  %4977 = load float, float* %4976, align 4
  %4978 = extractelement <2 x float> %4974, i32 0
  %4979 = fmul float %4978, %4977
  store float %4979, float* %199, align 1
  %4980 = bitcast <2 x float> %4974 to <2 x i32>
  %4981 = extractelement <2 x i32> %4980, i32 1
  store i32 %4981, i32* %208, align 1
  %4982 = extractelement <2 x i32> %4975, i32 0
  store i32 %4982, i32* %209, align 1
  %4983 = extractelement <2 x i32> %4975, i32 1
  store i32 %4983, i32* %210, align 1
  %4984 = load <2 x float>, <2 x float>* %191, align 1
  %4985 = load <2 x i32>, <2 x i32>* %196, align 1
  %4986 = load <2 x float>, <2 x float>* %206, align 1
  %4987 = extractelement <2 x float> %4984, i32 0
  %4988 = extractelement <2 x float> %4986, i32 0
  %4989 = fadd float %4987, %4988
  store float %4989, float* %192, align 1
  %4990 = bitcast <2 x float> %4984 to <2 x i32>
  %4991 = extractelement <2 x i32> %4990, i32 1
  store i32 %4991, i32* %187, align 1
  %4992 = extractelement <2 x i32> %4985, i32 0
  store i32 %4992, i32* %188, align 1
  %4993 = extractelement <2 x i32> %4985, i32 1
  store i32 %4993, i32* %190, align 1
  %4994 = load i64, i64* %RBP.i, align 8
  %4995 = add i64 %4994, -32
  %4996 = add i64 %392, 2059
  store i64 %4996, i64* %3, align 8
  %4997 = inttoptr i64 %4995 to i64*
  %4998 = load i64, i64* %4997, align 8
  store i64 %4998, i64* %RAX.i2556, align 8
  %4999 = add i64 %392, 2062
  store i64 %4999, i64* %3, align 8
  %5000 = inttoptr i64 %4998 to i64*
  %5001 = load i64, i64* %5000, align 8
  store i64 %5001, i64* %RAX.i2556, align 8
  %5002 = add i64 %392, 2066
  store i64 %5002, i64* %3, align 8
  %5003 = load i64, i64* %4997, align 8
  store i64 %5003, i64* %RCX.i2541, align 8
  %5004 = add i64 %5003, 12
  %5005 = add i64 %392, 2069
  store i64 %5005, i64* %3, align 8
  %5006 = inttoptr i64 %5004 to i32*
  %5007 = load i32, i32* %5006, align 4
  %5008 = shl i32 %5007, 1
  %5009 = icmp slt i32 %5007, 0
  %5010 = icmp slt i32 %5008, 0
  %5011 = xor i1 %5009, %5010
  %5012 = zext i32 %5008 to i64
  store i64 %5012, i64* %RDX.i2544, align 8
  %.lobit11 = lshr i32 %5007, 31
  %5013 = trunc i32 %.lobit11 to i8
  store i8 %5013, i8* %68, align 1
  %5014 = and i32 %5008, 254
  %5015 = tail call i32 @llvm.ctpop.i32(i32 %5014)
  %5016 = trunc i32 %5015 to i8
  %5017 = and i8 %5016, 1
  %5018 = xor i8 %5017, 1
  store i8 %5018, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5019 = icmp eq i32 %5008, 0
  %5020 = zext i1 %5019 to i8
  store i8 %5020, i8* %82, align 1
  %5021 = lshr i32 %5007, 30
  %5022 = trunc i32 %5021 to i8
  %5023 = and i8 %5022, 1
  store i8 %5023, i8* %85, align 1
  %5024 = zext i1 %5011 to i8
  store i8 %5024, i8* %91, align 1
  %5025 = add i64 %392, 2076
  store i64 %5025, i64* %3, align 8
  %5026 = load i64, i64* %4997, align 8
  store i64 %5026, i64* %RCX.i2541, align 8
  %5027 = add i64 %5026, 16
  %5028 = add i64 %392, 2080
  store i64 %5028, i64* %3, align 8
  %5029 = inttoptr i64 %5027 to i32*
  %5030 = load i32, i32* %5029, align 4
  %5031 = sext i32 %5008 to i64
  %5032 = sext i32 %5030 to i64
  %5033 = mul nsw i64 %5032, %5031
  %5034 = trunc i64 %5033 to i32
  %5035 = and i64 %5033, 4294967294
  store i64 %5035, i64* %RDX.i2544, align 8
  %5036 = shl i64 %5033, 32
  %5037 = ashr exact i64 %5036, 32
  %5038 = icmp ne i64 %5037, %5033
  %5039 = zext i1 %5038 to i8
  store i8 %5039, i8* %68, align 1
  %5040 = and i32 %5034, 254
  %5041 = tail call i32 @llvm.ctpop.i32(i32 %5040)
  %5042 = trunc i32 %5041 to i8
  %5043 = and i8 %5042, 1
  %5044 = xor i8 %5043, 1
  store i8 %5044, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5045 = lshr i32 %5034, 31
  %5046 = trunc i32 %5045 to i8
  store i8 %5046, i8* %85, align 1
  store i8 %5039, i8* %91, align 1
  %5047 = add i64 %392, 2084
  store i64 %5047, i64* %3, align 8
  %5048 = load i64, i64* %4997, align 8
  store i64 %5048, i64* %RCX.i2541, align 8
  %5049 = add i64 %5048, 20
  %5050 = add i64 %392, 2088
  store i64 %5050, i64* %3, align 8
  %5051 = inttoptr i64 %5049 to i32*
  %5052 = load i32, i32* %5051, align 4
  %5053 = sext i32 %5052 to i64
  %5054 = mul nsw i64 %5053, %5037
  %5055 = trunc i64 %5054 to i32
  %5056 = and i64 %5054, 4294967295
  store i64 %5056, i64* %RDX.i2544, align 8
  %5057 = shl i64 %5054, 32
  %5058 = ashr exact i64 %5057, 32
  %5059 = icmp ne i64 %5058, %5054
  %5060 = zext i1 %5059 to i8
  store i8 %5060, i8* %68, align 1
  %5061 = and i32 %5055, 255
  %5062 = tail call i32 @llvm.ctpop.i32(i32 %5061)
  %5063 = trunc i32 %5062 to i8
  %5064 = and i8 %5063, 1
  %5065 = xor i8 %5064, 1
  store i8 %5065, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5066 = lshr i32 %5055, 31
  %5067 = trunc i32 %5066 to i8
  store i8 %5067, i8* %85, align 1
  store i8 %5060, i8* %91, align 1
  %5068 = load i64, i64* %RBP.i, align 8
  %5069 = add i64 %5068, -52
  %5070 = add i64 %392, 2091
  store i64 %5070, i64* %3, align 8
  %5071 = inttoptr i64 %5069 to i32*
  %5072 = load i32, i32* %5071, align 4
  %5073 = zext i32 %5072 to i64
  store i64 %5073, i64* %RSI.i2547, align 8
  %5074 = add i64 %5068, -32
  %5075 = add i64 %392, 2095
  store i64 %5075, i64* %3, align 8
  %5076 = inttoptr i64 %5074 to i64*
  %5077 = load i64, i64* %5076, align 8
  store i64 %5077, i64* %RCX.i2541, align 8
  %5078 = add i64 %5077, 16
  %5079 = add i64 %392, 2099
  store i64 %5079, i64* %3, align 8
  %5080 = inttoptr i64 %5078 to i32*
  %5081 = load i32, i32* %5080, align 4
  %5082 = sext i32 %5072 to i64
  %5083 = sext i32 %5081 to i64
  %5084 = mul nsw i64 %5083, %5082
  %5085 = trunc i64 %5084 to i32
  %5086 = and i64 %5084, 4294967295
  store i64 %5086, i64* %RSI.i2547, align 8
  %5087 = shl i64 %5084, 32
  %5088 = ashr exact i64 %5087, 32
  %5089 = icmp ne i64 %5088, %5084
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %68, align 1
  %5091 = and i32 %5085, 255
  %5092 = tail call i32 @llvm.ctpop.i32(i32 %5091)
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = xor i8 %5094, 1
  store i8 %5095, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5096 = lshr i32 %5085, 31
  %5097 = trunc i32 %5096 to i8
  store i8 %5097, i8* %85, align 1
  store i8 %5090, i8* %91, align 1
  %5098 = add i64 %392, 2103
  store i64 %5098, i64* %3, align 8
  %5099 = load i64, i64* %5076, align 8
  store i64 %5099, i64* %RCX.i2541, align 8
  %5100 = add i64 %5099, 20
  %5101 = add i64 %392, 2107
  store i64 %5101, i64* %3, align 8
  %5102 = inttoptr i64 %5100 to i32*
  %5103 = load i32, i32* %5102, align 4
  %5104 = sext i32 %5103 to i64
  %5105 = mul nsw i64 %5104, %5088
  %5106 = and i64 %5105, 4294967295
  store i64 %5106, i64* %RSI.i2547, align 8
  %5107 = trunc i64 %5105 to i32
  %5108 = add i32 %5107, %5055
  %5109 = zext i32 %5108 to i64
  store i64 %5109, i64* %RDX.i2544, align 8
  %5110 = icmp ult i32 %5108, %5055
  %5111 = icmp ult i32 %5108, %5107
  %5112 = or i1 %5110, %5111
  %5113 = zext i1 %5112 to i8
  store i8 %5113, i8* %68, align 1
  %5114 = and i32 %5108, 255
  %5115 = tail call i32 @llvm.ctpop.i32(i32 %5114)
  %5116 = trunc i32 %5115 to i8
  %5117 = and i8 %5116, 1
  %5118 = xor i8 %5117, 1
  store i8 %5118, i8* %74, align 1
  %5119 = xor i64 %5105, %5054
  %5120 = trunc i64 %5119 to i32
  %5121 = xor i32 %5120, %5108
  %5122 = lshr i32 %5121, 4
  %5123 = trunc i32 %5122 to i8
  %5124 = and i8 %5123, 1
  store i8 %5124, i8* %79, align 1
  %5125 = icmp eq i32 %5108, 0
  %5126 = zext i1 %5125 to i8
  store i8 %5126, i8* %82, align 1
  %5127 = lshr i32 %5108, 31
  %5128 = trunc i32 %5127 to i8
  store i8 %5128, i8* %85, align 1
  %5129 = lshr i32 %5107, 31
  %5130 = xor i32 %5127, %5066
  %5131 = xor i32 %5127, %5129
  %5132 = add nuw nsw i32 %5130, %5131
  %5133 = icmp eq i32 %5132, 2
  %5134 = zext i1 %5133 to i8
  store i8 %5134, i8* %91, align 1
  %5135 = add i64 %5068, -56
  %5136 = add i64 %392, 2112
  store i64 %5136, i64* %3, align 8
  %5137 = inttoptr i64 %5135 to i32*
  %5138 = load i32, i32* %5137, align 4
  %5139 = zext i32 %5138 to i64
  store i64 %5139, i64* %RSI.i2547, align 8
  %5140 = add i64 %392, 2116
  store i64 %5140, i64* %3, align 8
  %5141 = load i64, i64* %5076, align 8
  store i64 %5141, i64* %RCX.i2541, align 8
  %5142 = add i64 %5141, 20
  %5143 = add i64 %392, 2120
  store i64 %5143, i64* %3, align 8
  %5144 = inttoptr i64 %5142 to i32*
  %5145 = load i32, i32* %5144, align 4
  %5146 = sext i32 %5138 to i64
  %5147 = sext i32 %5145 to i64
  %5148 = mul nsw i64 %5147, %5146
  %5149 = and i64 %5148, 4294967295
  store i64 %5149, i64* %RSI.i2547, align 8
  %5150 = trunc i64 %5148 to i32
  %5151 = add i32 %5150, %5108
  %5152 = zext i32 %5151 to i64
  store i64 %5152, i64* %RDX.i2544, align 8
  %5153 = icmp ult i32 %5151, %5108
  %5154 = icmp ult i32 %5151, %5150
  %5155 = or i1 %5153, %5154
  %5156 = zext i1 %5155 to i8
  store i8 %5156, i8* %68, align 1
  %5157 = and i32 %5151, 255
  %5158 = tail call i32 @llvm.ctpop.i32(i32 %5157)
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = xor i8 %5160, 1
  store i8 %5161, i8* %74, align 1
  %5162 = xor i64 %5148, %5109
  %5163 = trunc i64 %5162 to i32
  %5164 = xor i32 %5163, %5151
  %5165 = lshr i32 %5164, 4
  %5166 = trunc i32 %5165 to i8
  %5167 = and i8 %5166, 1
  store i8 %5167, i8* %79, align 1
  %5168 = icmp eq i32 %5151, 0
  %5169 = zext i1 %5168 to i8
  store i8 %5169, i8* %82, align 1
  %5170 = lshr i32 %5151, 31
  %5171 = trunc i32 %5170 to i8
  store i8 %5171, i8* %85, align 1
  %5172 = lshr i32 %5150, 31
  %5173 = xor i32 %5170, %5127
  %5174 = xor i32 %5170, %5172
  %5175 = add nuw nsw i32 %5173, %5174
  %5176 = icmp eq i32 %5175, 2
  %5177 = zext i1 %5176 to i8
  store i8 %5177, i8* %91, align 1
  %5178 = add i64 %5068, -60
  %5179 = add i64 %392, 2125
  store i64 %5179, i64* %3, align 8
  %5180 = inttoptr i64 %5178 to i32*
  %5181 = load i32, i32* %5180, align 4
  %5182 = add i32 %5181, %5151
  %5183 = zext i32 %5182 to i64
  store i64 %5183, i64* %RDX.i2544, align 8
  %5184 = icmp ult i32 %5182, %5151
  %5185 = icmp ult i32 %5182, %5181
  %5186 = or i1 %5184, %5185
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %68, align 1
  %5188 = and i32 %5182, 255
  %5189 = tail call i32 @llvm.ctpop.i32(i32 %5188)
  %5190 = trunc i32 %5189 to i8
  %5191 = and i8 %5190, 1
  %5192 = xor i8 %5191, 1
  store i8 %5192, i8* %74, align 1
  %5193 = xor i32 %5181, %5151
  %5194 = xor i32 %5193, %5182
  %5195 = lshr i32 %5194, 4
  %5196 = trunc i32 %5195 to i8
  %5197 = and i8 %5196, 1
  store i8 %5197, i8* %79, align 1
  %5198 = icmp eq i32 %5182, 0
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %82, align 1
  %5200 = lshr i32 %5182, 31
  %5201 = trunc i32 %5200 to i8
  store i8 %5201, i8* %85, align 1
  %5202 = lshr i32 %5181, 31
  %5203 = xor i32 %5200, %5170
  %5204 = xor i32 %5200, %5202
  %5205 = add nuw nsw i32 %5203, %5204
  %5206 = icmp eq i32 %5205, 2
  %5207 = zext i1 %5206 to i8
  store i8 %5207, i8* %91, align 1
  %5208 = sext i32 %5182 to i64
  store i64 %5208, i64* %RCX.i2541, align 8
  %5209 = load i64, i64* %RAX.i2556, align 8
  %5210 = shl nsw i64 %5208, 2
  %5211 = add i64 %5210, %5209
  %5212 = add i64 %392, 2133
  store i64 %5212, i64* %3, align 8
  %5213 = inttoptr i64 %5211 to i32*
  %5214 = load i32, i32* %5213, align 4
  store i32 %5214, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %5215 = load i64, i64* %RBP.i, align 8
  %5216 = add i64 %5215, -40
  %5217 = add i64 %392, 2137
  store i64 %5217, i64* %3, align 8
  %5218 = inttoptr i64 %5216 to i64*
  %5219 = load i64, i64* %5218, align 8
  store i64 %5219, i64* %RAX.i2556, align 8
  %5220 = add i64 %392, 2140
  store i64 %5220, i64* %3, align 8
  %5221 = inttoptr i64 %5219 to i64*
  %5222 = load i64, i64* %5221, align 8
  store i64 %5222, i64* %RAX.i2556, align 8
  %5223 = add i64 %392, 2144
  store i64 %5223, i64* %3, align 8
  %5224 = load i64, i64* %5218, align 8
  store i64 %5224, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5225 = add i64 %392, 2152
  store i64 %5225, i64* %3, align 8
  %5226 = load i64, i64* %5218, align 8
  store i64 %5226, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5227 = add i64 %392, 2160
  store i64 %5227, i64* %3, align 8
  %5228 = load i64, i64* %5218, align 8
  store i64 %5228, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5229 = add i64 %5215, -52
  %5230 = add i64 %392, 2167
  store i64 %5230, i64* %3, align 8
  %5231 = inttoptr i64 %5229 to i32*
  %5232 = load i32, i32* %5231, align 4
  %5233 = zext i32 %5232 to i64
  store i64 %5233, i64* %RSI.i2547, align 8
  %5234 = add i64 %392, 2171
  store i64 %5234, i64* %3, align 8
  %5235 = load i64, i64* %5218, align 8
  store i64 %5235, i64* %RCX.i2541, align 8
  %5236 = add i64 %5235, 16
  %5237 = add i64 %392, 2175
  store i64 %5237, i64* %3, align 8
  %5238 = inttoptr i64 %5236 to i32*
  %5239 = load i32, i32* %5238, align 4
  %5240 = sext i32 %5232 to i64
  %5241 = sext i32 %5239 to i64
  %5242 = mul nsw i64 %5241, %5240
  %5243 = trunc i64 %5242 to i32
  %5244 = and i64 %5242, 4294967295
  store i64 %5244, i64* %RSI.i2547, align 8
  %5245 = shl i64 %5242, 32
  %5246 = ashr exact i64 %5245, 32
  %5247 = icmp ne i64 %5246, %5242
  %5248 = zext i1 %5247 to i8
  store i8 %5248, i8* %68, align 1
  %5249 = and i32 %5243, 255
  %5250 = tail call i32 @llvm.ctpop.i32(i32 %5249)
  %5251 = trunc i32 %5250 to i8
  %5252 = and i8 %5251, 1
  %5253 = xor i8 %5252, 1
  store i8 %5253, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5254 = lshr i32 %5243, 31
  %5255 = trunc i32 %5254 to i8
  store i8 %5255, i8* %85, align 1
  store i8 %5248, i8* %91, align 1
  %5256 = add i64 %392, 2179
  store i64 %5256, i64* %3, align 8
  %5257 = load i64, i64* %5218, align 8
  store i64 %5257, i64* %RCX.i2541, align 8
  %5258 = add i64 %5257, 20
  %5259 = add i64 %392, 2183
  store i64 %5259, i64* %3, align 8
  %5260 = inttoptr i64 %5258 to i32*
  %5261 = load i32, i32* %5260, align 4
  %5262 = sext i32 %5261 to i64
  %5263 = mul nsw i64 %5262, %5246
  %5264 = and i64 %5263, 4294967295
  store i64 %5264, i64* %RSI.i2547, align 8
  %5265 = trunc i64 %5263 to i32
  store i64 %5264, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5266 = and i32 %5265, 255
  %5267 = tail call i32 @llvm.ctpop.i32(i32 %5266)
  %5268 = trunc i32 %5267 to i8
  %5269 = and i8 %5268, 1
  %5270 = xor i8 %5269, 1
  store i8 %5270, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5271 = icmp eq i32 %5265, 0
  %5272 = zext i1 %5271 to i8
  store i8 %5272, i8* %82, align 1
  %5273 = lshr i32 %5265, 31
  %5274 = trunc i32 %5273 to i8
  store i8 %5274, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5275 = load i64, i64* %RBP.i, align 8
  %5276 = add i64 %5275, -56
  %5277 = add i64 %392, 2188
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = zext i32 %5279 to i64
  store i64 %5280, i64* %RSI.i2547, align 8
  %5281 = add i64 %5275, -40
  %5282 = add i64 %392, 2192
  store i64 %5282, i64* %3, align 8
  %5283 = inttoptr i64 %5281 to i64*
  %5284 = load i64, i64* %5283, align 8
  store i64 %5284, i64* %RCX.i2541, align 8
  %5285 = add i64 %5284, 20
  %5286 = add i64 %392, 2196
  store i64 %5286, i64* %3, align 8
  %5287 = inttoptr i64 %5285 to i32*
  %5288 = load i32, i32* %5287, align 4
  %5289 = sext i32 %5279 to i64
  %5290 = sext i32 %5288 to i64
  %5291 = mul nsw i64 %5290, %5289
  %5292 = and i64 %5291, 4294967295
  store i64 %5292, i64* %RSI.i2547, align 8
  %5293 = trunc i64 %5291 to i32
  %5294 = add i32 %5293, %5265
  %5295 = zext i32 %5294 to i64
  store i64 %5295, i64* %RDX.i2544, align 8
  %5296 = icmp ult i32 %5294, %5265
  %5297 = icmp ult i32 %5294, %5293
  %5298 = or i1 %5296, %5297
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %68, align 1
  %5300 = and i32 %5294, 255
  %5301 = tail call i32 @llvm.ctpop.i32(i32 %5300)
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  store i8 %5304, i8* %74, align 1
  %5305 = xor i64 %5291, %5263
  %5306 = trunc i64 %5305 to i32
  %5307 = xor i32 %5306, %5294
  %5308 = lshr i32 %5307, 4
  %5309 = trunc i32 %5308 to i8
  %5310 = and i8 %5309, 1
  store i8 %5310, i8* %79, align 1
  %5311 = icmp eq i32 %5294, 0
  %5312 = zext i1 %5311 to i8
  store i8 %5312, i8* %82, align 1
  %5313 = lshr i32 %5294, 31
  %5314 = trunc i32 %5313 to i8
  store i8 %5314, i8* %85, align 1
  %5315 = lshr i32 %5293, 31
  %5316 = xor i32 %5313, %5273
  %5317 = xor i32 %5313, %5315
  %5318 = add nuw nsw i32 %5316, %5317
  %5319 = icmp eq i32 %5318, 2
  %5320 = zext i1 %5319 to i8
  store i8 %5320, i8* %91, align 1
  %5321 = add i64 %5275, -60
  %5322 = add i64 %392, 2201
  store i64 %5322, i64* %3, align 8
  %5323 = inttoptr i64 %5321 to i32*
  %5324 = load i32, i32* %5323, align 4
  %5325 = add i32 %5324, -1
  %5326 = zext i32 %5325 to i64
  store i64 %5326, i64* %RSI.i2547, align 8
  %5327 = lshr i32 %5325, 31
  %5328 = add i32 %5325, %5294
  %5329 = zext i32 %5328 to i64
  store i64 %5329, i64* %RDX.i2544, align 8
  %5330 = icmp ult i32 %5328, %5294
  %5331 = icmp ult i32 %5328, %5325
  %5332 = or i1 %5330, %5331
  %5333 = zext i1 %5332 to i8
  store i8 %5333, i8* %68, align 1
  %5334 = and i32 %5328, 255
  %5335 = tail call i32 @llvm.ctpop.i32(i32 %5334)
  %5336 = trunc i32 %5335 to i8
  %5337 = and i8 %5336, 1
  %5338 = xor i8 %5337, 1
  store i8 %5338, i8* %74, align 1
  %5339 = xor i32 %5325, %5294
  %5340 = xor i32 %5339, %5328
  %5341 = lshr i32 %5340, 4
  %5342 = trunc i32 %5341 to i8
  %5343 = and i8 %5342, 1
  store i8 %5343, i8* %79, align 1
  %5344 = icmp eq i32 %5328, 0
  %5345 = zext i1 %5344 to i8
  store i8 %5345, i8* %82, align 1
  %5346 = lshr i32 %5328, 31
  %5347 = trunc i32 %5346 to i8
  store i8 %5347, i8* %85, align 1
  %5348 = xor i32 %5346, %5313
  %5349 = xor i32 %5346, %5327
  %5350 = add nuw nsw i32 %5348, %5349
  %5351 = icmp eq i32 %5350, 2
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %91, align 1
  %5353 = sext i32 %5328 to i64
  store i64 %5353, i64* %RCX.i2541, align 8
  %5354 = load i64, i64* %RAX.i2556, align 8
  %5355 = shl nsw i64 %5353, 2
  %5356 = add i64 %5355, %5354
  %5357 = add i64 %392, 2214
  store i64 %5357, i64* %3, align 8
  %5358 = load <2 x float>, <2 x float>* %206, align 1
  %5359 = load <2 x i32>, <2 x i32>* %207, align 1
  %5360 = inttoptr i64 %5356 to float*
  %5361 = load float, float* %5360, align 4
  %5362 = extractelement <2 x float> %5358, i32 0
  %5363 = fmul float %5362, %5361
  store float %5363, float* %199, align 1
  %5364 = bitcast <2 x float> %5358 to <2 x i32>
  %5365 = extractelement <2 x i32> %5364, i32 1
  store i32 %5365, i32* %208, align 1
  %5366 = extractelement <2 x i32> %5359, i32 0
  store i32 %5366, i32* %209, align 1
  %5367 = extractelement <2 x i32> %5359, i32 1
  store i32 %5367, i32* %210, align 1
  %5368 = load <2 x float>, <2 x float>* %191, align 1
  %5369 = load <2 x i32>, <2 x i32>* %196, align 1
  %5370 = load <2 x float>, <2 x float>* %206, align 1
  %5371 = extractelement <2 x float> %5368, i32 0
  %5372 = extractelement <2 x float> %5370, i32 0
  %5373 = fadd float %5371, %5372
  store float %5373, float* %192, align 1
  %5374 = bitcast <2 x float> %5368 to <2 x i32>
  %5375 = extractelement <2 x i32> %5374, i32 1
  store i32 %5375, i32* %187, align 1
  %5376 = extractelement <2 x i32> %5369, i32 0
  store i32 %5376, i32* %188, align 1
  %5377 = extractelement <2 x i32> %5369, i32 1
  store i32 %5377, i32* %190, align 1
  %5378 = load i64, i64* %RBP.i, align 8
  %5379 = add i64 %5378, 16
  %5380 = add i64 %392, 2222
  store i64 %5380, i64* %3, align 8
  %5381 = inttoptr i64 %5379 to i64*
  %5382 = load i64, i64* %5381, align 8
  store i64 %5382, i64* %RAX.i2556, align 8
  %5383 = add i64 %392, 2225
  store i64 %5383, i64* %3, align 8
  %5384 = inttoptr i64 %5382 to i64*
  %5385 = load i64, i64* %5384, align 8
  store i64 %5385, i64* %RAX.i2556, align 8
  %5386 = add i64 %392, 2229
  store i64 %5386, i64* %3, align 8
  %5387 = load i64, i64* %5381, align 8
  store i64 %5387, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5388 = add i64 %392, 2237
  store i64 %5388, i64* %3, align 8
  %5389 = load i64, i64* %5381, align 8
  store i64 %5389, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5390 = add i64 %392, 2245
  store i64 %5390, i64* %3, align 8
  %5391 = load i64, i64* %5381, align 8
  store i64 %5391, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5392 = add i64 %5378, -52
  %5393 = add i64 %392, 2252
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = zext i32 %5395 to i64
  store i64 %5396, i64* %RSI.i2547, align 8
  %5397 = add i64 %392, 2256
  store i64 %5397, i64* %3, align 8
  %5398 = load i64, i64* %5381, align 8
  store i64 %5398, i64* %RCX.i2541, align 8
  %5399 = add i64 %5398, 16
  %5400 = add i64 %392, 2260
  store i64 %5400, i64* %3, align 8
  %5401 = inttoptr i64 %5399 to i32*
  %5402 = load i32, i32* %5401, align 4
  %5403 = sext i32 %5395 to i64
  %5404 = sext i32 %5402 to i64
  %5405 = mul nsw i64 %5404, %5403
  %5406 = trunc i64 %5405 to i32
  %5407 = and i64 %5405, 4294967295
  store i64 %5407, i64* %RSI.i2547, align 8
  %5408 = shl i64 %5405, 32
  %5409 = ashr exact i64 %5408, 32
  %5410 = icmp ne i64 %5409, %5405
  %5411 = zext i1 %5410 to i8
  store i8 %5411, i8* %68, align 1
  %5412 = and i32 %5406, 255
  %5413 = tail call i32 @llvm.ctpop.i32(i32 %5412)
  %5414 = trunc i32 %5413 to i8
  %5415 = and i8 %5414, 1
  %5416 = xor i8 %5415, 1
  store i8 %5416, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5417 = lshr i32 %5406, 31
  %5418 = trunc i32 %5417 to i8
  store i8 %5418, i8* %85, align 1
  store i8 %5411, i8* %91, align 1
  %5419 = add i64 %392, 2264
  store i64 %5419, i64* %3, align 8
  %5420 = load i64, i64* %5381, align 8
  store i64 %5420, i64* %RCX.i2541, align 8
  %5421 = add i64 %5420, 20
  %5422 = add i64 %392, 2268
  store i64 %5422, i64* %3, align 8
  %5423 = inttoptr i64 %5421 to i32*
  %5424 = load i32, i32* %5423, align 4
  %5425 = sext i32 %5424 to i64
  %5426 = mul nsw i64 %5425, %5409
  %5427 = and i64 %5426, 4294967295
  store i64 %5427, i64* %RSI.i2547, align 8
  %5428 = trunc i64 %5426 to i32
  store i64 %5427, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5429 = and i32 %5428, 255
  %5430 = tail call i32 @llvm.ctpop.i32(i32 %5429)
  %5431 = trunc i32 %5430 to i8
  %5432 = and i8 %5431, 1
  %5433 = xor i8 %5432, 1
  store i8 %5433, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5434 = icmp eq i32 %5428, 0
  %5435 = zext i1 %5434 to i8
  store i8 %5435, i8* %82, align 1
  %5436 = lshr i32 %5428, 31
  %5437 = trunc i32 %5436 to i8
  store i8 %5437, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5438 = load i64, i64* %RBP.i, align 8
  %5439 = add i64 %5438, -56
  %5440 = add i64 %392, 2273
  store i64 %5440, i64* %3, align 8
  %5441 = inttoptr i64 %5439 to i32*
  %5442 = load i32, i32* %5441, align 4
  %5443 = zext i32 %5442 to i64
  store i64 %5443, i64* %RSI.i2547, align 8
  %5444 = add i64 %5438, 16
  %5445 = add i64 %392, 2277
  store i64 %5445, i64* %3, align 8
  %5446 = inttoptr i64 %5444 to i64*
  %5447 = load i64, i64* %5446, align 8
  store i64 %5447, i64* %RCX.i2541, align 8
  %5448 = add i64 %5447, 20
  %5449 = add i64 %392, 2281
  store i64 %5449, i64* %3, align 8
  %5450 = inttoptr i64 %5448 to i32*
  %5451 = load i32, i32* %5450, align 4
  %5452 = sext i32 %5442 to i64
  %5453 = sext i32 %5451 to i64
  %5454 = mul nsw i64 %5453, %5452
  %5455 = and i64 %5454, 4294967295
  store i64 %5455, i64* %RSI.i2547, align 8
  %5456 = trunc i64 %5454 to i32
  %5457 = add i32 %5456, %5428
  %5458 = zext i32 %5457 to i64
  store i64 %5458, i64* %RDX.i2544, align 8
  %5459 = icmp ult i32 %5457, %5428
  %5460 = icmp ult i32 %5457, %5456
  %5461 = or i1 %5459, %5460
  %5462 = zext i1 %5461 to i8
  store i8 %5462, i8* %68, align 1
  %5463 = and i32 %5457, 255
  %5464 = tail call i32 @llvm.ctpop.i32(i32 %5463)
  %5465 = trunc i32 %5464 to i8
  %5466 = and i8 %5465, 1
  %5467 = xor i8 %5466, 1
  store i8 %5467, i8* %74, align 1
  %5468 = xor i64 %5454, %5426
  %5469 = trunc i64 %5468 to i32
  %5470 = xor i32 %5469, %5457
  %5471 = lshr i32 %5470, 4
  %5472 = trunc i32 %5471 to i8
  %5473 = and i8 %5472, 1
  store i8 %5473, i8* %79, align 1
  %5474 = icmp eq i32 %5457, 0
  %5475 = zext i1 %5474 to i8
  store i8 %5475, i8* %82, align 1
  %5476 = lshr i32 %5457, 31
  %5477 = trunc i32 %5476 to i8
  store i8 %5477, i8* %85, align 1
  %5478 = lshr i32 %5456, 31
  %5479 = xor i32 %5476, %5436
  %5480 = xor i32 %5476, %5478
  %5481 = add nuw nsw i32 %5479, %5480
  %5482 = icmp eq i32 %5481, 2
  %5483 = zext i1 %5482 to i8
  store i8 %5483, i8* %91, align 1
  %5484 = add i64 %5438, -60
  %5485 = add i64 %392, 2286
  store i64 %5485, i64* %3, align 8
  %5486 = inttoptr i64 %5484 to i32*
  %5487 = load i32, i32* %5486, align 4
  %5488 = add i32 %5487, %5457
  %5489 = zext i32 %5488 to i64
  store i64 %5489, i64* %RDX.i2544, align 8
  %5490 = icmp ult i32 %5488, %5457
  %5491 = icmp ult i32 %5488, %5487
  %5492 = or i1 %5490, %5491
  %5493 = zext i1 %5492 to i8
  store i8 %5493, i8* %68, align 1
  %5494 = and i32 %5488, 255
  %5495 = tail call i32 @llvm.ctpop.i32(i32 %5494)
  %5496 = trunc i32 %5495 to i8
  %5497 = and i8 %5496, 1
  %5498 = xor i8 %5497, 1
  store i8 %5498, i8* %74, align 1
  %5499 = xor i32 %5487, %5457
  %5500 = xor i32 %5499, %5488
  %5501 = lshr i32 %5500, 4
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  store i8 %5503, i8* %79, align 1
  %5504 = icmp eq i32 %5488, 0
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %82, align 1
  %5506 = lshr i32 %5488, 31
  %5507 = trunc i32 %5506 to i8
  store i8 %5507, i8* %85, align 1
  %5508 = lshr i32 %5487, 31
  %5509 = xor i32 %5506, %5476
  %5510 = xor i32 %5506, %5508
  %5511 = add nuw nsw i32 %5509, %5510
  %5512 = icmp eq i32 %5511, 2
  %5513 = zext i1 %5512 to i8
  store i8 %5513, i8* %91, align 1
  %5514 = sext i32 %5488 to i64
  store i64 %5514, i64* %RCX.i2541, align 8
  %5515 = load i64, i64* %RAX.i2556, align 8
  %5516 = shl nsw i64 %5514, 2
  %5517 = add i64 %5516, %5515
  %5518 = add i64 %392, 2294
  store i64 %5518, i64* %3, align 8
  %5519 = load <2 x float>, <2 x float>* %191, align 1
  %5520 = load <2 x i32>, <2 x i32>* %196, align 1
  %5521 = inttoptr i64 %5517 to float*
  %5522 = load float, float* %5521, align 4
  %5523 = extractelement <2 x float> %5519, i32 0
  %5524 = fadd float %5523, %5522
  store float %5524, float* %192, align 1
  %5525 = bitcast <2 x float> %5519 to <2 x i32>
  %5526 = extractelement <2 x i32> %5525, i32 1
  store i32 %5526, i32* %187, align 1
  %5527 = extractelement <2 x i32> %5520, i32 0
  store i32 %5527, i32* %188, align 1
  %5528 = extractelement <2 x i32> %5520, i32 1
  store i32 %5528, i32* %190, align 1
  %5529 = load i64, i64* %RBP.i, align 8
  %5530 = add i64 %5529, -84
  %5531 = add i64 %392, 2299
  store i64 %5531, i64* %3, align 8
  %5532 = load <2 x float>, <2 x float>* %191, align 1
  %5533 = extractelement <2 x float> %5532, i32 0
  %5534 = inttoptr i64 %5530 to float*
  store float %5533, float* %5534, align 4
  %5535 = load i64, i64* %RBP.i, align 8
  %5536 = add i64 %5535, -84
  %5537 = load i64, i64* %3, align 8
  %5538 = add i64 %5537, 5
  store i64 %5538, i64* %3, align 8
  %5539 = inttoptr i64 %5536 to i32*
  %5540 = load i32, i32* %5539, align 4
  store i32 %5540, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %5541 = add i64 %5535, -16
  %5542 = add i64 %5537, 9
  store i64 %5542, i64* %3, align 8
  %5543 = inttoptr i64 %5541 to i64*
  %5544 = load i64, i64* %5543, align 8
  store i64 %5544, i64* %RAX.i2556, align 8
  %5545 = add i64 %5537, 12
  store i64 %5545, i64* %3, align 8
  %5546 = inttoptr i64 %5544 to i64*
  %5547 = load i64, i64* %5546, align 8
  store i64 %5547, i64* %RAX.i2556, align 8
  %5548 = add i64 %5537, 16
  store i64 %5548, i64* %3, align 8
  %5549 = load i64, i64* %5543, align 8
  store i64 %5549, i64* %RCX.i2541, align 8
  %5550 = add i64 %5549, 12
  %5551 = add i64 %5537, 20
  store i64 %5551, i64* %3, align 8
  %5552 = inttoptr i64 %5550 to i32*
  %5553 = load i32, i32* %5552, align 4
  %5554 = sext i32 %5553 to i64
  %5555 = mul nsw i64 %5554, 3
  %5556 = trunc i64 %5555 to i32
  %5557 = and i64 %5555, 4294967295
  store i64 %5557, i64* %RDX.i2544, align 8
  %5558 = mul i64 %5554, 12884901888
  %5559 = ashr exact i64 %5558, 32
  %5560 = icmp ne i64 %5559, %5555
  %5561 = zext i1 %5560 to i8
  store i8 %5561, i8* %68, align 1
  %5562 = and i32 %5556, 255
  %5563 = tail call i32 @llvm.ctpop.i32(i32 %5562)
  %5564 = trunc i32 %5563 to i8
  %5565 = and i8 %5564, 1
  %5566 = xor i8 %5565, 1
  store i8 %5566, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5567 = lshr i32 %5556, 31
  %5568 = trunc i32 %5567 to i8
  store i8 %5568, i8* %85, align 1
  store i8 %5561, i8* %91, align 1
  %5569 = add i64 %5537, 24
  store i64 %5569, i64* %3, align 8
  %5570 = load i64, i64* %5543, align 8
  store i64 %5570, i64* %RCX.i2541, align 8
  %5571 = add i64 %5570, 16
  %5572 = add i64 %5537, 28
  store i64 %5572, i64* %3, align 8
  %5573 = inttoptr i64 %5571 to i32*
  %5574 = load i32, i32* %5573, align 4
  %5575 = sext i32 %5574 to i64
  %5576 = mul nsw i64 %5575, %5559
  %5577 = trunc i64 %5576 to i32
  %5578 = and i64 %5576, 4294967295
  store i64 %5578, i64* %RDX.i2544, align 8
  %5579 = shl i64 %5576, 32
  %5580 = ashr exact i64 %5579, 32
  %5581 = icmp ne i64 %5580, %5576
  %5582 = zext i1 %5581 to i8
  store i8 %5582, i8* %68, align 1
  %5583 = and i32 %5577, 255
  %5584 = tail call i32 @llvm.ctpop.i32(i32 %5583)
  %5585 = trunc i32 %5584 to i8
  %5586 = and i8 %5585, 1
  %5587 = xor i8 %5586, 1
  store i8 %5587, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5588 = lshr i32 %5577, 31
  %5589 = trunc i32 %5588 to i8
  store i8 %5589, i8* %85, align 1
  store i8 %5582, i8* %91, align 1
  %5590 = add i64 %5537, 32
  store i64 %5590, i64* %3, align 8
  %5591 = load i64, i64* %5543, align 8
  store i64 %5591, i64* %RCX.i2541, align 8
  %5592 = add i64 %5591, 20
  %5593 = add i64 %5537, 36
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i32*
  %5595 = load i32, i32* %5594, align 4
  %5596 = sext i32 %5595 to i64
  %5597 = mul nsw i64 %5596, %5580
  %5598 = trunc i64 %5597 to i32
  %5599 = and i64 %5597, 4294967295
  store i64 %5599, i64* %RDX.i2544, align 8
  %5600 = shl i64 %5597, 32
  %5601 = ashr exact i64 %5600, 32
  %5602 = icmp ne i64 %5601, %5597
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %68, align 1
  %5604 = and i32 %5598, 255
  %5605 = tail call i32 @llvm.ctpop.i32(i32 %5604)
  %5606 = trunc i32 %5605 to i8
  %5607 = and i8 %5606, 1
  %5608 = xor i8 %5607, 1
  store i8 %5608, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5609 = lshr i32 %5598, 31
  %5610 = trunc i32 %5609 to i8
  store i8 %5610, i8* %85, align 1
  store i8 %5603, i8* %91, align 1
  %5611 = load i64, i64* %RBP.i, align 8
  %5612 = add i64 %5611, -52
  %5613 = add i64 %5537, 39
  store i64 %5613, i64* %3, align 8
  %5614 = inttoptr i64 %5612 to i32*
  %5615 = load i32, i32* %5614, align 4
  %5616 = zext i32 %5615 to i64
  store i64 %5616, i64* %RSI.i2547, align 8
  %5617 = add i64 %5611, -16
  %5618 = add i64 %5537, 43
  store i64 %5618, i64* %3, align 8
  %5619 = inttoptr i64 %5617 to i64*
  %5620 = load i64, i64* %5619, align 8
  store i64 %5620, i64* %RCX.i2541, align 8
  %5621 = add i64 %5620, 16
  %5622 = add i64 %5537, 47
  store i64 %5622, i64* %3, align 8
  %5623 = inttoptr i64 %5621 to i32*
  %5624 = load i32, i32* %5623, align 4
  %5625 = sext i32 %5615 to i64
  %5626 = sext i32 %5624 to i64
  %5627 = mul nsw i64 %5626, %5625
  %5628 = trunc i64 %5627 to i32
  %5629 = and i64 %5627, 4294967295
  store i64 %5629, i64* %RSI.i2547, align 8
  %5630 = shl i64 %5627, 32
  %5631 = ashr exact i64 %5630, 32
  %5632 = icmp ne i64 %5631, %5627
  %5633 = zext i1 %5632 to i8
  store i8 %5633, i8* %68, align 1
  %5634 = and i32 %5628, 255
  %5635 = tail call i32 @llvm.ctpop.i32(i32 %5634)
  %5636 = trunc i32 %5635 to i8
  %5637 = and i8 %5636, 1
  %5638 = xor i8 %5637, 1
  store i8 %5638, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5639 = lshr i32 %5628, 31
  %5640 = trunc i32 %5639 to i8
  store i8 %5640, i8* %85, align 1
  store i8 %5633, i8* %91, align 1
  %5641 = add i64 %5537, 51
  store i64 %5641, i64* %3, align 8
  %5642 = load i64, i64* %5619, align 8
  store i64 %5642, i64* %RCX.i2541, align 8
  %5643 = add i64 %5642, 20
  %5644 = add i64 %5537, 55
  store i64 %5644, i64* %3, align 8
  %5645 = inttoptr i64 %5643 to i32*
  %5646 = load i32, i32* %5645, align 4
  %5647 = sext i32 %5646 to i64
  %5648 = mul nsw i64 %5647, %5631
  %5649 = and i64 %5648, 4294967295
  store i64 %5649, i64* %RSI.i2547, align 8
  %5650 = trunc i64 %5648 to i32
  %5651 = add i32 %5650, %5598
  %5652 = zext i32 %5651 to i64
  store i64 %5652, i64* %RDX.i2544, align 8
  %5653 = icmp ult i32 %5651, %5598
  %5654 = icmp ult i32 %5651, %5650
  %5655 = or i1 %5653, %5654
  %5656 = zext i1 %5655 to i8
  store i8 %5656, i8* %68, align 1
  %5657 = and i32 %5651, 255
  %5658 = tail call i32 @llvm.ctpop.i32(i32 %5657)
  %5659 = trunc i32 %5658 to i8
  %5660 = and i8 %5659, 1
  %5661 = xor i8 %5660, 1
  store i8 %5661, i8* %74, align 1
  %5662 = xor i64 %5648, %5597
  %5663 = trunc i64 %5662 to i32
  %5664 = xor i32 %5663, %5651
  %5665 = lshr i32 %5664, 4
  %5666 = trunc i32 %5665 to i8
  %5667 = and i8 %5666, 1
  store i8 %5667, i8* %79, align 1
  %5668 = icmp eq i32 %5651, 0
  %5669 = zext i1 %5668 to i8
  store i8 %5669, i8* %82, align 1
  %5670 = lshr i32 %5651, 31
  %5671 = trunc i32 %5670 to i8
  store i8 %5671, i8* %85, align 1
  %5672 = lshr i32 %5650, 31
  %5673 = xor i32 %5670, %5609
  %5674 = xor i32 %5670, %5672
  %5675 = add nuw nsw i32 %5673, %5674
  %5676 = icmp eq i32 %5675, 2
  %5677 = zext i1 %5676 to i8
  store i8 %5677, i8* %91, align 1
  %5678 = add i64 %5611, -56
  %5679 = add i64 %5537, 60
  store i64 %5679, i64* %3, align 8
  %5680 = inttoptr i64 %5678 to i32*
  %5681 = load i32, i32* %5680, align 4
  %5682 = zext i32 %5681 to i64
  store i64 %5682, i64* %RSI.i2547, align 8
  %5683 = add i64 %5537, 64
  store i64 %5683, i64* %3, align 8
  %5684 = load i64, i64* %5619, align 8
  store i64 %5684, i64* %RCX.i2541, align 8
  %5685 = add i64 %5684, 20
  %5686 = add i64 %5537, 68
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = sext i32 %5681 to i64
  %5690 = sext i32 %5688 to i64
  %5691 = mul nsw i64 %5690, %5689
  %5692 = and i64 %5691, 4294967295
  store i64 %5692, i64* %RSI.i2547, align 8
  %5693 = trunc i64 %5691 to i32
  %5694 = add i32 %5693, %5651
  %5695 = zext i32 %5694 to i64
  store i64 %5695, i64* %RDX.i2544, align 8
  %5696 = icmp ult i32 %5694, %5651
  %5697 = icmp ult i32 %5694, %5693
  %5698 = or i1 %5696, %5697
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %68, align 1
  %5700 = and i32 %5694, 255
  %5701 = tail call i32 @llvm.ctpop.i32(i32 %5700)
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = xor i8 %5703, 1
  store i8 %5704, i8* %74, align 1
  %5705 = xor i64 %5691, %5652
  %5706 = trunc i64 %5705 to i32
  %5707 = xor i32 %5706, %5694
  %5708 = lshr i32 %5707, 4
  %5709 = trunc i32 %5708 to i8
  %5710 = and i8 %5709, 1
  store i8 %5710, i8* %79, align 1
  %5711 = icmp eq i32 %5694, 0
  %5712 = zext i1 %5711 to i8
  store i8 %5712, i8* %82, align 1
  %5713 = lshr i32 %5694, 31
  %5714 = trunc i32 %5713 to i8
  store i8 %5714, i8* %85, align 1
  %5715 = lshr i32 %5693, 31
  %5716 = xor i32 %5713, %5670
  %5717 = xor i32 %5713, %5715
  %5718 = add nuw nsw i32 %5716, %5717
  %5719 = icmp eq i32 %5718, 2
  %5720 = zext i1 %5719 to i8
  store i8 %5720, i8* %91, align 1
  %5721 = add i64 %5611, -60
  %5722 = add i64 %5537, 73
  store i64 %5722, i64* %3, align 8
  %5723 = inttoptr i64 %5721 to i32*
  %5724 = load i32, i32* %5723, align 4
  %5725 = add i32 %5724, %5694
  %5726 = zext i32 %5725 to i64
  store i64 %5726, i64* %RDX.i2544, align 8
  %5727 = icmp ult i32 %5725, %5694
  %5728 = icmp ult i32 %5725, %5724
  %5729 = or i1 %5727, %5728
  %5730 = zext i1 %5729 to i8
  store i8 %5730, i8* %68, align 1
  %5731 = and i32 %5725, 255
  %5732 = tail call i32 @llvm.ctpop.i32(i32 %5731)
  %5733 = trunc i32 %5732 to i8
  %5734 = and i8 %5733, 1
  %5735 = xor i8 %5734, 1
  store i8 %5735, i8* %74, align 1
  %5736 = xor i32 %5724, %5694
  %5737 = xor i32 %5736, %5725
  %5738 = lshr i32 %5737, 4
  %5739 = trunc i32 %5738 to i8
  %5740 = and i8 %5739, 1
  store i8 %5740, i8* %79, align 1
  %5741 = icmp eq i32 %5725, 0
  %5742 = zext i1 %5741 to i8
  store i8 %5742, i8* %82, align 1
  %5743 = lshr i32 %5725, 31
  %5744 = trunc i32 %5743 to i8
  store i8 %5744, i8* %85, align 1
  %5745 = lshr i32 %5724, 31
  %5746 = xor i32 %5743, %5713
  %5747 = xor i32 %5743, %5745
  %5748 = add nuw nsw i32 %5746, %5747
  %5749 = icmp eq i32 %5748, 2
  %5750 = zext i1 %5749 to i8
  store i8 %5750, i8* %91, align 1
  %5751 = sext i32 %5725 to i64
  store i64 %5751, i64* %RCX.i2541, align 8
  %5752 = load i64, i64* %RAX.i2556, align 8
  %5753 = shl nsw i64 %5751, 2
  %5754 = add i64 %5753, %5752
  %5755 = add i64 %5537, 81
  store i64 %5755, i64* %3, align 8
  %5756 = load <2 x float>, <2 x float>* %191, align 1
  %5757 = load <2 x i32>, <2 x i32>* %196, align 1
  %5758 = inttoptr i64 %5754 to float*
  %5759 = load float, float* %5758, align 4
  %5760 = extractelement <2 x float> %5756, i32 0
  %5761 = fmul float %5760, %5759
  store float %5761, float* %192, align 1
  %5762 = bitcast <2 x float> %5756 to <2 x i32>
  %5763 = extractelement <2 x i32> %5762, i32 1
  store i32 %5763, i32* %187, align 1
  %5764 = extractelement <2 x i32> %5757, i32 0
  store i32 %5764, i32* %188, align 1
  %5765 = extractelement <2 x i32> %5757, i32 1
  store i32 %5765, i32* %190, align 1
  %5766 = load i64, i64* %RBP.i, align 8
  %5767 = add i64 %5766, -40
  %5768 = add i64 %5537, 85
  store i64 %5768, i64* %3, align 8
  %5769 = inttoptr i64 %5767 to i64*
  %5770 = load i64, i64* %5769, align 8
  store i64 %5770, i64* %RAX.i2556, align 8
  %5771 = add i64 %5537, 88
  store i64 %5771, i64* %3, align 8
  %5772 = inttoptr i64 %5770 to i64*
  %5773 = load i64, i64* %5772, align 8
  store i64 %5773, i64* %RAX.i2556, align 8
  %5774 = add i64 %5537, 92
  store i64 %5774, i64* %3, align 8
  %5775 = load i64, i64* %5769, align 8
  store i64 %5775, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5776 = add i64 %5537, 100
  store i64 %5776, i64* %3, align 8
  %5777 = load i64, i64* %5769, align 8
  store i64 %5777, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5778 = add i64 %5537, 108
  store i64 %5778, i64* %3, align 8
  %5779 = load i64, i64* %5769, align 8
  store i64 %5779, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5780 = add i64 %5766, -52
  %5781 = add i64 %5537, 115
  store i64 %5781, i64* %3, align 8
  %5782 = inttoptr i64 %5780 to i32*
  %5783 = load i32, i32* %5782, align 4
  %5784 = zext i32 %5783 to i64
  store i64 %5784, i64* %RSI.i2547, align 8
  %5785 = add i64 %5537, 119
  store i64 %5785, i64* %3, align 8
  %5786 = load i64, i64* %5769, align 8
  store i64 %5786, i64* %RCX.i2541, align 8
  %5787 = add i64 %5786, 16
  %5788 = add i64 %5537, 123
  store i64 %5788, i64* %3, align 8
  %5789 = inttoptr i64 %5787 to i32*
  %5790 = load i32, i32* %5789, align 4
  %5791 = sext i32 %5783 to i64
  %5792 = sext i32 %5790 to i64
  %5793 = mul nsw i64 %5792, %5791
  %5794 = trunc i64 %5793 to i32
  %5795 = and i64 %5793, 4294967295
  store i64 %5795, i64* %RSI.i2547, align 8
  %5796 = shl i64 %5793, 32
  %5797 = ashr exact i64 %5796, 32
  %5798 = icmp ne i64 %5797, %5793
  %5799 = zext i1 %5798 to i8
  store i8 %5799, i8* %68, align 1
  %5800 = and i32 %5794, 255
  %5801 = tail call i32 @llvm.ctpop.i32(i32 %5800)
  %5802 = trunc i32 %5801 to i8
  %5803 = and i8 %5802, 1
  %5804 = xor i8 %5803, 1
  store i8 %5804, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5805 = lshr i32 %5794, 31
  %5806 = trunc i32 %5805 to i8
  store i8 %5806, i8* %85, align 1
  store i8 %5799, i8* %91, align 1
  %5807 = add i64 %5537, 127
  store i64 %5807, i64* %3, align 8
  %5808 = load i64, i64* %5769, align 8
  store i64 %5808, i64* %RCX.i2541, align 8
  %5809 = add i64 %5808, 20
  %5810 = add i64 %5537, 131
  store i64 %5810, i64* %3, align 8
  %5811 = inttoptr i64 %5809 to i32*
  %5812 = load i32, i32* %5811, align 4
  %5813 = sext i32 %5812 to i64
  %5814 = mul nsw i64 %5813, %5797
  %5815 = and i64 %5814, 4294967295
  store i64 %5815, i64* %RSI.i2547, align 8
  %5816 = trunc i64 %5814 to i32
  store i64 %5815, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5817 = and i32 %5816, 255
  %5818 = tail call i32 @llvm.ctpop.i32(i32 %5817)
  %5819 = trunc i32 %5818 to i8
  %5820 = and i8 %5819, 1
  %5821 = xor i8 %5820, 1
  store i8 %5821, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5822 = icmp eq i32 %5816, 0
  %5823 = zext i1 %5822 to i8
  store i8 %5823, i8* %82, align 1
  %5824 = lshr i32 %5816, 31
  %5825 = trunc i32 %5824 to i8
  store i8 %5825, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5826 = load i64, i64* %RBP.i, align 8
  %5827 = add i64 %5826, -56
  %5828 = add i64 %5537, 136
  store i64 %5828, i64* %3, align 8
  %5829 = inttoptr i64 %5827 to i32*
  %5830 = load i32, i32* %5829, align 4
  %5831 = zext i32 %5830 to i64
  store i64 %5831, i64* %RSI.i2547, align 8
  %5832 = add i64 %5826, -40
  %5833 = add i64 %5537, 140
  store i64 %5833, i64* %3, align 8
  %5834 = inttoptr i64 %5832 to i64*
  %5835 = load i64, i64* %5834, align 8
  store i64 %5835, i64* %RCX.i2541, align 8
  %5836 = add i64 %5835, 20
  %5837 = add i64 %5537, 144
  store i64 %5837, i64* %3, align 8
  %5838 = inttoptr i64 %5836 to i32*
  %5839 = load i32, i32* %5838, align 4
  %5840 = sext i32 %5830 to i64
  %5841 = sext i32 %5839 to i64
  %5842 = mul nsw i64 %5841, %5840
  %5843 = and i64 %5842, 4294967295
  store i64 %5843, i64* %RSI.i2547, align 8
  %5844 = trunc i64 %5842 to i32
  %5845 = add i32 %5844, %5816
  %5846 = zext i32 %5845 to i64
  store i64 %5846, i64* %RDX.i2544, align 8
  %5847 = icmp ult i32 %5845, %5816
  %5848 = icmp ult i32 %5845, %5844
  %5849 = or i1 %5847, %5848
  %5850 = zext i1 %5849 to i8
  store i8 %5850, i8* %68, align 1
  %5851 = and i32 %5845, 255
  %5852 = tail call i32 @llvm.ctpop.i32(i32 %5851)
  %5853 = trunc i32 %5852 to i8
  %5854 = and i8 %5853, 1
  %5855 = xor i8 %5854, 1
  store i8 %5855, i8* %74, align 1
  %5856 = xor i64 %5842, %5814
  %5857 = trunc i64 %5856 to i32
  %5858 = xor i32 %5857, %5845
  %5859 = lshr i32 %5858, 4
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  store i8 %5861, i8* %79, align 1
  %5862 = icmp eq i32 %5845, 0
  %5863 = zext i1 %5862 to i8
  store i8 %5863, i8* %82, align 1
  %5864 = lshr i32 %5845, 31
  %5865 = trunc i32 %5864 to i8
  store i8 %5865, i8* %85, align 1
  %5866 = lshr i32 %5844, 31
  %5867 = xor i32 %5864, %5824
  %5868 = xor i32 %5864, %5866
  %5869 = add nuw nsw i32 %5867, %5868
  %5870 = icmp eq i32 %5869, 2
  %5871 = zext i1 %5870 to i8
  store i8 %5871, i8* %91, align 1
  %5872 = add i64 %5826, -60
  %5873 = add i64 %5537, 149
  store i64 %5873, i64* %3, align 8
  %5874 = inttoptr i64 %5872 to i32*
  %5875 = load i32, i32* %5874, align 4
  %5876 = add i32 %5875, %5845
  %5877 = zext i32 %5876 to i64
  store i64 %5877, i64* %RDX.i2544, align 8
  %5878 = icmp ult i32 %5876, %5845
  %5879 = icmp ult i32 %5876, %5875
  %5880 = or i1 %5878, %5879
  %5881 = zext i1 %5880 to i8
  store i8 %5881, i8* %68, align 1
  %5882 = and i32 %5876, 255
  %5883 = tail call i32 @llvm.ctpop.i32(i32 %5882)
  %5884 = trunc i32 %5883 to i8
  %5885 = and i8 %5884, 1
  %5886 = xor i8 %5885, 1
  store i8 %5886, i8* %74, align 1
  %5887 = xor i32 %5875, %5845
  %5888 = xor i32 %5887, %5876
  %5889 = lshr i32 %5888, 4
  %5890 = trunc i32 %5889 to i8
  %5891 = and i8 %5890, 1
  store i8 %5891, i8* %79, align 1
  %5892 = icmp eq i32 %5876, 0
  %5893 = zext i1 %5892 to i8
  store i8 %5893, i8* %82, align 1
  %5894 = lshr i32 %5876, 31
  %5895 = trunc i32 %5894 to i8
  store i8 %5895, i8* %85, align 1
  %5896 = lshr i32 %5875, 31
  %5897 = xor i32 %5894, %5864
  %5898 = xor i32 %5894, %5896
  %5899 = add nuw nsw i32 %5897, %5898
  %5900 = icmp eq i32 %5899, 2
  %5901 = zext i1 %5900 to i8
  store i8 %5901, i8* %91, align 1
  %5902 = sext i32 %5876 to i64
  store i64 %5902, i64* %RCX.i2541, align 8
  %5903 = load i64, i64* %RAX.i2556, align 8
  %5904 = shl nsw i64 %5902, 2
  %5905 = add i64 %5904, %5903
  %5906 = add i64 %5537, 157
  store i64 %5906, i64* %3, align 8
  %5907 = load <2 x float>, <2 x float>* %191, align 1
  %5908 = load <2 x i32>, <2 x i32>* %196, align 1
  %5909 = inttoptr i64 %5905 to float*
  %5910 = load float, float* %5909, align 4
  %5911 = extractelement <2 x float> %5907, i32 0
  %5912 = fsub float %5911, %5910
  store float %5912, float* %192, align 1
  %5913 = bitcast <2 x float> %5907 to <2 x i32>
  %5914 = extractelement <2 x i32> %5913, i32 1
  store i32 %5914, i32* %187, align 1
  %5915 = extractelement <2 x i32> %5908, i32 0
  store i32 %5915, i32* %188, align 1
  %5916 = extractelement <2 x i32> %5908, i32 1
  store i32 %5916, i32* %190, align 1
  %5917 = load i64, i64* %RBP.i, align 8
  %5918 = add i64 %5917, -48
  %5919 = add i64 %5537, 161
  store i64 %5919, i64* %3, align 8
  %5920 = inttoptr i64 %5918 to i64*
  %5921 = load i64, i64* %5920, align 8
  store i64 %5921, i64* %RAX.i2556, align 8
  %5922 = add i64 %5537, 164
  store i64 %5922, i64* %3, align 8
  %5923 = inttoptr i64 %5921 to i64*
  %5924 = load i64, i64* %5923, align 8
  store i64 %5924, i64* %RAX.i2556, align 8
  %5925 = add i64 %5537, 168
  store i64 %5925, i64* %3, align 8
  %5926 = load i64, i64* %5920, align 8
  store i64 %5926, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5927 = add i64 %5537, 176
  store i64 %5927, i64* %3, align 8
  %5928 = load i64, i64* %5920, align 8
  store i64 %5928, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5929 = add i64 %5537, 184
  store i64 %5929, i64* %3, align 8
  %5930 = load i64, i64* %5920, align 8
  store i64 %5930, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5931 = add i64 %5917, -52
  %5932 = add i64 %5537, 191
  store i64 %5932, i64* %3, align 8
  %5933 = inttoptr i64 %5931 to i32*
  %5934 = load i32, i32* %5933, align 4
  %5935 = zext i32 %5934 to i64
  store i64 %5935, i64* %RSI.i2547, align 8
  %5936 = add i64 %5537, 195
  store i64 %5936, i64* %3, align 8
  %5937 = load i64, i64* %5920, align 8
  store i64 %5937, i64* %RCX.i2541, align 8
  %5938 = add i64 %5937, 16
  %5939 = add i64 %5537, 199
  store i64 %5939, i64* %3, align 8
  %5940 = inttoptr i64 %5938 to i32*
  %5941 = load i32, i32* %5940, align 4
  %5942 = sext i32 %5934 to i64
  %5943 = sext i32 %5941 to i64
  %5944 = mul nsw i64 %5943, %5942
  %5945 = trunc i64 %5944 to i32
  %5946 = and i64 %5944, 4294967295
  store i64 %5946, i64* %RSI.i2547, align 8
  %5947 = shl i64 %5944, 32
  %5948 = ashr exact i64 %5947, 32
  %5949 = icmp ne i64 %5948, %5944
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %68, align 1
  %5951 = and i32 %5945, 255
  %5952 = tail call i32 @llvm.ctpop.i32(i32 %5951)
  %5953 = trunc i32 %5952 to i8
  %5954 = and i8 %5953, 1
  %5955 = xor i8 %5954, 1
  store i8 %5955, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %5956 = lshr i32 %5945, 31
  %5957 = trunc i32 %5956 to i8
  store i8 %5957, i8* %85, align 1
  store i8 %5950, i8* %91, align 1
  %5958 = add i64 %5537, 203
  store i64 %5958, i64* %3, align 8
  %5959 = load i64, i64* %5920, align 8
  store i64 %5959, i64* %RCX.i2541, align 8
  %5960 = add i64 %5959, 20
  %5961 = add i64 %5537, 207
  store i64 %5961, i64* %3, align 8
  %5962 = inttoptr i64 %5960 to i32*
  %5963 = load i32, i32* %5962, align 4
  %5964 = sext i32 %5963 to i64
  %5965 = mul nsw i64 %5964, %5948
  %5966 = and i64 %5965, 4294967295
  store i64 %5966, i64* %RSI.i2547, align 8
  %5967 = trunc i64 %5965 to i32
  store i64 %5966, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %5968 = and i32 %5967, 255
  %5969 = tail call i32 @llvm.ctpop.i32(i32 %5968)
  %5970 = trunc i32 %5969 to i8
  %5971 = and i8 %5970, 1
  %5972 = xor i8 %5971, 1
  store i8 %5972, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %5973 = icmp eq i32 %5967, 0
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %82, align 1
  %5975 = lshr i32 %5967, 31
  %5976 = trunc i32 %5975 to i8
  store i8 %5976, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %5977 = load i64, i64* %RBP.i, align 8
  %5978 = add i64 %5977, -56
  %5979 = add i64 %5537, 212
  store i64 %5979, i64* %3, align 8
  %5980 = inttoptr i64 %5978 to i32*
  %5981 = load i32, i32* %5980, align 4
  %5982 = zext i32 %5981 to i64
  store i64 %5982, i64* %RSI.i2547, align 8
  %5983 = add i64 %5977, -48
  %5984 = add i64 %5537, 216
  store i64 %5984, i64* %3, align 8
  %5985 = inttoptr i64 %5983 to i64*
  %5986 = load i64, i64* %5985, align 8
  store i64 %5986, i64* %RCX.i2541, align 8
  %5987 = add i64 %5986, 20
  %5988 = add i64 %5537, 220
  store i64 %5988, i64* %3, align 8
  %5989 = inttoptr i64 %5987 to i32*
  %5990 = load i32, i32* %5989, align 4
  %5991 = sext i32 %5981 to i64
  %5992 = sext i32 %5990 to i64
  %5993 = mul nsw i64 %5992, %5991
  %5994 = and i64 %5993, 4294967295
  store i64 %5994, i64* %RSI.i2547, align 8
  %5995 = trunc i64 %5993 to i32
  %5996 = add i32 %5995, %5967
  %5997 = zext i32 %5996 to i64
  store i64 %5997, i64* %RDX.i2544, align 8
  %5998 = icmp ult i32 %5996, %5967
  %5999 = icmp ult i32 %5996, %5995
  %6000 = or i1 %5998, %5999
  %6001 = zext i1 %6000 to i8
  store i8 %6001, i8* %68, align 1
  %6002 = and i32 %5996, 255
  %6003 = tail call i32 @llvm.ctpop.i32(i32 %6002)
  %6004 = trunc i32 %6003 to i8
  %6005 = and i8 %6004, 1
  %6006 = xor i8 %6005, 1
  store i8 %6006, i8* %74, align 1
  %6007 = xor i64 %5993, %5965
  %6008 = trunc i64 %6007 to i32
  %6009 = xor i32 %6008, %5996
  %6010 = lshr i32 %6009, 4
  %6011 = trunc i32 %6010 to i8
  %6012 = and i8 %6011, 1
  store i8 %6012, i8* %79, align 1
  %6013 = icmp eq i32 %5996, 0
  %6014 = zext i1 %6013 to i8
  store i8 %6014, i8* %82, align 1
  %6015 = lshr i32 %5996, 31
  %6016 = trunc i32 %6015 to i8
  store i8 %6016, i8* %85, align 1
  %6017 = lshr i32 %5995, 31
  %6018 = xor i32 %6015, %5975
  %6019 = xor i32 %6015, %6017
  %6020 = add nuw nsw i32 %6018, %6019
  %6021 = icmp eq i32 %6020, 2
  %6022 = zext i1 %6021 to i8
  store i8 %6022, i8* %91, align 1
  %6023 = add i64 %5977, -60
  %6024 = add i64 %5537, 225
  store i64 %6024, i64* %3, align 8
  %6025 = inttoptr i64 %6023 to i32*
  %6026 = load i32, i32* %6025, align 4
  %6027 = add i32 %6026, %5996
  %6028 = zext i32 %6027 to i64
  store i64 %6028, i64* %RDX.i2544, align 8
  %6029 = icmp ult i32 %6027, %5996
  %6030 = icmp ult i32 %6027, %6026
  %6031 = or i1 %6029, %6030
  %6032 = zext i1 %6031 to i8
  store i8 %6032, i8* %68, align 1
  %6033 = and i32 %6027, 255
  %6034 = tail call i32 @llvm.ctpop.i32(i32 %6033)
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  %6037 = xor i8 %6036, 1
  store i8 %6037, i8* %74, align 1
  %6038 = xor i32 %6026, %5996
  %6039 = xor i32 %6038, %6027
  %6040 = lshr i32 %6039, 4
  %6041 = trunc i32 %6040 to i8
  %6042 = and i8 %6041, 1
  store i8 %6042, i8* %79, align 1
  %6043 = icmp eq i32 %6027, 0
  %6044 = zext i1 %6043 to i8
  store i8 %6044, i8* %82, align 1
  %6045 = lshr i32 %6027, 31
  %6046 = trunc i32 %6045 to i8
  store i8 %6046, i8* %85, align 1
  %6047 = lshr i32 %6026, 31
  %6048 = xor i32 %6045, %6015
  %6049 = xor i32 %6045, %6047
  %6050 = add nuw nsw i32 %6048, %6049
  %6051 = icmp eq i32 %6050, 2
  %6052 = zext i1 %6051 to i8
  store i8 %6052, i8* %91, align 1
  %6053 = sext i32 %6027 to i64
  store i64 %6053, i64* %RCX.i2541, align 8
  %6054 = load i64, i64* %RAX.i2556, align 8
  %6055 = shl nsw i64 %6053, 2
  %6056 = add i64 %6055, %6054
  %6057 = add i64 %5537, 233
  store i64 %6057, i64* %3, align 8
  %6058 = load <2 x float>, <2 x float>* %191, align 1
  %6059 = load <2 x i32>, <2 x i32>* %196, align 1
  %6060 = inttoptr i64 %6056 to float*
  %6061 = load float, float* %6060, align 4
  %6062 = extractelement <2 x float> %6058, i32 0
  %6063 = fmul float %6062, %6061
  store float %6063, float* %192, align 1
  %6064 = bitcast <2 x float> %6058 to <2 x i32>
  %6065 = extractelement <2 x i32> %6064, i32 1
  store i32 %6065, i32* %187, align 1
  %6066 = extractelement <2 x i32> %6059, i32 0
  store i32 %6066, i32* %188, align 1
  %6067 = extractelement <2 x i32> %6059, i32 1
  store i32 %6067, i32* %190, align 1
  %6068 = load i64, i64* %RBP.i, align 8
  %6069 = add i64 %6068, -88
  %6070 = add i64 %5537, 238
  store i64 %6070, i64* %3, align 8
  %6071 = load <2 x float>, <2 x float>* %191, align 1
  %6072 = extractelement <2 x float> %6071, i32 0
  %6073 = inttoptr i64 %6069 to float*
  store float %6072, float* %6073, align 4
  %6074 = load i64, i64* %RBP.i, align 8
  %6075 = add i64 %6074, -88
  %6076 = load i64, i64* %3, align 8
  %6077 = add i64 %6076, 5
  store i64 %6077, i64* %3, align 8
  %6078 = inttoptr i64 %6075 to float*
  %6079 = inttoptr i64 %6075 to i32*
  %6080 = load i32, i32* %6079, align 4
  store i32 %6080, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6081 = add i64 %6076, 10
  store i64 %6081, i64* %3, align 8
  %6082 = load <2 x float>, <2 x float>* %191, align 1
  %6083 = load <2 x i32>, <2 x i32>* %196, align 1
  %6084 = load float, float* %6078, align 4
  %6085 = extractelement <2 x float> %6082, i32 0
  %6086 = fmul float %6085, %6084
  store float %6086, float* %192, align 1
  %6087 = bitcast <2 x float> %6082 to <2 x i32>
  %6088 = extractelement <2 x i32> %6087, i32 1
  store i32 %6088, i32* %187, align 1
  %6089 = extractelement <2 x i32> %6083, i32 0
  store i32 %6089, i32* %188, align 1
  %6090 = extractelement <2 x i32> %6083, i32 1
  store i32 %6090, i32* %190, align 1
  %6091 = add i64 %6074, -80
  %6092 = add i64 %6076, 15
  store i64 %6092, i64* %3, align 8
  %6093 = load <2 x float>, <2 x float>* %191, align 1
  %6094 = load <2 x i32>, <2 x i32>* %196, align 1
  %6095 = inttoptr i64 %6091 to float*
  %6096 = load float, float* %6095, align 4
  %6097 = extractelement <2 x float> %6093, i32 0
  %6098 = fadd float %6097, %6096
  store float %6098, float* %192, align 1
  %6099 = bitcast <2 x float> %6093 to <2 x i32>
  %6100 = extractelement <2 x i32> %6099, i32 1
  store i32 %6100, i32* %187, align 1
  %6101 = extractelement <2 x i32> %6094, i32 0
  store i32 %6101, i32* %188, align 1
  %6102 = extractelement <2 x i32> %6094, i32 1
  store i32 %6102, i32* %190, align 1
  %6103 = add i64 %6076, 20
  store i64 %6103, i64* %3, align 8
  %6104 = load <2 x float>, <2 x float>* %191, align 1
  %6105 = extractelement <2 x float> %6104, i32 0
  store float %6105, float* %6095, align 4
  %6106 = load i64, i64* %RBP.i, align 8
  %6107 = add i64 %6106, -40
  %6108 = load i64, i64* %3, align 8
  %6109 = add i64 %6108, 4
  store i64 %6109, i64* %3, align 8
  %6110 = inttoptr i64 %6107 to i64*
  %6111 = load i64, i64* %6110, align 8
  store i64 %6111, i64* %RAX.i2556, align 8
  %6112 = add i64 %6108, 7
  store i64 %6112, i64* %3, align 8
  %6113 = inttoptr i64 %6111 to i64*
  %6114 = load i64, i64* %6113, align 8
  store i64 %6114, i64* %RAX.i2556, align 8
  %6115 = add i64 %6108, 11
  store i64 %6115, i64* %3, align 8
  %6116 = load i64, i64* %6110, align 8
  store i64 %6116, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6117 = add i64 %6108, 19
  store i64 %6117, i64* %3, align 8
  %6118 = load i64, i64* %6110, align 8
  store i64 %6118, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6119 = add i64 %6108, 27
  store i64 %6119, i64* %3, align 8
  %6120 = load i64, i64* %6110, align 8
  store i64 %6120, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6121 = add i64 %6106, -52
  %6122 = add i64 %6108, 34
  store i64 %6122, i64* %3, align 8
  %6123 = inttoptr i64 %6121 to i32*
  %6124 = load i32, i32* %6123, align 4
  %6125 = zext i32 %6124 to i64
  store i64 %6125, i64* %RSI.i2547, align 8
  %6126 = add i64 %6108, 38
  store i64 %6126, i64* %3, align 8
  %6127 = load i64, i64* %6110, align 8
  store i64 %6127, i64* %RCX.i2541, align 8
  %6128 = add i64 %6127, 16
  %6129 = add i64 %6108, 42
  store i64 %6129, i64* %3, align 8
  %6130 = inttoptr i64 %6128 to i32*
  %6131 = load i32, i32* %6130, align 4
  %6132 = sext i32 %6124 to i64
  %6133 = sext i32 %6131 to i64
  %6134 = mul nsw i64 %6133, %6132
  %6135 = trunc i64 %6134 to i32
  %6136 = and i64 %6134, 4294967295
  store i64 %6136, i64* %RSI.i2547, align 8
  %6137 = shl i64 %6134, 32
  %6138 = ashr exact i64 %6137, 32
  %6139 = icmp ne i64 %6138, %6134
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %68, align 1
  %6141 = and i32 %6135, 255
  %6142 = tail call i32 @llvm.ctpop.i32(i32 %6141)
  %6143 = trunc i32 %6142 to i8
  %6144 = and i8 %6143, 1
  %6145 = xor i8 %6144, 1
  store i8 %6145, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6146 = lshr i32 %6135, 31
  %6147 = trunc i32 %6146 to i8
  store i8 %6147, i8* %85, align 1
  store i8 %6140, i8* %91, align 1
  %6148 = add i64 %6108, 46
  store i64 %6148, i64* %3, align 8
  %6149 = load i64, i64* %6110, align 8
  store i64 %6149, i64* %RCX.i2541, align 8
  %6150 = add i64 %6149, 20
  %6151 = add i64 %6108, 50
  store i64 %6151, i64* %3, align 8
  %6152 = inttoptr i64 %6150 to i32*
  %6153 = load i32, i32* %6152, align 4
  %6154 = sext i32 %6153 to i64
  %6155 = mul nsw i64 %6154, %6138
  %6156 = and i64 %6155, 4294967295
  store i64 %6156, i64* %RSI.i2547, align 8
  %6157 = trunc i64 %6155 to i32
  store i64 %6156, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6158 = and i32 %6157, 255
  %6159 = tail call i32 @llvm.ctpop.i32(i32 %6158)
  %6160 = trunc i32 %6159 to i8
  %6161 = and i8 %6160, 1
  %6162 = xor i8 %6161, 1
  store i8 %6162, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6163 = icmp eq i32 %6157, 0
  %6164 = zext i1 %6163 to i8
  store i8 %6164, i8* %82, align 1
  %6165 = lshr i32 %6157, 31
  %6166 = trunc i32 %6165 to i8
  store i8 %6166, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6167 = add i64 %6106, -56
  %6168 = add i64 %6108, 55
  store i64 %6168, i64* %3, align 8
  %6169 = inttoptr i64 %6167 to i32*
  %6170 = load i32, i32* %6169, align 4
  %6171 = zext i32 %6170 to i64
  store i64 %6171, i64* %RSI.i2547, align 8
  %6172 = add i64 %6108, 59
  store i64 %6172, i64* %3, align 8
  %6173 = load i64, i64* %6110, align 8
  store i64 %6173, i64* %RCX.i2541, align 8
  %6174 = add i64 %6173, 20
  %6175 = add i64 %6108, 63
  store i64 %6175, i64* %3, align 8
  %6176 = inttoptr i64 %6174 to i32*
  %6177 = load i32, i32* %6176, align 4
  %6178 = sext i32 %6170 to i64
  %6179 = sext i32 %6177 to i64
  %6180 = mul nsw i64 %6179, %6178
  %6181 = and i64 %6180, 4294967295
  store i64 %6181, i64* %RSI.i2547, align 8
  %6182 = trunc i64 %6180 to i32
  %6183 = add i32 %6182, %6157
  %6184 = zext i32 %6183 to i64
  store i64 %6184, i64* %RDX.i2544, align 8
  %6185 = icmp ult i32 %6183, %6157
  %6186 = icmp ult i32 %6183, %6182
  %6187 = or i1 %6185, %6186
  %6188 = zext i1 %6187 to i8
  store i8 %6188, i8* %68, align 1
  %6189 = and i32 %6183, 255
  %6190 = tail call i32 @llvm.ctpop.i32(i32 %6189)
  %6191 = trunc i32 %6190 to i8
  %6192 = and i8 %6191, 1
  %6193 = xor i8 %6192, 1
  store i8 %6193, i8* %74, align 1
  %6194 = xor i64 %6180, %6155
  %6195 = trunc i64 %6194 to i32
  %6196 = xor i32 %6195, %6183
  %6197 = lshr i32 %6196, 4
  %6198 = trunc i32 %6197 to i8
  %6199 = and i8 %6198, 1
  store i8 %6199, i8* %79, align 1
  %6200 = icmp eq i32 %6183, 0
  %6201 = zext i1 %6200 to i8
  store i8 %6201, i8* %82, align 1
  %6202 = lshr i32 %6183, 31
  %6203 = trunc i32 %6202 to i8
  store i8 %6203, i8* %85, align 1
  %6204 = lshr i32 %6182, 31
  %6205 = xor i32 %6202, %6165
  %6206 = xor i32 %6202, %6204
  %6207 = add nuw nsw i32 %6205, %6206
  %6208 = icmp eq i32 %6207, 2
  %6209 = zext i1 %6208 to i8
  store i8 %6209, i8* %91, align 1
  %6210 = load i64, i64* %RBP.i, align 8
  %6211 = add i64 %6210, -60
  %6212 = add i64 %6108, 68
  store i64 %6212, i64* %3, align 8
  %6213 = inttoptr i64 %6211 to i32*
  %6214 = load i32, i32* %6213, align 4
  %6215 = add i32 %6214, %6183
  %6216 = zext i32 %6215 to i64
  store i64 %6216, i64* %RDX.i2544, align 8
  %6217 = icmp ult i32 %6215, %6183
  %6218 = icmp ult i32 %6215, %6214
  %6219 = or i1 %6217, %6218
  %6220 = zext i1 %6219 to i8
  store i8 %6220, i8* %68, align 1
  %6221 = and i32 %6215, 255
  %6222 = tail call i32 @llvm.ctpop.i32(i32 %6221)
  %6223 = trunc i32 %6222 to i8
  %6224 = and i8 %6223, 1
  %6225 = xor i8 %6224, 1
  store i8 %6225, i8* %74, align 1
  %6226 = xor i32 %6214, %6183
  %6227 = xor i32 %6226, %6215
  %6228 = lshr i32 %6227, 4
  %6229 = trunc i32 %6228 to i8
  %6230 = and i8 %6229, 1
  store i8 %6230, i8* %79, align 1
  %6231 = icmp eq i32 %6215, 0
  %6232 = zext i1 %6231 to i8
  store i8 %6232, i8* %82, align 1
  %6233 = lshr i32 %6215, 31
  %6234 = trunc i32 %6233 to i8
  store i8 %6234, i8* %85, align 1
  %6235 = lshr i32 %6214, 31
  %6236 = xor i32 %6233, %6202
  %6237 = xor i32 %6233, %6235
  %6238 = add nuw nsw i32 %6236, %6237
  %6239 = icmp eq i32 %6238, 2
  %6240 = zext i1 %6239 to i8
  store i8 %6240, i8* %91, align 1
  %6241 = sext i32 %6215 to i64
  store i64 %6241, i64* %RCX.i2541, align 8
  %6242 = load i64, i64* %RAX.i2556, align 8
  %6243 = shl nsw i64 %6241, 2
  %6244 = add i64 %6243, %6242
  %6245 = add i64 %6108, 76
  store i64 %6245, i64* %3, align 8
  %6246 = inttoptr i64 %6244 to i32*
  %6247 = load i32, i32* %6246, align 4
  store i32 %6247, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6248 = load i32, i32* bitcast (%G_0x603058_type* @G_0x603058 to i32*), align 8
  store i32 %6248, i32* %915, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %6249 = add i64 %6210, -88
  %6250 = add i64 %6108, 90
  store i64 %6250, i64* %3, align 8
  %6251 = load <2 x float>, <2 x float>* %206, align 1
  %6252 = load <2 x i32>, <2 x i32>* %207, align 1
  %6253 = inttoptr i64 %6249 to float*
  %6254 = load float, float* %6253, align 4
  %6255 = extractelement <2 x float> %6251, i32 0
  %6256 = fmul float %6255, %6254
  store float %6256, float* %199, align 1
  %6257 = bitcast <2 x float> %6251 to <2 x i32>
  %6258 = extractelement <2 x i32> %6257, i32 1
  store i32 %6258, i32* %208, align 1
  %6259 = extractelement <2 x i32> %6252, i32 0
  store i32 %6259, i32* %209, align 1
  %6260 = extractelement <2 x i32> %6252, i32 1
  store i32 %6260, i32* %210, align 1
  %6261 = load <2 x float>, <2 x float>* %191, align 1
  %6262 = load <2 x i32>, <2 x i32>* %196, align 1
  %6263 = load <2 x float>, <2 x float>* %206, align 1
  %6264 = extractelement <2 x float> %6261, i32 0
  %6265 = extractelement <2 x float> %6263, i32 0
  %6266 = fadd float %6264, %6265
  store float %6266, float* %192, align 1
  %6267 = bitcast <2 x float> %6261 to <2 x i32>
  %6268 = extractelement <2 x i32> %6267, i32 1
  store i32 %6268, i32* %187, align 1
  %6269 = extractelement <2 x i32> %6262, i32 0
  store i32 %6269, i32* %188, align 1
  %6270 = extractelement <2 x i32> %6262, i32 1
  store i32 %6270, i32* %190, align 1
  %6271 = add i64 %6210, 24
  %6272 = add i64 %6108, 98
  store i64 %6272, i64* %3, align 8
  %6273 = inttoptr i64 %6271 to i64*
  %6274 = load i64, i64* %6273, align 8
  store i64 %6274, i64* %RAX.i2556, align 8
  %6275 = add i64 %6108, 101
  store i64 %6275, i64* %3, align 8
  %6276 = inttoptr i64 %6274 to i64*
  %6277 = load i64, i64* %6276, align 8
  store i64 %6277, i64* %RAX.i2556, align 8
  %6278 = add i64 %6108, 105
  store i64 %6278, i64* %3, align 8
  %6279 = load i64, i64* %6273, align 8
  store i64 %6279, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6280 = add i64 %6108, 113
  store i64 %6280, i64* %3, align 8
  %6281 = load i64, i64* %6273, align 8
  store i64 %6281, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6282 = add i64 %6108, 121
  store i64 %6282, i64* %3, align 8
  %6283 = load i64, i64* %6273, align 8
  store i64 %6283, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6284 = add i64 %6210, -52
  %6285 = add i64 %6108, 128
  store i64 %6285, i64* %3, align 8
  %6286 = inttoptr i64 %6284 to i32*
  %6287 = load i32, i32* %6286, align 4
  %6288 = zext i32 %6287 to i64
  store i64 %6288, i64* %RSI.i2547, align 8
  %6289 = add i64 %6108, 132
  store i64 %6289, i64* %3, align 8
  %6290 = load i64, i64* %6273, align 8
  store i64 %6290, i64* %RCX.i2541, align 8
  %6291 = add i64 %6290, 16
  %6292 = add i64 %6108, 136
  store i64 %6292, i64* %3, align 8
  %6293 = inttoptr i64 %6291 to i32*
  %6294 = load i32, i32* %6293, align 4
  %6295 = sext i32 %6287 to i64
  %6296 = sext i32 %6294 to i64
  %6297 = mul nsw i64 %6296, %6295
  %6298 = trunc i64 %6297 to i32
  %6299 = and i64 %6297, 4294967295
  store i64 %6299, i64* %RSI.i2547, align 8
  %6300 = shl i64 %6297, 32
  %6301 = ashr exact i64 %6300, 32
  %6302 = icmp ne i64 %6301, %6297
  %6303 = zext i1 %6302 to i8
  store i8 %6303, i8* %68, align 1
  %6304 = and i32 %6298, 255
  %6305 = tail call i32 @llvm.ctpop.i32(i32 %6304)
  %6306 = trunc i32 %6305 to i8
  %6307 = and i8 %6306, 1
  %6308 = xor i8 %6307, 1
  store i8 %6308, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6309 = lshr i32 %6298, 31
  %6310 = trunc i32 %6309 to i8
  store i8 %6310, i8* %85, align 1
  store i8 %6303, i8* %91, align 1
  %6311 = add i64 %6108, 140
  store i64 %6311, i64* %3, align 8
  %6312 = load i64, i64* %6273, align 8
  store i64 %6312, i64* %RCX.i2541, align 8
  %6313 = add i64 %6312, 20
  %6314 = add i64 %6108, 144
  store i64 %6314, i64* %3, align 8
  %6315 = inttoptr i64 %6313 to i32*
  %6316 = load i32, i32* %6315, align 4
  %6317 = sext i32 %6316 to i64
  %6318 = mul nsw i64 %6317, %6301
  %6319 = and i64 %6318, 4294967295
  store i64 %6319, i64* %RSI.i2547, align 8
  %6320 = trunc i64 %6318 to i32
  store i64 %6319, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6321 = and i32 %6320, 255
  %6322 = tail call i32 @llvm.ctpop.i32(i32 %6321)
  %6323 = trunc i32 %6322 to i8
  %6324 = and i8 %6323, 1
  %6325 = xor i8 %6324, 1
  store i8 %6325, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6326 = icmp eq i32 %6320, 0
  %6327 = zext i1 %6326 to i8
  store i8 %6327, i8* %82, align 1
  %6328 = lshr i32 %6320, 31
  %6329 = trunc i32 %6328 to i8
  store i8 %6329, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6330 = load i64, i64* %RBP.i, align 8
  %6331 = add i64 %6330, -56
  %6332 = add i64 %6108, 149
  store i64 %6332, i64* %3, align 8
  %6333 = inttoptr i64 %6331 to i32*
  %6334 = load i32, i32* %6333, align 4
  %6335 = zext i32 %6334 to i64
  store i64 %6335, i64* %RSI.i2547, align 8
  %6336 = add i64 %6330, 24
  %6337 = add i64 %6108, 153
  store i64 %6337, i64* %3, align 8
  %6338 = inttoptr i64 %6336 to i64*
  %6339 = load i64, i64* %6338, align 8
  store i64 %6339, i64* %RCX.i2541, align 8
  %6340 = add i64 %6339, 20
  %6341 = add i64 %6108, 157
  store i64 %6341, i64* %3, align 8
  %6342 = inttoptr i64 %6340 to i32*
  %6343 = load i32, i32* %6342, align 4
  %6344 = sext i32 %6334 to i64
  %6345 = sext i32 %6343 to i64
  %6346 = mul nsw i64 %6345, %6344
  %6347 = and i64 %6346, 4294967295
  store i64 %6347, i64* %RSI.i2547, align 8
  %6348 = trunc i64 %6346 to i32
  %6349 = add i32 %6348, %6320
  %6350 = zext i32 %6349 to i64
  store i64 %6350, i64* %RDX.i2544, align 8
  %6351 = icmp ult i32 %6349, %6320
  %6352 = icmp ult i32 %6349, %6348
  %6353 = or i1 %6351, %6352
  %6354 = zext i1 %6353 to i8
  store i8 %6354, i8* %68, align 1
  %6355 = and i32 %6349, 255
  %6356 = tail call i32 @llvm.ctpop.i32(i32 %6355)
  %6357 = trunc i32 %6356 to i8
  %6358 = and i8 %6357, 1
  %6359 = xor i8 %6358, 1
  store i8 %6359, i8* %74, align 1
  %6360 = xor i64 %6346, %6318
  %6361 = trunc i64 %6360 to i32
  %6362 = xor i32 %6361, %6349
  %6363 = lshr i32 %6362, 4
  %6364 = trunc i32 %6363 to i8
  %6365 = and i8 %6364, 1
  store i8 %6365, i8* %79, align 1
  %6366 = icmp eq i32 %6349, 0
  %6367 = zext i1 %6366 to i8
  store i8 %6367, i8* %82, align 1
  %6368 = lshr i32 %6349, 31
  %6369 = trunc i32 %6368 to i8
  store i8 %6369, i8* %85, align 1
  %6370 = lshr i32 %6348, 31
  %6371 = xor i32 %6368, %6328
  %6372 = xor i32 %6368, %6370
  %6373 = add nuw nsw i32 %6371, %6372
  %6374 = icmp eq i32 %6373, 2
  %6375 = zext i1 %6374 to i8
  store i8 %6375, i8* %91, align 1
  %6376 = add i64 %6330, -60
  %6377 = add i64 %6108, 162
  store i64 %6377, i64* %3, align 8
  %6378 = inttoptr i64 %6376 to i32*
  %6379 = load i32, i32* %6378, align 4
  %6380 = add i32 %6379, %6349
  %6381 = zext i32 %6380 to i64
  store i64 %6381, i64* %RDX.i2544, align 8
  %6382 = icmp ult i32 %6380, %6349
  %6383 = icmp ult i32 %6380, %6379
  %6384 = or i1 %6382, %6383
  %6385 = zext i1 %6384 to i8
  store i8 %6385, i8* %68, align 1
  %6386 = and i32 %6380, 255
  %6387 = tail call i32 @llvm.ctpop.i32(i32 %6386)
  %6388 = trunc i32 %6387 to i8
  %6389 = and i8 %6388, 1
  %6390 = xor i8 %6389, 1
  store i8 %6390, i8* %74, align 1
  %6391 = xor i32 %6379, %6349
  %6392 = xor i32 %6391, %6380
  %6393 = lshr i32 %6392, 4
  %6394 = trunc i32 %6393 to i8
  %6395 = and i8 %6394, 1
  store i8 %6395, i8* %79, align 1
  %6396 = icmp eq i32 %6380, 0
  %6397 = zext i1 %6396 to i8
  store i8 %6397, i8* %82, align 1
  %6398 = lshr i32 %6380, 31
  %6399 = trunc i32 %6398 to i8
  store i8 %6399, i8* %85, align 1
  %6400 = lshr i32 %6379, 31
  %6401 = xor i32 %6398, %6368
  %6402 = xor i32 %6398, %6400
  %6403 = add nuw nsw i32 %6401, %6402
  %6404 = icmp eq i32 %6403, 2
  %6405 = zext i1 %6404 to i8
  store i8 %6405, i8* %91, align 1
  %6406 = sext i32 %6380 to i64
  store i64 %6406, i64* %RCX.i2541, align 8
  %6407 = load i64, i64* %RAX.i2556, align 8
  %6408 = shl nsw i64 %6406, 2
  %6409 = add i64 %6408, %6407
  %6410 = add i64 %6108, 170
  store i64 %6410, i64* %3, align 8
  %6411 = load <2 x float>, <2 x float>* %191, align 1
  %6412 = extractelement <2 x float> %6411, i32 0
  %6413 = inttoptr i64 %6409 to float*
  store float %6412, float* %6413, align 4
  %6414 = load i64, i64* %RBP.i, align 8
  %6415 = add i64 %6414, -60
  %6416 = load i64, i64* %3, align 8
  %6417 = add i64 %6416, 3
  store i64 %6417, i64* %3, align 8
  %6418 = inttoptr i64 %6415 to i32*
  %6419 = load i32, i32* %6418, align 4
  %6420 = add i32 %6419, 1
  %6421 = zext i32 %6420 to i64
  store i64 %6421, i64* %RAX.i2556, align 8
  %6422 = icmp eq i32 %6419, -1
  %6423 = icmp eq i32 %6420, 0
  %6424 = or i1 %6422, %6423
  %6425 = zext i1 %6424 to i8
  store i8 %6425, i8* %68, align 1
  %6426 = and i32 %6420, 255
  %6427 = tail call i32 @llvm.ctpop.i32(i32 %6426)
  %6428 = trunc i32 %6427 to i8
  %6429 = and i8 %6428, 1
  %6430 = xor i8 %6429, 1
  store i8 %6430, i8* %74, align 1
  %6431 = xor i32 %6419, %6420
  %6432 = lshr i32 %6431, 4
  %6433 = trunc i32 %6432 to i8
  %6434 = and i8 %6433, 1
  store i8 %6434, i8* %79, align 1
  %6435 = zext i1 %6423 to i8
  store i8 %6435, i8* %82, align 1
  %6436 = lshr i32 %6420, 31
  %6437 = trunc i32 %6436 to i8
  store i8 %6437, i8* %85, align 1
  %6438 = lshr i32 %6419, 31
  %6439 = xor i32 %6436, %6438
  %6440 = add nuw nsw i32 %6439, %6436
  %6441 = icmp eq i32 %6440, 2
  %6442 = zext i1 %6441 to i8
  store i8 %6442, i8* %91, align 1
  %6443 = add i64 %6416, 9
  store i64 %6443, i64* %3, align 8
  store i32 %6420, i32* %6418, align 4
  %6444 = load i64, i64* %3, align 8
  %6445 = add i64 %6444, -2748
  store i64 %6445, i64* %3, align 8
  br label %block_.L_400d6a

block_.L_40182b:                                  ; preds = %block_.L_400d6a
  %6446 = add i64 %356, -56
  %6447 = add i64 %392, 8
  store i64 %6447, i64* %3, align 8
  %6448 = inttoptr i64 %6446 to i32*
  %6449 = load i32, i32* %6448, align 4
  %6450 = add i32 %6449, 1
  %6451 = zext i32 %6450 to i64
  store i64 %6451, i64* %RAX.i2556, align 8
  %6452 = icmp eq i32 %6449, -1
  %6453 = icmp eq i32 %6450, 0
  %6454 = or i1 %6452, %6453
  %6455 = zext i1 %6454 to i8
  store i8 %6455, i8* %68, align 1
  %6456 = and i32 %6450, 255
  %6457 = tail call i32 @llvm.ctpop.i32(i32 %6456)
  %6458 = trunc i32 %6457 to i8
  %6459 = and i8 %6458, 1
  %6460 = xor i8 %6459, 1
  store i8 %6460, i8* %74, align 1
  %6461 = xor i32 %6449, %6450
  %6462 = lshr i32 %6461, 4
  %6463 = trunc i32 %6462 to i8
  %6464 = and i8 %6463, 1
  store i8 %6464, i8* %79, align 1
  %6465 = zext i1 %6453 to i8
  store i8 %6465, i8* %82, align 1
  %6466 = lshr i32 %6450, 31
  %6467 = trunc i32 %6466 to i8
  store i8 %6467, i8* %85, align 1
  %6468 = lshr i32 %6449, 31
  %6469 = xor i32 %6466, %6468
  %6470 = add nuw nsw i32 %6469, %6466
  %6471 = icmp eq i32 %6470, 2
  %6472 = zext i1 %6471 to i8
  store i8 %6472, i8* %91, align 1
  %6473 = add i64 %392, 14
  store i64 %6473, i64* %3, align 8
  store i32 %6450, i32* %6448, align 4
  %6474 = load i64, i64* %3, align 8
  %6475 = add i64 %6474, -2786
  store i64 %6475, i64* %3, align 8
  br label %block_.L_400d57

block_.L_40183e:                                  ; preds = %block_.L_400d57
  %6476 = add i64 %315, -52
  %6477 = add i64 %351, 8
  store i64 %6477, i64* %3, align 8
  %6478 = inttoptr i64 %6476 to i32*
  %6479 = load i32, i32* %6478, align 4
  %6480 = add i32 %6479, 1
  %6481 = zext i32 %6480 to i64
  store i64 %6481, i64* %RAX.i2556, align 8
  %6482 = icmp eq i32 %6479, -1
  %6483 = icmp eq i32 %6480, 0
  %6484 = or i1 %6482, %6483
  %6485 = zext i1 %6484 to i8
  store i8 %6485, i8* %68, align 1
  %6486 = and i32 %6480, 255
  %6487 = tail call i32 @llvm.ctpop.i32(i32 %6486)
  %6488 = trunc i32 %6487 to i8
  %6489 = and i8 %6488, 1
  %6490 = xor i8 %6489, 1
  store i8 %6490, i8* %74, align 1
  %6491 = xor i32 %6479, %6480
  %6492 = lshr i32 %6491, 4
  %6493 = trunc i32 %6492 to i8
  %6494 = and i8 %6493, 1
  store i8 %6494, i8* %79, align 1
  %6495 = zext i1 %6483 to i8
  store i8 %6495, i8* %82, align 1
  %6496 = lshr i32 %6480, 31
  %6497 = trunc i32 %6496 to i8
  store i8 %6497, i8* %85, align 1
  %6498 = lshr i32 %6479, 31
  %6499 = xor i32 %6496, %6498
  %6500 = add nuw nsw i32 %6499, %6496
  %6501 = icmp eq i32 %6500, 2
  %6502 = zext i1 %6501 to i8
  store i8 %6502, i8* %91, align 1
  %6503 = add i64 %351, 14
  store i64 %6503, i64* %3, align 8
  store i32 %6480, i32* %6478, align 4
  %6504 = load i64, i64* %3, align 8
  %6505 = add i64 %6504, -2824
  store i64 %6505, i64* %3, align 8
  br label %block_.L_400d44

block_.L_401851:                                  ; preds = %block_.L_400d44
  %6506 = add i64 %310, 7
  store i64 %6506, i64* %3, align 8
  store i32 1, i32* %277, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_401858

block_.L_401858:                                  ; preds = %block_.L_401943, %block_.L_401851
  %6507 = phi i64 [ %7004, %block_.L_401943 ], [ %.pre4, %block_.L_401851 ]
  %6508 = load i64, i64* %RBP.i, align 8
  %6509 = add i64 %6508, -52
  %6510 = add i64 %6507, 3
  store i64 %6510, i64* %3, align 8
  %6511 = inttoptr i64 %6509 to i32*
  %6512 = load i32, i32* %6511, align 4
  %6513 = zext i32 %6512 to i64
  store i64 %6513, i64* %RAX.i2556, align 8
  %6514 = add i64 %6508, -68
  %6515 = add i64 %6507, 6
  store i64 %6515, i64* %3, align 8
  %6516 = inttoptr i64 %6514 to i32*
  %6517 = load i32, i32* %6516, align 4
  %6518 = sub i32 %6512, %6517
  %6519 = icmp ult i32 %6512, %6517
  %6520 = zext i1 %6519 to i8
  store i8 %6520, i8* %68, align 1
  %6521 = and i32 %6518, 255
  %6522 = tail call i32 @llvm.ctpop.i32(i32 %6521)
  %6523 = trunc i32 %6522 to i8
  %6524 = and i8 %6523, 1
  %6525 = xor i8 %6524, 1
  store i8 %6525, i8* %74, align 1
  %6526 = xor i32 %6517, %6512
  %6527 = xor i32 %6526, %6518
  %6528 = lshr i32 %6527, 4
  %6529 = trunc i32 %6528 to i8
  %6530 = and i8 %6529, 1
  store i8 %6530, i8* %79, align 1
  %6531 = icmp eq i32 %6518, 0
  %6532 = zext i1 %6531 to i8
  store i8 %6532, i8* %82, align 1
  %6533 = lshr i32 %6518, 31
  %6534 = trunc i32 %6533 to i8
  store i8 %6534, i8* %85, align 1
  %6535 = lshr i32 %6512, 31
  %6536 = lshr i32 %6517, 31
  %6537 = xor i32 %6536, %6535
  %6538 = xor i32 %6533, %6535
  %6539 = add nuw nsw i32 %6538, %6537
  %6540 = icmp eq i32 %6539, 2
  %6541 = zext i1 %6540 to i8
  store i8 %6541, i8* %91, align 1
  %6542 = icmp ne i8 %6534, 0
  %6543 = xor i1 %6542, %6540
  %.v12 = select i1 %6543, i64 12, i64 254
  %6544 = add i64 %6507, %.v12
  store i64 %6544, i64* %3, align 8
  br i1 %6543, label %block_401864, label %block_.L_401956

block_401864:                                     ; preds = %block_.L_401858
  %6545 = add i64 %6508, -56
  %6546 = add i64 %6544, 7
  store i64 %6546, i64* %3, align 8
  %6547 = inttoptr i64 %6545 to i32*
  store i32 1, i32* %6547, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_40186b

block_.L_40186b:                                  ; preds = %block_.L_401930, %block_401864
  %6548 = phi i64 [ %6974, %block_.L_401930 ], [ %.pre5, %block_401864 ]
  %6549 = load i64, i64* %RBP.i, align 8
  %6550 = add i64 %6549, -56
  %6551 = add i64 %6548, 3
  store i64 %6551, i64* %3, align 8
  %6552 = inttoptr i64 %6550 to i32*
  %6553 = load i32, i32* %6552, align 4
  %6554 = zext i32 %6553 to i64
  store i64 %6554, i64* %RAX.i2556, align 8
  %6555 = add i64 %6549, -72
  %6556 = add i64 %6548, 6
  store i64 %6556, i64* %3, align 8
  %6557 = inttoptr i64 %6555 to i32*
  %6558 = load i32, i32* %6557, align 4
  %6559 = sub i32 %6553, %6558
  %6560 = icmp ult i32 %6553, %6558
  %6561 = zext i1 %6560 to i8
  store i8 %6561, i8* %68, align 1
  %6562 = and i32 %6559, 255
  %6563 = tail call i32 @llvm.ctpop.i32(i32 %6562)
  %6564 = trunc i32 %6563 to i8
  %6565 = and i8 %6564, 1
  %6566 = xor i8 %6565, 1
  store i8 %6566, i8* %74, align 1
  %6567 = xor i32 %6558, %6553
  %6568 = xor i32 %6567, %6559
  %6569 = lshr i32 %6568, 4
  %6570 = trunc i32 %6569 to i8
  %6571 = and i8 %6570, 1
  store i8 %6571, i8* %79, align 1
  %6572 = icmp eq i32 %6559, 0
  %6573 = zext i1 %6572 to i8
  store i8 %6573, i8* %82, align 1
  %6574 = lshr i32 %6559, 31
  %6575 = trunc i32 %6574 to i8
  store i8 %6575, i8* %85, align 1
  %6576 = lshr i32 %6553, 31
  %6577 = lshr i32 %6558, 31
  %6578 = xor i32 %6577, %6576
  %6579 = xor i32 %6574, %6576
  %6580 = add nuw nsw i32 %6579, %6578
  %6581 = icmp eq i32 %6580, 2
  %6582 = zext i1 %6581 to i8
  store i8 %6582, i8* %91, align 1
  %6583 = icmp ne i8 %6575, 0
  %6584 = xor i1 %6583, %6581
  %.v13 = select i1 %6584, i64 12, i64 216
  %6585 = add i64 %6548, %.v13
  store i64 %6585, i64* %3, align 8
  br i1 %6584, label %block_401877, label %block_.L_401943

block_401877:                                     ; preds = %block_.L_40186b
  %6586 = add i64 %6549, -60
  %6587 = add i64 %6585, 7
  store i64 %6587, i64* %3, align 8
  %6588 = inttoptr i64 %6586 to i32*
  store i32 1, i32* %6588, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_40187e

block_.L_40187e:                                  ; preds = %block_40188a, %block_401877
  %6589 = phi i64 [ %6944, %block_40188a ], [ %.pre6, %block_401877 ]
  %6590 = load i64, i64* %RBP.i, align 8
  %6591 = add i64 %6590, -60
  %6592 = add i64 %6589, 3
  store i64 %6592, i64* %3, align 8
  %6593 = inttoptr i64 %6591 to i32*
  %6594 = load i32, i32* %6593, align 4
  %6595 = zext i32 %6594 to i64
  store i64 %6595, i64* %RAX.i2556, align 8
  %6596 = add i64 %6590, -76
  %6597 = add i64 %6589, 6
  store i64 %6597, i64* %3, align 8
  %6598 = inttoptr i64 %6596 to i32*
  %6599 = load i32, i32* %6598, align 4
  %6600 = sub i32 %6594, %6599
  %6601 = icmp ult i32 %6594, %6599
  %6602 = zext i1 %6601 to i8
  store i8 %6602, i8* %68, align 1
  %6603 = and i32 %6600, 255
  %6604 = tail call i32 @llvm.ctpop.i32(i32 %6603)
  %6605 = trunc i32 %6604 to i8
  %6606 = and i8 %6605, 1
  %6607 = xor i8 %6606, 1
  store i8 %6607, i8* %74, align 1
  %6608 = xor i32 %6599, %6594
  %6609 = xor i32 %6608, %6600
  %6610 = lshr i32 %6609, 4
  %6611 = trunc i32 %6610 to i8
  %6612 = and i8 %6611, 1
  store i8 %6612, i8* %79, align 1
  %6613 = icmp eq i32 %6600, 0
  %6614 = zext i1 %6613 to i8
  store i8 %6614, i8* %82, align 1
  %6615 = lshr i32 %6600, 31
  %6616 = trunc i32 %6615 to i8
  store i8 %6616, i8* %85, align 1
  %6617 = lshr i32 %6594, 31
  %6618 = lshr i32 %6599, 31
  %6619 = xor i32 %6618, %6617
  %6620 = xor i32 %6615, %6617
  %6621 = add nuw nsw i32 %6620, %6619
  %6622 = icmp eq i32 %6621, 2
  %6623 = zext i1 %6622 to i8
  store i8 %6623, i8* %91, align 1
  %6624 = icmp ne i8 %6616, 0
  %6625 = xor i1 %6624, %6622
  %.v14 = select i1 %6625, i64 12, i64 178
  %6626 = add i64 %6589, %.v14
  store i64 %6626, i64* %3, align 8
  br i1 %6625, label %block_40188a, label %block_.L_401930

block_40188a:                                     ; preds = %block_.L_40187e
  %6627 = add i64 %6590, 24
  %6628 = add i64 %6626, 4
  store i64 %6628, i64* %3, align 8
  %6629 = inttoptr i64 %6627 to i64*
  %6630 = load i64, i64* %6629, align 8
  store i64 %6630, i64* %RAX.i2556, align 8
  %6631 = add i64 %6626, 7
  store i64 %6631, i64* %3, align 8
  %6632 = inttoptr i64 %6630 to i64*
  %6633 = load i64, i64* %6632, align 8
  store i64 %6633, i64* %RAX.i2556, align 8
  %6634 = add i64 %6626, 11
  store i64 %6634, i64* %3, align 8
  %6635 = load i64, i64* %6629, align 8
  store i64 %6635, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6636 = add i64 %6626, 19
  store i64 %6636, i64* %3, align 8
  %6637 = load i64, i64* %6629, align 8
  store i64 %6637, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6638 = add i64 %6626, 27
  store i64 %6638, i64* %3, align 8
  %6639 = load i64, i64* %6629, align 8
  store i64 %6639, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6640 = add i64 %6590, -52
  %6641 = add i64 %6626, 34
  store i64 %6641, i64* %3, align 8
  %6642 = inttoptr i64 %6640 to i32*
  %6643 = load i32, i32* %6642, align 4
  %6644 = zext i32 %6643 to i64
  store i64 %6644, i64* %RSI.i2547, align 8
  %6645 = add i64 %6626, 38
  store i64 %6645, i64* %3, align 8
  %6646 = load i64, i64* %6629, align 8
  store i64 %6646, i64* %RCX.i2541, align 8
  %6647 = add i64 %6646, 16
  %6648 = add i64 %6626, 42
  store i64 %6648, i64* %3, align 8
  %6649 = inttoptr i64 %6647 to i32*
  %6650 = load i32, i32* %6649, align 4
  %6651 = sext i32 %6643 to i64
  %6652 = sext i32 %6650 to i64
  %6653 = mul nsw i64 %6652, %6651
  %6654 = trunc i64 %6653 to i32
  %6655 = and i64 %6653, 4294967295
  store i64 %6655, i64* %RSI.i2547, align 8
  %6656 = shl i64 %6653, 32
  %6657 = ashr exact i64 %6656, 32
  %6658 = icmp ne i64 %6657, %6653
  %6659 = zext i1 %6658 to i8
  store i8 %6659, i8* %68, align 1
  %6660 = and i32 %6654, 255
  %6661 = tail call i32 @llvm.ctpop.i32(i32 %6660)
  %6662 = trunc i32 %6661 to i8
  %6663 = and i8 %6662, 1
  %6664 = xor i8 %6663, 1
  store i8 %6664, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6665 = lshr i32 %6654, 31
  %6666 = trunc i32 %6665 to i8
  store i8 %6666, i8* %85, align 1
  store i8 %6659, i8* %91, align 1
  %6667 = add i64 %6626, 46
  store i64 %6667, i64* %3, align 8
  %6668 = load i64, i64* %6629, align 8
  store i64 %6668, i64* %RCX.i2541, align 8
  %6669 = add i64 %6668, 20
  %6670 = add i64 %6626, 50
  store i64 %6670, i64* %3, align 8
  %6671 = inttoptr i64 %6669 to i32*
  %6672 = load i32, i32* %6671, align 4
  %6673 = sext i32 %6672 to i64
  %6674 = mul nsw i64 %6673, %6657
  %6675 = and i64 %6674, 4294967295
  store i64 %6675, i64* %RSI.i2547, align 8
  %6676 = trunc i64 %6674 to i32
  store i64 %6675, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6677 = and i32 %6676, 255
  %6678 = tail call i32 @llvm.ctpop.i32(i32 %6677)
  %6679 = trunc i32 %6678 to i8
  %6680 = and i8 %6679, 1
  %6681 = xor i8 %6680, 1
  store i8 %6681, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6682 = icmp eq i32 %6676, 0
  %6683 = zext i1 %6682 to i8
  store i8 %6683, i8* %82, align 1
  %6684 = lshr i32 %6676, 31
  %6685 = trunc i32 %6684 to i8
  store i8 %6685, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6686 = load i64, i64* %RBP.i, align 8
  %6687 = add i64 %6686, -56
  %6688 = add i64 %6626, 55
  store i64 %6688, i64* %3, align 8
  %6689 = inttoptr i64 %6687 to i32*
  %6690 = load i32, i32* %6689, align 4
  %6691 = zext i32 %6690 to i64
  store i64 %6691, i64* %RSI.i2547, align 8
  %6692 = add i64 %6686, 24
  %6693 = add i64 %6626, 59
  store i64 %6693, i64* %3, align 8
  %6694 = inttoptr i64 %6692 to i64*
  %6695 = load i64, i64* %6694, align 8
  store i64 %6695, i64* %RCX.i2541, align 8
  %6696 = add i64 %6695, 20
  %6697 = add i64 %6626, 63
  store i64 %6697, i64* %3, align 8
  %6698 = inttoptr i64 %6696 to i32*
  %6699 = load i32, i32* %6698, align 4
  %6700 = sext i32 %6690 to i64
  %6701 = sext i32 %6699 to i64
  %6702 = mul nsw i64 %6701, %6700
  %6703 = and i64 %6702, 4294967295
  store i64 %6703, i64* %RSI.i2547, align 8
  %6704 = trunc i64 %6702 to i32
  %6705 = add i32 %6704, %6676
  %6706 = zext i32 %6705 to i64
  store i64 %6706, i64* %RDX.i2544, align 8
  %6707 = icmp ult i32 %6705, %6676
  %6708 = icmp ult i32 %6705, %6704
  %6709 = or i1 %6707, %6708
  %6710 = zext i1 %6709 to i8
  store i8 %6710, i8* %68, align 1
  %6711 = and i32 %6705, 255
  %6712 = tail call i32 @llvm.ctpop.i32(i32 %6711)
  %6713 = trunc i32 %6712 to i8
  %6714 = and i8 %6713, 1
  %6715 = xor i8 %6714, 1
  store i8 %6715, i8* %74, align 1
  %6716 = xor i64 %6702, %6674
  %6717 = trunc i64 %6716 to i32
  %6718 = xor i32 %6717, %6705
  %6719 = lshr i32 %6718, 4
  %6720 = trunc i32 %6719 to i8
  %6721 = and i8 %6720, 1
  store i8 %6721, i8* %79, align 1
  %6722 = icmp eq i32 %6705, 0
  %6723 = zext i1 %6722 to i8
  store i8 %6723, i8* %82, align 1
  %6724 = lshr i32 %6705, 31
  %6725 = trunc i32 %6724 to i8
  store i8 %6725, i8* %85, align 1
  %6726 = lshr i32 %6704, 31
  %6727 = xor i32 %6724, %6684
  %6728 = xor i32 %6724, %6726
  %6729 = add nuw nsw i32 %6727, %6728
  %6730 = icmp eq i32 %6729, 2
  %6731 = zext i1 %6730 to i8
  store i8 %6731, i8* %91, align 1
  %6732 = add i64 %6686, -60
  %6733 = add i64 %6626, 68
  store i64 %6733, i64* %3, align 8
  %6734 = inttoptr i64 %6732 to i32*
  %6735 = load i32, i32* %6734, align 4
  %6736 = add i32 %6735, %6705
  %6737 = zext i32 %6736 to i64
  store i64 %6737, i64* %RDX.i2544, align 8
  %6738 = icmp ult i32 %6736, %6705
  %6739 = icmp ult i32 %6736, %6735
  %6740 = or i1 %6738, %6739
  %6741 = zext i1 %6740 to i8
  store i8 %6741, i8* %68, align 1
  %6742 = and i32 %6736, 255
  %6743 = tail call i32 @llvm.ctpop.i32(i32 %6742)
  %6744 = trunc i32 %6743 to i8
  %6745 = and i8 %6744, 1
  %6746 = xor i8 %6745, 1
  store i8 %6746, i8* %74, align 1
  %6747 = xor i32 %6735, %6705
  %6748 = xor i32 %6747, %6736
  %6749 = lshr i32 %6748, 4
  %6750 = trunc i32 %6749 to i8
  %6751 = and i8 %6750, 1
  store i8 %6751, i8* %79, align 1
  %6752 = icmp eq i32 %6736, 0
  %6753 = zext i1 %6752 to i8
  store i8 %6753, i8* %82, align 1
  %6754 = lshr i32 %6736, 31
  %6755 = trunc i32 %6754 to i8
  store i8 %6755, i8* %85, align 1
  %6756 = lshr i32 %6735, 31
  %6757 = xor i32 %6754, %6724
  %6758 = xor i32 %6754, %6756
  %6759 = add nuw nsw i32 %6757, %6758
  %6760 = icmp eq i32 %6759, 2
  %6761 = zext i1 %6760 to i8
  store i8 %6761, i8* %91, align 1
  %6762 = sext i32 %6736 to i64
  store i64 %6762, i64* %RCX.i2541, align 8
  %6763 = load i64, i64* %RAX.i2556, align 8
  %6764 = shl nsw i64 %6762, 2
  %6765 = add i64 %6764, %6763
  %6766 = add i64 %6626, 76
  store i64 %6766, i64* %3, align 8
  %6767 = inttoptr i64 %6765 to i32*
  %6768 = load i32, i32* %6767, align 4
  store i32 %6768, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6769 = load i64, i64* %RBP.i, align 8
  %6770 = add i64 %6769, -40
  %6771 = add i64 %6626, 80
  store i64 %6771, i64* %3, align 8
  %6772 = inttoptr i64 %6770 to i64*
  %6773 = load i64, i64* %6772, align 8
  store i64 %6773, i64* %RAX.i2556, align 8
  %6774 = add i64 %6626, 83
  store i64 %6774, i64* %3, align 8
  %6775 = inttoptr i64 %6773 to i64*
  %6776 = load i64, i64* %6775, align 8
  store i64 %6776, i64* %RAX.i2556, align 8
  %6777 = add i64 %6626, 87
  store i64 %6777, i64* %3, align 8
  %6778 = load i64, i64* %6772, align 8
  store i64 %6778, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6779 = add i64 %6626, 95
  store i64 %6779, i64* %3, align 8
  %6780 = load i64, i64* %6772, align 8
  store i64 %6780, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6781 = add i64 %6626, 103
  store i64 %6781, i64* %3, align 8
  %6782 = load i64, i64* %6772, align 8
  store i64 %6782, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  store i8 1, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6783 = add i64 %6769, -52
  %6784 = add i64 %6626, 110
  store i64 %6784, i64* %3, align 8
  %6785 = inttoptr i64 %6783 to i32*
  %6786 = load i32, i32* %6785, align 4
  %6787 = zext i32 %6786 to i64
  store i64 %6787, i64* %RSI.i2547, align 8
  %6788 = add i64 %6626, 114
  store i64 %6788, i64* %3, align 8
  %6789 = load i64, i64* %6772, align 8
  store i64 %6789, i64* %RCX.i2541, align 8
  %6790 = add i64 %6789, 16
  %6791 = add i64 %6626, 118
  store i64 %6791, i64* %3, align 8
  %6792 = inttoptr i64 %6790 to i32*
  %6793 = load i32, i32* %6792, align 4
  %6794 = sext i32 %6786 to i64
  %6795 = sext i32 %6793 to i64
  %6796 = mul nsw i64 %6795, %6794
  %6797 = trunc i64 %6796 to i32
  %6798 = and i64 %6796, 4294967295
  store i64 %6798, i64* %RSI.i2547, align 8
  %6799 = shl i64 %6796, 32
  %6800 = ashr exact i64 %6799, 32
  %6801 = icmp ne i64 %6800, %6796
  %6802 = zext i1 %6801 to i8
  store i8 %6802, i8* %68, align 1
  %6803 = and i32 %6797, 255
  %6804 = tail call i32 @llvm.ctpop.i32(i32 %6803)
  %6805 = trunc i32 %6804 to i8
  %6806 = and i8 %6805, 1
  %6807 = xor i8 %6806, 1
  store i8 %6807, i8* %74, align 1
  store i8 0, i8* %79, align 1
  store i8 0, i8* %82, align 1
  %6808 = lshr i32 %6797, 31
  %6809 = trunc i32 %6808 to i8
  store i8 %6809, i8* %85, align 1
  store i8 %6802, i8* %91, align 1
  %6810 = add i64 %6626, 122
  store i64 %6810, i64* %3, align 8
  %6811 = load i64, i64* %6772, align 8
  store i64 %6811, i64* %RCX.i2541, align 8
  %6812 = add i64 %6811, 20
  %6813 = add i64 %6626, 126
  store i64 %6813, i64* %3, align 8
  %6814 = inttoptr i64 %6812 to i32*
  %6815 = load i32, i32* %6814, align 4
  %6816 = sext i32 %6815 to i64
  %6817 = mul nsw i64 %6816, %6800
  %6818 = and i64 %6817, 4294967295
  store i64 %6818, i64* %RSI.i2547, align 8
  %6819 = trunc i64 %6817 to i32
  store i64 %6818, i64* %RDX.i2544, align 8
  store i8 0, i8* %68, align 1
  %6820 = and i32 %6819, 255
  %6821 = tail call i32 @llvm.ctpop.i32(i32 %6820)
  %6822 = trunc i32 %6821 to i8
  %6823 = and i8 %6822, 1
  %6824 = xor i8 %6823, 1
  store i8 %6824, i8* %74, align 1
  store i8 0, i8* %79, align 1
  %6825 = icmp eq i32 %6819, 0
  %6826 = zext i1 %6825 to i8
  store i8 %6826, i8* %82, align 1
  %6827 = lshr i32 %6819, 31
  %6828 = trunc i32 %6827 to i8
  store i8 %6828, i8* %85, align 1
  store i8 0, i8* %91, align 1
  %6829 = load i64, i64* %RBP.i, align 8
  %6830 = add i64 %6829, -56
  %6831 = add i64 %6626, 131
  store i64 %6831, i64* %3, align 8
  %6832 = inttoptr i64 %6830 to i32*
  %6833 = load i32, i32* %6832, align 4
  %6834 = zext i32 %6833 to i64
  store i64 %6834, i64* %RSI.i2547, align 8
  %6835 = add i64 %6829, -40
  %6836 = add i64 %6626, 135
  store i64 %6836, i64* %3, align 8
  %6837 = inttoptr i64 %6835 to i64*
  %6838 = load i64, i64* %6837, align 8
  store i64 %6838, i64* %RCX.i2541, align 8
  %6839 = add i64 %6838, 20
  %6840 = add i64 %6626, 139
  store i64 %6840, i64* %3, align 8
  %6841 = inttoptr i64 %6839 to i32*
  %6842 = load i32, i32* %6841, align 4
  %6843 = sext i32 %6833 to i64
  %6844 = sext i32 %6842 to i64
  %6845 = mul nsw i64 %6844, %6843
  %6846 = and i64 %6845, 4294967295
  store i64 %6846, i64* %RSI.i2547, align 8
  %6847 = trunc i64 %6845 to i32
  %6848 = add i32 %6847, %6819
  %6849 = zext i32 %6848 to i64
  store i64 %6849, i64* %RDX.i2544, align 8
  %6850 = icmp ult i32 %6848, %6819
  %6851 = icmp ult i32 %6848, %6847
  %6852 = or i1 %6850, %6851
  %6853 = zext i1 %6852 to i8
  store i8 %6853, i8* %68, align 1
  %6854 = and i32 %6848, 255
  %6855 = tail call i32 @llvm.ctpop.i32(i32 %6854)
  %6856 = trunc i32 %6855 to i8
  %6857 = and i8 %6856, 1
  %6858 = xor i8 %6857, 1
  store i8 %6858, i8* %74, align 1
  %6859 = xor i64 %6845, %6817
  %6860 = trunc i64 %6859 to i32
  %6861 = xor i32 %6860, %6848
  %6862 = lshr i32 %6861, 4
  %6863 = trunc i32 %6862 to i8
  %6864 = and i8 %6863, 1
  store i8 %6864, i8* %79, align 1
  %6865 = icmp eq i32 %6848, 0
  %6866 = zext i1 %6865 to i8
  store i8 %6866, i8* %82, align 1
  %6867 = lshr i32 %6848, 31
  %6868 = trunc i32 %6867 to i8
  store i8 %6868, i8* %85, align 1
  %6869 = lshr i32 %6847, 31
  %6870 = xor i32 %6867, %6827
  %6871 = xor i32 %6867, %6869
  %6872 = add nuw nsw i32 %6870, %6871
  %6873 = icmp eq i32 %6872, 2
  %6874 = zext i1 %6873 to i8
  store i8 %6874, i8* %91, align 1
  %6875 = add i64 %6829, -60
  %6876 = add i64 %6626, 144
  store i64 %6876, i64* %3, align 8
  %6877 = inttoptr i64 %6875 to i32*
  %6878 = load i32, i32* %6877, align 4
  %6879 = add i32 %6878, %6848
  %6880 = zext i32 %6879 to i64
  store i64 %6880, i64* %RDX.i2544, align 8
  %6881 = icmp ult i32 %6879, %6848
  %6882 = icmp ult i32 %6879, %6878
  %6883 = or i1 %6881, %6882
  %6884 = zext i1 %6883 to i8
  store i8 %6884, i8* %68, align 1
  %6885 = and i32 %6879, 255
  %6886 = tail call i32 @llvm.ctpop.i32(i32 %6885)
  %6887 = trunc i32 %6886 to i8
  %6888 = and i8 %6887, 1
  %6889 = xor i8 %6888, 1
  store i8 %6889, i8* %74, align 1
  %6890 = xor i32 %6878, %6848
  %6891 = xor i32 %6890, %6879
  %6892 = lshr i32 %6891, 4
  %6893 = trunc i32 %6892 to i8
  %6894 = and i8 %6893, 1
  store i8 %6894, i8* %79, align 1
  %6895 = icmp eq i32 %6879, 0
  %6896 = zext i1 %6895 to i8
  store i8 %6896, i8* %82, align 1
  %6897 = lshr i32 %6879, 31
  %6898 = trunc i32 %6897 to i8
  store i8 %6898, i8* %85, align 1
  %6899 = lshr i32 %6878, 31
  %6900 = xor i32 %6897, %6867
  %6901 = xor i32 %6897, %6899
  %6902 = add nuw nsw i32 %6900, %6901
  %6903 = icmp eq i32 %6902, 2
  %6904 = zext i1 %6903 to i8
  store i8 %6904, i8* %91, align 1
  %6905 = sext i32 %6879 to i64
  store i64 %6905, i64* %RCX.i2541, align 8
  %6906 = load i64, i64* %RAX.i2556, align 8
  %6907 = shl nsw i64 %6905, 2
  %6908 = add i64 %6907, %6906
  %6909 = add i64 %6626, 152
  store i64 %6909, i64* %3, align 8
  %6910 = load <2 x float>, <2 x float>* %191, align 1
  %6911 = extractelement <2 x float> %6910, i32 0
  %6912 = inttoptr i64 %6908 to float*
  store float %6911, float* %6912, align 4
  %6913 = load i64, i64* %RBP.i, align 8
  %6914 = add i64 %6913, -60
  %6915 = load i64, i64* %3, align 8
  %6916 = add i64 %6915, 3
  store i64 %6916, i64* %3, align 8
  %6917 = inttoptr i64 %6914 to i32*
  %6918 = load i32, i32* %6917, align 4
  %6919 = add i32 %6918, 1
  %6920 = zext i32 %6919 to i64
  store i64 %6920, i64* %RAX.i2556, align 8
  %6921 = icmp eq i32 %6918, -1
  %6922 = icmp eq i32 %6919, 0
  %6923 = or i1 %6921, %6922
  %6924 = zext i1 %6923 to i8
  store i8 %6924, i8* %68, align 1
  %6925 = and i32 %6919, 255
  %6926 = tail call i32 @llvm.ctpop.i32(i32 %6925)
  %6927 = trunc i32 %6926 to i8
  %6928 = and i8 %6927, 1
  %6929 = xor i8 %6928, 1
  store i8 %6929, i8* %74, align 1
  %6930 = xor i32 %6918, %6919
  %6931 = lshr i32 %6930, 4
  %6932 = trunc i32 %6931 to i8
  %6933 = and i8 %6932, 1
  store i8 %6933, i8* %79, align 1
  %6934 = zext i1 %6922 to i8
  store i8 %6934, i8* %82, align 1
  %6935 = lshr i32 %6919, 31
  %6936 = trunc i32 %6935 to i8
  store i8 %6936, i8* %85, align 1
  %6937 = lshr i32 %6918, 31
  %6938 = xor i32 %6935, %6937
  %6939 = add nuw nsw i32 %6938, %6935
  %6940 = icmp eq i32 %6939, 2
  %6941 = zext i1 %6940 to i8
  store i8 %6941, i8* %91, align 1
  %6942 = add i64 %6915, 9
  store i64 %6942, i64* %3, align 8
  store i32 %6919, i32* %6917, align 4
  %6943 = load i64, i64* %3, align 8
  %6944 = add i64 %6943, -173
  store i64 %6944, i64* %3, align 8
  br label %block_.L_40187e

block_.L_401930:                                  ; preds = %block_.L_40187e
  %6945 = add i64 %6590, -56
  %6946 = add i64 %6626, 8
  store i64 %6946, i64* %3, align 8
  %6947 = inttoptr i64 %6945 to i32*
  %6948 = load i32, i32* %6947, align 4
  %6949 = add i32 %6948, 1
  %6950 = zext i32 %6949 to i64
  store i64 %6950, i64* %RAX.i2556, align 8
  %6951 = icmp eq i32 %6948, -1
  %6952 = icmp eq i32 %6949, 0
  %6953 = or i1 %6951, %6952
  %6954 = zext i1 %6953 to i8
  store i8 %6954, i8* %68, align 1
  %6955 = and i32 %6949, 255
  %6956 = tail call i32 @llvm.ctpop.i32(i32 %6955)
  %6957 = trunc i32 %6956 to i8
  %6958 = and i8 %6957, 1
  %6959 = xor i8 %6958, 1
  store i8 %6959, i8* %74, align 1
  %6960 = xor i32 %6948, %6949
  %6961 = lshr i32 %6960, 4
  %6962 = trunc i32 %6961 to i8
  %6963 = and i8 %6962, 1
  store i8 %6963, i8* %79, align 1
  %6964 = zext i1 %6952 to i8
  store i8 %6964, i8* %82, align 1
  %6965 = lshr i32 %6949, 31
  %6966 = trunc i32 %6965 to i8
  store i8 %6966, i8* %85, align 1
  %6967 = lshr i32 %6948, 31
  %6968 = xor i32 %6965, %6967
  %6969 = add nuw nsw i32 %6968, %6965
  %6970 = icmp eq i32 %6969, 2
  %6971 = zext i1 %6970 to i8
  store i8 %6971, i8* %91, align 1
  %6972 = add i64 %6626, 14
  store i64 %6972, i64* %3, align 8
  store i32 %6949, i32* %6947, align 4
  %6973 = load i64, i64* %3, align 8
  %6974 = add i64 %6973, -211
  store i64 %6974, i64* %3, align 8
  br label %block_.L_40186b

block_.L_401943:                                  ; preds = %block_.L_40186b
  %6975 = add i64 %6549, -52
  %6976 = add i64 %6585, 8
  store i64 %6976, i64* %3, align 8
  %6977 = inttoptr i64 %6975 to i32*
  %6978 = load i32, i32* %6977, align 4
  %6979 = add i32 %6978, 1
  %6980 = zext i32 %6979 to i64
  store i64 %6980, i64* %RAX.i2556, align 8
  %6981 = icmp eq i32 %6978, -1
  %6982 = icmp eq i32 %6979, 0
  %6983 = or i1 %6981, %6982
  %6984 = zext i1 %6983 to i8
  store i8 %6984, i8* %68, align 1
  %6985 = and i32 %6979, 255
  %6986 = tail call i32 @llvm.ctpop.i32(i32 %6985)
  %6987 = trunc i32 %6986 to i8
  %6988 = and i8 %6987, 1
  %6989 = xor i8 %6988, 1
  store i8 %6989, i8* %74, align 1
  %6990 = xor i32 %6978, %6979
  %6991 = lshr i32 %6990, 4
  %6992 = trunc i32 %6991 to i8
  %6993 = and i8 %6992, 1
  store i8 %6993, i8* %79, align 1
  %6994 = zext i1 %6982 to i8
  store i8 %6994, i8* %82, align 1
  %6995 = lshr i32 %6979, 31
  %6996 = trunc i32 %6995 to i8
  store i8 %6996, i8* %85, align 1
  %6997 = lshr i32 %6978, 31
  %6998 = xor i32 %6995, %6997
  %6999 = add nuw nsw i32 %6998, %6995
  %7000 = icmp eq i32 %6999, 2
  %7001 = zext i1 %7000 to i8
  store i8 %7001, i8* %91, align 1
  %7002 = add i64 %6585, 14
  store i64 %7002, i64* %3, align 8
  store i32 %6979, i32* %6977, align 4
  %7003 = load i64, i64* %3, align 8
  %7004 = add i64 %7003, -249
  store i64 %7004, i64* %3, align 8
  br label %block_.L_401858

block_.L_401956:                                  ; preds = %block_.L_401858
  %7005 = add i64 %6508, -64
  %7006 = add i64 %6544, 8
  store i64 %7006, i64* %3, align 8
  %7007 = inttoptr i64 %7005 to i32*
  %7008 = load i32, i32* %7007, align 4
  %7009 = add i32 %7008, 1
  %7010 = zext i32 %7009 to i64
  store i64 %7010, i64* %RAX.i2556, align 8
  %7011 = icmp eq i32 %7008, -1
  %7012 = icmp eq i32 %7009, 0
  %7013 = or i1 %7011, %7012
  %7014 = zext i1 %7013 to i8
  store i8 %7014, i8* %68, align 1
  %7015 = and i32 %7009, 255
  %7016 = tail call i32 @llvm.ctpop.i32(i32 %7015)
  %7017 = trunc i32 %7016 to i8
  %7018 = and i8 %7017, 1
  %7019 = xor i8 %7018, 1
  store i8 %7019, i8* %74, align 1
  %7020 = xor i32 %7008, %7009
  %7021 = lshr i32 %7020, 4
  %7022 = trunc i32 %7021 to i8
  %7023 = and i8 %7022, 1
  store i8 %7023, i8* %79, align 1
  %7024 = zext i1 %7012 to i8
  store i8 %7024, i8* %82, align 1
  %7025 = lshr i32 %7009, 31
  %7026 = trunc i32 %7025 to i8
  store i8 %7026, i8* %85, align 1
  %7027 = lshr i32 %7008, 31
  %7028 = xor i32 %7025, %7027
  %7029 = add nuw nsw i32 %7028, %7025
  %7030 = icmp eq i32 %7029, 2
  %7031 = zext i1 %7030 to i8
  store i8 %7031, i8* %91, align 1
  %7032 = add i64 %6544, 14
  store i64 %7032, i64* %3, align 8
  store i32 %7009, i32* %7007, align 4
  %7033 = load i64, i64* %3, align 8
  %7034 = add i64 %7033, -3131
  store i64 %7034, i64* %3, align 8
  br label %block_.L_400d29

block_.L_401969:                                  ; preds = %block_.L_400d29
  %7035 = add i64 %226, -80
  %7036 = add i64 %262, 5
  store i64 %7036, i64* %3, align 8
  %7037 = inttoptr i64 %7035 to i32*
  %7038 = load i32, i32* %7037, align 4
  store i32 %7038, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %7039 = add i64 %262, 6
  store i64 %7039, i64* %3, align 8
  %7040 = load i64, i64* %6, align 8
  %7041 = add i64 %7040, 8
  %7042 = inttoptr i64 %7040 to i64*
  %7043 = load i64, i64* %7042, align 8
  store i64 %7043, i64* %RBP.i, align 8
  store i64 %7041, i64* %6, align 8
  %7044 = add i64 %262, 7
  store i64 %7044, i64* %3, align 8
  %7045 = inttoptr i64 %7041 to i64*
  %7046 = load i64, i64* %7045, align 8
  store i64 %7046, i64* %3, align 8
  %7047 = add i64 %7040, 16
  store i64 %7047, i64* %6, align 8
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
