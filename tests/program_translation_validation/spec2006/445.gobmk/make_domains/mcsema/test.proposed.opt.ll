; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G__0xac1610_type = type <{ [8 x i8] }>
%G__0xac1c50_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G__0xac1610 = global %G__0xac1610_type zeroinitializer
@G__0xac1c50 = global %G__0xac1c50_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_438450.clear_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4384f0.is_lively(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4a5e60.find_cuts(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_438ca0.originate_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_438f80.count_neighbours(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @make_domains(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -3320
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i861 = bitcast %union.anon* %18 to i32*
  %RAX.i862 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RCX.i901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 1600, i64* %RCX.i901, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 1600, i64* %19, align 8
  %R9.i896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %20 = add i64 %7, -3256
  store i64 %20, i64* %R9.i896, align 8
  %R10.i893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %R10.i893, align 8
  %R11.i891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %R11.i891, align 8
  %RDI.i888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %21 = add i64 %7, -16
  %22 = load i64, i64* %RDI.i888, align 8
  %23 = add i64 %10, 51
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %24, align 8
  %RSI.i885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -16
  %27 = load i64, i64* %RSI.i885, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %31 to i32*
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -20
  %34 = load i32, i32* %EDX.i, align 4
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %R11.i891, align 8
  %39 = load i64, i64* %3, align 8
  store i64 %38, i64* %RDI.i888, align 8
  %40 = load i32, i32* %EAX.i861, align 4
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %RSI.i885, align 8
  %RDX.i875 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %42 = load i64, i64* %19, align 8
  store i64 %42, i64* %RDX.i875, align 8
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -3288
  %45 = load i64, i64* %R10.i893, align 8
  %46 = add i64 %39, 15
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -3296
  %50 = load i64, i64* %19, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -3304
  %56 = load i64, i64* %R9.i896, align 8
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 7
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -3308
  %62 = load i32, i32* %EAX.i861, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 6
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, -224286
  %68 = add i64 %66, 5
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %6, align 8
  store i64 %67, i64* %3, align 8
  %72 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -3288
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 7
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %RDI.i888, align 8
  %79 = add i64 %73, -3308
  %80 = add i64 %75, 13
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %RSI.i885, align 8
  %84 = add i64 %73, -3296
  %85 = add i64 %75, 20
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RDX.i875, align 8
  %88 = add i64 %75, -224291
  %89 = add i64 %75, 25
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %6, align 8
  store i64 %88, i64* %3, align 8
  %93 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %72)
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -3304
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RDX.i875, align 8
  store i64 %99, i64* %RDI.i888, align 8
  %100 = add i64 %94, -3308
  %101 = add i64 %96, 16
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RSI.i885, align 8
  %105 = add i64 %94, -3296
  %106 = add i64 %96, 23
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RDX.i875, align 8
  %109 = add i64 %96, -224316
  %110 = add i64 %96, 28
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, -8
  %113 = inttoptr i64 %112 to i64*
  store i64 %110, i64* %113, align 8
  store i64 %112, i64* %6, align 8
  store i64 %109, i64* %3, align 8
  %114 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %93)
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -36
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 7
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %116 to i32*
  store i32 21, i32* %119, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_437ccf

block_.L_437ccf:                                  ; preds = %block_.L_437d4b, %entry
  %120 = phi i64 [ %.pre, %entry ], [ %348, %block_.L_437d4b ]
  %MEMORY.0 = phi %struct.Memory* [ %114, %entry ], [ %MEMORY.3, %block_.L_437d4b ]
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -36
  %123 = add i64 %120, 7
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, -400
  %127 = icmp ult i32 %125, 400
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %12, align 1
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %13, align 1
  %134 = xor i32 %125, 16
  %135 = xor i32 %134, %126
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %14, align 1
  %139 = icmp eq i32 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %15, align 1
  %141 = lshr i32 %126, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %16, align 1
  %143 = lshr i32 %125, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %17, align 1
  %148 = icmp ne i8 %142, 0
  %149 = xor i1 %148, %146
  %.v108 = select i1 %149, i64 13, i64 143
  %150 = add i64 %120, %.v108
  store i64 %150, i64* %3, align 8
  br i1 %149, label %block_437cdc, label %block_.L_437d5e

block_437cdc:                                     ; preds = %block_.L_437ccf
  %151 = add i64 %150, 4
  store i64 %151, i64* %3, align 8
  %152 = load i32, i32* %124, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RAX.i862, align 8
  %154 = add nsw i64 %153, 12099168
  %155 = add i64 %150, 12
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i8*
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  store i64 %158, i64* %RCX.i901, align 8
  %159 = zext i8 %157 to i32
  %160 = add nsw i32 %159, -3
  %161 = icmp ult i8 %157, 3
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %12, align 1
  %163 = and i32 %160, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %13, align 1
  %168 = xor i32 %160, %159
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %14, align 1
  %172 = icmp eq i32 %160, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %15, align 1
  %174 = lshr i32 %160, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v157 = select i1 %172, i64 111, i64 21
  %176 = add i64 %150, %.v157
  store i64 %176, i64* %3, align 8
  br i1 %172, label %block_.L_437d4b, label %block_437cf1

block_437cf1:                                     ; preds = %block_437cdc
  %177 = add i64 %121, -8
  %178 = add i64 %176, 5
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i8 0, i8* %12, align 1
  %181 = trunc i64 %180 to i32
  %182 = and i32 %181, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %187 = icmp eq i64 %180, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %15, align 1
  %189 = lshr i64 %180, 63
  %190 = trunc i64 %189 to i8
  store i8 %190, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v158 = select i1 %187, i64 34, i64 11
  %191 = add i64 %176, %.v158
  store i64 %191, i64* %3, align 8
  br i1 %187, label %block_.L_437d13, label %block_437cfc

block_437cfc:                                     ; preds = %block_437cf1
  %192 = add i64 %191, 4
  store i64 %192, i64* %3, align 8
  %193 = load i64, i64* %179, align 8
  store i64 %193, i64* %RAX.i862, align 8
  %194 = add i64 %191, 8
  store i64 %194, i64* %3, align 8
  %195 = load i32, i32* %124, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, 36
  store i64 %197, i64* %RCX.i901, align 8
  %198 = lshr i64 %197, 63
  %199 = add i64 %197, %193
  store i64 %199, i64* %RAX.i862, align 8
  %200 = icmp ult i64 %199, %193
  %201 = icmp ult i64 %199, %197
  %202 = or i1 %200, %201
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %12, align 1
  %204 = trunc i64 %199 to i32
  %205 = and i32 %204, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %13, align 1
  %210 = xor i64 %197, %193
  %211 = xor i64 %210, %199
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %14, align 1
  %215 = icmp eq i64 %199, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %15, align 1
  %217 = lshr i64 %199, 63
  %218 = trunc i64 %217 to i8
  store i8 %218, i8* %16, align 1
  %219 = lshr i64 %193, 63
  %220 = xor i64 %217, %219
  %221 = xor i64 %217, %198
  %222 = add nuw nsw i64 %220, %221
  %223 = icmp eq i64 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %17, align 1
  store i64 %199, i64* %RDI.i888, align 8
  %225 = add i64 %191, 1876
  %226 = add i64 %191, 23
  %227 = load i64, i64* %6, align 8
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %226, i64* %229, align 8
  store i64 %228, i64* %6, align 8
  store i64 %225, i64* %3, align 8
  %call2_437d0e = tail call %struct.Memory* @sub_438450.clear_eye(%struct.State* nonnull %0, i64 %225, %struct.Memory* %MEMORY.0)
  %.pre101 = load i64, i64* %RBP.i, align 8
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_437d13

block_.L_437d13:                                  ; preds = %block_437cfc, %block_437cf1
  %230 = phi i64 [ %.pre102, %block_437cfc ], [ %191, %block_437cf1 ]
  %231 = phi i64 [ %.pre101, %block_437cfc ], [ %121, %block_437cf1 ]
  %232 = add i64 %231, -16
  %233 = add i64 %230, 5
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i8 0, i8* %12, align 1
  %236 = trunc i64 %235 to i32
  %237 = and i32 %236, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %242 = icmp eq i64 %235, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %15, align 1
  %244 = lshr i64 %235, 63
  %245 = trunc i64 %244 to i8
  store i8 %245, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v159 = select i1 %242, i64 34, i64 11
  %246 = add i64 %230, %.v159
  store i64 %246, i64* %3, align 8
  br i1 %242, label %block_.L_437d35, label %block_437d1e

block_437d1e:                                     ; preds = %block_.L_437d13
  %247 = add i64 %246, 4
  store i64 %247, i64* %3, align 8
  %248 = load i64, i64* %234, align 8
  store i64 %248, i64* %RAX.i862, align 8
  %249 = add i64 %231, -36
  %250 = add i64 %246, 8
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = mul nsw i64 %253, 36
  store i64 %254, i64* %RCX.i901, align 8
  %255 = lshr i64 %254, 63
  %256 = add i64 %254, %248
  store i64 %256, i64* %RAX.i862, align 8
  %257 = icmp ult i64 %256, %248
  %258 = icmp ult i64 %256, %254
  %259 = or i1 %257, %258
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %12, align 1
  %261 = trunc i64 %256 to i32
  %262 = and i32 %261, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %13, align 1
  %267 = xor i64 %254, %248
  %268 = xor i64 %267, %256
  %269 = lshr i64 %268, 4
  %270 = trunc i64 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %14, align 1
  %272 = icmp eq i64 %256, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %15, align 1
  %274 = lshr i64 %256, 63
  %275 = trunc i64 %274 to i8
  store i8 %275, i8* %16, align 1
  %276 = lshr i64 %248, 63
  %277 = xor i64 %274, %276
  %278 = xor i64 %274, %255
  %279 = add nuw nsw i64 %277, %278
  %280 = icmp eq i64 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %17, align 1
  store i64 %256, i64* %RDI.i888, align 8
  %282 = add i64 %246, 1842
  %283 = add i64 %246, 23
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, -8
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286, align 8
  store i64 %285, i64* %6, align 8
  store i64 %282, i64* %3, align 8
  %call2_437d30 = tail call %struct.Memory* @sub_438450.clear_eye(%struct.State* nonnull %0, i64 %282, %struct.Memory* %MEMORY.0)
  %.pre103 = load i64, i64* %RBP.i, align 8
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_437d35

block_.L_437d35:                                  ; preds = %block_437d1e, %block_.L_437d13
  %287 = phi i64 [ %246, %block_.L_437d13 ], [ %.pre104, %block_437d1e ]
  %288 = phi i64 [ %231, %block_.L_437d13 ], [ %.pre103, %block_437d1e ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_.L_437d13 ], [ %call2_437d30, %block_437d1e ]
  %289 = add i64 %288, -20
  %290 = add i64 %287, 3
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RDI.i888, align 8
  %294 = add i64 %288, -36
  %295 = add i64 %287, 6
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RSI.i885, align 8
  %299 = add i64 %287, 1979
  %300 = add i64 %287, 11
  %301 = load i64, i64* %6, align 8
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*
  store i64 %300, i64* %303, align 8
  store i64 %302, i64* %6, align 8
  store i64 %299, i64* %3, align 8
  %call2_437d3b = tail call %struct.Memory* @sub_4384f0.is_lively(%struct.State* nonnull %0, i64 %299, %struct.Memory* %MEMORY.2)
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -36
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, 4
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %RCX.i901, align 8
  %311 = shl nsw i64 %310, 2
  %312 = add i64 %304, -1648
  %313 = add i64 %312, %311
  %314 = load i32, i32* %EAX.i861, align 4
  %315 = add i64 %306, 11
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %316, align 4
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i64, i64* %RBP.i, align 8
  br label %block_.L_437d4b

block_.L_437d4b:                                  ; preds = %block_.L_437d35, %block_437cdc
  %317 = phi i64 [ %121, %block_437cdc ], [ %.pre106, %block_.L_437d35 ]
  %318 = phi i64 [ %176, %block_437cdc ], [ %.pre105, %block_.L_437d35 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_437cdc ], [ %call2_437d3b, %block_.L_437d35 ]
  %319 = add i64 %317, -36
  %320 = add i64 %318, 8
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, 1
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i862, align 8
  %325 = icmp eq i32 %322, -1
  %326 = icmp eq i32 %323, 0
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %12, align 1
  %329 = and i32 %323, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %13, align 1
  %334 = xor i32 %323, %322
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %14, align 1
  %338 = zext i1 %326 to i8
  store i8 %338, i8* %15, align 1
  %339 = lshr i32 %323, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %16, align 1
  %341 = lshr i32 %322, 31
  %342 = xor i32 %339, %341
  %343 = add nuw nsw i32 %342, %339
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %17, align 1
  %346 = add i64 %318, 14
  store i64 %346, i64* %3, align 8
  store i32 %323, i32* %321, align 4
  %347 = load i64, i64* %3, align 8
  %348 = add i64 %347, -138
  store i64 %348, i64* %3, align 8
  br label %block_.L_437ccf

block_.L_437d5e:                                  ; preds = %block_.L_437ccf
  store i64 2, i64* %RDI.i888, align 8
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %RSI.i885, align 8
  store i64 1, i64* %19, align 8
  %349 = add i64 %121, -3248
  store i64 %349, i64* %RCX.i901, align 8
  %350 = add i64 %121, -1648
  store i64 %350, i64* %RDX.i875, align 8
  %351 = add i64 %150, 2162
  %352 = add i64 %150, 40
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %6, align 8
  store i64 %351, i64* %3, align 8
  %call2_437d81 = tail call %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* nonnull %0, i64 %351, %struct.Memory* %MEMORY.0)
  %356 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i888, align 8
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %RSI.i885, align 8
  store i64 0, i64* %19, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -3248
  store i64 %358, i64* %RCX.i901, align 8
  %359 = add i64 %357, -1648
  store i64 %359, i64* %RDX.i875, align 8
  %360 = add i64 %356, 2122
  %361 = add i64 %356, 37
  %362 = load i64, i64* %6, align 8
  %363 = add i64 %362, -8
  %364 = inttoptr i64 %363 to i64*
  store i64 %361, i64* %364, align 8
  store i64 %363, i64* %6, align 8
  store i64 %360, i64* %3, align 8
  %call2_437da6 = tail call %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* nonnull %0, i64 %360, %struct.Memory* %call2_437d81)
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -24
  %367 = load i64, i64* %3, align 8
  %368 = add i64 %367, 7
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %366 to i32*
  store i32 0, i32* %369, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_437db2

block_.L_437db2:                                  ; preds = %block_.L_438228, %block_.L_437d5e
  %370 = phi i64 [ %2128, %block_.L_438228 ], [ %.pre75, %block_.L_437d5e ]
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -24
  %373 = add i64 %370, 3
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i862, align 8
  %377 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %378 = sub i32 %375, %377
  %379 = icmp ult i32 %375, %377
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %12, align 1
  %381 = and i32 %378, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %13, align 1
  %386 = xor i32 %377, %375
  %387 = xor i32 %386, %378
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %14, align 1
  %391 = icmp eq i32 %378, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %15, align 1
  %393 = lshr i32 %378, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %16, align 1
  %395 = lshr i32 %375, 31
  %396 = lshr i32 %377, 31
  %397 = xor i32 %396, %395
  %398 = xor i32 %393, %395
  %399 = add nuw nsw i32 %398, %397
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %17, align 1
  %402 = icmp ne i8 %394, 0
  %403 = xor i1 %402, %400
  %.v109 = select i1 %403, i64 16, i64 1161
  %404 = add i64 %370, %.v109
  store i64 %404, i64* %3, align 8
  br i1 %403, label %block_437dc2, label %block_.L_43823b

block_437dc2:                                     ; preds = %block_.L_437db2
  %405 = add i64 %371, -28
  %406 = add i64 %404, 7
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  store i32 0, i32* %407, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_437dc9

block_.L_437dc9:                                  ; preds = %block_.L_438215, %block_437dc2
  %408 = phi i64 [ %2099, %block_.L_438215 ], [ %.pre87, %block_437dc2 ]
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -28
  %411 = add i64 %408, 3
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RAX.i862, align 8
  %415 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %416 = sub i32 %413, %415
  %417 = icmp ult i32 %413, %415
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %12, align 1
  %419 = and i32 %416, 255
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419)
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %13, align 1
  %424 = xor i32 %415, %413
  %425 = xor i32 %424, %416
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %14, align 1
  %429 = icmp eq i32 %416, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %15, align 1
  %431 = lshr i32 %416, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %16, align 1
  %433 = lshr i32 %413, 31
  %434 = lshr i32 %415, 31
  %435 = xor i32 %434, %433
  %436 = xor i32 %431, %433
  %437 = add nuw nsw i32 %436, %435
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %17, align 1
  %440 = icmp ne i8 %432, 0
  %441 = xor i1 %440, %438
  %.v = select i1 %441, i64 16, i64 1119
  %442 = add i64 %408, %.v
  store i64 %442, i64* %3, align 8
  %443 = add i64 %409, -24
  br i1 %441, label %block_437dd9, label %block_.L_438228

