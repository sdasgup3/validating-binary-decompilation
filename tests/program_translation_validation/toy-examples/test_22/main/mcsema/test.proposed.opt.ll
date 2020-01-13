; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xee__rip__type = type <{ [4 x i8] }>
%G__0x400640_type = type <{ [8 x i8] }>
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
@G_0xee__rip_ = global %G_0xee__rip__type zeroinitializer
@G__0x400640 = global %G__0x400640_type zeroinitializer

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4004f0.DoDemoFpu1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i29 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64* %RAX.i29, align 8
  %40 = add i64 %7, -12
  %41 = add i64 %10, 24
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i32, i32* %EDI.i, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %RSI.i63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i63, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %ST0.i66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 6
  store i64 %57, i64* %3, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %59 = bitcast i32* %58 to i64*
  store i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52), i64* %59, align 16
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 261, i16* %60, align 2
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %62 = bitcast i32* %61 to i64*
  store i64 %56, i64* %62, align 8
  %63 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52) to float*), align 4
  %64 = bitcast float %63 to i32
  %65 = and i32 %64, 2143289344
  %66 = icmp eq i32 %65, 2139095040
  %67 = and i32 %64, 4194303
  %68 = icmp ne i32 %67, 0
  %69 = and i1 %66, %68
  %70 = zext i1 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %72 = load i8, i8* %71, align 1
  %73 = or i8 %70, %72
  store i8 %73, i8* %71, align 1
  %74 = fcmp ueq float %63, 0.000000e+00
  br i1 %74, label %80, label %75

; <label>:75:                                     ; preds = %entry
  %76 = tail call float @llvm.fabs.f32(float %63)
  %77 = fcmp oeq float %76, 0x7FF0000000000000
  br i1 %77, label %80, label %78

; <label>:78:                                     ; preds = %75
  %79 = fcmp olt float %76, 0x3810000000000000
  br label %80

; <label>:80:                                     ; preds = %78, %75, %entry
  %81 = phi i1 [ false, %entry ], [ false, %75 ], [ %79, %78 ]
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %82, i8* %83, align 1
  %84 = fpext float %63 to double
  %85 = icmp eq i8 %73, 0
  br i1 %85, label %routine_flds_0xee__rip_.exit, label %86

; <label>:86:                                     ; preds = %80
  %87 = bitcast double %84 to i64
  %88 = or i64 %87, 2251799813685248
  %89 = bitcast i64 %88 to double
  br label %routine_flds_0xee__rip_.exit

routine_flds_0xee__rip_.exit:                     ; preds = %86, %80
  %90 = phi double [ %89, %86 ], [ %84, %80 ]
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %95 = bitcast double* %94 to i64*
  store i64 %93, i64* %95, align 8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %97 = bitcast double* %96 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %92, align 8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %100 = bitcast double* %99 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %97, align 8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %103 = bitcast double* %102 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %100, align 8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %106 = bitcast double* %105 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %103, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %109 = bitcast double* %108 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %106, align 8
  %111 = bitcast double* %ST0.i66 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %109, align 8
  store double %90, double* %ST0.i66, align 8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %114 = load i16, i16* %113, align 2
  %115 = add i16 %114, 14336
  %116 = and i16 %115, 14336
  %117 = and i16 %114, -14337
  %118 = or i16 %116, %117
  store i16 %118, i16* %113, align 2
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -32
  %121 = add i64 %56, 9
  store i64 %121, i64* %3, align 8
  %122 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %120, double %90, i64 %57, i64 893)
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -32
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 3
  store i64 %126, i64* %3, align 8
  store i64 %124, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %125, i64* %62, align 8
  %127 = inttoptr i64 %124 to x86_fp80*
  %128 = load x86_fp80, x86_fp80* %127, align 16
  %129 = fptrunc x86_fp80 %128 to double
  %130 = bitcast double %129 to i64
  %131 = and i64 %130, 9221120237041090560
  %132 = icmp eq i64 %131, 9218868437227405312
  %133 = and i64 %130, 2251799813685247
  %134 = icmp ne i64 %133, 0
  %135 = and i1 %132, %134
  %136 = zext i1 %135 to i8
  %137 = load i8, i8* %71, align 1
  %138 = or i8 %136, %137
  store i8 %138, i8* %71, align 1
  %139 = fcmp ueq double %129, 0.000000e+00
  br i1 %139, label %routine_fldt_MINUS0x20__rbp_.exit58, label %140

