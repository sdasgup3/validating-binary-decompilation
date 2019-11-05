; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xee__rip__type = type <{ [4 x i8] }>
%G__0x400670_type = type <{ [8 x i8] }>
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
@G__0x400670 = global %G__0x400670_type zeroinitializer

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400520.DoDemoFpu1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  store i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64* %RAX.i29, align 8
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
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %112 = bitcast double* %111 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %109, align 8
  store double %90, double* %111, align 8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %115 = load i16, i16* %114, align 2
  %116 = add i16 %115, 14336
  %117 = and i16 %116, 14336
  %118 = and i16 %115, -14337
  %119 = or i16 %117, %118
  store i16 %119, i16* %114, align 2
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -32
  %122 = add i64 %56, 9
  store i64 %122, i64* %3, align 8
  %123 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %121, double %90, i64 %57, i64 893)
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -32
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 3
  store i64 %127, i64* %3, align 8
  store i64 %125, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %126, i64* %62, align 8
  %128 = inttoptr i64 %125 to x86_fp80*
  %129 = load x86_fp80, x86_fp80* %128, align 16
  %130 = fptrunc x86_fp80 %129 to double
  %131 = bitcast double %130 to i64
  %132 = and i64 %131, 9221120237041090560
  %133 = icmp eq i64 %132, 9218868437227405312
  %134 = and i64 %131, 2251799813685247
  %135 = icmp ne i64 %134, 0
  %136 = and i1 %133, %135
  %137 = zext i1 %136 to i8
  %138 = load i8, i8* %71, align 1
  %139 = or i8 %137, %138
  store i8 %139, i8* %71, align 1
  %140 = fcmp ueq double %130, 0.000000e+00
  br i1 %140, label %routine_fldt_MINUS0x20__rbp_.exit58, label %141

; <label>:141:                                    ; preds = %routine_flds_0xee__rip_.exit
  %142 = tail call double @llvm.fabs.f64(double %130)
  %143 = fcmp oeq double %142, 0x7FF0000000000000
  br i1 %143, label %routine_fldt_MINUS0x20__rbp_.exit58, label %144

; <label>:144:                                    ; preds = %141
  %145 = fcmp olt double %142, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit58

routine_fldt_MINUS0x20__rbp_.exit58:              ; preds = %144, %141, %routine_flds_0xee__rip_.exit
  %146 = phi i1 [ false, %routine_flds_0xee__rip_.exit ], [ false, %141 ], [ %145, %144 ]
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %83, align 1
  %148 = icmp eq i8 %139, 0
  %149 = or i64 %131, 2251799813685248
  %150 = bitcast i64 %149 to double
  %151 = select i1 %148, double %130, double %150
  %152 = load i64, i64* %92, align 8
  store i64 %152, i64* %95, align 8
  %153 = load i64, i64* %97, align 8
  store i64 %153, i64* %92, align 8
  %154 = load i64, i64* %100, align 8
  store i64 %154, i64* %97, align 8
  %155 = load i64, i64* %103, align 8
  store i64 %155, i64* %100, align 8
  %156 = load i64, i64* %106, align 8
  store i64 %156, i64* %103, align 8
  %157 = load i64, i64* %109, align 8
  store i64 %157, i64* %106, align 8
  %158 = load i64, i64* %112, align 8
  store i64 %158, i64* %109, align 8
  store double %151, double* %111, align 8
  %159 = load i16, i16* %114, align 2
  %160 = add i16 %159, 14336
  %161 = and i16 %160, 14336
  %162 = and i16 %159, -14337
  %163 = or i16 %161, %162
  store i16 %163, i16* %114, align 2
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %126, 6
  store i64 %164, i64* %RSI.i63, align 8
  %166 = add i64 %126, 8
  store i64 %166, i64* %3, align 8
  %167 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %123, %struct.State* nonnull %0, i64 %164, double %151, i64 %165, i64 830)
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -56
  %170 = load i64, i64* %RAX.i29, align 8
  %171 = load i64, i64* %3, align 8
  %172 = add i64 %171, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173, align 8
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, -101
  %176 = add i64 %174, 5
  %177 = load i64, i64* %6, align 8
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %176, i64* %179, align 8
  store i64 %178, i64* %6, align 8
  store i64 %175, i64* %3, align 8
  %call2_400585 = tail call %struct.Memory* @sub_400520.DoDemoFpu1(%struct.State* nonnull %0, i64 %175, %struct.Memory* %167)
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -48
  %182 = load double, double* %111, align 8
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 3
  store i64 %184, i64* %3, align 8
  %185 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %call2_400585, %struct.State* nonnull %0, i64 %181, double %182, i64 %183, i64 893)
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -32
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  store i64 %187, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %188, i64* %62, align 8
  %190 = inttoptr i64 %187 to x86_fp80*
  %191 = load x86_fp80, x86_fp80* %190, align 16
  %192 = fptrunc x86_fp80 %191 to double
  %193 = bitcast double %192 to i64
  %194 = and i64 %193, 9221120237041090560
  %195 = icmp eq i64 %194, 9218868437227405312
  %196 = and i64 %193, 2251799813685247
  %197 = icmp ne i64 %196, 0
  %198 = and i1 %195, %197
  %199 = zext i1 %198 to i8
  %200 = load i8, i8* %71, align 1
  %201 = or i8 %199, %200
  store i8 %201, i8* %71, align 1
  %202 = fcmp ueq double %192, 0.000000e+00
  br i1 %202, label %routine_fldt_MINUS0x20__rbp_.exit, label %203