block_437dd9:                                     ; preds = %block_.L_437dc9
  %444 = add i64 %442, 4
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = mul i32 %446, 20
  %448 = add i32 %447, 21
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i862, align 8
  %450 = icmp ugt i32 %447, -22
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %12, align 1
  %452 = and i32 %448, 253
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %13, align 1
  %457 = xor i32 %447, 16
  %458 = xor i32 %457, %448
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %462 = lshr i32 %448, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %16, align 1
  %464 = lshr i32 %447, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %462
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %17, align 1
  %469 = add i64 %442, 10
  store i64 %469, i64* %3, align 8
  %470 = load i32, i32* %412, align 4
  %471 = add i32 %470, %448
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i862, align 8
  %473 = icmp ult i32 %471, %448
  %474 = icmp ult i32 %471, %470
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %12, align 1
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %13, align 1
  %482 = xor i32 %470, %448
  %483 = xor i32 %482, %471
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %14, align 1
  %487 = icmp eq i32 %471, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %15, align 1
  %489 = lshr i32 %471, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %16, align 1
  %491 = lshr i32 %470, 31
  %492 = xor i32 %489, %462
  %493 = xor i32 %489, %491
  %494 = add nuw nsw i32 %492, %493
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %17, align 1
  %497 = add i64 %409, -36
  %498 = add i64 %442, 13
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  store i32 %471, i32* %499, align 4
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -36
  %502 = load i64, i64* %3, align 8
  %503 = add i64 %502, 4
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %501 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  store i64 %506, i64* %RCX.i901, align 8
  %507 = add nsw i64 %506, 12099168
  %508 = add i64 %502, 12
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i8*
  %510 = load i8, i8* %509, align 1
  %511 = zext i8 %510 to i64
  store i64 %511, i64* %RAX.i862, align 8
  %512 = zext i8 %510 to i32
  store i8 0, i8* %12, align 1
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %517 = icmp eq i8 %510, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v123 = select i1 %517, i64 39, i64 21
  %519 = add i64 %502, %.v123
  store i64 %519, i64* %3, align 8
  br i1 %517, label %block_.L_437e0d, label %block_437dfb

block_437dfb:                                     ; preds = %block_437dd9
  %520 = add i64 %519, 4
  store i64 %520, i64* %3, align 8
  %521 = load i32, i32* %504, align 4
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %RAX.i862, align 8
  %523 = shl nsw i64 %522, 2
  %524 = add i64 %500, -1648
  %525 = add i64 %524, %523
  %526 = add i64 %519, 12
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  store i8 0, i8* %12, align 1
  %529 = and i32 %528, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %534 = icmp eq i32 %528, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %15, align 1
  %536 = lshr i32 %528, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v124 = select i1 %534, i64 18, i64 1050
  %538 = add i64 %519, %.v124
  store i64 %538, i64* %3, align 8
  br i1 %534, label %block_.L_437e0d, label %block_.L_438215

block_.L_437e0d:                                  ; preds = %block_437dfb, %block_437dd9
  %539 = phi i64 [ %538, %block_437dfb ], [ %519, %block_437dd9 ]
  %540 = add i64 %539, 4
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %504, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RAX.i862, align 8
  %543 = shl nsw i64 %542, 2
  %544 = add nsw i64 %543, 11277840
  %545 = add i64 %539, 12
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  store i8 0, i8* %12, align 1
  %548 = and i32 %547, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %553 = icmp eq i32 %547, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %15, align 1
  %555 = lshr i32 %547, 31
  %556 = trunc i32 %555 to i8
  store i8 %556, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v125 = select i1 %553, i64 18, i64 105
  %557 = add i64 %539, %.v125
  store i64 %557, i64* %3, align 8
  br i1 %553, label %block_437e1f, label %block_.L_437e76

block_437e1f:                                     ; preds = %block_.L_437e0d
  %558 = add i64 %557, 4
  store i64 %558, i64* %3, align 8
  %559 = load i32, i32* %504, align 4
  %560 = sext i32 %559 to i64
  store i64 %560, i64* %RAX.i862, align 8
  %561 = shl nsw i64 %560, 2
  %562 = add nsw i64 %561, 11279440
  %563 = add i64 %557, 12
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  store i8 0, i8* %12, align 1
  %566 = and i32 %565, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %571 = icmp eq i32 %565, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %15, align 1
  %573 = lshr i32 %565, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v154 = select i1 %571, i64 18, i64 87
  %575 = add i64 %557, %.v154
  store i64 %575, i64* %3, align 8
  br i1 %571, label %block_437e31, label %block_.L_437e76

block_437e31:                                     ; preds = %block_437e1f
  %576 = add i64 %500, -16
  %577 = add i64 %575, 5
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i8 0, i8* %12, align 1
  %580 = trunc i64 %579 to i32
  %581 = and i32 %580, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %586 = icmp eq i64 %579, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %15, align 1
  %588 = lshr i64 %579, 63
  %589 = trunc i64 %588 to i8
  store i8 %589, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v155 = select i1 %586, i64 32, i64 11
  %590 = add i64 %575, %.v155
  store i64 %590, i64* %3, align 8
  br i1 %586, label %block_.L_437e51, label %block_437e3c

block_437e3c:                                     ; preds = %block_437e31
  %591 = add i64 %590, 4
  store i64 %591, i64* %3, align 8
  %592 = load i64, i64* %578, align 8
  store i64 %592, i64* %RAX.i862, align 8
  %593 = add i64 %590, 8
  store i64 %593, i64* %3, align 8
  %594 = load i32, i32* %504, align 4
  %595 = sext i32 %594 to i64
  %596 = mul nsw i64 %595, 36
  store i64 %596, i64* %RCX.i901, align 8
  %597 = lshr i64 %596, 63
  %598 = add i64 %596, %592
  store i64 %598, i64* %RAX.i862, align 8
  %599 = icmp ult i64 %598, %592
  %600 = icmp ult i64 %598, %596
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %12, align 1
  %603 = trunc i64 %598 to i32
  %604 = and i32 %603, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %13, align 1
  %609 = xor i64 %596, %592
  %610 = xor i64 %609, %598
  %611 = lshr i64 %610, 4
  %612 = trunc i64 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %14, align 1
  %614 = icmp eq i64 %598, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %15, align 1
  %616 = lshr i64 %598, 63
  %617 = trunc i64 %616 to i8
  store i8 %617, i8* %16, align 1
  %618 = lshr i64 %592, 63
  %619 = xor i64 %616, %618
  %620 = xor i64 %616, %597
  %621 = add nuw nsw i64 %619, %620
  %622 = icmp eq i64 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %17, align 1
  %624 = inttoptr i64 %598 to i32*
  %625 = add i64 %590, 21
  store i64 %625, i64* %3, align 8
  store i32 3, i32* %624, align 4
  %.pre88 = load i64, i64* %RBP.i, align 8
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_437e51

block_.L_437e51:                                  ; preds = %block_437e3c, %block_437e31
  %626 = phi i64 [ %.pre89, %block_437e3c ], [ %590, %block_437e31 ]
  %627 = phi i64 [ %.pre88, %block_437e3c ], [ %500, %block_437e31 ]
  %628 = add i64 %627, -8
  %629 = add i64 %626, 5
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i8 0, i8* %12, align 1
  %632 = trunc i64 %631 to i32
  %633 = and i32 %632, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %638 = icmp eq i64 %631, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %15, align 1
  %640 = lshr i64 %631, 63
  %641 = trunc i64 %640 to i8
  store i8 %641, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v156 = select i1 %638, i64 32, i64 11
  %642 = add i64 %626, %.v156
  store i64 %642, i64* %3, align 8
  br i1 %638, label %block_.L_437e71, label %block_437e5c

block_437e5c:                                     ; preds = %block_.L_437e51
  %643 = add i64 %642, 4
  store i64 %643, i64* %3, align 8
  %644 = load i64, i64* %630, align 8
  store i64 %644, i64* %RAX.i862, align 8
  %645 = add i64 %627, -36
  %646 = add i64 %642, 8
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  %650 = mul nsw i64 %649, 36
  store i64 %650, i64* %RCX.i901, align 8
  %651 = lshr i64 %650, 63
  %652 = add i64 %650, %644
  store i64 %652, i64* %RAX.i862, align 8
  %653 = icmp ult i64 %652, %644
  %654 = icmp ult i64 %652, %650
  %655 = or i1 %653, %654
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %12, align 1
  %657 = trunc i64 %652 to i32
  %658 = and i32 %657, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %13, align 1
  %663 = xor i64 %650, %644
  %664 = xor i64 %663, %652
  %665 = lshr i64 %664, 4
  %666 = trunc i64 %665 to i8
  %667 = and i8 %666, 1
  store i8 %667, i8* %14, align 1
  %668 = icmp eq i64 %652, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %15, align 1
  %670 = lshr i64 %652, 63
  %671 = trunc i64 %670 to i8
  store i8 %671, i8* %16, align 1
  %672 = lshr i64 %644, 63
  %673 = xor i64 %670, %672
  %674 = xor i64 %670, %651
  %675 = add nuw nsw i64 %673, %674
  %676 = icmp eq i64 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %17, align 1
  %678 = inttoptr i64 %652 to i32*
  %679 = add i64 %642, 21
  store i64 %679, i64* %3, align 8
  store i32 3, i32* %678, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_437e71

block_.L_437e71:                                  ; preds = %block_437e5c, %block_.L_437e51
  %680 = phi i64 [ %.pre90, %block_437e5c ], [ %642, %block_.L_437e51 ]
  %681 = add i64 %680, 927
  br label %block_.L_438210

block_.L_437e76:                                  ; preds = %block_437e1f, %block_.L_437e0d
  %682 = phi i64 [ %575, %block_437e1f ], [ %557, %block_.L_437e0d ]
  %683 = add i64 %682, 4
  store i64 %683, i64* %3, align 8
  %684 = load i32, i32* %504, align 4
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RAX.i862, align 8
  %686 = shl nsw i64 %685, 2
  %687 = add nsw i64 %686, 11277840
  %688 = add i64 %682, 12
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = add i32 %690, -1
  %692 = icmp eq i32 %690, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %12, align 1
  %694 = and i32 %691, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %13, align 1
  %699 = xor i32 %691, %690
  %700 = lshr i32 %699, 4
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %14, align 1
  %703 = icmp eq i32 %691, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %15, align 1
  %705 = lshr i32 %691, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %16, align 1
  %707 = lshr i32 %690, 31
  %708 = xor i32 %705, %707
  %709 = add nuw nsw i32 %708, %707
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %17, align 1
  %.v126 = select i1 %703, i64 18, i64 219
  %712 = add i64 %682, %.v126
  store i64 %712, i64* %3, align 8
  br i1 %703, label %block_437e88, label %block_.L_437f51

block_437e88:                                     ; preds = %block_.L_437e76
  %713 = add i64 %712, 4
  store i64 %713, i64* %3, align 8
  %714 = load i32, i32* %504, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RAX.i862, align 8
  %716 = shl nsw i64 %715, 2
  %717 = add nsw i64 %716, 11279440
  %718 = add i64 %712, 12
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  store i8 0, i8* %12, align 1
  %721 = and i32 %720, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %726 = icmp eq i32 %720, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %15, align 1
  %728 = lshr i32 %720, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v148 = select i1 %726, i64 18, i64 201
  %730 = add i64 %712, %.v148
  store i64 %730, i64* %3, align 8
  br i1 %726, label %block_437e9a, label %block_.L_437f51

block_437e9a:                                     ; preds = %block_437e88
  %731 = add i64 %500, -8
  %732 = add i64 %730, 5
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i8 0, i8* %12, align 1
  %735 = trunc i64 %734 to i32
  %736 = and i32 %735, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %741 = icmp eq i64 %734, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %15, align 1
  %743 = lshr i64 %734, 63
  %744 = trunc i64 %743 to i8
  store i8 %744, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v149 = select i1 %741, i64 183, i64 11
  %745 = add i64 %730, %.v149
  store i64 %745, i64* %3, align 8
  br i1 %741, label %block_.L_437f51, label %block_437ea5

block_437ea5:                                     ; preds = %block_437e9a
  %746 = add i64 %745, 4
  store i64 %746, i64* %3, align 8
  %747 = load i64, i64* %733, align 8
  store i64 %747, i64* %RAX.i862, align 8
  %748 = add i64 %745, 8
  store i64 %748, i64* %3, align 8
  %749 = load i32, i32* %504, align 4
  %750 = sext i32 %749 to i64
  %751 = mul nsw i64 %750, 36
  store i64 %751, i64* %RCX.i901, align 8
  %752 = lshr i64 %751, 63
  %753 = add i64 %751, %747
  store i64 %753, i64* %RAX.i862, align 8
  %754 = icmp ult i64 %753, %747
  %755 = icmp ult i64 %753, %751
  %756 = or i1 %754, %755
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %12, align 1
  %758 = trunc i64 %753 to i32
  %759 = and i32 %758, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %13, align 1
  %764 = xor i64 %751, %747
  %765 = xor i64 %764, %753
  %766 = lshr i64 %765, 4
  %767 = trunc i64 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %14, align 1
  %769 = icmp eq i64 %753, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %15, align 1
  %771 = lshr i64 %753, 63
  %772 = trunc i64 %771 to i8
  store i8 %772, i8* %16, align 1
  %773 = lshr i64 %747, 63
  %774 = xor i64 %771, %773
  %775 = xor i64 %771, %752
  %776 = add nuw nsw i64 %774, %775
  %777 = icmp eq i64 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %17, align 1
  %779 = inttoptr i64 %753 to i32*
  %780 = add i64 %745, 21
  store i64 %780, i64* %3, align 8
  store i32 5, i32* %779, align 4
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -32
  %783 = load i64, i64* %3, align 8
  %784 = add i64 %783, 7
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %782 to i32*
  store i32 0, i32* %785, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_437ec1

block_.L_437ec1:                                  ; preds = %block_.L_437f39, %block_437ea5
  %786 = phi i64 [ %997, %block_.L_437f39 ], [ %.pre91, %block_437ea5 ]
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -32
  %789 = add i64 %786, 4
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = add i32 %791, -4
  %793 = icmp ult i32 %791, 4
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %12, align 1
  %795 = and i32 %792, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %13, align 1
  %800 = xor i32 %792, %791
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %14, align 1
  %804 = icmp eq i32 %792, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %15, align 1
  %806 = lshr i32 %792, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %16, align 1
  %808 = lshr i32 %791, 31
  %809 = xor i32 %806, %808
  %810 = add nuw nsw i32 %809, %808
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %17, align 1
  %813 = icmp ne i8 %807, 0
  %814 = xor i1 %813, %811
  %.v150 = select i1 %814, i64 10, i64 139
  %815 = add i64 %786, %.v150
  store i64 %815, i64* %3, align 8
  br i1 %814, label %block_437ecb, label %block_.L_437f4c.loopexit

block_437ecb:                                     ; preds = %block_.L_437ec1
  %816 = add i64 %787, -36
  %817 = add i64 %815, 3
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX.i862, align 8
  %821 = add i64 %815, 7
  store i64 %821, i64* %3, align 8
  %822 = load i32, i32* %790, align 4
  %823 = sext i32 %822 to i64
  store i64 %823, i64* %RCX.i901, align 8
  %824 = shl nsw i64 %823, 2
  %825 = add nsw i64 %824, 8053168
  %826 = add i64 %815, 14
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = add i32 %828, %819
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RAX.i862, align 8
  %831 = icmp ult i32 %829, %819
  %832 = icmp ult i32 %829, %828
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %12, align 1
  %835 = and i32 %829, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %13, align 1
  %840 = xor i32 %828, %819
  %841 = xor i32 %840, %829
  %842 = lshr i32 %841, 4
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %14, align 1
  %845 = icmp eq i32 %829, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %15, align 1
  %847 = lshr i32 %829, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %16, align 1
  %849 = lshr i32 %819, 31
  %850 = lshr i32 %828, 31
  %851 = xor i32 %847, %849
  %852 = xor i32 %847, %850
  %853 = add nuw nsw i32 %851, %852
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %17, align 1
  %856 = add i64 %787, -3252
  %857 = add i64 %815, 20
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  store i32 %829, i32* %858, align 4
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -3252
  %861 = load i64, i64* %3, align 8
  %862 = add i64 %861, 7
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = sext i32 %864 to i64
  store i64 %865, i64* %RCX.i901, align 8
  %866 = add nsw i64 %865, 12099168
  %867 = add i64 %861, 15
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i8*
  %869 = load i8, i8* %868, align 1
  %870 = zext i8 %869 to i64
  store i64 %870, i64* %RAX.i862, align 8
  %871 = zext i8 %869 to i32
  %872 = add nsw i32 %871, -3
  %873 = icmp ult i8 %869, 3
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %12, align 1
  %875 = and i32 %872, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %13, align 1
  %880 = xor i32 %872, %871
  %881 = lshr i32 %880, 4
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  store i8 %883, i8* %14, align 1
  %884 = icmp eq i32 %872, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %15, align 1
  %886 = lshr i32 %872, 31
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v151 = select i1 %884, i64 90, i64 24
  %888 = add i64 %861, %.v151
  store i64 %888, i64* %3, align 8
  br i1 %884, label %block_.L_437f39, label %block_437ef7

