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

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_400650.make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400690.sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -344
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 336
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = bitcast [32 x %union.VectorReg]* %40 to i32*
  %44 = getelementptr inbounds i8, i8* %41, i64 4
  %45 = bitcast i8* %44 to i32*
  %46 = bitcast i64* %42 to i32*
  %47 = getelementptr inbounds i8, i8* %41, i64 12
  %48 = bitcast i8* %47 to i32*
  %49 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %49, align 1
  %50 = add i64 %7, -12
  %51 = add i64 %10, 20
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -8
  %56 = load i32, i32* %EDI.i, align 4
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %RSI.i87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i64, i64* %RSI.i87, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 5
  store i64 %69, i64* %3, align 8
  %70 = bitcast [32 x %union.VectorReg]* %40 to double*
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %72 = load i64, i64* %71, align 1
  %73 = inttoptr i64 %67 to i64*
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -32
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 5
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %71, align 1
  %79 = inttoptr i64 %75 to i64*
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -40
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 5
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %71, align 1
  %85 = inttoptr i64 %81 to i64*
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -48
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 5
  store i64 %89, i64* %3, align 8
  %90 = load i64, i64* %71, align 1
  %91 = inttoptr i64 %87 to i64*
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -276
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 10
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 2500000, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -288
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 8
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %71, align 1
  %102 = inttoptr i64 %98 to i64*
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %104 = bitcast %union.VectorReg* %103 to i8*
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -288
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 8
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %106 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = bitcast %union.VectorReg* %103 to double*
  %112 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %103, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %110, i64* %112, align 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %114 = bitcast i64* %113 to double*
  store double 0.000000e+00, double* %114, align 1
  %115 = add i64 %107, -178
  %116 = add i64 %107, 13
  %117 = load i64, i64* %6, align 8
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %116, i64* %119, align 8
  store i64 %118, i64* %6, align 8
  store i64 %115, i64* %3, align 8
  %call2_40070a = tail call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %115, %struct.Memory* %2)
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 1305
  %122 = add i64 %120, 8
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -144
  %127 = add i64 %120, 16
  store i64 %127, i64* %3, align 8
  %128 = load i64, i64* %71, align 1
  %129 = load i64, i64* %42, align 1
  %130 = inttoptr i64 %126 to i64*
  store i64 %128, i64* %130, align 8
  %131 = add i64 %125, -136
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  %133 = load i64, i64* %3, align 8
  %134 = bitcast %union.VectorReg* %103 to <2 x i32>*
  %135 = load <2 x i32>, <2 x i32>* %134, align 1
  %136 = bitcast i64* %113 to <2 x i32>*
  %137 = load <2 x i32>, <2 x i32>* %136, align 1
  %138 = extractelement <2 x i32> %135, i32 0
  store i32 %138, i32* %43, align 1
  %139 = extractelement <2 x i32> %135, i32 1
  store i32 %139, i32* %45, align 1
  %140 = extractelement <2 x i32> %137, i32 0
  store i32 %140, i32* %46, align 1
  %141 = extractelement <2 x i32> %137, i32 1
  store i32 %141, i32* %48, align 1
  %142 = add i64 %133, -207
  %143 = add i64 %133, 8
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %6, align 8
  store i64 %142, i64* %3, align 8
  %call2_400722 = tail call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %142, %struct.Memory* %call2_40070a)
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 1297
  %149 = add i64 %147, 8
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -160
  %154 = add i64 %147, 16
  store i64 %154, i64* %3, align 8
  %155 = load i64, i64* %71, align 1
  %156 = load i64, i64* %42, align 1
  %157 = inttoptr i64 %153 to i64*
  store i64 %155, i64* %157, align 8
  %158 = add i64 %152, -152
  %159 = inttoptr i64 %158 to i64*
  store i64 %156, i64* %159, align 8
  %160 = load i64, i64* %3, align 8
  %161 = load <2 x i32>, <2 x i32>* %134, align 1
  %162 = load <2 x i32>, <2 x i32>* %136, align 1
  %163 = extractelement <2 x i32> %161, i32 0
  store i32 %163, i32* %43, align 1
  %164 = extractelement <2 x i32> %161, i32 1
  store i32 %164, i32* %45, align 1
  %165 = extractelement <2 x i32> %162, i32 0
  store i32 %165, i32* %46, align 1
  %166 = extractelement <2 x i32> %162, i32 1
  store i32 %166, i32* %48, align 1
  %167 = add i64 %160, -231
  %168 = add i64 %160, 8
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %6, align 8
  store i64 %167, i64* %3, align 8
  %call2_40073a = tail call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %167, %struct.Memory* %call2_400722)
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 1265
  %174 = add i64 %172, 8
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -176
  %179 = add i64 %172, 16
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %71, align 1
  %181 = load i64, i64* %42, align 1
  %182 = inttoptr i64 %178 to i64*
  store i64 %180, i64* %182, align 8
  %183 = add i64 %177, -168
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  %185 = load i64, i64* %3, align 8
  %186 = load <2 x i32>, <2 x i32>* %134, align 1
  %187 = load <2 x i32>, <2 x i32>* %136, align 1
  %188 = extractelement <2 x i32> %186, i32 0
  store i32 %188, i32* %43, align 1
  %189 = extractelement <2 x i32> %186, i32 1
  store i32 %189, i32* %45, align 1
  %190 = extractelement <2 x i32> %187, i32 0
  store i32 %190, i32* %46, align 1
  %191 = extractelement <2 x i32> %187, i32 1
  store i32 %191, i32* %48, align 1
  %192 = add i64 %185, -255
  %193 = add i64 %185, 8
  %194 = load i64, i64* %6, align 8
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %193, i64* %196, align 8
  store i64 %195, i64* %6, align 8
  store i64 %192, i64* %3, align 8
  %call2_400752 = tail call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %192, %struct.Memory* %call2_40073a)
  %197 = load i64, i64* %3, align 8
  %198 = add i64 %197, 1233
  %199 = add i64 %197, 8
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %203 = add i64 %197, 1249
  %204 = add i64 %197, 16
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  %207 = bitcast %union.VectorReg* %202 to double*
  %208 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %202, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %206, i64* %208, align 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %210 = bitcast i64* %209 to double*
  store double 0.000000e+00, double* %210, align 1
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -208
  %213 = add i64 %197, 24
  store i64 %213, i64* %3, align 8
  %214 = load i64, i64* %71, align 1
  %215 = load i64, i64* %42, align 1
  %216 = inttoptr i64 %212 to i64*
  store i64 %214, i64* %216, align 8
  %217 = add i64 %211, -200
  %218 = inttoptr i64 %217 to i64*
  store i64 %215, i64* %218, align 8
  %219 = load i64, i64* %3, align 8
  %220 = load <2 x i32>, <2 x i32>* %134, align 1
  %221 = load <2 x i32>, <2 x i32>* %136, align 1
  %222 = extractelement <2 x i32> %220, i32 0
  store i32 %222, i32* %43, align 1
  %223 = extractelement <2 x i32> %220, i32 1
  store i32 %223, i32* %45, align 1
  %224 = extractelement <2 x i32> %221, i32 0
  store i32 %224, i32* %46, align 1
  %225 = extractelement <2 x i32> %221, i32 1
  store i32 %225, i32* %48, align 1
  %226 = bitcast %union.VectorReg* %202 to <2 x i32>*
  %227 = load <2 x i32>, <2 x i32>* %226, align 1
  %228 = bitcast i64* %209 to <2 x i32>*
  %229 = load <2 x i32>, <2 x i32>* %228, align 1
  %230 = extractelement <2 x i32> %227, i32 0
  %231 = bitcast %union.VectorReg* %103 to i32*
  store i32 %230, i32* %231, align 1
  %232 = extractelement <2 x i32> %227, i32 1
  %233 = getelementptr inbounds i8, i8* %104, i64 4
  %234 = bitcast i8* %233 to i32*
  store i32 %232, i32* %234, align 1
  %235 = extractelement <2 x i32> %229, i32 0
  %236 = bitcast i64* %113 to i32*
  store i32 %235, i32* %236, align 1
  %237 = extractelement <2 x i32> %229, i32 1
  %238 = getelementptr inbounds i8, i8* %104, i64 12
  %239 = bitcast i8* %238 to i32*
  store i32 %237, i32* %239, align 1
  %240 = add i64 %219, -287
  %241 = add i64 %219, 11
  %242 = load i64, i64* %6, align 8
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %6, align 8
  store i64 %240, i64* %3, align 8
  %call2_400775 = tail call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %240, %struct.Memory* %call2_400752)
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 1198
  %247 = add i64 %245, 8
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %250 = add i64 %245, 1206
  %251 = add i64 %245, 16
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %208, align 1
  store double 0.000000e+00, double* %210, align 1
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -192
  %256 = add i64 %245, 24
  store i64 %256, i64* %3, align 8
  %257 = load i64, i64* %71, align 1
  %258 = load i64, i64* %42, align 1
  %259 = inttoptr i64 %255 to i64*
  store i64 %257, i64* %259, align 8
  %260 = add i64 %254, -184
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261, align 8
  %262 = load i64, i64* %3, align 8
  %263 = load <2 x i32>, <2 x i32>* %134, align 1
  %264 = load <2 x i32>, <2 x i32>* %136, align 1
  %265 = extractelement <2 x i32> %263, i32 0
  store i32 %265, i32* %43, align 1
  %266 = extractelement <2 x i32> %263, i32 1
  store i32 %266, i32* %45, align 1
  %267 = extractelement <2 x i32> %264, i32 0
  store i32 %267, i32* %46, align 1
  %268 = extractelement <2 x i32> %264, i32 1
  store i32 %268, i32* %48, align 1
  %269 = load <2 x i32>, <2 x i32>* %226, align 1
  %270 = load <2 x i32>, <2 x i32>* %228, align 1
  %271 = extractelement <2 x i32> %269, i32 0
  store i32 %271, i32* %231, align 1
  %272 = extractelement <2 x i32> %269, i32 1
  store i32 %272, i32* %234, align 1
  %273 = extractelement <2 x i32> %270, i32 0
  store i32 %273, i32* %236, align 1
  %274 = extractelement <2 x i32> %270, i32 1
  store i32 %274, i32* %239, align 1
  %275 = add i64 %262, -322
  %276 = add i64 %262, 11
  %277 = load i64, i64* %6, align 8
  %278 = add i64 %277, -8
  %279 = inttoptr i64 %278 to i64*
  store i64 %276, i64* %279, align 8
  store i64 %278, i64* %6, align 8
  store i64 %275, i64* %3, align 8
  %call2_400798 = tail call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %275, %struct.Memory* %call2_400775)
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 1163
  %282 = add i64 %280, 8
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -240
  %287 = add i64 %280, 16
  store i64 %287, i64* %3, align 8
  %288 = load i64, i64* %71, align 1
  %289 = load i64, i64* %42, align 1
  %290 = inttoptr i64 %286 to i64*
  store i64 %288, i64* %290, align 8
  %291 = add i64 %285, -232
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292, align 8
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -144
  %295 = load i64, i64* %3, align 8
  %296 = add i64 %295, 8
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %294 to i64*
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %293, -136
  %300 = inttoptr i64 %299 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %298, i64* %71, align 1
  %302 = bitcast i64* %42 to double*
  store i64 %301, i64* %42, align 1
  %303 = add i64 %293, -128
  %304 = add i64 %295, 13
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i64*
  store i64 %298, i64* %305, align 8
  %306 = add i64 %293, -120
  %307 = inttoptr i64 %306 to i64*
  store i64 %301, i64* %307, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -112
  %310 = load i64, i64* %3, align 8
  %311 = add i64 %310, 5
  store i64 %311, i64* %3, align 8
  %312 = load i64, i64* %71, align 1
  %313 = load i64, i64* %42, align 1
  %314 = inttoptr i64 %309 to i64*
  store i64 %312, i64* %314, align 8
  %315 = add i64 %308, -104
  %316 = inttoptr i64 %315 to i64*
  store i64 %313, i64* %316, align 8
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -96
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 5
  store i64 %320, i64* %3, align 8
  %321 = load i64, i64* %71, align 1
  %322 = load i64, i64* %42, align 1
  %323 = inttoptr i64 %318 to i64*
  store i64 %321, i64* %323, align 8
  %324 = add i64 %317, -88
  %325 = inttoptr i64 %324 to i64*
  store i64 %322, i64* %325, align 8
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -80
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 5
  store i64 %329, i64* %3, align 8
  %330 = load i64, i64* %71, align 1
  %331 = load i64, i64* %42, align 1
  %332 = inttoptr i64 %327 to i64*
  store i64 %330, i64* %332, align 8
  %333 = add i64 %326, -72
  %334 = inttoptr i64 %333 to i64*
  store i64 %331, i64* %334, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -64
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, 5
  store i64 %338, i64* %3, align 8
  %339 = load i64, i64* %71, align 1
  %340 = load i64, i64* %42, align 1
  %341 = inttoptr i64 %336 to i64*
  store i64 %339, i64* %341, align 8
  %342 = add i64 %335, -56
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -248
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 8
  store i64 %347, i64* %3, align 8
  %348 = load i64, i64* %112, align 1
  %349 = inttoptr i64 %345 to i64*
  store i64 %348, i64* %349, align 8
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4007d6

