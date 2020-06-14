; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400664_type = type <{ [8 x i8] }>
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

@G__0x400664 = external global %G__0x400664_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @foo(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i8, align 8
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %RSI.i82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i82, align 8
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -20
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 3, i32* %54, align 4
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i77 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %EAX.i74 = bitcast %union.anon* %55 to i32*
  %RCX.i67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400506

block_.L_400506:                                  ; preds = %block_400512, %entry
  %56 = phi i64 [ %169, %block_400512 ], [ %.pre, %entry ]
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -20
  %59 = add i64 %56, 3
  store i64 %59, i64* %PC.i, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RAX.i77, align 8
  %63 = add i64 %57, -4
  %64 = add i64 %56, 6
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %61, %66
  %68 = icmp ult i32 %61, %66
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %14, align 1
  %70 = and i32 %67, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %21, align 1
  %75 = xor i32 %66, %61
  %76 = xor i32 %75, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %26, align 1
  %80 = icmp eq i32 %67, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %29, align 1
  %82 = lshr i32 %67, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %32, align 1
  %84 = lshr i32 %61, 31
  %85 = lshr i32 %66, 31
  %86 = xor i32 %85, %84
  %87 = xor i32 %82, %84
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %38, align 1
  %91 = or i1 %80, %68
  %.v = select i1 %91, i64 55, i64 12
  %92 = add i64 %56, %.v
  store i64 %92, i64* %3, align 8
  br i1 %91, label %block_.L_40053d, label %block_400512

block_400512:                                     ; preds = %block_.L_400506
  %93 = add i64 %57, -16
  %94 = add i64 %92, 4
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RAX.i77, align 8
  %97 = add i64 %92, 7
  store i64 %97, i64* %PC.i, align 8
  %98 = load i32, i32* %60, align 4
  %99 = add i32 %98, -1
  %100 = zext i32 %99 to i64
  %101 = icmp eq i32 %98, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1
  %103 = and i32 %99, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  %108 = xor i32 %98, %99
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %26, align 1
  %112 = icmp eq i32 %99, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %29, align 1
  %114 = lshr i32 %99, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %32, align 1
  %116 = lshr i32 %98, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %38, align 1
  store i64 %100, i64* %RCX.i67, align 8
  %121 = zext i32 %99 to i64
  store i64 %121, i64* %RDX.i60, align 8
  %122 = shl nuw nsw i64 %121, 2
  %123 = add i64 %122, %96
  %124 = add i64 %92, 17
  store i64 %124, i64* %PC.i, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RCX.i67, align 8
  %128 = add i64 %92, 21
  store i64 %128, i64* %PC.i, align 8
  %129 = load i64, i64* %95, align 8
  store i64 %129, i64* %RAX.i77, align 8
  %130 = add i64 %92, 24
  store i64 %130, i64* %PC.i, align 8
  %131 = load i32, i32* %60, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RSI.i82, align 8
  store i64 %132, i64* %RDX.i60, align 8
  %133 = shl nuw nsw i64 %132, 2
  %134 = add i64 %133, %129
  %135 = add i64 %92, 29
  store i64 %135, i64* %PC.i, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 %126, i32* %136, align 4
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -20
  %139 = load i64, i64* %PC.i, align 8
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, -1
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX.i77, align 8
  %145 = icmp ne i32 %142, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %14, align 1
  %147 = and i32 %143, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %21, align 1
  %152 = xor i32 %142, 16
  %153 = xor i32 %143, %152
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %26, align 1
  %157 = icmp eq i32 %143, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %29, align 1
  %159 = lshr i32 %143, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %32, align 1
  %161 = lshr i32 %142, 31
  %162 = xor i32 %159, %161
  %163 = xor i32 %159, 1
  %164 = add nuw nsw i32 %162, %163
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %38, align 1
  %167 = add i64 %139, 9
  store i64 %167, i64* %PC.i, align 8
  store i32 %143, i32* %141, align 4
  %168 = load i64, i64* %PC.i, align 8
  %169 = add i64 %168, -50
  store i64 %169, i64* %3, align 8
  br label %block_.L_400506

block_.L_40053d:                                  ; preds = %block_.L_400506
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x400664_type* @G__0x400664 to i64), i64* %RDI.i, align 8
  %170 = add i64 %92, 13
  store i64 %170, i64* %PC.i, align 8
  %171 = load i32, i32* %65, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RSI.i82, align 8
  %173 = add i64 %57, -16
  %174 = add i64 %92, 17
  store i64 %174, i64* %PC.i, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RAX.i77, align 8
  %177 = add i64 %92, 19
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RDX.i60, align 8
  %181 = add i64 %92, 23
  store i64 %181, i64* %PC.i, align 8
  %182 = load i64, i64* %175, align 8
  store i64 %182, i64* %RAX.i77, align 8
  %183 = add i64 %182, 4
  %184 = add i64 %92, 26
  store i64 %184, i64* %PC.i, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RCX.i67, align 8
  %188 = add i64 %92, 30
  store i64 %188, i64* %PC.i, align 8
  %189 = load i64, i64* %175, align 8
  store i64 %189, i64* %RAX.i77, align 8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %191 = add i64 %189, 8
  %192 = add i64 %92, 34
  store i64 %192, i64* %PC.i, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %190, align 8
  %196 = add i64 %92, 38
  store i64 %196, i64* %PC.i, align 8
  %197 = load i64, i64* %175, align 8
  store i64 %197, i64* %RAX.i77, align 8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %199 = add i64 %197, 12
  %200 = add i64 %92, 42
  store i64 %200, i64* %PC.i, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %198, align 8
  %AL.i = bitcast %union.anon* %55 to i8*
  store i8 0, i8* %AL.i, align 1
  %204 = add i64 %92, -333
  %205 = add i64 %92, 49
  %206 = load i64, i64* %6, align 8
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208, align 8
  store i64 %207, i64* %6, align 8
  store i64 %204, i64* %3, align 8
  %209 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -24
  %212 = load i32, i32* %EAX.i74, align 4
  %213 = load i64, i64* %PC.i, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %211 to i32*
  store i32 %212, i32* %215, align 4
  %216 = load i64, i64* %RSP.i8, align 8
  %217 = load i64, i64* %PC.i, align 8
  %218 = add i64 %216, 32
  store i64 %218, i64* %RSP.i8, align 8
  %219 = icmp ugt i64 %216, -33
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %14, align 1
  %221 = trunc i64 %218 to i32
  %222 = and i32 %221, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %21, align 1
  %227 = xor i64 %216, %218
  %228 = lshr i64 %227, 4
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %26, align 1
  %231 = icmp eq i64 %218, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %29, align 1
  %233 = lshr i64 %218, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %32, align 1
  %235 = lshr i64 %216, 63
  %236 = xor i64 %233, %235
  %237 = add nuw nsw i64 %236, %233
  %238 = icmp eq i64 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %38, align 1
  %240 = add i64 %217, 5
  store i64 %240, i64* %PC.i, align 8
  %241 = add i64 %216, 40
  %242 = inttoptr i64 %218 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RBP.i, align 8
  store i64 %241, i64* %6, align 8
  %244 = add i64 %217, 6
  store i64 %244, i64* %PC.i, align 8
  %245 = inttoptr i64 %241 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %3, align 8
  %247 = add i64 %216, 48
  store i64 %247, i64* %6, align 8
  ret %struct.Memory* %209
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