; <label>:140:                                    ; preds = %routine_flds_0xee__rip_.exit
  %141 = tail call double @llvm.fabs.f64(double %129)
  %142 = fcmp oeq double %141, 0x7FF0000000000000
  br i1 %142, label %routine_fldt_MINUS0x20__rbp_.exit58, label %143

; <label>:143:                                    ; preds = %140
  %144 = fcmp olt double %141, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit58

routine_fldt_MINUS0x20__rbp_.exit58:              ; preds = %143, %140, %routine_flds_0xee__rip_.exit
  %145 = phi i1 [ false, %routine_flds_0xee__rip_.exit ], [ false, %140 ], [ %144, %143 ]
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %83, align 1
  %147 = icmp eq i8 %138, 0
  %148 = or i64 %130, 2251799813685248
  %149 = bitcast i64 %148 to double
  %150 = select i1 %147, double %129, double %149
  %151 = load i64, i64* %92, align 8
  store i64 %151, i64* %95, align 8
  %152 = load i64, i64* %97, align 8
  store i64 %152, i64* %92, align 8
  %153 = load i64, i64* %100, align 8
  store i64 %153, i64* %97, align 8
  %154 = load i64, i64* %103, align 8
  store i64 %154, i64* %100, align 8
  %155 = load i64, i64* %106, align 8
  store i64 %155, i64* %103, align 8
  %156 = load i64, i64* %109, align 8
  store i64 %156, i64* %106, align 8
  %157 = load i64, i64* %111, align 8
  store i64 %157, i64* %109, align 8
  store double %150, double* %ST0.i66, align 8
  %158 = load i16, i16* %113, align 2
  %159 = add i16 %158, 14336
  %160 = and i16 %159, 14336
  %161 = and i16 %158, -14337
  %162 = or i16 %160, %161
  store i16 %162, i16* %113, align 2
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %125, 6
  store i64 %163, i64* %RSI.i63, align 8
  %165 = add i64 %125, 8
  store i64 %165, i64* %3, align 8
  %166 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %122, %struct.State* %0, i64 %163, double %150, i64 %164, i64 830)
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -56
  %169 = load i64, i64* %RAX.i29, align 8
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 4
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %172, align 8
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, -101
  %175 = add i64 %173, 5
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, -8
  %178 = inttoptr i64 %177 to i64*
  store i64 %175, i64* %178, align 8
  store i64 %177, i64* %6, align 8
  store i64 %174, i64* %3, align 8
  %call2_400555 = tail call %struct.Memory* @sub_4004f0.DoDemoFpu1(%struct.State* %0, i64 %174, %struct.Memory* %166)
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -48
  %181 = load double, double* %ST0.i66, align 8
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 3
  store i64 %183, i64* %3, align 8
  %184 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %call2_400555, %struct.State* %0, i64 %180, double %181, i64 %182, i64 893)
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -32
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 3
  store i64 %188, i64* %3, align 8
  store i64 %186, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %187, i64* %62, align 8
  %189 = inttoptr i64 %186 to x86_fp80*
  %190 = load x86_fp80, x86_fp80* %189, align 16
  %191 = fptrunc x86_fp80 %190 to double
  %192 = bitcast double %191 to i64
  %193 = and i64 %192, 9221120237041090560
  %194 = icmp eq i64 %193, 9218868437227405312
  %195 = and i64 %192, 2251799813685247
  %196 = icmp ne i64 %195, 0
  %197 = and i1 %194, %196
  %198 = zext i1 %197 to i8
  %199 = load i8, i8* %71, align 1
  %200 = or i8 %198, %199
  store i8 %200, i8* %71, align 1
  %201 = fcmp ueq double %191, 0.000000e+00
  br i1 %201, label %routine_fldt_MINUS0x20__rbp_.exit, label %202

