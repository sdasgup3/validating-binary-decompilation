; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x4bd7e0_type = type <{ [8 x i8] }>
%G_0x4bd7e8_type = type <{ [8 x i8] }>
%G_0x4bd7f0_type = type <{ [8 x i8] }>
%G_0x4bd7f8_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4c236c_type = type <{ [8 x i8] }>
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
@G_0x4bd7e0 = local_unnamed_addr global %G_0x4bd7e0_type zeroinitializer
@G_0x4bd7e8 = local_unnamed_addr global %G_0x4bd7e8_type zeroinitializer
@G_0x4bd7f0 = local_unnamed_addr global %G_0x4bd7f0_type zeroinitializer
@G_0x4bd7f8 = local_unnamed_addr global %G_0x4bd7f8_type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G__0x4c236c = global %G__0x4c236c_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_475680.img2buf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401010.write_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @write_out_picture(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i605 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %RBX.i605, align 8
  %13 = add i64 %10, 4
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %7, -168
  store i64 %17, i64* %6, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i822 = bitcast %union.anon* %24 to i32*
  %RAX.i823 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  store i8 0, i8* %18, align 1
  store i8 1, i8* %19, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %20, align 1
  %AL.i819 = bitcast %union.anon* %24 to i8*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i820 = bitcast %union.anon* %25 to i8*
  store i8 0, i8* %CL.i820, align 1
  store i64 8, i64* %RAX.i823, align 8
  %RDI.i814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %26 = load i64, i64* %RBP.i, align 8
  %27 = add i64 %26, -16
  %28 = load i64, i64* %RDI.i814, align 8
  %29 = add i64 %16, 20
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i811 = bitcast %union.anon* %31 to i32*
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -20
  %34 = load i32, i32* %ESI.i811, align 4
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* bitcast (%G_0x4bd7e0_type* @G_0x4bd7e0 to i64*), align 8
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -48
  %42 = add i64 %38, 12
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* bitcast (%G_0x4bd7e8_type* @G_0x4bd7e8 to i64*), align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -40
  %48 = add i64 %44, 12
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* bitcast (%G_0x4bd7f0_type* @G_0x4bd7f0 to i64*), align 8
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -64
  %54 = add i64 %50, 12
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i64*
  store i64 %51, i64* %55, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* bitcast (%G_0x4bd7f8_type* @G_0x4bd7f8 to i64*), align 8
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -56
  %60 = add i64 %56, 12
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %61, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %63, i64* %RDI.i814, align 8
  %RSI.i786 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %64 = add i64 %63, 72656
  %65 = add i64 %62, 14
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI.i786, align 8
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -100
  %71 = load i32, i32* %EAX.i822, align 4
  %72 = add i64 %62, 17
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %ESI.i811, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* %3, align 8
  store i64 %75, i64* %RAX.i823, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %78 = sext i32 %74 to i64
  %79 = lshr i64 %78, 32
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -100
  %82 = add i64 %76, 6
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RSI.i786, align 8
  %86 = add i64 %76, 8
  store i64 %86, i64* %3, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %88 = sext i32 %84 to i64
  %89 = shl nuw i64 %79, 32
  %90 = or i64 %89, %75
  %91 = sdiv i64 %90, %88
  %92 = shl i64 %91, 32
  %93 = ashr exact i64 %92, 32
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %97, label %95

; <label>:95:                                     ; preds = %entry
  %96 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %86, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre8 = load i32, i32* %EAX.i822, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:97:                                     ; preds = %entry
  %98 = srem i64 %90, %88
  %99 = and i64 %91, 4294967295
  store i64 %99, i64* %RAX.i823, align 8
  %100 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %101 = and i64 %98, 4294967295
  store i64 %101, i64* %100, align 8
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %102 = trunc i64 %91 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %97, %95
  %103 = phi i64 [ %.pre9, %95 ], [ %86, %97 ]
  %104 = phi i32 [ %.pre8, %95 ], [ %102, %97 ]
  %105 = phi i64 [ %.pre, %95 ], [ %80, %97 ]
  %106 = phi %struct.Memory* [ %96, %95 ], [ %2, %97 ]
  %107 = add i64 %105, -84
  %108 = add i64 %103, 3
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i32*
  store i32 %104, i32* %109, align 4
  %110 = load i64, i64* %3, align 8
  %111 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %111, i64* %RDI.i814, align 8
  %112 = add i64 %111, 3312
  %113 = add i64 %110, 15
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  store i8 0, i8* %18, align 1
  %116 = and i32 %115, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %121 = icmp eq i32 %115, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %21, align 1
  %123 = lshr i32 %115, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -101
  %127 = load i8, i8* %CL.i820, align 1
  %128 = add i64 %110, 18
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i8*
  store i8 %127, i8* %129, align 1
  %130 = load i64, i64* %3, align 8
  %131 = load i8, i8* %21, align 1
  %132 = icmp ne i8 %131, 0
  %.v39 = select i1 %132, i64 24, i64 6
  %133 = add i64 %130, %.v39
  store i64 %133, i64* %3, align 8
  %cmpBr_475aea = icmp eq i8 %131, 1
  br i1 %cmpBr_475aea, label %block_.L_475b02, label %block_475af0

block_475af0:                                     ; preds = %routine_idivl__esi.exit
  %134 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %134, i64* %RAX.i823, align 8
  %135 = add i64 %134, 72
  %136 = add i64 %133, 12
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, -3
  %140 = icmp ult i32 %138, 3
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %18, align 1
  %142 = and i32 %139, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %19, align 1
  %147 = xor i32 %139, %138
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %20, align 1
  %151 = icmp eq i32 %139, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %21, align 1
  %153 = lshr i32 %139, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %22, align 1
  %155 = lshr i32 %138, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %23, align 1
  store i8 %152, i8* %CL.i820, align 1
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -101
  %162 = add i64 %133, 18
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i8*
  store i8 %152, i8* %163, align 1
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_475b02

block_.L_475b02:                                  ; preds = %block_475af0, %routine_idivl__esi.exit
  %164 = phi i64 [ %.pre10, %block_475af0 ], [ %133, %routine_idivl__esi.exit ]
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -101
  %167 = add i64 %164, 3
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i8*
  %169 = load i8, i8* %168, align 1
  %170 = and i8 %169, 1
  store i8 %170, i8* %AL.i819, align 1
  store i8 0, i8* %18, align 1
  %171 = zext i8 %170 to i32
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = xor i8 %173, 1
  store i8 %174, i8* %19, align 1
  %175 = xor i8 %170, 1
  store i8 %175, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %20, align 1
  %RCX.i746 = getelementptr inbounds %union.anon, %union.anon* %25, i64 0, i32 0
  %176 = zext i8 %170 to i64
  store i64 %176, i64* %RCX.i746, align 8
  %177 = add i64 %165, -88
  %178 = zext i8 %170 to i32
  %179 = add i64 %164, 11
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %180, align 4
  %RDX.i740 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -16
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RDX.i740, align 8
  %187 = add i64 %186, 6388
  %188 = add i64 %183, 11
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  store i8 0, i8* %18, align 1
  %191 = and i32 %190, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %196 = icmp eq i32 %190, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %21, align 1
  %198 = lshr i32 %190, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %.v = select i1 %196, i64 22, i64 17
  %200 = add i64 %183, %.v
  store i64 %200, i64* %3, align 8
  br i1 %196, label %block_.L_475b23, label %block_475b1e

block_475b1e:                                     ; preds = %block_.L_475b02
  %201 = add i64 %200, 1224
  store i64 %201, i64* %3, align 8
  br label %block_.L_475fe6

block_.L_475b23:                                  ; preds = %block_.L_475b02
  %202 = add i64 %200, 4
  store i64 %202, i64* %3, align 8
  %203 = load i64, i64* %185, align 8
  store i64 %203, i64* %RAX.i823, align 8
  %204 = add i64 %203, 6560
  %205 = add i64 %200, 11
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  store i8 0, i8* %18, align 1
  %208 = and i32 %207, 255
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %213 = icmp eq i32 %207, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %21, align 1
  %215 = lshr i32 %207, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %.v36 = select i1 %213, i64 171, i64 17
  %217 = add i64 %200, %.v36
  store i64 %217, i64* %3, align 8
  br i1 %213, label %block_.L_475bce, label %block_475b34

block_475b34:                                     ; preds = %block_.L_475b23
  store i64 2, i64* %RAX.i823, align 8
  %218 = add i64 %217, 9
  store i64 %218, i64* %3, align 8
  %219 = load i64, i64* %185, align 8
  store i64 %219, i64* %RCX.i746, align 8
  %220 = add i64 %219, 6552
  %221 = add i64 %217, 16
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %RCX.i746, align 8
  %225 = shl nsw i64 %224, 2
  %226 = add i64 %181, -48
  %227 = add i64 %226, %225
  %228 = add i64 %217, 20
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RDX.i740, align 8
  %232 = add i64 %217, 24
  store i64 %232, i64* %3, align 8
  %233 = load i64, i64* %185, align 8
  store i64 %233, i64* %RCX.i746, align 8
  %234 = add i64 %233, 6564
  %235 = add i64 %217, 31
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %230 to i64
  %239 = sext i32 %237 to i64
  %240 = mul nsw i64 %239, %238
  %241 = trunc i64 %240 to i32
  %242 = and i64 %240, 4294967295
  store i64 %242, i64* %RDX.i740, align 8
  %243 = shl i64 %240, 32
  %244 = ashr exact i64 %243, 32
  %245 = icmp ne i64 %244, %240
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %18, align 1
  %247 = and i32 %241, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %252 = lshr i32 %241, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %22, align 1
  store i8 %246, i8* %23, align 1
  %254 = add i64 %181, -68
  %255 = trunc i64 %240 to i32
  %256 = add i64 %217, 34
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %254 to i32*
  store i32 %255, i32* %257, align 4
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -16
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 4
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %RCX.i746, align 8
  %264 = add i64 %263, 6552
  %265 = add i64 %260, 11
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %RCX.i746, align 8
  %269 = shl nsw i64 %268, 2
  %270 = add i64 %258, -48
  %271 = add i64 %270, %269
  %272 = add i64 %260, 15
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RDX.i740, align 8
  %276 = add i64 %260, 19
  store i64 %276, i64* %3, align 8
  %277 = load i64, i64* %262, align 8
  store i64 %277, i64* %RCX.i746, align 8
  %278 = add i64 %277, 6568
  %279 = add i64 %260, 26
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %274 to i64
  %283 = sext i32 %281 to i64
  %284 = mul nsw i64 %283, %282
  %285 = trunc i64 %284 to i32
  %286 = and i64 %284, 4294967295
  store i64 %286, i64* %RDX.i740, align 8
  %287 = shl i64 %284, 32
  %288 = ashr exact i64 %287, 32
  %289 = icmp ne i64 %288, %284
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %18, align 1
  %291 = and i32 %285, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %296 = lshr i32 %285, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %22, align 1
  store i8 %290, i8* %23, align 1
  %298 = add i64 %258, -72
  %299 = trunc i64 %284 to i32
  %300 = add i64 %260, 29
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to i32*
  store i32 %299, i32* %301, align 4
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -16
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, 4
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %303 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RCX.i746, align 8
  %308 = add i64 %307, 6552
  %309 = add i64 %304, 11
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %RCX.i746, align 8
  %313 = shl nsw i64 %312, 2
  %314 = add i64 %302, -64
  %315 = add i64 %314, %313
  %316 = add i64 %304, 15
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RDX.i740, align 8
  %320 = add i64 %304, 19
  store i64 %320, i64* %3, align 8
  %321 = load i64, i64* %306, align 8
  store i64 %321, i64* %RCX.i746, align 8
  %322 = load i32, i32* %EAX.i822, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RSI.i786, align 8
  %324 = add i64 %321, 6556
  %325 = add i64 %304, 27
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sub i32 %322, %327
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI.i786, align 8
  %330 = sext i32 %318 to i64
  %331 = sext i32 %328 to i64
  %332 = mul nsw i64 %331, %330
  %333 = trunc i64 %332 to i32
  %334 = and i64 %332, 4294967295
  store i64 %334, i64* %RDX.i740, align 8
  %335 = shl i64 %332, 32
  %336 = ashr exact i64 %335, 32
  %337 = icmp ne i64 %336, %332
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %18, align 1
  %339 = and i32 %333, 255
  %340 = tail call i32 @llvm.ctpop.i32(i32 %339)
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  store i8 %343, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %344 = lshr i32 %333, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %22, align 1
  store i8 %338, i8* %23, align 1
  %346 = add i64 %304, 34
  store i64 %346, i64* %3, align 8
  %347 = load i64, i64* %306, align 8
  store i64 %347, i64* %RCX.i746, align 8
  %348 = add i64 %347, 6572
  %349 = add i64 %304, 41
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = shl i64 %332, 32
  %353 = ashr exact i64 %352, 32
  %354 = sext i32 %351 to i64
  %355 = mul nsw i64 %354, %353
  %356 = trunc i64 %355 to i32
  %357 = and i64 %355, 4294967295
  store i64 %357, i64* %RDX.i740, align 8
  %358 = shl i64 %355, 32
  %359 = ashr exact i64 %358, 32
  %360 = icmp ne i64 %359, %355
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %18, align 1
  %362 = and i32 %356, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %367 = lshr i32 %356, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %22, align 1
  store i8 %361, i8* %23, align 1
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -76
  %371 = trunc i64 %355 to i32
  %372 = add i64 %304, 44
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %370 to i32*
  store i32 %371, i32* %373, align 4
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -16
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RCX.i746, align 8
  %380 = add i64 %379, 6552
  %381 = add i64 %376, 11
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  store i64 %384, i64* %RCX.i746, align 8
  %385 = shl nsw i64 %384, 2
  %386 = add i64 %374, -64
  %387 = add i64 %386, %385
  %388 = add i64 %376, 15
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RDX.i740, align 8
  %392 = add i64 %376, 19
  store i64 %392, i64* %3, align 8
  %393 = load i64, i64* %378, align 8
  store i64 %393, i64* %RCX.i746, align 8
  %394 = load i64, i64* %RAX.i823, align 8
  %395 = add i64 %393, 6556
  %396 = add i64 %376, 25
  store i64 %396, i64* %3, align 8
  %397 = trunc i64 %394 to i32
  %398 = inttoptr i64 %395 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = sub i32 %397, %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RAX.i823, align 8
  %402 = sext i32 %390 to i64
  %403 = sext i32 %400 to i64
  %404 = mul nsw i64 %403, %402
  %405 = trunc i64 %404 to i32
  %406 = and i64 %404, 4294967295
  store i64 %406, i64* %RDX.i740, align 8
  %407 = shl i64 %404, 32
  %408 = ashr exact i64 %407, 32
  %409 = icmp ne i64 %408, %404
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %18, align 1
  %411 = and i32 %405, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %416 = lshr i32 %405, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %22, align 1
  store i8 %410, i8* %23, align 1
  %418 = add i64 %376, 32
  store i64 %418, i64* %3, align 8
  %419 = load i64, i64* %378, align 8
  store i64 %419, i64* %RCX.i746, align 8
  %420 = add i64 %419, 6576
  %421 = add i64 %376, 39
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = shl i64 %404, 32
  %425 = ashr exact i64 %424, 32
  %426 = sext i32 %423 to i64
  %427 = mul nsw i64 %426, %425
  %428 = trunc i64 %427 to i32
  %429 = and i64 %427, 4294967295
  store i64 %429, i64* %RDX.i740, align 8
  %430 = shl i64 %427, 32
  %431 = ashr exact i64 %430, 32
  %432 = icmp ne i64 %431, %427
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %18, align 1
  %434 = and i32 %428, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %439 = lshr i32 %428, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %22, align 1
  store i8 %433, i8* %23, align 1
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -80
  %443 = trunc i64 %427 to i32
  %444 = add i64 %376, 42
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %442 to i32*
  store i32 %443, i32* %445, align 4
  %446 = load i64, i64* %3, align 8
  %447 = add i64 %446, 33
  store i64 %447, i64* %3, align 8
  br label %block_.L_475bea

block_.L_475bce:                                  ; preds = %block_.L_475b23
  %448 = add i64 %181, -80
  %449 = add i64 %217, 7
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  store i32 0, i32* %450, align 4
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -76
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 7
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i32*
  store i32 0, i32* %455, align 4
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -72
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 7
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %457 to i32*
  store i32 0, i32* %460, align 4
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -68
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  store i32 0, i32* %465, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_475bea

block_.L_475bea:                                  ; preds = %block_.L_475bce, %block_475b34
  %466 = phi i64 [ %.pre11, %block_.L_475bce ], [ %447, %block_475b34 ]
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -16
  %469 = add i64 %466, 4
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i64*
  %471 = load i64, i64* %470, align 8
  store i64 %471, i64* %RAX.i823, align 8
  %472 = add i64 %471, 6392
  %473 = add i64 %466, 10
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RCX.i746, align 8
  %477 = add i64 %466, 14
  store i64 %477, i64* %3, align 8
  %478 = load i64, i64* %470, align 8
  store i64 %478, i64* %RAX.i823, align 8
  %479 = add i64 %478, 6396
  %480 = add i64 %466, 21
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %475 to i64
  %484 = sext i32 %482 to i64
  %485 = mul nsw i64 %484, %483
  %486 = trunc i64 %485 to i32
  %487 = and i64 %485, 4294967295
  store i64 %487, i64* %RCX.i746, align 8
  %488 = shl i64 %485, 32
  %489 = ashr exact i64 %488, 32
  %490 = icmp ne i64 %489, %485
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %18, align 1
  %492 = and i32 %486, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %497 = lshr i32 %486, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %22, align 1
  store i8 %491, i8* %23, align 1
  %499 = add i64 %467, -84
  %500 = add i64 %466, 25
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = shl i64 %485, 32
  %504 = ashr exact i64 %503, 32
  %505 = sext i32 %502 to i64
  %506 = mul nsw i64 %505, %504
  %507 = trunc i64 %506 to i32
  %508 = and i64 %506, 4294967295
  store i64 %508, i64* %RCX.i746, align 8
  %509 = shl i64 %506, 32
  %510 = ashr exact i64 %509, 32
  %511 = icmp ne i64 %510, %506
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %18, align 1
  %513 = and i32 %507, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %518 = lshr i32 %507, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %22, align 1
  store i8 %512, i8* %23, align 1
  %sext = shl i64 %506, 32
  %520 = ashr exact i64 %sext, 32
  store i64 %520, i64* %RDI.i814, align 8
  %521 = add i64 %466, -477850
  %522 = add i64 %466, 33
  %523 = load i64, i64* %6, align 8
  %524 = add i64 %523, -8
  %525 = inttoptr i64 %524 to i64*
  store i64 %522, i64* %525, align 8
  store i64 %524, i64* %6, align 8
  store i64 %521, i64* %3, align 8
  %526 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %106)
  %527 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i746, align 8
  store i64 0, i64* %RDI.i814, align 8
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -96
  %530 = load i64, i64* %RAX.i823, align 8
  %531 = add i64 %527, 8
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %529 to i64*
  store i64 %530, i64* %532, align 8
  %533 = load i64, i64* %RDI.i814, align 8
  %534 = load i64, i64* %RAX.i823, align 8
  %535 = load i64, i64* %3, align 8
  %536 = sub i64 %533, %534
  %537 = icmp ult i64 %533, %534
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %18, align 1
  %539 = trunc i64 %536 to i32
  %540 = and i32 %539, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %19, align 1
  %545 = xor i64 %534, %533
  %546 = xor i64 %545, %536
  %547 = lshr i64 %546, 4
  %548 = trunc i64 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %20, align 1
  %550 = icmp eq i64 %536, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %21, align 1
  %552 = lshr i64 %536, 63
  %553 = trunc i64 %552 to i8
  store i8 %553, i8* %22, align 1
  %554 = lshr i64 %533, 63
  %555 = lshr i64 %534, 63
  %556 = xor i64 %555, %554
  %557 = xor i64 %552, %554
  %558 = add nuw nsw i64 %557, %556
  %559 = icmp eq i64 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %23, align 1
  %.v37 = select i1 %550, i64 9, i64 24
  %561 = add i64 %535, %.v37
  store i64 %561, i64* %3, align 8
  br i1 %550, label %block_475c1c, label %block_.L_475c2b

