; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -184
  store i64 %11, i64* %RSP.i33, align 8
  %12 = icmp ult i64 %8, 176
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
  %RSI.i143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RSI.i143, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RDI.i295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RDI.i295, align 8
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %RDX.i369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %RDX.i369, align 8
  %53 = load i64, i64* %PC.i, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC.i, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %PC.i, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %PC.i, align 8
  %61 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %62 = load i64, i64* %61, align 1
  %63 = inttoptr i64 %58 to i64*
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -24
  %66 = load i64, i64* %PC.i, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC.i, align 8
  %68 = inttoptr i64 %65 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %RDX.i369, align 8
  %70 = add i64 %64, -48
  %71 = add i64 %66, 8
  store i64 %71, i64* %PC.i, align 8
  %72 = inttoptr i64 %70 to i64*
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -48
  %75 = load i64, i64* %PC.i, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC.i, align 8
  %77 = inttoptr i64 %74 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  %80 = shl i64 %79, 1
  %81 = icmp slt i64 %79, 0
  %82 = icmp slt i64 %80, 0
  %83 = xor i1 %81, %82
  store i64 %80, i64* %RDX.i369, align 8
  %.lobit = lshr i64 %79, 63
  %84 = trunc i64 %.lobit to i8
  store i8 %84, i8* %14, align 1
  %85 = trunc i64 %80 to i32
  %86 = and i32 %85, 254
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %91 = icmp eq i64 %80, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %30, align 1
  %93 = lshr i64 %79, 62
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %33, align 1
  %96 = zext i1 %83 to i8
  store i8 %96, i8* %39, align 1
  %97 = add i64 %73, -40
  %98 = add i64 %75, 15
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %80, i64* %99, align 8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i347 = getelementptr inbounds %union.anon, %union.anon* %100, i64 0, i32 0
  %101 = bitcast [32 x %union.VectorReg]* %56 to double*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %103 = bitcast i64* %102 to double*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %105 = bitcast %union.VectorReg* %104 to double*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %107 = bitcast i64* %106 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4047c4

block_.L_4047c4:                                  ; preds = %block_.L_40483b, %entry
  %108 = phi i64 [ %.pre, %entry ], [ %448, %block_.L_40483b ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_40487d, %block_.L_40483b ]
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -40
  %111 = add i64 %108, 4
  store i64 %111, i64* %PC.i, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX.i347, align 8
  %114 = add i64 %109, -16
  %115 = add i64 %108, 8
  store i64 %115, i64* %PC.i, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %113, %117
  %119 = icmp ult i64 %113, %117
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = trunc i64 %118 to i32
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %21, align 1
  %127 = xor i64 %117, %113
  %128 = xor i64 %127, %118
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %27, align 1
  %132 = icmp eq i64 %118, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %30, align 1
  %134 = lshr i64 %118, 63
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %33, align 1
  %136 = lshr i64 %113, 63
  %137 = lshr i64 %117, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %134, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %39, align 1
  %143 = icmp ne i8 %135, 0
  %144 = xor i1 %143, %141
  %.v = select i1 %144, i64 14, i64 231
  %145 = add i64 %108, %.v
  store i64 %145, i64* %3, align 8
  br i1 %144, label %block_4047d2, label %block_.L_4048ab

block_4047d2:                                     ; preds = %block_.L_4047c4
  %146 = add i64 %109, -8
  store i64 %146, i64* %RDI.i295, align 8
  %147 = add i64 %145, 8
  store i64 %147, i64* %PC.i, align 8
  %148 = load i64, i64* %112, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %RAX.i347, align 8
  %150 = icmp eq i64 %148, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %14, align 1
  %152 = trunc i64 %149 to i32
  %153 = and i32 %152, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %21, align 1
  %158 = xor i64 %148, %149
  %159 = lshr i64 %158, 4
  %160 = trunc i64 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %27, align 1
  %162 = icmp eq i64 %149, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %30, align 1
  %164 = lshr i64 %149, 63
  %165 = trunc i64 %164 to i8
  store i8 %165, i8* %33, align 1
  %166 = lshr i64 %148, 63
  %167 = xor i64 %164, %166
  %168 = add nuw nsw i64 %167, %166
  %169 = icmp eq i64 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %39, align 1
  store i64 %149, i64* %RSI.i143, align 8
  %171 = add i64 %145, -114
  %172 = add i64 %145, 20
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %6, align 8
  store i64 %171, i64* %3, align 8
  %call2_4047e1 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %171, %struct.Memory* %MEMORY.0)
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -56
  %178 = load i64, i64* %PC.i, align 8
  store i64 %177, i64* %RDI.i295, align 8
  %179 = load i64, i64* %RAX.i347, align 8
  %180 = add i64 %178, 8
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %177 to i64*
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* %PC.i, align 8
  %183 = add i64 %182, -254
  %184 = add i64 %182, 5
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %call2_4047ee = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %183, %struct.Memory* %call2_4047e1)
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -8
  %190 = load i64, i64* %PC.i, align 8
  store i64 %189, i64* %RDI.i295, align 8
  %191 = bitcast %union.anon* %100 to i64**
  %192 = load i64*, i64** %191, align 8
  %193 = add i64 %190, 8
  store i64 %193, i64* %PC.i, align 8
  %194 = load i64, i64* %192, align 8
  %195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %194, i64* %195, align 1
  store double 0.000000e+00, double* %103, align 1
  %196 = add i64 %188, -40
  %197 = add i64 %190, 12
  store i64 %197, i64* %PC.i, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RSI.i143, align 8
  %200 = add i64 %188, -136
  %201 = add i64 %190, 20
  store i64 %201, i64* %PC.i, align 8
  %202 = inttoptr i64 %200 to i64*
  store i64 %194, i64* %202, align 8
  %203 = load i64, i64* %PC.i, align 8
  %204 = add i64 %203, -167
  %205 = add i64 %203, 5
  %206 = load i64, i64* %6, align 8
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208, align 8
  store i64 %207, i64* %6, align 8
  store i64 %204, i64* %3, align 8
  %call2_404807 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %204, %struct.Memory* %call2_4047ee)
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -64
  %211 = load i64, i64* %PC.i, align 8
  store i64 %210, i64* %RDI.i295, align 8
  %212 = load i64, i64* %RAX.i347, align 8
  %213 = add i64 %211, 8
  store i64 %213, i64* %PC.i, align 8
  %214 = inttoptr i64 %210 to i64*
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* %PC.i, align 8
  %216 = add i64 %215, -292
  %217 = add i64 %215, 5
  %218 = load i64, i64* %6, align 8
  %219 = add i64 %218, -8
  %220 = inttoptr i64 %219 to i64*
  store i64 %217, i64* %220, align 8
  store i64 %219, i64* %6, align 8
  store i64 %216, i64* %3, align 8
  %call2_404814 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %216, %struct.Memory* %call2_404807)
  %221 = bitcast %union.anon* %100 to double**
  %222 = load double*, double** %221, align 8
  %223 = load i64, i64* %PC.i, align 8
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i, align 8
  %225 = load double, double* %222, align 8
  store double %225, double* %101, align 1
  store double 0.000000e+00, double* %103, align 1
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -136
  %228 = add i64 %223, 12
  store i64 %228, i64* %PC.i, align 8
  %229 = inttoptr i64 %227 to double*
  %230 = load double, double* %229, align 8
  store double %230, double* %105, align 1
  store double 0.000000e+00, double* %107, align 1
  %231 = add i64 %223, 16
  store i64 %231, i64* %PC.i, align 8
  %232 = fcmp uno double %225, %230
  br i1 %232, label %233, label %243