; <label>:202:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit58
  %203 = tail call double @llvm.fabs.f64(double %191)
  %204 = fcmp oeq double %203, 0x7FF0000000000000
  br i1 %204, label %routine_fldt_MINUS0x20__rbp_.exit, label %205

; <label>:205:                                    ; preds = %202
  %206 = fcmp olt double %203, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit

routine_fldt_MINUS0x20__rbp_.exit:                ; preds = %205, %202, %routine_fldt_MINUS0x20__rbp_.exit58
  %207 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit58 ], [ false, %202 ], [ %206, %205 ]
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %83, align 1
  %209 = icmp eq i8 %200, 0
  %210 = or i64 %192, 2251799813685248
  %211 = bitcast i64 %210 to double
  %212 = select i1 %209, double %191, double %211
  %213 = load i64, i64* %92, align 8
  store i64 %213, i64* %95, align 8
  %214 = load i64, i64* %97, align 8
  store i64 %214, i64* %92, align 8
  %215 = load i64, i64* %100, align 8
  store i64 %215, i64* %97, align 8
  %216 = load i64, i64* %103, align 8
  store i64 %216, i64* %100, align 8
  %217 = load i64, i64* %106, align 8
  store i64 %217, i64* %103, align 8
  %218 = load i64, i64* %109, align 8
  store i64 %218, i64* %106, align 8
  %219 = load i64, i64* %111, align 8
  store i64 %219, i64* %109, align 8
  store double %212, double* %ST0.i66, align 8
  %220 = load i16, i16* %113, align 2
  %221 = add i16 %220, 14336
  %222 = and i16 %221, 14336
  %223 = and i16 %220, -14337
  %224 = or i16 %222, %223
  store i16 %224, i16* %113, align 2
  %225 = add i64 %185, -48
  %226 = add i64 %187, 6
  store i64 %226, i64* %3, align 8
  store i64 %225, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %188, i64* %62, align 8
  %227 = inttoptr i64 %225 to x86_fp80*
  %228 = load x86_fp80, x86_fp80* %227, align 16
  %229 = fptrunc x86_fp80 %228 to double
  %230 = bitcast double %229 to i64
  %231 = and i64 %230, 9221120237041090560
  %232 = icmp eq i64 %231, 9218868437227405312
  %233 = and i64 %230, 2251799813685247
  %234 = icmp ne i64 %233, 0
  %235 = and i1 %232, %234
  %236 = zext i1 %235 to i8
  %237 = or i8 %236, %200
  store i8 %237, i8* %71, align 1
  %238 = fcmp ueq double %229, 0.000000e+00
  br i1 %238, label %routine_fldt_MINUS0x30__rbp_.exit, label %239

; <label>:239:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit
  %240 = tail call double @llvm.fabs.f64(double %229)
  %241 = fcmp oeq double %240, 0x7FF0000000000000
  br i1 %241, label %routine_fldt_MINUS0x30__rbp_.exit, label %242

; <label>:242:                                    ; preds = %239
  %243 = fcmp olt double %240, 0x10000000000000
  br label %routine_fldt_MINUS0x30__rbp_.exit