block_.L_4007d6:                                  ; preds = %block_4007f0, %entry
  %350 = phi i64 [ %.pre, %entry ], [ %578, %block_4007f0 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_400798, %entry ], [ %call2_40088e, %block_4007f0 ]
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -248
  %353 = add i64 %350, 8
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %356 = add i64 %351, -276
  %357 = add i64 %350, 16
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sitofp i32 %359 to double
  store double %360, double* %111, align 1
  %361 = add i64 %350, 20
  store i64 %361, i64* %3, align 8
  %362 = bitcast i64 %355 to double
  %363 = fcmp uno double %360, %362
  br i1 %363, label %364, label %374

; <label>:364:                                    ; preds = %block_.L_4007d6
  %365 = fadd double %360, %362
  %366 = bitcast double %365 to i64
  %367 = and i64 %366, 9221120237041090560
  %368 = icmp eq i64 %367, 9218868437227405312
  %369 = and i64 %366, 2251799813685247
  %370 = icmp ne i64 %369, 0
  %371 = and i1 %368, %370
  br i1 %371, label %372, label %380

; <label>:372:                                    ; preds = %364
  %373 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %361, %struct.Memory* %MEMORY.0)
  %.pre12 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit384

; <label>:374:                                    ; preds = %block_.L_4007d6
  %375 = fcmp ogt double %360, %362
  br i1 %375, label %380, label %376

