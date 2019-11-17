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

declare %struct.Memory* @sub_4005c0.timespi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @DoDemoFpu1(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %10, 7
  %12 = add i64 %7, -56
  store i64 %12, i64* %6, align 8
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
  store i64 %42, i64* %3, align 8
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
  store i64 %104, i64* %3, align 8
  store i64 %103, i64* %44, align 16
  store i16 893, i16* %45, align 2
  store i64 %42, i64* %47, align 8
  %105 = fcmp ueq double %73, 0.000000e+00
  br i1 %105, label %routine_fstpt_MINUS0x10__rbp_.exit, label %106

; <label>:106:                                    ; preds = %routine_fldt_0x10__rbp_.exit
  %107 = tail call double @llvm.fabs.f64(double %73)
  %108 = fcmp oeq double %107, 0x7FF0000000000000
  br i1 %108, label %routine_fstpt_MINUS0x10__rbp_.exit, label %109

; <label>:109:                                    ; preds = %106
  %110 = fcmp olt double %107, 0x10000000000000
  br label %routine_fstpt_MINUS0x10__rbp_.exit

routine_fstpt_MINUS0x10__rbp_.exit:               ; preds = %109, %106, %routine_fldt_0x10__rbp_.exit
  %111 = phi i1 [ false, %routine_fldt_0x10__rbp_.exit ], [ false, %106 ], [ %110, %109 ]
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %69, align 1
  %113 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %114 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %113)
  %115 = lshr i32 %114, 5
  %116 = and i32 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %119, %116
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %117, align 1
  %122 = lshr i32 %114, 3
  %123 = and i32 %122, 1
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %126, %123
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %124, align 1
  %129 = lshr i32 %114, 4
  %130 = and i32 %129, 1
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %133, %130
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %131, align 1
  %136 = and i32 %114, 1
  %137 = load i8, i8* %58, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, %136
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %58, align 1
  %141 = lshr i32 %114, 2
  %142 = and i32 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %145, %142
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = inttoptr i64 %103 to x86_fp80*
  %149 = fpext double %73 to x86_fp80
  store x86_fp80 %149, x86_fp80* %148, align 16
  %150 = load i64, i64* %95, align 8
  %151 = load i64, i64* %92, align 8
  store i64 %151, i64* %95, align 8
  %152 = load i64, i64* %89, align 8
  store i64 %152, i64* %92, align 8
  %153 = load i64, i64* %86, align 8
  store i64 %153, i64* %89, align 8
  %154 = load i64, i64* %83, align 8
  store i64 %154, i64* %86, align 8
  %155 = load i64, i64* %80, align 8
  store i64 %155, i64* %83, align 8
  %156 = load i64, i64* %75, align 8
  store i64 %156, i64* %80, align 8
  %157 = load i64, i64* %78, align 8
  store i64 %157, i64* %75, align 8
  store i64 %150, i64* %78, align 8
  %158 = load i16, i16* %97, align 2
  %159 = add i16 %158, 2048
  %160 = and i16 %159, 14336
  %161 = and i16 %158, -14337
  %162 = or i16 %160, %161
  store i16 %162, i16* %97, align 2
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -16
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 3
  store i64 %166, i64* %3, align 8
  store i64 %164, i64* %44, align 16
  store i16 877, i16* %45, align 2
  store i64 %165, i64* %47, align 8
  %167 = inttoptr i64 %164 to x86_fp80*
  %168 = load x86_fp80, x86_fp80* %167, align 16
  %169 = fptrunc x86_fp80 %168 to double
  %170 = bitcast double %169 to i64
  %171 = and i64 %170, 9221120237041090560
  %172 = icmp eq i64 %171, 9218868437227405312
  %173 = and i64 %170, 2251799813685247
  %174 = icmp ne i64 %173, 0
  %175 = and i1 %172, %174
  %176 = zext i1 %175 to i8
  %177 = load i8, i8* %58, align 1
  %178 = or i8 %176, %177
  store i8 %178, i8* %58, align 1
  %179 = fcmp ueq double %169, 0.000000e+00
  br i1 %179, label %routine_fldt_MINUS0x10__rbp_.exit, label %180

