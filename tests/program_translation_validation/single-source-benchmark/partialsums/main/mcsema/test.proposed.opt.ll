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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400650.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400520.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400550.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400540.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400530.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400510.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400690.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

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
  %RSI.i470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i64, i64* %RSI.i470, align 8
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
  %350 = phi i64 [ %.pre, %entry ], [ %577, %block_4007f0 ]
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
  br label %routine_ucomisd__xmm0___xmm1.exit358

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
  br label %routine_ucomisd__xmm0___xmm1.exit358

routine_ucomisd__xmm0___xmm1.exit358:             ; preds = %384, %372
  %385 = phi i64 [ %.pre12, %372 ], [ %361, %384 ]
  %386 = phi %struct.Memory* [ %373, %372 ], [ %MEMORY.0, %384 ]
  %387 = load i8, i8* %14, align 1
  %388 = icmp ne i8 %387, 0
  %.v = select i1 %388, i64 298, i64 6
  %389 = add i64 %385, %.v
  store i64 %389, i64* %3, align 8
  %cmpBr_4007ea = icmp eq i8 %387, 1
  br i1 %cmpBr_4007ea, label %block_.L_400914, label %block_4007f0

block_4007f0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit358
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
  %call2_40080f = tail call %struct.Memory* @sub_400520.pow_plt(%struct.State* nonnull %0, i64 %407, %struct.Memory* %386)
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 1044
  %414 = add i64 %412, 8
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %112, align 1
  store double 0.000000e+00, double* %114, align 1
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -24
  %419 = add i64 %412, 13
  store i64 %419, i64* %3, align 8
  %420 = load double, double* %70, align 1
  %421 = inttoptr i64 %418 to double*
  %422 = load double, double* %421, align 8
  %423 = fadd double %420, %422
  store double %423, double* %70, align 1
  %424 = add i64 %412, 18
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %418 to double*
  store double %423, double* %425, align 8
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -248
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 8
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %427 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %432 = add i64 %426, -296
  %433 = add i64 %428, 16
  store i64 %433, i64* %3, align 8
  %434 = load i64, i64* %112, align 1
  %435 = inttoptr i64 %432 to i64*
  store i64 %434, i64* %435, align 8
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, -742
  %438 = add i64 %436, 5
  %439 = load i64, i64* %6, align 8
  %440 = add i64 %439, -8
  %441 = inttoptr i64 %440 to i64*
  store i64 %438, i64* %441, align 8
  store i64 %440, i64* %6, align 8
  store i64 %437, i64* %3, align 8
  %call2_400836 = tail call %struct.Memory* @sub_400550.sqrt_plt(%struct.State* nonnull %0, i64 %437, %struct.Memory* %call2_40080f)
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -296
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 8
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to double*
  %447 = load double, double* %446, align 8
  %448 = load double, double* %70, align 1
  %449 = fdiv double %447, %448
  store double %449, double* %111, align 1
  store i64 0, i64* %113, align 1
  %450 = add i64 %442, -32
  %451 = add i64 %444, 17
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to double*
  %453 = load double, double* %452, align 8
  %454 = fadd double %449, %453
  store double %454, double* %111, align 1
  store i64 0, i64* %113, align 1
  %455 = add i64 %444, 22
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %450 to double*
  store double %454, double* %456, align 8
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -248
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 8
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %463 = add i64 %459, 16
  store i64 %463, i64* %3, align 8
  %464 = bitcast i64 %462 to double
  %465 = inttoptr i64 %458 to double*
  %466 = load double, double* %465, align 8
  %467 = fmul double %464, %466
  store double %467, double* %70, align 1
  store i64 0, i64* %42, align 1
  %468 = add i64 %459, 24
  store i64 %468, i64* %3, align 8
  %469 = load double, double* %465, align 8
  %470 = fmul double %467, %469
  store double %470, double* %70, align 1
  store i64 0, i64* %42, align 1
  %471 = add i64 %457, -256
  %472 = add i64 %459, 32
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to double*
  store double %470, double* %473, align 8
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -248
  %476 = load i64, i64* %3, align 8
  %477 = add i64 %476, 8
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %475 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %480 = add i64 %476, -817
  %481 = add i64 %476, 13
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %call2_400879 = tail call %struct.Memory* @sub_400540.sin_plt(%struct.State* nonnull %0, i64 %480, %struct.Memory* %call2_400836)
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -264
  %487 = load i64, i64* %3, align 8
  %488 = add i64 %487, 8
  store i64 %488, i64* %3, align 8
  %489 = load i64, i64* %71, align 1
  %490 = inttoptr i64 %486 to i64*
  store i64 %489, i64* %490, align 8
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -248
  %493 = load i64, i64* %3, align 8
  %494 = add i64 %493, 8
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %492 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %497 = add i64 %493, -854
  %498 = add i64 %493, 13
  %499 = load i64, i64* %6, align 8
  %500 = add i64 %499, -8
  %501 = inttoptr i64 %500 to i64*
  store i64 %498, i64* %501, align 8
  store i64 %500, i64* %6, align 8
  store i64 %497, i64* %3, align 8
  %call2_40088e = tail call %struct.Memory* @sub_400530.cos_plt(%struct.State* nonnull %0, i64 %497, %struct.Memory* %call2_400879)
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -272
  %504 = load i64, i64* %3, align 8
  %505 = add i64 %504, 8
  store i64 %505, i64* %3, align 8
  %506 = load i64, i64* %71, align 1
  %507 = inttoptr i64 %503 to i64*
  store i64 %506, i64* %507, align 8
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -256
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 8
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %509 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %514 = add i64 %508, -264
  %515 = add i64 %510, 16
  store i64 %515, i64* %3, align 8
  %516 = bitcast i64 %513 to double
  %517 = inttoptr i64 %514 to double*
  %518 = load double, double* %517, align 8
  %519 = fmul double %516, %518
  store double %519, double* %70, align 1
  store i64 0, i64* %42, align 1
  %520 = add i64 %510, 24
  store i64 %520, i64* %3, align 8
  %521 = load double, double* %517, align 8
  %522 = fmul double %519, %521
  store double %522, double* %70, align 1
  store i64 0, i64* %42, align 1
  %523 = add i64 %508, -296
  %524 = add i64 %510, 32
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to double*
  %526 = load double, double* %525, align 8
  %527 = fdiv double %526, %522
  store double %527, double* %111, align 1
  store i64 0, i64* %113, align 1
  %528 = add i64 %508, -40
  %529 = add i64 %510, 41
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to double*
  %531 = load double, double* %530, align 8
  %532 = fadd double %527, %531
  store double %532, double* %111, align 1
  store i64 0, i64* %113, align 1
  %533 = add i64 %510, 46
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %528 to double*
  store double %532, double* %534, align 8
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -256
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, 8
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %541 = add i64 %535, -272
  %542 = add i64 %537, 16
  store i64 %542, i64* %3, align 8
  %543 = bitcast i64 %540 to double
  %544 = inttoptr i64 %541 to double*
  %545 = load double, double* %544, align 8
  %546 = fmul double %543, %545
  store double %546, double* %70, align 1
  store i64 0, i64* %42, align 1
  %547 = add i64 %537, 24
  store i64 %547, i64* %3, align 8
  %548 = load double, double* %544, align 8
  %549 = fmul double %546, %548
  store double %549, double* %70, align 1
  store i64 0, i64* %42, align 1
  %550 = add i64 %535, -296
  %551 = add i64 %537, 32
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to double*
  %553 = load double, double* %552, align 8
  %554 = fdiv double %553, %549
  store double %554, double* %111, align 1
  store i64 0, i64* %113, align 1
  %555 = add i64 %535, -48
  %556 = add i64 %537, 41
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to double*
  %558 = load double, double* %557, align 8
  %559 = fadd double %554, %558
  store double %559, double* %111, align 1
  store i64 0, i64* %113, align 1
  %560 = add i64 %537, 46
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %555 to double*
  store double %559, double* %561, align 8
  %562 = load i64, i64* %3, align 8
  %563 = add i64 %562, 817
  %564 = add i64 %562, 8
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  %566 = load i64, i64* %565, align 8
  store i64 %566, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -248
  %569 = add i64 %562, 16
  store i64 %569, i64* %3, align 8
  %570 = bitcast i64 %566 to double
  %571 = inttoptr i64 %568 to double*
  %572 = load double, double* %571, align 8
  %573 = fadd double %570, %572
  store double %573, double* %70, align 1
  store i64 0, i64* %42, align 1
  %574 = add i64 %562, 24
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %568 to double*
  store double %573, double* %575, align 8
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, -313
  store i64 %577, i64* %3, align 8
  br label %block_.L_4007d6