block_475c1c:                                     ; preds = %block_.L_475bea
  store i64 ptrtoint (%G__0x4c236c_type* @G__0x4c236c to i64), i64* %RDI.i814, align 8
  %562 = add i64 %561, -116780
  %563 = add i64 %561, 15
  %564 = load i64, i64* %6, align 8
  %565 = add i64 %564, -8
  %566 = inttoptr i64 %565 to i64*
  store i64 %563, i64* %566, align 8
  store i64 %565, i64* %6, align 8
  store i64 %562, i64* %3, align 8
  %call2_475c26 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %562, %struct.Memory* %526)
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_475c2b

block_.L_475c2b:                                  ; preds = %block_.L_475bea, %block_475c1c
  %567 = phi i64 [ %561, %block_.L_475bea ], [ %.pre12, %block_475c1c ]
  %MEMORY.2 = phi %struct.Memory* [ %526, %block_.L_475bea ], [ %call2_475c26, %block_475c1c ]
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -88
  %570 = add i64 %567, 4
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  store i8 0, i8* %18, align 1
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %578 = icmp eq i32 %572, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %21, align 1
  %580 = lshr i32 %572, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %.v38 = select i1 %578, i64 433, i64 10
  %582 = add i64 %567, %.v38
  store i64 %582, i64* %3, align 8
  br i1 %578, label %block_.L_475c2b.block_.L_475ddc_crit_edge, label %block_475c35

block_.L_475c2b.block_.L_475ddc_crit_edge:        ; preds = %block_.L_475c2b
  %.pre17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %.pre22 = bitcast %union.anon* %.pre20 to i32*
  %.pre23 = getelementptr inbounds %union.anon, %union.anon* %.pre20, i64 0, i32 0
  %.pre25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %.pre27 = bitcast %union.anon* %.pre25 to i32*
  %.pre28 = getelementptr inbounds %union.anon, %union.anon* %.pre25, i64 0, i32 0
  %.pre30 = bitcast i64* %6 to i32**
  br label %block_.L_475ddc