; <label>:233:                                    ; preds = %block_4047d2
  %234 = fadd double %225, %230
  %235 = bitcast double %234 to i64
  %236 = and i64 %235, 9221120237041090560
  %237 = icmp eq i64 %236, 9218868437227405312
  %238 = and i64 %235, 2251799813685247
  %239 = icmp ne i64 %238, 0
  %240 = and i1 %237, %239
  br i1 %240, label %241, label %249

; <label>:241:                                    ; preds = %233
  %242 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %231, %struct.Memory* %call2_404814)
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:243:                                    ; preds = %block_4047d2
  %244 = fcmp ogt double %225, %230
  br i1 %244, label %249, label %245

; <label>:245:                                    ; preds = %243
  %246 = fcmp olt double %225, %230
  br i1 %246, label %249, label %247

; <label>:247:                                    ; preds = %245
  %248 = fcmp oeq double %225, %230
  br i1 %248, label %249, label %253

; <label>:249:                                    ; preds = %247, %245, %243, %233
  %250 = phi i8 [ 0, %243 ], [ 0, %245 ], [ 1, %247 ], [ 1, %233 ]
  %251 = phi i8 [ 0, %243 ], [ 0, %245 ], [ 0, %247 ], [ 1, %233 ]
  %252 = phi i8 [ 0, %243 ], [ 1, %245 ], [ 0, %247 ], [ 1, %233 ]
  store i8 %250, i8* %30, align 1
  store i8 %251, i8* %21, align 1
  store i8 %252, i8* %14, align 1
  br label %253

; <label>:253:                                    ; preds = %249, %247
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %253, %241
  %254 = phi i64 [ %.pre1, %241 ], [ %231, %253 ]
  %255 = phi %struct.Memory* [ %242, %241 ], [ %call2_404814, %253 ]
  %256 = load i8, i8* %14, align 1
  %257 = load i8, i8* %30, align 1
  %258 = or i8 %257, %256
  %259 = icmp ne i8 %258, 0
  %.v15 = select i1 %259, i64 18, i64 6
  %260 = add i64 %254, %.v15
  store i64 %260, i64* %3, align 8
  br i1 %259, label %block_.L_40483b, label %block_40482f

block_40482f:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, -40
  %263 = add i64 %260, 4
  store i64 %263, i64* %PC.i, align 8
  %264 = inttoptr i64 %262 to i64*
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %RAX.i347, align 8
  %267 = icmp eq i64 %265, -1
  %268 = icmp eq i64 %266, 0
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %14, align 1
  %271 = trunc i64 %266 to i32
  %272 = and i32 %271, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i64 %265, %266
  %278 = lshr i64 %277, 4
  %279 = trunc i64 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %27, align 1
  %281 = icmp eq i64 %266, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %30, align 1
  %283 = lshr i64 %266, 63
  %284 = trunc i64 %283 to i8
  store i8 %284, i8* %33, align 1
  %285 = lshr i64 %265, 63
  %286 = xor i64 %283, %285
  %287 = add nuw nsw i64 %286, %283
  %288 = icmp eq i64 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %39, align 1
  %290 = add i64 %260, 12
  store i64 %290, i64* %PC.i, align 8
  store i64 %266, i64* %264, align 8
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_40483b