; <label>:180:                                    ; preds = %routine_fstpt_MINUS0x10__rbp_.exit
  %181 = tail call double @llvm.fabs.f64(double %169)
  %182 = fcmp oeq double %181, 0x7FF0000000000000
  br i1 %182, label %routine_fldt_MINUS0x10__rbp_.exit, label %183

; <label>:183:                                    ; preds = %180
  %184 = fcmp olt double %181, 0x10000000000000
  br label %routine_fldt_MINUS0x10__rbp_.exit

routine_fldt_MINUS0x10__rbp_.exit:                ; preds = %183, %180, %routine_fstpt_MINUS0x10__rbp_.exit
  %185 = phi i1 [ false, %routine_fstpt_MINUS0x10__rbp_.exit ], [ false, %180 ], [ %184, %183 ]
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %69, align 1
  %187 = icmp eq i8 %178, 0
  %188 = or i64 %170, 2251799813685248
  %189 = bitcast i64 %188 to double
  %190 = select i1 %187, double %169, double %189
  store i64 %157, i64* %78, align 8
  store i64 %156, i64* %75, align 8
  store i64 %155, i64* %80, align 8
  store i64 %154, i64* %83, align 8
  store i64 %153, i64* %86, align 8
  store i64 %152, i64* %89, align 8
  store i64 %151, i64* %92, align 8
  store double %190, double* %94, align 8
  %191 = add i16 %162, 14336
  %192 = and i16 %191, 14336
  %193 = or i16 %192, %161
  store i16 %193, i16* %97, align 2
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i31 = getelementptr inbounds %union.anon, %union.anon* %194, i64 0, i32 0
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %165, 6
  store i64 %195, i64* %RAX.i31, align 8
  %197 = add i64 %165, 8
  store i64 %197, i64* %3, align 8
  store i64 %195, i64* %44, align 16
  store i16 824, i16* %45, align 2
  store i64 %196, i64* %47, align 8
  %198 = fcmp ueq double %190, 0.000000e+00
  br i1 %198, label %routine_fstpt___rax_.exit, label %199

; <label>:199:                                    ; preds = %routine_fldt_MINUS0x10__rbp_.exit
  %200 = tail call double @llvm.fabs.f64(double %190)
  %201 = fcmp oeq double %200, 0x7FF0000000000000
  br i1 %201, label %routine_fstpt___rax_.exit, label %202

; <label>:202:                                    ; preds = %199
  %203 = fcmp olt double %200, 0x10000000000000
  br label %routine_fstpt___rax_.exit