block_475c35:                                     ; preds = %block_.L_475c2b
  store i64 2, i64* %RAX.i823, align 8
  %583 = add i64 %568, -16
  %584 = add i64 %582, 9
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RCX.i746, align 8
  %587 = add i64 %586, 6564
  %588 = add i64 %582, 15
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RDX.i740, align 8
  %592 = add i64 %568, -68
  %593 = add i64 %582, 18
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  store i32 %590, i32* %594, align 4
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -16
  %597 = load i64, i64* %3, align 8
  %598 = add i64 %597, 4
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %596 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %RCX.i746, align 8
  %601 = add i64 %600, 6568
  %602 = add i64 %597, 10
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RDX.i740, align 8
  %606 = add i64 %595, -72
  %607 = add i64 %597, 13
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  store i32 %604, i32* %608, align 4
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -16
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 4
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RCX.i746, align 8
  %615 = load i32, i32* %EAX.i822, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RDX.i740, align 8
  %617 = add i64 %614, 6556
  %618 = add i64 %611, 12
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = sub i32 %615, %620
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX.i740, align 8
  %623 = icmp ult i32 %615, %620
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %18, align 1
  %625 = and i32 %621, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %19, align 1
  %630 = xor i32 %620, %615
  %631 = xor i32 %630, %621
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %20, align 1
  %635 = icmp eq i32 %621, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %21, align 1
  %637 = lshr i32 %621, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %22, align 1
  %639 = lshr i32 %615, 31
  %640 = lshr i32 %620, 31
  %641 = xor i32 %640, %639
  %642 = xor i32 %637, %639
  %643 = add nuw nsw i32 %642, %641
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %23, align 1
  %646 = add i64 %611, 16
  store i64 %646, i64* %3, align 8
  %647 = load i64, i64* %613, align 8
  store i64 %647, i64* %RCX.i746, align 8
  %648 = add i64 %647, 6572
  %649 = add i64 %611, 23
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %621 to i64
  %653 = sext i32 %651 to i64
  %654 = mul nsw i64 %653, %652
  %655 = trunc i64 %654 to i32
  %656 = and i64 %654, 4294967295
  store i64 %656, i64* %RDX.i740, align 8
  %657 = shl i64 %654, 32
  %658 = ashr exact i64 %657, 32
  %659 = icmp ne i64 %658, %654
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %18, align 1
  %661 = and i32 %655, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %666 = lshr i32 %655, 31
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %22, align 1
  store i8 %660, i8* %23, align 1
  %668 = add i64 %609, -76
  %669 = trunc i64 %654 to i32
  %670 = add i64 %611, 26
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %668 to i32*
  store i32 %669, i32* %671, align 4
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -16
  %674 = load i64, i64* %3, align 8
  %675 = add i64 %674, 4
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %673 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RCX.i746, align 8
  %678 = load i64, i64* %RAX.i823, align 8
  %679 = add i64 %677, 6556
  %680 = add i64 %674, 10
  store i64 %680, i64* %3, align 8
  %681 = trunc i64 %678 to i32
  %682 = inttoptr i64 %679 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sub i32 %681, %683
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RAX.i823, align 8
  %686 = icmp ult i32 %681, %683
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %18, align 1
  %688 = and i32 %684, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %19, align 1
  %693 = xor i32 %683, %681
  %694 = xor i32 %693, %684
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %20, align 1
  %698 = icmp eq i32 %684, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %21, align 1
  %700 = lshr i32 %684, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %22, align 1
  %702 = lshr i32 %681, 31
  %703 = lshr i32 %683, 31
  %704 = xor i32 %703, %702
  %705 = xor i32 %700, %702
  %706 = add nuw nsw i32 %705, %704
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %23, align 1
  %709 = add i64 %674, 14
  store i64 %709, i64* %3, align 8
  %710 = load i64, i64* %676, align 8
  store i64 %710, i64* %RCX.i746, align 8
  %711 = add i64 %710, 6576
  %712 = add i64 %674, 21
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = sext i32 %684 to i64
  %716 = sext i32 %714 to i64
  %717 = mul nsw i64 %716, %715
  %718 = trunc i64 %717 to i32
  %719 = and i64 %717, 4294967295
  store i64 %719, i64* %RAX.i823, align 8
  %720 = shl i64 %717, 32
  %721 = ashr exact i64 %720, 32
  %722 = icmp ne i64 %721, %717
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %18, align 1
  %724 = and i32 %718, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %729 = lshr i32 %718, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %22, align 1
  store i8 %723, i8* %23, align 1
  %731 = add i64 %672, -80
  %732 = trunc i64 %717 to i32
  %733 = add i64 %674, 24
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %731 to i32*
  store i32 %732, i32* %734, align 4
  %735 = load i64, i64* %RBP.i, align 8
  %736 = add i64 %735, -16
  %737 = load i64, i64* %3, align 8
  %738 = add i64 %737, 4
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %736 to i64*
  %740 = load i64, i64* %739, align 8
  store i64 %740, i64* %RCX.i746, align 8
  %741 = add i64 %740, 6464
  %742 = add i64 %737, 11
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RCX.i746, align 8
  %745 = add i64 %744, 8
  %746 = add i64 %737, 15
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RDI.i814, align 8
  %749 = add i64 %735, -96
  %750 = add i64 %737, 19
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RSI.i786, align 8
  %753 = add i64 %737, 23
  store i64 %753, i64* %3, align 8
  %754 = load i64, i64* %739, align 8
  store i64 %754, i64* %RCX.i746, align 8
  %755 = add i64 %754, 6400
  %756 = add i64 %737, 29
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RDX.i740, align 8
  %760 = add i64 %737, 33
  store i64 %760, i64* %3, align 8
  %761 = load i64, i64* %739, align 8
  store i64 %761, i64* %RCX.i746, align 8
  %762 = add i64 %761, 6404
  %763 = add i64 %737, 39
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RCX.i746, align 8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %768 = add i64 %735, -84
  %769 = add i64 %737, 43
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %767, align 8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %774 = add i64 %735, -68
  %775 = add i64 %737, 47
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %773, align 8
  %779 = add i64 %735, -72
  %780 = add i64 %737, 50
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX.i823, align 8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i499 = bitcast %union.anon* %784 to i32*
  %785 = getelementptr inbounds %union.anon, %union.anon* %784, i64 0, i32 0
  %786 = add i64 %735, -76
  %787 = add i64 %737, 54
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %785, align 8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i496 = bitcast %union.anon* %791 to i32*
  %792 = getelementptr inbounds %union.anon, %union.anon* %791, i64 0, i32 0
  %793 = add i64 %735, -80
  %794 = add i64 %737, 58
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %792, align 8
  %798 = bitcast i64* %6 to i32**
  %799 = load i32*, i32** %798, align 8
  %800 = add i64 %737, 61
  store i64 %800, i64* %3, align 8
  store i32 %782, i32* %799, align 4
  %801 = load i64, i64* %6, align 8
  %802 = add i64 %801, 8
  %803 = load i32, i32* %R10D.i499, align 4
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 5
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %802 to i32*
  store i32 %803, i32* %806, align 4
  %807 = load i64, i64* %6, align 8
  %808 = add i64 %807, 16
  %809 = load i32, i32* %R11D.i496, align 4
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 5
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %808 to i32*
  store i32 %809, i32* %812, align 4
  %813 = load i64, i64* %3, align 8
  %814 = add i64 %813, -1613
  %815 = add i64 %813, 5
  %816 = load i64, i64* %6, align 8
  %817 = add i64 %816, -8
  %818 = inttoptr i64 %817 to i64*
  store i64 %815, i64* %818, align 8
  store i64 %817, i64* %6, align 8
  store i64 %814, i64* %3, align 8
  %call2_475ccd = tail call %struct.Memory* @sub_475680.img2buf(%struct.State* nonnull %0, i64 %814, %struct.Memory* %MEMORY.2)
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -20
  %821 = load i64, i64* %3, align 8
  %822 = add i64 %821, 3
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %820 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RDI.i814, align 8
  %826 = add i64 %819, -96
  %827 = add i64 %821, 7
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i64*
  %829 = load i64, i64* %828, align 8
  store i64 %829, i64* %RSI.i786, align 8
  %830 = add i64 %819, -16
  %831 = add i64 %821, 11
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i64*
  %833 = load i64, i64* %832, align 8
  store i64 %833, i64* %RBX.i605, align 8
  %834 = add i64 %833, 6404
  %835 = add i64 %821, 17
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX.i823, align 8
  %839 = add i64 %819, -80
  %840 = add i64 %821, 20
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = sub i32 %837, %842
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RAX.i823, align 8
  %845 = icmp ult i32 %837, %842
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %18, align 1
  %847 = and i32 %843, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %19, align 1
  %852 = xor i32 %842, %837
  %853 = xor i32 %852, %843
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %20, align 1
  %857 = icmp eq i32 %843, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %21, align 1
  %859 = lshr i32 %843, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %22, align 1
  %861 = lshr i32 %837, 31
  %862 = lshr i32 %842, 31
  %863 = xor i32 %862, %861
  %864 = xor i32 %859, %861
  %865 = add nuw nsw i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %23, align 1
  %868 = add i64 %819, -76
  %869 = add i64 %821, 23
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = sub i32 %843, %871
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i823, align 8
  %874 = icmp ult i32 %843, %871
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %18, align 1
  %876 = and i32 %872, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %19, align 1
  %881 = xor i32 %871, %843
  %882 = xor i32 %881, %872
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %20, align 1
  %886 = icmp eq i32 %872, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %21, align 1
  %888 = lshr i32 %872, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %22, align 1
  %890 = lshr i32 %871, 31
  %891 = xor i32 %890, %859
  %892 = xor i32 %888, %859
  %893 = add nuw nsw i32 %892, %891
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %23, align 1
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -16
  %898 = add i64 %821, 27
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RBX.i605, align 8
  %901 = add i64 %900, 6400
  %902 = add i64 %821, 33
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RCX.i746, align 8
  %906 = add i64 %896, -72
  %907 = add i64 %821, 36
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = sub i32 %904, %909
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RCX.i746, align 8
  %912 = icmp ult i32 %904, %909
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %18, align 1
  %914 = and i32 %910, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %19, align 1
  %919 = xor i32 %909, %904
  %920 = xor i32 %919, %910
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %20, align 1
  %924 = icmp eq i32 %910, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %21, align 1
  %926 = lshr i32 %910, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %22, align 1
  %928 = lshr i32 %904, 31
  %929 = lshr i32 %909, 31
  %930 = xor i32 %929, %928
  %931 = xor i32 %926, %928
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %23, align 1
  %935 = add i64 %896, -68
  %936 = add i64 %821, 39
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sub i32 %910, %938
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RCX.i746, align 8
  %941 = load i64, i64* %RAX.i823, align 8
  %942 = shl i64 %941, 32
  %943 = ashr exact i64 %942, 32
  %944 = sext i32 %939 to i64
  %945 = mul nsw i64 %944, %943
  %946 = trunc i64 %945 to i32
  %947 = and i64 %945, 4294967295
  store i64 %947, i64* %RAX.i823, align 8
  %948 = shl i64 %945, 32
  %949 = ashr exact i64 %948, 32
  %950 = icmp ne i64 %949, %945
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %18, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %957 = lshr i32 %946, 31
  %958 = trunc i32 %957 to i8
  store i8 %958, i8* %22, align 1
  store i8 %951, i8* %23, align 1
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -84
  %961 = add i64 %821, 46
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = shl i64 %945, 32
  %965 = ashr exact i64 %964, 32
  %966 = sext i32 %963 to i64
  %967 = mul nsw i64 %966, %965
  %968 = trunc i64 %967 to i32
  %969 = and i64 %967, 4294967295
  store i64 %969, i64* %RAX.i823, align 8
  %970 = shl i64 %967, 32
  %971 = ashr exact i64 %970, 32
  %972 = icmp ne i64 %971, %967
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %18, align 1
  %974 = and i32 %968, 255
  %975 = tail call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  store i8 %978, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %979 = lshr i32 %968, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %22, align 1
  store i8 %973, i8* %23, align 1
  %sext32 = shl i64 %967, 32
  %981 = ashr exact i64 %sext32, 32
  store i64 %981, i64* %RDX.i740, align 8
  %982 = add i64 %821, -478402
  %983 = add i64 %821, 54
  %984 = load i64, i64* %6, align 8
  %985 = add i64 %984, -8
  %986 = inttoptr i64 %985 to i64*
  store i64 %983, i64* %986, align 8
  store i64 %985, i64* %6, align 8
  store i64 %982, i64* %3, align 8
  %call2_475d03 = tail call %struct.Memory* @sub_401010.write_plt(%struct.State* nonnull %0, i64 %982, %struct.Memory* %call2_475ccd)
  %987 = load i64, i64* %3, align 8
  %988 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %988, i64* %RDX.i740, align 8
  %989 = add i64 %988, 1160
  %990 = add i64 %987, 15
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  store i8 0, i8* %18, align 1
  %993 = and i32 %992, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %998 = icmp eq i32 %992, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %21, align 1
  %1000 = lshr i32 %992, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1002 = load i64, i64* %RBP.i, align 8
  %1003 = add i64 %1002, -112
  %1004 = load i64, i64* %RAX.i823, align 8
  %1005 = add i64 %987, 19
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1003 to i64*
  store i64 %1004, i64* %1006, align 8
  %1007 = load i64, i64* %3, align 8
  %1008 = load i8, i8* %21, align 1
  %1009 = icmp ne i8 %1008, 0
  %.v40 = select i1 %1009, i64 160, i64 6
  %1010 = add i64 %1007, %.v40
  store i64 %1010, i64* %3, align 8
  %cmpBr_475d1b = icmp eq i8 %1008, 1
  br i1 %cmpBr_475d1b, label %block_.L_475dbb, label %block_475d21