block_.L_40483b:                                  ; preds = %block_40482f, %routine_ucomisd__xmm1___xmm0.exit
  %291 = phi i64 [ %.pre2, %block_40482f ], [ %260, %routine_ucomisd__xmm1___xmm0.exit ]
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -8
  store i64 %293, i64* %RDI.i295, align 8
  %294 = add i64 %292, -40
  %295 = add i64 %291, 8
  store i64 %295, i64* %PC.i, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, -1
  store i64 %298, i64* %RAX.i347, align 8
  %299 = icmp eq i64 %297, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %14, align 1
  %301 = trunc i64 %298 to i32
  %302 = and i32 %301, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %21, align 1
  %307 = xor i64 %297, %298
  %308 = lshr i64 %307, 4
  %309 = trunc i64 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %27, align 1
  %311 = icmp eq i64 %298, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %30, align 1
  %313 = lshr i64 %298, 63
  %314 = trunc i64 %313 to i8
  store i8 %314, i8* %33, align 1
  %315 = lshr i64 %297, 63
  %316 = xor i64 %313, %315
  %317 = add nuw nsw i64 %316, %315
  %318 = icmp eq i64 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %39, align 1
  store i64 %298, i64* %RSI.i143, align 8
  %320 = add i64 %291, -219
  %321 = add i64 %291, 20
  %322 = load i64, i64* %6, align 8
  %323 = add i64 %322, -8
  %324 = inttoptr i64 %323 to i64*
  store i64 %321, i64* %324, align 8
  store i64 %323, i64* %6, align 8
  store i64 %320, i64* %3, align 8
  %call2_40484a = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %320, %struct.Memory* %255)
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -72
  %327 = load i64, i64* %PC.i, align 8
  store i64 %326, i64* %RDI.i295, align 8
  %328 = load i64, i64* %RAX.i347, align 8
  %329 = add i64 %327, 8
  store i64 %329, i64* %PC.i, align 8
  %330 = inttoptr i64 %326 to i64*
  store i64 %328, i64* %330, align 8
  %331 = load i64, i64* %PC.i, align 8
  %332 = add i64 %331, -359
  %333 = add i64 %331, 5
  %334 = load i64, i64* %6, align 8
  %335 = add i64 %334, -8
  %336 = inttoptr i64 %335 to i64*
  store i64 %333, i64* %336, align 8
  store i64 %335, i64* %6, align 8
  store i64 %332, i64* %3, align 8
  %call2_404857 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %332, %struct.Memory* %call2_40484a)
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -8
  %339 = load i64, i64* %PC.i, align 8
  store i64 %338, i64* %RDI.i295, align 8
  %340 = bitcast %union.anon* %100 to i64**
  %341 = load i64*, i64** %340, align 8
  %342 = add i64 %339, 8
  store i64 %342, i64* %PC.i, align 8
  %343 = load i64, i64* %341, align 8
  %344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %343, i64* %344, align 1
  store double 0.000000e+00, double* %103, align 1
  %345 = add i64 %337, -48
  %346 = add i64 %339, 12
  store i64 %346, i64* %PC.i, align 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %RSI.i143, align 8
  %349 = add i64 %337, -144
  %350 = add i64 %339, 20
  store i64 %350, i64* %PC.i, align 8
  %351 = inttoptr i64 %349 to i64*
  store i64 %343, i64* %351, align 8
  %352 = load i64, i64* %PC.i, align 8
  %353 = add i64 %352, -272
  %354 = add i64 %352, 5
  %355 = load i64, i64* %6, align 8
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %354, i64* %357, align 8
  store i64 %356, i64* %6, align 8
  store i64 %353, i64* %3, align 8
  %call2_404870 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %353, %struct.Memory* %call2_404857)
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -80
  %360 = load i64, i64* %PC.i, align 8
  store i64 %359, i64* %RDI.i295, align 8
  %361 = load i64, i64* %RAX.i347, align 8
  %362 = add i64 %360, 8
  store i64 %362, i64* %PC.i, align 8
  %363 = inttoptr i64 %359 to i64*
  store i64 %361, i64* %363, align 8
  %364 = load i64, i64* %PC.i, align 8
  %365 = add i64 %364, -397
  %366 = add i64 %364, 5
  %367 = load i64, i64* %6, align 8
  %368 = add i64 %367, -8
  %369 = inttoptr i64 %368 to i64*
  store i64 %366, i64* %369, align 8
  store i64 %368, i64* %6, align 8
  store i64 %365, i64* %3, align 8
  %call2_40487d = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %365, %struct.Memory* %call2_404870)
  %370 = load i64, i64* %RBP.i, align 8
  %371 = add i64 %370, -144
  %372 = load i64, i64* %PC.i, align 8
  %373 = add i64 %372, 8
  store i64 %373, i64* %PC.i, align 8
  %374 = inttoptr i64 %371 to i64*
  %375 = load i64, i64* %374, align 8
  %376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %375, i64* %376, align 1
  store double 0.000000e+00, double* %103, align 1
  %377 = bitcast %union.anon* %100 to i64**
  %378 = load i64*, i64** %377, align 8
  %379 = add i64 %372, 12
  store i64 %379, i64* %PC.i, align 8
  store i64 %375, i64* %378, align 8
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -40
  %382 = load i64, i64* %PC.i, align 8
  %383 = add i64 %382, 4
  store i64 %383, i64* %PC.i, align 8
  %384 = inttoptr i64 %381 to i64*
  %385 = load i64, i64* %384, align 8
  %386 = add i64 %385, -1
  store i64 %386, i64* %RAX.i347, align 8
  %387 = icmp eq i64 %385, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %14, align 1
  %389 = trunc i64 %386 to i32
  %390 = and i32 %389, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %21, align 1
  %395 = xor i64 %385, %386
  %396 = lshr i64 %395, 4
  %397 = trunc i64 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %27, align 1
  %399 = icmp eq i64 %386, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %30, align 1
  %401 = lshr i64 %386, 63
  %402 = trunc i64 %401 to i8
  store i8 %402, i8* %33, align 1
  %403 = lshr i64 %385, 63
  %404 = xor i64 %401, %403
  %405 = add nuw nsw i64 %404, %403
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %39, align 1
  %408 = add i64 %380, -48
  %409 = add i64 %382, 12
  store i64 %409, i64* %PC.i, align 8
  %410 = inttoptr i64 %408 to i64*
  store i64 %386, i64* %410, align 8
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -40
  %413 = load i64, i64* %PC.i, align 8
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC.i, align 8
  %415 = inttoptr i64 %412 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RAX.i347, align 8
  %417 = add i64 %413, 8
  store i64 %417, i64* %PC.i, align 8
  %418 = load i64, i64* %415, align 8
  %419 = add i64 %418, %416
  store i64 %419, i64* %RAX.i347, align 8
  %420 = icmp ult i64 %419, %416
  %421 = icmp ult i64 %419, %418
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = trunc i64 %419 to i32
  %425 = and i32 %424, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  %430 = xor i64 %418, %416
  %431 = xor i64 %430, %419
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %27, align 1
  %435 = icmp eq i64 %419, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %30, align 1
  %437 = lshr i64 %419, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %33, align 1
  %439 = lshr i64 %416, 63
  %440 = lshr i64 %418, 63
  %441 = xor i64 %437, %439
  %442 = xor i64 %437, %440
  %443 = add nuw nsw i64 %441, %442
  %444 = icmp eq i64 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %39, align 1
  %446 = add i64 %413, 12
  store i64 %446, i64* %PC.i, align 8
  store i64 %419, i64* %415, align 8
  %447 = load i64, i64* %PC.i, align 8
  %448 = add i64 %447, -226
  store i64 %448, i64* %3, align 8
  br label %block_.L_4047c4

