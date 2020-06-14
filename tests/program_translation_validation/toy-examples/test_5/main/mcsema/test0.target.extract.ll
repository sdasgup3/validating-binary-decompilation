; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x4006a4_type = type <{ [8 x i8] }>
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

@G__0x4006a4 = external global %G__0x4006a4_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4005d0.foo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i11, align 8
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i74 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 40, i64* %RAX.i74, align 8
  %EAX.i71 = bitcast %union.anon* %39 to i32*
  %RCX.i72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 40, i64* %RCX.i72, align 8
  %40 = add i64 %7, -12
  %41 = add i64 %10, 21
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i32, i32* %EDI.i, align 4
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i64 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RSI.i64, align 8
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RDI.i62 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %57 = load i64, i64* %RCX.i72, align 8
  %58 = load i64, i64* %PC.i, align 8
  store i64 %57, i64* %RDI.i62, align 8
  %59 = add i64 %58, -285
  %60 = add i64 %58, 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, -8
  %63 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %63, align 8
  store i64 %62, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  %64 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -24
  %67 = load i64, i64* %RAX.i74, align 8
  %68 = load i64, i64* %PC.i, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC.i, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -28
  %73 = load i64, i64* %PC.i, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 0, i32* %75, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400570

block_.L_400570:                                  ; preds = %block_40057a, %entry
  %76 = phi i64 [ %175, %block_40057a ], [ %.pre, %entry ]
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -28
  %79 = add i64 %76, 4
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, -10
  %83 = icmp ult i32 %81, 10
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %81, %82
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %26, align 1
  %94 = icmp eq i32 %82, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %29, align 1
  %96 = lshr i32 %82, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %32, align 1
  %98 = lshr i32 %81, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %38, align 1
  %103 = icmp ne i8 %97, 0
  %104 = xor i1 %103, %101
  %.v = select i1 %104, i64 10, i64 41
  %105 = add i64 %76, %.v
  store i64 %105, i64* %3, align 8
  br i1 %104, label %block_40057a, label %block_.L_400599

block_40057a:                                     ; preds = %block_.L_400570
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC.i, align 8
  %107 = load i32, i32* %80, align 4
  %108 = add i32 %107, 1
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RAX.i74, align 8
  %110 = icmp eq i32 %107, -1
  %111 = icmp eq i32 %108, 0
  %112 = or i1 %110, %111
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = and i32 %108, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i32 %107, %108
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %26, align 1
  %123 = icmp eq i32 %108, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %29, align 1
  %125 = lshr i32 %108, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %32, align 1
  %127 = lshr i32 %107, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %125
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %38, align 1
  %132 = add i64 %77, -24
  %133 = add i64 %105, 10
  store i64 %133, i64* %PC.i, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RCX.i72, align 8
  %RDX.i39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %136 = add i64 %105, 14
  store i64 %136, i64* %PC.i, align 8
  %137 = load i32, i32* %80, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RDX.i39, align 8
  %139 = shl nsw i64 %138, 2
  %140 = add i64 %139, %135
  %141 = add i64 %105, 17
  store i64 %141, i64* %PC.i, align 8
  %142 = inttoptr i64 %140 to i32*
  store i32 %108, i32* %142, align 4
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -28
  %145 = load i64, i64* %PC.i, align 8
  %146 = add i64 %145, 3
  store i64 %146, i64* %PC.i, align 8
  %147 = inttoptr i64 %144 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 1
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX.i74, align 8
  %151 = icmp eq i32 %148, -1
  %152 = icmp eq i32 %149, 0
  %153 = or i1 %151, %152
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %14, align 1
  %155 = and i32 %149, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i32 %148, %149
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1
  %164 = icmp eq i32 %149, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1
  %166 = lshr i32 %149, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %32, align 1
  %168 = lshr i32 %148, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %38, align 1
  %173 = add i64 %145, 9
  store i64 %173, i64* %PC.i, align 8
  store i32 %149, i32* %147, align 4
  %174 = load i64, i64* %PC.i, align 8
  %175 = add i64 %174, -36
  store i64 %175, i64* %3, align 8
  br label %block_.L_400570

block_.L_400599:                                  ; preds = %block_.L_400570
  store i64 10, i64* %RSI.i64, align 8
  %176 = add i64 %77, -24
  %177 = add i64 %105, 9
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RDI.i62, align 8
  %AL.i21 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i21, align 1
  %180 = add i64 %105, 55
  %181 = add i64 %105, 16
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %6, align 8
  store i64 %180, i64* %3, align 8
  %call2_4005a4 = call %struct.Memory* @sub_4005d0.foo(%struct.State* %0, i64 %180, %struct.Memory* %64)
  %185 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4006a4_type* @G__0x4006a4 to i64), i64* %RDI.i62, align 8
  %186 = load i32, i32* %EAX.i71, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RSI.i64, align 8
  store i8 0, i8* %AL.i21, align 1
  %188 = add i64 %185, -377
  %189 = add i64 %185, 19
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, -8
  %192 = inttoptr i64 %191 to i64*
  store i64 %189, i64* %192, align 8
  store i64 %191, i64* %6, align 8
  store i64 %188, i64* %3, align 8
  %193 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4005a4)
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -4
  %196 = load i64, i64* %PC.i, align 8
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC.i, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RSI.i64, align 8
  %201 = add i64 %194, -32
  %202 = load i32, i32* %EAX.i71, align 4
  %203 = add i64 %196, 6
  store i64 %203, i64* %PC.i, align 8
  %204 = inttoptr i64 %201 to i32*
  store i32 %202, i32* %204, align 4
  %ESI.i = bitcast %union.anon* %50 to i32*
  %205 = load i32, i32* %ESI.i, align 4
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %PC.i, align 8
  store i64 %206, i64* %RAX.i74, align 8
  %208 = load i64, i64* %RSP.i11, align 8
  %209 = add i64 %208, 32
  store i64 %209, i64* %RSP.i11, align 8
  %210 = icmp ugt i64 %208, -33
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %14, align 1
  %212 = trunc i64 %209 to i32
  %213 = and i32 %212, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  %218 = xor i64 %208, %209
  %219 = lshr i64 %218, 4
  %220 = trunc i64 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %26, align 1
  %222 = icmp eq i64 %209, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %29, align 1
  %224 = lshr i64 %209, 63
  %225 = trunc i64 %224 to i8
  store i8 %225, i8* %32, align 1
  %226 = lshr i64 %208, 63
  %227 = xor i64 %224, %226
  %228 = add nuw nsw i64 %227, %224
  %229 = icmp eq i64 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %38, align 1
  %231 = add i64 %207, 7
  store i64 %231, i64* %PC.i, align 8
  %232 = add i64 %208, 40
  %233 = inttoptr i64 %209 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RBP.i, align 8
  store i64 %232, i64* %6, align 8
  %235 = add i64 %207, 8
  store i64 %235, i64* %PC.i, align 8
  %236 = inttoptr i64 %232 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %3, align 8
  %238 = add i64 %208, 48
  store i64 %238, i64* %6, align 8
  ret %struct.Memory* %193
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