block_.L_400914:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit358
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -192
  %580 = add i64 %389, 8
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i64*
  %582 = load i64, i64* %581, align 8
  %583 = add i64 %578, -184
  %584 = inttoptr i64 %583 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %582, i64* %71, align 1
  store i64 %585, i64* %42, align 1
  %586 = add i64 %578, -224
  %587 = add i64 %389, 16
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  store i64 %582, i64* %588, align 8
  %589 = add i64 %578, -216
  %590 = inttoptr i64 %589 to i64*
  store i64 %585, i64* %590, align 8
  %591 = bitcast %union.VectorReg* %202 to <2 x double>*
  %592 = bitcast %union.VectorReg* %103 to <2 x double>*
  %593 = bitcast [32 x %union.VectorReg]* %40 to <2 x double>*
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400924

block_.L_400924:                                  ; preds = %block_40093e, %block_.L_400914
  %594 = phi i64 [ %.pre13, %block_.L_400914 ], [ %872, %block_40093e ]
  %MEMORY.1 = phi %struct.Memory* [ %386, %block_.L_400914 ], [ %630, %block_40093e ]
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -224
  %597 = add i64 %594, 8
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %600 = add i64 %595, -276
  %601 = add i64 %594, 16
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sitofp i32 %603 to double
  store double %604, double* %111, align 1
  %605 = add i64 %594, 20
  store i64 %605, i64* %3, align 8
  %606 = bitcast i64 %599 to double
  %607 = fcmp uno double %604, %606
  br i1 %607, label %608, label %618

