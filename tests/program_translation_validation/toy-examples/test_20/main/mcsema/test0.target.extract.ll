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

declare %struct.Memory* @sub_4004f0.switches(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
  %RSP.i38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i38, align 8
  %12 = icmp ult i64 %8, 32
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 14
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i32, i32* %EDI.i, align 4
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RSI.i, align 8
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -20
  %57 = load i64, i64* %PC.i, align 8
  %58 = add i64 %57, 7
  store i64 %58, i64* %PC.i, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 0, i32* %59, align 4
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -20
  %62 = load i64, i64* %PC.i, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %65 to i8*
  %EAX.i16 = bitcast %union.anon* %65 to i32*
  %RAX.i13 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4004b4

block_.L_4004b4:                                  ; preds = %block_4004c1, %entry
  %66 = phi i64 [ %143, %block_4004c1 ], [ %.pre, %entry ]
  %loadMem_4004dc = phi %struct.Memory* [ %call2_4004c6, %block_4004c1 ], [ %2, %entry ]
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -20
  %69 = add i64 %66, 7
  store i64 %69, i64* %PC.i, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, -255
  %73 = icmp ult i32 %71, 255
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %14, align 1
  %75 = and i32 %72, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %21, align 1
  %80 = xor i32 %71, 16
  %81 = xor i32 %80, %72
  %82 = lshr i32 %81, 4
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %26, align 1
  %85 = icmp eq i32 %72, 0
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %29, align 1
  %87 = lshr i32 %72, 31
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %32, align 1
  %89 = lshr i32 %71, 31
  %90 = xor i32 %87, %89
  %91 = add nuw nsw i32 %90, %89
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %38, align 1
  %94 = icmp ne i8 %88, 0
  %95 = xor i1 %94, %92
  %.demorgan = or i1 %85, %95
  %.v = select i1 %.demorgan, i64 13, i64 40
  %96 = add i64 %66, %.v
  store i64 %96, i64* %3, align 8
  br i1 %.demorgan, label %block_4004c1, label %block_.L_4004dc

block_4004c1:                                     ; preds = %block_.L_4004b4
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i, align 8
  %98 = load i32, i32* %70, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RDI.i, align 8
  store i8 0, i8* %AL.i, align 1
  %100 = add i64 %96, 47
  %101 = add i64 %96, 10
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, -8
  %104 = inttoptr i64 %103 to i64*
  store i64 %101, i64* %104, align 8
  store i64 %103, i64* %6, align 8
  store i64 %100, i64* %3, align 8
  %call2_4004c6 = tail call %struct.Memory* @sub_4004f0.switches(%struct.State* %0, i64 %100, %struct.Memory* %loadMem_4004dc)
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -24
  %107 = load i32, i32* %EAX.i16, align 4
  %108 = load i64, i64* %PC.i, align 8
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC.i, align 8
  %110 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %110, align 4
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -20
  %113 = load i64, i64* %PC.i, align 8
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC.i, align 8
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, 1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i13, align 8
  %119 = icmp eq i32 %116, -1
  %120 = icmp eq i32 %117, 0
  %121 = or i1 %119, %120
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %14, align 1
  %123 = and i32 %117, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %21, align 1
  %128 = xor i32 %116, %117
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %26, align 1
  %132 = icmp eq i32 %117, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %29, align 1
  %134 = lshr i32 %117, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %32, align 1
  %136 = lshr i32 %116, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %134
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %38, align 1
  %141 = add i64 %113, 9
  store i64 %141, i64* %PC.i, align 8
  store i32 %117, i32* %115, align 4
  %142 = load i64, i64* %PC.i, align 8
  %143 = add i64 %142, -35
  store i64 %143, i64* %3, align 8
  br label %block_.L_4004b4

block_.L_4004dc:                                  ; preds = %block_.L_4004b4
  store i64 0, i64* %RAX.i13, align 8
  %144 = load i64, i64* %RSP.i38, align 8
  %145 = add i64 %144, 32
  store i64 %145, i64* %RSP.i38, align 8
  %146 = icmp ugt i64 %144, -33
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %14, align 1
  %148 = trunc i64 %145 to i32
  %149 = and i32 %148, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %21, align 1
  %154 = xor i64 %144, %145
  %155 = lshr i64 %154, 4
  %156 = trunc i64 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %26, align 1
  %158 = icmp eq i64 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %29, align 1
  %160 = lshr i64 %145, 63
  %161 = trunc i64 %160 to i8
  store i8 %161, i8* %32, align 1
  %162 = lshr i64 %144, 63
  %163 = xor i64 %160, %162
  %164 = add nuw nsw i64 %163, %160
  %165 = icmp eq i64 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %38, align 1
  %167 = add i64 %96, 7
  store i64 %167, i64* %PC.i, align 8
  %168 = add i64 %144, 40
  %169 = inttoptr i64 %145 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RBP.i, align 8
  store i64 %168, i64* %6, align 8
  %171 = add i64 %96, 8
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %168 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %3, align 8
  %174 = add i64 %144, 48
  store i64 %174, i64* %6, align 8
  ret %struct.Memory* %loadMem_4004dc
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