block_437ef7:                                     ; preds = %block_437ecb
  %889 = add i64 %888, 7
  store i64 %889, i64* %3, align 8
  %890 = load i32, i32* %863, align 4
  %891 = sext i32 %890 to i64
  store i64 %891, i64* %RAX.i862, align 8
  %892 = shl nsw i64 %891, 2
  %893 = add nsw i64 %892, 11279440
  %894 = add i64 %888, 15
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  store i8 0, i8* %12, align 1
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %902 = icmp eq i32 %896, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %15, align 1
  %904 = lshr i32 %896, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v152 = select i1 %902, i64 66, i64 21
  %906 = add i64 %888, %.v152
  store i64 %906, i64* %3, align 8
  br i1 %902, label %block_.L_437f39, label %block_437f0c

block_437f0c:                                     ; preds = %block_437ef7
  %907 = add i64 %906, 7
  store i64 %907, i64* %3, align 8
  %908 = load i32, i32* %863, align 4
  %909 = sext i32 %908 to i64
  store i64 %909, i64* %RAX.i862, align 8
  %910 = shl nsw i64 %909, 2
  %911 = add nsw i64 %910, 11277840
  %912 = add i64 %906, 15
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  store i8 0, i8* %12, align 1
  %915 = and i32 %914, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %920 = icmp eq i32 %914, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %15, align 1
  %922 = lshr i32 %914, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v153 = select i1 %920, i64 21, i64 45
  %924 = add i64 %906, %.v153
  store i64 %924, i64* %3, align 8
  br i1 %920, label %block_437f21, label %block_.L_437f39

block_437f21:                                     ; preds = %block_437f0c
  %925 = add i64 %859, -8
  %926 = add i64 %924, 4
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RAX.i862, align 8
  %929 = add i64 %859, -36
  %930 = add i64 %924, 8
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = sext i32 %932 to i64
  %934 = mul nsw i64 %933, 36
  store i64 %934, i64* %RCX.i901, align 8
  %935 = lshr i64 %934, 63
  %936 = add i64 %934, %928
  store i64 %936, i64* %RAX.i862, align 8
  %937 = icmp ult i64 %936, %928
  %938 = icmp ult i64 %936, %934
  %939 = or i1 %937, %938
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %12, align 1
  %941 = trunc i64 %936 to i32
  %942 = and i32 %941, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %13, align 1
  %947 = xor i64 %934, %928
  %948 = xor i64 %947, %936
  %949 = lshr i64 %948, 4
  %950 = trunc i64 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %14, align 1
  %952 = icmp eq i64 %936, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %15, align 1
  %954 = lshr i64 %936, 63
  %955 = trunc i64 %954 to i8
  store i8 %955, i8* %16, align 1
  %956 = lshr i64 %928, 63
  %957 = xor i64 %954, %956
  %958 = xor i64 %954, %935
  %959 = add nuw nsw i64 %957, %958
  %960 = icmp eq i64 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %17, align 1
  %962 = add i64 %936, 28
  %963 = add i64 %924, 19
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i8*
  store i8 1, i8* %964, align 1
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 24
  store i64 %966, i64* %3, align 8
  br label %block_.L_437f4c

block_.L_437f39:                                  ; preds = %block_437f0c, %block_437ef7, %block_437ecb
  %967 = phi i64 [ %924, %block_437f0c ], [ %906, %block_437ef7 ], [ %888, %block_437ecb ]
  %968 = add i64 %859, -32
  %969 = add i64 %967, 8
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = add i32 %971, 1
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RAX.i862, align 8
  %974 = icmp eq i32 %971, -1
  %975 = icmp eq i32 %972, 0
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %12, align 1
  %978 = and i32 %972, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %13, align 1
  %983 = xor i32 %972, %971
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %14, align 1
  %987 = zext i1 %975 to i8
  store i8 %987, i8* %15, align 1
  %988 = lshr i32 %972, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %16, align 1
  %990 = lshr i32 %971, 31
  %991 = xor i32 %988, %990
  %992 = add nuw nsw i32 %991, %988
  %993 = icmp eq i32 %992, 2
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %17, align 1
  %995 = add i64 %967, 14
  store i64 %995, i64* %3, align 8
  store i32 %972, i32* %970, align 4
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, -134
  store i64 %997, i64* %3, align 8
  br label %block_.L_437ec1

block_.L_437f4c.loopexit:                         ; preds = %block_.L_437ec1
  br label %block_.L_437f4c

block_.L_437f4c:                                  ; preds = %block_.L_437f4c.loopexit, %block_437f21
  %998 = phi i64 [ %966, %block_437f21 ], [ %815, %block_.L_437f4c.loopexit ]
  %999 = add i64 %998, 703
  br label %block_.L_43820b

block_.L_437f51:                                  ; preds = %block_437e88, %block_.L_437e76, %block_437e9a
  %1000 = phi i64 [ %745, %block_437e9a ], [ %730, %block_437e88 ], [ %712, %block_.L_437e76 ]
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %3, align 8
  %1002 = load i32, i32* %504, align 4
  %1003 = sext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i862, align 8
  %1004 = shl nsw i64 %1003, 2
  %1005 = add nsw i64 %1004, 11277840
  %1006 = add i64 %1000, 12
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  store i8 0, i8* %12, align 1
  %1009 = and i32 %1008, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1014 = icmp eq i32 %1008, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %15, align 1
  %1016 = lshr i32 %1008, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v127 = select i1 %1014, i64 18, i64 219
  %1018 = add i64 %1000, %.v127
  store i64 %1018, i64* %3, align 8
  br i1 %1014, label %block_437f63, label %block_.L_43802c

block_437f63:                                     ; preds = %block_.L_437f51
  %1019 = add i64 %1018, 4
  store i64 %1019, i64* %3, align 8
  %1020 = load i32, i32* %504, align 4
  %1021 = sext i32 %1020 to i64
  store i64 %1021, i64* %RAX.i862, align 8
  %1022 = shl nsw i64 %1021, 2
  %1023 = add nsw i64 %1022, 11279440
  %1024 = add i64 %1018, 12
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = add i32 %1026, -1
  %1028 = icmp eq i32 %1026, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %12, align 1
  %1030 = and i32 %1027, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %13, align 1
  %1035 = xor i32 %1027, %1026
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %14, align 1
  %1039 = icmp eq i32 %1027, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %15, align 1
  %1041 = lshr i32 %1027, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %16, align 1
  %1043 = lshr i32 %1026, 31
  %1044 = xor i32 %1041, %1043
  %1045 = add nuw nsw i32 %1044, %1043
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %17, align 1
  %.v142 = select i1 %1039, i64 18, i64 201
  %1048 = add i64 %1018, %.v142
  store i64 %1048, i64* %3, align 8
  br i1 %1039, label %block_437f75, label %block_.L_43802c

block_437f75:                                     ; preds = %block_437f63
  %1049 = add i64 %500, -16
  %1050 = add i64 %1048, 5
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i64*
  %1052 = load i64, i64* %1051, align 8
  store i8 0, i8* %12, align 1
  %1053 = trunc i64 %1052 to i32
  %1054 = and i32 %1053, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1059 = icmp eq i64 %1052, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %15, align 1
  %1061 = lshr i64 %1052, 63
  %1062 = trunc i64 %1061 to i8
  store i8 %1062, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v143 = select i1 %1059, i64 183, i64 11
  %1063 = add i64 %1048, %.v143
  store i64 %1063, i64* %3, align 8
  br i1 %1059, label %block_.L_43802c, label %block_437f80

block_437f80:                                     ; preds = %block_437f75
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %3, align 8
  %1065 = load i64, i64* %1051, align 8
  store i64 %1065, i64* %RAX.i862, align 8
  %1066 = add i64 %1063, 8
  store i64 %1066, i64* %3, align 8
  %1067 = load i32, i32* %504, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = mul nsw i64 %1068, 36
  store i64 %1069, i64* %RCX.i901, align 8
  %1070 = lshr i64 %1069, 63
  %1071 = add i64 %1069, %1065
  store i64 %1071, i64* %RAX.i862, align 8
  %1072 = icmp ult i64 %1071, %1065
  %1073 = icmp ult i64 %1071, %1069
  %1074 = or i1 %1072, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %12, align 1
  %1076 = trunc i64 %1071 to i32
  %1077 = and i32 %1076, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %13, align 1
  %1082 = xor i64 %1069, %1065
  %1083 = xor i64 %1082, %1071
  %1084 = lshr i64 %1083, 4
  %1085 = trunc i64 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %14, align 1
  %1087 = icmp eq i64 %1071, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %15, align 1
  %1089 = lshr i64 %1071, 63
  %1090 = trunc i64 %1089 to i8
  store i8 %1090, i8* %16, align 1
  %1091 = lshr i64 %1065, 63
  %1092 = xor i64 %1089, %1091
  %1093 = xor i64 %1089, %1070
  %1094 = add nuw nsw i64 %1092, %1093
  %1095 = icmp eq i64 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %17, align 1
  %1097 = inttoptr i64 %1071 to i32*
  %1098 = add i64 %1063, 21
  store i64 %1098, i64* %3, align 8
  store i32 4, i32* %1097, align 4
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -32
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, 7
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1100 to i32*
  store i32 0, i32* %1103, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_437f9c

block_.L_437f9c:                                  ; preds = %block_.L_438014, %block_437f80
  %1104 = phi i64 [ %1315, %block_.L_438014 ], [ %.pre92, %block_437f80 ]
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -32
  %1107 = add i64 %1104, 4
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = add i32 %1109, -4
  %1111 = icmp ult i32 %1109, 4
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %12, align 1
  %1113 = and i32 %1110, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %13, align 1
  %1118 = xor i32 %1110, %1109
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %14, align 1
  %1122 = icmp eq i32 %1110, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %15, align 1
  %1124 = lshr i32 %1110, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %16, align 1
  %1126 = lshr i32 %1109, 31
  %1127 = xor i32 %1124, %1126
  %1128 = add nuw nsw i32 %1127, %1126
  %1129 = icmp eq i32 %1128, 2
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %17, align 1
  %1131 = icmp ne i8 %1125, 0
  %1132 = xor i1 %1131, %1129
  %.v144 = select i1 %1132, i64 10, i64 139
  %1133 = add i64 %1104, %.v144
  store i64 %1133, i64* %3, align 8
  br i1 %1132, label %block_437fa6, label %block_.L_438027.loopexit

block_437fa6:                                     ; preds = %block_.L_437f9c
  %1134 = add i64 %1105, -36
  %1135 = add i64 %1133, 3
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RAX.i862, align 8
  %1139 = add i64 %1133, 7
  store i64 %1139, i64* %3, align 8
  %1140 = load i32, i32* %1108, align 4
  %1141 = sext i32 %1140 to i64
  store i64 %1141, i64* %RCX.i901, align 8
  %1142 = shl nsw i64 %1141, 2
  %1143 = add nsw i64 %1142, 8053168
  %1144 = add i64 %1133, 14
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = add i32 %1146, %1137
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RAX.i862, align 8
  %1149 = icmp ult i32 %1147, %1137
  %1150 = icmp ult i32 %1147, %1146
  %1151 = or i1 %1149, %1150
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %12, align 1
  %1153 = and i32 %1147, 255
  %1154 = tail call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  store i8 %1157, i8* %13, align 1
  %1158 = xor i32 %1146, %1137
  %1159 = xor i32 %1158, %1147
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %14, align 1
  %1163 = icmp eq i32 %1147, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %15, align 1
  %1165 = lshr i32 %1147, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %16, align 1
  %1167 = lshr i32 %1137, 31
  %1168 = lshr i32 %1146, 31
  %1169 = xor i32 %1165, %1167
  %1170 = xor i32 %1165, %1168
  %1171 = add nuw nsw i32 %1169, %1170
  %1172 = icmp eq i32 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %17, align 1
  %1174 = add i64 %1105, -3256
  %1175 = add i64 %1133, 20
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  store i32 %1147, i32* %1176, align 4
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -3256
  %1179 = load i64, i64* %3, align 8
  %1180 = add i64 %1179, 7
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1178 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = sext i32 %1182 to i64
  store i64 %1183, i64* %RCX.i901, align 8
  %1184 = add nsw i64 %1183, 12099168
  %1185 = add i64 %1179, 15
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i8*
  %1187 = load i8, i8* %1186, align 1
  %1188 = zext i8 %1187 to i64
  store i64 %1188, i64* %RAX.i862, align 8
  %1189 = zext i8 %1187 to i32
  %1190 = add nsw i32 %1189, -3
  %1191 = icmp ult i8 %1187, 3
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %12, align 1
  %1193 = and i32 %1190, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %13, align 1
  %1198 = xor i32 %1190, %1189
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %14, align 1
  %1202 = icmp eq i32 %1190, 0
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %15, align 1
  %1204 = lshr i32 %1190, 31
  %1205 = trunc i32 %1204 to i8
  store i8 %1205, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v145 = select i1 %1202, i64 90, i64 24
  %1206 = add i64 %1179, %.v145
  store i64 %1206, i64* %3, align 8
  br i1 %1202, label %block_.L_438014, label %block_437fd2

block_437fd2:                                     ; preds = %block_437fa6
  %1207 = add i64 %1206, 7
  store i64 %1207, i64* %3, align 8
  %1208 = load i32, i32* %1181, align 4
  %1209 = sext i32 %1208 to i64
  store i64 %1209, i64* %RAX.i862, align 8
  %1210 = shl nsw i64 %1209, 2
  %1211 = add nsw i64 %1210, 11277840
  %1212 = add i64 %1206, 15
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  store i8 0, i8* %12, align 1
  %1215 = and i32 %1214, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1220 = icmp eq i32 %1214, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %15, align 1
  %1222 = lshr i32 %1214, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v146 = select i1 %1220, i64 66, i64 21
  %1224 = add i64 %1206, %.v146
  store i64 %1224, i64* %3, align 8
  br i1 %1220, label %block_.L_438014, label %block_437fe7

block_437fe7:                                     ; preds = %block_437fd2
  %1225 = add i64 %1224, 7
  store i64 %1225, i64* %3, align 8
  %1226 = load i32, i32* %1181, align 4
  %1227 = sext i32 %1226 to i64
  store i64 %1227, i64* %RAX.i862, align 8
  %1228 = shl nsw i64 %1227, 2
  %1229 = add nsw i64 %1228, 11279440
  %1230 = add i64 %1224, 15
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  store i8 0, i8* %12, align 1
  %1233 = and i32 %1232, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1238 = icmp eq i32 %1232, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %15, align 1
  %1240 = lshr i32 %1232, 31
  %1241 = trunc i32 %1240 to i8
  store i8 %1241, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v147 = select i1 %1238, i64 21, i64 45
  %1242 = add i64 %1224, %.v147
  store i64 %1242, i64* %3, align 8
  br i1 %1238, label %block_437ffc, label %block_.L_438014

block_437ffc:                                     ; preds = %block_437fe7
  %1243 = add i64 %1177, -16
  %1244 = add i64 %1242, 4
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i64*
  %1246 = load i64, i64* %1245, align 8
  store i64 %1246, i64* %RAX.i862, align 8
  %1247 = add i64 %1177, -36
  %1248 = add i64 %1242, 8
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = sext i32 %1250 to i64
  %1252 = mul nsw i64 %1251, 36
  store i64 %1252, i64* %RCX.i901, align 8
  %1253 = lshr i64 %1252, 63
  %1254 = add i64 %1252, %1246
  store i64 %1254, i64* %RAX.i862, align 8
  %1255 = icmp ult i64 %1254, %1246
  %1256 = icmp ult i64 %1254, %1252
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %12, align 1
  %1259 = trunc i64 %1254 to i32
  %1260 = and i32 %1259, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %13, align 1
  %1265 = xor i64 %1252, %1246
  %1266 = xor i64 %1265, %1254
  %1267 = lshr i64 %1266, 4
  %1268 = trunc i64 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %14, align 1
  %1270 = icmp eq i64 %1254, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %15, align 1
  %1272 = lshr i64 %1254, 63
  %1273 = trunc i64 %1272 to i8
  store i8 %1273, i8* %16, align 1
  %1274 = lshr i64 %1246, 63
  %1275 = xor i64 %1272, %1274
  %1276 = xor i64 %1272, %1253
  %1277 = add nuw nsw i64 %1275, %1276
  %1278 = icmp eq i64 %1277, 2
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %17, align 1
  %1280 = add i64 %1254, 28
  %1281 = add i64 %1242, 19
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i8*
  store i8 1, i8* %1282, align 1
  %1283 = load i64, i64* %3, align 8
  %1284 = add i64 %1283, 24
  store i64 %1284, i64* %3, align 8
  br label %block_.L_438027