routine_fstpt___rax_.exit:                        ; preds = %202, %199, %routine_fldt_MINUS0x10__rbp_.exit
  %204 = phi i1 [ false, %routine_fldt_MINUS0x10__rbp_.exit ], [ false, %199 ], [ %203, %202 ]
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %69, align 1
  %206 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %207 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %206)
  %208 = lshr i32 %207, 5
  %209 = and i32 %208, 1
  %210 = load i8, i8* %117, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %209
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %117, align 1
  %214 = lshr i32 %207, 3
  %215 = and i32 %214, 1
  %216 = load i8, i8* %124, align 1
  %217 = zext i8 %216 to i32
  %218 = or i32 %217, %215
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %124, align 1
  %220 = lshr i32 %207, 4
  %221 = and i32 %220, 1
  %222 = load i8, i8* %131, align 1
  %223 = zext i8 %222 to i32
  %224 = or i32 %223, %221
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %131, align 1
  %226 = and i32 %207, 1
  %227 = load i8, i8* %58, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %228, %226
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %58, align 1
  %231 = lshr i32 %207, 2
  %232 = and i32 %231, 1
  %233 = load i8, i8* %143, align 1
  %234 = zext i8 %233 to i32
  %235 = or i32 %234, %232
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %143, align 1
  %237 = inttoptr i64 %195 to x86_fp80*
  %238 = fpext double %190 to x86_fp80
  store x86_fp80 %238, x86_fp80* %237, align 16
  %239 = load i64, i64* %95, align 8
  %240 = load i64, i64* %92, align 8
  store i64 %240, i64* %95, align 8
  %241 = load i64, i64* %89, align 8
  store i64 %241, i64* %92, align 8
  %242 = load i64, i64* %86, align 8
  store i64 %242, i64* %89, align 8
  %243 = load i64, i64* %83, align 8
  store i64 %243, i64* %86, align 8
  %244 = load i64, i64* %80, align 8
  store i64 %244, i64* %83, align 8
  %245 = load i64, i64* %75, align 8
  store i64 %245, i64* %80, align 8
  %246 = load i64, i64* %78, align 8
  store i64 %246, i64* %75, align 8
  store i64 %239, i64* %78, align 8
  %247 = load i16, i16* %97, align 2
  %248 = add i16 %247, 2048
  %249 = and i16 %248, 14336
  %250 = and i16 %247, -14337
  %251 = or i16 %249, %250
  store i16 %251, i16* %97, align 2
  %RCX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %252 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i, align 8
  store i8 0, i8* %15, align 1
  store i8 1, i8* %22, align 1
  store i8 1, i8* %31, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %28, align 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i12 = bitcast %union.anon* %253 to i8*
  store i8 0, i8* %DL.i12, align 1
  %AL.i = bitcast %union.anon* %194 to i8*
  store i8 0, i8* %AL.i, align 1
  %254 = add i64 %252, 138
  %255 = add i64 %252, 11
  %256 = load i64, i64* %6, align 8
  %257 = add i64 %256, -8
  %258 = inttoptr i64 %257 to i64*
  store i64 %255, i64* %258, align 8
  store i64 %257, i64* %6, align 8
  store i64 %254, i64* %3, align 8
  %call2_40053c = tail call %struct.Memory* @sub_4005c0.timespi(%struct.State* nonnull %0, i64 %254, %struct.Memory* %2)
  %EAX.i = bitcast %union.anon* %194 to i32*
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -20
  %261 = load i32, i32* %EAX.i, align 4
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, 3
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %260 to i32*
  store i32 %261, i32* %264, align 4
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -20
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, 3
  store i64 %268, i64* %3, align 8
  store i16 837, i16* %45, align 2
  store i64 %267, i64* %47, align 8
  store i64 %266, i64* %44, align 16
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = sitofp i32 %270 to double
  %272 = load i64, i64* %75, align 8
  store i64 %272, i64* %78, align 8
  %273 = load i64, i64* %80, align 8
  store i64 %273, i64* %75, align 8
  %274 = load i64, i64* %83, align 8
  store i64 %274, i64* %80, align 8
  %275 = load i64, i64* %86, align 8
  store i64 %275, i64* %83, align 8
  %276 = load i64, i64* %89, align 8
  store i64 %276, i64* %86, align 8
  %277 = load i64, i64* %92, align 8
  store i64 %277, i64* %89, align 8
  %278 = load i64, i64* %95, align 8
  store i64 %278, i64* %92, align 8
  store double %271, double* %94, align 8
  %279 = load i16, i16* %97, align 2
  %280 = add i16 %279, 14336
  %281 = and i16 %280, 14336
  %282 = and i16 %279, -14337
  %283 = or i16 %281, %282
  store i16 %283, i16* %97, align 2
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, 48
  store i64 %285, i64* %6, align 8
  %286 = icmp ugt i64 %284, -49
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %15, align 1
  %288 = trunc i64 %285 to i32
  %289 = and i32 %288, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %22, align 1
  %294 = xor i64 %284, 16
  %295 = xor i64 %294, %285
  %296 = lshr i64 %295, 4
  %297 = trunc i64 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %28, align 1
  %299 = icmp eq i64 %285, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %31, align 1
  %301 = lshr i64 %285, 63
  %302 = trunc i64 %301 to i8
  store i8 %302, i8* %34, align 1
  %303 = lshr i64 %284, 63
  %304 = xor i64 %301, %303
  %305 = add nuw nsw i64 %304, %301
  %306 = icmp eq i64 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %40, align 1
  %308 = add i64 %267, 8
  store i64 %308, i64* %3, align 8
  %309 = add i64 %284, 56
  %310 = inttoptr i64 %285 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RBP.i, align 8
  store i64 %309, i64* %6, align 8
  %312 = add i64 %267, 9
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %309 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %3, align 8
  %315 = add i64 %284, 64
  store i64 %315, i64* %6, align 8
  ret %struct.Memory* %call2_40053c
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_fldt_0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %9 = bitcast i32* %8 to i64*
  store i64 %4, i64* %9, align 16
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %10, align 2
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %12 = bitcast i32* %11 to i64*
  store i64 %6, i64* %12, align 8
  %13 = fcmp ueq double %5, 0.000000e+00
  br i1 %13, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %14