; <label>:608:                                    ; preds = %block_.L_400924
  %609 = fadd double %604, %606
  %610 = bitcast double %609 to i64
  %611 = and i64 %610, 9221120237041090560
  %612 = icmp eq i64 %611, 9218868437227405312
  %613 = and i64 %610, 2251799813685247
  %614 = icmp ne i64 %613, 0
  %615 = and i1 %612, %614
  br i1 %615, label %616, label %624

; <label>:616:                                    ; preds = %608
  %617 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %605, %struct.Memory* %MEMORY.1)
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:618:                                    ; preds = %block_.L_400924
  %619 = fcmp ogt double %604, %606
  br i1 %619, label %624, label %620

; <label>:620:                                    ; preds = %618
  %621 = fcmp olt double %604, %606
  br i1 %621, label %624, label %622

; <label>:622:                                    ; preds = %620
  %623 = fcmp oeq double %604, %606
  br i1 %623, label %624, label %628

; <label>:624:                                    ; preds = %622, %620, %618, %608
  %625 = phi i8 [ 0, %618 ], [ 0, %620 ], [ 1, %622 ], [ 1, %608 ]
  %626 = phi i8 [ 0, %618 ], [ 0, %620 ], [ 0, %622 ], [ 1, %608 ]
  %627 = phi i8 [ 0, %618 ], [ 1, %620 ], [ 0, %622 ], [ 1, %608 ]
  store i8 %625, i8* %30, align 1
  store i8 %626, i8* %21, align 1
  store i8 %627, i8* %14, align 1
  br label %628

; <label>:628:                                    ; preds = %624, %622
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %628, %616
  %629 = phi i64 [ %.pre14, %616 ], [ %605, %628 ]
  %630 = phi %struct.Memory* [ %617, %616 ], [ %MEMORY.1, %628 ]
  %631 = load i8, i8* %14, align 1
  %632 = icmp ne i8 %631, 0
  %.v29 = select i1 %632, i64 221, i64 6
  %633 = add i64 %629, %.v29
  store i64 %633, i64* %3, align 8
  %cmpBr_400938 = icmp eq i8 %631, 1
  br i1 %cmpBr_400938, label %block_.L_400a15, label %block_40093e