block_.L_438014:                                  ; preds = %block_437fe7, %block_437fd2, %block_437fa6
  %1285 = phi i64 [ %1242, %block_437fe7 ], [ %1224, %block_437fd2 ], [ %1206, %block_437fa6 ]
  %1286 = add i64 %1177, -32
  %1287 = add i64 %1285, 8
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = add i32 %1289, 1
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RAX.i862, align 8
  %1292 = icmp eq i32 %1289, -1
  %1293 = icmp eq i32 %1290, 0
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %12, align 1
  %1296 = and i32 %1290, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %13, align 1
  %1301 = xor i32 %1290, %1289
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %14, align 1
  %1305 = zext i1 %1293 to i8
  store i8 %1305, i8* %15, align 1
  %1306 = lshr i32 %1290, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %16, align 1
  %1308 = lshr i32 %1289, 31
  %1309 = xor i32 %1306, %1308
  %1310 = add nuw nsw i32 %1309, %1306
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %17, align 1
  %1313 = add i64 %1285, 14
  store i64 %1313, i64* %3, align 8
  store i32 %1290, i32* %1288, align 4
  %1314 = load i64, i64* %3, align 8
  %1315 = add i64 %1314, -134
  store i64 %1315, i64* %3, align 8
  br label %block_.L_437f9c

block_.L_438027.loopexit:                         ; preds = %block_.L_437f9c
  br label %block_.L_438027

block_.L_438027:                                  ; preds = %block_.L_438027.loopexit, %block_437ffc
  %1316 = phi i64 [ %1284, %block_437ffc ], [ %1133, %block_.L_438027.loopexit ]
  %1317 = add i64 %1316, 479
  br label %block_.L_438206

block_.L_43802c:                                  ; preds = %block_437f63, %block_.L_437f51, %block_437f75
  %1318 = phi i64 [ %1063, %block_437f75 ], [ %1048, %block_437f63 ], [ %1018, %block_.L_437f51 ]
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %3, align 8
  %1320 = load i32, i32* %504, align 4
  %1321 = sext i32 %1320 to i64
  store i64 %1321, i64* %RAX.i862, align 8
  %1322 = shl nsw i64 %1321, 2
  %1323 = add nsw i64 %1322, 11277840
  %1324 = add i64 %1318, 12
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = add i32 %1326, -1
  %1328 = icmp eq i32 %1326, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %12, align 1
  %1330 = and i32 %1327, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %13, align 1
  %1335 = xor i32 %1327, %1326
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %14, align 1
  %1339 = icmp eq i32 %1327, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %15, align 1
  %1341 = lshr i32 %1327, 31
  %1342 = trunc i32 %1341 to i8
  store i8 %1342, i8* %16, align 1
  %1343 = lshr i32 %1326, 31
  %1344 = xor i32 %1341, %1343
  %1345 = add nuw nsw i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %17, align 1
  %.v128 = select i1 %1339, i64 18, i64 469
  %1348 = add i64 %1318, %.v128
  store i64 %1348, i64* %3, align 8
  br i1 %1339, label %block_43803e, label %block_.L_438201

block_43803e:                                     ; preds = %block_.L_43802c
  %1349 = add i64 %1348, 4
  store i64 %1349, i64* %3, align 8
  %1350 = load i32, i32* %504, align 4
  %1351 = sext i32 %1350 to i64
  store i64 %1351, i64* %RAX.i862, align 8
  %1352 = shl nsw i64 %1351, 2
  %1353 = add nsw i64 %1352, 11279440
  %1354 = add i64 %1348, 12
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = add i32 %1356, -1
  %1358 = icmp eq i32 %1356, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %12, align 1
  %1360 = and i32 %1357, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %13, align 1
  %1365 = xor i32 %1357, %1356
  %1366 = lshr i32 %1365, 4
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  store i8 %1368, i8* %14, align 1
  %1369 = icmp eq i32 %1357, 0
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %15, align 1
  %1371 = lshr i32 %1357, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %16, align 1
  %1373 = lshr i32 %1356, 31
  %1374 = xor i32 %1371, %1373
  %1375 = add nuw nsw i32 %1374, %1373
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %17, align 1
  %.v129 = select i1 %1369, i64 18, i64 451
  %1378 = add i64 %1348, %.v129
  store i64 %1378, i64* %3, align 8
  br i1 %1369, label %block_438050, label %block_.L_438201

block_438050:                                     ; preds = %block_43803e
  %1379 = add i64 %500, -8
  %1380 = add i64 %1378, 5
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i8 0, i8* %12, align 1
  %1383 = trunc i64 %1382 to i32
  %1384 = and i32 %1383, 255
  %1385 = tail call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  store i8 %1388, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1389 = icmp eq i64 %1382, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %15, align 1
  %1391 = lshr i64 %1382, 63
  %1392 = trunc i64 %1391 to i8
  store i8 %1392, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v130 = select i1 %1389, i64 214, i64 11
  %1393 = add i64 %1378, %.v130
  store i64 %1393, i64* %3, align 8
  br i1 %1389, label %block_.L_438126, label %block_43805b

block_43805b:                                     ; preds = %block_438050
  %1394 = add i64 %500, -32
  %1395 = add i64 %1393, 7
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  store i32 0, i32* %1396, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_438062

block_.L_438062:                                  ; preds = %block_.L_4380ef, %block_43805b
  %1397 = phi i64 [ %1649, %block_.L_4380ef ], [ %.pre93, %block_43805b ]
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -32
  %1400 = add i64 %1397, 4
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  %1402 = load i32, i32* %1401, align 4
  %1403 = add i32 %1402, -4
  %1404 = icmp ult i32 %1402, 4
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %12, align 1
  %1406 = and i32 %1403, 255
  %1407 = tail call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %13, align 1
  %1411 = xor i32 %1403, %1402
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %14, align 1
  %1415 = icmp eq i32 %1403, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %15, align 1
  %1417 = lshr i32 %1403, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %16, align 1
  %1419 = lshr i32 %1402, 31
  %1420 = xor i32 %1417, %1419
  %1421 = add nuw nsw i32 %1420, %1419
  %1422 = icmp eq i32 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %17, align 1
  %1424 = icmp ne i8 %1418, 0
  %1425 = xor i1 %1424, %1422
  %.v131 = select i1 %1425, i64 10, i64 160
  %1426 = add i64 %1397, %.v131
  store i64 %1426, i64* %3, align 8
  br i1 %1425, label %block_43806c, label %block_.L_438102.loopexit

block_43806c:                                     ; preds = %block_.L_438062
  %1427 = add i64 %1398, -36
  %1428 = add i64 %1426, 3
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RAX.i862, align 8
  %1432 = add i64 %1426, 7
  store i64 %1432, i64* %3, align 8
  %1433 = load i32, i32* %1401, align 4
  %1434 = sext i32 %1433 to i64
  store i64 %1434, i64* %RCX.i901, align 8
  %1435 = shl nsw i64 %1434, 2
  %1436 = add nsw i64 %1435, 8053168
  %1437 = add i64 %1426, 14
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = add i32 %1439, %1430
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i862, align 8
  %1442 = icmp ult i32 %1440, %1430
  %1443 = icmp ult i32 %1440, %1439
  %1444 = or i1 %1442, %1443
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %12, align 1
  %1446 = and i32 %1440, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %13, align 1
  %1451 = xor i32 %1439, %1430
  %1452 = xor i32 %1451, %1440
  %1453 = lshr i32 %1452, 4
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  store i8 %1455, i8* %14, align 1
  %1456 = icmp eq i32 %1440, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %15, align 1
  %1458 = lshr i32 %1440, 31
  %1459 = trunc i32 %1458 to i8
  store i8 %1459, i8* %16, align 1
  %1460 = lshr i32 %1430, 31
  %1461 = lshr i32 %1439, 31
  %1462 = xor i32 %1458, %1460
  %1463 = xor i32 %1458, %1461
  %1464 = add nuw nsw i32 %1462, %1463
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %17, align 1
  %1467 = add i64 %1398, -3260
  %1468 = add i64 %1426, 20
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i32*
  store i32 %1440, i32* %1469, align 4
  %1470 = load i64, i64* %RBP.i, align 8
  %1471 = add i64 %1470, -3260
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, 7
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1471 to i32*
  %1475 = load i32, i32* %1474, align 4
  %1476 = sext i32 %1475 to i64
  store i64 %1476, i64* %RCX.i901, align 8
  %1477 = add nsw i64 %1476, 12099168
  %1478 = add i64 %1472, 15
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i8*
  %1480 = load i8, i8* %1479, align 1
  %1481 = zext i8 %1480 to i64
  store i64 %1481, i64* %RAX.i862, align 8
  %1482 = zext i8 %1480 to i32
  %1483 = add nsw i32 %1482, -3
  %1484 = icmp ult i8 %1480, 3
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %12, align 1
  %1486 = and i32 %1483, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %13, align 1
  %1491 = xor i32 %1483, %1482
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  store i8 %1494, i8* %14, align 1
  %1495 = icmp eq i32 %1483, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %15, align 1
  %1497 = lshr i32 %1483, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v139 = select i1 %1495, i64 111, i64 24
  %1499 = add i64 %1472, %.v139
  store i64 %1499, i64* %3, align 8
  br i1 %1495, label %block_.L_4380ef, label %block_438098

block_438098:                                     ; preds = %block_43806c
  %1500 = add i64 %1499, 7
  store i64 %1500, i64* %3, align 8
  %1501 = load i32, i32* %1474, align 4
  %1502 = sext i32 %1501 to i64
  store i64 %1502, i64* %RAX.i862, align 8
  %1503 = shl nsw i64 %1502, 2
  %1504 = add nsw i64 %1503, 11277840
  %1505 = add i64 %1499, 15
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  %1507 = load i32, i32* %1506, align 4
  store i8 0, i8* %12, align 1
  %1508 = and i32 %1507, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1513 = icmp eq i32 %1507, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %15, align 1
  %1515 = lshr i32 %1507, 31
  %1516 = trunc i32 %1515 to i8
  store i8 %1516, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v140 = select i1 %1513, i64 87, i64 21
  %1517 = add i64 %1499, %.v140
  store i64 %1517, i64* %3, align 8
  br i1 %1513, label %block_.L_4380ef, label %block_4380ad

block_4380ad:                                     ; preds = %block_438098
  %1518 = add i64 %1517, 7
  store i64 %1518, i64* %3, align 8
  %1519 = load i32, i32* %1474, align 4
  %1520 = sext i32 %1519 to i64
  store i64 %1520, i64* %RAX.i862, align 8
  %1521 = shl nsw i64 %1520, 2
  %1522 = add nsw i64 %1521, 11279440
  %1523 = add i64 %1517, 15
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  store i8 0, i8* %12, align 1
  %1526 = and i32 %1525, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1531 = icmp eq i32 %1525, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %15, align 1
  %1533 = lshr i32 %1525, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v141 = select i1 %1531, i64 21, i64 66
  %1535 = add i64 %1517, %.v141
  store i64 %1535, i64* %3, align 8
  br i1 %1531, label %block_4380c2, label %block_.L_4380ef

block_4380c2:                                     ; preds = %block_4380ad
  %1536 = add i64 %1470, -8
  %1537 = add i64 %1535, 4
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i64*
  %1539 = load i64, i64* %1538, align 8
  store i64 %1539, i64* %RAX.i862, align 8
  %1540 = add i64 %1470, -36
  %1541 = add i64 %1535, 8
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i32*
  %1543 = load i32, i32* %1542, align 4
  %1544 = sext i32 %1543 to i64
  %1545 = mul nsw i64 %1544, 36
  store i64 %1545, i64* %RCX.i901, align 8
  %1546 = lshr i64 %1545, 63
  %1547 = add i64 %1545, %1539
  store i64 %1547, i64* %RAX.i862, align 8
  %1548 = icmp ult i64 %1547, %1539
  %1549 = icmp ult i64 %1547, %1545
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %12, align 1
  %1552 = trunc i64 %1547 to i32
  %1553 = and i32 %1552, 255
  %1554 = tail call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  store i8 %1557, i8* %13, align 1
  %1558 = xor i64 %1545, %1539
  %1559 = xor i64 %1558, %1547
  %1560 = lshr i64 %1559, 4
  %1561 = trunc i64 %1560 to i8
  %1562 = and i8 %1561, 1
  store i8 %1562, i8* %14, align 1
  %1563 = icmp eq i64 %1547, 0
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %15, align 1
  %1565 = lshr i64 %1547, 63
  %1566 = trunc i64 %1565 to i8
  store i8 %1566, i8* %16, align 1
  %1567 = lshr i64 %1539, 63
  %1568 = xor i64 %1565, %1567
  %1569 = xor i64 %1565, %1546
  %1570 = add nuw nsw i64 %1568, %1569
  %1571 = icmp eq i64 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %17, align 1
  %1573 = add i64 %1547, 28
  %1574 = add i64 %1535, 19
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i8*
  store i8 1, i8* %1575, align 1
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -8
  %1578 = load i64, i64* %3, align 8
  %1579 = add i64 %1578, 4
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1577 to i64*
  %1581 = load i64, i64* %1580, align 8
  store i64 %1581, i64* %RAX.i862, align 8
  %1582 = add i64 %1576, -36
  %1583 = add i64 %1578, 8
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = mul nsw i64 %1586, 36
  store i64 %1587, i64* %RCX.i901, align 8
  %1588 = lshr i64 %1587, 63
  %1589 = add i64 %1587, %1581
  store i64 %1589, i64* %RAX.i862, align 8
  %1590 = icmp ult i64 %1589, %1581
  %1591 = icmp ult i64 %1589, %1587
  %1592 = or i1 %1590, %1591
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %12, align 1
  %1594 = trunc i64 %1589 to i32
  %1595 = and i32 %1594, 255
  %1596 = tail call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %13, align 1
  %1600 = xor i64 %1587, %1581
  %1601 = xor i64 %1600, %1589
  %1602 = lshr i64 %1601, 4
  %1603 = trunc i64 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %14, align 1
  %1605 = icmp eq i64 %1589, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %15, align 1
  %1607 = lshr i64 %1589, 63
  %1608 = trunc i64 %1607 to i8
  store i8 %1608, i8* %16, align 1
  %1609 = lshr i64 %1581, 63
  %1610 = xor i64 %1607, %1609
  %1611 = xor i64 %1607, %1588
  %1612 = add nuw nsw i64 %1610, %1611
  %1613 = icmp eq i64 %1612, 2
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %17, align 1
  %1615 = inttoptr i64 %1589 to i32*
  %1616 = add i64 %1578, 21
  store i64 %1616, i64* %3, align 8
  store i32 5, i32* %1615, align 4
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, 24
  store i64 %1618, i64* %3, align 8
  %.pre94 = load i64, i64* %RBP.i, align 8
  br label %block_.L_438102

block_.L_4380ef:                                  ; preds = %block_4380ad, %block_438098, %block_43806c
  %1619 = phi i64 [ %1535, %block_4380ad ], [ %1517, %block_438098 ], [ %1499, %block_43806c ]
  %1620 = add i64 %1470, -32
  %1621 = add i64 %1619, 8
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, 1
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RAX.i862, align 8
  %1626 = icmp eq i32 %1623, -1
  %1627 = icmp eq i32 %1624, 0
  %1628 = or i1 %1626, %1627
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %12, align 1
  %1630 = and i32 %1624, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %13, align 1
  %1635 = xor i32 %1624, %1623
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %14, align 1
  %1639 = zext i1 %1627 to i8
  store i8 %1639, i8* %15, align 1
  %1640 = lshr i32 %1624, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %16, align 1
  %1642 = lshr i32 %1623, 31
  %1643 = xor i32 %1640, %1642
  %1644 = add nuw nsw i32 %1643, %1640
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %17, align 1
  %1647 = add i64 %1619, 14
  store i64 %1647, i64* %3, align 8
  store i32 %1624, i32* %1622, align 4
  %1648 = load i64, i64* %3, align 8
  %1649 = add i64 %1648, -155
  store i64 %1649, i64* %3, align 8
  br label %block_.L_438062

block_.L_438102.loopexit:                         ; preds = %block_.L_438062
  br label %block_.L_438102

block_.L_438102:                                  ; preds = %block_.L_438102.loopexit, %block_4380c2
  %1650 = phi i64 [ %1618, %block_4380c2 ], [ %1426, %block_.L_438102.loopexit ]
  %1651 = phi i64 [ %.pre94, %block_4380c2 ], [ %1398, %block_.L_438102.loopexit ]
  %1652 = add i64 %1651, -32
  %1653 = add i64 %1650, 4
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = add i32 %1655, -4
  %1657 = icmp ult i32 %1655, 4
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %12, align 1
  %1659 = and i32 %1656, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %13, align 1
  %1664 = xor i32 %1656, %1655
  %1665 = lshr i32 %1664, 4
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  store i8 %1667, i8* %14, align 1
  %1668 = icmp eq i32 %1656, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %15, align 1
  %1670 = lshr i32 %1656, 31
  %1671 = trunc i32 %1670 to i8
  store i8 %1671, i8* %16, align 1
  %1672 = lshr i32 %1655, 31
  %1673 = xor i32 %1670, %1672
  %1674 = add nuw nsw i32 %1673, %1672
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %17, align 1
  %.v132 = select i1 %1668, i64 10, i64 31
  %1677 = add i64 %1650, %.v132
  store i64 %1677, i64* %3, align 8
  br i1 %1668, label %block_43810c, label %block_.L_438121