block_475d21:                                     ; preds = %block_475c35
  store i64 2, i64* %RAX.i823, align 8
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -16
  %1013 = add i64 %1010, 9
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RCX.i746, align 8
  %1016 = add i64 %1015, 6552
  %1017 = add i64 %1010, 16
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = sext i32 %1019 to i64
  store i64 %1020, i64* %RCX.i746, align 8
  %1021 = shl nsw i64 %1020, 2
  %1022 = add i64 %1011, -48
  %1023 = add i64 %1022, %1021
  %1024 = add i64 %1010, 20
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RDX.i740, align 8
  %1028 = add i64 %1010, 24
  store i64 %1028, i64* %3, align 8
  %1029 = load i64, i64* %1014, align 8
  store i64 %1029, i64* %RCX.i746, align 8
  %1030 = add i64 %1029, 6564
  %1031 = add i64 %1010, 31
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1026 to i64
  %1035 = sext i32 %1033 to i64
  %1036 = mul nsw i64 %1035, %1034
  %1037 = trunc i64 %1036 to i32
  %1038 = and i64 %1036, 4294967295
  store i64 %1038, i64* %RDX.i740, align 8
  %1039 = shl i64 %1036, 32
  %1040 = ashr exact i64 %1039, 32
  %1041 = icmp ne i64 %1040, %1036
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %18, align 1
  %1043 = and i32 %1037, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1048 = lshr i32 %1037, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %22, align 1
  store i8 %1042, i8* %23, align 1
  %1050 = add i64 %1011, -68
  %1051 = trunc i64 %1036 to i32
  %1052 = add i64 %1010, 34
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i32*
  store i32 %1051, i32* %1053, align 4
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -16
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1055 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RCX.i746, align 8
  %1060 = add i64 %1059, 6552
  %1061 = add i64 %1056, 11
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RCX.i746, align 8
  %1065 = shl nsw i64 %1064, 2
  %1066 = add i64 %1054, -48
  %1067 = add i64 %1066, %1065
  %1068 = add i64 %1056, 15
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RDX.i740, align 8
  %1072 = add i64 %1056, 19
  store i64 %1072, i64* %3, align 8
  %1073 = load i64, i64* %1058, align 8
  store i64 %1073, i64* %RCX.i746, align 8
  %1074 = add i64 %1073, 6568
  %1075 = add i64 %1056, 26
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = sext i32 %1070 to i64
  %1079 = sext i32 %1077 to i64
  %1080 = mul nsw i64 %1079, %1078
  %1081 = trunc i64 %1080 to i32
  %1082 = and i64 %1080, 4294967295
  store i64 %1082, i64* %RDX.i740, align 8
  %1083 = shl i64 %1080, 32
  %1084 = ashr exact i64 %1083, 32
  %1085 = icmp ne i64 %1084, %1080
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %18, align 1
  %1087 = and i32 %1081, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1092 = lshr i32 %1081, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %22, align 1
  store i8 %1086, i8* %23, align 1
  %1094 = add i64 %1054, -72
  %1095 = trunc i64 %1080 to i32
  %1096 = add i64 %1056, 29
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1094 to i32*
  store i32 %1095, i32* %1097, align 4
  %1098 = load i64, i64* %RBP.i, align 8
  %1099 = add i64 %1098, -16
  %1100 = load i64, i64* %3, align 8
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1099 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %RCX.i746, align 8
  %1104 = add i64 %1103, 6552
  %1105 = add i64 %1100, 11
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = sext i32 %1107 to i64
  store i64 %1108, i64* %RCX.i746, align 8
  %1109 = shl nsw i64 %1108, 2
  %1110 = add i64 %1098, -64
  %1111 = add i64 %1110, %1109
  %1112 = add i64 %1100, 15
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RDX.i740, align 8
  %1116 = add i64 %1100, 19
  store i64 %1116, i64* %3, align 8
  %1117 = load i64, i64* %1102, align 8
  store i64 %1117, i64* %RCX.i746, align 8
  %1118 = load i32, i32* %EAX.i822, align 4
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RSI.i786, align 8
  %1120 = add i64 %1117, 6556
  %1121 = add i64 %1100, 27
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sub i32 %1118, %1123
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RSI.i786, align 8
  %1126 = sext i32 %1114 to i64
  %1127 = sext i32 %1124 to i64
  %1128 = mul nsw i64 %1127, %1126
  %1129 = trunc i64 %1128 to i32
  %1130 = and i64 %1128, 4294967295
  store i64 %1130, i64* %RDX.i740, align 8
  %1131 = shl i64 %1128, 32
  %1132 = ashr exact i64 %1131, 32
  %1133 = icmp ne i64 %1132, %1128
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %18, align 1
  %1135 = and i32 %1129, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1140 = lshr i32 %1129, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %22, align 1
  store i8 %1134, i8* %23, align 1
  %1142 = add i64 %1100, 34
  store i64 %1142, i64* %3, align 8
  %1143 = load i64, i64* %1102, align 8
  store i64 %1143, i64* %RCX.i746, align 8
  %1144 = add i64 %1143, 6572
  %1145 = add i64 %1100, 41
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = shl i64 %1128, 32
  %1149 = ashr exact i64 %1148, 32
  %1150 = sext i32 %1147 to i64
  %1151 = mul nsw i64 %1150, %1149
  %1152 = trunc i64 %1151 to i32
  %1153 = and i64 %1151, 4294967295
  store i64 %1153, i64* %RDX.i740, align 8
  %1154 = shl i64 %1151, 32
  %1155 = ashr exact i64 %1154, 32
  %1156 = icmp ne i64 %1155, %1151
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %18, align 1
  %1158 = and i32 %1152, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1163 = lshr i32 %1152, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %22, align 1
  store i8 %1157, i8* %23, align 1
  %1165 = load i64, i64* %RBP.i, align 8
  %1166 = add i64 %1165, -76
  %1167 = trunc i64 %1151 to i32
  %1168 = add i64 %1100, 44
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1166 to i32*
  store i32 %1167, i32* %1169, align 4
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -16
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 4
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i64*
  %1175 = load i64, i64* %1174, align 8
  store i64 %1175, i64* %RCX.i746, align 8
  %1176 = add i64 %1175, 6552
  %1177 = add i64 %1172, 11
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = sext i32 %1179 to i64
  store i64 %1180, i64* %RCX.i746, align 8
  %1181 = shl nsw i64 %1180, 2
  %1182 = add i64 %1170, -64
  %1183 = add i64 %1182, %1181
  %1184 = add i64 %1172, 15
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RDX.i740, align 8
  %1188 = add i64 %1172, 19
  store i64 %1188, i64* %3, align 8
  %1189 = load i64, i64* %1174, align 8
  store i64 %1189, i64* %RCX.i746, align 8
  %1190 = load i64, i64* %RAX.i823, align 8
  %1191 = add i64 %1189, 6556
  %1192 = add i64 %1172, 25
  store i64 %1192, i64* %3, align 8
  %1193 = trunc i64 %1190 to i32
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = sub i32 %1193, %1195
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX.i823, align 8
  %1198 = sext i32 %1186 to i64
  %1199 = sext i32 %1196 to i64
  %1200 = mul nsw i64 %1199, %1198
  %1201 = trunc i64 %1200 to i32
  %1202 = and i64 %1200, 4294967295
  store i64 %1202, i64* %RDX.i740, align 8
  %1203 = shl i64 %1200, 32
  %1204 = ashr exact i64 %1203, 32
  %1205 = icmp ne i64 %1204, %1200
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %18, align 1
  %1207 = and i32 %1201, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1212 = lshr i32 %1201, 31
  %1213 = trunc i32 %1212 to i8
  store i8 %1213, i8* %22, align 1
  store i8 %1206, i8* %23, align 1
  %1214 = add i64 %1172, 32
  store i64 %1214, i64* %3, align 8
  %1215 = load i64, i64* %1174, align 8
  store i64 %1215, i64* %RCX.i746, align 8
  %1216 = add i64 %1215, 6576
  %1217 = add i64 %1172, 39
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = shl i64 %1200, 32
  %1221 = ashr exact i64 %1220, 32
  %1222 = sext i32 %1219 to i64
  %1223 = mul nsw i64 %1222, %1221
  %1224 = trunc i64 %1223 to i32
  %1225 = and i64 %1223, 4294967295
  store i64 %1225, i64* %RDX.i740, align 8
  %1226 = shl i64 %1223, 32
  %1227 = ashr exact i64 %1226, 32
  %1228 = icmp ne i64 %1227, %1223
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %18, align 1
  %1230 = and i32 %1224, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1235 = lshr i32 %1224, 31
  %1236 = trunc i32 %1235 to i8
  store i8 %1236, i8* %22, align 1
  store i8 %1229, i8* %23, align 1
  %1237 = load i64, i64* %RBP.i, align 8
  %1238 = add i64 %1237, -80
  %1239 = trunc i64 %1223 to i32
  %1240 = add i64 %1172, 42
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1238 to i32*
  store i32 %1239, i32* %1241, align 4
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, 33
  store i64 %1243, i64* %3, align 8
  br label %block_.L_475dd7

