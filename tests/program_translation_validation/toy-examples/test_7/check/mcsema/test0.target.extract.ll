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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @check(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RBX.i219 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %RBX.i219, align 8
  %13 = add i64 %10, 4
  store i64 %13, i64* %PC.i, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  store i64 %14, i64* %6, align 8
  %RAX.i216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, 40
  %18 = load i64, i64* %PC.i, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC.i, align 8
  %20 = inttoptr i64 %17 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %RAX.i216, align 8
  %R10.i214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %22 = add i64 %16, 32
  %23 = add i64 %18, 8
  store i64 %23, i64* %PC.i, align 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %R10.i214, align 8
  %R11.i211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %26 = add i64 %16, 24
  %27 = add i64 %18, 12
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %26 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %R11.i211, align 8
  %30 = add i64 %16, 16
  %31 = add i64 %18, 15
  store i64 %31, i64* %PC.i, align 8
  %32 = inttoptr i64 %30 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %RBX.i219, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i204 = bitcast %union.anon* %35 to i32*
  %36 = add i64 %16, -12
  %37 = load i32, i32* %EDI.i204, align 4
  %38 = add i64 %18, 18
  store i64 %38, i64* %PC.i, align 8
  %39 = inttoptr i64 %36 to i32*
  store i32 %37, i32* %39, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -24
  %42 = load i64, i64* %RSI.i, align 8
  %43 = load i64, i64* %PC.i, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %RDX.i199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -32
  %48 = load i64, i64* %RDX.i199, align 8
  %49 = load i64, i64* %PC.i, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC.i, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %RCX.i196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -40
  %54 = load i64, i64* %RCX.i196, align 8
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %58 to i32*
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -44
  %61 = load i32, i32* %R8D.i, align 4
  %62 = load i64, i64* %PC.i, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %65 to i32*
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -48
  %68 = load i32, i32* %R9D.i, align 4
  %69 = load i64, i64* %PC.i, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %71, align 4
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -52
  %74 = load i64, i64* %PC.i, align 8
  %75 = add i64 %74, 7
  store i64 %75, i64* %PC.i, align 8
  %76 = inttoptr i64 %73 to i32*
  store i32 0, i32* %76, align 4
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -56
  %79 = load i64, i64* %PC.i, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4
  %RDI.i185 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -12
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDI.i185, align 8
  %89 = add i64 %82, -52
  %90 = add i64 %84, 6
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, %87
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RDI.i185, align 8
  %95 = icmp ult i32 %93, %87
  %96 = icmp ult i32 %93, %92
  %97 = or i1 %95, %96
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %98, i8* %99, align 1
  %100 = and i32 %93, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1
  %106 = xor i32 %92, %87
  %107 = xor i32 %106, %93
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %110, i8* %111, align 1
  %112 = icmp eq i32 %93, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %113, i8* %114, align 1
  %115 = lshr i32 %93, 31
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %116, i8* %117, align 1
  %118 = lshr i32 %87, 31
  %119 = lshr i32 %92, 31
  %120 = xor i32 %115, %118
  %121 = xor i32 %115, %119
  %122 = add nuw nsw i32 %120, %121
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %124, i8* %125, align 1
  %126 = add i64 %84, 9
  store i64 %126, i64* %PC.i, align 8
  store i32 %93, i32* %91, align 4
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -56
  %129 = load i64, i64* %PC.i, align 8
  %130 = add i64 %129, 7
  store i64 %130, i64* %PC.i, align 8
  %131 = inttoptr i64 %128 to i32*
  store i32 0, i32* %131, align 4
  %EBX.i = bitcast %union.anon* %11 to i32*
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -60
  %134 = load i32, i32* %EBX.i, align 4
  %135 = load i64, i64* %PC.i, align 8
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC.i, align 8
  %137 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %137, align 4
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -72
  %140 = load i64, i64* %R10.i214, align 8
  %141 = load i64, i64* %PC.i, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i, align 8
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143, align 8
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -80
  %146 = load i64, i64* %R11.i211, align 8
  %147 = load i64, i64* %PC.i, align 8
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i, align 8
  %149 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %149, align 8
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -88
  %152 = load i64, i64* %RAX.i216, align 8
  %153 = load i64, i64* %PC.i, align 8
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %151 to i64*
  store i64 %152, i64* %155, align 8
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400598

block_.L_400598:                                  ; preds = %block_4005a4, %entry
  %156 = phi i64 [ %271, %block_4005a4 ], [ %.pre, %entry ]
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -56
  %159 = add i64 %156, 3
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RAX.i216, align 8
  %163 = add i64 %157, -44
  %164 = add i64 %156, 6
  store i64 %164, i64* %PC.i, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sub i32 %161, %166
  %168 = icmp ult i32 %161, %166
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %99, align 1
  %170 = and i32 %167, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %105, align 1
  %175 = xor i32 %166, %161
  %176 = xor i32 %175, %167
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %111, align 1
  %180 = icmp eq i32 %167, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %114, align 1
  %182 = lshr i32 %167, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %117, align 1
  %184 = lshr i32 %161, 31
  %185 = lshr i32 %166, 31
  %186 = xor i32 %185, %184
  %187 = xor i32 %182, %184
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %125, align 1
  %191 = icmp ne i8 %183, 0
  %192 = xor i1 %191, %189
  %.v = select i1 %192, i64 12, i64 43
  %193 = add i64 %156, %.v
  store i64 %193, i64* %3, align 8
  br i1 %192, label %block_4005a4, label %block_.L_4005c3

block_4005a4:                                     ; preds = %block_.L_400598
  %194 = add i64 %157, -24
  %195 = add i64 %193, 4
  store i64 %195, i64* %PC.i, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RAX.i216, align 8
  %198 = add i64 %193, 8
  store i64 %198, i64* %PC.i, align 8
  %199 = load i32, i32* %160, align 4
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %RCX.i196, align 8
  %201 = shl nsw i64 %200, 2
  %202 = add i64 %201, %197
  %203 = add i64 %193, 11
  store i64 %203, i64* %PC.i, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RDX.i199, align 8
  %207 = add i64 %157, -52
  %208 = add i64 %193, 14
  store i64 %208, i64* %PC.i, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, %205
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RDX.i199, align 8
  %213 = icmp ult i32 %211, %205
  %214 = icmp ult i32 %211, %210
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %99, align 1
  %217 = and i32 %211, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %105, align 1
  %222 = xor i32 %210, %205
  %223 = xor i32 %222, %211
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %111, align 1
  %227 = icmp eq i32 %211, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %114, align 1
  %229 = lshr i32 %211, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %117, align 1
  %231 = lshr i32 %205, 31
  %232 = lshr i32 %210, 31
  %233 = xor i32 %229, %231
  %234 = xor i32 %229, %232
  %235 = add nuw nsw i32 %233, %234
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %125, align 1
  %238 = add i64 %193, 17
  store i64 %238, i64* %PC.i, align 8
  store i32 %211, i32* %209, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -56
  %241 = load i64, i64* %PC.i, align 8
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC.i, align 8
  %243 = inttoptr i64 %240 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = add i32 %244, 1
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %RAX.i216, align 8
  %247 = icmp eq i32 %244, -1
  %248 = icmp eq i32 %245, 0
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %99, align 1
  %251 = and i32 %245, 255
  %252 = call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %105, align 1
  %256 = xor i32 %244, %245
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %111, align 1
  %260 = icmp eq i32 %245, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %114, align 1
  %262 = lshr i32 %245, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %117, align 1
  %264 = lshr i32 %244, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %262
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %125, align 1
  %269 = add i64 %241, 9
  store i64 %269, i64* %PC.i, align 8
  store i32 %245, i32* %243, align 4
  %270 = load i64, i64* %PC.i, align 8
  %271 = add i64 %270, -38
  store i64 %271, i64* %3, align 8
  br label %block_.L_400598

block_.L_4005c3:                                  ; preds = %block_.L_400598
  %272 = add i64 %157, -32
  %273 = add i64 %193, 4
  store i64 %273, i64* %PC.i, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RAX.i216, align 8
  %276 = add i64 %193, 6
  store i64 %276, i64* %PC.i, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RCX.i196, align 8
  %280 = add i64 %157, -52
  %281 = add i64 %193, 9
  store i64 %281, i64* %PC.i, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = add i32 %283, %278
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RCX.i196, align 8
  %286 = icmp ult i32 %284, %278
  %287 = icmp ult i32 %284, %283
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %99, align 1
  %290 = and i32 %284, 255
  %291 = call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %105, align 1
  %295 = xor i32 %283, %278
  %296 = xor i32 %295, %284
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %111, align 1
  %300 = icmp eq i32 %284, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %114, align 1
  %302 = lshr i32 %284, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %117, align 1
  %304 = lshr i32 %278, 31
  %305 = lshr i32 %283, 31
  %306 = xor i32 %302, %304
  %307 = xor i32 %302, %305
  %308 = add nuw nsw i32 %306, %307
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %125, align 1
  %311 = add i64 %193, 12
  store i64 %311, i64* %PC.i, align 8
  store i32 %284, i32* %282, align 4
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -56
  %314 = load i64, i64* %PC.i, align 8
  %315 = add i64 %314, 7
  store i64 %315, i64* %PC.i, align 8
  %316 = inttoptr i64 %313 to i32*
  store i32 0, i32* %316, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_4005d6

block_.L_4005d6:                                  ; preds = %block_4005e2, %block_.L_4005c3
  %317 = phi i64 [ %432, %block_4005e2 ], [ %.pre1, %block_.L_4005c3 ]
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -56
  %320 = add i64 %317, 3
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX.i216, align 8
  %324 = add i64 %318, -48
  %325 = add i64 %317, 6
  store i64 %325, i64* %PC.i, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sub i32 %322, %327
  %329 = icmp ult i32 %322, %327
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %99, align 1
  %331 = and i32 %328, 255
  %332 = call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %105, align 1
  %336 = xor i32 %327, %322
  %337 = xor i32 %336, %328
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %111, align 1
  %341 = icmp eq i32 %328, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %114, align 1
  %343 = lshr i32 %328, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %117, align 1
  %345 = lshr i32 %322, 31
  %346 = lshr i32 %327, 31
  %347 = xor i32 %346, %345
  %348 = xor i32 %343, %345
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %125, align 1
  %352 = icmp ne i8 %344, 0
  %353 = xor i1 %352, %350
  %.v4 = select i1 %353, i64 12, i64 43
  %354 = add i64 %317, %.v4
  store i64 %354, i64* %3, align 8
  br i1 %353, label %block_4005e2, label %block_.L_400601

block_4005e2:                                     ; preds = %block_.L_4005d6
  %355 = add i64 %318, -40
  %356 = add i64 %354, 4
  store i64 %356, i64* %PC.i, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RAX.i216, align 8
  %359 = add i64 %354, 8
  store i64 %359, i64* %PC.i, align 8
  %360 = load i32, i32* %321, align 4
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %RCX.i196, align 8
  %362 = shl nsw i64 %361, 2
  %363 = add i64 %362, %358
  %364 = add i64 %354, 11
  store i64 %364, i64* %PC.i, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RDX.i199, align 8
  %368 = add i64 %318, -52
  %369 = add i64 %354, 14
  store i64 %369, i64* %PC.i, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, %366
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RDX.i199, align 8
  %374 = icmp ult i32 %372, %366
  %375 = icmp ult i32 %372, %371
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %99, align 1
  %378 = and i32 %372, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %105, align 1
  %383 = xor i32 %371, %366
  %384 = xor i32 %383, %372
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %111, align 1
  %388 = icmp eq i32 %372, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %114, align 1
  %390 = lshr i32 %372, 31
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %117, align 1
  %392 = lshr i32 %366, 31
  %393 = lshr i32 %371, 31
  %394 = xor i32 %390, %392
  %395 = xor i32 %390, %393
  %396 = add nuw nsw i32 %394, %395
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %125, align 1
  %399 = add i64 %354, 17
  store i64 %399, i64* %PC.i, align 8
  store i32 %372, i32* %370, align 4
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -56
  %402 = load i64, i64* %PC.i, align 8
  %403 = add i64 %402, 3
  store i64 %403, i64* %PC.i, align 8
  %404 = inttoptr i64 %401 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = add i32 %405, 1
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX.i216, align 8
  %408 = icmp eq i32 %405, -1
  %409 = icmp eq i32 %406, 0
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %99, align 1
  %412 = and i32 %406, 255
  %413 = call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %105, align 1
  %417 = xor i32 %405, %406
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %111, align 1
  %421 = icmp eq i32 %406, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %114, align 1
  %423 = lshr i32 %406, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %117, align 1
  %425 = lshr i32 %405, 31
  %426 = xor i32 %423, %425
  %427 = add nuw nsw i32 %426, %423
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %125, align 1
  %430 = add i64 %402, 9
  store i64 %430, i64* %PC.i, align 8
  store i32 %406, i32* %404, align 4
  %431 = load i64, i64* %PC.i, align 8
  %432 = add i64 %431, -38
  store i64 %432, i64* %3, align 8
  br label %block_.L_4005d6

block_.L_400601:                                  ; preds = %block_.L_4005d6
  %433 = add i64 %318, 16
  %434 = add i64 %354, 3
  store i64 %434, i64* %PC.i, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX.i216, align 8
  %438 = add i64 %318, -52
  %439 = add i64 %354, 6
  store i64 %439, i64* %PC.i, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, %436
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RAX.i216, align 8
  %444 = icmp ult i32 %442, %436
  %445 = icmp ult i32 %442, %441
  %446 = or i1 %444, %445
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %99, align 1
  %448 = and i32 %442, 255
  %449 = call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %105, align 1
  %453 = xor i32 %441, %436
  %454 = xor i32 %453, %442
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %111, align 1
  %458 = icmp eq i32 %442, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %114, align 1
  %460 = lshr i32 %442, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %117, align 1
  %462 = lshr i32 %436, 31
  %463 = lshr i32 %441, 31
  %464 = xor i32 %460, %462
  %465 = xor i32 %460, %463
  %466 = add nuw nsw i32 %464, %465
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %125, align 1
  %469 = add i64 %354, 9
  store i64 %469, i64* %PC.i, align 8
  store i32 %442, i32* %440, align 4
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -56
  %472 = load i64, i64* %PC.i, align 8
  %473 = add i64 %472, 7
  store i64 %473, i64* %PC.i, align 8
  %474 = inttoptr i64 %471 to i32*
  store i32 0, i32* %474, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400611

block_.L_400611:                                  ; preds = %block_40061d, %block_.L_400601
  %475 = phi i64 [ %590, %block_40061d ], [ %.pre2, %block_.L_400601 ]
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -56
  %478 = add i64 %475, 3
  store i64 %478, i64* %PC.i, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RAX.i216, align 8
  %482 = add i64 %476, -44
  %483 = add i64 %475, 6
  store i64 %483, i64* %PC.i, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = sub i32 %480, %485
  %487 = icmp ult i32 %480, %485
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %99, align 1
  %489 = and i32 %486, 255
  %490 = call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %105, align 1
  %494 = xor i32 %485, %480
  %495 = xor i32 %494, %486
  %496 = lshr i32 %495, 4
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  store i8 %498, i8* %111, align 1
  %499 = icmp eq i32 %486, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %114, align 1
  %501 = lshr i32 %486, 31
  %502 = trunc i32 %501 to i8
  store i8 %502, i8* %117, align 1
  %503 = lshr i32 %480, 31
  %504 = lshr i32 %485, 31
  %505 = xor i32 %504, %503
  %506 = xor i32 %501, %503
  %507 = add nuw nsw i32 %506, %505
  %508 = icmp eq i32 %507, 2
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %125, align 1
  %510 = icmp ne i8 %502, 0
  %511 = xor i1 %510, %508
  %.v5 = select i1 %511, i64 12, i64 43
  %512 = add i64 %475, %.v5
  store i64 %512, i64* %3, align 8
  br i1 %511, label %block_40061d, label %block_.L_40063c

block_40061d:                                     ; preds = %block_.L_400611
  %513 = add i64 %476, 24
  %514 = add i64 %512, 4
  store i64 %514, i64* %PC.i, align 8
  %515 = inttoptr i64 %513 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RAX.i216, align 8
  %517 = add i64 %512, 8
  store i64 %517, i64* %PC.i, align 8
  %518 = load i32, i32* %479, align 4
  %519 = sext i32 %518 to i64
  store i64 %519, i64* %RCX.i196, align 8
  %520 = shl nsw i64 %519, 2
  %521 = add i64 %520, %516
  %522 = add i64 %512, 11
  store i64 %522, i64* %PC.i, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RDX.i199, align 8
  %526 = add i64 %476, -52
  %527 = add i64 %512, 14
  store i64 %527, i64* %PC.i, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = add i32 %529, %524
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RDX.i199, align 8
  %532 = icmp ult i32 %530, %524
  %533 = icmp ult i32 %530, %529
  %534 = or i1 %532, %533
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %99, align 1
  %536 = and i32 %530, 255
  %537 = call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %105, align 1
  %541 = xor i32 %529, %524
  %542 = xor i32 %541, %530
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %111, align 1
  %546 = icmp eq i32 %530, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %114, align 1
  %548 = lshr i32 %530, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %117, align 1
  %550 = lshr i32 %524, 31
  %551 = lshr i32 %529, 31
  %552 = xor i32 %548, %550
  %553 = xor i32 %548, %551
  %554 = add nuw nsw i32 %552, %553
  %555 = icmp eq i32 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %125, align 1
  %557 = add i64 %512, 17
  store i64 %557, i64* %PC.i, align 8
  store i32 %530, i32* %528, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -56
  %560 = load i64, i64* %PC.i, align 8
  %561 = add i64 %560, 3
  store i64 %561, i64* %PC.i, align 8
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, 1
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RAX.i216, align 8
  %566 = icmp eq i32 %563, -1
  %567 = icmp eq i32 %564, 0
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %99, align 1
  %570 = and i32 %564, 255
  %571 = call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %105, align 1
  %575 = xor i32 %563, %564
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %111, align 1
  %579 = icmp eq i32 %564, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %114, align 1
  %581 = lshr i32 %564, 31
  %582 = trunc i32 %581 to i8
  store i8 %582, i8* %117, align 1
  %583 = lshr i32 %563, 31
  %584 = xor i32 %581, %583
  %585 = add nuw nsw i32 %584, %581
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %125, align 1
  %588 = add i64 %560, 9
  store i64 %588, i64* %PC.i, align 8
  store i32 %564, i32* %562, align 4
  %589 = load i64, i64* %PC.i, align 8
  %590 = add i64 %589, -38
  store i64 %590, i64* %3, align 8
  br label %block_.L_400611

block_.L_40063c:                                  ; preds = %block_.L_400611
  %591 = add i64 %476, 32
  %592 = add i64 %512, 4
  store i64 %592, i64* %PC.i, align 8
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %RAX.i216, align 8
  %595 = add i64 %512, 6
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RCX.i196, align 8
  %599 = add i64 %476, -52
  %600 = add i64 %512, 9
  store i64 %600, i64* %PC.i, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = add i32 %602, %597
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RCX.i196, align 8
  %605 = icmp ult i32 %603, %597
  %606 = icmp ult i32 %603, %602
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %99, align 1
  %609 = and i32 %603, 255
  %610 = call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %105, align 1
  %614 = xor i32 %602, %597
  %615 = xor i32 %614, %603
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %111, align 1
  %619 = icmp eq i32 %603, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %114, align 1
  %621 = lshr i32 %603, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %117, align 1
  %623 = lshr i32 %597, 31
  %624 = lshr i32 %602, 31
  %625 = xor i32 %621, %623
  %626 = xor i32 %621, %624
  %627 = add nuw nsw i32 %625, %626
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %125, align 1
  %630 = add i64 %512, 12
  store i64 %630, i64* %PC.i, align 8
  store i32 %603, i32* %601, align 4
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -56
  %633 = load i64, i64* %PC.i, align 8
  %634 = add i64 %633, 7
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %632 to i32*
  store i32 0, i32* %635, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_40064f

block_.L_40064f:                                  ; preds = %block_40065b, %block_.L_40063c
  %636 = phi i64 [ %751, %block_40065b ], [ %.pre3, %block_.L_40063c ]
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -56
  %639 = add i64 %636, 3
  store i64 %639, i64* %PC.i, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RAX.i216, align 8
  %643 = add i64 %637, -48
  %644 = add i64 %636, 6
  store i64 %644, i64* %PC.i, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sub i32 %641, %646
  %648 = icmp ult i32 %641, %646
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %99, align 1
  %650 = and i32 %647, 255
  %651 = call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %105, align 1
  %655 = xor i32 %646, %641
  %656 = xor i32 %655, %647
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %111, align 1
  %660 = icmp eq i32 %647, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %114, align 1
  %662 = lshr i32 %647, 31
  %663 = trunc i32 %662 to i8
  store i8 %663, i8* %117, align 1
  %664 = lshr i32 %641, 31
  %665 = lshr i32 %646, 31
  %666 = xor i32 %665, %664
  %667 = xor i32 %662, %664
  %668 = add nuw nsw i32 %667, %666
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %125, align 1
  %671 = icmp ne i8 %663, 0
  %672 = xor i1 %671, %669
  %.v6 = select i1 %672, i64 12, i64 43
  %673 = add i64 %636, %.v6
  store i64 %673, i64* %3, align 8
  br i1 %672, label %block_40065b, label %block_.L_40067a

block_40065b:                                     ; preds = %block_.L_40064f
  %674 = add i64 %637, 40
  %675 = add i64 %673, 4
  store i64 %675, i64* %PC.i, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RAX.i216, align 8
  %678 = add i64 %673, 8
  store i64 %678, i64* %PC.i, align 8
  %679 = load i32, i32* %640, align 4
  %680 = sext i32 %679 to i64
  store i64 %680, i64* %RCX.i196, align 8
  %681 = shl nsw i64 %680, 2
  %682 = add i64 %681, %677
  %683 = add i64 %673, 11
  store i64 %683, i64* %PC.i, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RDX.i199, align 8
  %687 = add i64 %637, -52
  %688 = add i64 %673, 14
  store i64 %688, i64* %PC.i, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = add i32 %690, %685
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RDX.i199, align 8
  %693 = icmp ult i32 %691, %685
  %694 = icmp ult i32 %691, %690
  %695 = or i1 %693, %694
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %99, align 1
  %697 = and i32 %691, 255
  %698 = call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %105, align 1
  %702 = xor i32 %690, %685
  %703 = xor i32 %702, %691
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %111, align 1
  %707 = icmp eq i32 %691, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %114, align 1
  %709 = lshr i32 %691, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %117, align 1
  %711 = lshr i32 %685, 31
  %712 = lshr i32 %690, 31
  %713 = xor i32 %709, %711
  %714 = xor i32 %709, %712
  %715 = add nuw nsw i32 %713, %714
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %125, align 1
  %718 = add i64 %673, 17
  store i64 %718, i64* %PC.i, align 8
  store i32 %691, i32* %689, align 4
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -56
  %721 = load i64, i64* %PC.i, align 8
  %722 = add i64 %721, 3
  store i64 %722, i64* %PC.i, align 8
  %723 = inttoptr i64 %720 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = add i32 %724, 1
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RAX.i216, align 8
  %727 = icmp eq i32 %724, -1
  %728 = icmp eq i32 %725, 0
  %729 = or i1 %727, %728
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %99, align 1
  %731 = and i32 %725, 255
  %732 = call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %105, align 1
  %736 = xor i32 %724, %725
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %111, align 1
  %740 = icmp eq i32 %725, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %114, align 1
  %742 = lshr i32 %725, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %117, align 1
  %744 = lshr i32 %724, 31
  %745 = xor i32 %742, %744
  %746 = add nuw nsw i32 %745, %742
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %125, align 1
  %749 = add i64 %721, 9
  store i64 %749, i64* %PC.i, align 8
  store i32 %725, i32* %723, align 4
  %750 = load i64, i64* %PC.i, align 8
  %751 = add i64 %750, -38
  store i64 %751, i64* %3, align 8
  br label %block_.L_40064f

block_.L_40067a:                                  ; preds = %block_.L_40064f
  %752 = add i64 %637, -52
  %753 = add i64 %673, 3
  store i64 %753, i64* %PC.i, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RAX.i216, align 8
  %757 = add i64 %673, 4
  store i64 %757, i64* %PC.i, align 8
  %758 = load i64, i64* %6, align 8
  %759 = add i64 %758, 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %RBX.i219, align 8
  store i64 %759, i64* %6, align 8
  %762 = add i64 %673, 5
  store i64 %762, i64* %PC.i, align 8
  %763 = add i64 %758, 16
  %764 = inttoptr i64 %759 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %765, i64* %RBP.i, align 8
  store i64 %763, i64* %6, align 8
  %766 = add i64 %673, 6
  store i64 %766, i64* %PC.i, align 8
  %767 = inttoptr i64 %763 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %3, align 8
  %769 = add i64 %758, 24
  store i64 %769, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
