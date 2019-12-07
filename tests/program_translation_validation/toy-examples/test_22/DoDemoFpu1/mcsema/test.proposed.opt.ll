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

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

declare %struct.Memory* @sub_400590.timespi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @DoDemoFpu1(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %10, 7
  %12 = add i64 %7, -56
  store i64 %12, i64* %RSP.i17, align 8
  %13 = icmp ult i64 %8, 48
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %8, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %8, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  %41 = add i64 %7, 8
  %42 = add i64 %10, 10
  store i64 %42, i64* %PC.i, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %44 = bitcast i32* %43 to i64*
  store i64 %41, i64* %44, align 16
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %45, align 2
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %47 = bitcast i32* %46 to i64*
  store i64 %11, i64* %47, align 8
  %48 = inttoptr i64 %41 to x86_fp80*
  %49 = load x86_fp80, x86_fp80* %48, align 16
  %50 = fptrunc x86_fp80 %49 to double
  %51 = bitcast double %50 to i64
  %52 = and i64 %51, 9221120237041090560
  %53 = icmp eq i64 %52, 9218868437227405312
  %54 = and i64 %51, 2251799813685247
  %55 = icmp ne i64 %54, 0
  %56 = and i1 %53, %55
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %59 = load i8, i8* %58, align 1
  %60 = or i8 %57, %59
  store i8 %60, i8* %58, align 1
  %61 = fcmp ueq double %50, 0.000000e+00
  br i1 %61, label %routine_fldt_0x10__rbp_.exit, label %62

; <label>:62:                                     ; preds = %entry
  %63 = tail call double @llvm.fabs.f64(double %50)
  %64 = fcmp oeq double %63, 0x7FF0000000000000
  br i1 %64, label %routine_fldt_0x10__rbp_.exit, label %65

; <label>:65:                                     ; preds = %62
  %66 = fcmp olt double %63, 0x10000000000000
  br label %routine_fldt_0x10__rbp_.exit

routine_fldt_0x10__rbp_.exit:                     ; preds = %65, %62, %entry
  %67 = phi i1 [ false, %entry ], [ false, %62 ], [ %66, %65 ]
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %68, i8* %69, align 1
  %70 = icmp eq i8 %60, 0
  %71 = or i64 %51, 2251799813685248
  %72 = bitcast i64 %71 to double
  %73 = select i1 %70, double %50, double %72
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %75 = bitcast double* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %78 = bitcast double* %77 to i64*
  store i64 %76, i64* %78, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %75, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %86 = bitcast double* %85 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %83, align 8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %89 = bitcast double* %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %86, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %89, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %95 = bitcast double* %94 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %92, align 8
  store double %73, double* %94, align 8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %98 = load i16, i16* %97, align 2
  %99 = add i16 %98, 14336
  %100 = and i16 %99, 14336
  %101 = and i16 %98, -14337
  %102 = or i16 %100, %101
  store i16 %102, i16* %97, align 2
  %103 = add i64 %7, -24
  %104 = add i64 %10, 13
  store i64 %104, i64* %PC.i, align 8
  %105 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %103, double %73, i64 %42, i64 893)
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -16
  %108 = load i64, i64* %PC.i, align 8
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC.i, align 8
  store i64 %107, i64* %44, align 16
  store i16 877, i16* %45, align 2
  store i64 %108, i64* %47, align 8
  %110 = inttoptr i64 %107 to x86_fp80*
  %111 = load x86_fp80, x86_fp80* %110, align 16
  %112 = fptrunc x86_fp80 %111 to double
  %113 = bitcast double %112 to i64
  %114 = and i64 %113, 9221120237041090560
  %115 = icmp eq i64 %114, 9218868437227405312
  %116 = and i64 %113, 2251799813685247
  %117 = icmp ne i64 %116, 0
  %118 = and i1 %115, %117
  %119 = zext i1 %118 to i8
  %120 = load i8, i8* %58, align 1
  %121 = or i8 %119, %120
  store i8 %121, i8* %58, align 1
  %122 = fcmp ueq double %112, 0.000000e+00
  br i1 %122, label %routine_fldt_MINUS0x10__rbp_.exit, label %123

; <label>:123:                                    ; preds = %routine_fldt_0x10__rbp_.exit
  %124 = tail call double @llvm.fabs.f64(double %112)
  %125 = fcmp oeq double %124, 0x7FF0000000000000
  br i1 %125, label %routine_fldt_MINUS0x10__rbp_.exit, label %126

; <label>:126:                                    ; preds = %123
  %127 = fcmp olt double %124, 0x10000000000000
  br label %routine_fldt_MINUS0x10__rbp_.exit