block_.L_475dbb:                                  ; preds = %block_475c35
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -80
  %1246 = add i64 %1010, 7
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  store i32 0, i32* %1247, align 4
  %1248 = load i64, i64* %RBP.i, align 8
  %1249 = add i64 %1248, -76
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, 7
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1249 to i32*
  store i32 0, i32* %1252, align 4
  %1253 = load i64, i64* %RBP.i, align 8
  %1254 = add i64 %1253, -72
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, 7
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1254 to i32*
  store i32 0, i32* %1257, align 4
  %1258 = load i64, i64* %RBP.i, align 8
  %1259 = add i64 %1258, -68
  %1260 = load i64, i64* %3, align 8
  %1261 = add i64 %1260, 7
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1259 to i32*
  store i32 0, i32* %1262, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_475dd7

block_.L_475dd7:                                  ; preds = %block_.L_475dbb, %block_475d21
  %1263 = phi i64 [ %.pre13, %block_.L_475dbb ], [ %1243, %block_475d21 ]
  %1264 = add i64 %1263, 5
  store i64 %1264, i64* %3, align 8
  %.pre14 = load i64, i64* %RBP.i, align 8
  br label %block_.L_475ddc

block_.L_475ddc:                                  ; preds = %block_.L_475c2b.block_.L_475ddc_crit_edge, %block_.L_475dd7
  %.pre-phi31 = phi i32** [ %.pre30, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %798, %block_.L_475dd7 ]
  %.pre-phi29 = phi i64* [ %.pre28, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %792, %block_.L_475dd7 ]
  %R11D.i301.pre-phi = phi i32* [ %.pre27, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %R11D.i496, %block_.L_475dd7 ]
  %.pre-phi24 = phi i64* [ %.pre23, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %785, %block_.L_475dd7 ]
  %R10D.i304.pre-phi = phi i32* [ %.pre22, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %R10D.i499, %block_.L_475dd7 ]
  %.pre-phi19 = phi i64* [ %.pre18, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %773, %block_.L_475dd7 ]
  %.pre-phi = phi i64* [ %.pre17, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %767, %block_.L_475dd7 ]
  %1265 = phi i64 [ %582, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %1264, %block_.L_475dd7 ]
  %1266 = phi i64 [ %568, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %.pre14, %block_.L_475dd7 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_475c2b.block_.L_475ddc_crit_edge ], [ %call2_475d03, %block_.L_475dd7 ]
  %1267 = add i64 %1266, -16
  %1268 = add i64 %1265, 4
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RAX.i823, align 8
  %1271 = add i64 %1270, 6424
  %1272 = add i64 %1265, 11
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RDI.i814, align 8
  %1275 = add i64 %1266, -96
  %1276 = add i64 %1265, 15
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %RSI.i786, align 8
  %1279 = add i64 %1265, 19
  store i64 %1279, i64* %3, align 8
  %1280 = load i64, i64* %1269, align 8
  store i64 %1280, i64* %RAX.i823, align 8
  %1281 = add i64 %1280, 6392
  %1282 = add i64 %1265, 25
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RDX.i740, align 8
  %1286 = add i64 %1265, 29
  store i64 %1286, i64* %3, align 8
  %1287 = load i64, i64* %1269, align 8
  store i64 %1287, i64* %RAX.i823, align 8
  %1288 = add i64 %1287, 6396
  %1289 = add i64 %1265, 35
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i746, align 8
  %1293 = add i64 %1266, -84
  %1294 = add i64 %1265, 39
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %.pre-phi, align 8
  %1298 = add i64 %1266, -68
  %1299 = add i64 %1265, 43
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %.pre-phi19, align 8
  %1303 = add i64 %1266, -72
  %1304 = add i64 %1265, 47
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %.pre-phi24, align 8
  %1308 = add i64 %1266, -76
  %1309 = add i64 %1265, 51
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %.pre-phi29, align 8
  %1313 = add i64 %1266, -80
  %1314 = add i64 %1265, 54
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RBX.i605, align 8
  %1318 = load i32*, i32** %.pre-phi31, align 8
  %1319 = add i64 %1265, 58
  store i64 %1319, i64* %3, align 8
  store i32 %1306, i32* %1318, align 4
  %1320 = load i64, i64* %6, align 8
  %1321 = add i64 %1320, 8
  %1322 = load i32, i32* %R11D.i301.pre-phi, align 4
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 5
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1321 to i32*
  store i32 %1322, i32* %1325, align 4
  %EBX.i289 = bitcast %union.anon* %11 to i32*
  %1326 = load i64, i64* %6, align 8
  %1327 = add i64 %1326, 16
  %1328 = load i32, i32* %EBX.i289, align 4
  %1329 = load i64, i64* %3, align 8
  %1330 = add i64 %1329, 4
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1327 to i32*
  store i32 %1328, i32* %1331, align 4
  %1332 = load i64, i64* %3, align 8
  %1333 = add i64 %1332, -1951
  %1334 = add i64 %1332, 5
  %1335 = load i64, i64* %6, align 8
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1334, i64* %1337, align 8
  store i64 %1336, i64* %6, align 8
  store i64 %1333, i64* %3, align 8
  %call2_475e1f = tail call %struct.Memory* @sub_475680.img2buf(%struct.State* nonnull %0, i64 %1333, %struct.Memory* %MEMORY.4)
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -20
  %1340 = load i64, i64* %3, align 8
  %1341 = add i64 %1340, 3
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1339 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RDI.i814, align 8
  %1345 = add i64 %1338, -96
  %1346 = add i64 %1340, 7
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i64*
  %1348 = load i64, i64* %1347, align 8
  store i64 %1348, i64* %RSI.i786, align 8
  %1349 = add i64 %1338, -16
  %1350 = add i64 %1340, 11
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i64*
  %1352 = load i64, i64* %1351, align 8
  store i64 %1352, i64* %RAX.i823, align 8
  %1353 = add i64 %1352, 6396
  %1354 = add i64 %1340, 17
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RCX.i746, align 8
  %1358 = add i64 %1338, -80
  %1359 = add i64 %1340, 20
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = sub i32 %1356, %1361
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RCX.i746, align 8
  %1364 = icmp ult i32 %1356, %1361
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %18, align 1
  %1366 = and i32 %1362, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %19, align 1
  %1371 = xor i32 %1361, %1356
  %1372 = xor i32 %1371, %1362
  %1373 = lshr i32 %1372, 4
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  store i8 %1375, i8* %20, align 1
  %1376 = icmp eq i32 %1362, 0
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %21, align 1
  %1378 = lshr i32 %1362, 31
  %1379 = trunc i32 %1378 to i8
  store i8 %1379, i8* %22, align 1
  %1380 = lshr i32 %1356, 31
  %1381 = lshr i32 %1361, 31
  %1382 = xor i32 %1381, %1380
  %1383 = xor i32 %1378, %1380
  %1384 = add nuw nsw i32 %1383, %1382
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %23, align 1
  %1387 = add i64 %1338, -76
  %1388 = add i64 %1340, 23
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = sub i32 %1362, %1390
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RCX.i746, align 8
  %1393 = icmp ult i32 %1362, %1390
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %18, align 1
  %1395 = and i32 %1391, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %19, align 1
  %1400 = xor i32 %1390, %1362
  %1401 = xor i32 %1400, %1391
  %1402 = lshr i32 %1401, 4
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  store i8 %1404, i8* %20, align 1
  %1405 = icmp eq i32 %1391, 0
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %21, align 1
  %1407 = lshr i32 %1391, 31
  %1408 = trunc i32 %1407 to i8
  store i8 %1408, i8* %22, align 1
  %1409 = lshr i32 %1390, 31
  %1410 = xor i32 %1409, %1378
  %1411 = xor i32 %1407, %1378
  %1412 = add nuw nsw i32 %1411, %1410
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %23, align 1
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -16
  %1417 = add i64 %1340, 27
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RAX.i823, align 8
  %1420 = add i64 %1419, 6392
  %1421 = add i64 %1340, 33
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RDX.i740, align 8
  %1425 = add i64 %1415, -72
  %1426 = add i64 %1340, 36
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = sub i32 %1423, %1428
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RDX.i740, align 8
  %1431 = icmp ult i32 %1423, %1428
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %18, align 1
  %1433 = and i32 %1429, 255
  %1434 = tail call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  store i8 %1437, i8* %19, align 1
  %1438 = xor i32 %1428, %1423
  %1439 = xor i32 %1438, %1429
  %1440 = lshr i32 %1439, 4
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  store i8 %1442, i8* %20, align 1
  %1443 = icmp eq i32 %1429, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %21, align 1
  %1445 = lshr i32 %1429, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %22, align 1
  %1447 = lshr i32 %1423, 31
  %1448 = lshr i32 %1428, 31
  %1449 = xor i32 %1448, %1447
  %1450 = xor i32 %1445, %1447
  %1451 = add nuw nsw i32 %1450, %1449
  %1452 = icmp eq i32 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %23, align 1
  %1454 = add i64 %1415, -68
  %1455 = add i64 %1340, 39
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = sub i32 %1429, %1457
  %1459 = zext i32 %1458 to i64
  store i64 %1459, i64* %RDX.i740, align 8
  %1460 = load i64, i64* %RCX.i746, align 8
  %1461 = shl i64 %1460, 32
  %1462 = ashr exact i64 %1461, 32
  %1463 = sext i32 %1458 to i64
  %1464 = mul nsw i64 %1463, %1462
  %1465 = trunc i64 %1464 to i32
  %1466 = and i64 %1464, 4294967295
  store i64 %1466, i64* %RCX.i746, align 8
  %1467 = shl i64 %1464, 32
  %1468 = ashr exact i64 %1467, 32
  %1469 = icmp ne i64 %1468, %1464
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %18, align 1
  %1471 = and i32 %1465, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1476 = lshr i32 %1465, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %22, align 1
  store i8 %1470, i8* %23, align 1
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -84
  %1480 = add i64 %1340, 46
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = shl i64 %1464, 32
  %1484 = ashr exact i64 %1483, 32
  %1485 = sext i32 %1482 to i64
  %1486 = mul nsw i64 %1485, %1484
  %1487 = trunc i64 %1486 to i32
  %1488 = and i64 %1486, 4294967295
  store i64 %1488, i64* %RCX.i746, align 8
  %1489 = shl i64 %1486, 32
  %1490 = ashr exact i64 %1489, 32
  %1491 = icmp ne i64 %1490, %1486
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %18, align 1
  %1493 = and i32 %1487, 255
  %1494 = tail call i32 @llvm.ctpop.i32(i32 %1493)
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  %1497 = xor i8 %1496, 1
  store i8 %1497, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1498 = lshr i32 %1487, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %22, align 1
  store i8 %1492, i8* %23, align 1
  %sext33 = shl i64 %1486, 32
  %1500 = ashr exact i64 %sext33, 32
  store i64 %1500, i64* %RDX.i740, align 8
  %1501 = add i64 %1340, -478740
  %1502 = add i64 %1340, 54
  %1503 = load i64, i64* %6, align 8
  %1504 = add i64 %1503, -8
  %1505 = inttoptr i64 %1504 to i64*
  store i64 %1502, i64* %1505, align 8
  store i64 %1504, i64* %6, align 8
  store i64 %1501, i64* %3, align 8
  %call2_475e55 = tail call %struct.Memory* @sub_401010.write_plt(%struct.State* nonnull %0, i64 %1501, %struct.Memory* %call2_475e1f)
  %1506 = load i64, i64* %RBP.i, align 8
  %1507 = add i64 %1506, -16
  %1508 = load i64, i64* %3, align 8
  %1509 = add i64 %1508, 4
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1507 to i64*
  %1511 = load i64, i64* %1510, align 8
  store i64 %1511, i64* %RDX.i740, align 8
  %1512 = add i64 %1511, 6552
  %1513 = add i64 %1508, 11
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  %1515 = load i32, i32* %1514, align 4
  store i8 0, i8* %18, align 1
  %1516 = and i32 %1515, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %1521 = icmp eq i32 %1515, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %21, align 1
  %1523 = lshr i32 %1515, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1525 = add i64 %1506, -120
  %1526 = load i64, i64* %RAX.i823, align 8
  %1527 = add i64 %1508, 15
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1525 to i64*
  store i64 %1526, i64* %1528, align 8
  %1529 = load i64, i64* %3, align 8
  %1530 = load i8, i8* %21, align 1
  %1531 = icmp ne i8 %1530, 0
  %.v41 = select i1 %1531, i64 372, i64 6
  %1532 = add i64 %1529, %.v41
  store i64 %1532, i64* %3, align 8
  %cmpBr_475e69 = icmp eq i8 %1530, 1
  br i1 %cmpBr_475e69, label %block_.L_475fdd, label %block_475e6f