; <label>:203:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit58
  %204 = tail call double @llvm.fabs.f64(double %192)
  %205 = fcmp oeq double %204, 0x7FF0000000000000
  br i1 %205, label %routine_fldt_MINUS0x20__rbp_.exit, label %206

; <label>:206:                                    ; preds = %203
  %207 = fcmp olt double %204, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit

routine_fldt_MINUS0x20__rbp_.exit:                ; preds = %206, %203, %routine_fldt_MINUS0x20__rbp_.exit58
  %208 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit58 ], [ false, %203 ], [ %207, %206 ]
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %83, align 1
  %210 = icmp eq i8 %201, 0
  %211 = or i64 %193, 2251799813685248
  %212 = bitcast i64 %211 to double
  %213 = select i1 %210, double %192, double %212
  %214 = load i64, i64* %92, align 8
  store i64 %214, i64* %95, align 8
  %215 = load i64, i64* %97, align 8
  store i64 %215, i64* %92, align 8
  %216 = load i64, i64* %100, align 8
  store i64 %216, i64* %97, align 8
  %217 = load i64, i64* %103, align 8
  store i64 %217, i64* %100, align 8
  %218 = load i64, i64* %106, align 8
  store i64 %218, i64* %103, align 8
  %219 = load i64, i64* %109, align 8
  store i64 %219, i64* %106, align 8
  %220 = load i64, i64* %112, align 8
  store i64 %220, i64* %109, align 8
  store double %213, double* %111, align 8
  %221 = load i16, i16* %114, align 2
  %222 = add i16 %221, 14336
  %223 = and i16 %222, 14336
  %224 = and i16 %221, -14337
  %225 = or i16 %223, %224
  store i16 %225, i16* %114, align 2
  %226 = add i64 %186, -48
  %227 = add i64 %188, 6
  store i64 %227, i64* %3, align 8
  store i64 %226, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %189, i64* %62, align 8
  %228 = inttoptr i64 %226 to x86_fp80*
  %229 = load x86_fp80, x86_fp80* %228, align 16
  %230 = fptrunc x86_fp80 %229 to double
  %231 = bitcast double %230 to i64
  %232 = and i64 %231, 9221120237041090560
  %233 = icmp eq i64 %232, 9218868437227405312
  %234 = and i64 %231, 2251799813685247
  %235 = icmp ne i64 %234, 0
  %236 = and i1 %233, %235
  %237 = zext i1 %236 to i8
  %238 = or i8 %237, %201
  store i8 %238, i8* %71, align 1
  %239 = fcmp ueq double %230, 0.000000e+00
  br i1 %239, label %routine_fldt_MINUS0x30__rbp_.exit, label %240

; <label>:240:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit
  %241 = tail call double @llvm.fabs.f64(double %230)
  %242 = fcmp oeq double %241, 0x7FF0000000000000
  br i1 %242, label %routine_fldt_MINUS0x30__rbp_.exit, label %243

; <label>:243:                                    ; preds = %240
  %244 = fcmp olt double %241, 0x10000000000000
  br label %routine_fldt_MINUS0x30__rbp_.exit