routine_fldt_MINUS0x30__rbp_.exit:                ; preds = %242, %239, %routine_fldt_MINUS0x20__rbp_.exit
  %244 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit ], [ false, %239 ], [ %243, %242 ]
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %83, align 1
  %246 = icmp eq i8 %237, 0
  %247 = or i64 %230, 2251799813685248
  %248 = bitcast i64 %247 to double
  %249 = select i1 %246, double %229, double %248
  store i64 %214, i64* %95, align 8
  store i64 %215, i64* %92, align 8
  store i64 %216, i64* %97, align 8
  store i64 %217, i64* %100, align 8
  store i64 %218, i64* %103, align 8
  store i64 %219, i64* %106, align 8
  store double %212, double* %108, align 8
  store double %249, double* %ST0.i66, align 8
  %250 = add i16 %224, 14336
  %251 = and i16 %250, 14336
  %252 = or i16 %251, %223
  store i16 %252, i16* %113, align 2
  %253 = load i64, i64* %6, align 8
  %254 = add i64 %187, 9
  store i64 %253, i64* %RAX.i29, align 8
  %255 = add i64 %253, 16
  %256 = add i64 %187, 12
  store i64 %256, i64* %3, align 8
  %257 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %184, %struct.State* %0, i64 %255, double %249, i64 %254, i64 888)
  %258 = load i64, i64* %RAX.i29, align 8
  %259 = load double, double* %ST0.i66, align 8
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 2
  store i64 %261, i64* %3, align 8
  %262 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %257, %struct.State* %0, i64 %258, double %259, i64 %260, i64 824)
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %263 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64 4294967295), i64* %RDI.i, align 8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i18 = bitcast %union.anon* %264 to i32*
  %RCX.i19 = getelementptr inbounds %union.anon, %union.anon* %264, i64 0, i32 0
  store i64 0, i64* %RCX.i19, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i16 = bitcast %union.anon* %265 to i8*
  store i8 0, i8* %DL.i16, align 1
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %266 = add i64 %263, -379
  %267 = add i64 %263, 16
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  %271 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %262)
  %272 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i19, align 8
  %EAX.i = bitcast %union.anon* %39 to i32*
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -60
  %275 = load i32, i32* %EAX.i, align 4
  %276 = add i64 %272, 5
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i32*
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %ECX.i18, align 4
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* %3, align 8
  store i64 %279, i64* %RAX.i29, align 8
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, 96
  store i64 %282, i64* %6, align 8
  %283 = icmp ugt i64 %281, -97
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %14, align 1
  %285 = trunc i64 %282 to i32
  %286 = and i32 %285, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  %291 = xor i64 %281, %282
  %292 = lshr i64 %291, 4
  %293 = trunc i64 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %26, align 1
  %295 = icmp eq i64 %282, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %29, align 1
  %297 = lshr i64 %282, 63
  %298 = trunc i64 %297 to i8
  store i8 %298, i8* %32, align 1
  %299 = lshr i64 %281, 63
  %300 = xor i64 %297, %299
  %301 = add nuw nsw i64 %300, %297
  %302 = icmp eq i64 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %38, align 1
  %304 = add i64 %280, 7
  store i64 %304, i64* %3, align 8
  %305 = add i64 %281, 104
  %306 = inttoptr i64 %282 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RBP.i, align 8
  store i64 %305, i64* %6, align 8
  %308 = add i64 %280, 8
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %305 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %3, align 8
  %311 = add i64 %281, 112
  store i64 %311, i64* %6, align 8
  ret %struct.Memory* %271
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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

define %struct.Memory* @routine_movq__0x400640___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_flds_0xee__rip_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 6
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %6 = bitcast i32* %5 to i64*
  store i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52), i64* %6, align 16
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 261, i16* %7, align 2
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %9 = bitcast i32* %8 to i64*
  store i64 %3, i64* %9, align 8
  %10 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52) to float*), align 4
  %11 = bitcast float %10 to i32
  %12 = and i32 %11, 2143289344
  %13 = icmp eq i32 %12, 2139095040
  %14 = and i32 %11, 4194303
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %13, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %19 = load i8, i8* %18, align 1
  %20 = or i8 %17, %19
  store i8 %20, i8* %18, align 1
  %21 = fcmp ueq float %10, 0.000000e+00
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call float @llvm.fabs.f32(float %10)
  %24 = fcmp oeq float %23, 0x7FF0000000000000
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %22
  %26 = fcmp olt float %23, 0x3810000000000000
  br label %27

