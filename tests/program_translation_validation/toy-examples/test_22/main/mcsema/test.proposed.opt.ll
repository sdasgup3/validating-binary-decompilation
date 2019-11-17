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
  %RAX.i26 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64* %RAX.i26, align 8
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
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i, align 8
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
  store i64 %121, i64* %59, align 16
  store i16 893, i16* %60, align 2
  store i64 %57, i64* %62, align 8
  %123 = fcmp ueq double %90, 0.000000e+00
  br i1 %123, label %routine_fstpt_MINUS0x20__rbp_.exit, label %124

; <label>:124:                                    ; preds = %routine_flds_0xee__rip_.exit
  %125 = tail call double @llvm.fabs.f64(double %90)
  %126 = fcmp oeq double %125, 0x7FF0000000000000
  br i1 %126, label %routine_fstpt_MINUS0x20__rbp_.exit, label %127

; <label>:127:                                    ; preds = %124
  %128 = fcmp olt double %125, 0x10000000000000
  br label %routine_fstpt_MINUS0x20__rbp_.exit

routine_fstpt_MINUS0x20__rbp_.exit:               ; preds = %127, %124, %routine_flds_0xee__rip_.exit
  %129 = phi i1 [ false, %routine_flds_0xee__rip_.exit ], [ false, %124 ], [ %128, %127 ]
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %83, align 1
  %131 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %132 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %131)
  %133 = lshr i32 %132, 5
  %134 = and i32 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %137, %134
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %135, align 1
  %140 = lshr i32 %132, 3
  %141 = and i32 %140, 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %144, %141
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1
  %147 = lshr i32 %132, 4
  %148 = and i32 %147, 1
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %151, %148
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %149, align 1
  %154 = and i32 %132, 1
  %155 = load i8, i8* %71, align 1
  %156 = zext i8 %155 to i32
  %157 = or i32 %156, %154
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %71, align 1
  %159 = lshr i32 %132, 2
  %160 = and i32 %159, 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %163, %160
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %161, align 1
  %166 = inttoptr i64 %121 to x86_fp80*
  %167 = fpext double %90 to x86_fp80
  store x86_fp80 %167, x86_fp80* %166, align 16
  %168 = load i64, i64* %112, align 8
  %169 = load i64, i64* %109, align 8
  store i64 %169, i64* %112, align 8
  %170 = load i64, i64* %106, align 8
  store i64 %170, i64* %109, align 8
  %171 = load i64, i64* %103, align 8
  store i64 %171, i64* %106, align 8
  %172 = load i64, i64* %100, align 8
  store i64 %172, i64* %103, align 8
  %173 = load i64, i64* %97, align 8
  store i64 %173, i64* %100, align 8
  %174 = load i64, i64* %92, align 8
  store i64 %174, i64* %97, align 8
  %175 = load i64, i64* %95, align 8
  store i64 %175, i64* %92, align 8
  store i64 %168, i64* %95, align 8
  %176 = load i16, i16* %114, align 2
  %177 = add i16 %176, 2048
  %178 = and i16 %177, 14336
  %179 = and i16 %176, -14337
  %180 = or i16 %178, %179
  store i16 %180, i16* %114, align 2
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -32
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 3
  store i64 %184, i64* %3, align 8
  store i64 %182, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %183, i64* %62, align 8
  %185 = inttoptr i64 %182 to x86_fp80*
  %186 = load x86_fp80, x86_fp80* %185, align 16
  %187 = fptrunc x86_fp80 %186 to double
  %188 = bitcast double %187 to i64
  %189 = and i64 %188, 9221120237041090560
  %190 = icmp eq i64 %189, 9218868437227405312
  %191 = and i64 %188, 2251799813685247
  %192 = icmp ne i64 %191, 0
  %193 = and i1 %190, %192
  %194 = zext i1 %193 to i8
  %195 = load i8, i8* %71, align 1
  %196 = or i8 %194, %195
  store i8 %196, i8* %71, align 1
  %197 = fcmp ueq double %187, 0.000000e+00
  br i1 %197, label %routine_fldt_MINUS0x20__rbp_.exit, label %198