block_475e6f:                                     ; preds = %block_.L_475ddc
  store i64 2, i64* %RAX.i823, align 8
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -16
  %1535 = add i64 %1532, 9
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i64*
  %1537 = load i64, i64* %1536, align 8
  store i64 %1537, i64* %RCX.i746, align 8
  %1538 = add i64 %1537, 6564
  %1539 = add i64 %1532, 15
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RDX.i740, align 8
  %1543 = add i64 %1533, -68
  %1544 = add i64 %1532, 18
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  store i32 %1541, i32* %1545, align 4
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -16
  %1548 = load i64, i64* %3, align 8
  %1549 = add i64 %1548, 4
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1547 to i64*
  %1551 = load i64, i64* %1550, align 8
  store i64 %1551, i64* %RCX.i746, align 8
  %1552 = add i64 %1551, 6568
  %1553 = add i64 %1548, 10
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RDX.i740, align 8
  %1557 = add i64 %1546, -72
  %1558 = add i64 %1548, 13
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  store i32 %1555, i32* %1559, align 4
  %1560 = load i64, i64* %RBP.i, align 8
  %1561 = add i64 %1560, -16
  %1562 = load i64, i64* %3, align 8
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1561 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %RCX.i746, align 8
  %1566 = load i32, i32* %EAX.i822, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RDX.i740, align 8
  %1568 = add i64 %1565, 6556
  %1569 = add i64 %1562, 12
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sub i32 %1566, %1571
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RDX.i740, align 8
  %1574 = icmp ult i32 %1566, %1571
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %18, align 1
  %1576 = and i32 %1572, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %19, align 1
  %1581 = xor i32 %1571, %1566
  %1582 = xor i32 %1581, %1572
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  store i8 %1585, i8* %20, align 1
  %1586 = icmp eq i32 %1572, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %21, align 1
  %1588 = lshr i32 %1572, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %22, align 1
  %1590 = lshr i32 %1566, 31
  %1591 = lshr i32 %1571, 31
  %1592 = xor i32 %1591, %1590
  %1593 = xor i32 %1588, %1590
  %1594 = add nuw nsw i32 %1593, %1592
  %1595 = icmp eq i32 %1594, 2
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %23, align 1
  %1597 = add i64 %1562, 16
  store i64 %1597, i64* %3, align 8
  %1598 = load i64, i64* %1564, align 8
  store i64 %1598, i64* %RCX.i746, align 8
  %1599 = add i64 %1598, 6572
  %1600 = add i64 %1562, 23
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = sext i32 %1572 to i64
  %1604 = sext i32 %1602 to i64
  %1605 = mul nsw i64 %1604, %1603
  %1606 = trunc i64 %1605 to i32
  %1607 = and i64 %1605, 4294967295
  store i64 %1607, i64* %RDX.i740, align 8
  %1608 = shl i64 %1605, 32
  %1609 = ashr exact i64 %1608, 32
  %1610 = icmp ne i64 %1609, %1605
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %18, align 1
  %1612 = and i32 %1606, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1617 = lshr i32 %1606, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %22, align 1
  store i8 %1611, i8* %23, align 1
  %1619 = add i64 %1560, -76
  %1620 = trunc i64 %1605 to i32
  %1621 = add i64 %1562, 26
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1619 to i32*
  store i32 %1620, i32* %1622, align 4
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -16
  %1625 = load i64, i64* %3, align 8
  %1626 = add i64 %1625, 4
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1624 to i64*
  %1628 = load i64, i64* %1627, align 8
  store i64 %1628, i64* %RCX.i746, align 8
  %1629 = load i64, i64* %RAX.i823, align 8
  %1630 = add i64 %1628, 6556
  %1631 = add i64 %1625, 10
  store i64 %1631, i64* %3, align 8
  %1632 = trunc i64 %1629 to i32
  %1633 = inttoptr i64 %1630 to i32*
  %1634 = load i32, i32* %1633, align 4
  %1635 = sub i32 %1632, %1634
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RAX.i823, align 8
  %1637 = icmp ult i32 %1632, %1634
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %18, align 1
  %1639 = and i32 %1635, 255
  %1640 = tail call i32 @llvm.ctpop.i32(i32 %1639)
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, i8* %19, align 1
  %1644 = xor i32 %1634, %1632
  %1645 = xor i32 %1644, %1635
  %1646 = lshr i32 %1645, 4
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  store i8 %1648, i8* %20, align 1
  %1649 = icmp eq i32 %1635, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %21, align 1
  %1651 = lshr i32 %1635, 31
  %1652 = trunc i32 %1651 to i8
  store i8 %1652, i8* %22, align 1
  %1653 = lshr i32 %1632, 31
  %1654 = lshr i32 %1634, 31
  %1655 = xor i32 %1654, %1653
  %1656 = xor i32 %1651, %1653
  %1657 = add nuw nsw i32 %1656, %1655
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %23, align 1
  %1660 = add i64 %1625, 14
  store i64 %1660, i64* %3, align 8
  %1661 = load i64, i64* %1627, align 8
  store i64 %1661, i64* %RCX.i746, align 8
  %1662 = add i64 %1661, 6576
  %1663 = add i64 %1625, 21
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = sext i32 %1635 to i64
  %1667 = sext i32 %1665 to i64
  %1668 = mul nsw i64 %1667, %1666
  %1669 = trunc i64 %1668 to i32
  %1670 = and i64 %1668, 4294967295
  store i64 %1670, i64* %RAX.i823, align 8
  %1671 = shl i64 %1668, 32
  %1672 = ashr exact i64 %1671, 32
  %1673 = icmp ne i64 %1672, %1668
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %18, align 1
  %1675 = and i32 %1669, 255
  %1676 = tail call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  store i8 %1679, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1680 = lshr i32 %1669, 31
  %1681 = trunc i32 %1680 to i8
  store i8 %1681, i8* %22, align 1
  store i8 %1674, i8* %23, align 1
  %1682 = add i64 %1623, -80
  %1683 = trunc i64 %1668 to i32
  %1684 = add i64 %1625, 24
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1682 to i32*
  store i32 %1683, i32* %1685, align 4
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -16
  %1688 = load i64, i64* %3, align 8
  %1689 = add i64 %1688, 4
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1687 to i64*
  %1691 = load i64, i64* %1690, align 8
  store i64 %1691, i64* %RCX.i746, align 8
  %1692 = add i64 %1691, 6464
  %1693 = add i64 %1688, 11
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i64*
  %1695 = load i64, i64* %1694, align 8
  store i64 %1695, i64* %RCX.i746, align 8
  %1696 = add i64 %1688, 14
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i64*
  %1698 = load i64, i64* %1697, align 8
  store i64 %1698, i64* %RDI.i814, align 8
  %1699 = add i64 %1686, -96
  %1700 = add i64 %1688, 18
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %RSI.i786, align 8
  %1703 = add i64 %1688, 22
  store i64 %1703, i64* %3, align 8
  %1704 = load i64, i64* %1690, align 8
  store i64 %1704, i64* %RCX.i746, align 8
  %1705 = add i64 %1704, 6400
  %1706 = add i64 %1688, 28
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RDX.i740, align 8
  %1710 = add i64 %1688, 32
  store i64 %1710, i64* %3, align 8
  %1711 = load i64, i64* %1690, align 8
  store i64 %1711, i64* %RCX.i746, align 8
  %1712 = add i64 %1711, 6404
  %1713 = add i64 %1688, 38
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RCX.i746, align 8
  %1717 = add i64 %1686, -84
  %1718 = add i64 %1688, 42
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %.pre-phi, align 8
  %1722 = add i64 %1686, -68
  %1723 = add i64 %1688, 46
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = zext i32 %1725 to i64
  store i64 %1726, i64* %.pre-phi19, align 8
  %1727 = add i64 %1686, -72
  %1728 = add i64 %1688, 49
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RAX.i823, align 8
  %1732 = add i64 %1686, -76
  %1733 = add i64 %1688, 53
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %.pre-phi24, align 8
  %1737 = add i64 %1686, -80
  %1738 = add i64 %1688, 57
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = zext i32 %1740 to i64
  store i64 %1741, i64* %.pre-phi29, align 8
  %1742 = load i32*, i32** %.pre-phi31, align 8
  %1743 = add i64 %1688, 60
  store i64 %1743, i64* %3, align 8
  store i32 %1730, i32* %1742, align 4
  %1744 = load i64, i64* %6, align 8
  %1745 = add i64 %1744, 8
  %1746 = load i32, i32* %R10D.i304.pre-phi, align 4
  %1747 = load i64, i64* %3, align 8
  %1748 = add i64 %1747, 5
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1745 to i32*
  store i32 %1746, i32* %1749, align 4
  %1750 = load i64, i64* %6, align 8
  %1751 = add i64 %1750, 16
  %1752 = load i32, i32* %R11D.i301.pre-phi, align 4
  %1753 = load i64, i64* %3, align 8
  %1754 = add i64 %1753, 5
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1751 to i32*
  store i32 %1752, i32* %1755, align 4
  %1756 = load i64, i64* %3, align 8
  %1757 = add i64 %1756, -2182
  %1758 = add i64 %1756, 5
  %1759 = load i64, i64* %6, align 8
  %1760 = add i64 %1759, -8
  %1761 = inttoptr i64 %1760 to i64*
  store i64 %1758, i64* %1761, align 8
  store i64 %1760, i64* %6, align 8
  store i64 %1757, i64* %3, align 8
  %call2_475f06 = tail call %struct.Memory* @sub_475680.img2buf(%struct.State* nonnull %0, i64 %1757, %struct.Memory* %call2_475e55)
  %1762 = load i64, i64* %RBP.i, align 8
  %1763 = add i64 %1762, -20
  %1764 = load i64, i64* %3, align 8
  %1765 = add i64 %1764, 3
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = zext i32 %1767 to i64
  store i64 %1768, i64* %RDI.i814, align 8
  %1769 = add i64 %1762, -96
  %1770 = add i64 %1764, 7
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RSI.i786, align 8
  %1773 = add i64 %1762, -16
  %1774 = add i64 %1764, 11
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i64*
  %1776 = load i64, i64* %1775, align 8
  store i64 %1776, i64* %RBX.i605, align 8
  %1777 = add i64 %1776, 6404
  %1778 = add i64 %1764, 17
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RAX.i823, align 8
  %1782 = add i64 %1762, -80
  %1783 = add i64 %1764, 20
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = sub i32 %1780, %1785
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX.i823, align 8
  %1788 = icmp ult i32 %1780, %1785
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %18, align 1
  %1790 = and i32 %1786, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %19, align 1
  %1795 = xor i32 %1785, %1780
  %1796 = xor i32 %1795, %1786
  %1797 = lshr i32 %1796, 4
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  store i8 %1799, i8* %20, align 1
  %1800 = icmp eq i32 %1786, 0
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %21, align 1
  %1802 = lshr i32 %1786, 31
  %1803 = trunc i32 %1802 to i8
  store i8 %1803, i8* %22, align 1
  %1804 = lshr i32 %1780, 31
  %1805 = lshr i32 %1785, 31
  %1806 = xor i32 %1805, %1804
  %1807 = xor i32 %1802, %1804
  %1808 = add nuw nsw i32 %1807, %1806
  %1809 = icmp eq i32 %1808, 2
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %23, align 1
  %1811 = add i64 %1762, -76
  %1812 = add i64 %1764, 23
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = sub i32 %1786, %1814
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RAX.i823, align 8
  %1817 = icmp ult i32 %1786, %1814
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %18, align 1
  %1819 = and i32 %1815, 255
  %1820 = tail call i32 @llvm.ctpop.i32(i32 %1819)
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = xor i8 %1822, 1
  store i8 %1823, i8* %19, align 1
  %1824 = xor i32 %1814, %1786
  %1825 = xor i32 %1824, %1815
  %1826 = lshr i32 %1825, 4
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  store i8 %1828, i8* %20, align 1
  %1829 = icmp eq i32 %1815, 0
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %21, align 1
  %1831 = lshr i32 %1815, 31
  %1832 = trunc i32 %1831 to i8
  store i8 %1832, i8* %22, align 1
  %1833 = lshr i32 %1814, 31
  %1834 = xor i32 %1833, %1802
  %1835 = xor i32 %1831, %1802
  %1836 = add nuw nsw i32 %1835, %1834
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %23, align 1
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -16
  %1841 = add i64 %1764, 27
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i64*
  %1843 = load i64, i64* %1842, align 8
  store i64 %1843, i64* %RBX.i605, align 8
  %1844 = add i64 %1843, 6400
  %1845 = add i64 %1764, 33
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = zext i32 %1847 to i64
  store i64 %1848, i64* %RCX.i746, align 8
  %1849 = add i64 %1839, -72
  %1850 = add i64 %1764, 36
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1849 to i32*
  %1852 = load i32, i32* %1851, align 4
  %1853 = sub i32 %1847, %1852
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RCX.i746, align 8
  %1855 = icmp ult i32 %1847, %1852
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %18, align 1
  %1857 = and i32 %1853, 255
  %1858 = tail call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  store i8 %1861, i8* %19, align 1
  %1862 = xor i32 %1852, %1847
  %1863 = xor i32 %1862, %1853
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  store i8 %1866, i8* %20, align 1
  %1867 = icmp eq i32 %1853, 0
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %21, align 1
  %1869 = lshr i32 %1853, 31
  %1870 = trunc i32 %1869 to i8
  store i8 %1870, i8* %22, align 1
  %1871 = lshr i32 %1847, 31
  %1872 = lshr i32 %1852, 31
  %1873 = xor i32 %1872, %1871
  %1874 = xor i32 %1869, %1871
  %1875 = add nuw nsw i32 %1874, %1873
  %1876 = icmp eq i32 %1875, 2
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %23, align 1
  %1878 = add i64 %1839, -68
  %1879 = add i64 %1764, 39
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = sub i32 %1853, %1881
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RCX.i746, align 8
  %1884 = load i64, i64* %RAX.i823, align 8
  %1885 = shl i64 %1884, 32
  %1886 = ashr exact i64 %1885, 32
  %1887 = sext i32 %1882 to i64
  %1888 = mul nsw i64 %1887, %1886
  %1889 = trunc i64 %1888 to i32
  %1890 = and i64 %1888, 4294967295
  store i64 %1890, i64* %RAX.i823, align 8
  %1891 = shl i64 %1888, 32
  %1892 = ashr exact i64 %1891, 32
  %1893 = icmp ne i64 %1892, %1888
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %18, align 1
  %1895 = and i32 %1889, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1900 = lshr i32 %1889, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %22, align 1
  store i8 %1894, i8* %23, align 1
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -84
  %1904 = add i64 %1764, 46
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = shl i64 %1888, 32
  %1908 = ashr exact i64 %1907, 32
  %1909 = sext i32 %1906 to i64
  %1910 = mul nsw i64 %1909, %1908
  %1911 = trunc i64 %1910 to i32
  %1912 = and i64 %1910, 4294967295
  store i64 %1912, i64* %RAX.i823, align 8
  %1913 = shl i64 %1910, 32
  %1914 = ashr exact i64 %1913, 32
  %1915 = icmp ne i64 %1914, %1910
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %18, align 1
  %1917 = and i32 %1911, 255
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %1922 = lshr i32 %1911, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %22, align 1
  store i8 %1916, i8* %23, align 1
  %sext34 = shl i64 %1910, 32
  %1924 = ashr exact i64 %sext34, 32
  store i64 %1924, i64* %RDX.i740, align 8
  %1925 = add i64 %1764, -478971
  %1926 = add i64 %1764, 54
  %1927 = load i64, i64* %6, align 8
  %1928 = add i64 %1927, -8
  %1929 = inttoptr i64 %1928 to i64*
  store i64 %1926, i64* %1929, align 8
  store i64 %1928, i64* %6, align 8
  store i64 %1925, i64* %3, align 8
  %call2_475f3c = tail call %struct.Memory* @sub_401010.write_plt(%struct.State* nonnull %0, i64 %1925, %struct.Memory* %call2_475f06)
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -88
  %1932 = load i64, i64* %3, align 8
  %1933 = add i64 %1932, 4
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1931 to i32*
  %1935 = load i32, i32* %1934, align 4
  store i8 0, i8* %18, align 1
  %1936 = and i32 %1935, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %19, align 1
  store i8 0, i8* %20, align 1
  %1941 = icmp eq i32 %1935, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %21, align 1
  %1943 = lshr i32 %1935, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1945 = add i64 %1930, -128
  %1946 = load i64, i64* %RAX.i823, align 8
  %1947 = add i64 %1932, 8
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1945 to i64*
  store i64 %1946, i64* %1948, align 8
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, 143
  %1951 = add i64 %1949, 6
  %1952 = load i8, i8* %21, align 1
  %1953 = icmp eq i8 %1952, 0
  %1954 = select i1 %1953, i64 %1950, i64 %1951
  store i64 %1954, i64* %3, align 8
  br i1 %1953, label %block_.L_475fd8, label %block_475f4f