; <label>:376:                                    ; preds = %374
  %377 = fcmp olt double %360, %362
  br i1 %377, label %380, label %378

; <label>:378:                                    ; preds = %376
  %379 = fcmp oeq double %360, %362
  br i1 %379, label %380, label %384

; <label>:380:                                    ; preds = %378, %376, %374, %364
  %381 = phi i8 [ 0, %374 ], [ 0, %376 ], [ 1, %378 ], [ 1, %364 ]
  %382 = phi i8 [ 0, %374 ], [ 0, %376 ], [ 0, %378 ], [ 1, %364 ]
  %383 = phi i8 [ 0, %374 ], [ 1, %376 ], [ 0, %378 ], [ 1, %364 ]
  store i8 %381, i8* %30, align 1
  store i8 %382, i8* %21, align 1
  store i8 %383, i8* %14, align 1
  br label %384

; <label>:384:                                    ; preds = %380, %378
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit384

routine_ucomisd__xmm0___xmm1.exit384:             ; preds = %384, %372
  %385 = phi i64 [ %.pre12, %372 ], [ %361, %384 ]
  %386 = phi %struct.Memory* [ %373, %372 ], [ %MEMORY.0, %384 ]
  %387 = load i8, i8* %14, align 1
  %388 = icmp ne i8 %387, 0
  %.v = select i1 %388, i64 298, i64 6
  %389 = add i64 %385, %.v
  store i64 %389, i64* %3, align 8
  %cmpBr_4007ea = icmp eq i8 %387, 1
  br i1 %cmpBr_4007ea, label %block_.L_400914, label %block_4007f0

block_4007f0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit384
  %390 = add i64 %389, 1104
  %391 = add i64 %389, 8
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %394 = add i64 %389, 1080
  %395 = add i64 %389, 16
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -248
  %400 = add i64 %389, 24
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to double*
  %402 = load double, double* %401, align 8
  %403 = bitcast i64 %397 to double
  %404 = fsub double %402, %403
  store double %404, double* %207, align 1
  store i64 0, i64* %209, align 1
  %.cast2 = bitcast double %404 to <2 x i32>
  %405 = extractelement <2 x i32> %.cast2, i32 0
  store i32 %405, i32* %231, align 1
  %406 = extractelement <2 x i32> %.cast2, i32 1
  store i32 %406, i32* %234, align 1
  store i32 0, i32* %236, align 1
  store i32 0, i32* %239, align 1
  %407 = add i64 %389, -720
  %408 = add i64 %389, 36
  %409 = load i64, i64* %6, align 8
  %410 = add i64 %409, -8
  %411 = inttoptr i64 %410 to i64*
  store i64 %408, i64* %411, align 8
  store i64 %410, i64* %6, align 8
  store i64 %407, i64* %3, align 8
  %412 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %386)
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 1044
  %415 = add i64 %413, 8
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %418 = load i64, i64* %RBP.i, align 8
  %419 = add i64 %418, -24
  %420 = add i64 %413, 13
  store i64 %420, i64* %3, align 8
  %421 = load double, double* %70, align 1
  %422 = inttoptr i64 %419 to double*
  %423 = load double, double* %422, align 8
  %424 = fadd double %421, %423
  store double %424, double* %70, align 1
  %425 = add i64 %413, 18
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %419 to double*
  store double %424, double* %426, align 8
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -248
  %429 = load i64, i64* %3, align 8
  %430 = add i64 %429, 8
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %428 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %433 = add i64 %427, -296
  %434 = add i64 %429, 16
  store i64 %434, i64* %3, align 8
  %435 = load i64, i64* %112, align 1
  %436 = inttoptr i64 %433 to i64*
  store i64 %435, i64* %436, align 8
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, -742
  %439 = add i64 %437, 5
  %440 = load i64, i64* %6, align 8
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %439, i64* %442, align 8
  store i64 %441, i64* %6, align 8
  store i64 %438, i64* %3, align 8
  %call2_400836 = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %438, %struct.Memory* %412)
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -296
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, 8
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %444 to double*
  %448 = load double, double* %447, align 8
  %449 = load double, double* %70, align 1
  %450 = fdiv double %448, %449
  store double %450, double* %111, align 1
  store i64 0, i64* %113, align 1
  %451 = add i64 %443, -32
  %452 = add i64 %445, 17
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to double*
  %454 = load double, double* %453, align 8
  %455 = fadd double %450, %454
  store double %455, double* %111, align 1
  store i64 0, i64* %113, align 1
  %456 = add i64 %445, 22
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %451 to double*
  store double %455, double* %457, align 8
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -248
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 8
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %464 = add i64 %460, 16
  store i64 %464, i64* %3, align 8
  %465 = bitcast i64 %463 to double
  %466 = inttoptr i64 %459 to double*
  %467 = load double, double* %466, align 8
  %468 = fmul double %465, %467
  store double %468, double* %70, align 1
  store i64 0, i64* %42, align 1
  %469 = add i64 %460, 24
  store i64 %469, i64* %3, align 8
  %470 = load double, double* %466, align 8
  %471 = fmul double %468, %470
  store double %471, double* %70, align 1
  store i64 0, i64* %42, align 1
  %472 = add i64 %458, -256
  %473 = add i64 %460, 32
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to double*
  store double %471, double* %474, align 8
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -248
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 8
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %481 = add i64 %477, -817
  %482 = add i64 %477, 13
  %483 = load i64, i64* %6, align 8
  %484 = add i64 %483, -8
  %485 = inttoptr i64 %484 to i64*
  store i64 %482, i64* %485, align 8
  store i64 %484, i64* %6, align 8
  store i64 %481, i64* %3, align 8
  %call2_400879 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %481, %struct.Memory* %call2_400836)
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -264
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 8
  store i64 %489, i64* %3, align 8
  %490 = load i64, i64* %71, align 1
  %491 = inttoptr i64 %487 to i64*
  store i64 %490, i64* %491, align 8
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -248
  %494 = load i64, i64* %3, align 8
  %495 = add i64 %494, 8
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %498 = add i64 %494, -854
  %499 = add i64 %494, 13
  %500 = load i64, i64* %6, align 8
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %499, i64* %502, align 8
  store i64 %501, i64* %6, align 8
  store i64 %498, i64* %3, align 8
  %call2_40088e = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %498, %struct.Memory* %call2_400879)
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -272
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 8
  store i64 %506, i64* %3, align 8
  %507 = load i64, i64* %71, align 1
  %508 = inttoptr i64 %504 to i64*
  store i64 %507, i64* %508, align 8
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -256
  %511 = load i64, i64* %3, align 8
  %512 = add i64 %511, 8
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %515 = add i64 %509, -264
  %516 = add i64 %511, 16
  store i64 %516, i64* %3, align 8
  %517 = bitcast i64 %514 to double
  %518 = inttoptr i64 %515 to double*
  %519 = load double, double* %518, align 8
  %520 = fmul double %517, %519
  store double %520, double* %70, align 1
  store i64 0, i64* %42, align 1
  %521 = add i64 %511, 24
  store i64 %521, i64* %3, align 8
  %522 = load double, double* %518, align 8
  %523 = fmul double %520, %522
  store double %523, double* %70, align 1
  store i64 0, i64* %42, align 1
  %524 = add i64 %509, -296
  %525 = add i64 %511, 32
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to double*
  %527 = load double, double* %526, align 8
  %528 = fdiv double %527, %523
  store double %528, double* %111, align 1
  store i64 0, i64* %113, align 1
  %529 = add i64 %509, -40
  %530 = add i64 %511, 41
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to double*
  %532 = load double, double* %531, align 8
  %533 = fadd double %528, %532
  store double %533, double* %111, align 1
  store i64 0, i64* %113, align 1
  %534 = add i64 %511, 46
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %529 to double*
  store double %533, double* %535, align 8
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -256
  %538 = load i64, i64* %3, align 8
  %539 = add i64 %538, 8
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %537 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %542 = add i64 %536, -272
  %543 = add i64 %538, 16
  store i64 %543, i64* %3, align 8
  %544 = bitcast i64 %541 to double
  %545 = inttoptr i64 %542 to double*
  %546 = load double, double* %545, align 8
  %547 = fmul double %544, %546
  store double %547, double* %70, align 1
  store i64 0, i64* %42, align 1
  %548 = add i64 %538, 24
  store i64 %548, i64* %3, align 8
  %549 = load double, double* %545, align 8
  %550 = fmul double %547, %549
  store double %550, double* %70, align 1
  store i64 0, i64* %42, align 1
  %551 = add i64 %536, -296
  %552 = add i64 %538, 32
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to double*
  %554 = load double, double* %553, align 8
  %555 = fdiv double %554, %550
  store double %555, double* %111, align 1
  store i64 0, i64* %113, align 1
  %556 = add i64 %536, -48
  %557 = add i64 %538, 41
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to double*
  %559 = load double, double* %558, align 8
  %560 = fadd double %555, %559
  store double %560, double* %111, align 1
  store i64 0, i64* %113, align 1
  %561 = add i64 %538, 46
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %556 to double*
  store double %560, double* %562, align 8
  %563 = load i64, i64* %3, align 8
  %564 = add i64 %563, 817
  %565 = add i64 %563, 8
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -248
  %570 = add i64 %563, 16
  store i64 %570, i64* %3, align 8
  %571 = bitcast i64 %567 to double
  %572 = inttoptr i64 %569 to double*
  %573 = load double, double* %572, align 8
  %574 = fadd double %571, %573
  store double %574, double* %70, align 1
  store i64 0, i64* %42, align 1
  %575 = add i64 %563, 24
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %569 to double*
  store double %574, double* %576, align 8
  %577 = load i64, i64* %3, align 8
  %578 = add i64 %577, -313
  store i64 %578, i64* %3, align 8
  br label %block_.L_4007d6

