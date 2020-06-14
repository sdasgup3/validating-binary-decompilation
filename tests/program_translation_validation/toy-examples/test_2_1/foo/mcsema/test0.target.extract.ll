; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400654_type = type <{ [8 x i8] }>
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

@G__0x400654 = external global %G__0x400654_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @foo(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i11, align 8
  %12 = icmp ult i64 %8, 48
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
  %RAX.i48 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, 16
  %42 = add i64 %10, 10
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %RAX.i48, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i45 = bitcast %union.anon* %46 to i32*
  %47 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %48 = add i64 %7, 8
  %49 = add i64 %10, 14
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %47, align 8
  %R11.i43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 ptrtoint (%G__0x400654_type* @G__0x400654 to i64), i64* %R11.i43, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %53 to i32*
  %54 = add i64 %7, -12
  %55 = load i32, i32* %EDI.i, align 4
  %56 = add i64 %10, 27
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %58 to i32*
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -8
  %61 = load i32, i32* %ESI.i, align 4
  %62 = load i64, i64* %PC.i, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %65 to i32*
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -12
  %68 = load i32, i32* %EDX.i, align 4
  %69 = load i64, i64* %PC.i, align 8
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i34 = bitcast %union.anon* %72 to i32*
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -16
  %75 = load i32, i32* %ECX.i34, align 4
  %76 = load i64, i64* %PC.i, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC.i, align 8
  %78 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %79 to i32*
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -20
  %82 = load i32, i32* %R8D.i, align 4
  %83 = load i64, i64* %PC.i, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC.i, align 8
  %85 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %85, align 4
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %86 to i32*
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -24
  %89 = load i32, i32* %R9D.i, align 4
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %92, align 4
  %RCX.i27 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, 16
  %95 = load i64, i64* %PC.i, align 8
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i, align 8
  %97 = inttoptr i64 %94 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RCX.i27, align 8
  %100 = add i64 %93, 24
  %101 = add i64 %95, 6
  store i64 %101, i64* %PC.i, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, %98
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RCX.i27, align 8
  %106 = icmp ult i32 %104, %98
  %107 = icmp ult i32 %104, %103
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %14, align 1
  %110 = and i32 %104, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1
  %115 = xor i32 %103, %98
  %116 = xor i32 %115, %104
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %27, align 1
  %120 = icmp eq i32 %104, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %30, align 1
  %122 = lshr i32 %104, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %33, align 1
  %124 = lshr i32 %98, 31
  %125 = lshr i32 %103, 31
  %126 = xor i32 %122, %124
  %127 = xor i32 %122, %125
  %128 = add nuw nsw i32 %126, %127
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %39, align 1
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %131 = load i64, i64* %R11.i43, align 8
  store i64 %131, i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  store i64 %105, i64* %RSI.i, align 8
  %EAX.i18 = bitcast %union.anon* %40 to i32*
  %132 = add i64 %93, -28
  %133 = load i32, i32* %EAX.i18, align 4
  %134 = add i64 %95, 14
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %135, align 4
  %AL.i = bitcast %union.anon* %40 to i8*
  %136 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i, align 1
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -32
  %139 = load i32, i32* %R10D.i45, align 4
  %140 = add i64 %136, 6
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %141, align 4
  %142 = load i64, i64* %PC.i, align 8
  %143 = add i64 %142, -321
  %144 = add i64 %142, 5
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147, align 8
  store i64 %146, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  %148 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  %149 = load i64, i64* %PC.i, align 8
  store i64 0, i64* %RCX.i27, align 8
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -36
  %152 = load i32, i32* %EAX.i18, align 4
  %153 = add i64 %149, 5
  store i64 %153, i64* %PC.i, align 8
  %154 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %ECX.i34, align 4
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %PC.i, align 8
  store i64 %156, i64* %RAX.i48, align 8
  %158 = load i64, i64* %RSP.i11, align 8
  %159 = add i64 %158, 48
  store i64 %159, i64* %RSP.i11, align 8
  %160 = icmp ugt i64 %158, -49
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = trunc i64 %159 to i32
  %163 = and i32 %162, 255
  %164 = call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  %168 = xor i64 %158, 16
  %169 = xor i64 %168, %159
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %27, align 1
  %173 = icmp eq i64 %159, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %30, align 1
  %175 = lshr i64 %159, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %33, align 1
  %177 = lshr i64 %158, 63
  %178 = xor i64 %175, %177
  %179 = add nuw nsw i64 %178, %175
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %39, align 1
  %182 = add i64 %157, 7
  store i64 %182, i64* %PC.i, align 8
  %183 = add i64 %158, 56
  %184 = inttoptr i64 %159 to i64*
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %RBP.i, align 8
  store i64 %183, i64* %6, align 8
  %186 = add i64 %157, 8
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %183 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %3, align 8
  %189 = add i64 %158, 64
  store i64 %189, i64* %6, align 8
  ret %struct.Memory* %148
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