block_475f4f:                                     ; preds = %block_475e6f
  %1955 = load i64, i64* %RBP.i, align 8
  %1956 = add i64 %1955, -16
  %1957 = add i64 %1954, 4
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i64*
  %1959 = load i64, i64* %1958, align 8
  store i64 %1959, i64* %RAX.i823, align 8
  %1960 = add i64 %1959, 6464
  %1961 = add i64 %1954, 11
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i64*
  %1963 = load i64, i64* %1962, align 8
  store i64 %1963, i64* %RAX.i823, align 8
  %1964 = add i64 %1963, 8
  %1965 = add i64 %1954, 15
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i64*
  %1967 = load i64, i64* %1966, align 8
  store i64 %1967, i64* %RDI.i814, align 8
  %1968 = add i64 %1955, -96
  %1969 = add i64 %1954, 19
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i64*
  %1971 = load i64, i64* %1970, align 8
  store i64 %1971, i64* %RSI.i786, align 8
  %1972 = add i64 %1954, 23
  store i64 %1972, i64* %3, align 8
  %1973 = load i64, i64* %1958, align 8
  store i64 %1973, i64* %RAX.i823, align 8
  %1974 = add i64 %1973, 6400
  %1975 = add i64 %1954, 29
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i32*
  %1977 = load i32, i32* %1976, align 4
  %1978 = zext i32 %1977 to i64
  store i64 %1978, i64* %RDX.i740, align 8
  %1979 = add i64 %1954, 33
  store i64 %1979, i64* %3, align 8
  %1980 = load i64, i64* %1958, align 8
  store i64 %1980, i64* %RAX.i823, align 8
  %1981 = add i64 %1980, 6404
  %1982 = add i64 %1954, 39
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RCX.i746, align 8
  %1986 = add i64 %1955, -84
  %1987 = add i64 %1954, 43
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %.pre-phi, align 8
  %1991 = add i64 %1955, -68
  %1992 = add i64 %1954, 47
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = zext i32 %1994 to i64
  store i64 %1995, i64* %.pre-phi19, align 8
  %1996 = add i64 %1955, -72
  %1997 = add i64 %1954, 51
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %.pre-phi24, align 8
  %2001 = add i64 %1955, -76
  %2002 = add i64 %1954, 55
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = zext i32 %2004 to i64
  store i64 %2005, i64* %.pre-phi29, align 8
  %2006 = add i64 %1955, -80
  %2007 = add i64 %1954, 58
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i32*
  %2009 = load i32, i32* %2008, align 4
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RBX.i605, align 8
  %2011 = load i32*, i32** %.pre-phi31, align 8
  %2012 = add i64 %1954, 62
  store i64 %2012, i64* %3, align 8
  store i32 %1999, i32* %2011, align 4
  %2013 = load i64, i64* %6, align 8
  %2014 = add i64 %2013, 8
  %2015 = load i32, i32* %R11D.i301.pre-phi, align 4
  %2016 = load i64, i64* %3, align 8
  %2017 = add i64 %2016, 5
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2014 to i32*
  store i32 %2015, i32* %2018, align 4
  %2019 = load i64, i64* %6, align 8
  %2020 = add i64 %2019, 16
  %2021 = load i32, i32* %EBX.i289, align 4
  %2022 = load i64, i64* %3, align 8
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2020 to i32*
  store i32 %2021, i32* %2024, align 4
  %2025 = load i64, i64* %3, align 8
  %2026 = add i64 %2025, -2326
  %2027 = add i64 %2025, 5
  %2028 = load i64, i64* %6, align 8
  %2029 = add i64 %2028, -8
  %2030 = inttoptr i64 %2029 to i64*
  store i64 %2027, i64* %2030, align 8
  store i64 %2029, i64* %6, align 8
  store i64 %2026, i64* %3, align 8
  %call2_475f96 = tail call %struct.Memory* @sub_475680.img2buf(%struct.State* nonnull %0, i64 %2026, %struct.Memory* %call2_475f3c)
  %2031 = load i64, i64* %RBP.i, align 8
  %2032 = add i64 %2031, -20
  %2033 = load i64, i64* %3, align 8
  %2034 = add i64 %2033, 3
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2032 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RDI.i814, align 8
  %2038 = add i64 %2031, -96
  %2039 = add i64 %2033, 7
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i64*
  %2041 = load i64, i64* %2040, align 8
  store i64 %2041, i64* %RSI.i786, align 8
  %2042 = add i64 %2031, -16
  %2043 = add i64 %2033, 11
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i64*
  %2045 = load i64, i64* %2044, align 8
  store i64 %2045, i64* %RAX.i823, align 8
  %2046 = add i64 %2045, 6404
  %2047 = add i64 %2033, 17
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i32*
  %2049 = load i32, i32* %2048, align 4
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RCX.i746, align 8
  %2051 = add i64 %2031, -80
  %2052 = add i64 %2033, 20
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = sub i32 %2049, %2054
  %2056 = zext i32 %2055 to i64
  store i64 %2056, i64* %RCX.i746, align 8
  %2057 = icmp ult i32 %2049, %2054
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %18, align 1
  %2059 = and i32 %2055, 255
  %2060 = tail call i32 @llvm.ctpop.i32(i32 %2059)
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  %2063 = xor i8 %2062, 1
  store i8 %2063, i8* %19, align 1
  %2064 = xor i32 %2054, %2049
  %2065 = xor i32 %2064, %2055
  %2066 = lshr i32 %2065, 4
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  store i8 %2068, i8* %20, align 1
  %2069 = icmp eq i32 %2055, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %21, align 1
  %2071 = lshr i32 %2055, 31
  %2072 = trunc i32 %2071 to i8
  store i8 %2072, i8* %22, align 1
  %2073 = lshr i32 %2049, 31
  %2074 = lshr i32 %2054, 31
  %2075 = xor i32 %2074, %2073
  %2076 = xor i32 %2071, %2073
  %2077 = add nuw nsw i32 %2076, %2075
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %23, align 1
  %2080 = add i64 %2031, -76
  %2081 = add i64 %2033, 23
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i32*
  %2083 = load i32, i32* %2082, align 4
  %2084 = sub i32 %2055, %2083
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RCX.i746, align 8
  %2086 = icmp ult i32 %2055, %2083
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %18, align 1
  %2088 = and i32 %2084, 255
  %2089 = tail call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %19, align 1
  %2093 = xor i32 %2083, %2055
  %2094 = xor i32 %2093, %2084
  %2095 = lshr i32 %2094, 4
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  store i8 %2097, i8* %20, align 1
  %2098 = icmp eq i32 %2084, 0
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %21, align 1
  %2100 = lshr i32 %2084, 31
  %2101 = trunc i32 %2100 to i8
  store i8 %2101, i8* %22, align 1
  %2102 = lshr i32 %2083, 31
  %2103 = xor i32 %2102, %2071
  %2104 = xor i32 %2100, %2071
  %2105 = add nuw nsw i32 %2104, %2103
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %23, align 1
  %2108 = load i64, i64* %RBP.i, align 8
  %2109 = add i64 %2108, -16
  %2110 = add i64 %2033, 27
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i64*
  %2112 = load i64, i64* %2111, align 8
  store i64 %2112, i64* %RAX.i823, align 8
  %2113 = add i64 %2112, 6400
  %2114 = add i64 %2033, 33
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RDX.i740, align 8
  %2118 = add i64 %2108, -72
  %2119 = add i64 %2033, 36
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sub i32 %2116, %2121
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RDX.i740, align 8
  %2124 = icmp ult i32 %2116, %2121
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %18, align 1
  %2126 = and i32 %2122, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %19, align 1
  %2131 = xor i32 %2121, %2116
  %2132 = xor i32 %2131, %2122
  %2133 = lshr i32 %2132, 4
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %20, align 1
  %2136 = icmp eq i32 %2122, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %21, align 1
  %2138 = lshr i32 %2122, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %22, align 1
  %2140 = lshr i32 %2116, 31
  %2141 = lshr i32 %2121, 31
  %2142 = xor i32 %2141, %2140
  %2143 = xor i32 %2138, %2140
  %2144 = add nuw nsw i32 %2143, %2142
  %2145 = icmp eq i32 %2144, 2
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %23, align 1
  %2147 = add i64 %2108, -68
  %2148 = add i64 %2033, 39
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = sub i32 %2122, %2150
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RDX.i740, align 8
  %2153 = load i64, i64* %RCX.i746, align 8
  %2154 = shl i64 %2153, 32
  %2155 = ashr exact i64 %2154, 32
  %2156 = sext i32 %2151 to i64
  %2157 = mul nsw i64 %2156, %2155
  %2158 = trunc i64 %2157 to i32
  %2159 = and i64 %2157, 4294967295
  store i64 %2159, i64* %RCX.i746, align 8
  %2160 = shl i64 %2157, 32
  %2161 = ashr exact i64 %2160, 32
  %2162 = icmp ne i64 %2161, %2157
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %18, align 1
  %2164 = and i32 %2158, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164)
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %2169 = lshr i32 %2158, 31
  %2170 = trunc i32 %2169 to i8
  store i8 %2170, i8* %22, align 1
  store i8 %2163, i8* %23, align 1
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -84
  %2173 = add i64 %2033, 46
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = shl i64 %2157, 32
  %2177 = ashr exact i64 %2176, 32
  %2178 = sext i32 %2175 to i64
  %2179 = mul nsw i64 %2178, %2177
  %2180 = trunc i64 %2179 to i32
  %2181 = and i64 %2179, 4294967295
  store i64 %2181, i64* %RCX.i746, align 8
  %2182 = shl i64 %2179, 32
  %2183 = ashr exact i64 %2182, 32
  %2184 = icmp ne i64 %2183, %2179
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %18, align 1
  %2186 = and i32 %2180, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %2191 = lshr i32 %2180, 31
  %2192 = trunc i32 %2191 to i8
  store i8 %2192, i8* %22, align 1
  store i8 %2185, i8* %23, align 1
  %sext35 = shl i64 %2179, 32
  %2193 = ashr exact i64 %sext35, 32
  store i64 %2193, i64* %RDX.i740, align 8
  %2194 = add i64 %2033, -479115
  %2195 = add i64 %2033, 54
  %2196 = load i64, i64* %6, align 8
  %2197 = add i64 %2196, -8
  %2198 = inttoptr i64 %2197 to i64*
  store i64 %2195, i64* %2198, align 8
  store i64 %2197, i64* %6, align 8
  store i64 %2194, i64* %3, align 8
  %call2_475fcc = tail call %struct.Memory* @sub_401010.write_plt(%struct.State* nonnull %0, i64 %2194, %struct.Memory* %call2_475f96)
  %2199 = load i64, i64* %RBP.i, align 8
  %2200 = add i64 %2199, -136
  %2201 = load i64, i64* %RAX.i823, align 8
  %2202 = load i64, i64* %3, align 8
  %2203 = add i64 %2202, 7
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2200 to i64*
  store i64 %2201, i64* %2204, align 8
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_475fd8