routine_fldt_MINUS0x30__rbp_.exit:                ; preds = %243, %240, %routine_fldt_MINUS0x20__rbp_.exit
  %245 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit ], [ false, %240 ], [ %244, %243 ]
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %83, align 1
  %247 = icmp eq i8 %238, 0
  %248 = or i64 %231, 2251799813685248
  %249 = bitcast i64 %248 to double
  %250 = select i1 %247, double %230, double %249
  store i64 %215, i64* %95, align 8
  store i64 %216, i64* %92, align 8
  store i64 %217, i64* %97, align 8
  store i64 %218, i64* %100, align 8
  store i64 %219, i64* %103, align 8
  store i64 %220, i64* %106, align 8
  store double %213, double* %108, align 8
  store double %250, double* %111, align 8
  %251 = add i16 %225, 14336
  %252 = and i16 %251, 14336
  %253 = or i16 %252, %224
  store i16 %253, i16* %114, align 2
  %254 = load i64, i64* %6, align 8
  %255 = add i64 %188, 9
  store i64 %254, i64* %RAX.i29, align 8
  %256 = add i64 %254, 16
  %257 = add i64 %188, 12
  store i64 %257, i64* %3, align 8
  %258 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %185, %struct.State* nonnull %0, i64 %256, double %250, i64 %255, i64 888)
  %259 = load i64, i64* %RAX.i29, align 8
  %260 = load double, double* %111, align 8
  %261 = load i64, i64* %3, align 8
  %262 = add i64 %261, 2
  store i64 %262, i64* %3, align 8
  %263 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %258, %struct.State* nonnull %0, i64 %259, double %260, i64 %261, i64 824)
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %264 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64 4294967295), i64* %RDI.i, align 8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i18 = bitcast %union.anon* %265 to i32*
  %RCX.i19 = getelementptr inbounds %union.anon, %union.anon* %265, i64 0, i32 0
  store i64 0, i64* %RCX.i19, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i16 = bitcast %union.anon* %266 to i8*
  store i8 0, i8* %DL.i16, align 1
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %267 = add i64 %264, -379
  %268 = add i64 %264, 16
  %269 = load i64, i64* %6, align 8
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %268, i64* %271, align 8
  store i64 %270, i64* %6, align 8
  store i64 %267, i64* %3, align 8
  %272 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %263)
  %273 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i19, align 8
  %EAX.i = bitcast %union.anon* %39 to i32*
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -60
  %276 = load i32, i32* %EAX.i, align 4
  %277 = add i64 %273, 5
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %275 to i32*
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %ECX.i18, align 4
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %3, align 8
  store i64 %280, i64* %RAX.i29, align 8
  %282 = load i64, i64* %6, align 8
  %283 = add i64 %282, 96
  store i64 %283, i64* %6, align 8
  %284 = icmp ugt i64 %282, -97
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %14, align 1
  %286 = trunc i64 %283 to i32
  %287 = and i32 %286, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %21, align 1
  %292 = xor i64 %283, %282
  %293 = lshr i64 %292, 4
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %26, align 1
  %296 = icmp eq i64 %283, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %29, align 1
  %298 = lshr i64 %283, 63
  %299 = trunc i64 %298 to i8
  store i8 %299, i8* %32, align 1
  %300 = lshr i64 %282, 63
  %301 = xor i64 %298, %300
  %302 = add nuw nsw i64 %301, %298
  %303 = icmp eq i64 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %38, align 1
  %305 = add i64 %281, 7
  store i64 %305, i64* %3, align 8
  %306 = add i64 %282, 104
  %307 = inttoptr i64 %283 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RBP.i, align 8
  store i64 %306, i64* %6, align 8
  %309 = add i64 %281, 8
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %306 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %3, align 8
  %312 = add i64 %282, 112
  store i64 %312, i64* %6, align 8
  ret %struct.Memory* %272
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %17 = xor i64 %6, %3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400670___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_flds_0xee__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

define internal fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, double, i64, i64) unnamed_addr {
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3
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

define %struct.Memory* @routine_fstpt_MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_fldt_MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

define %struct.Memory* @routine_fstpt___rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.DoDemoFpu1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

define %struct.Memory* @routine_fstpt_MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_fldt_MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

define %struct.Memory* @routine_fstpt_0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr {
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

define %struct.Memory* @routine_fstpt___rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x400670___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64 4294967295), i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %17 = xor i64 %6, %3
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