; <label>:198:                                    ; preds = %routine_fstpt_MINUS0x20__rbp_.exit
  %199 = tail call double @llvm.fabs.f64(double %187)
  %200 = fcmp oeq double %199, 0x7FF0000000000000
  br i1 %200, label %routine_fldt_MINUS0x20__rbp_.exit, label %201

; <label>:201:                                    ; preds = %198
  %202 = fcmp olt double %199, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit

routine_fldt_MINUS0x20__rbp_.exit:                ; preds = %201, %198, %routine_fstpt_MINUS0x20__rbp_.exit
  %203 = phi i1 [ false, %routine_fstpt_MINUS0x20__rbp_.exit ], [ false, %198 ], [ %202, %201 ]
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %83, align 1
  %205 = icmp eq i8 %196, 0
  %206 = or i64 %188, 2251799813685248
  %207 = bitcast i64 %206 to double
  %208 = select i1 %205, double %187, double %207
  store i64 %175, i64* %95, align 8
  store i64 %174, i64* %92, align 8
  store i64 %173, i64* %97, align 8
  store i64 %172, i64* %100, align 8
  store i64 %171, i64* %103, align 8
  store i64 %170, i64* %106, align 8
  store i64 %169, i64* %109, align 8
  store double %208, double* %111, align 8
  %209 = add i16 %180, 14336
  %210 = and i16 %209, 14336
  %211 = or i16 %210, %179
  store i16 %211, i16* %114, align 2
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %183, 6
  store i64 %212, i64* %RSI.i, align 8
  %214 = add i64 %183, 8
  store i64 %214, i64* %3, align 8
  store i64 %212, i64* %59, align 16
  store i16 830, i16* %60, align 2
  store i64 %213, i64* %62, align 8
  %215 = fcmp ueq double %208, 0.000000e+00
  br i1 %215, label %routine_fstpt___rsi_.exit, label %216

; <label>:216:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit
  %217 = tail call double @llvm.fabs.f64(double %208)
  %218 = fcmp oeq double %217, 0x7FF0000000000000
  br i1 %218, label %routine_fstpt___rsi_.exit, label %219

; <label>:219:                                    ; preds = %216
  %220 = fcmp olt double %217, 0x10000000000000
  br label %routine_fstpt___rsi_.exit

