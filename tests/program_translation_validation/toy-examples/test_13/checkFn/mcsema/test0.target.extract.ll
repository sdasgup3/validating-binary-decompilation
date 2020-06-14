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

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @checkFn(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i48, align 8
  %12 = icmp ult i64 %8, 32
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RDI.i57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i57, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -12
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 7
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 1, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC.i, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDI.i57, align 8
  %54 = add i64 %50, -915
  %55 = add i64 %50, 9
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, -8
  %58 = inttoptr i64 %57 to i64*
  store i64 %55, i64* %58, align 8
  store i64 %57, i64* %6, align 8
  store i64 %54, i64* %3, align 8
  %59 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i = bitcast %union.anon* %60 to i32*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %62 = load i32, i32* %EAX.i, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %PC.i, align 8
  store i64 %63, i64* %RCX.i, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -16
  %67 = add i64 %64, 5
  store i64 %67, i64* %PC.i, align 8
  %68 = inttoptr i64 %66 to i32*
  store i32 %62, i32* %68, align 4
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -16
  %71 = load i64, i64* %PC.i, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC.i, align 8
  %73 = inttoptr i64 %70 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, -1
  %76 = icmp eq i32 %74, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %14, align 1
  %78 = and i32 %75, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %21, align 1
  %83 = xor i32 %74, %75
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %26, align 1
  %87 = icmp eq i32 %75, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %29, align 1
  %89 = lshr i32 %75, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %32, align 1
  %91 = lshr i32 %74, 31
  %92 = xor i32 %89, %91
  %93 = add nuw nsw i32 %92, %91
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %38, align 1
  %96 = icmp ne i8 %90, 0
  %97 = xor i1 %96, %94
  %98 = or i1 %87, %97
  %.v = select i1 %98, i64 66, i64 10
  %99 = add i64 %71, %.v
  store i64 %99, i64* %3, align 8
  %.pre3 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  br i1 %98, label %block_.L_4008c3, label %block_40088b

block_40088b:                                     ; preds = %entry
  %100 = add i64 %69, -8
  %101 = add i64 %99, 4
  store i64 %101, i64* %PC.i, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %.pre3, align 8
  %CL.i36 = bitcast %union.anon* %61 to i8*
  %104 = add i64 %99, 6
  store i64 %104, i64* %PC.i, align 8
  %105 = inttoptr i64 %103 to i8*
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %CL.i36, align 1
  %107 = add i64 %69, -17
  %108 = add i64 %99, 9
  store i64 %108, i64* %PC.i, align 8
  %109 = inttoptr i64 %107 to i8*
  store i8 %106, i8* %109, align 1
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -8
  %112 = load i64, i64* %PC.i, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC.i, align 8
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %.pre3, align 8
  %RDX.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %116 = add i64 %110, -16
  %117 = add i64 %112, 7
  store i64 %117, i64* %PC.i, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, -1
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RDX.i27, align 8
  %122 = icmp eq i32 %119, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %14, align 1
  %124 = and i32 %120, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %21, align 1
  %129 = xor i32 %119, %120
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %26, align 1
  %133 = icmp eq i32 %120, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %29, align 1
  %135 = lshr i32 %120, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %32, align 1
  %137 = lshr i32 %119, 31
  %138 = xor i32 %135, %137
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %38, align 1
  %RSI.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %142 = sext i32 %120 to i64
  store i64 %142, i64* %RSI.i23, align 8
  %143 = add i64 %142, %115
  %144 = add i64 %112, 16
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %143 to i8*
  %146 = load i8, i8* %145, align 1
  store i8 %146, i8* %CL.i36, align 1
  %147 = add i64 %110, -18
  %148 = add i64 %112, 19
  store i64 %148, i64* %PC.i, align 8
  %149 = inttoptr i64 %147 to i8*
  store i8 %146, i8* %149, align 1
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -17
  %152 = load i64, i64* %PC.i, align 8
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC.i, align 8
  %154 = inttoptr i64 %151 to i8*
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i64
  %157 = and i64 %156, 4294967295
  store i64 %157, i64* %RDX.i27, align 8
  %158 = add i64 %150, -18
  %159 = add i64 %152, 8
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %158 to i8*
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i64
  %163 = and i64 %162, 4294967295
  store i64 %163, i64* %RDI.i57, align 8
  %164 = sext i8 %155 to i32
  %165 = sext i8 %161 to i32
  %166 = sub nsw i32 %164, %165
  %167 = icmp ult i8 %155, %161
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %14, align 1
  %169 = and i32 %166, 255
  %170 = call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %21, align 1
  %174 = xor i8 %161, %155
  %175 = zext i8 %174 to i32
  %176 = xor i32 %175, %166
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %26, align 1
  %180 = icmp eq i32 %166, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %29, align 1
  %182 = lshr i32 %166, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %32, align 1
  %184 = lshr i32 %164, 31
  %185 = lshr i32 %165, 31
  %186 = xor i32 %185, %184
  %187 = xor i32 %182, %184
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %38, align 1
  %.v4 = select i1 %180, i64 16, i64 23
  %191 = add i64 %152, %.v4
  store i64 %191, i64* %3, align 8
  br i1 %180, label %block_4008b7, label %block_.L_4008be

block_4008b7:                                     ; preds = %block_40088b
  %192 = add i64 %150, -12
  %193 = add i64 %191, 7
  store i64 %193, i64* %PC.i, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 0, i32* %194, align 4
  %.pre = load i64, i64* %PC.i, align 8
  %.pre1.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4008be

block_.L_4008be:                                  ; preds = %block_4008b7, %block_40088b
  %.pre1 = phi i64 [ %.pre1.pre, %block_4008b7 ], [ %150, %block_40088b ]
  %195 = phi i64 [ %.pre, %block_4008b7 ], [ %191, %block_40088b ]
  %196 = add i64 %195, 5
  store i64 %196, i64* %3, align 8
  br label %block_.L_4008c3

block_.L_4008c3:                                  ; preds = %block_.L_4008be, %entry
  %197 = phi i64 [ %196, %block_.L_4008be ], [ %99, %entry ]
  %198 = phi i64 [ %.pre1, %block_.L_4008be ], [ %69, %entry ]
  %199 = add i64 %198, -12
  %200 = add i64 %197, 3
  store i64 %200, i64* %PC.i, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %.pre3, align 8
  %204 = load i64, i64* %RSP.i48, align 8
  %205 = add i64 %204, 32
  store i64 %205, i64* %RSP.i48, align 8
  %206 = icmp ugt i64 %204, -33
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %14, align 1
  %208 = trunc i64 %205 to i32
  %209 = and i32 %208, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %21, align 1
  %214 = xor i64 %204, %205
  %215 = lshr i64 %214, 4
  %216 = trunc i64 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %26, align 1
  %218 = icmp eq i64 %205, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %29, align 1
  %220 = lshr i64 %205, 63
  %221 = trunc i64 %220 to i8
  store i8 %221, i8* %32, align 1
  %222 = lshr i64 %204, 63
  %223 = xor i64 %220, %222
  %224 = add nuw nsw i64 %223, %220
  %225 = icmp eq i64 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %38, align 1
  %227 = add i64 %197, 8
  store i64 %227, i64* %PC.i, align 8
  %228 = add i64 %204, 40
  %229 = inttoptr i64 %205 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RBP.i, align 8
  store i64 %228, i64* %6, align 8
  %231 = add i64 %197, 9
  store i64 %231, i64* %PC.i, align 8
  %232 = inttoptr i64 %228 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %3, align 8
  %234 = add i64 %204, 48
  store i64 %234, i64* %6, align 8
  ret %struct.Memory* %59
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