; <label>:14:                                     ; preds = %block_400488
  %15 = tail call double @llvm.fabs.f64(double %5)
  %16 = fcmp oeq double %15, 0x7FF0000000000000
  br i1 %16, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %17

; <label>:17:                                     ; preds = %14
  %18 = fcmp olt double %15, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %17, %14, %block_400488
  %19 = phi i1 [ false, %block_400488 ], [ false, %14 ], [ %18, %17 ]
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %20, i8* %21, align 1
  %22 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %23 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %22)
  %24 = lshr i32 %23, 5
  %25 = and i32 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %25
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  %31 = lshr i32 %23, 3
  %32 = and i32 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %32
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %33, align 1
  %38 = lshr i32 %23, 4
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %39
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = and i32 %23, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %45
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  %51 = lshr i32 %23, 2
  %52 = and i32 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %52
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  %58 = inttoptr i64 %4 to x86_fp80*
  %59 = fpext double %5 to x86_fp80
  store x86_fp80 %59, x86_fp80* %58, align 16
  %60 = bitcast double* %ST0 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %72 = bitcast double* %71 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %69, align 8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %75 = bitcast double* %74 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %72, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %78 = bitcast double* %77 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %75, align 8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %81 = bitcast double* %80 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %78, align 8
  store i64 %61, i64* %81, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %84 = load i16, i16* %83, align 2
  %85 = add i16 %84, 2048
  %86 = and i16 %85, 14336
  %87 = and i16 %84, -14337
  %88 = or i16 %86, %87
  store i16 %88, i16* %83, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_fldt_MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt___rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RAX, align 8
  %4 = load double, double* %ST0, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %3, i64* %8, align 16
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 824, i16* %9, align 2
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %11 = bitcast i32* %10 to i64*
  store i64 %5, i64* %11, align 8
  %12 = fcmp ueq double %4, 0.000000e+00
  br i1 %12, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %13

; <label>:13:                                     ; preds = %block_400488
  %14 = tail call double @llvm.fabs.f64(double %4)
  %15 = fcmp oeq double %14, 0x7FF0000000000000
  br i1 %15, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %16

; <label>:16:                                     ; preds = %13
  %17 = fcmp olt double %14, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %16, %13, %block_400488
  %18 = phi i1 [ false, %block_400488 ], [ false, %13 ], [ %17, %16 ]
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %19, i8* %20, align 1
  %21 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %22 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %21)
  %23 = lshr i32 %22, 5
  %24 = and i32 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %24
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = lshr i32 %22, 3
  %31 = and i32 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %31
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = lshr i32 %22, 4
  %38 = and i32 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %38
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  %44 = and i32 %22, 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %44
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = lshr i32 %22, 2
  %51 = and i32 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %51
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = inttoptr i64 %3 to x86_fp80*
  %58 = fpext double %4 to x86_fp80
  store x86_fp80 %58, x86_fp80* %57, align 16
  %59 = bitcast double* %ST0 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %62 = bitcast double* %61 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %59, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %62, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %68 = bitcast double* %67 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %65, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %68, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  store i64 %60, i64* %80, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %83 = load i16, i16* %82, align 2
  %84 = add i16 %83, 2048
  %85 = and i16 %84, 14336
  %86 = and i16 %83, -14337
  %87 = or i16 %85, %86
  store i16 %87, i16* %82, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.timespi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_fildl_MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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
attributes #2 = { alwaysinline norecurse nounwind }
attributes #3 = { alwaysinline nounwind }
attributes #4 = { nounwind }