block_43810c:                                     ; preds = %block_.L_438102
  %1678 = add i64 %1651, -8
  %1679 = add i64 %1677, 4
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RAX.i862, align 8
  %1682 = add i64 %1651, -36
  %1683 = add i64 %1677, 8
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = sext i32 %1685 to i64
  %1687 = mul nsw i64 %1686, 36
  store i64 %1687, i64* %RCX.i901, align 8
  %1688 = lshr i64 %1687, 63
  %1689 = add i64 %1687, %1681
  store i64 %1689, i64* %RAX.i862, align 8
  %1690 = icmp ult i64 %1689, %1681
  %1691 = icmp ult i64 %1689, %1687
  %1692 = or i1 %1690, %1691
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %12, align 1
  %1694 = trunc i64 %1689 to i32
  %1695 = and i32 %1694, 255
  %1696 = tail call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  store i8 %1699, i8* %13, align 1
  %1700 = xor i64 %1687, %1681
  %1701 = xor i64 %1700, %1689
  %1702 = lshr i64 %1701, 4
  %1703 = trunc i64 %1702 to i8
  %1704 = and i8 %1703, 1
  store i8 %1704, i8* %14, align 1
  %1705 = icmp eq i64 %1689, 0
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %15, align 1
  %1707 = lshr i64 %1689, 63
  %1708 = trunc i64 %1707 to i8
  store i8 %1708, i8* %16, align 1
  %1709 = lshr i64 %1681, 63
  %1710 = xor i64 %1707, %1709
  %1711 = xor i64 %1707, %1688
  %1712 = add nuw nsw i64 %1710, %1711
  %1713 = icmp eq i64 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %17, align 1
  %1715 = inttoptr i64 %1689 to i32*
  %1716 = add i64 %1677, 21
  store i64 %1716, i64* %3, align 8
  store i32 3, i32* %1715, align 4
  %.pre95 = load i64, i64* %3, align 8
  %.pre96.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_438121

block_.L_438121:                                  ; preds = %block_.L_438102, %block_43810c
  %.pre96 = phi i64 [ %.pre96.pre, %block_43810c ], [ %1651, %block_.L_438102 ]
  %1717 = phi i64 [ %.pre95, %block_43810c ], [ %1677, %block_.L_438102 ]
  %1718 = add i64 %1717, 5
  store i64 %1718, i64* %3, align 8
  br label %block_.L_438126

block_.L_438126:                                  ; preds = %block_.L_438121, %block_438050
  %1719 = phi i64 [ %1718, %block_.L_438121 ], [ %1393, %block_438050 ]
  %1720 = phi i64 [ %.pre96, %block_.L_438121 ], [ %500, %block_438050 ]
  %1721 = add i64 %1720, -16
  %1722 = add i64 %1719, 5
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i64*
  %1724 = load i64, i64* %1723, align 8
  store i8 0, i8* %12, align 1
  %1725 = trunc i64 %1724 to i32
  %1726 = and i32 %1725, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1731 = icmp eq i64 %1724, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %15, align 1
  %1733 = lshr i64 %1724, 63
  %1734 = trunc i64 %1733 to i8
  store i8 %1734, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v133 = select i1 %1731, i64 214, i64 11
  %1735 = add i64 %1719, %.v133
  store i64 %1735, i64* %3, align 8
  br i1 %1731, label %block_.L_4381fc, label %block_438131

block_438131:                                     ; preds = %block_.L_438126
  %1736 = add i64 %1720, -32
  %1737 = add i64 %1735, 7
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  store i32 0, i32* %1738, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_438138

block_.L_438138:                                  ; preds = %block_.L_4381c5, %block_438131
  %1739 = phi i64 [ %1991, %block_.L_4381c5 ], [ %.pre97, %block_438131 ]
  %1740 = load i64, i64* %RBP.i, align 8
  %1741 = add i64 %1740, -32
  %1742 = add i64 %1739, 4
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = add i32 %1744, -4
  %1746 = icmp ult i32 %1744, 4
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %12, align 1
  %1748 = and i32 %1745, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %13, align 1
  %1753 = xor i32 %1745, %1744
  %1754 = lshr i32 %1753, 4
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  store i8 %1756, i8* %14, align 1
  %1757 = icmp eq i32 %1745, 0
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %15, align 1
  %1759 = lshr i32 %1745, 31
  %1760 = trunc i32 %1759 to i8
  store i8 %1760, i8* %16, align 1
  %1761 = lshr i32 %1744, 31
  %1762 = xor i32 %1759, %1761
  %1763 = add nuw nsw i32 %1762, %1761
  %1764 = icmp eq i32 %1763, 2
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %17, align 1
  %1766 = icmp ne i8 %1760, 0
  %1767 = xor i1 %1766, %1764
  %.v134 = select i1 %1767, i64 10, i64 160
  %1768 = add i64 %1739, %.v134
  store i64 %1768, i64* %3, align 8
  br i1 %1767, label %block_438142, label %block_.L_4381d8.loopexit

block_438142:                                     ; preds = %block_.L_438138
  %1769 = add i64 %1740, -36
  %1770 = add i64 %1768, 3
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RAX.i862, align 8
  %1774 = add i64 %1768, 7
  store i64 %1774, i64* %3, align 8
  %1775 = load i32, i32* %1743, align 4
  %1776 = sext i32 %1775 to i64
  store i64 %1776, i64* %RCX.i901, align 8
  %1777 = shl nsw i64 %1776, 2
  %1778 = add nsw i64 %1777, 8053168
  %1779 = add i64 %1768, 14
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = add i32 %1781, %1772
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RAX.i862, align 8
  %1784 = icmp ult i32 %1782, %1772
  %1785 = icmp ult i32 %1782, %1781
  %1786 = or i1 %1784, %1785
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %12, align 1
  %1788 = and i32 %1782, 255
  %1789 = tail call i32 @llvm.ctpop.i32(i32 %1788)
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  store i8 %1792, i8* %13, align 1
  %1793 = xor i32 %1781, %1772
  %1794 = xor i32 %1793, %1782
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %14, align 1
  %1798 = icmp eq i32 %1782, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %15, align 1
  %1800 = lshr i32 %1782, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %16, align 1
  %1802 = lshr i32 %1772, 31
  %1803 = lshr i32 %1781, 31
  %1804 = xor i32 %1800, %1802
  %1805 = xor i32 %1800, %1803
  %1806 = add nuw nsw i32 %1804, %1805
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %17, align 1
  %1809 = add i64 %1740, -3264
  %1810 = add i64 %1768, 20
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i32*
  store i32 %1782, i32* %1811, align 4
  %1812 = load i64, i64* %RBP.i, align 8
  %1813 = add i64 %1812, -3264
  %1814 = load i64, i64* %3, align 8
  %1815 = add i64 %1814, 7
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1813 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = sext i32 %1817 to i64
  store i64 %1818, i64* %RCX.i901, align 8
  %1819 = add nsw i64 %1818, 12099168
  %1820 = add i64 %1814, 15
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to i8*
  %1822 = load i8, i8* %1821, align 1
  %1823 = zext i8 %1822 to i64
  store i64 %1823, i64* %RAX.i862, align 8
  %1824 = zext i8 %1822 to i32
  %1825 = add nsw i32 %1824, -3
  %1826 = icmp ult i8 %1822, 3
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %12, align 1
  %1828 = and i32 %1825, 255
  %1829 = tail call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  store i8 %1832, i8* %13, align 1
  %1833 = xor i32 %1825, %1824
  %1834 = lshr i32 %1833, 4
  %1835 = trunc i32 %1834 to i8
  %1836 = and i8 %1835, 1
  store i8 %1836, i8* %14, align 1
  %1837 = icmp eq i32 %1825, 0
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %15, align 1
  %1839 = lshr i32 %1825, 31
  %1840 = trunc i32 %1839 to i8
  store i8 %1840, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v136 = select i1 %1837, i64 111, i64 24
  %1841 = add i64 %1814, %.v136
  store i64 %1841, i64* %3, align 8
  br i1 %1837, label %block_.L_4381c5, label %block_43816e

block_43816e:                                     ; preds = %block_438142
  %1842 = add i64 %1841, 7
  store i64 %1842, i64* %3, align 8
  %1843 = load i32, i32* %1816, align 4
  %1844 = sext i32 %1843 to i64
  store i64 %1844, i64* %RAX.i862, align 8
  %1845 = shl nsw i64 %1844, 2
  %1846 = add nsw i64 %1845, 11279440
  %1847 = add i64 %1841, 15
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  store i8 0, i8* %12, align 1
  %1850 = and i32 %1849, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1855 = icmp eq i32 %1849, 0
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %15, align 1
  %1857 = lshr i32 %1849, 31
  %1858 = trunc i32 %1857 to i8
  store i8 %1858, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v137 = select i1 %1855, i64 87, i64 21
  %1859 = add i64 %1841, %.v137
  store i64 %1859, i64* %3, align 8
  br i1 %1855, label %block_.L_4381c5, label %block_438183

block_438183:                                     ; preds = %block_43816e
  %1860 = add i64 %1859, 7
  store i64 %1860, i64* %3, align 8
  %1861 = load i32, i32* %1816, align 4
  %1862 = sext i32 %1861 to i64
  store i64 %1862, i64* %RAX.i862, align 8
  %1863 = shl nsw i64 %1862, 2
  %1864 = add nsw i64 %1863, 11277840
  %1865 = add i64 %1859, 15
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  store i8 0, i8* %12, align 1
  %1868 = and i32 %1867, 255
  %1869 = tail call i32 @llvm.ctpop.i32(i32 %1868)
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  %1872 = xor i8 %1871, 1
  store i8 %1872, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1873 = icmp eq i32 %1867, 0
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %15, align 1
  %1875 = lshr i32 %1867, 31
  %1876 = trunc i32 %1875 to i8
  store i8 %1876, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v138 = select i1 %1873, i64 21, i64 66
  %1877 = add i64 %1859, %.v138
  store i64 %1877, i64* %3, align 8
  br i1 %1873, label %block_438198, label %block_.L_4381c5

block_438198:                                     ; preds = %block_438183
  %1878 = add i64 %1812, -16
  %1879 = add i64 %1877, 4
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i64*
  %1881 = load i64, i64* %1880, align 8
  store i64 %1881, i64* %RAX.i862, align 8
  %1882 = add i64 %1812, -36
  %1883 = add i64 %1877, 8
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = sext i32 %1885 to i64
  %1887 = mul nsw i64 %1886, 36
  store i64 %1887, i64* %RCX.i901, align 8
  %1888 = lshr i64 %1887, 63
  %1889 = add i64 %1887, %1881
  store i64 %1889, i64* %RAX.i862, align 8
  %1890 = icmp ult i64 %1889, %1881
  %1891 = icmp ult i64 %1889, %1887
  %1892 = or i1 %1890, %1891
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %12, align 1
  %1894 = trunc i64 %1889 to i32
  %1895 = and i32 %1894, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %13, align 1
  %1900 = xor i64 %1887, %1881
  %1901 = xor i64 %1900, %1889
  %1902 = lshr i64 %1901, 4
  %1903 = trunc i64 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %14, align 1
  %1905 = icmp eq i64 %1889, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %15, align 1
  %1907 = lshr i64 %1889, 63
  %1908 = trunc i64 %1907 to i8
  store i8 %1908, i8* %16, align 1
  %1909 = lshr i64 %1881, 63
  %1910 = xor i64 %1907, %1909
  %1911 = xor i64 %1907, %1888
  %1912 = add nuw nsw i64 %1910, %1911
  %1913 = icmp eq i64 %1912, 2
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %17, align 1
  %1915 = add i64 %1889, 28
  %1916 = add i64 %1877, 19
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i8*
  store i8 1, i8* %1917, align 1
  %1918 = load i64, i64* %RBP.i, align 8
  %1919 = add i64 %1918, -16
  %1920 = load i64, i64* %3, align 8
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1919 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX.i862, align 8
  %1924 = add i64 %1918, -36
  %1925 = add i64 %1920, 8
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = sext i32 %1927 to i64
  %1929 = mul nsw i64 %1928, 36
  store i64 %1929, i64* %RCX.i901, align 8
  %1930 = lshr i64 %1929, 63
  %1931 = add i64 %1929, %1923
  store i64 %1931, i64* %RAX.i862, align 8
  %1932 = icmp ult i64 %1931, %1923
  %1933 = icmp ult i64 %1931, %1929
  %1934 = or i1 %1932, %1933
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %12, align 1
  %1936 = trunc i64 %1931 to i32
  %1937 = and i32 %1936, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %13, align 1
  %1942 = xor i64 %1929, %1923
  %1943 = xor i64 %1942, %1931
  %1944 = lshr i64 %1943, 4
  %1945 = trunc i64 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %14, align 1
  %1947 = icmp eq i64 %1931, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %15, align 1
  %1949 = lshr i64 %1931, 63
  %1950 = trunc i64 %1949 to i8
  store i8 %1950, i8* %16, align 1
  %1951 = lshr i64 %1923, 63
  %1952 = xor i64 %1949, %1951
  %1953 = xor i64 %1949, %1930
  %1954 = add nuw nsw i64 %1952, %1953
  %1955 = icmp eq i64 %1954, 2
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %17, align 1
  %1957 = inttoptr i64 %1931 to i32*
  %1958 = add i64 %1920, 21
  store i64 %1958, i64* %3, align 8
  store i32 4, i32* %1957, align 4
  %1959 = load i64, i64* %3, align 8
  %1960 = add i64 %1959, 24
  store i64 %1960, i64* %3, align 8
  %.pre98 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4381d8

block_.L_4381c5:                                  ; preds = %block_438183, %block_43816e, %block_438142
  %1961 = phi i64 [ %1877, %block_438183 ], [ %1859, %block_43816e ], [ %1841, %block_438142 ]
  %1962 = add i64 %1812, -32
  %1963 = add i64 %1961, 8
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  %1965 = load i32, i32* %1964, align 4
  %1966 = add i32 %1965, 1
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RAX.i862, align 8
  %1968 = icmp eq i32 %1965, -1
  %1969 = icmp eq i32 %1966, 0
  %1970 = or i1 %1968, %1969
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %12, align 1
  %1972 = and i32 %1966, 255
  %1973 = tail call i32 @llvm.ctpop.i32(i32 %1972)
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = xor i8 %1975, 1
  store i8 %1976, i8* %13, align 1
  %1977 = xor i32 %1966, %1965
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %14, align 1
  %1981 = zext i1 %1969 to i8
  store i8 %1981, i8* %15, align 1
  %1982 = lshr i32 %1966, 31
  %1983 = trunc i32 %1982 to i8
  store i8 %1983, i8* %16, align 1
  %1984 = lshr i32 %1965, 31
  %1985 = xor i32 %1982, %1984
  %1986 = add nuw nsw i32 %1985, %1982
  %1987 = icmp eq i32 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %17, align 1
  %1989 = add i64 %1961, 14
  store i64 %1989, i64* %3, align 8
  store i32 %1966, i32* %1964, align 4
  %1990 = load i64, i64* %3, align 8
  %1991 = add i64 %1990, -155
  store i64 %1991, i64* %3, align 8
  br label %block_.L_438138

block_.L_4381d8.loopexit:                         ; preds = %block_.L_438138
  br label %block_.L_4381d8

block_.L_4381d8:                                  ; preds = %block_.L_4381d8.loopexit, %block_438198
  %1992 = phi i64 [ %1960, %block_438198 ], [ %1768, %block_.L_4381d8.loopexit ]
  %1993 = phi i64 [ %.pre98, %block_438198 ], [ %1740, %block_.L_4381d8.loopexit ]
  %1994 = add i64 %1993, -32
  %1995 = add i64 %1992, 4
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = add i32 %1997, -4
  %1999 = icmp ult i32 %1997, 4
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %12, align 1
  %2001 = and i32 %1998, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001)
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %13, align 1
  %2006 = xor i32 %1998, %1997
  %2007 = lshr i32 %2006, 4
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  store i8 %2009, i8* %14, align 1
  %2010 = icmp eq i32 %1998, 0
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %15, align 1
  %2012 = lshr i32 %1998, 31
  %2013 = trunc i32 %2012 to i8
  store i8 %2013, i8* %16, align 1
  %2014 = lshr i32 %1997, 31
  %2015 = xor i32 %2012, %2014
  %2016 = add nuw nsw i32 %2015, %2014
  %2017 = icmp eq i32 %2016, 2
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %17, align 1
  %.v135 = select i1 %2010, i64 10, i64 31
  %2019 = add i64 %1992, %.v135
  store i64 %2019, i64* %3, align 8
  br i1 %2010, label %block_4381e2, label %block_.L_4381f7