routine_fstpt___rsi_.exit:                        ; preds = %219, %216, %routine_fldt_MINUS0x20__rbp_.exit
  %221 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit ], [ false, %216 ], [ %220, %219 ]
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %83, align 1
  %223 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %224 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %223)
  %225 = lshr i32 %224, 5
  %226 = and i32 %225, 1
  %227 = load i8, i8* %135, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %228, %226
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %135, align 1
  %231 = lshr i32 %224, 3
  %232 = and i32 %231, 1
  %233 = load i8, i8* %142, align 1
  %234 = zext i8 %233 to i32
  %235 = or i32 %234, %232
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %142, align 1
  %237 = lshr i32 %224, 4
  %238 = and i32 %237, 1
  %239 = load i8, i8* %149, align 1
  %240 = zext i8 %239 to i32
  %241 = or i32 %240, %238
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %149, align 1
  %243 = and i32 %224, 1
  %244 = load i8, i8* %71, align 1
  %245 = zext i8 %244 to i32
  %246 = or i32 %245, %243
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %71, align 1
  %248 = lshr i32 %224, 2
  %249 = and i32 %248, 1
  %250 = load i8, i8* %161, align 1
  %251 = zext i8 %250 to i32
  %252 = or i32 %251, %249
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %161, align 1
  %254 = inttoptr i64 %212 to x86_fp80*
  %255 = fpext double %208 to x86_fp80
  store x86_fp80 %255, x86_fp80* %254, align 16
  %256 = load i64, i64* %112, align 8
  %257 = load i64, i64* %109, align 8
  store i64 %257, i64* %112, align 8
  %258 = load i64, i64* %106, align 8
  store i64 %258, i64* %109, align 8
  %259 = load i64, i64* %103, align 8
  store i64 %259, i64* %106, align 8
  %260 = load i64, i64* %100, align 8
  store i64 %260, i64* %103, align 8
  %261 = load i64, i64* %97, align 8
  store i64 %261, i64* %100, align 8
  %262 = load i64, i64* %92, align 8
  store i64 %262, i64* %97, align 8
  %263 = load i64, i64* %95, align 8
  store i64 %263, i64* %92, align 8
  store i64 %256, i64* %95, align 8
  %264 = load i16, i16* %114, align 2
  %265 = add i16 %264, 2048
  %266 = and i16 %265, 14336
  %267 = and i16 %264, -14337
  %268 = or i16 %266, %267
  store i16 %268, i16* %114, align 2
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -56
  %271 = load i64, i64* %RAX.i26, align 8
  %272 = load i64, i64* %3, align 8
  %273 = add i64 %272, 4
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %270 to i64*
  store i64 %271, i64* %274, align 8
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, -101
  %277 = add i64 %275, 5
  %278 = load i64, i64* %6, align 8
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %6, align 8
  store i64 %276, i64* %3, align 8
  %call2_400585 = tail call %struct.Memory* @sub_400520.DoDemoFpu1(%struct.State* nonnull %0, i64 %276, %struct.Memory* %2)
  %281 = load i64, i64* %RBP.i, align 8
  %282 = add i64 %281, -48
  %283 = load double, double* %111, align 8
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 3
  store i64 %285, i64* %3, align 8
  store i64 %282, i64* %59, align 16
  store i16 893, i16* %60, align 2
  store i64 %284, i64* %62, align 8
  %286 = fcmp ueq double %283, 0.000000e+00
  br i1 %286, label %routine_fstpt_MINUS0x30__rbp_.exit, label %287

; <label>:287:                                    ; preds = %routine_fstpt___rsi_.exit
  %288 = tail call double @llvm.fabs.f64(double %283)
  %289 = fcmp oeq double %288, 0x7FF0000000000000
  br i1 %289, label %routine_fstpt_MINUS0x30__rbp_.exit, label %290

; <label>:290:                                    ; preds = %287
  %291 = fcmp olt double %288, 0x10000000000000
  br label %routine_fstpt_MINUS0x30__rbp_.exit