; <label>:27:                                     ; preds = %25, %22, %block_400488
  %28 = phi i1 [ false, %block_400488 ], [ false, %22 ], [ %26, %25 ]
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %29, i8* %30, align 1
  %31 = fpext float %10 to double
  %32 = icmp eq i8 %20, 0
  br i1 %32, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit, label %33

; <label>:33:                                     ; preds = %27
  %34 = bitcast double %31 to i64
  %35 = or i64 %34, 2251799813685248
  %36 = bitcast i64 %35 to double
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit: ; preds = %33, %27
  %37 = phi double [ %36, %33 ], [ %31, %27 ]
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %39 = bitcast double* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %42 = bitcast double* %41 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %44 = bitcast double* %43 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %39, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %47 = bitcast double* %46 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %44, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %50 = bitcast double* %49 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %47, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %53 = bitcast double* %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %50, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %53, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %59 = bitcast double* %58 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %56, align 8
  store double %37, double* %58, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %62 = load i16, i16* %61, align 2
  %63 = add i16 %62, 14336
  %64 = and i16 %63, 14336
  %65 = and i16 %62, -14337
  %66 = or i16 %64, %65
  store i16 %66, i16* %61, align 2
  ret %struct.Memory* %2
}

define internal fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, double, i64, i64) unnamed_addr {
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %2, i64* %8, align 16
  %9 = trunc i64 %5 to i16
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 %9, i16* %10, align 2
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 5
  %12 = bitcast i32* %11 to i64*
  store i64 %4, i64* %12, align 8
  %13 = fcmp ueq double %3, 0.000000e+00
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %6
  %15 = tail call double @llvm.fabs.f64(double %3)
  %16 = fcmp oeq double %15, 0x7FF0000000000000
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  %18 = fcmp olt double %15, 0x10000000000000
  br label %19

; <label>:19:                                     ; preds = %17, %14, %6
  %20 = phi i1 [ false, %6 ], [ false, %14 ], [ %18, %17 ]
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 17
  store i8 %21, i8* %22, align 1
  %23 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2
  %24 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %23)
  %25 = lshr i32 %24, 5
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 9
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = lshr i32 %24, 3
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 13
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %33
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = lshr i32 %24, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 11
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %40
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = and i32 %24, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 19
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = lshr i32 %24, 2
  %53 = and i32 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 15
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %53
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = inttoptr i64 %2 to x86_fp80*
  %60 = fpext double %3 to x86_fp80
  store x86_fp80 %60, x86_fp80* %59, align 16
  %61 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 0, i32 1
  %62 = bitcast double* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 1, i32 1
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %62, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 2, i32 1
  %68 = bitcast double* %67 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %65, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 3, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %68, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 4, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 5, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 6, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 7, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  store i64 %63, i64* %83, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %86 = load i16, i16* %85, align 2
  %87 = add i16 %86, 2048
  %88 = and i16 %87, 14336
  %89 = and i16 %86, -14337
  %90 = or i16 %88, %89
  store i16 %90, i16* %85, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_fstpt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load double, double* %ST0, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %4, double %5, i64 %6, i64 893)
  ret %struct.Memory* %8
}

define %struct.Memory* @routine_fldt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %4, i64* %8, align 16
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %9, align 2
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %11 = bitcast i32* %10 to i64*
  store i64 %5, i64* %11, align 8
  %12 = inttoptr i64 %4 to x86_fp80*
  %13 = load x86_fp80, x86_fp80* %12, align 16
  %14 = fptrunc x86_fp80 %13 to double
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %23 = load i8, i8* %22, align 1
  %24 = or i8 %21, %23
  store i8 %24, i8* %22, align 1
  %25 = fcmp ueq double %14, 0.000000e+00
  br i1 %25, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %26

