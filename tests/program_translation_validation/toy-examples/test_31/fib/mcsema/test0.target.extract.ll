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

declare %struct.Memory* @sub_4004f0.fib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @fib(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -24
  store i64 %11, i64* %RSP.i53, align 8
  %12 = icmp ult i64 %8, 16
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i49 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 1, i64* %RAX.i49, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i46 = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -16
  %43 = load i32, i32* %EDI.i46, align 4
  %44 = add i64 %10, 15
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %EAX.i43 = bitcast %union.anon* %40 to i32*
  %46 = load i32, i32* %EAX.i43, align 4
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -8
  %49 = load i64, i64* %PC.i, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC.i, align 8
  %51 = inttoptr i64 %48 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %46, %52
  %54 = icmp ult i32 %46, %52
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %14, align 1
  %56 = and i32 %53, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %21, align 1
  %61 = xor i32 %52, %46
  %62 = xor i32 %61, %53
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %27, align 1
  %66 = icmp eq i32 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %30, align 1
  %68 = lshr i32 %53, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %33, align 1
  %70 = lshr i32 %46, 31
  %71 = lshr i32 %52, 31
  %72 = xor i32 %71, %70
  %73 = xor i32 %68, %70
  %74 = add nuw nsw i32 %73, %72
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %39, align 1
  %.v = select i1 %66, i64 20, i64 9
  %77 = add i64 %49, %.v
  store i64 %77, i64* %3, align 8
  br i1 %66, label %block_.L_400514, label %block_400509

block_400509:                                     ; preds = %entry
  store i64 0, i64* %RAX.i49, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC.i, align 8
  %79 = load i32, i32* %51, align 4
  %80 = sub i32 0, %79
  %81 = icmp ne i32 %79, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %14, align 1
  %83 = and i32 %80, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83)
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1
  %88 = xor i32 %79, %80
  %89 = lshr i32 %88, 4
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %27, align 1
  %92 = icmp eq i32 %79, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %30, align 1
  %94 = lshr i32 %80, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %33, align 1
  %96 = lshr i32 %79, 31
  %97 = add nuw nsw i32 %94, %96
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %39, align 1
  %.v3 = select i1 %92, i64 11, i64 23
  %100 = add i64 %77, %.v3
  store i64 %100, i64* %3, align 8
  br i1 %92, label %block_.L_400514, label %block_.L_400520

block_.L_400514:                                  ; preds = %block_400509, %entry
  %101 = phi i64 [ %100, %block_400509 ], [ %77, %entry ]
  %102 = add i64 %47, -4
  %103 = add i64 %101, 7
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %102 to i32*
  store i32 1, i32* %104, align 4
  %105 = load i64, i64* %PC.i, align 8
  %106 = add i64 %105, 40
  store i64 %106, i64* %3, align 8
  br label %block_.L_400543

block_.L_400520:                                  ; preds = %block_400509
  %107 = add i64 %100, 3
  store i64 %107, i64* %PC.i, align 8
  %108 = load i32, i32* %51, align 4
  %109 = add i32 %108, -1
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RAX.i49, align 8
  %111 = icmp eq i32 %108, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %14, align 1
  %113 = and i32 %109, 255
  %114 = call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %21, align 1
  %118 = xor i32 %108, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %27, align 1
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %30, align 1
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %33, align 1
  %126 = lshr i32 %108, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %39, align 1
  %RDI.i25 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 %110, i64* %RDI.i25, align 8
  %131 = add i64 %100, -48
  %132 = add i64 %100, 13
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8
  store i64 %131, i64* %3, align 8
  %call2_400528 = call %struct.Memory* @sub_4004f0.fib(%struct.State* %0, i64 %131, %struct.Memory* %2)
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -8
  %138 = load i64, i64* %PC.i, align 8
  %139 = add i64 %138, 3
  store i64 %139, i64* %PC.i, align 8
  %140 = inttoptr i64 %137 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, -2
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RDI.i25, align 8
  %144 = icmp ult i32 %141, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = and i32 %142, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i32 %141, %142
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %27, align 1
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %30, align 1
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %33, align 1
  %159 = lshr i32 %141, 31
  %160 = xor i32 %157, %159
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %39, align 1
  %164 = add i64 %136, -12
  %165 = load i32, i32* %EAX.i43, align 4
  %166 = add i64 %138, 9
  store i64 %166, i64* %PC.i, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %167, align 4
  %168 = load i64, i64* %PC.i, align 8
  %169 = add i64 %168, -70
  %170 = add i64 %168, 5
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %6, align 8
  store i64 %169, i64* %3, align 8
  %call2_400536 = call %struct.Memory* @sub_4004f0.fib(%struct.State* %0, i64 %169, %struct.Memory* %call2_400528)
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -12
  %176 = load i64, i64* %PC.i, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %EAX.i43, align 4
  %181 = add i32 %180, %179
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RDI.i25, align 8
  %183 = icmp ult i32 %181, %179
  %184 = icmp ult i32 %181, %180
  %185 = or i1 %183, %184
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %181, 255
  %188 = call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %180, %179
  %193 = xor i32 %192, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %27, align 1
  %197 = icmp eq i32 %181, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1
  %199 = lshr i32 %181, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %33, align 1
  %201 = lshr i32 %179, 31
  %202 = lshr i32 %180, 31
  %203 = xor i32 %199, %201
  %204 = xor i32 %199, %202
  %205 = add nuw nsw i32 %203, %204
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %39, align 1
  %208 = add i64 %174, -4
  %209 = add i64 %176, 8
  store i64 %209, i64* %PC.i, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %181, i32* %210, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400543

block_.L_400543:                                  ; preds = %block_.L_400520, %block_.L_400514
  %211 = phi i64 [ %.pre, %block_.L_400520 ], [ %106, %block_.L_400514 ]
  %loadMem_400543 = phi %struct.Memory* [ %call2_400536, %block_.L_400520 ], [ %2, %block_.L_400514 ]
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -4
  %214 = add i64 %211, 3
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i49, align 8
  %218 = load i64, i64* %RSP.i53, align 8
  %219 = add i64 %218, 16
  store i64 %219, i64* %RSP.i53, align 8
  %220 = icmp ugt i64 %218, -17
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %14, align 1
  %222 = trunc i64 %219 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %21, align 1
  %228 = xor i64 %218, 16
  %229 = xor i64 %228, %219
  %230 = lshr i64 %229, 4
  %231 = trunc i64 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %27, align 1
  %233 = icmp eq i64 %219, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %30, align 1
  %235 = lshr i64 %219, 63
  %236 = trunc i64 %235 to i8
  store i8 %236, i8* %33, align 1
  %237 = lshr i64 %218, 63
  %238 = xor i64 %235, %237
  %239 = add nuw nsw i64 %238, %235
  %240 = icmp eq i64 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %39, align 1
  %242 = add i64 %211, 8
  store i64 %242, i64* %PC.i, align 8
  %243 = add i64 %218, 24
  %244 = inttoptr i64 %219 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RBP.i, align 8
  store i64 %243, i64* %6, align 8
  %246 = add i64 %211, 9
  store i64 %246, i64* %PC.i, align 8
  %247 = inttoptr i64 %243 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %3, align 8
  %249 = add i64 %218, 32
  store i64 %249, i64* %6, align 8
  ret %struct.Memory* %loadMem_400543
}

define %struct.Memory* @routine_callq_.fib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