routine_fstpt_MINUS0x30__rbp_.exit:               ; preds = %290, %287, %routine_fstpt___rsi_.exit
  %292 = phi i1 [ false, %routine_fstpt___rsi_.exit ], [ false, %287 ], [ %291, %290 ]
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %83, align 1
  %294 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %295 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %294)
  %296 = lshr i32 %295, 5
  %297 = and i32 %296, 1
  %298 = load i8, i8* %135, align 1
  %299 = zext i8 %298 to i32
  %300 = or i32 %299, %297
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %135, align 1
  %302 = lshr i32 %295, 3
  %303 = and i32 %302, 1
  %304 = load i8, i8* %142, align 1
  %305 = zext i8 %304 to i32
  %306 = or i32 %305, %303
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %142, align 1
  %308 = lshr i32 %295, 4
  %309 = and i32 %308, 1
  %310 = load i8, i8* %149, align 1
  %311 = zext i8 %310 to i32
  %312 = or i32 %311, %309
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %149, align 1
  %314 = and i32 %295, 1
  %315 = load i8, i8* %71, align 1
  %316 = zext i8 %315 to i32
  %317 = or i32 %316, %314
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %71, align 1
  %319 = lshr i32 %295, 2
  %320 = and i32 %319, 1
  %321 = load i8, i8* %161, align 1
  %322 = zext i8 %321 to i32
  %323 = or i32 %322, %320
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %161, align 1
  %325 = inttoptr i64 %282 to x86_fp80*
  %326 = fpext double %283 to x86_fp80
  store x86_fp80 %326, x86_fp80* %325, align 16
  %327 = load i64, i64* %112, align 8
  %328 = load i64, i64* %109, align 8
  store i64 %328, i64* %112, align 8
  %329 = load i64, i64* %106, align 8
  store i64 %329, i64* %109, align 8
  %330 = load i64, i64* %103, align 8
  store i64 %330, i64* %106, align 8
  %331 = load i64, i64* %100, align 8
  store i64 %331, i64* %103, align 8
  %332 = load i64, i64* %97, align 8
  store i64 %332, i64* %100, align 8
  %333 = load i64, i64* %92, align 8
  store i64 %333, i64* %97, align 8
  %334 = load i64, i64* %95, align 8
  store i64 %334, i64* %92, align 8
  store i64 %327, i64* %95, align 8
  %335 = load i16, i16* %114, align 2
  %336 = add i16 %335, 2048
  %337 = and i16 %336, 14336
  %338 = and i16 %335, -14337
  %339 = or i16 %337, %338
  store i16 %339, i16* %114, align 2
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -32
  %342 = load i64, i64* %3, align 8
  %343 = add i64 %342, 3
  store i64 %343, i64* %3, align 8
  store i64 %341, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %342, i64* %62, align 8
  %344 = inttoptr i64 %341 to x86_fp80*
  %345 = load x86_fp80, x86_fp80* %344, align 16
  %346 = fptrunc x86_fp80 %345 to double
  %347 = bitcast double %346 to i64
  %348 = and i64 %347, 9221120237041090560
  %349 = icmp eq i64 %348, 9218868437227405312
  %350 = and i64 %347, 2251799813685247
  %351 = icmp ne i64 %350, 0
  %352 = and i1 %349, %351
  %353 = zext i1 %352 to i8
  %354 = load i8, i8* %71, align 1
  %355 = or i8 %353, %354
  store i8 %355, i8* %71, align 1
  %356 = fcmp ueq double %346, 0.000000e+00
  br i1 %356, label %routine_fldt_MINUS0x20__rbp_.exit60, label %357

; <label>:357:                                    ; preds = %routine_fstpt_MINUS0x30__rbp_.exit
  %358 = tail call double @llvm.fabs.f64(double %346)
  %359 = fcmp oeq double %358, 0x7FF0000000000000
  br i1 %359, label %routine_fldt_MINUS0x20__rbp_.exit60, label %360

; <label>:360:                                    ; preds = %357
  %361 = fcmp olt double %358, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit60

routine_fldt_MINUS0x20__rbp_.exit60:              ; preds = %360, %357, %routine_fstpt_MINUS0x30__rbp_.exit
  %362 = phi i1 [ false, %routine_fstpt_MINUS0x30__rbp_.exit ], [ false, %357 ], [ %361, %360 ]
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %83, align 1
  %364 = icmp eq i8 %355, 0
  %365 = or i64 %347, 2251799813685248
  %366 = bitcast i64 %365 to double
  %367 = select i1 %364, double %346, double %366
  store i64 %334, i64* %95, align 8
  store i64 %333, i64* %92, align 8
  store i64 %332, i64* %97, align 8
  store i64 %331, i64* %100, align 8
  store i64 %330, i64* %103, align 8
  store i64 %329, i64* %106, align 8
  store i64 %328, i64* %109, align 8
  store double %367, double* %111, align 8
  %368 = add i16 %339, 14336
  %369 = and i16 %368, 14336
  %370 = or i16 %369, %338
  store i16 %370, i16* %114, align 2
  %371 = add i64 %340, -48
  %372 = add i64 %342, 6
  store i64 %372, i64* %3, align 8
  store i64 %371, i64* %59, align 16
  store i16 877, i16* %60, align 2
  store i64 %343, i64* %62, align 8
  %373 = inttoptr i64 %371 to x86_fp80*
  %374 = load x86_fp80, x86_fp80* %373, align 16
  %375 = fptrunc x86_fp80 %374 to double
  %376 = bitcast double %375 to i64
  %377 = and i64 %376, 9221120237041090560
  %378 = icmp eq i64 %377, 9218868437227405312
  %379 = and i64 %376, 2251799813685247
  %380 = icmp ne i64 %379, 0
  %381 = and i1 %378, %380
  %382 = zext i1 %381 to i8
  %383 = or i8 %382, %355
  store i8 %383, i8* %71, align 1
  %384 = fcmp ueq double %375, 0.000000e+00
  br i1 %384, label %routine_fldt_MINUS0x30__rbp_.exit, label %385