block_40093e:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -160
  %636 = add i64 %633, 8
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  %639 = add i64 %634, -152
  %640 = inttoptr i64 %639 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %638, i64* %71, align 1
  store i64 %641, i64* %42, align 1
  %642 = add i64 %634, -224
  %643 = add i64 %633, 16
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  %646 = add i64 %634, -216
  %647 = inttoptr i64 %646 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %645, i64* %112, align 1
  store i64 %648, i64* %113, align 1
  %649 = add i64 %633, 24
  store i64 %649, i64* %3, align 8
  %650 = load i64, i64* %644, align 8
  %651 = load i64, i64* %647, align 8
  store i64 %650, i64* %208, align 1
  store i64 %651, i64* %209, align 1
  %652 = add i64 %633, 32
  store i64 %652, i64* %3, align 8
  %653 = load <2 x double>, <2 x double>* %591, align 1
  %654 = inttoptr i64 %635 to double*
  %655 = load double, double* %654, align 8
  %656 = inttoptr i64 %639 to double*
  %657 = load double, double* %656, align 8
  %658 = insertelement <2 x double> undef, double %655, i32 0
  %659 = insertelement <2 x double> %658, double %657, i32 1
  %660 = fadd <2 x double> %653, %659
  store <2 x double> %660, <2 x double>* %591, align 1
  %661 = load <2 x double>, <2 x double>* %592, align 1
  %662 = fmul <2 x double> %660, %661
  store <2 x double> %662, <2 x double>* %592, align 1
  %663 = load <2 x double>, <2 x double>* %593, align 1
  %664 = fdiv <2 x double> %663, %662
  store <2 x double> %664, <2 x double>* %593, align 1
  %665 = add i64 %634, -96
  %666 = add i64 %633, 45
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to double*
  %668 = load double, double* %667, align 8
  %669 = add i64 %634, -88
  %670 = inttoptr i64 %669 to double*
  %671 = load double, double* %670, align 8
  %672 = insertelement <2 x double> undef, double %668, i32 0
  %673 = insertelement <2 x double> %672, double %671, i32 1
  %674 = fadd <2 x double> %664, %673
  store <2 x double> %674, <2 x double>* %593, align 1
  %675 = add i64 %633, 50
  store i64 %675, i64* %3, align 8
  %bc20 = bitcast <2 x double> %674 to <2 x i64>
  %676 = extractelement <2 x i64> %bc20, i32 0
  %bc = bitcast <2 x double> %674 to <2 x i64>
  %677 = extractelement <2 x i64> %bc, i32 1
  %678 = inttoptr i64 %665 to i64*
  store i64 %676, i64* %678, align 8
  %679 = inttoptr i64 %669 to i64*
  store i64 %677, i64* %679, align 8
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -160
  %682 = load i64, i64* %3, align 8
  %683 = add i64 %682, 8
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %681 to i64*
  %685 = load i64, i64* %684, align 8
  %686 = add i64 %680, -152
  %687 = inttoptr i64 %686 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %685, i64* %71, align 1
  store i64 %688, i64* %42, align 1
  %689 = add i64 %680, -224
  %690 = add i64 %682, 16
  store i64 %690, i64* %3, align 8
  %691 = load <2 x double>, <2 x double>* %593, align 1
  %692 = inttoptr i64 %689 to double*
  %693 = load double, double* %692, align 8
  %694 = add i64 %680, -216
  %695 = inttoptr i64 %694 to double*
  %696 = load double, double* %695, align 8
  %697 = insertelement <2 x double> undef, double %693, i32 0
  %698 = insertelement <2 x double> %697, double %696, i32 1
  %699 = fdiv <2 x double> %691, %698
  store <2 x double> %699, <2 x double>* %593, align 1
  %700 = add i64 %680, -64
  %701 = add i64 %682, 21
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to double*
  %703 = load double, double* %702, align 8
  %704 = add i64 %680, -56
  %705 = inttoptr i64 %704 to double*
  %706 = load double, double* %705, align 8
  %707 = insertelement <2 x double> undef, double %703, i32 0
  %708 = insertelement <2 x double> %707, double %706, i32 1
  %709 = fadd <2 x double> %699, %708
  store <2 x double> %709, <2 x double>* %593, align 1
  %710 = add i64 %682, 26
  store i64 %710, i64* %3, align 8
  %bc21 = bitcast <2 x double> %709 to <2 x i64>
  %711 = extractelement <2 x i64> %bc21, i32 0
  %bc15 = bitcast <2 x double> %709 to <2 x i64>
  %712 = extractelement <2 x i64> %bc15, i32 1
  %713 = inttoptr i64 %700 to i64*
  store i64 %711, i64* %713, align 8
  %714 = inttoptr i64 %704 to i64*
  store i64 %712, i64* %714, align 8
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -160
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, 8
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719, align 8
  %721 = add i64 %715, -152
  %722 = inttoptr i64 %721 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %720, i64* %71, align 1
  store i64 %723, i64* %42, align 1
  %724 = add i64 %715, -224
  %725 = add i64 %717, 16
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  %728 = add i64 %715, -216
  %729 = inttoptr i64 %728 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %727, i64* %112, align 1
  store i64 %730, i64* %113, align 1
  %731 = add i64 %717, 24
  store i64 %731, i64* %3, align 8
  %732 = load <2 x double>, <2 x double>* %592, align 1
  %733 = inttoptr i64 %724 to double*
  %734 = load double, double* %733, align 8
  %735 = inttoptr i64 %728 to double*
  %736 = load double, double* %735, align 8
  %737 = insertelement <2 x double> undef, double %734, i32 0
  %738 = insertelement <2 x double> %737, double %736, i32 1
  %739 = fmul <2 x double> %732, %738
  store <2 x double> %739, <2 x double>* %592, align 1
  %740 = load <2 x double>, <2 x double>* %593, align 1
  %741 = fdiv <2 x double> %740, %739
  store <2 x double> %741, <2 x double>* %593, align 1
  %742 = add i64 %715, -80
  %743 = add i64 %717, 33
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to double*
  %745 = load double, double* %744, align 8
  %746 = add i64 %715, -72
  %747 = inttoptr i64 %746 to double*
  %748 = load double, double* %747, align 8
  %749 = insertelement <2 x double> undef, double %745, i32 0
  %750 = insertelement <2 x double> %749, double %748, i32 1
  %751 = fadd <2 x double> %741, %750
  store <2 x double> %751, <2 x double>* %593, align 1
  %752 = add i64 %717, 38
  store i64 %752, i64* %3, align 8
  %bc22 = bitcast <2 x double> %751 to <2 x i64>
  %753 = extractelement <2 x i64> %bc22, i32 0
  %bc16 = bitcast <2 x double> %751 to <2 x i64>
  %754 = extractelement <2 x i64> %bc16, i32 1
  %755 = inttoptr i64 %742 to i64*
  store i64 %753, i64* %755, align 8
  %756 = inttoptr i64 %746 to i64*
  store i64 %754, i64* %756, align 8
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -240
  %759 = load i64, i64* %3, align 8
  %760 = add i64 %759, 8
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %758 to i64*
  %762 = load i64, i64* %761, align 8
  %763 = add i64 %757, -232
  %764 = inttoptr i64 %763 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %762, i64* %71, align 1
  store i64 %765, i64* %42, align 1
  %766 = add i64 %757, -224
  %767 = add i64 %759, 16
  store i64 %767, i64* %3, align 8
  %768 = load <2 x double>, <2 x double>* %593, align 1
  %769 = inttoptr i64 %766 to double*
  %770 = load double, double* %769, align 8
  %771 = add i64 %757, -216
  %772 = inttoptr i64 %771 to double*
  %773 = load double, double* %772, align 8
  %774 = insertelement <2 x double> undef, double %770, i32 0
  %775 = insertelement <2 x double> %774, double %773, i32 1
  %776 = fdiv <2 x double> %768, %775
  store <2 x double> %776, <2 x double>* %593, align 1
  %777 = add i64 %757, -112
  %778 = add i64 %759, 21
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to double*
  %780 = load double, double* %779, align 8
  %781 = add i64 %757, -104
  %782 = inttoptr i64 %781 to double*
  %783 = load double, double* %782, align 8
  %784 = insertelement <2 x double> undef, double %780, i32 0
  %785 = insertelement <2 x double> %784, double %783, i32 1
  %786 = fadd <2 x double> %776, %785
  store <2 x double> %786, <2 x double>* %593, align 1
  %787 = add i64 %759, 26
  store i64 %787, i64* %3, align 8
  %bc23 = bitcast <2 x double> %786 to <2 x i64>
  %788 = extractelement <2 x i64> %bc23, i32 0
  %bc17 = bitcast <2 x double> %786 to <2 x i64>
  %789 = extractelement <2 x i64> %bc17, i32 1
  %790 = inttoptr i64 %777 to i64*
  store i64 %788, i64* %790, align 8
  %791 = inttoptr i64 %781 to i64*
  store i64 %789, i64* %791, align 8
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -240
  %794 = load i64, i64* %3, align 8
  %795 = add i64 %794, 8
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796, align 8
  %798 = add i64 %792, -232
  %799 = inttoptr i64 %798 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %797, i64* %71, align 1
  store i64 %800, i64* %42, align 1
  %801 = add i64 %792, -176
  %802 = add i64 %794, 16
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  %805 = add i64 %792, -168
  %806 = inttoptr i64 %805 to i64*
  %807 = load i64, i64* %806, align 8
  store i64 %804, i64* %112, align 1
  store i64 %807, i64* %113, align 1
  %808 = add i64 %792, -224
  %809 = add i64 %794, 24
  store i64 %809, i64* %3, align 8
  %810 = load <2 x double>, <2 x double>* %592, align 1
  %811 = inttoptr i64 %808 to double*
  %812 = load double, double* %811, align 8
  %813 = add i64 %792, -216
  %814 = inttoptr i64 %813 to double*
  %815 = load double, double* %814, align 8
  %816 = insertelement <2 x double> undef, double %812, i32 0
  %817 = insertelement <2 x double> %816, double %815, i32 1
  %818 = fmul <2 x double> %810, %817
  store <2 x double> %818, <2 x double>* %592, align 1
  %819 = add i64 %792, -160
  %820 = add i64 %794, 32
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to double*
  %822 = load double, double* %821, align 8
  %823 = add i64 %792, -152
  %824 = inttoptr i64 %823 to double*
  %825 = load double, double* %824, align 8
  %826 = insertelement <2 x double> undef, double %822, i32 0
  %827 = insertelement <2 x double> %826, double %825, i32 1
  %828 = fsub <2 x double> %818, %827
  store <2 x double> %828, <2 x double>* %592, align 1
  %829 = load <2 x double>, <2 x double>* %593, align 1
  %830 = fdiv <2 x double> %829, %828
  store <2 x double> %830, <2 x double>* %593, align 1
  %831 = add i64 %792, -128
  %832 = add i64 %794, 41
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to double*
  %834 = load double, double* %833, align 8
  %835 = add i64 %792, -120
  %836 = inttoptr i64 %835 to double*
  %837 = load double, double* %836, align 8
  %838 = insertelement <2 x double> undef, double %834, i32 0
  %839 = insertelement <2 x double> %838, double %837, i32 1
  %840 = fadd <2 x double> %830, %839
  store <2 x double> %840, <2 x double>* %593, align 1
  %841 = add i64 %794, 46
  store i64 %841, i64* %3, align 8
  %bc24 = bitcast <2 x double> %840 to <2 x i64>
  %842 = extractelement <2 x i64> %bc24, i32 0
  %bc18 = bitcast <2 x double> %840 to <2 x i64>
  %843 = extractelement <2 x i64> %bc18, i32 1
  %844 = inttoptr i64 %831 to i64*
  store i64 %842, i64* %844, align 8
  %845 = inttoptr i64 %835 to i64*
  store i64 %843, i64* %845, align 8
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -176
  %848 = load i64, i64* %3, align 8
  %849 = add i64 %848, 8
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %847 to i64*
  %851 = load i64, i64* %850, align 8
  %852 = add i64 %846, -168
  %853 = inttoptr i64 %852 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %851, i64* %71, align 1
  store i64 %854, i64* %42, align 1
  %855 = add i64 %846, -224
  %856 = add i64 %848, 16
  store i64 %856, i64* %3, align 8
  %857 = load <2 x double>, <2 x double>* %593, align 1
  %858 = inttoptr i64 %855 to double*
  %859 = load double, double* %858, align 8
  %860 = add i64 %846, -216
  %861 = inttoptr i64 %860 to double*
  %862 = load double, double* %861, align 8
  %863 = insertelement <2 x double> undef, double %859, i32 0
  %864 = insertelement <2 x double> %863, double %862, i32 1
  %865 = fadd <2 x double> %857, %864
  store <2 x double> %865, <2 x double>* %593, align 1
  %866 = add i64 %848, 24
  store i64 %866, i64* %3, align 8
  %bc25 = bitcast <2 x double> %865 to <2 x i64>
  %867 = extractelement <2 x i64> %bc25, i32 0
  %bc19 = bitcast <2 x double> %865 to <2 x i64>
  %868 = extractelement <2 x i64> %bc19, i32 1
  %869 = inttoptr i64 %855 to i64*
  store i64 %867, i64* %869, align 8
  %870 = inttoptr i64 %860 to i64*
  store i64 %868, i64* %870, align 8
  %871 = load i64, i64* %3, align 8
  %872 = add i64 %871, -236
  store i64 %872, i64* %3, align 8
  br label %block_.L_400924