block_.L_475fd8:                                  ; preds = %block_475f4f, %block_475e6f
  %2205 = phi i64 [ %1950, %block_475e6f ], [ %.pre15, %block_475f4f ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_475f3c, %block_475e6f ], [ %call2_475fcc, %block_475f4f ]
  %2206 = add i64 %2205, 5
  store i64 %2206, i64* %3, align 8
  br label %block_.L_475fdd

block_.L_475fdd:                                  ; preds = %block_.L_475fd8, %block_.L_475ddc
  %2207 = phi i64 [ %1532, %block_.L_475ddc ], [ %2206, %block_.L_475fd8 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_475e55, %block_.L_475ddc ], [ %MEMORY.5, %block_.L_475fd8 ]
  %2208 = load i64, i64* %RBP.i, align 8
  %2209 = add i64 %2208, -96
  %2210 = add i64 %2207, 4
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i64*
  %2212 = load i64, i64* %2211, align 8
  store i64 %2212, i64* %RDI.i814, align 8
  %2213 = add i64 %2207, -479325
  %2214 = add i64 %2207, 9
  %2215 = load i64, i64* %6, align 8
  %2216 = add i64 %2215, -8
  %2217 = inttoptr i64 %2216 to i64*
  store i64 %2214, i64* %2217, align 8
  store i64 %2216, i64* %6, align 8
  store i64 %2213, i64* %3, align 8
  %2218 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.6)
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_475fe6

block_.L_475fe6:                                  ; preds = %block_.L_475fdd, %block_475b1e
  %2219 = phi i64 [ %.pre16, %block_.L_475fdd ], [ %201, %block_475b1e ]
  %MEMORY.7 = phi %struct.Memory* [ %2218, %block_.L_475fdd ], [ %106, %block_475b1e ]
  %2220 = load i64, i64* %6, align 8
  %2221 = add i64 %2220, 152
  store i64 %2221, i64* %6, align 8
  %2222 = icmp ugt i64 %2220, -153
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %18, align 1
  %2224 = trunc i64 %2221 to i32
  %2225 = and i32 %2224, 255
  %2226 = tail call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  store i8 %2229, i8* %19, align 1
  %2230 = xor i64 %2220, 16
  %2231 = xor i64 %2230, %2221
  %2232 = lshr i64 %2231, 4
  %2233 = trunc i64 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %20, align 1
  %2235 = icmp eq i64 %2221, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %21, align 1
  %2237 = lshr i64 %2221, 63
  %2238 = trunc i64 %2237 to i8
  store i8 %2238, i8* %22, align 1
  %2239 = lshr i64 %2220, 63
  %2240 = xor i64 %2237, %2239
  %2241 = add nuw nsw i64 %2240, %2237
  %2242 = icmp eq i64 %2241, 2
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %23, align 1
  %2244 = add i64 %2219, 8
  store i64 %2244, i64* %3, align 8
  %2245 = add i64 %2220, 160
  %2246 = inttoptr i64 %2221 to i64*
  %2247 = load i64, i64* %2246, align 8
  store i64 %2247, i64* %RBX.i605, align 8
  store i64 %2245, i64* %6, align 8
  %2248 = add i64 %2219, 9
  store i64 %2248, i64* %3, align 8
  %2249 = add i64 %2220, 168
  %2250 = inttoptr i64 %2245 to i64*
  %2251 = load i64, i64* %2250, align 8
  store i64 %2251, i64* %RBP.i, align 8
  store i64 %2249, i64* %6, align 8
  %2252 = add i64 %2219, 10
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2249 to i64*
  %2254 = load i64, i64* %2253, align 8
  store i64 %2254, i64* %3, align 8
  %2255 = add i64 %2220, 176
  store i64 %2255, i64* %6, align 8
  ret %struct.Memory* %MEMORY.7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x98___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -152
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 152
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4bd7e0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4bd7e0_type* @G_0x4bd7e0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4bd7e8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4bd7e8_type* @G_0x4bd7e8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4bd7f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4bd7f0_type* @G_0x4bd7f0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x4bd7f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4bd7f8_type* @G_0x4bd7f8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd0__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 72656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xcf0__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 3312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_475b02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x65__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18f4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6388
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_475b23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_475fe6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x19a0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_475bce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x1998__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -48
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x19a4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6564
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x19a8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6568
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x199c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6556
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x19ac__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6572
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x199c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6556
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x19b0__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_475bea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18f8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x18fc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6396
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_475c2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c236c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c236c_type* @G__0x4c236c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_475ddc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x19a4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x19a8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x199c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6556
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x19b0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 6576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1900__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1904__rcx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.img2buf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1904__rbx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = add i64 %3, 6404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1900__rbx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = add i64 %3, 6400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.write_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722cb0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x488__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_475dbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_475dd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_475ddc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18f8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18fc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RCX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1998__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_475fdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_475fd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1900__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1904__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_475fdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x98___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 152
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -153
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
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