block_.L_4048ab:                                  ; preds = %block_.L_4047c4
  %449 = add i64 %145, 4
  store i64 %449, i64* %PC.i, align 8
  %450 = load i64, i64* %112, align 8
  store i64 %450, i64* %RAX.i347, align 8
  %451 = add i64 %145, 8
  store i64 %451, i64* %PC.i, align 8
  %452 = load i64, i64* %116, align 8
  %453 = sub i64 %450, %452
  %454 = icmp ult i64 %450, %452
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = trunc i64 %453 to i32
  %457 = and i32 %456, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i64 %452, %450
  %463 = xor i64 %462, %453
  %464 = lshr i64 %463, 4
  %465 = trunc i64 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %27, align 1
  %467 = icmp eq i64 %453, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %30, align 1
  %469 = lshr i64 %453, 63
  %470 = trunc i64 %469 to i8
  store i8 %470, i8* %33, align 1
  %471 = lshr i64 %450, 63
  %472 = lshr i64 %452, 63
  %473 = xor i64 %472, %471
  %474 = xor i64 %469, %471
  %475 = add nuw nsw i64 %474, %473
  %476 = icmp eq i64 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %39, align 1
  %.v16 = select i1 %467, i64 14, i64 109
  %478 = add i64 %145, %.v16
  store i64 %478, i64* %3, align 8
  br i1 %467, label %block_4048b9, label %block_.L_404918

block_4048b9:                                     ; preds = %block_.L_4048ab
  %479 = add i64 %109, -8
  store i64 %479, i64* %RDI.i295, align 8
  %480 = add i64 %478, 8
  store i64 %480, i64* %PC.i, align 8
  %481 = load i64, i64* %112, align 8
  %482 = add i64 %481, -1
  store i64 %482, i64* %RAX.i347, align 8
  %483 = icmp eq i64 %481, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %14, align 1
  %485 = trunc i64 %482 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  %491 = xor i64 %481, %482
  %492 = lshr i64 %491, 4
  %493 = trunc i64 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %27, align 1
  %495 = icmp eq i64 %482, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %30, align 1
  %497 = lshr i64 %482, 63
  %498 = trunc i64 %497 to i8
  store i8 %498, i8* %33, align 1
  %499 = lshr i64 %481, 63
  %500 = xor i64 %497, %499
  %501 = add nuw nsw i64 %500, %499
  %502 = icmp eq i64 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %39, align 1
  store i64 %482, i64* %RSI.i143, align 8
  %504 = add i64 %478, -345
  %505 = add i64 %478, 20
  %506 = load i64, i64* %6, align 8
  %507 = add i64 %506, -8
  %508 = inttoptr i64 %507 to i64*
  store i64 %505, i64* %508, align 8
  store i64 %507, i64* %6, align 8
  store i64 %504, i64* %3, align 8
  %call2_4048c8 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %504, %struct.Memory* %MEMORY.0)
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -88
  %511 = load i64, i64* %PC.i, align 8
  store i64 %510, i64* %RDI.i295, align 8
  %512 = load i64, i64* %RAX.i347, align 8
  %513 = add i64 %511, 8
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %510 to i64*
  store i64 %512, i64* %514, align 8
  %515 = load i64, i64* %PC.i, align 8
  %516 = add i64 %515, -485
  %517 = add i64 %515, 5
  %518 = load i64, i64* %6, align 8
  %519 = add i64 %518, -8
  %520 = inttoptr i64 %519 to i64*
  store i64 %517, i64* %520, align 8
  store i64 %519, i64* %6, align 8
  store i64 %516, i64* %3, align 8
  %call2_4048d5 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %516, %struct.Memory* %call2_4048c8)
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -8
  %523 = load i64, i64* %PC.i, align 8
  store i64 %522, i64* %RDI.i295, align 8
  %524 = bitcast %union.anon* %100 to i64**
  %525 = load i64*, i64** %524, align 8
  %526 = add i64 %523, 8
  store i64 %526, i64* %PC.i, align 8
  %527 = load i64, i64* %525, align 8
  %528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %527, i64* %528, align 1
  store double 0.000000e+00, double* %103, align 1
  %529 = add i64 %521, -48
  %530 = add i64 %523, 12
  store i64 %530, i64* %PC.i, align 8
  %531 = inttoptr i64 %529 to i64*
  %532 = load i64, i64* %531, align 8
  store i64 %532, i64* %RSI.i143, align 8
  %533 = add i64 %521, -152
  %534 = add i64 %523, 20
  store i64 %534, i64* %PC.i, align 8
  %535 = inttoptr i64 %533 to i64*
  store i64 %527, i64* %535, align 8
  %536 = load i64, i64* %PC.i, align 8
  %537 = add i64 %536, -398
  %538 = add i64 %536, 5
  %539 = load i64, i64* %6, align 8
  %540 = add i64 %539, -8
  %541 = inttoptr i64 %540 to i64*
  store i64 %538, i64* %541, align 8
  store i64 %540, i64* %6, align 8
  store i64 %537, i64* %3, align 8
  %call2_4048ee = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %537, %struct.Memory* %call2_4048d5)
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -96
  %544 = load i64, i64* %PC.i, align 8
  store i64 %543, i64* %RDI.i295, align 8
  %545 = load i64, i64* %RAX.i347, align 8
  %546 = add i64 %544, 8
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %543 to i64*
  store i64 %545, i64* %547, align 8
  %548 = load i64, i64* %PC.i, align 8
  %549 = add i64 %548, -523
  %550 = add i64 %548, 5
  %551 = load i64, i64* %6, align 8
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %550, i64* %553, align 8
  store i64 %552, i64* %6, align 8
  store i64 %549, i64* %3, align 8
  %call2_4048fb = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %549, %struct.Memory* %call2_4048ee)
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -152
  %556 = load i64, i64* %PC.i, align 8
  %557 = add i64 %556, 8
  store i64 %557, i64* %PC.i, align 8
  %558 = inttoptr i64 %555 to i64*
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %559, i64* %560, align 1
  store double 0.000000e+00, double* %103, align 1
  %561 = bitcast %union.anon* %100 to i64**
  %562 = load i64*, i64** %561, align 8
  %563 = add i64 %556, 12
  store i64 %563, i64* %PC.i, align 8
  store i64 %559, i64* %562, align 8
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -40
  %566 = load i64, i64* %PC.i, align 8
  %567 = add i64 %566, 4
  store i64 %567, i64* %PC.i, align 8
  %568 = inttoptr i64 %565 to i64*
  %569 = load i64, i64* %568, align 8
  %570 = add i64 %569, -1
  store i64 %570, i64* %RAX.i347, align 8
  %571 = icmp eq i64 %569, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %14, align 1
  %573 = trunc i64 %570 to i32
  %574 = and i32 %573, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i64 %569, %570
  %580 = lshr i64 %579, 4
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %27, align 1
  %583 = icmp eq i64 %570, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %30, align 1
  %585 = lshr i64 %570, 63
  %586 = trunc i64 %585 to i8
  store i8 %586, i8* %33, align 1
  %587 = lshr i64 %569, 63
  %588 = xor i64 %585, %587
  %589 = add nuw nsw i64 %588, %587
  %590 = icmp eq i64 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %39, align 1
  %592 = add i64 %564, -48
  %593 = add i64 %566, 12
  store i64 %593, i64* %PC.i, align 8
  %594 = inttoptr i64 %592 to i64*
  store i64 %570, i64* %594, align 8
  %.pre3 = load i64, i64* %PC.i, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %block_.L_404918