routine_fldt_MINUS0x10__rbp_.exit:                ; preds = %126, %123, %routine_fldt_0x10__rbp_.exit
  %128 = phi i1 [ false, %routine_fldt_0x10__rbp_.exit ], [ false, %123 ], [ %127, %126 ]
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %69, align 1
  %130 = icmp eq i8 %121, 0
  %131 = or i64 %113, 2251799813685248
  %132 = bitcast i64 %131 to double
  %133 = select i1 %130, double %112, double %132
  %134 = load i64, i64* %75, align 8
  store i64 %134, i64* %78, align 8
  %135 = load i64, i64* %80, align 8
  store i64 %135, i64* %75, align 8
  %136 = load i64, i64* %83, align 8
  store i64 %136, i64* %80, align 8
  %137 = load i64, i64* %86, align 8
  store i64 %137, i64* %83, align 8
  %138 = load i64, i64* %89, align 8
  store i64 %138, i64* %86, align 8
  %139 = load i64, i64* %92, align 8
  store i64 %139, i64* %89, align 8
  %140 = load i64, i64* %95, align 8
  store i64 %140, i64* %92, align 8
  store double %133, double* %94, align 8
  %141 = load i16, i16* %97, align 2
  %142 = add i16 %141, 14336
  %143 = and i16 %142, 14336
  %144 = and i16 %141, -14337
  %145 = or i16 %143, %144
  store i16 %145, i16* %97, align 2
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i20 = getelementptr inbounds %union.anon, %union.anon* %146, i64 0, i32 0
  %147 = load i64, i64* %RSP.i17, align 8
  %148 = add i64 %108, 6
  store i64 %147, i64* %RAX.i20, align 8
  %149 = add i64 %108, 8
  store i64 %149, i64* %PC.i, align 8
  %150 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %105, %struct.State* %0, i64 %147, double %133, i64 %148, i64 824)
  %RCX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %151 = load i64, i64* %PC.i, align 8
  store i64 0, i64* %RCX.i, align 8
  store i8 0, i8* %15, align 1
  store i8 1, i8* %22, align 1
  store i8 1, i8* %31, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %28, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i12 = bitcast %union.anon* %152 to i8*
  store i8 0, i8* %DL.i12, align 1
  %AL.i = bitcast %union.anon* %146 to i8*
  store i8 0, i8* %AL.i, align 1
  %153 = add i64 %151, 138
  %154 = add i64 %151, 11
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, -8
  %157 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %157, align 8
  store i64 %156, i64* %6, align 8
  store i64 %153, i64* %3, align 8
  %call2_40050c = tail call %struct.Memory* @sub_400590.timespi(%struct.State* %0, i64 %153, %struct.Memory* %150)
  %EAX.i = bitcast %union.anon* %146 to i32*
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -20
  %160 = load i32, i32* %EAX.i, align 4
  %161 = load i64, i64* %PC.i, align 8
  %162 = add i64 %161, 3
  store i64 %162, i64* %PC.i, align 8
  %163 = inttoptr i64 %159 to i32*
  store i32 %160, i32* %163, align 4
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -20
  %166 = load i64, i64* %PC.i, align 8
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i, align 8
  store i16 837, i16* %45, align 2
  store i64 %166, i64* %47, align 8
  store i64 %165, i64* %44, align 16
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to double
  %171 = load i64, i64* %75, align 8
  store i64 %171, i64* %78, align 8
  %172 = load i64, i64* %80, align 8
  store i64 %172, i64* %75, align 8
  %173 = load i64, i64* %83, align 8
  store i64 %173, i64* %80, align 8
  %174 = load i64, i64* %86, align 8
  store i64 %174, i64* %83, align 8
  %175 = load i64, i64* %89, align 8
  store i64 %175, i64* %86, align 8
  %176 = load i64, i64* %92, align 8
  store i64 %176, i64* %89, align 8
  %177 = load i64, i64* %95, align 8
  store i64 %177, i64* %92, align 8
  store double %170, double* %94, align 8
  %178 = load i16, i16* %97, align 2
  %179 = add i16 %178, 14336
  %180 = and i16 %179, 14336
  %181 = and i16 %178, -14337
  %182 = or i16 %180, %181
  store i16 %182, i16* %97, align 2
  %183 = load i64, i64* %RSP.i17, align 8
  %184 = add i64 %183, 48
  store i64 %184, i64* %RSP.i17, align 8
  %185 = icmp ugt i64 %183, -49
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %15, align 1
  %187 = trunc i64 %184 to i32
  %188 = and i32 %187, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %22, align 1
  %193 = xor i64 %183, 16
  %194 = xor i64 %193, %184
  %195 = lshr i64 %194, 4
  %196 = trunc i64 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %28, align 1
  %198 = icmp eq i64 %184, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %31, align 1
  %200 = lshr i64 %184, 63
  %201 = trunc i64 %200 to i8
  store i8 %201, i8* %34, align 1
  %202 = lshr i64 %183, 63
  %203 = xor i64 %200, %202
  %204 = add nuw nsw i64 %203, %200
  %205 = icmp eq i64 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %40, align 1
  %207 = add i64 %166, 8
  store i64 %207, i64* %PC.i, align 8
  %208 = add i64 %183, 56
  %209 = inttoptr i64 %184 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RBP.i, align 8
  store i64 %208, i64* %6, align 8
  %211 = add i64 %166, 9
  store i64 %211, i64* %PC.i, align 8
  %212 = inttoptr i64 %208 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %3, align 8
  %214 = add i64 %183, 64
  store i64 %214, i64* %6, align 8
  ret %struct.Memory* %call2_40050c
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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

define %struct.Memory* @routine_fldt_0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
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

define %struct.Memory* @routine_fstpt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load double, double* %ST0, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = tail call fastcc %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* nonnull %0, i64 %4, double %5, i64 %6, i64 893)
  ret %struct.Memory* %8
}

define %struct.Memory* @routine_fldt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_callq_.timespi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_fildl_MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 837, i16* %7, align 2
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %9 = bitcast i32* %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %11 = bitcast i32* %10 to i64*
  store i64 %4, i64* %11, align 16
  %12 = inttoptr i64 %4 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %16 = bitcast double* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %19 = bitcast double* %18 to i64*
  store i64 %17, i64* %19, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %21 = bitcast double* %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %24 = bitcast double* %23 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %21, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %27 = bitcast double* %26 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %24, align 8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %30 = bitcast double* %29 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %27, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %33 = bitcast double* %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %30, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %36 = bitcast double* %35 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %33, align 8
  store double %14, double* %35, align 8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %39 = load i16, i16* %38, align 2
  %40 = add i16 %39, 14336
  %41 = and i16 %40, 14336
  %42 = and i16 %39, -14337
  %43 = or i16 %41, %42
  store i16 %43, i16* %38, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
attributes #2 = { nounwind }