; <label>:385:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit60
  %386 = tail call double @llvm.fabs.f64(double %375)
  %387 = fcmp oeq double %386, 0x7FF0000000000000
  br i1 %387, label %routine_fldt_MINUS0x30__rbp_.exit, label %388

; <label>:388:                                    ; preds = %385
  %389 = fcmp olt double %386, 0x10000000000000
  br label %routine_fldt_MINUS0x30__rbp_.exit

routine_fldt_MINUS0x30__rbp_.exit:                ; preds = %388, %385, %routine_fldt_MINUS0x20__rbp_.exit60
  %390 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit60 ], [ false, %385 ], [ %389, %388 ]
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %83, align 1
  %392 = icmp eq i8 %383, 0
  %393 = or i64 %376, 2251799813685248
  %394 = bitcast i64 %393 to double
  %395 = select i1 %392, double %375, double %394
  store i64 %333, i64* %95, align 8
  store i64 %332, i64* %92, align 8
  store i64 %331, i64* %97, align 8
  store i64 %330, i64* %100, align 8
  store i64 %329, i64* %103, align 8
  store i64 %328, i64* %106, align 8
  store double %367, double* %108, align 8
  store double %395, double* %111, align 8
  %396 = add i16 %370, 14336
  %397 = and i16 %396, 14336
  %398 = or i16 %397, %338
  store i16 %398, i16* %114, align 2
  %399 = load i64, i64* %6, align 8
  %400 = add i64 %342, 9
  store i64 %399, i64* %RAX.i26, align 8
  %401 = add i64 %399, 16
  %402 = add i64 %342, 12
  store i64 %402, i64* %3, align 8
  store i64 %401, i64* %59, align 16
  store i16 888, i16* %60, align 2
  store i64 %400, i64* %62, align 8
  %403 = fcmp ueq double %395, 0.000000e+00
  br i1 %403, label %routine_fstpt_0x10__rax_.exit, label %404

; <label>:404:                                    ; preds = %routine_fldt_MINUS0x30__rbp_.exit
  %405 = tail call double @llvm.fabs.f64(double %395)
  %406 = fcmp oeq double %405, 0x7FF0000000000000
  br i1 %406, label %routine_fstpt_0x10__rax_.exit, label %407

; <label>:407:                                    ; preds = %404
  %408 = fcmp olt double %405, 0x10000000000000
  br label %routine_fstpt_0x10__rax_.exit