block_.L_404918:                                  ; preds = %block_.L_4048ab, %block_4048b9
  %595 = phi i64 [ %109, %block_.L_4048ab ], [ %.pre4, %block_4048b9 ]
  %596 = phi i64 [ %478, %block_.L_4048ab ], [ %.pre3, %block_4048b9 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4048ab ], [ %call2_4048fb, %block_4048b9 ]
  store i64 2, i64* %RAX.i347, align 8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i156 = getelementptr inbounds %union.anon, %union.anon* %597, i64 0, i32 0
  store i64 2, i64* %RCX.i156, align 8
  %598 = add i64 %595, -48
  %599 = add i64 %596, 11
  store i64 %599, i64* %PC.i, align 8
  %600 = inttoptr i64 %598 to i64*
  %601 = load i64, i64* %600, align 8
  %602 = add i64 %601, -1
  %603 = icmp eq i64 %601, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %14, align 1
  %605 = trunc i64 %602 to i32
  %606 = and i32 %605, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %21, align 1
  %611 = xor i64 %601, %602
  %612 = lshr i64 %611, 4
  %613 = trunc i64 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %27, align 1
  %615 = icmp eq i64 %602, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %30, align 1
  %617 = lshr i64 %602, 63
  %618 = trunc i64 %617 to i8
  store i8 %618, i8* %33, align 1
  %619 = lshr i64 %601, 63
  %620 = xor i64 %617, %619
  %621 = add nuw nsw i64 %620, %619
  %622 = icmp eq i64 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %39, align 1
  store i64 %602, i64* %RAX.i347, align 8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %626 = ashr i64 %602, 63
  store i64 %626, i64* %624, align 8
  %627 = add i64 %596, 23
  store i64 %627, i64* %PC.i, align 8
  %628 = zext i64 %626 to i128
  %629 = shl nuw i128 %628, 64
  %630 = zext i64 %602 to i128
  %631 = or i128 %629, %630
  %632 = sdiv i128 %631, 2
  %633 = trunc i128 %632 to i64
  %634 = and i128 %632, 18446744073709551615
  %635 = sext i64 %633 to i128
  %636 = and i128 %635, -18446744073709551616
  %637 = or i128 %636, %634
  %638 = icmp eq i128 %632, %637
  br i1 %638, label %641, label %639

; <label>:639:                                    ; preds = %block_.L_404918
  %640 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %627, %struct.Memory* %MEMORY.2)
  %.pre5 = load i64, i64* %RBP.i, align 8
  %.pre6 = load i64, i64* %RAX.i347, align 8
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %routine_idivq__rcx.exit

; <label>:641:                                    ; preds = %block_.L_404918
  %642 = srem i128 %631, 2
  %643 = trunc i128 %642 to i64
  store i64 %633, i64* %625, align 8
  store i64 %643, i64* %624, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %641, %639
  %644 = phi i64 [ %.pre7, %639 ], [ %627, %641 ]
  %645 = phi i64 [ %.pre6, %639 ], [ %633, %641 ]
  %646 = phi i64 [ %.pre5, %639 ], [ %595, %641 ]
  %647 = phi %struct.Memory* [ %640, %639 ], [ %MEMORY.2, %641 ]
  %648 = add i64 %646, -40
  %649 = add i64 %644, 4
  store i64 %649, i64* %PC.i, align 8
  %650 = inttoptr i64 %648 to i64*
  store i64 %645, i64* %650, align 8
  %AL.i133 = bitcast %union.anon* %100 to i8*
  %CL.i134 = bitcast %union.anon* %597 to i8*
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_404933

block_.L_404933:                                  ; preds = %routine_idivq__rsi.exit, %routine_idivq__rcx.exit
  %651 = phi i64 [ %.pre8, %routine_idivq__rcx.exit ], [ %986, %routine_idivq__rsi.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %647, %routine_idivq__rcx.exit ], [ %981, %routine_idivq__rsi.exit ]
  store i64 0, i64* %RAX.i347, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i134, align 1
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -48
  %654 = add i64 %651, 8
  store i64 %654, i64* %PC.i, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RDX.i369, align 8
  %657 = add i64 %652, -24
  %658 = add i64 %651, 12
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  %661 = sub i64 %656, %660
  %662 = icmp ult i64 %656, %660
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %14, align 1
  %664 = trunc i64 %661 to i32
  %665 = and i32 %664, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %21, align 1
  %670 = xor i64 %660, %656
  %671 = xor i64 %670, %661
  %672 = lshr i64 %671, 4
  %673 = trunc i64 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %27, align 1
  %675 = icmp eq i64 %661, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %30, align 1
  %677 = lshr i64 %661, 63
  %678 = trunc i64 %677 to i8
  store i8 %678, i8* %33, align 1
  %679 = lshr i64 %656, 63
  %680 = lshr i64 %660, 63
  %681 = xor i64 %680, %679
  %682 = xor i64 %677, %679
  %683 = add nuw nsw i64 %682, %681
  %684 = icmp eq i64 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %39, align 1
  %686 = add i64 %652, -153
  %687 = add i64 %651, 18
  store i64 %687, i64* %PC.i, align 8
  %688 = inttoptr i64 %686 to i8*
  store i8 0, i8* %688, align 1
  %689 = load i64, i64* %PC.i, align 8
  %690 = load i8, i8* %30, align 1
  %691 = icmp ne i8 %690, 0
  %692 = load i8, i8* %33, align 1
  %693 = icmp ne i8 %692, 0
  %694 = load i8, i8* %39, align 1
  %695 = icmp ne i8 %694, 0
  %696 = xor i1 %693, %695
  %697 = or i1 %691, %696
  %.v17 = select i1 %697, i64 54, i64 6
  %698 = add i64 %689, %.v17
  store i64 %698, i64* %3, align 8
  br i1 %697, label %block_.L_40497b, label %block_40494b