block_.L_400914:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit384
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -192
  %581 = add i64 %389, 8
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  %584 = add i64 %579, -184
  %585 = inttoptr i64 %584 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %583, i64* %71, align 1
  store i64 %586, i64* %42, align 1
  %587 = add i64 %579, -224
  %588 = add i64 %389, 16
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i64*
  store i64 %583, i64* %589, align 8
  %590 = add i64 %579, -216
  %591 = inttoptr i64 %590 to i64*
  store i64 %586, i64* %591, align 8
  %592 = bitcast %union.VectorReg* %202 to <2 x double>*
  %593 = bitcast %union.VectorReg* %103 to <2 x double>*
  %594 = bitcast [32 x %union.VectorReg]* %40 to <2 x double>*
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400924

block_.L_400924:                                  ; preds = %block_40093e, %block_.L_400914
  %595 = phi i64 [ %.pre13, %block_.L_400914 ], [ %873, %block_40093e ]
  %MEMORY.1 = phi %struct.Memory* [ %386, %block_.L_400914 ], [ %631, %block_40093e ]
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -224
  %598 = add i64 %595, 8
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %601 = add i64 %596, -276
  %602 = add i64 %595, 16
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = sitofp i32 %604 to double
  store double %605, double* %111, align 1
  %606 = add i64 %595, 20
  store i64 %606, i64* %3, align 8
  %607 = bitcast i64 %600 to double
  %608 = fcmp uno double %605, %607
  br i1 %608, label %609, label %619

; <label>:609:                                    ; preds = %block_.L_400924
  %610 = fadd double %605, %607
  %611 = bitcast double %610 to i64
  %612 = and i64 %611, 9221120237041090560
  %613 = icmp eq i64 %612, 9218868437227405312
  %614 = and i64 %611, 2251799813685247
  %615 = icmp ne i64 %614, 0
  %616 = and i1 %613, %615
  br i1 %616, label %617, label %625

; <label>:617:                                    ; preds = %609
  %618 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %606, %struct.Memory* %MEMORY.1)
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:619:                                    ; preds = %block_.L_400924
  %620 = fcmp ogt double %605, %607
  br i1 %620, label %625, label %621

; <label>:621:                                    ; preds = %619
  %622 = fcmp olt double %605, %607
  br i1 %622, label %625, label %623

; <label>:623:                                    ; preds = %621
  %624 = fcmp oeq double %605, %607
  br i1 %624, label %625, label %629

; <label>:625:                                    ; preds = %623, %621, %619, %609
  %626 = phi i8 [ 0, %619 ], [ 0, %621 ], [ 1, %623 ], [ 1, %609 ]
  %627 = phi i8 [ 0, %619 ], [ 0, %621 ], [ 0, %623 ], [ 1, %609 ]
  %628 = phi i8 [ 0, %619 ], [ 1, %621 ], [ 0, %623 ], [ 1, %609 ]
  store i8 %626, i8* %30, align 1
  store i8 %627, i8* %21, align 1
  store i8 %628, i8* %14, align 1
  br label %629