block_4381e2:                                     ; preds = %block_.L_4381d8
  %2020 = add i64 %1993, -16
  %2021 = add i64 %2019, 4
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i64*
  %2023 = load i64, i64* %2022, align 8
  store i64 %2023, i64* %RAX.i862, align 8
  %2024 = add i64 %1993, -36
  %2025 = add i64 %2019, 8
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  %2029 = mul nsw i64 %2028, 36
  store i64 %2029, i64* %RCX.i901, align 8
  %2030 = lshr i64 %2029, 63
  %2031 = add i64 %2029, %2023
  store i64 %2031, i64* %RAX.i862, align 8
  %2032 = icmp ult i64 %2031, %2023
  %2033 = icmp ult i64 %2031, %2029
  %2034 = or i1 %2032, %2033
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %12, align 1
  %2036 = trunc i64 %2031 to i32
  %2037 = and i32 %2036, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %13, align 1
  %2042 = xor i64 %2029, %2023
  %2043 = xor i64 %2042, %2031
  %2044 = lshr i64 %2043, 4
  %2045 = trunc i64 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %14, align 1
  %2047 = icmp eq i64 %2031, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %15, align 1
  %2049 = lshr i64 %2031, 63
  %2050 = trunc i64 %2049 to i8
  store i8 %2050, i8* %16, align 1
  %2051 = lshr i64 %2023, 63
  %2052 = xor i64 %2049, %2051
  %2053 = xor i64 %2049, %2030
  %2054 = add nuw nsw i64 %2052, %2053
  %2055 = icmp eq i64 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %17, align 1
  %2057 = inttoptr i64 %2031 to i32*
  %2058 = add i64 %2019, 21
  store i64 %2058, i64* %3, align 8
  store i32 3, i32* %2057, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_4381f7

block_.L_4381f7:                                  ; preds = %block_.L_4381d8, %block_4381e2
  %2059 = phi i64 [ %.pre99, %block_4381e2 ], [ %2019, %block_.L_4381d8 ]
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %3, align 8
  br label %block_.L_4381fc

block_.L_4381fc:                                  ; preds = %block_.L_4381f7, %block_.L_438126
  %2061 = phi i64 [ %2060, %block_.L_4381f7 ], [ %1735, %block_.L_438126 ]
  %2062 = add i64 %2061, 5
  store i64 %2062, i64* %3, align 8
  br label %block_.L_438201

block_.L_438201:                                  ; preds = %block_43803e, %block_.L_43802c, %block_.L_4381fc
  %2063 = phi i64 [ %2062, %block_.L_4381fc ], [ %1378, %block_43803e ], [ %1348, %block_.L_43802c ]
  %2064 = add i64 %2063, 5
  store i64 %2064, i64* %3, align 8
  br label %block_.L_438206

block_.L_438206:                                  ; preds = %block_.L_438201, %block_.L_438027
  %storemerge54 = phi i64 [ %1317, %block_.L_438027 ], [ %2064, %block_.L_438201 ]
  %2065 = add i64 %storemerge54, 5
  store i64 %2065, i64* %3, align 8
  br label %block_.L_43820b

block_.L_43820b:                                  ; preds = %block_.L_438206, %block_.L_437f4c
  %storemerge53 = phi i64 [ %999, %block_.L_437f4c ], [ %2065, %block_.L_438206 ]
  %2066 = add i64 %storemerge53, 5
  store i64 %2066, i64* %3, align 8
  br label %block_.L_438210

block_.L_438210:                                  ; preds = %block_.L_43820b, %block_.L_437e71
  %storemerge = phi i64 [ %681, %block_.L_437e71 ], [ %2066, %block_.L_43820b ]
  %2067 = add i64 %storemerge, 5
  store i64 %2067, i64* %3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_438215

block_.L_438215:                                  ; preds = %block_437dfb, %block_.L_438210
  %2068 = phi i64 [ %.pre100, %block_.L_438210 ], [ %500, %block_437dfb ]
  %2069 = phi i64 [ %2067, %block_.L_438210 ], [ %538, %block_437dfb ]
  %2070 = add i64 %2068, -28
  %2071 = add i64 %2069, 8
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = add i32 %2073, 1
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RAX.i862, align 8
  %2076 = icmp eq i32 %2073, -1
  %2077 = icmp eq i32 %2074, 0
  %2078 = or i1 %2076, %2077
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %12, align 1
  %2080 = and i32 %2074, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %13, align 1
  %2085 = xor i32 %2074, %2073
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %14, align 1
  %2089 = zext i1 %2077 to i8
  store i8 %2089, i8* %15, align 1
  %2090 = lshr i32 %2074, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %16, align 1
  %2092 = lshr i32 %2073, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2090
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %17, align 1
  %2097 = add i64 %2069, 14
  store i64 %2097, i64* %3, align 8
  store i32 %2074, i32* %2072, align 4
  %2098 = load i64, i64* %3, align 8
  %2099 = add i64 %2098, -1114
  store i64 %2099, i64* %3, align 8
  br label %block_.L_437dc9

block_.L_438228:                                  ; preds = %block_.L_437dc9
  %2100 = add i64 %442, 8
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %443 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = add i32 %2102, 1
  %2104 = zext i32 %2103 to i64
  store i64 %2104, i64* %RAX.i862, align 8
  %2105 = icmp eq i32 %2102, -1
  %2106 = icmp eq i32 %2103, 0
  %2107 = or i1 %2105, %2106
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %12, align 1
  %2109 = and i32 %2103, 255
  %2110 = tail call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  store i8 %2113, i8* %13, align 1
  %2114 = xor i32 %2103, %2102
  %2115 = lshr i32 %2114, 4
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  store i8 %2117, i8* %14, align 1
  %2118 = zext i1 %2106 to i8
  store i8 %2118, i8* %15, align 1
  %2119 = lshr i32 %2103, 31
  %2120 = trunc i32 %2119 to i8
  store i8 %2120, i8* %16, align 1
  %2121 = lshr i32 %2102, 31
  %2122 = xor i32 %2119, %2121
  %2123 = add nuw nsw i32 %2122, %2119
  %2124 = icmp eq i32 %2123, 2
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %17, align 1
  %2126 = add i64 %442, 14
  store i64 %2126, i64* %3, align 8
  store i32 %2103, i32* %2101, align 4
  %2127 = load i64, i64* %3, align 8
  %2128 = add i64 %2127, -1156
  store i64 %2128, i64* %3, align 8
  br label %block_.L_437db2

block_.L_43823b:                                  ; preds = %block_.L_437db2
  %2129 = add i64 %371, -20
  %2130 = add i64 %404, 4
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  store i8 0, i8* %12, align 1
  %2133 = and i32 %2132, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2138 = icmp eq i32 %2132, 0
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %15, align 1
  %2140 = lshr i32 %2132, 31
  %2141 = trunc i32 %2140 to i8
  store i8 %2141, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v110 = select i1 %2138, i64 10, i64 15
  %2142 = add i64 %404, %.v110
  store i64 %2142, i64* %3, align 8
  br i1 %2138, label %block_438245, label %block_.L_43824a

block_438245:                                     ; preds = %block_.L_43823b
  %2143 = add i64 %2142, 449563
  %2144 = add i64 %2142, 5
  %2145 = load i64, i64* %6, align 8
  %2146 = add i64 %2145, -8
  %2147 = inttoptr i64 %2146 to i64*
  store i64 %2144, i64* %2147, align 8
  store i64 %2146, i64* %6, align 8
  store i64 %2143, i64* %3, align 8
  %call2_438245 = tail call %struct.Memory* @sub_4a5e60.find_cuts(%struct.State* nonnull %0, i64 %2143, %struct.Memory* %call2_437da6)
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_43824a

block_.L_43824a:                                  ; preds = %block_.L_43823b, %block_438245
  %2148 = phi i64 [ %2142, %block_.L_43823b ], [ %.pre77, %block_438245 ]
  %2149 = phi i64 [ %371, %block_.L_43823b ], [ %.pre76, %block_438245 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_437da6, %block_.L_43823b ], [ %call2_438245, %block_438245 ]
  %2150 = add i64 %2149, -8
  %2151 = add i64 %2148, 5
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i64*
  %2153 = load i64, i64* %2152, align 8
  store i8 0, i8* %12, align 1
  %2154 = trunc i64 %2153 to i32
  %2155 = and i32 %2154, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2160 = icmp eq i64 %2153, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %15, align 1
  %2162 = lshr i64 %2153, 63
  %2163 = trunc i64 %2162 to i8
  store i8 %2163, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v111 = select i1 %2160, i64 227, i64 11
  %2164 = add i64 %2148, %.v111
  store i64 %2164, i64* %3, align 8
  br i1 %2160, label %block_.L_43832d, label %block_438255

block_438255:                                     ; preds = %block_.L_43824a
  %2165 = add i64 %2149, -36
  %2166 = add i64 %2164, 7
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i32*
  store i32 21, i32* %2167, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_43825c

block_.L_43825c:                                  ; preds = %block_.L_43831a, %block_438255
  %2168 = phi i64 [ %.pre78, %block_438255 ], [ %2488, %block_.L_43831a ]
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -36
  %2171 = add i64 %2168, 7
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = add i32 %2173, -400
  %2175 = icmp ult i32 %2173, 400
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %12, align 1
  %2177 = and i32 %2174, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %13, align 1
  %2182 = xor i32 %2173, 16
  %2183 = xor i32 %2182, %2174
  %2184 = lshr i32 %2183, 4
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  store i8 %2186, i8* %14, align 1
  %2187 = icmp eq i32 %2174, 0
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %15, align 1
  %2189 = lshr i32 %2174, 31
  %2190 = trunc i32 %2189 to i8
  store i8 %2190, i8* %16, align 1
  %2191 = lshr i32 %2173, 31
  %2192 = xor i32 %2189, %2191
  %2193 = add nuw nsw i32 %2192, %2191
  %2194 = icmp eq i32 %2193, 2
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %17, align 1
  %2196 = icmp ne i8 %2190, 0
  %2197 = xor i1 %2196, %2194
  %.v112 = select i1 %2197, i64 13, i64 204
  %2198 = add i64 %2168, %.v112
  store i64 %2198, i64* %3, align 8
  br i1 %2197, label %block_438269, label %block_.L_438328

block_438269:                                     ; preds = %block_.L_43825c
  %2199 = add i64 %2198, 4
  store i64 %2199, i64* %3, align 8
  %2200 = load i32, i32* %2172, align 4
  %2201 = sext i32 %2200 to i64
  store i64 %2201, i64* %RAX.i862, align 8
  %2202 = add nsw i64 %2201, 12099168
  %2203 = add i64 %2198, 12
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i8*
  %2205 = load i8, i8* %2204, align 1
  %2206 = zext i8 %2205 to i64
  store i64 %2206, i64* %RCX.i901, align 8
  %2207 = zext i8 %2205 to i32
  %2208 = add nsw i32 %2207, -3
  %2209 = icmp ult i8 %2205, 3
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %12, align 1
  %2211 = and i32 %2208, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %13, align 1
  %2216 = xor i32 %2208, %2207
  %2217 = lshr i32 %2216, 4
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  store i8 %2219, i8* %14, align 1
  %2220 = icmp eq i32 %2208, 0
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %15, align 1
  %2222 = lshr i32 %2208, 31
  %2223 = trunc i32 %2222 to i8
  store i8 %2223, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v120 = select i1 %2220, i64 21, i64 26
  %2224 = add i64 %2198, %.v120
  store i64 %2224, i64* %3, align 8
  br i1 %2220, label %block_43827e, label %block_.L_438283

block_43827e:                                     ; preds = %block_438269
  %2225 = add i64 %2224, 156
  br label %block_.L_43831a

block_.L_438283:                                  ; preds = %block_438269
  %2226 = add i64 %2169, -8
  %2227 = add i64 %2224, 4
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i64*
  %2229 = load i64, i64* %2228, align 8
  store i64 %2229, i64* %RAX.i862, align 8
  %2230 = add i64 %2224, 8
  store i64 %2230, i64* %3, align 8
  %2231 = load i32, i32* %2172, align 4
  %2232 = sext i32 %2231 to i64
  %2233 = mul nsw i64 %2232, 36
  store i64 %2233, i64* %RCX.i901, align 8
  %2234 = lshr i64 %2233, 63
  %2235 = add i64 %2233, %2229
  store i64 %2235, i64* %RAX.i862, align 8
  %2236 = icmp ult i64 %2235, %2229
  %2237 = icmp ult i64 %2235, %2233
  %2238 = or i1 %2236, %2237
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %12, align 1
  %2240 = trunc i64 %2235 to i32
  %2241 = and i32 %2240, 255
  %2242 = tail call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  store i8 %2245, i8* %13, align 1
  %2246 = xor i64 %2233, %2229
  %2247 = xor i64 %2246, %2235
  %2248 = lshr i64 %2247, 4
  %2249 = trunc i64 %2248 to i8
  %2250 = and i8 %2249, 1
  store i8 %2250, i8* %14, align 1
  %2251 = icmp eq i64 %2235, 0
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %15, align 1
  %2253 = lshr i64 %2235, 63
  %2254 = trunc i64 %2253 to i8
  store i8 %2254, i8* %16, align 1
  %2255 = lshr i64 %2229, 63
  %2256 = xor i64 %2253, %2255
  %2257 = xor i64 %2253, %2234
  %2258 = add nuw nsw i64 %2256, %2257
  %2259 = icmp eq i64 %2258, 2
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %17, align 1
  %2261 = add i64 %2235, 12
  %2262 = add i64 %2224, 19
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  store i8 0, i8* %12, align 1
  %2265 = and i32 %2264, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2270 = icmp eq i32 %2264, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %15, align 1
  %2272 = lshr i32 %2264, 31
  %2273 = trunc i32 %2272 to i8
  store i8 %2273, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v121 = select i1 %2270, i64 25, i64 146
  %2274 = add i64 %2224, %.v121
  store i64 %2274, i64* %3, align 8
  br i1 %2270, label %block_43829c, label %block_.L_438315

block_43829c:                                     ; preds = %block_.L_438283
  %2275 = add i64 %2274, 4
  store i64 %2275, i64* %3, align 8
  %2276 = load i64, i64* %2228, align 8
  store i64 %2276, i64* %RAX.i862, align 8
  %2277 = add i64 %2274, 8
  store i64 %2277, i64* %3, align 8
  %2278 = load i32, i32* %2172, align 4
  %2279 = sext i32 %2278 to i64
  %2280 = mul nsw i64 %2279, 36
  store i64 %2280, i64* %RCX.i901, align 8
  %2281 = lshr i64 %2280, 63
  %2282 = add i64 %2280, %2276
  store i64 %2282, i64* %RAX.i862, align 8
  %2283 = icmp ult i64 %2282, %2276
  %2284 = icmp ult i64 %2282, %2280
  %2285 = or i1 %2283, %2284
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %12, align 1
  %2287 = trunc i64 %2282 to i32
  %2288 = and i32 %2287, 255
  %2289 = tail call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  store i8 %2292, i8* %13, align 1
  %2293 = xor i64 %2280, %2276
  %2294 = xor i64 %2293, %2282
  %2295 = lshr i64 %2294, 4
  %2296 = trunc i64 %2295 to i8
  %2297 = and i8 %2296, 1
  store i8 %2297, i8* %14, align 1
  %2298 = icmp eq i64 %2282, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %15, align 1
  %2300 = lshr i64 %2282, 63
  %2301 = trunc i64 %2300 to i8
  store i8 %2301, i8* %16, align 1
  %2302 = lshr i64 %2276, 63
  %2303 = xor i64 %2300, %2302
  %2304 = xor i64 %2300, %2281
  %2305 = add nuw nsw i64 %2303, %2304
  %2306 = icmp eq i64 %2305, 2
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %17, align 1
  %2308 = inttoptr i64 %2282 to i32*
  %2309 = add i64 %2274, 18
  store i64 %2309, i64* %3, align 8
  %2310 = load i32, i32* %2308, align 4
  %2311 = add i32 %2310, -5
  %2312 = icmp ult i32 %2310, 5
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %12, align 1
  %2314 = and i32 %2311, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %13, align 1
  %2319 = xor i32 %2311, %2310
  %2320 = lshr i32 %2319, 4
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  store i8 %2322, i8* %14, align 1
  %2323 = icmp eq i32 %2311, 0
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %15, align 1
  %2325 = lshr i32 %2311, 31
  %2326 = trunc i32 %2325 to i8
  store i8 %2326, i8* %16, align 1
  %2327 = lshr i32 %2310, 31
  %2328 = xor i32 %2325, %2327
  %2329 = add nuw nsw i32 %2328, %2327
  %2330 = icmp eq i32 %2329, 2
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %17, align 1
  %.v122 = select i1 %2323, i64 24, i64 121
  %2332 = add i64 %2274, %.v122
  store i64 %2332, i64* %3, align 8
  br i1 %2323, label %block_4382b4, label %block_.L_438315