block_40494b:                                     ; preds = %block_.L_404933
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -8
  store i64 %700, i64* %RDI.i295, align 8
  %701 = add i64 %699, -40
  %702 = add i64 %698, 8
  store i64 %702, i64* %PC.i, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RSI.i143, align 8
  %705 = add i64 %698, -491
  %706 = add i64 %698, 13
  %707 = load i64, i64* %6, align 8
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %706, i64* %709, align 8
  store i64 %708, i64* %6, align 8
  store i64 %705, i64* %3, align 8
  %call2_404953 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %705, %struct.Memory* %MEMORY.3)
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -104
  %712 = load i64, i64* %PC.i, align 8
  store i64 %711, i64* %RDI.i295, align 8
  %713 = load i64, i64* %RAX.i347, align 8
  %714 = add i64 %712, 8
  store i64 %714, i64* %PC.i, align 8
  %715 = inttoptr i64 %711 to i64*
  store i64 %713, i64* %715, align 8
  %716 = load i64, i64* %PC.i, align 8
  %717 = add i64 %716, -624
  %718 = add i64 %716, 5
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %718, i64* %721, align 8
  store i64 %720, i64* %6, align 8
  store i64 %717, i64* %3, align 8
  %call2_404960 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %717, %struct.Memory* %call2_404953)
  %722 = bitcast %union.anon* %100 to double**
  %723 = load double*, double** %722, align 8
  %724 = load i64, i64* %PC.i, align 8
  %725 = add i64 %724, 4
  store i64 %725, i64* %PC.i, align 8
  %726 = load double, double* %723, align 8
  store double %726, double* %101, align 1
  store double 0.000000e+00, double* %103, align 1
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -32
  %729 = add i64 %724, 9
  store i64 %729, i64* %PC.i, align 8
  %730 = inttoptr i64 %728 to double*
  %731 = load double, double* %730, align 8
  store double %731, double* %105, align 1
  store double 0.000000e+00, double* %107, align 1
  %732 = add i64 %724, 13
  store i64 %732, i64* %PC.i, align 8
  %733 = fcmp uno double %731, %726
  br i1 %733, label %734, label %744

; <label>:734:                                    ; preds = %block_40494b
  %735 = fadd double %731, %726
  %736 = bitcast double %735 to i64
  %737 = and i64 %736, 9221120237041090560
  %738 = icmp eq i64 %737, 9218868437227405312
  %739 = and i64 %736, 2251799813685247
  %740 = icmp ne i64 %739, 0
  %741 = and i1 %738, %740
  br i1 %741, label %742, label %750

; <label>:742:                                    ; preds = %734
  %743 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %732, %struct.Memory* %call2_404960)
  %.pre9 = load i64, i64* %PC.i, align 8
  %.pre10 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:744:                                    ; preds = %block_40494b
  %745 = fcmp ogt double %731, %726
  br i1 %745, label %750, label %746

; <label>:746:                                    ; preds = %744
  %747 = fcmp olt double %731, %726
  br i1 %747, label %750, label %748

; <label>:748:                                    ; preds = %746
  %749 = fcmp oeq double %731, %726
  br i1 %749, label %750, label %754

; <label>:750:                                    ; preds = %748, %746, %744, %734
  %751 = phi i8 [ 0, %744 ], [ 0, %746 ], [ 1, %748 ], [ 1, %734 ]
  %752 = phi i8 [ 0, %744 ], [ 0, %746 ], [ 0, %748 ], [ 1, %734 ]
  %753 = phi i8 [ 0, %744 ], [ 1, %746 ], [ 0, %748 ], [ 1, %734 ]
  store i8 %751, i8* %30, align 1
  store i8 %752, i8* %21, align 1
  store i8 %753, i8* %14, align 1
  br label %754

; <label>:754:                                    ; preds = %750, %748
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %754, %742
  %755 = phi i64 [ %.pre10, %742 ], [ %727, %754 ]
  %756 = phi i64 [ %.pre9, %742 ], [ %732, %754 ]
  %757 = phi %struct.Memory* [ %743, %742 ], [ %call2_404960, %754 ]
  %758 = load i8, i8* %14, align 1
  %759 = load i8, i8* %30, align 1
  %760 = or i8 %759, %758
  %761 = icmp eq i8 %760, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %CL.i134, align 1
  %763 = add i64 %755, -153
  %764 = add i64 %756, 9
  store i64 %764, i64* %PC.i, align 8
  %765 = inttoptr i64 %763 to i8*
  store i8 %762, i8* %765, align 1
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_40497b

block_.L_40497b:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit, %block_.L_404933
  %766 = phi i64 [ %698, %block_.L_404933 ], [ %.pre11, %routine_ucomisd__xmm0___xmm1.exit ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_404933 ], [ %757, %routine_ucomisd__xmm0___xmm1.exit ]
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -153
  %769 = add i64 %766, 6
  store i64 %769, i64* %PC.i, align 8
  %770 = inttoptr i64 %768 to i8*
  %771 = load i8, i8* %770, align 1
  store i8 %771, i8* %AL.i133, align 1
  %772 = and i8 %771, 1
  store i8 0, i8* %14, align 1
  %773 = zext i8 %772 to i32
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = xor i8 %775, 1
  store i8 %776, i8* %21, align 1
  %777 = xor i8 %772, 1
  store i8 %777, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %778 = icmp eq i8 %777, 0
  %.v18 = select i1 %778, i64 19, i64 14
  %779 = add i64 %766, %.v18
  store i64 %779, i64* %3, align 8
  %780 = add i64 %767, -8
  store i64 %780, i64* %RDI.i295, align 8
  br i1 %778, label %block_.L_40498e, label %block_404989