; <label>:629:                                    ; preds = %625, %623
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %629, %617
  %630 = phi i64 [ %.pre14, %617 ], [ %606, %629 ]
  %631 = phi %struct.Memory* [ %618, %617 ], [ %MEMORY.1, %629 ]
  %632 = load i8, i8* %14, align 1
  %633 = icmp ne i8 %632, 0
  %.v29 = select i1 %633, i64 221, i64 6
  %634 = add i64 %630, %.v29
  store i64 %634, i64* %3, align 8
  %cmpBr_400938 = icmp eq i8 %632, 1
  br i1 %cmpBr_400938, label %block_.L_400a15, label %block_40093e

block_40093e:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -160
  %637 = add i64 %634, 8
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  %640 = add i64 %635, -152
  %641 = inttoptr i64 %640 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %639, i64* %71, align 1
  store i64 %642, i64* %42, align 1
  %643 = add i64 %635, -224
  %644 = add i64 %634, 16
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i64*
  %646 = load i64, i64* %645, align 8
  %647 = add i64 %635, -216
  %648 = inttoptr i64 %647 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %646, i64* %112, align 1
  store i64 %649, i64* %113, align 1
  %650 = add i64 %634, 24
  store i64 %650, i64* %3, align 8
  %651 = load i64, i64* %645, align 8
  %652 = load i64, i64* %648, align 8
  store i64 %651, i64* %208, align 1
  store i64 %652, i64* %209, align 1
  %653 = add i64 %634, 32
  store i64 %653, i64* %3, align 8
  %654 = load <2 x double>, <2 x double>* %592, align 1
  %655 = inttoptr i64 %636 to double*
  %656 = load double, double* %655, align 8
  %657 = inttoptr i64 %640 to double*
  %658 = load double, double* %657, align 8
  %659 = insertelement <2 x double> undef, double %656, i32 0
  %660 = insertelement <2 x double> %659, double %658, i32 1
  %661 = fadd <2 x double> %654, %660
  store <2 x double> %661, <2 x double>* %592, align 1
  %662 = load <2 x double>, <2 x double>* %593, align 1
  %663 = fmul <2 x double> %661, %662
  store <2 x double> %663, <2 x double>* %593, align 1
  %664 = load <2 x double>, <2 x double>* %594, align 1
  %665 = fdiv <2 x double> %664, %663
  store <2 x double> %665, <2 x double>* %594, align 1
  %666 = add i64 %635, -96
  %667 = add i64 %634, 45
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to double*
  %669 = load double, double* %668, align 8
  %670 = add i64 %635, -88
  %671 = inttoptr i64 %670 to double*
  %672 = load double, double* %671, align 8
  %673 = insertelement <2 x double> undef, double %669, i32 0
  %674 = insertelement <2 x double> %673, double %672, i32 1
  %675 = fadd <2 x double> %665, %674
  store <2 x double> %675, <2 x double>* %594, align 1
  %676 = add i64 %634, 50
  store i64 %676, i64* %3, align 8
  %bc20 = bitcast <2 x double> %675 to <2 x i64>
  %677 = extractelement <2 x i64> %bc20, i32 0
  %bc = bitcast <2 x double> %675 to <2 x i64>
  %678 = extractelement <2 x i64> %bc, i32 1
  %679 = inttoptr i64 %666 to i64*
  store i64 %677, i64* %679, align 8
  %680 = inttoptr i64 %670 to i64*
  store i64 %678, i64* %680, align 8
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -160
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 8
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685, align 8
  %687 = add i64 %681, -152
  %688 = inttoptr i64 %687 to i64*
  %689 = load i64, i64* %688, align 8
  store i64 %686, i64* %71, align 1
  store i64 %689, i64* %42, align 1
  %690 = add i64 %681, -224
  %691 = add i64 %683, 16
  store i64 %691, i64* %3, align 8
  %692 = load <2 x double>, <2 x double>* %594, align 1
  %693 = inttoptr i64 %690 to double*
  %694 = load double, double* %693, align 8
  %695 = add i64 %681, -216
  %696 = inttoptr i64 %695 to double*
  %697 = load double, double* %696, align 8
  %698 = insertelement <2 x double> undef, double %694, i32 0
  %699 = insertelement <2 x double> %698, double %697, i32 1
  %700 = fdiv <2 x double> %692, %699
  store <2 x double> %700, <2 x double>* %594, align 1
  %701 = add i64 %681, -64
  %702 = add i64 %683, 21
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to double*
  %704 = load double, double* %703, align 8
  %705 = add i64 %681, -56
  %706 = inttoptr i64 %705 to double*
  %707 = load double, double* %706, align 8
  %708 = insertelement <2 x double> undef, double %704, i32 0
  %709 = insertelement <2 x double> %708, double %707, i32 1
  %710 = fadd <2 x double> %700, %709
  store <2 x double> %710, <2 x double>* %594, align 1
  %711 = add i64 %683, 26
  store i64 %711, i64* %3, align 8
  %bc21 = bitcast <2 x double> %710 to <2 x i64>
  %712 = extractelement <2 x i64> %bc21, i32 0
  %bc15 = bitcast <2 x double> %710 to <2 x i64>
  %713 = extractelement <2 x i64> %bc15, i32 1
  %714 = inttoptr i64 %701 to i64*
  store i64 %712, i64* %714, align 8
  %715 = inttoptr i64 %705 to i64*
  store i64 %713, i64* %715, align 8
  %716 = load i64, i64* %RBP.i, align 8
  %717 = add i64 %716, -160
  %718 = load i64, i64* %3, align 8
  %719 = add i64 %718, 8
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %717 to i64*
  %721 = load i64, i64* %720, align 8
  %722 = add i64 %716, -152
  %723 = inttoptr i64 %722 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %721, i64* %71, align 1
  store i64 %724, i64* %42, align 1
  %725 = add i64 %716, -224
  %726 = add i64 %718, 16
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  %729 = add i64 %716, -216
  %730 = inttoptr i64 %729 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %728, i64* %112, align 1
  store i64 %731, i64* %113, align 1
  %732 = add i64 %718, 24
  store i64 %732, i64* %3, align 8
  %733 = load <2 x double>, <2 x double>* %593, align 1
  %734 = inttoptr i64 %725 to double*
  %735 = load double, double* %734, align 8
  %736 = inttoptr i64 %729 to double*
  %737 = load double, double* %736, align 8
  %738 = insertelement <2 x double> undef, double %735, i32 0
  %739 = insertelement <2 x double> %738, double %737, i32 1
  %740 = fmul <2 x double> %733, %739
  store <2 x double> %740, <2 x double>* %593, align 1
  %741 = load <2 x double>, <2 x double>* %594, align 1
  %742 = fdiv <2 x double> %741, %740
  store <2 x double> %742, <2 x double>* %594, align 1
  %743 = add i64 %716, -80
  %744 = add i64 %718, 33
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to double*
  %746 = load double, double* %745, align 8
  %747 = add i64 %716, -72
  %748 = inttoptr i64 %747 to double*
  %749 = load double, double* %748, align 8
  %750 = insertelement <2 x double> undef, double %746, i32 0
  %751 = insertelement <2 x double> %750, double %749, i32 1
  %752 = fadd <2 x double> %742, %751
  store <2 x double> %752, <2 x double>* %594, align 1
  %753 = add i64 %718, 38
  store i64 %753, i64* %3, align 8
  %bc22 = bitcast <2 x double> %752 to <2 x i64>
  %754 = extractelement <2 x i64> %bc22, i32 0
  %bc16 = bitcast <2 x double> %752 to <2 x i64>
  %755 = extractelement <2 x i64> %bc16, i32 1
  %756 = inttoptr i64 %743 to i64*
  store i64 %754, i64* %756, align 8
  %757 = inttoptr i64 %747 to i64*
  store i64 %755, i64* %757, align 8
  %758 = load i64, i64* %RBP.i, align 8
  %759 = add i64 %758, -240
  %760 = load i64, i64* %3, align 8
  %761 = add i64 %760, 8
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %759 to i64*
  %763 = load i64, i64* %762, align 8
  %764 = add i64 %758, -232
  %765 = inttoptr i64 %764 to i64*
  %766 = load i64, i64* %765, align 8
  store i64 %763, i64* %71, align 1
  store i64 %766, i64* %42, align 1
  %767 = add i64 %758, -224
  %768 = add i64 %760, 16
  store i64 %768, i64* %3, align 8
  %769 = load <2 x double>, <2 x double>* %594, align 1
  %770 = inttoptr i64 %767 to double*
  %771 = load double, double* %770, align 8
  %772 = add i64 %758, -216
  %773 = inttoptr i64 %772 to double*
  %774 = load double, double* %773, align 8
  %775 = insertelement <2 x double> undef, double %771, i32 0
  %776 = insertelement <2 x double> %775, double %774, i32 1
  %777 = fdiv <2 x double> %769, %776
  store <2 x double> %777, <2 x double>* %594, align 1
  %778 = add i64 %758, -112
  %779 = add i64 %760, 21
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to double*
  %781 = load double, double* %780, align 8
  %782 = add i64 %758, -104
  %783 = inttoptr i64 %782 to double*
  %784 = load double, double* %783, align 8
  %785 = insertelement <2 x double> undef, double %781, i32 0
  %786 = insertelement <2 x double> %785, double %784, i32 1
  %787 = fadd <2 x double> %777, %786
  store <2 x double> %787, <2 x double>* %594, align 1
  %788 = add i64 %760, 26
  store i64 %788, i64* %3, align 8
  %bc23 = bitcast <2 x double> %787 to <2 x i64>
  %789 = extractelement <2 x i64> %bc23, i32 0
  %bc17 = bitcast <2 x double> %787 to <2 x i64>
  %790 = extractelement <2 x i64> %bc17, i32 1
  %791 = inttoptr i64 %778 to i64*
  store i64 %789, i64* %791, align 8
  %792 = inttoptr i64 %782 to i64*
  store i64 %790, i64* %792, align 8
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -240
  %795 = load i64, i64* %3, align 8
  %796 = add i64 %795, 8
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %794 to i64*
  %798 = load i64, i64* %797, align 8
  %799 = add i64 %793, -232
  %800 = inttoptr i64 %799 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %798, i64* %71, align 1
  store i64 %801, i64* %42, align 1
  %802 = add i64 %793, -176
  %803 = add i64 %795, 16
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  %806 = add i64 %793, -168
  %807 = inttoptr i64 %806 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %805, i64* %112, align 1
  store i64 %808, i64* %113, align 1
  %809 = add i64 %793, -224
  %810 = add i64 %795, 24
  store i64 %810, i64* %3, align 8
  %811 = load <2 x double>, <2 x double>* %593, align 1
  %812 = inttoptr i64 %809 to double*
  %813 = load double, double* %812, align 8
  %814 = add i64 %793, -216
  %815 = inttoptr i64 %814 to double*
  %816 = load double, double* %815, align 8
  %817 = insertelement <2 x double> undef, double %813, i32 0
  %818 = insertelement <2 x double> %817, double %816, i32 1
  %819 = fmul <2 x double> %811, %818
  store <2 x double> %819, <2 x double>* %593, align 1
  %820 = add i64 %793, -160
  %821 = add i64 %795, 32
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to double*
  %823 = load double, double* %822, align 8
  %824 = add i64 %793, -152
  %825 = inttoptr i64 %824 to double*
  %826 = load double, double* %825, align 8
  %827 = insertelement <2 x double> undef, double %823, i32 0
  %828 = insertelement <2 x double> %827, double %826, i32 1
  %829 = fsub <2 x double> %819, %828
  store <2 x double> %829, <2 x double>* %593, align 1
  %830 = load <2 x double>, <2 x double>* %594, align 1
  %831 = fdiv <2 x double> %830, %829
  store <2 x double> %831, <2 x double>* %594, align 1
  %832 = add i64 %793, -128
  %833 = add i64 %795, 41
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to double*
  %835 = load double, double* %834, align 8
  %836 = add i64 %793, -120
  %837 = inttoptr i64 %836 to double*
  %838 = load double, double* %837, align 8
  %839 = insertelement <2 x double> undef, double %835, i32 0
  %840 = insertelement <2 x double> %839, double %838, i32 1
  %841 = fadd <2 x double> %831, %840
  store <2 x double> %841, <2 x double>* %594, align 1
  %842 = add i64 %795, 46
  store i64 %842, i64* %3, align 8
  %bc24 = bitcast <2 x double> %841 to <2 x i64>
  %843 = extractelement <2 x i64> %bc24, i32 0
  %bc18 = bitcast <2 x double> %841 to <2 x i64>
  %844 = extractelement <2 x i64> %bc18, i32 1
  %845 = inttoptr i64 %832 to i64*
  store i64 %843, i64* %845, align 8
  %846 = inttoptr i64 %836 to i64*
  store i64 %844, i64* %846, align 8
  %847 = load i64, i64* %RBP.i, align 8
  %848 = add i64 %847, -176
  %849 = load i64, i64* %3, align 8
  %850 = add i64 %849, 8
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %848 to i64*
  %852 = load i64, i64* %851, align 8
  %853 = add i64 %847, -168
  %854 = inttoptr i64 %853 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %852, i64* %71, align 1
  store i64 %855, i64* %42, align 1
  %856 = add i64 %847, -224
  %857 = add i64 %849, 16
  store i64 %857, i64* %3, align 8
  %858 = load <2 x double>, <2 x double>* %594, align 1
  %859 = inttoptr i64 %856 to double*
  %860 = load double, double* %859, align 8
  %861 = add i64 %847, -216
  %862 = inttoptr i64 %861 to double*
  %863 = load double, double* %862, align 8
  %864 = insertelement <2 x double> undef, double %860, i32 0
  %865 = insertelement <2 x double> %864, double %863, i32 1
  %866 = fadd <2 x double> %858, %865
  store <2 x double> %866, <2 x double>* %594, align 1
  %867 = add i64 %849, 24
  store i64 %867, i64* %3, align 8
  %bc25 = bitcast <2 x double> %866 to <2 x i64>
  %868 = extractelement <2 x i64> %bc25, i32 0
  %bc19 = bitcast <2 x double> %866 to <2 x i64>
  %869 = extractelement <2 x i64> %bc19, i32 1
  %870 = inttoptr i64 %856 to i64*
  store i64 %868, i64* %870, align 8
  %871 = inttoptr i64 %861 to i64*
  store i64 %869, i64* %871, align 8
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, -236
  store i64 %873, i64* %3, align 8
  br label %block_.L_400924