block_4382b4:                                     ; preds = %block_43829c
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -3268
  store i64 %2334, i64* %RDX.i875, align 8
  %2335 = add i64 %2333, -3272
  store i64 %2335, i64* %RCX.i901, align 8
  %2336 = add i64 %2332, 24
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i32*
  store i32 0, i32* %2337, align 4
  %2338 = load i64, i64* %RBP.i, align 8
  %2339 = add i64 %2338, -3272
  %2340 = load i64, i64* %3, align 8
  %2341 = add i64 %2340, 10
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2339 to i32*
  store i32 0, i32* %2342, align 4
  %2343 = load i64, i64* %RBP.i, align 8
  %2344 = add i64 %2343, -36
  %2345 = load i64, i64* %3, align 8
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = zext i32 %2348 to i64
  store i64 %2349, i64* %RDI.i888, align 8
  %2350 = add i64 %2345, 6
  store i64 %2350, i64* %3, align 8
  %2351 = load i32, i32* %2347, align 4
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RSI.i885, align 8
  %2353 = add i64 %2343, -8
  %2354 = add i64 %2345, 10
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i64*
  %2356 = load i64, i64* %2355, align 8
  store i64 %2356, i64* %19, align 8
  %2357 = add i64 %2345, 2506
  %2358 = add i64 %2345, 15
  %2359 = load i64, i64* %6, align 8
  %2360 = add i64 %2359, -8
  %2361 = inttoptr i64 %2360 to i64*
  store i64 %2358, i64* %2361, align 8
  store i64 %2360, i64* %6, align 8
  store i64 %2357, i64* %3, align 8
  %call2_4382e0 = tail call %struct.Memory* @sub_438ca0.originate_eye(%struct.State* nonnull %0, i64 %2357, %struct.Memory* %MEMORY.33)
  %2362 = load i64, i64* %RBP.i, align 8
  %2363 = add i64 %2362, -3268
  %2364 = load i64, i64* %3, align 8
  %2365 = add i64 %2364, 6
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2363 to i32*
  %2367 = load i32, i32* %2366, align 4
  %2368 = zext i32 %2367 to i64
  store i64 %2368, i64* %RSI.i885, align 8
  %2369 = add i64 %2362, -8
  %2370 = add i64 %2364, 10
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i64*
  %2372 = load i64, i64* %2371, align 8
  store i64 %2372, i64* %RCX.i901, align 8
  %2373 = add i64 %2362, -36
  %2374 = add i64 %2364, 14
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = sext i32 %2376 to i64
  %2378 = mul nsw i64 %2377, 36
  store i64 %2378, i64* %RDX.i875, align 8
  %2379 = lshr i64 %2378, 63
  %2380 = add i64 %2378, %2372
  store i64 %2380, i64* %RCX.i901, align 8
  %2381 = icmp ult i64 %2380, %2372
  %2382 = icmp ult i64 %2380, %2378
  %2383 = or i1 %2381, %2382
  %2384 = zext i1 %2383 to i8
  store i8 %2384, i8* %12, align 1
  %2385 = trunc i64 %2380 to i32
  %2386 = and i32 %2385, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %13, align 1
  %2391 = xor i64 %2378, %2372
  %2392 = xor i64 %2391, %2380
  %2393 = lshr i64 %2392, 4
  %2394 = trunc i64 %2393 to i8
  %2395 = and i8 %2394, 1
  store i8 %2395, i8* %14, align 1
  %2396 = icmp eq i64 %2380, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %15, align 1
  %2398 = lshr i64 %2380, 63
  %2399 = trunc i64 %2398 to i8
  store i8 %2399, i8* %16, align 1
  %2400 = lshr i64 %2372, 63
  %2401 = xor i64 %2398, %2400
  %2402 = xor i64 %2398, %2379
  %2403 = add nuw nsw i64 %2401, %2402
  %2404 = icmp eq i64 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %17, align 1
  %2406 = add i64 %2380, 4
  %2407 = add i64 %2364, 24
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  store i32 %2367, i32* %2408, align 4
  %2409 = load i64, i64* %RBP.i, align 8
  %2410 = add i64 %2409, -3272
  %2411 = load i64, i64* %3, align 8
  %2412 = add i64 %2411, 6
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2410 to i32*
  %2414 = load i32, i32* %2413, align 4
  %2415 = zext i32 %2414 to i64
  store i64 %2415, i64* %RSI.i885, align 8
  %2416 = add i64 %2409, -8
  %2417 = add i64 %2411, 10
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i64*
  %2419 = load i64, i64* %2418, align 8
  store i64 %2419, i64* %RCX.i901, align 8
  %2420 = add i64 %2409, -36
  %2421 = add i64 %2411, 14
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i32*
  %2423 = load i32, i32* %2422, align 4
  %2424 = sext i32 %2423 to i64
  %2425 = mul nsw i64 %2424, 36
  store i64 %2425, i64* %RDX.i875, align 8
  %2426 = lshr i64 %2425, 63
  %2427 = add i64 %2425, %2419
  store i64 %2427, i64* %RCX.i901, align 8
  %2428 = icmp ult i64 %2427, %2419
  %2429 = icmp ult i64 %2427, %2425
  %2430 = or i1 %2428, %2429
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %12, align 1
  %2432 = trunc i64 %2427 to i32
  %2433 = and i32 %2432, 255
  %2434 = tail call i32 @llvm.ctpop.i32(i32 %2433)
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  %2437 = xor i8 %2436, 1
  store i8 %2437, i8* %13, align 1
  %2438 = xor i64 %2425, %2419
  %2439 = xor i64 %2438, %2427
  %2440 = lshr i64 %2439, 4
  %2441 = trunc i64 %2440 to i8
  %2442 = and i8 %2441, 1
  store i8 %2442, i8* %14, align 1
  %2443 = icmp eq i64 %2427, 0
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %15, align 1
  %2445 = lshr i64 %2427, 63
  %2446 = trunc i64 %2445 to i8
  store i8 %2446, i8* %16, align 1
  %2447 = lshr i64 %2419, 63
  %2448 = xor i64 %2445, %2447
  %2449 = xor i64 %2445, %2426
  %2450 = add nuw nsw i64 %2448, %2449
  %2451 = icmp eq i64 %2450, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %17, align 1
  %2453 = add i64 %2427, 8
  %2454 = add i64 %2411, 24
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  store i32 %2414, i32* %2455, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_438315

block_.L_438315:                                  ; preds = %block_43829c, %block_.L_438283, %block_4382b4
  %2456 = phi i64 [ %.pre79, %block_4382b4 ], [ %2332, %block_43829c ], [ %2274, %block_.L_438283 ]
  %2457 = add i64 %2456, 5
  store i64 %2457, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43831a

block_.L_43831a:                                  ; preds = %block_.L_438315, %block_43827e
  %2458 = phi i64 [ %2169, %block_43827e ], [ %.pre80, %block_.L_438315 ]
  %storemerge55 = phi i64 [ %2225, %block_43827e ], [ %2457, %block_.L_438315 ]
  %2459 = add i64 %2458, -36
  %2460 = add i64 %storemerge55, 3
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = add i32 %2462, 1
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RAX.i862, align 8
  %2465 = icmp eq i32 %2462, -1
  %2466 = icmp eq i32 %2463, 0
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %12, align 1
  %2469 = and i32 %2463, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %13, align 1
  %2474 = xor i32 %2463, %2462
  %2475 = lshr i32 %2474, 4
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  store i8 %2477, i8* %14, align 1
  %2478 = zext i1 %2466 to i8
  store i8 %2478, i8* %15, align 1
  %2479 = lshr i32 %2463, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %16, align 1
  %2481 = lshr i32 %2462, 31
  %2482 = xor i32 %2479, %2481
  %2483 = add nuw nsw i32 %2482, %2479
  %2484 = icmp eq i32 %2483, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %17, align 1
  %2486 = add i64 %storemerge55, 9
  store i64 %2486, i64* %3, align 8
  store i32 %2463, i32* %2461, align 4
  %2487 = load i64, i64* %3, align 8
  %2488 = add i64 %2487, -199
  store i64 %2488, i64* %3, align 8
  br label %block_.L_43825c

block_.L_438328:                                  ; preds = %block_.L_43825c
  %2489 = add i64 %2198, 5
  store i64 %2489, i64* %3, align 8
  br label %block_.L_43832d

block_.L_43832d:                                  ; preds = %block_.L_438328, %block_.L_43824a
  %2490 = phi i64 [ %2164, %block_.L_43824a ], [ %2489, %block_.L_438328 ]
  %2491 = phi i64 [ %2149, %block_.L_43824a ], [ %2169, %block_.L_438328 ]
  %2492 = add i64 %2491, -16
  %2493 = add i64 %2490, 5
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i64*
  %2495 = load i64, i64* %2494, align 8
  store i8 0, i8* %12, align 1
  %2496 = trunc i64 %2495 to i32
  %2497 = and i32 %2496, 255
  %2498 = tail call i32 @llvm.ctpop.i32(i32 %2497)
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = xor i8 %2500, 1
  store i8 %2501, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2502 = icmp eq i64 %2495, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %15, align 1
  %2504 = lshr i64 %2495, 63
  %2505 = trunc i64 %2504 to i8
  store i8 %2505, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v113 = select i1 %2502, i64 227, i64 11
  %2506 = add i64 %2490, %.v113
  store i64 %2506, i64* %3, align 8
  br i1 %2502, label %block_.L_438410, label %block_438338

block_438338:                                     ; preds = %block_.L_43832d
  %2507 = add i64 %2491, -36
  %2508 = add i64 %2506, 7
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  store i32 21, i32* %2509, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_43833f

block_.L_43833f:                                  ; preds = %block_.L_4383fd, %block_438338
  %2510 = phi i64 [ %.pre81, %block_438338 ], [ %2830, %block_.L_4383fd ]
  %2511 = load i64, i64* %RBP.i, align 8
  %2512 = add i64 %2511, -36
  %2513 = add i64 %2510, 7
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i32*
  %2515 = load i32, i32* %2514, align 4
  %2516 = add i32 %2515, -400
  %2517 = icmp ult i32 %2515, 400
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %12, align 1
  %2519 = and i32 %2516, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %13, align 1
  %2524 = xor i32 %2515, 16
  %2525 = xor i32 %2524, %2516
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %14, align 1
  %2529 = icmp eq i32 %2516, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %15, align 1
  %2531 = lshr i32 %2516, 31
  %2532 = trunc i32 %2531 to i8
  store i8 %2532, i8* %16, align 1
  %2533 = lshr i32 %2515, 31
  %2534 = xor i32 %2531, %2533
  %2535 = add nuw nsw i32 %2534, %2533
  %2536 = icmp eq i32 %2535, 2
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %17, align 1
  %2538 = icmp ne i8 %2532, 0
  %2539 = xor i1 %2538, %2536
  %.v114 = select i1 %2539, i64 13, i64 204
  %2540 = add i64 %2510, %.v114
  store i64 %2540, i64* %3, align 8
  br i1 %2539, label %block_43834c, label %block_.L_43840b

block_43834c:                                     ; preds = %block_.L_43833f
  %2541 = add i64 %2540, 4
  store i64 %2541, i64* %3, align 8
  %2542 = load i32, i32* %2514, align 4
  %2543 = sext i32 %2542 to i64
  store i64 %2543, i64* %RAX.i862, align 8
  %2544 = add nsw i64 %2543, 12099168
  %2545 = add i64 %2540, 12
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i8*
  %2547 = load i8, i8* %2546, align 1
  %2548 = zext i8 %2547 to i64
  store i64 %2548, i64* %RCX.i901, align 8
  %2549 = zext i8 %2547 to i32
  %2550 = add nsw i32 %2549, -3
  %2551 = icmp ult i8 %2547, 3
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %12, align 1
  %2553 = and i32 %2550, 255
  %2554 = tail call i32 @llvm.ctpop.i32(i32 %2553)
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  %2557 = xor i8 %2556, 1
  store i8 %2557, i8* %13, align 1
  %2558 = xor i32 %2550, %2549
  %2559 = lshr i32 %2558, 4
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  store i8 %2561, i8* %14, align 1
  %2562 = icmp eq i32 %2550, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %15, align 1
  %2564 = lshr i32 %2550, 31
  %2565 = trunc i32 %2564 to i8
  store i8 %2565, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v117 = select i1 %2562, i64 21, i64 26
  %2566 = add i64 %2540, %.v117
  store i64 %2566, i64* %3, align 8
  br i1 %2562, label %block_438361, label %block_.L_438366

block_438361:                                     ; preds = %block_43834c
  %2567 = add i64 %2566, 156
  br label %block_.L_4383fd

block_.L_438366:                                  ; preds = %block_43834c
  %2568 = add i64 %2511, -16
  %2569 = add i64 %2566, 4
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i64*
  %2571 = load i64, i64* %2570, align 8
  store i64 %2571, i64* %RAX.i862, align 8
  %2572 = add i64 %2566, 8
  store i64 %2572, i64* %3, align 8
  %2573 = load i32, i32* %2514, align 4
  %2574 = sext i32 %2573 to i64
  %2575 = mul nsw i64 %2574, 36
  store i64 %2575, i64* %RCX.i901, align 8
  %2576 = lshr i64 %2575, 63
  %2577 = add i64 %2575, %2571
  store i64 %2577, i64* %RAX.i862, align 8
  %2578 = icmp ult i64 %2577, %2571
  %2579 = icmp ult i64 %2577, %2575
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %12, align 1
  %2582 = trunc i64 %2577 to i32
  %2583 = and i32 %2582, 255
  %2584 = tail call i32 @llvm.ctpop.i32(i32 %2583)
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = xor i8 %2586, 1
  store i8 %2587, i8* %13, align 1
  %2588 = xor i64 %2575, %2571
  %2589 = xor i64 %2588, %2577
  %2590 = lshr i64 %2589, 4
  %2591 = trunc i64 %2590 to i8
  %2592 = and i8 %2591, 1
  store i8 %2592, i8* %14, align 1
  %2593 = icmp eq i64 %2577, 0
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %15, align 1
  %2595 = lshr i64 %2577, 63
  %2596 = trunc i64 %2595 to i8
  store i8 %2596, i8* %16, align 1
  %2597 = lshr i64 %2571, 63
  %2598 = xor i64 %2595, %2597
  %2599 = xor i64 %2595, %2576
  %2600 = add nuw nsw i64 %2598, %2599
  %2601 = icmp eq i64 %2600, 2
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %17, align 1
  %2603 = add i64 %2577, 12
  %2604 = add i64 %2566, 19
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i32*
  %2606 = load i32, i32* %2605, align 4
  store i8 0, i8* %12, align 1
  %2607 = and i32 %2606, 255
  %2608 = tail call i32 @llvm.ctpop.i32(i32 %2607)
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = xor i8 %2610, 1
  store i8 %2611, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2612 = icmp eq i32 %2606, 0
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %15, align 1
  %2614 = lshr i32 %2606, 31
  %2615 = trunc i32 %2614 to i8
  store i8 %2615, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v118 = select i1 %2612, i64 25, i64 146
  %2616 = add i64 %2566, %.v118
  store i64 %2616, i64* %3, align 8
  br i1 %2612, label %block_43837f, label %block_.L_4383f8

block_43837f:                                     ; preds = %block_.L_438366
  %2617 = add i64 %2616, 4
  store i64 %2617, i64* %3, align 8
  %2618 = load i64, i64* %2570, align 8
  store i64 %2618, i64* %RAX.i862, align 8
  %2619 = add i64 %2616, 8
  store i64 %2619, i64* %3, align 8
  %2620 = load i32, i32* %2514, align 4
  %2621 = sext i32 %2620 to i64
  %2622 = mul nsw i64 %2621, 36
  store i64 %2622, i64* %RCX.i901, align 8
  %2623 = lshr i64 %2622, 63
  %2624 = add i64 %2622, %2618
  store i64 %2624, i64* %RAX.i862, align 8
  %2625 = icmp ult i64 %2624, %2618
  %2626 = icmp ult i64 %2624, %2622
  %2627 = or i1 %2625, %2626
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %12, align 1
  %2629 = trunc i64 %2624 to i32
  %2630 = and i32 %2629, 255
  %2631 = tail call i32 @llvm.ctpop.i32(i32 %2630)
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = xor i8 %2633, 1
  store i8 %2634, i8* %13, align 1
  %2635 = xor i64 %2622, %2618
  %2636 = xor i64 %2635, %2624
  %2637 = lshr i64 %2636, 4
  %2638 = trunc i64 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %14, align 1
  %2640 = icmp eq i64 %2624, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %15, align 1
  %2642 = lshr i64 %2624, 63
  %2643 = trunc i64 %2642 to i8
  store i8 %2643, i8* %16, align 1
  %2644 = lshr i64 %2618, 63
  %2645 = xor i64 %2642, %2644
  %2646 = xor i64 %2642, %2623
  %2647 = add nuw nsw i64 %2645, %2646
  %2648 = icmp eq i64 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %17, align 1
  %2650 = inttoptr i64 %2624 to i32*
  %2651 = add i64 %2616, 18
  store i64 %2651, i64* %3, align 8
  %2652 = load i32, i32* %2650, align 4
  %2653 = add i32 %2652, -4
  %2654 = icmp ult i32 %2652, 4
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %12, align 1
  %2656 = and i32 %2653, 255
  %2657 = tail call i32 @llvm.ctpop.i32(i32 %2656)
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  %2660 = xor i8 %2659, 1
  store i8 %2660, i8* %13, align 1
  %2661 = xor i32 %2653, %2652
  %2662 = lshr i32 %2661, 4
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  store i8 %2664, i8* %14, align 1
  %2665 = icmp eq i32 %2653, 0
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %15, align 1
  %2667 = lshr i32 %2653, 31
  %2668 = trunc i32 %2667 to i8
  store i8 %2668, i8* %16, align 1
  %2669 = lshr i32 %2652, 31
  %2670 = xor i32 %2667, %2669
  %2671 = add nuw nsw i32 %2670, %2669
  %2672 = icmp eq i32 %2671, 2
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %17, align 1
  %.v119 = select i1 %2665, i64 24, i64 121
  %2674 = add i64 %2616, %.v119
  store i64 %2674, i64* %3, align 8
  br i1 %2665, label %block_438397, label %block_.L_4383f8