block_404989:                                     ; preds = %block_.L_40497b
  %781 = add i64 %767, -32
  %782 = add i64 %779, 127
  store i64 %782, i64* %PC.i, align 8
  %783 = inttoptr i64 %781 to i64*
  %784 = load i64, i64* %783, align 8
  %785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %784, i64* %785, align 1
  store double 0.000000e+00, double* %103, align 1
  %786 = add i64 %767, -48
  %787 = add i64 %779, 131
  store i64 %787, i64* %PC.i, align 8
  %788 = inttoptr i64 %786 to i64*
  %789 = load i64, i64* %788, align 8
  store i64 %789, i64* %RSI.i143, align 8
  %790 = add i64 %767, -176
  %791 = add i64 %779, 139
  store i64 %791, i64* %PC.i, align 8
  %792 = inttoptr i64 %790 to i64*
  store i64 %784, i64* %792, align 8
  %793 = load i64, i64* %PC.i, align 8
  %794 = add i64 %793, -692
  %795 = add i64 %793, 5
  %796 = load i64, i64* %6, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %795, i64* %798, align 8
  store i64 %797, i64* %6, align 8
  store i64 %794, i64* %3, align 8
  %call2_404a14 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %794, %struct.Memory* %MEMORY.4)
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -128
  %801 = load i64, i64* %PC.i, align 8
  store i64 %800, i64* %RDI.i295, align 8
  %802 = load i64, i64* %RAX.i347, align 8
  %803 = add i64 %801, 8
  store i64 %803, i64* %PC.i, align 8
  %804 = inttoptr i64 %800 to i64*
  store i64 %802, i64* %804, align 8
  %805 = load i64, i64* %PC.i, align 8
  %806 = add i64 %805, -817
  %807 = add i64 %805, 5
  %808 = load i64, i64* %6, align 8
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %807, i64* %810, align 8
  store i64 %809, i64* %6, align 8
  store i64 %806, i64* %3, align 8
  %call2_404a21 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %806, %struct.Memory* %call2_404a14)
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -176
  %813 = load i64, i64* %PC.i, align 8
  %814 = add i64 %813, 8
  store i64 %814, i64* %PC.i, align 8
  %815 = inttoptr i64 %812 to i64*
  %816 = load i64, i64* %815, align 8
  %817 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %816, i64* %817, align 1
  store double 0.000000e+00, double* %103, align 1
  %818 = bitcast %union.anon* %100 to i64**
  %819 = load i64*, i64** %818, align 8
  %820 = add i64 %813, 12
  store i64 %820, i64* %PC.i, align 8
  store i64 %816, i64* %819, align 8
  %821 = load i64, i64* %RSP.i33, align 8
  %822 = load i64, i64* %PC.i, align 8
  %823 = add i64 %821, 176
  store i64 %823, i64* %RSP.i33, align 8
  %824 = icmp ugt i64 %821, -177
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %14, align 1
  %826 = trunc i64 %823 to i32
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i64 %821, 16
  %833 = xor i64 %832, %823
  %834 = lshr i64 %833, 4
  %835 = trunc i64 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %27, align 1
  %837 = icmp eq i64 %823, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %30, align 1
  %839 = lshr i64 %823, 63
  %840 = trunc i64 %839 to i8
  store i8 %840, i8* %33, align 1
  %841 = lshr i64 %821, 63
  %842 = xor i64 %839, %841
  %843 = add nuw nsw i64 %842, %839
  %844 = icmp eq i64 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %39, align 1
  %846 = add i64 %822, 8
  store i64 %846, i64* %PC.i, align 8
  %847 = add i64 %821, 184
  %848 = inttoptr i64 %823 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %RBP.i, align 8
  store i64 %847, i64* %6, align 8
  %850 = add i64 %822, 9
  store i64 %850, i64* %PC.i, align 8
  %851 = inttoptr i64 %847 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %3, align 8
  %853 = add i64 %821, 192
  store i64 %853, i64* %6, align 8
  ret %struct.Memory* %call2_404a21