block_.L_400a15:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %RDI.i147 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197457, i64* %RSI.i87, align 8
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -24
  %876 = add i64 %634, 25
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i140 = bitcast %union.anon* %879 to i8*
  store i8 1, i8* %AL.i140, align 1
  %880 = add i64 %634, -1285
  %881 = add i64 %634, 32
  %882 = load i64, i64* %6, align 8
  %883 = add i64 %882, -8
  %884 = inttoptr i64 %883 to i64*
  store i64 %881, i64* %884, align 8
  store i64 %883, i64* %6, align 8
  store i64 %880, i64* %3, align 8
  %885 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %631)
  %886 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197465, i64* %RSI.i87, align 8
  %887 = load i64, i64* %RBP.i, align 8
  %888 = add i64 %887, -32
  %889 = add i64 %886, 25
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i64*
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %EAX.i126 = bitcast %union.anon* %879 to i32*
  %892 = add i64 %887, -300
  %893 = load i32, i32* %EAX.i126, align 4
  %894 = add i64 %886, 31
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %892 to i32*
  store i32 %893, i32* %895, align 4
  %896 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i140, align 1
  %897 = add i64 %896, -1348
  %898 = add i64 %896, 7
  %899 = load i64, i64* %6, align 8
  %900 = add i64 %899, -8
  %901 = inttoptr i64 %900 to i64*
  store i64 %898, i64* %901, align 8
  store i64 %900, i64* %6, align 8
  store i64 %897, i64* %3, align 8
  %902 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %885)
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -96
  %905 = load i64, i64* %3, align 8
  %906 = add i64 %905, 5
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %904 to i64*
  %908 = load i64, i64* %907, align 8
  %909 = add i64 %903, -88
  %910 = inttoptr i64 %909 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %908, i64* %71, align 1
  store i64 %911, i64* %42, align 1
  %912 = add i64 %903, -304
  %913 = load i32, i32* %EAX.i126, align 4
  %914 = add i64 %905, 11
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %912 to i32*
  store i32 %913, i32* %915, align 4
  %916 = load i64, i64* %3, align 8
  %917 = add i64 %916, -982
  %918 = add i64 %916, 5
  %919 = load i64, i64* %6, align 8
  %920 = add i64 %919, -8
  %921 = inttoptr i64 %920 to i64*
  store i64 %918, i64* %921, align 8
  store i64 %920, i64* %6, align 8
  store i64 %917, i64* %3, align 8
  %call2_400a66 = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %917, %struct.Memory* %902)
  %922 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197472, i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %923 = add i64 %922, -1371
  %924 = add i64 %922, 27
  %925 = load i64, i64* %6, align 8
  %926 = add i64 %925, -8
  %927 = inttoptr i64 %926 to i64*
  store i64 %924, i64* %927, align 8
  store i64 %926, i64* %6, align 8
  store i64 %923, i64* %3, align 8
  %928 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400a66)
  %929 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197481, i64* %RSI.i87, align 8
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -40
  %932 = add i64 %929, 25
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %935 = add i64 %930, -308
  %936 = load i32, i32* %EAX.i126, align 4
  %937 = add i64 %929, 31
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %935 to i32*
  store i32 %936, i32* %938, align 4
  %939 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i140, align 1
  %940 = add i64 %939, -1429
  %941 = add i64 %939, 7
  %942 = load i64, i64* %6, align 8
  %943 = add i64 %942, -8
  %944 = inttoptr i64 %943 to i64*
  store i64 %941, i64* %944, align 8
  store i64 %943, i64* %6, align 8
  store i64 %940, i64* %3, align 8
  %945 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %928)
  %946 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197493, i64* %RSI.i87, align 8
  %947 = load i64, i64* %RBP.i, align 8
  %948 = add i64 %947, -48
  %949 = add i64 %946, 25
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i64*
  %951 = load i64, i64* %950, align 8
  store i64 %951, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %952 = add i64 %947, -312
  %953 = load i32, i32* %EAX.i126, align 4
  %954 = add i64 %946, 31
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %952 to i32*
  store i32 %953, i32* %955, align 4
  %956 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i140, align 1
  %957 = add i64 %956, -1467
  %958 = add i64 %956, 7
  %959 = load i64, i64* %6, align 8
  %960 = add i64 %959, -8
  %961 = inttoptr i64 %960 to i64*
  store i64 %958, i64* %961, align 8
  store i64 %960, i64* %6, align 8
  store i64 %957, i64* %3, align 8
  %962 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %945)
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -64
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 5
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967, align 8
  %969 = add i64 %963, -56
  %970 = inttoptr i64 %969 to i64*
  %971 = load i64, i64* %970, align 8
  store i64 %968, i64* %71, align 1
  store i64 %971, i64* %42, align 1
  %972 = add i64 %963, -316
  %973 = load i32, i32* %EAX.i126, align 4
  %974 = add i64 %965, 11
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %972 to i32*
  store i32 %973, i32* %975, align 4
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, -1101
  %978 = add i64 %976, 5
  %979 = load i64, i64* %6, align 8
  %980 = add i64 %979, -8
  %981 = inttoptr i64 %980 to i64*
  store i64 %978, i64* %981, align 8
  store i64 %980, i64* %6, align 8
  store i64 %977, i64* %3, align 8
  %call2_400add = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %977, %struct.Memory* %962)
  %982 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197532, i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %983 = add i64 %982, -1490
  %984 = add i64 %982, 27
  %985 = load i64, i64* %6, align 8
  %986 = add i64 %985, -8
  %987 = inttoptr i64 %986 to i64*
  store i64 %984, i64* %987, align 8
  store i64 %986, i64* %6, align 8
  store i64 %983, i64* %3, align 8
  %988 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400add)
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -80
  %991 = load i64, i64* %3, align 8
  %992 = add i64 %991, 5
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %990 to i64*
  %994 = load i64, i64* %993, align 8
  %995 = add i64 %989, -72
  %996 = inttoptr i64 %995 to i64*
  %997 = load i64, i64* %996, align 8
  store i64 %994, i64* %71, align 1
  store i64 %997, i64* %42, align 1
  %998 = add i64 %989, -320
  %999 = load i32, i32* %EAX.i126, align 4
  %1000 = add i64 %991, 11
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %998 to i32*
  store i32 %999, i32* %1001, align 4
  %1002 = load i64, i64* %3, align 8
  %1003 = add i64 %1002, -1144
  %1004 = add i64 %1002, 5
  %1005 = load i64, i64* %6, align 8
  %1006 = add i64 %1005, -8
  %1007 = inttoptr i64 %1006 to i64*
  store i64 %1004, i64* %1007, align 8
  store i64 %1006, i64* %6, align 8
  store i64 %1003, i64* %3, align 8
  %call2_400b08 = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %1003, %struct.Memory* %988)
  %1008 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197507, i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1009 = add i64 %1008, -1533
  %1010 = add i64 %1008, 27
  %1011 = load i64, i64* %6, align 8
  %1012 = add i64 %1011, -8
  %1013 = inttoptr i64 %1012 to i64*
  store i64 %1010, i64* %1013, align 8
  store i64 %1012, i64* %6, align 8
  store i64 %1009, i64* %3, align 8
  %1014 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b08)
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -112
  %1017 = load i64, i64* %3, align 8
  %1018 = add i64 %1017, 5
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1016 to i64*
  %1020 = load i64, i64* %1019, align 8
  %1021 = add i64 %1015, -104
  %1022 = inttoptr i64 %1021 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1020, i64* %71, align 1
  store i64 %1023, i64* %42, align 1
  %1024 = add i64 %1015, -324
  %1025 = load i32, i32* %EAX.i126, align 4
  %1026 = add i64 %1017, 11
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1024 to i32*
  store i32 %1025, i32* %1027, align 4
  %1028 = load i64, i64* %3, align 8
  %1029 = add i64 %1028, -1187
  %1030 = add i64 %1028, 5
  %1031 = load i64, i64* %6, align 8
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1033, align 8
  store i64 %1032, i64* %6, align 8
  store i64 %1029, i64* %3, align 8
  %call2_400b33 = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %1029, %struct.Memory* %1014)
  %1034 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197520, i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1035 = add i64 %1034, -1576
  %1036 = add i64 %1034, 27
  %1037 = load i64, i64* %6, align 8
  %1038 = add i64 %1037, -8
  %1039 = inttoptr i64 %1038 to i64*
  store i64 %1036, i64* %1039, align 8
  store i64 %1038, i64* %6, align 8
  store i64 %1035, i64* %3, align 8
  %1040 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b33)
  %1041 = load i64, i64* %RBP.i, align 8
  %1042 = add i64 %1041, -128
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1042 to i64*
  %1046 = load i64, i64* %1045, align 8
  %1047 = add i64 %1041, -120
  %1048 = inttoptr i64 %1047 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1046, i64* %71, align 1
  store i64 %1049, i64* %42, align 1
  %1050 = add i64 %1041, -328
  %1051 = load i32, i32* %EAX.i126, align 4
  %1052 = add i64 %1043, 11
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i32*
  store i32 %1051, i32* %1053, align 4
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, -1230
  %1056 = add i64 %1054, 5
  %1057 = load i64, i64* %6, align 8
  %1058 = add i64 %1057, -8
  %1059 = inttoptr i64 %1058 to i64*
  store i64 %1056, i64* %1059, align 8
  store i64 %1058, i64* %6, align 8
  store i64 %1055, i64* %3, align 8
  %call2_400b5e = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %1055, %struct.Memory* %1040)
  %1060 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i147, align 8
  store i64 4197541, i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1061 = add i64 %1060, -1619
  %1062 = add i64 %1060, 27
  %1063 = load i64, i64* %6, align 8
  %1064 = add i64 %1063, -8
  %1065 = inttoptr i64 %1064 to i64*
  store i64 %1062, i64* %1065, align 8
  store i64 %1064, i64* %6, align 8
  store i64 %1061, i64* %3, align 8
  %1066 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b5e)
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i9 = bitcast %union.anon* %1067 to i32*
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %1067, i64 0, i32 0
  %1068 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i, align 8
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -332
  %1071 = load i32, i32* %EAX.i126, align 4
  %1072 = add i64 %1068, 8
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1070 to i32*
  store i32 %1071, i32* %1073, align 4
  %RAX.i = getelementptr inbounds %union.anon, %union.anon* %879, i64 0, i32 0
  %1074 = load i32, i32* %ECX.i9, align 4
  %1075 = zext i32 %1074 to i64
  %1076 = load i64, i64* %3, align 8
  store i64 %1075, i64* %RAX.i, align 8
  %1077 = load i64, i64* %6, align 8
  %1078 = add i64 %1077, 336
  store i64 %1078, i64* %6, align 8
  %1079 = icmp ugt i64 %1077, -337
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %14, align 1
  %1081 = trunc i64 %1078 to i32
  %1082 = and i32 %1081, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %21, align 1
  %1087 = xor i64 %1077, 16
  %1088 = xor i64 %1087, %1078
  %1089 = lshr i64 %1088, 4
  %1090 = trunc i64 %1089 to i8
  %1091 = and i8 %1090, 1
  store i8 %1091, i8* %27, align 1
  %1092 = icmp eq i64 %1078, 0
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %30, align 1
  %1094 = lshr i64 %1078, 63
  %1095 = trunc i64 %1094 to i8
  store i8 %1095, i8* %33, align 1
  %1096 = lshr i64 %1077, 63
  %1097 = xor i64 %1094, %1096
  %1098 = add nuw nsw i64 %1097, %1094
  %1099 = icmp eq i64 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %39, align 1
  %1101 = add i64 %1076, 10
  store i64 %1101, i64* %3, align 8
  %1102 = add i64 %1077, 344
  %1103 = inttoptr i64 %1078 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i64 %1104, i64* %RBP.i, align 8
  store i64 %1102, i64* %6, align 8
  %1105 = add i64 %1076, 11
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1102 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %3, align 8
  %1108 = add i64 %1077, 352
  store i64 %1108, i64* %6, align 8
  ret %struct.Memory* %1066
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 336
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2500000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.make_vec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1305
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -136
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1297
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -152
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1265
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -168
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1233
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1241
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -200
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1198
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1198
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -184
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1163
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -232
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -136
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -120
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -104
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -88
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -72
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -56
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x114__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
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

; <label>:12:                                     ; preds = %block_400488
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

; <label>:22:                                     ; preds = %block_400488
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_400914(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x448__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1104
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x428__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1072
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.pow_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x40c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1044
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.cos_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x329__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 817
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4007d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -184
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -216
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_400a15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -152
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fmul <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fdiv <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -88
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fdiv <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -56
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fmul <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -72
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -232
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -104
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fsub <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -120
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c48___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197448, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c51___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197457, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c59___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197465, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -88
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sum_vec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c60___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197472, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c69___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197481, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c75___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197493, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -56
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c9c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197532, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -72
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c83___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197507, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -104
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c90___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197520, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -120
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400ca5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4197541, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -337
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