routine_fstpt_0x10__rax_.exit:                    ; preds = %407, %404, %routine_fldt_MINUS0x30__rbp_.exit
  %409 = phi i1 [ false, %routine_fldt_MINUS0x30__rbp_.exit ], [ false, %404 ], [ %408, %407 ]
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %83, align 1
  %411 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %412 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %411)
  %413 = lshr i32 %412, 5
  %414 = and i32 %413, 1
  %415 = load i8, i8* %135, align 1
  %416 = zext i8 %415 to i32
  %417 = or i32 %416, %414
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %135, align 1
  %419 = lshr i32 %412, 3
  %420 = and i32 %419, 1
  %421 = load i8, i8* %142, align 1
  %422 = zext i8 %421 to i32
  %423 = or i32 %422, %420
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %142, align 1
  %425 = lshr i32 %412, 4
  %426 = and i32 %425, 1
  %427 = load i8, i8* %149, align 1
  %428 = zext i8 %427 to i32
  %429 = or i32 %428, %426
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %149, align 1
  %431 = and i32 %412, 1
  %432 = load i8, i8* %71, align 1
  %433 = zext i8 %432 to i32
  %434 = or i32 %433, %431
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %71, align 1
  %436 = lshr i32 %412, 2
  %437 = and i32 %436, 1
  %438 = load i8, i8* %161, align 1
  %439 = zext i8 %438 to i32
  %440 = or i32 %439, %437
  %441 = trunc i32 %440 to i8
  store i8 %441, i8* %161, align 1
  %442 = inttoptr i64 %401 to x86_fp80*
  %443 = fpext double %395 to x86_fp80
  store x86_fp80 %443, x86_fp80* %442, align 16
  %444 = load i64, i64* %112, align 8
  %445 = load i64, i64* %109, align 8
  store i64 %445, i64* %112, align 8
  %446 = load i64, i64* %106, align 8
  store i64 %446, i64* %109, align 8
  %447 = load i64, i64* %103, align 8
  store i64 %447, i64* %106, align 8
  %448 = load i64, i64* %100, align 8
  store i64 %448, i64* %103, align 8
  %449 = load i64, i64* %97, align 8
  store i64 %449, i64* %100, align 8
  %450 = load i64, i64* %92, align 8
  store i64 %450, i64* %97, align 8
  %451 = load i64, i64* %95, align 8
  store i64 %451, i64* %92, align 8
  store i64 %444, i64* %95, align 8
  %452 = load i16, i16* %114, align 2
  %453 = add i16 %452, 2048
  %454 = and i16 %453, 14336
  %455 = and i16 %452, -14337
  %456 = or i16 %454, %455
  store i16 %456, i16* %114, align 2
  %457 = load i64, i64* %RAX.i26, align 8
  %458 = bitcast i64 %445 to double
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 2
  store i64 %460, i64* %3, align 8
  store i64 %457, i64* %59, align 16
  store i16 824, i16* %60, align 2
  store i64 %459, i64* %62, align 8
  %461 = fcmp ueq double %458, 0.000000e+00
  br i1 %461, label %routine_fstpt___rax_.exit, label %462

; <label>:462:                                    ; preds = %routine_fstpt_0x10__rax_.exit
  %463 = tail call double @llvm.fabs.f64(double %458)
  %464 = fcmp oeq double %463, 0x7FF0000000000000
  br i1 %464, label %routine_fstpt___rax_.exit, label %465

; <label>:465:                                    ; preds = %462
  %466 = fcmp olt double %463, 0x10000000000000
  br label %routine_fstpt___rax_.exit