block_.L_40498e:                                  ; preds = %block_.L_40497b
  %854 = add i64 %767, -40
  %855 = add i64 %779, 8
  store i64 %855, i64* %PC.i, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RSI.i143, align 8
  %858 = add i64 %779, -558
  %859 = add i64 %779, 13
  %860 = load i64, i64* %6, align 8
  %861 = add i64 %860, -8
  %862 = inttoptr i64 %861 to i64*
  store i64 %859, i64* %862, align 8
  store i64 %861, i64* %6, align 8
  store i64 %858, i64* %3, align 8
  %call2_404996 = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %858, %struct.Memory* %MEMORY.4)
  %863 = load i64, i64* %RBP.i, align 8
  %864 = add i64 %863, -112
  %865 = load i64, i64* %PC.i, align 8
  store i64 %864, i64* %RDI.i295, align 8
  %866 = load i64, i64* %RAX.i347, align 8
  %867 = add i64 %865, 8
  store i64 %867, i64* %PC.i, align 8
  %868 = inttoptr i64 %864 to i64*
  store i64 %866, i64* %868, align 8
  %869 = load i64, i64* %PC.i, align 8
  %870 = add i64 %869, -691
  %871 = add i64 %869, 5
  %872 = load i64, i64* %6, align 8
  %873 = add i64 %872, -8
  %874 = inttoptr i64 %873 to i64*
  store i64 %871, i64* %874, align 8
  store i64 %873, i64* %6, align 8
  store i64 %870, i64* %3, align 8
  %call2_4049a3 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %870, %struct.Memory* %call2_404996)
  %875 = load i64, i64* %RBP.i, align 8
  %876 = add i64 %875, -8
  %877 = load i64, i64* %PC.i, align 8
  store i64 %876, i64* %RDI.i295, align 8
  %878 = bitcast %union.anon* %100 to i64**
  %879 = load i64*, i64** %878, align 8
  %880 = add i64 %877, 8
  store i64 %880, i64* %PC.i, align 8
  %881 = load i64, i64* %879, align 8
  %882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %881, i64* %882, align 1
  store double 0.000000e+00, double* %103, align 1
  %883 = add i64 %875, -48
  %884 = add i64 %877, 12
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RSI.i143, align 8
  %887 = add i64 %875, -168
  %888 = add i64 %877, 20
  store i64 %888, i64* %PC.i, align 8
  %889 = inttoptr i64 %887 to i64*
  store i64 %881, i64* %889, align 8
  %890 = load i64, i64* %PC.i, align 8
  %891 = add i64 %890, -604
  %892 = add i64 %890, 5
  %893 = load i64, i64* %6, align 8
  %894 = add i64 %893, -8
  %895 = inttoptr i64 %894 to i64*
  store i64 %892, i64* %895, align 8
  store i64 %894, i64* %6, align 8
  store i64 %891, i64* %3, align 8
  %call2_4049bc = tail call %struct.Memory* @sub_404760._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* %0, i64 %891, %struct.Memory* %call2_4049a3)
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -120
  %898 = load i64, i64* %PC.i, align 8
  store i64 %897, i64* %RDI.i295, align 8
  %899 = load i64, i64* %RAX.i347, align 8
  %900 = add i64 %898, 8
  store i64 %900, i64* %PC.i, align 8
  %901 = inttoptr i64 %897 to i64*
  store i64 %899, i64* %901, align 8
  %902 = load i64, i64* %PC.i, align 8
  %903 = add i64 %902, -729
  %904 = add i64 %902, 5
  %905 = load i64, i64* %6, align 8
  %906 = add i64 %905, -8
  %907 = inttoptr i64 %906 to i64*
  store i64 %904, i64* %907, align 8
  store i64 %906, i64* %6, align 8
  store i64 %903, i64* %3, align 8
  %call2_4049c9 = tail call %struct.Memory* @sub_4046f0._ZNK14PointerWrapperIdEdeEv(%struct.State* %0, i64 %903, %struct.Memory* %call2_4049bc)
  %908 = load i64, i64* %PC.i, align 8
  store i64 2, i64* %RCX.i156, align 8
  store i64 2, i64* %RSI.i143, align 8
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -168
  %911 = add i64 %908, 15
  store i64 %911, i64* %PC.i, align 8
  %912 = inttoptr i64 %910 to i64*
  %913 = load i64, i64* %912, align 8
  %914 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %913, i64* %914, align 1
  store double 0.000000e+00, double* %103, align 1
  %915 = bitcast %union.anon* %100 to i64**
  %916 = load i64*, i64** %915, align 8
  %917 = add i64 %908, 19
  store i64 %917, i64* %PC.i, align 8
  store i64 %913, i64* %916, align 8
  %918 = load i64, i64* %RBP.i, align 8
  %919 = add i64 %918, -40
  %920 = load i64, i64* %PC.i, align 8
  %921 = add i64 %920, 4
  store i64 %921, i64* %PC.i, align 8
  %922 = inttoptr i64 %919 to i64*
  %923 = load i64, i64* %922, align 8
  store i64 %923, i64* %RAX.i347, align 8
  %924 = add i64 %918, -48
  %925 = add i64 %920, 8
  store i64 %925, i64* %PC.i, align 8
  %926 = inttoptr i64 %924 to i64*
  store i64 %923, i64* %926, align 8
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -48
  %929 = load i64, i64* %PC.i, align 8
  %930 = add i64 %929, 4
  store i64 %930, i64* %PC.i, align 8
  %931 = inttoptr i64 %928 to i64*
  %932 = load i64, i64* %931, align 8
  %933 = add i64 %932, -1
  store i64 %933, i64* %RAX.i347, align 8
  %934 = icmp eq i64 %932, 0
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %14, align 1
  %936 = trunc i64 %933 to i32
  %937 = and i32 %936, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %21, align 1
  %942 = xor i64 %932, %933
  %943 = lshr i64 %942, 4
  %944 = trunc i64 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %27, align 1
  %946 = icmp eq i64 %933, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %30, align 1
  %948 = lshr i64 %933, 63
  %949 = trunc i64 %948 to i8
  store i8 %949, i8* %33, align 1
  %950 = lshr i64 %932, 63
  %951 = xor i64 %948, %950
  %952 = add nuw nsw i64 %951, %950
  %953 = icmp eq i64 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %39, align 1
  %955 = ashr i64 %933, 63
  store i64 %955, i64* %624, align 8
  %956 = load i64, i64* %RSI.i143, align 8
  %957 = add i64 %929, 13
  store i64 %957, i64* %PC.i, align 8
  %958 = sext i64 %956 to i128
  %959 = and i128 %958, -18446744073709551616
  %960 = zext i64 %955 to i128
  %961 = shl nuw i128 %960, 64
  %962 = zext i64 %933 to i128
  %963 = or i128 %961, %962
  %964 = zext i64 %956 to i128
  %965 = or i128 %959, %964
  %966 = sdiv i128 %963, %965
  %967 = trunc i128 %966 to i64
  %968 = and i128 %966, 18446744073709551615
  %969 = sext i64 %967 to i128
  %970 = and i128 %969, -18446744073709551616
  %971 = or i128 %970, %968
  %972 = icmp eq i128 %966, %971
  br i1 %972, label %975, label %973

; <label>:973:                                    ; preds = %block_.L_40498e
  %974 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %957, %struct.Memory* %call2_4049c9)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i64, i64* %RAX.i347, align 8
  %.pre14 = load i64, i64* %PC.i, align 8
  br label %routine_idivq__rsi.exit

; <label>:975:                                    ; preds = %block_.L_40498e
  %976 = srem i128 %963, %965
  %977 = trunc i128 %976 to i64
  store i64 %967, i64* %625, align 8
  store i64 %977, i64* %624, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %975, %973
  %978 = phi i64 [ %.pre14, %973 ], [ %957, %975 ]
  %979 = phi i64 [ %.pre13, %973 ], [ %967, %975 ]
  %980 = phi i64 [ %.pre12, %973 ], [ %927, %975 ]
  %981 = phi %struct.Memory* [ %974, %973 ], [ %call2_4049c9, %975 ]
  %982 = add i64 %980, -40
  %983 = add i64 %978, 4
  store i64 %983, i64* %PC.i, align 8
  %984 = inttoptr i64 %982 to i64*
  store i64 %979, i64* %984, align 8
  %985 = load i64, i64* %PC.i, align 8
  %986 = add i64 %985, -199
  store i64 %986, i64* %3, align 8
  br label %block_.L_404933
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

define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 176
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %3, %6
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %6, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %6, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = xor i64 %27, %30
  %32 = add nuw nsw i64 %31, %27
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RDX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_cmpq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4048ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._ZplIdE14PointerWrapperIT_ERS2_l(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._ZNK14PointerWrapperIdEdeEv(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd___rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400478
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_jbe_.L_40483b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %3, %6
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %6, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %6, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = xor i64 %27, %30
  %32 = add nuw nsw i64 %31, %27
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4047c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_404918(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400478
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400478
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x99__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -153
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_40497b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400478
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_seta__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x99__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -153
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40498e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4049ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x70__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x78__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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

define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400478
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400478
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_jmpq_.L_404933(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -177
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