block_438397:                                     ; preds = %block_43837f
  %2675 = load i64, i64* %RBP.i, align 8
  %2676 = add i64 %2675, -3276
  store i64 %2676, i64* %RDX.i875, align 8
  %2677 = add i64 %2675, -3280
  store i64 %2677, i64* %RCX.i901, align 8
  %2678 = add i64 %2674, 24
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2676 to i32*
  store i32 0, i32* %2679, align 4
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -3280
  %2682 = load i64, i64* %3, align 8
  %2683 = add i64 %2682, 10
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2681 to i32*
  store i32 0, i32* %2684, align 4
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -36
  %2687 = load i64, i64* %3, align 8
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2686 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = zext i32 %2690 to i64
  store i64 %2691, i64* %RDI.i888, align 8
  %2692 = add i64 %2687, 6
  store i64 %2692, i64* %3, align 8
  %2693 = load i32, i32* %2689, align 4
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RSI.i885, align 8
  %2695 = add i64 %2685, -16
  %2696 = add i64 %2687, 10
  store i64 %2696, i64* %3, align 8
  %2697 = inttoptr i64 %2695 to i64*
  %2698 = load i64, i64* %2697, align 8
  store i64 %2698, i64* %19, align 8
  %2699 = add i64 %2687, 2279
  %2700 = add i64 %2687, 15
  %2701 = load i64, i64* %6, align 8
  %2702 = add i64 %2701, -8
  %2703 = inttoptr i64 %2702 to i64*
  store i64 %2700, i64* %2703, align 8
  store i64 %2702, i64* %6, align 8
  store i64 %2699, i64* %3, align 8
  %call2_4383c3 = tail call %struct.Memory* @sub_438ca0.originate_eye(%struct.State* nonnull %0, i64 %2699, %struct.Memory* %MEMORY.33)
  %2704 = load i64, i64* %RBP.i, align 8
  %2705 = add i64 %2704, -3276
  %2706 = load i64, i64* %3, align 8
  %2707 = add i64 %2706, 6
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2705 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RSI.i885, align 8
  %2711 = add i64 %2704, -16
  %2712 = add i64 %2706, 10
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i64*
  %2714 = load i64, i64* %2713, align 8
  store i64 %2714, i64* %RCX.i901, align 8
  %2715 = add i64 %2704, -36
  %2716 = add i64 %2706, 14
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  %2718 = load i32, i32* %2717, align 4
  %2719 = sext i32 %2718 to i64
  %2720 = mul nsw i64 %2719, 36
  store i64 %2720, i64* %RDX.i875, align 8
  %2721 = lshr i64 %2720, 63
  %2722 = add i64 %2720, %2714
  store i64 %2722, i64* %RCX.i901, align 8
  %2723 = icmp ult i64 %2722, %2714
  %2724 = icmp ult i64 %2722, %2720
  %2725 = or i1 %2723, %2724
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %12, align 1
  %2727 = trunc i64 %2722 to i32
  %2728 = and i32 %2727, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %13, align 1
  %2733 = xor i64 %2720, %2714
  %2734 = xor i64 %2733, %2722
  %2735 = lshr i64 %2734, 4
  %2736 = trunc i64 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %14, align 1
  %2738 = icmp eq i64 %2722, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %15, align 1
  %2740 = lshr i64 %2722, 63
  %2741 = trunc i64 %2740 to i8
  store i8 %2741, i8* %16, align 1
  %2742 = lshr i64 %2714, 63
  %2743 = xor i64 %2740, %2742
  %2744 = xor i64 %2740, %2721
  %2745 = add nuw nsw i64 %2743, %2744
  %2746 = icmp eq i64 %2745, 2
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %17, align 1
  %2748 = add i64 %2722, 4
  %2749 = add i64 %2706, 24
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  store i32 %2709, i32* %2750, align 4
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -3280
  %2753 = load i64, i64* %3, align 8
  %2754 = add i64 %2753, 6
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2752 to i32*
  %2756 = load i32, i32* %2755, align 4
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %RSI.i885, align 8
  %2758 = add i64 %2751, -16
  %2759 = add i64 %2753, 10
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i64*
  %2761 = load i64, i64* %2760, align 8
  store i64 %2761, i64* %RCX.i901, align 8
  %2762 = add i64 %2751, -36
  %2763 = add i64 %2753, 14
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = sext i32 %2765 to i64
  %2767 = mul nsw i64 %2766, 36
  store i64 %2767, i64* %RDX.i875, align 8
  %2768 = lshr i64 %2767, 63
  %2769 = add i64 %2767, %2761
  store i64 %2769, i64* %RCX.i901, align 8
  %2770 = icmp ult i64 %2769, %2761
  %2771 = icmp ult i64 %2769, %2767
  %2772 = or i1 %2770, %2771
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %12, align 1
  %2774 = trunc i64 %2769 to i32
  %2775 = and i32 %2774, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %13, align 1
  %2780 = xor i64 %2767, %2761
  %2781 = xor i64 %2780, %2769
  %2782 = lshr i64 %2781, 4
  %2783 = trunc i64 %2782 to i8
  %2784 = and i8 %2783, 1
  store i8 %2784, i8* %14, align 1
  %2785 = icmp eq i64 %2769, 0
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %15, align 1
  %2787 = lshr i64 %2769, 63
  %2788 = trunc i64 %2787 to i8
  store i8 %2788, i8* %16, align 1
  %2789 = lshr i64 %2761, 63
  %2790 = xor i64 %2787, %2789
  %2791 = xor i64 %2787, %2768
  %2792 = add nuw nsw i64 %2790, %2791
  %2793 = icmp eq i64 %2792, 2
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %17, align 1
  %2795 = add i64 %2769, 8
  %2796 = add i64 %2753, 24
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i32*
  store i32 %2756, i32* %2797, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4383f8

block_.L_4383f8:                                  ; preds = %block_43837f, %block_.L_438366, %block_438397
  %2798 = phi i64 [ %.pre82, %block_438397 ], [ %2674, %block_43837f ], [ %2616, %block_.L_438366 ]
  %2799 = add i64 %2798, 5
  store i64 %2799, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4383fd

block_.L_4383fd:                                  ; preds = %block_.L_4383f8, %block_438361
  %2800 = phi i64 [ %2511, %block_438361 ], [ %.pre83, %block_.L_4383f8 ]
  %storemerge56 = phi i64 [ %2567, %block_438361 ], [ %2799, %block_.L_4383f8 ]
  %2801 = add i64 %2800, -36
  %2802 = add i64 %storemerge56, 3
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i32*
  %2804 = load i32, i32* %2803, align 4
  %2805 = add i32 %2804, 1
  %2806 = zext i32 %2805 to i64
  store i64 %2806, i64* %RAX.i862, align 8
  %2807 = icmp eq i32 %2804, -1
  %2808 = icmp eq i32 %2805, 0
  %2809 = or i1 %2807, %2808
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %12, align 1
  %2811 = and i32 %2805, 255
  %2812 = tail call i32 @llvm.ctpop.i32(i32 %2811)
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  store i8 %2815, i8* %13, align 1
  %2816 = xor i32 %2805, %2804
  %2817 = lshr i32 %2816, 4
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %14, align 1
  %2820 = zext i1 %2808 to i8
  store i8 %2820, i8* %15, align 1
  %2821 = lshr i32 %2805, 31
  %2822 = trunc i32 %2821 to i8
  store i8 %2822, i8* %16, align 1
  %2823 = lshr i32 %2804, 31
  %2824 = xor i32 %2821, %2823
  %2825 = add nuw nsw i32 %2824, %2821
  %2826 = icmp eq i32 %2825, 2
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %17, align 1
  %2828 = add i64 %storemerge56, 9
  store i64 %2828, i64* %3, align 8
  store i32 %2805, i32* %2803, align 4
  %2829 = load i64, i64* %3, align 8
  %2830 = add i64 %2829, -199
  store i64 %2830, i64* %3, align 8
  br label %block_.L_43833f

block_.L_43840b:                                  ; preds = %block_.L_43833f
  %2831 = add i64 %2540, 5
  store i64 %2831, i64* %3, align 8
  br label %block_.L_438410

block_.L_438410:                                  ; preds = %block_.L_43840b, %block_.L_43832d
  %2832 = phi i64 [ %2506, %block_.L_43832d ], [ %2831, %block_.L_43840b ]
  %2833 = phi i64 [ %2491, %block_.L_43832d ], [ %2511, %block_.L_43840b ]
  %2834 = add i64 %2833, -8
  %2835 = add i64 %2832, 5
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i64*
  %2837 = load i64, i64* %2836, align 8
  store i8 0, i8* %12, align 1
  %2838 = trunc i64 %2837 to i32
  %2839 = and i32 %2838, 255
  %2840 = tail call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  store i8 %2843, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2844 = icmp eq i64 %2837, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %15, align 1
  %2846 = lshr i64 %2837, 63
  %2847 = trunc i64 %2846 to i8
  store i8 %2847, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v115 = select i1 %2844, i64 20, i64 11
  %2848 = add i64 %2832, %.v115
  store i64 %2848, i64* %3, align 8
  br i1 %2844, label %block_.L_438424, label %block_43841b

block_43841b:                                     ; preds = %block_.L_438410
  %2849 = add i64 %2848, 4
  store i64 %2849, i64* %3, align 8
  %2850 = load i64, i64* %2836, align 8
  store i64 %2850, i64* %RDI.i888, align 8
  %2851 = add i64 %2848, 2917
  %2852 = add i64 %2848, 9
  %2853 = load i64, i64* %6, align 8
  %2854 = add i64 %2853, -8
  %2855 = inttoptr i64 %2854 to i64*
  store i64 %2852, i64* %2855, align 8
  store i64 %2854, i64* %6, align 8
  store i64 %2851, i64* %3, align 8
  %call2_43841f = tail call %struct.Memory* @sub_438f80.count_neighbours(%struct.State* nonnull %0, i64 %2851, %struct.Memory* %MEMORY.33)
  %.pre84 = load i64, i64* %RBP.i, align 8
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_438424

block_.L_438424:                                  ; preds = %block_43841b, %block_.L_438410
  %2856 = phi i64 [ %2848, %block_.L_438410 ], [ %.pre85, %block_43841b ]
  %2857 = phi i64 [ %2833, %block_.L_438410 ], [ %.pre84, %block_43841b ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.33, %block_.L_438410 ], [ %call2_43841f, %block_43841b ]
  %2858 = add i64 %2857, -16
  %2859 = add i64 %2856, 5
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i64*
  %2861 = load i64, i64* %2860, align 8
  store i8 0, i8* %12, align 1
  %2862 = trunc i64 %2861 to i32
  %2863 = and i32 %2862, 255
  %2864 = tail call i32 @llvm.ctpop.i32(i32 %2863)
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  %2867 = xor i8 %2866, 1
  store i8 %2867, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2868 = icmp eq i64 %2861, 0
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %15, align 1
  %2870 = lshr i64 %2861, 63
  %2871 = trunc i64 %2870 to i8
  store i8 %2871, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v116 = select i1 %2868, i64 20, i64 11
  %2872 = add i64 %2856, %.v116
  store i64 %2872, i64* %3, align 8
  br i1 %2868, label %block_.L_438438, label %block_43842f

block_43842f:                                     ; preds = %block_.L_438424
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %3, align 8
  %2874 = load i64, i64* %2860, align 8
  store i64 %2874, i64* %RDI.i888, align 8
  %2875 = add i64 %2872, 2897
  %2876 = add i64 %2872, 9
  %2877 = load i64, i64* %6, align 8
  %2878 = add i64 %2877, -8
  %2879 = inttoptr i64 %2878 to i64*
  store i64 %2876, i64* %2879, align 8
  store i64 %2878, i64* %6, align 8
  store i64 %2875, i64* %3, align 8
  %call2_438433 = tail call %struct.Memory* @sub_438f80.count_neighbours(%struct.State* nonnull %0, i64 %2875, %struct.Memory* %MEMORY.42)
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_438438

block_.L_438438:                                  ; preds = %block_43842f, %block_.L_438424
  %2880 = phi i64 [ %2872, %block_.L_438424 ], [ %.pre86, %block_43842f ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.42, %block_.L_438424 ], [ %call2_438433, %block_43842f ]
  %2881 = load i64, i64* %6, align 8
  %2882 = add i64 %2881, 3312
  store i64 %2882, i64* %6, align 8
  %2883 = icmp ugt i64 %2881, -3313
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %12, align 1
  %2885 = trunc i64 %2882 to i32
  %2886 = and i32 %2885, 255
  %2887 = tail call i32 @llvm.ctpop.i32(i32 %2886)
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  %2890 = xor i8 %2889, 1
  store i8 %2890, i8* %13, align 1
  %2891 = xor i64 %2881, 16
  %2892 = xor i64 %2891, %2882
  %2893 = lshr i64 %2892, 4
  %2894 = trunc i64 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %14, align 1
  %2896 = icmp eq i64 %2882, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %15, align 1
  %2898 = lshr i64 %2882, 63
  %2899 = trunc i64 %2898 to i8
  store i8 %2899, i8* %16, align 1
  %2900 = lshr i64 %2881, 63
  %2901 = xor i64 %2898, %2900
  %2902 = add nuw nsw i64 %2901, %2898
  %2903 = icmp eq i64 %2902, 2
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %17, align 1
  %2905 = add i64 %2880, 8
  store i64 %2905, i64* %3, align 8
  %2906 = add i64 %2881, 3320
  %2907 = inttoptr i64 %2882 to i64*
  %2908 = load i64, i64* %2907, align 8
  store i64 %2908, i64* %RBP.i, align 8
  store i64 %2906, i64* %6, align 8
  %2909 = add i64 %2880, 9
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2906 to i64*
  %2911 = load i64, i64* %2910, align 8
  store i64 %2911, i64* %3, align 8
  %2912 = add i64 %2881, 3328
  store i64 %2912, i64* %6, align 8
  ret %struct.Memory* %MEMORY.43
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
define %struct.Memory* @routine_subq__0xcf0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -3312
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 3312
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
define %struct.Memory* @routine_movl__0x640___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xac1c50___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xac1610___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0xcd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3288
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0xce0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3296
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0xce8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3304
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xcd8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcec__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3308
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
define %struct.Memory* @routine_movq_MINUS0xce0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xce8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
  %19 = xor i32 %8, 16
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_437d5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437d4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437d13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.clear_eye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_lively(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437d50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437ccf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xac1610___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac1610_type* @G__0xac1610 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.compute_primary_domains(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xac1c50___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac1c50_type* @G__0xac1c50 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43823b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_438228(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437e0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x670__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1648
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438215(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11277840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_437e76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11279440
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437e51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 3, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437e71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438210(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xac1610___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11277840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %9, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_437f51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_437f51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 5, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_437f4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437f39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_437f39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 1, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437f4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437f3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437ec1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43820b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43802c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xac1c50___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11279440
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %9, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43802c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 4, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_438027(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3256
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
define %struct.Memory* @routine_je_.L_438014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438027(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438019(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437f9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438206(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438201(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_438126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_438102(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3260
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
define %struct.Memory* @routine_je_.L_4380ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4380ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438102(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4380f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438062(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438121(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4381fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4381d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3264
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
define %struct.Memory* @routine_je_.L_4381c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4381c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4381d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4381ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4381f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4381fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438201(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438215(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43821a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437dc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43822d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437db2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jne_.L_43824a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.find_cuts(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43832d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_438328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438283(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43831a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_438315(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %7, 5
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xcc4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xcc8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.originate_eye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xcc4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3268
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3272
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
define %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43825c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43832d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_438410(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43840b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4383fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4383f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %7, 4
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xccc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xcd0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xccc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xccc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3276
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
define %struct.Memory* @routine_movl_MINUS0xcd0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3280
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
define %struct.Memory* @routine_jmpq_.L_43833f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438410(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_438424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.count_neighbours(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_438438(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcf0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3312
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -3313
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