routine_fstpt___rax_.exit:                        ; preds = %465, %462, %routine_fstpt_0x10__rax_.exit
  %467 = phi i1 [ false, %routine_fstpt_0x10__rax_.exit ], [ false, %462 ], [ %466, %465 ]
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %83, align 1
  %469 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4
  %470 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %469)
  %471 = lshr i32 %470, 5
  %472 = and i32 %471, 1
  %473 = load i8, i8* %135, align 1
  %474 = zext i8 %473 to i32
  %475 = or i32 %474, %472
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %135, align 1
  %477 = lshr i32 %470, 3
  %478 = and i32 %477, 1
  %479 = load i8, i8* %142, align 1
  %480 = zext i8 %479 to i32
  %481 = or i32 %480, %478
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %142, align 1
  %483 = lshr i32 %470, 4
  %484 = and i32 %483, 1
  %485 = load i8, i8* %149, align 1
  %486 = zext i8 %485 to i32
  %487 = or i32 %486, %484
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %149, align 1
  %489 = and i32 %470, 1
  %490 = load i8, i8* %71, align 1
  %491 = zext i8 %490 to i32
  %492 = or i32 %491, %489
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %71, align 1
  %494 = lshr i32 %470, 2
  %495 = and i32 %494, 1
  %496 = load i8, i8* %161, align 1
  %497 = zext i8 %496 to i32
  %498 = or i32 %497, %495
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %161, align 1
  %500 = inttoptr i64 %457 to x86_fp80*
  %501 = fpext double %458 to x86_fp80
  store x86_fp80 %501, x86_fp80* %500, align 16
  %502 = load i64, i64* %112, align 8
  %503 = load i64, i64* %109, align 8
  store i64 %503, i64* %112, align 8
  %504 = load i64, i64* %106, align 8
  store i64 %504, i64* %109, align 8
  %505 = load i64, i64* %103, align 8
  store i64 %505, i64* %106, align 8
  %506 = load i64, i64* %100, align 8
  store i64 %506, i64* %103, align 8
  %507 = load i64, i64* %97, align 8
  store i64 %507, i64* %100, align 8
  %508 = load i64, i64* %92, align 8
  store i64 %508, i64* %97, align 8
  %509 = load i64, i64* %95, align 8
  store i64 %509, i64* %92, align 8
  store i64 %502, i64* %95, align 8
  %510 = load i16, i16* %114, align 2
  %511 = add i16 %510, 2048
  %512 = and i16 %511, 14336
  %513 = and i16 %510, -14337
  %514 = or i16 %512, %513
  store i16 %514, i16* %114, align 2
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %515 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64 4294967295), i64* %RDI.i, align 8
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i18 = bitcast %union.anon* %516 to i32*
  %RCX.i19 = getelementptr inbounds %union.anon, %union.anon* %516, i64 0, i32 0
  store i64 0, i64* %RCX.i19, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i16 = bitcast %union.anon* %517 to i8*
  store i8 0, i8* %DL.i16, align 1
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %518 = add i64 %515, -379
  %519 = add i64 %515, 16
  %520 = load i64, i64* %6, align 8
  %521 = add i64 %520, -8
  %522 = inttoptr i64 %521 to i64*
  store i64 %519, i64* %522, align 8
  store i64 %521, i64* %6, align 8
  store i64 %518, i64* %3, align 8
  %523 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400585)
  %524 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i19, align 8
  %EAX.i = bitcast %union.anon* %39 to i32*
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -60
  %527 = load i32, i32* %EAX.i, align 4
  %528 = add i64 %524, 5
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %526 to i32*
  store i32 %527, i32* %529, align 4
  %530 = load i32, i32* %ECX.i18, align 4
  %531 = zext i32 %530 to i64
  %532 = load i64, i64* %3, align 8
  store i64 %531, i64* %RAX.i26, align 8
  %533 = load i64, i64* %6, align 8
  %534 = add i64 %533, 96
  store i64 %534, i64* %6, align 8
  %535 = icmp ugt i64 %533, -97
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %14, align 1
  %537 = trunc i64 %534 to i32
  %538 = and i32 %537, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i64 %534, %533
  %544 = lshr i64 %543, 4
  %545 = trunc i64 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %26, align 1
  %547 = icmp eq i64 %534, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %29, align 1
  %549 = lshr i64 %534, 63
  %550 = trunc i64 %549 to i8
  store i8 %550, i8* %32, align 1
  %551 = lshr i64 %533, 63
  %552 = xor i64 %549, %551
  %553 = add nuw nsw i64 %552, %549
  %554 = icmp eq i64 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %38, align 1
  %556 = add i64 %532, 7
  store i64 %556, i64* %3, align 8
  %557 = add i64 %533, 104
  %558 = inttoptr i64 %534 to i64*
  %559 = load i64, i64* %558, align 8
  store i64 %559, i64* %RBP.i, align 8
  store i64 %557, i64* %6, align 8
  %560 = add i64 %532, 8
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %557 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %3, align 8
  %563 = add i64 %533, 112
  store i64 %563, i64* %6, align 8
  ret %struct.Memory* %523
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt___rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %ST0 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %3 = load i64, i64* %RSI, align 8
  %4 = load double, double* %ST0, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %3, i64* %8, align 16
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 830, i16* %9, align 2
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_fstpt_0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %9 = bitcast i32* %8 to i64*
  store i64 %4, i64* %9, align 16
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 888, i16* %10, align 2
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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