block_.L_400a15:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %RDI.i124 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197457, i64* %RSI.i470, align 8
  %873 = load i64, i64* %RBP.i, align 8
  %874 = add i64 %873, -24
  %875 = add i64 %633, 25
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i117 = bitcast %union.anon* %878 to i8*
  store i8 1, i8* %AL.i117, align 1
  %879 = add i64 %633, -1285
  %880 = add i64 %633, 32
  %881 = load i64, i64* %6, align 8
  %882 = add i64 %881, -8
  %883 = inttoptr i64 %882 to i64*
  store i64 %880, i64* %883, align 8
  store i64 %882, i64* %6, align 8
  store i64 %879, i64* %3, align 8
  %call2_400a30 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %879, %struct.Memory* %630)
  %884 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197465, i64* %RSI.i470, align 8
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -32
  %887 = add i64 %884, 25
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %EAX.i106 = bitcast %union.anon* %878 to i32*
  %890 = add i64 %885, -300
  %891 = load i32, i32* %EAX.i106, align 4
  %892 = add i64 %884, 31
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %890 to i32*
  store i32 %891, i32* %893, align 4
  %894 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i117, align 1
  %895 = add i64 %894, -1348
  %896 = add i64 %894, 7
  %897 = load i64, i64* %6, align 8
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %896, i64* %899, align 8
  store i64 %898, i64* %6, align 8
  store i64 %895, i64* %3, align 8
  %call2_400a56 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %895, %struct.Memory* %call2_400a30)
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -96
  %902 = load i64, i64* %3, align 8
  %903 = add i64 %902, 5
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %901 to i64*
  %905 = load i64, i64* %904, align 8
  %906 = add i64 %900, -88
  %907 = inttoptr i64 %906 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %905, i64* %71, align 1
  store i64 %908, i64* %42, align 1
  %909 = add i64 %900, -304
  %910 = load i32, i32* %EAX.i106, align 4
  %911 = add i64 %902, 11
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %909 to i32*
  store i32 %910, i32* %912, align 4
  %913 = load i64, i64* %3, align 8
  %914 = add i64 %913, -982
  %915 = add i64 %913, 5
  %916 = load i64, i64* %6, align 8
  %917 = add i64 %916, -8
  %918 = inttoptr i64 %917 to i64*
  store i64 %915, i64* %918, align 8
  store i64 %917, i64* %6, align 8
  store i64 %914, i64* %3, align 8
  %call2_400a66 = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %914, %struct.Memory* %call2_400a56)
  %919 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197472, i64* %RSI.i470, align 8
  store i8 1, i8* %AL.i117, align 1
  %920 = add i64 %919, -1371
  %921 = add i64 %919, 27
  %922 = load i64, i64* %6, align 8
  %923 = add i64 %922, -8
  %924 = inttoptr i64 %923 to i64*
  store i64 %921, i64* %924, align 8
  store i64 %923, i64* %6, align 8
  store i64 %920, i64* %3, align 8
  %call2_400a81 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %920, %struct.Memory* %call2_400a66)
  %925 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197481, i64* %RSI.i470, align 8
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -40
  %928 = add i64 %925, 25
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %931 = add i64 %926, -308
  %932 = load i32, i32* %EAX.i106, align 4
  %933 = add i64 %925, 31
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i32*
  store i32 %932, i32* %934, align 4
  %935 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i117, align 1
  %936 = add i64 %935, -1429
  %937 = add i64 %935, 7
  %938 = load i64, i64* %6, align 8
  %939 = add i64 %938, -8
  %940 = inttoptr i64 %939 to i64*
  store i64 %937, i64* %940, align 8
  store i64 %939, i64* %6, align 8
  store i64 %936, i64* %3, align 8
  %call2_400aa7 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %936, %struct.Memory* %call2_400a81)
  %941 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197493, i64* %RSI.i470, align 8
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -48
  %944 = add i64 %941, 25
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %71, align 1
  store double 0.000000e+00, double* %302, align 1
  %947 = add i64 %942, -312
  %948 = load i32, i32* %EAX.i106, align 4
  %949 = add i64 %941, 31
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %947 to i32*
  store i32 %948, i32* %950, align 4
  %951 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i117, align 1
  %952 = add i64 %951, -1467
  %953 = add i64 %951, 7
  %954 = load i64, i64* %6, align 8
  %955 = add i64 %954, -8
  %956 = inttoptr i64 %955 to i64*
  store i64 %953, i64* %956, align 8
  store i64 %955, i64* %6, align 8
  store i64 %952, i64* %3, align 8
  %call2_400acd = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %952, %struct.Memory* %call2_400aa7)
  %957 = load i64, i64* %RBP.i, align 8
  %958 = add i64 %957, -64
  %959 = load i64, i64* %3, align 8
  %960 = add i64 %959, 5
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %958 to i64*
  %962 = load i64, i64* %961, align 8
  %963 = add i64 %957, -56
  %964 = inttoptr i64 %963 to i64*
  %965 = load i64, i64* %964, align 8
  store i64 %962, i64* %71, align 1
  store i64 %965, i64* %42, align 1
  %966 = add i64 %957, -316
  %967 = load i32, i32* %EAX.i106, align 4
  %968 = add i64 %959, 11
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %966 to i32*
  store i32 %967, i32* %969, align 4
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, -1101
  %972 = add i64 %970, 5
  %973 = load i64, i64* %6, align 8
  %974 = add i64 %973, -8
  %975 = inttoptr i64 %974 to i64*
  store i64 %972, i64* %975, align 8
  store i64 %974, i64* %6, align 8
  store i64 %971, i64* %3, align 8
  %call2_400add = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %971, %struct.Memory* %call2_400acd)
  %976 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197532, i64* %RSI.i470, align 8
  store i8 1, i8* %AL.i117, align 1
  %977 = add i64 %976, -1490
  %978 = add i64 %976, 27
  %979 = load i64, i64* %6, align 8
  %980 = add i64 %979, -8
  %981 = inttoptr i64 %980 to i64*
  store i64 %978, i64* %981, align 8
  store i64 %980, i64* %6, align 8
  store i64 %977, i64* %3, align 8
  %call2_400af8 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %977, %struct.Memory* %call2_400add)
  %982 = load i64, i64* %RBP.i, align 8
  %983 = add i64 %982, -80
  %984 = load i64, i64* %3, align 8
  %985 = add i64 %984, 5
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %983 to i64*
  %987 = load i64, i64* %986, align 8
  %988 = add i64 %982, -72
  %989 = inttoptr i64 %988 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %987, i64* %71, align 1
  store i64 %990, i64* %42, align 1
  %991 = add i64 %982, -320
  %992 = load i32, i32* %EAX.i106, align 4
  %993 = add i64 %984, 11
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %991 to i32*
  store i32 %992, i32* %994, align 4
  %995 = load i64, i64* %3, align 8
  %996 = add i64 %995, -1144
  %997 = add i64 %995, 5
  %998 = load i64, i64* %6, align 8
  %999 = add i64 %998, -8
  %1000 = inttoptr i64 %999 to i64*
  store i64 %997, i64* %1000, align 8
  store i64 %999, i64* %6, align 8
  store i64 %996, i64* %3, align 8
  %call2_400b08 = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %996, %struct.Memory* %call2_400af8)
  %1001 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197507, i64* %RSI.i470, align 8
  store i8 1, i8* %AL.i117, align 1
  %1002 = add i64 %1001, -1533
  %1003 = add i64 %1001, 27
  %1004 = load i64, i64* %6, align 8
  %1005 = add i64 %1004, -8
  %1006 = inttoptr i64 %1005 to i64*
  store i64 %1003, i64* %1006, align 8
  store i64 %1005, i64* %6, align 8
  store i64 %1002, i64* %3, align 8
  %call2_400b23 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %1002, %struct.Memory* %call2_400b08)
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -112
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, 5
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1008 to i64*
  %1012 = load i64, i64* %1011, align 8
  %1013 = add i64 %1007, -104
  %1014 = inttoptr i64 %1013 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1012, i64* %71, align 1
  store i64 %1015, i64* %42, align 1
  %1016 = add i64 %1007, -324
  %1017 = load i32, i32* %EAX.i106, align 4
  %1018 = add i64 %1009, 11
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1016 to i32*
  store i32 %1017, i32* %1019, align 4
  %1020 = load i64, i64* %3, align 8
  %1021 = add i64 %1020, -1187
  %1022 = add i64 %1020, 5
  %1023 = load i64, i64* %6, align 8
  %1024 = add i64 %1023, -8
  %1025 = inttoptr i64 %1024 to i64*
  store i64 %1022, i64* %1025, align 8
  store i64 %1024, i64* %6, align 8
  store i64 %1021, i64* %3, align 8
  %call2_400b33 = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %1021, %struct.Memory* %call2_400b23)
  %1026 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197520, i64* %RSI.i470, align 8
  store i8 1, i8* %AL.i117, align 1
  %1027 = add i64 %1026, -1576
  %1028 = add i64 %1026, 27
  %1029 = load i64, i64* %6, align 8
  %1030 = add i64 %1029, -8
  %1031 = inttoptr i64 %1030 to i64*
  store i64 %1028, i64* %1031, align 8
  store i64 %1030, i64* %6, align 8
  store i64 %1027, i64* %3, align 8
  %call2_400b4e = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %1027, %struct.Memory* %call2_400b33)
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -128
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 5
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1033 to i64*
  %1037 = load i64, i64* %1036, align 8
  %1038 = add i64 %1032, -120
  %1039 = inttoptr i64 %1038 to i64*
  %1040 = load i64, i64* %1039, align 8
  store i64 %1037, i64* %71, align 1
  store i64 %1040, i64* %42, align 1
  %1041 = add i64 %1032, -328
  %1042 = load i32, i32* %EAX.i106, align 4
  %1043 = add i64 %1034, 11
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1041 to i32*
  store i32 %1042, i32* %1044, align 4
  %1045 = load i64, i64* %3, align 8
  %1046 = add i64 %1045, -1230
  %1047 = add i64 %1045, 5
  %1048 = load i64, i64* %6, align 8
  %1049 = add i64 %1048, -8
  %1050 = inttoptr i64 %1049 to i64*
  store i64 %1047, i64* %1050, align 8
  store i64 %1049, i64* %6, align 8
  store i64 %1046, i64* %3, align 8
  %call2_400b5e = tail call %struct.Memory* @sub_400690.sum_vec(%struct.State* nonnull %0, i64 %1046, %struct.Memory* %call2_400b4e)
  %1051 = load i64, i64* %3, align 8
  store i64 4197448, i64* %RDI.i124, align 8
  store i64 4197541, i64* %RSI.i470, align 8
  store i8 1, i8* %AL.i117, align 1
  %1052 = add i64 %1051, -1619
  %1053 = add i64 %1051, 27
  %1054 = load i64, i64* %6, align 8
  %1055 = add i64 %1054, -8
  %1056 = inttoptr i64 %1055 to i64*
  store i64 %1053, i64* %1056, align 8
  store i64 %1055, i64* %6, align 8
  store i64 %1052, i64* %3, align 8
  %call2_400b79 = tail call %struct.Memory* @sub_400510.printf_plt(%struct.State* nonnull %0, i64 %1052, %struct.Memory* %call2_400b5e)
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i9 = bitcast %union.anon* %1057 to i32*
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %1057, i64 0, i32 0
  %1058 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i, align 8
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -332
  %1061 = load i32, i32* %EAX.i106, align 4
  %1062 = add i64 %1058, 8
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i32*
  store i32 %1061, i32* %1063, align 4
  %RAX.i = getelementptr inbounds %union.anon, %union.anon* %878, i64 0, i32 0
  %1064 = load i32, i32* %ECX.i9, align 4
  %1065 = zext i32 %1064 to i64
  %1066 = load i64, i64* %3, align 8
  store i64 %1065, i64* %RAX.i, align 8
  %1067 = load i64, i64* %6, align 8
  %1068 = add i64 %1067, 336
  store i64 %1068, i64* %6, align 8
  %1069 = icmp ugt i64 %1067, -337
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1
  %1071 = trunc i64 %1068 to i32
  %1072 = and i32 %1071, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %21, align 1
  %1077 = xor i64 %1067, 16
  %1078 = xor i64 %1077, %1068
  %1079 = lshr i64 %1078, 4
  %1080 = trunc i64 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %27, align 1
  %1082 = icmp eq i64 %1068, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %30, align 1
  %1084 = lshr i64 %1068, 63
  %1085 = trunc i64 %1084 to i8
  store i8 %1085, i8* %33, align 1
  %1086 = lshr i64 %1067, 63
  %1087 = xor i64 %1084, %1086
  %1088 = add nuw nsw i64 %1087, %1084
  %1089 = icmp eq i64 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %39, align 1
  %1091 = add i64 %1066, 10
  store i64 %1091, i64* %3, align 8
  %1092 = add i64 %1067, 344
  %1093 = inttoptr i64 %1068 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RBP.i, align 8
  store i64 %1092, i64* %6, align 8
  %1095 = add i64 %1066, 11
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1092 to i64*
  %1097 = load i64, i64* %1096, align 8
  store i64 %1097, i64* %3, align 8
  %1098 = add i64 %1067, 352
  store i64 %1098, i64* %6, align 8
  ret %struct.Memory* %call2_400b79
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