; <label>:26:                                     ; preds = %block_400488
  %27 = tail call double @llvm.fabs.f64(double %14)
  %28 = fcmp oeq double %27, 0x7FF0000000000000
  br i1 %28, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %29

; <label>:29:                                     ; preds = %26
  %30 = fcmp olt double %27, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %29, %26, %block_400488
  %31 = phi i1 [ false, %block_400488 ], [ false, %26 ], [ %30, %29 ]
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i8 %24, 0
  %35 = or i64 %15, 2251799813685248
  %36 = bitcast i64 %35 to double
  %37 = select i1 %34, double %14, double %36
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %39 = bitcast double* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %42 = bitcast double* %41 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %44 = bitcast double* %43 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %39, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %47 = bitcast double* %46 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %44, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %50 = bitcast double* %49 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %47, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %53 = bitcast double* %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %50, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %53, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %59 = bitcast double* %58 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %56, align 8
  store double %37, double* %58, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %62 = load i16, i16* %61, align 2
  %63 = add i16 %62, 14336
  %64 = and i16 %63, 14336
  %65 = and i16 %62, -14337
  %66 = or i16 %64, %65
  store i16 %66, i16* %61, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_fstpt___rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RSI, align 8
  %4 = load double, double* %ST0, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %3, double %4, i64 %5, i64 830)
  ret %struct.Memory* %7
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
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

define %struct.Memory* @routine_callq_.DoDemoFpu1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_fstpt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load double, double* %ST0, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %4, double %5, i64 %6, i64 893)
  ret %struct.Memory* %8
}

define %struct.Memory* @routine_fldt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %4, i64* %8, align 16
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %9, align 2
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %11 = bitcast i32* %10 to i64*
  store i64 %5, i64* %11, align 8
  %12 = inttoptr i64 %4 to x86_fp80*
  %13 = load x86_fp80, x86_fp80* %12, align 16
  %14 = fptrunc x86_fp80 %13 to double
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %23 = load i8, i8* %22, align 1
  %24 = or i8 %21, %23
  store i8 %24, i8* %22, align 1
  %25 = fcmp ueq double %14, 0.000000e+00
  br i1 %25, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %26

; <label>:26:                                     ; preds = %block_400488
  %27 = tail call double @llvm.fabs.f64(double %14)
  %28 = fcmp oeq double %27, 0x7FF0000000000000
  br i1 %28, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %29

; <label>:29:                                     ; preds = %26
  %30 = fcmp olt double %27, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %29, %26, %block_400488
  %31 = phi i1 [ false, %block_400488 ], [ false, %26 ], [ %30, %29 ]
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i8 %24, 0
  %35 = or i64 %15, 2251799813685248
  %36 = bitcast i64 %35 to double
  %37 = select i1 %34, double %14, double %36
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %39 = bitcast double* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %42 = bitcast double* %41 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %44 = bitcast double* %43 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %39, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %47 = bitcast double* %46 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %44, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %50 = bitcast double* %49 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %47, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %53 = bitcast double* %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %50, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %53, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %59 = bitcast double* %58 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %56, align 8
  store double %37, double* %58, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %62 = load i16, i16* %61, align 2
  %63 = add i16 %62, 14336
  %64 = and i16 %63, 14336
  %65 = and i16 %62, -14337
  %66 = or i16 %64, %65
  store i16 %66, i16* %61, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_fstpt_0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load double, double* %ST0, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %4, double %5, i64 %6, i64 888)
  ret %struct.Memory* %8
}

define %struct.Memory* @routine_fstpt___rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RAX, align 8
  %4 = load double, double* %ST0, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %3, double %4, i64 %5, i64 824)
  ret %struct.Memory* %7
}

define %struct.Memory* @routine_movl__0x400640___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64 4294967295), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
attributes #2 = { nounwind }
