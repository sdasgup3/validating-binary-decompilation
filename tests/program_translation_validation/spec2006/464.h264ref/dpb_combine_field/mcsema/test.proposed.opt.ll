; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G_0x7247b0_type = type <{ [4 x i8] }>
%G_0x7247b4_type = type <{ [4 x i8] }>
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
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G_0x7247b0 = local_unnamed_addr global %G_0x7247b0_type zeroinitializer
@G_0x7247b4 = local_unnamed_addr global %G_0x7247b4_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42dd50.UnifiedOneForthPix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dpb_combine_field(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -392
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i174 = bitcast %union.anon* %18 to i32*
  %RAX.i175 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i190 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %20 = add i64 %7, -16
  %21 = load i64, i64* %RDI.i190, align 8
  %22 = add i64 %10, 16
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i64*
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %25 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %RDI.i190, align 8
  %30 = add i64 %29, 48
  %31 = add i64 %26, 8
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %30 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RDI.i190, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i480 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %35 = add i64 %33, 6392
  %36 = add i64 %26, 14
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %35 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %RSI.i480, align 8
  %40 = add i64 %26, 18
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %28, align 8
  store i64 %41, i64* %RDI.i190, align 8
  %42 = add i64 %41, 48
  %43 = add i64 %26, 22
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %RDI.i190, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i586 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %47 = add i64 %45, 6396
  %48 = add i64 %26, 28
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 1
  %52 = icmp slt i32 %50, 0
  %53 = icmp slt i32 %51, 0
  %54 = xor i1 %52, %53
  %55 = zext i32 %51 to i64
  store i64 %55, i64* %RCX.i586, align 8
  %.lobit = lshr i32 %50, 31
  %56 = trunc i32 %.lobit to i8
  store i8 %56, i8* %12, align 1
  %57 = and i32 %51, 254
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %62 = icmp eq i32 %51, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %15, align 1
  %64 = lshr i32 %50, 30
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  store i8 %66, i8* %16, align 1
  %67 = zext i1 %54 to i8
  store i8 %67, i8* %17, align 1
  %68 = add i64 %26, 34
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %28, align 8
  store i64 %69, i64* %RDI.i190, align 8
  %70 = add i64 %69, 48
  %71 = add i64 %26, 38
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RDI.i190, align 8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i756 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  %75 = add i64 %73, 6400
  %76 = add i64 %26, 44
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RDX.i756, align 8
  %80 = add i64 %26, 48
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %28, align 8
  store i64 %81, i64* %RDI.i190, align 8
  %82 = add i64 %81, 48
  %83 = add i64 %26, 52
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RDI.i190, align 8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %87 = add i64 %85, 6404
  %88 = add i64 %26, 59
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 1
  %92 = icmp slt i32 %90, 0
  %93 = icmp slt i32 %91, 0
  %94 = xor i1 %92, %93
  %95 = zext i32 %91 to i64
  store i64 %95, i64* %86, align 8
  %.lobit25 = lshr i32 %90, 31
  %96 = trunc i32 %.lobit25 to i8
  store i8 %96, i8* %12, align 1
  %97 = and i32 %91, 254
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97)
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %102 = icmp eq i32 %91, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %15, align 1
  %104 = lshr i32 %90, 30
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %16, align 1
  %107 = zext i1 %94 to i8
  store i8 %107, i8* %17, align 1
  %108 = load i32, i32* %EAX.i174, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RDI.i190, align 8
  %EDX.i1016 = bitcast %union.anon* %74 to i32*
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -28
  %112 = add i64 %26, 67
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  store i32 %78, i32* %113, align 4
  %ECX.i1102 = bitcast %union.anon* %46 to i32*
  %114 = load i32, i32* %ECX.i1102, align 4
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* %3, align 8
  store i64 %115, i64* %RDX.i756, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -28
  %119 = add i64 %116, 5
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i586, align 8
  %123 = add i64 %116, -25958
  %124 = add i64 %116, 10
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %6, align 8
  store i64 %123, i64* %3, align 8
  %call2_4522cb = tail call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64 %123, %struct.Memory* %2)
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i1328 = getelementptr inbounds %union.anon, %union.anon* %128, i64 0, i32 0
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -8
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %R9.i1328, align 8
  %135 = add i64 %134, 40
  %136 = load i64, i64* %RAX.i175, align 8
  %137 = add i64 %131, 8
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i64*
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -12
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 7
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 0, i32* %143, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4522df

block_.L_4522df:                                  ; preds = %block_4522f6, %entry
  %144 = phi i64 [ %.pre, %entry ], [ %419, %block_4522f6 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4522cb, %entry ], [ %387, %block_4522f6 ]
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -12
  %147 = add i64 %144, 3
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX.i175, align 8
  %151 = add i64 %145, -8
  %152 = add i64 %144, 7
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %RCX.i586, align 8
  %155 = add i64 %154, 48
  %156 = add i64 %144, 11
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RCX.i586, align 8
  %159 = add i64 %158, 6396
  %160 = add i64 %144, 17
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sub i32 %149, %162
  %164 = icmp ult i32 %149, %162
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %12, align 1
  %166 = and i32 %163, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %13, align 1
  %171 = xor i32 %162, %149
  %172 = xor i32 %171, %163
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %14, align 1
  %176 = icmp eq i32 %163, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %15, align 1
  %178 = lshr i32 %163, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %16, align 1
  %180 = lshr i32 %149, 31
  %181 = lshr i32 %162, 31
  %182 = xor i32 %181, %180
  %183 = xor i32 %178, %180
  %184 = add nuw nsw i32 %183, %182
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %17, align 1
  %187 = icmp ne i8 %179, 0
  %188 = xor i1 %187, %185
  %.v278 = select i1 %188, i64 23, i64 218
  %189 = add i64 %144, %.v278
  store i64 %189, i64* %3, align 8
  br i1 %188, label %block_4522f6, label %block_.L_4523b9

block_4522f6:                                     ; preds = %block_.L_4522df
  %190 = add i64 %189, 4
  store i64 %190, i64* %3, align 8
  %191 = load i64, i64* %153, align 8
  store i64 %191, i64* %RAX.i175, align 8
  %192 = add i64 %191, 40
  %193 = add i64 %189, 8
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RAX.i175, align 8
  %196 = add i64 %195, 6424
  %197 = add i64 %189, 15
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RAX.i175, align 8
  %200 = add i64 %189, 18
  store i64 %200, i64* %3, align 8
  %201 = load i32, i32* %148, align 4
  %202 = shl i32 %201, 1
  %203 = icmp slt i32 %201, 0
  %204 = icmp slt i32 %202, 0
  %205 = xor i1 %203, %204
  %206 = zext i32 %202 to i64
  store i64 %206, i64* %RCX.i586, align 8
  %.lobit26 = lshr i32 %201, 31
  %207 = trunc i32 %.lobit26 to i8
  store i8 %207, i8* %12, align 1
  %208 = and i32 %202, 254
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %213 = icmp eq i32 %202, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %15, align 1
  %215 = lshr i32 %201, 30
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %16, align 1
  %218 = zext i1 %205 to i8
  store i8 %218, i8* %17, align 1
  %219 = sext i32 %202 to i64
  store i64 %219, i64* %RDX.i756, align 8
  %220 = shl nsw i64 %219, 3
  %221 = add i64 %199, %220
  %222 = add i64 %189, 27
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX.i175, align 8
  %225 = add i64 %189, 31
  store i64 %225, i64* %3, align 8
  %226 = load i64, i64* %153, align 8
  store i64 %226, i64* %RDX.i756, align 8
  %227 = add i64 %226, 48
  %228 = add i64 %189, 35
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RDX.i756, align 8
  %231 = add i64 %230, 6424
  %232 = add i64 %189, 42
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RDX.i756, align 8
  %235 = add i64 %189, 46
  store i64 %235, i64* %3, align 8
  %236 = load i32, i32* %148, align 4
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RSI.i480, align 8
  %238 = shl nsw i64 %237, 3
  %239 = add i64 %238, %234
  %240 = add i64 %189, 50
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RDX.i756, align 8
  %243 = add i64 %189, 54
  store i64 %243, i64* %3, align 8
  %244 = load i64, i64* %153, align 8
  store i64 %244, i64* %RSI.i480, align 8
  %245 = add i64 %244, 48
  %246 = add i64 %189, 58
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RSI.i480, align 8
  %249 = add i64 %248, 6392
  %250 = add i64 %189, 65
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = shl nsw i64 %253, 1
  %.lobit27 = lshr i32 %252, 31
  %255 = trunc i32 %.lobit27 to i8
  store i8 %255, i8* %12, align 1
  %256 = trunc i64 %254 to i32
  %257 = and i32 %256, 254
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %262 = icmp eq i32 %252, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %15, align 1
  %264 = lshr i64 %253, 62
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i64 %224, i64* %RDI.i190, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -40
  %269 = add i64 %189, 75
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i64*
  store i64 %254, i64* %270, align 8
  %271 = load i64, i64* %RDX.i756, align 8
  %272 = load i64, i64* %3, align 8
  store i64 %271, i64* %RSI.i480, align 8
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -40
  %275 = add i64 %272, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RDX.i756, align 8
  %278 = add i64 %272, -332307
  %279 = add i64 %272, 12
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %283 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %MEMORY.0)
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -8
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 4
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RAX.i175, align 8
  %290 = add i64 %289, 40
  %291 = add i64 %286, 8
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RAX.i175, align 8
  %294 = add i64 %293, 6424
  %295 = add i64 %286, 15
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RAX.i175, align 8
  %298 = add i64 %284, -12
  %299 = add i64 %286, 18
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = shl i32 %301, 1
  %303 = or i32 %302, 1
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RCX.i586, align 8
  store i8 0, i8* %12, align 1
  %305 = and i32 %303, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %310 = lshr i32 %301, 30
  %311 = and i32 %310, 1
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %16, align 1
  %313 = lshr i32 %301, 30
  %314 = and i32 %313, 1
  %315 = xor i32 %311, %314
  %316 = add nuw nsw i32 %315, %311
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %17, align 1
  %319 = sext i32 %303 to i64
  store i64 %319, i64* %RDX.i756, align 8
  %320 = shl nsw i64 %319, 3
  %321 = add i64 %297, %320
  %322 = add i64 %286, 30
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RAX.i175, align 8
  %325 = add i64 %286, 34
  store i64 %325, i64* %3, align 8
  %326 = load i64, i64* %288, align 8
  store i64 %326, i64* %RDX.i756, align 8
  %327 = add i64 %326, 56
  %328 = add i64 %286, 38
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RDX.i756, align 8
  %331 = add i64 %330, 6424
  %332 = add i64 %286, 45
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RDX.i756, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -12
  %337 = add i64 %286, 49
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %RSI.i480, align 8
  %341 = shl nsw i64 %340, 3
  %342 = add i64 %341, %334
  %343 = add i64 %286, 53
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RDX.i756, align 8
  %346 = add i64 %335, -8
  %347 = add i64 %286, 57
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RSI.i480, align 8
  %350 = add i64 %349, 56
  %351 = add i64 %286, 61
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RSI.i480, align 8
  %354 = add i64 %353, 6392
  %355 = add i64 %286, 68
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = shl nsw i64 %358, 1
  %.lobit29 = lshr i32 %357, 31
  %360 = trunc i32 %.lobit29 to i8
  store i8 %360, i8* %12, align 1
  %361 = trunc i64 %359 to i32
  %362 = and i32 %361, 254
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %367 = icmp eq i32 %357, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %15, align 1
  %369 = lshr i64 %358, 62
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i64 %324, i64* %RDI.i190, align 8
  %372 = add i64 %335, -48
  %373 = add i64 %286, 78
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  store i64 %359, i64* %374, align 8
  %375 = load i64, i64* %RDX.i756, align 8
  %376 = load i64, i64* %3, align 8
  store i64 %375, i64* %RSI.i480, align 8
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -48
  %379 = add i64 %376, 7
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RDX.i756, align 8
  %382 = add i64 %376, -332399
  %383 = add i64 %376, 12
  %384 = load i64, i64* %6, align 8
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %383, i64* %386, align 8
  store i64 %385, i64* %6, align 8
  store i64 %382, i64* %3, align 8
  %387 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %283)
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -12
  %390 = load i64, i64* %3, align 8
  %391 = add i64 %390, 3
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i32 %393, 1
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX.i175, align 8
  %396 = icmp eq i32 %393, -1
  %397 = icmp eq i32 %394, 0
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %12, align 1
  %400 = and i32 %394, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %13, align 1
  %405 = xor i32 %394, %393
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %14, align 1
  %409 = zext i1 %397 to i8
  store i8 %409, i8* %15, align 1
  %410 = lshr i32 %394, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %16, align 1
  %412 = lshr i32 %393, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %410
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %17, align 1
  %417 = add i64 %390, 9
  store i64 %417, i64* %3, align 8
  store i32 %394, i32* %392, align 4
  %418 = load i64, i64* %3, align 8
  %419 = add i64 %418, -213
  store i64 %419, i64* %3, align 8
  br label %block_.L_4522df

block_.L_4523b9:                                  ; preds = %block_.L_4522df
  %420 = add i64 %189, 7
  store i64 %420, i64* %3, align 8
  store i32 0, i32* %148, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_4523c0

block_.L_4523c0:                                  ; preds = %block_4523d7, %block_.L_4523b9
  %421 = phi i64 [ %.pre152, %block_.L_4523b9 ], [ %930, %block_4523d7 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4523b9 ], [ %898, %block_4523d7 ]
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -12
  %424 = add i64 %421, 3
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RAX.i175, align 8
  %428 = add i64 %422, -8
  %429 = add i64 %421, 7
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %RCX.i586, align 8
  %432 = add i64 %431, 48
  %433 = add i64 %421, 11
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RCX.i586, align 8
  %436 = add i64 %435, 6404
  %437 = add i64 %421, 17
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = sub i32 %426, %439
  %441 = icmp ult i32 %426, %439
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %12, align 1
  %443 = and i32 %440, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %13, align 1
  %448 = xor i32 %439, %426
  %449 = xor i32 %448, %440
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %14, align 1
  %453 = icmp eq i32 %440, 0
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %15, align 1
  %455 = lshr i32 %440, 31
  %456 = trunc i32 %455 to i8
  store i8 %456, i8* %16, align 1
  %457 = lshr i32 %426, 31
  %458 = lshr i32 %439, 31
  %459 = xor i32 %458, %457
  %460 = xor i32 %455, %457
  %461 = add nuw nsw i32 %460, %459
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %17, align 1
  %464 = icmp ne i8 %456, 0
  %465 = xor i1 %464, %462
  %.v276 = select i1 %465, i64 23, i64 427
  %466 = add i64 %421, %.v276
  %467 = add i64 %466, 4
  store i64 %467, i64* %3, align 8
  %468 = load i64, i64* %430, align 8
  store i64 %468, i64* %RAX.i175, align 8
  %469 = add i64 %468, 40
  %470 = add i64 %466, 8
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  br i1 %465, label %block_4523d7, label %block_.L_45256b

block_4523d7:                                     ; preds = %block_.L_4523c0
  store i64 %472, i64* %RAX.i175, align 8
  %473 = add i64 %472, 6464
  %474 = add i64 %466, 15
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RAX.i175, align 8
  %477 = add i64 %466, 18
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RAX.i175, align 8
  %480 = add i64 %466, 21
  store i64 %480, i64* %3, align 8
  %481 = load i32, i32* %425, align 4
  %482 = shl i32 %481, 1
  %483 = icmp slt i32 %481, 0
  %484 = icmp slt i32 %482, 0
  %485 = xor i1 %483, %484
  %486 = zext i32 %482 to i64
  store i64 %486, i64* %RCX.i586, align 8
  %.lobit30 = lshr i32 %481, 31
  %487 = trunc i32 %.lobit30 to i8
  store i8 %487, i8* %12, align 1
  %488 = and i32 %482, 254
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %493 = icmp eq i32 %482, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %15, align 1
  %495 = lshr i32 %481, 30
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %16, align 1
  %498 = zext i1 %485 to i8
  store i8 %498, i8* %17, align 1
  %499 = sext i32 %482 to i64
  store i64 %499, i64* %RDX.i756, align 8
  %500 = shl nsw i64 %499, 3
  %501 = add i64 %479, %500
  %502 = add i64 %466, 30
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RAX.i175, align 8
  %505 = add i64 %466, 34
  store i64 %505, i64* %3, align 8
  %506 = load i64, i64* %430, align 8
  store i64 %506, i64* %RDX.i756, align 8
  %507 = add i64 %506, 48
  %508 = add i64 %466, 38
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RDX.i756, align 8
  %511 = add i64 %510, 6464
  %512 = add i64 %466, 45
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %RDX.i756, align 8
  %515 = add i64 %466, 48
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RDX.i756, align 8
  %518 = add i64 %466, 52
  store i64 %518, i64* %3, align 8
  %519 = load i32, i32* %425, align 4
  %520 = sext i32 %519 to i64
  store i64 %520, i64* %RSI.i480, align 8
  %521 = shl nsw i64 %520, 3
  %522 = add i64 %521, %517
  %523 = add i64 %466, 56
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %RDX.i756, align 8
  %526 = add i64 %466, 60
  store i64 %526, i64* %3, align 8
  %527 = load i64, i64* %430, align 8
  store i64 %527, i64* %RSI.i480, align 8
  %528 = add i64 %527, 48
  %529 = add i64 %466, 64
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RSI.i480, align 8
  %532 = add i64 %531, 6400
  %533 = add i64 %466, 71
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  %537 = shl nsw i64 %536, 1
  %.lobit31 = lshr i32 %535, 31
  %538 = trunc i32 %.lobit31 to i8
  store i8 %538, i8* %12, align 1
  %539 = trunc i64 %537 to i32
  %540 = and i32 %539, 254
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %545 = icmp eq i32 %535, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %15, align 1
  %547 = lshr i64 %536, 62
  %548 = trunc i64 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i64 %504, i64* %RDI.i190, align 8
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -56
  %552 = add i64 %466, 81
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i64*
  store i64 %537, i64* %553, align 8
  %554 = load i64, i64* %RDX.i756, align 8
  %555 = load i64, i64* %3, align 8
  store i64 %554, i64* %RSI.i480, align 8
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -56
  %558 = add i64 %555, 7
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RDX.i756, align 8
  %561 = add i64 %555, -332538
  %562 = add i64 %555, 12
  %563 = load i64, i64* %6, align 8
  %564 = add i64 %563, -8
  %565 = inttoptr i64 %564 to i64*
  store i64 %562, i64* %565, align 8
  store i64 %564, i64* %6, align 8
  store i64 %561, i64* %3, align 8
  %566 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %MEMORY.1)
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -8
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, 4
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %568 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RAX.i175, align 8
  %573 = add i64 %572, 40
  %574 = add i64 %569, 8
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RAX.i175, align 8
  %577 = add i64 %576, 6464
  %578 = add i64 %569, 15
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RAX.i175, align 8
  %581 = add i64 %569, 18
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RAX.i175, align 8
  %584 = add i64 %567, -12
  %585 = add i64 %569, 21
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = shl i32 %587, 1
  %589 = or i32 %588, 1
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RCX.i586, align 8
  store i8 0, i8* %12, align 1
  %591 = and i32 %589, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %596 = lshr i32 %587, 30
  %597 = and i32 %596, 1
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %16, align 1
  %599 = lshr i32 %587, 30
  %600 = and i32 %599, 1
  %601 = xor i32 %597, %600
  %602 = add nuw nsw i32 %601, %597
  %603 = icmp eq i32 %602, 2
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %17, align 1
  %605 = sext i32 %589 to i64
  store i64 %605, i64* %RDX.i756, align 8
  %606 = shl nsw i64 %605, 3
  %607 = add i64 %583, %606
  %608 = add i64 %569, 33
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i64*
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %RAX.i175, align 8
  %611 = add i64 %569, 37
  store i64 %611, i64* %3, align 8
  %612 = load i64, i64* %571, align 8
  store i64 %612, i64* %RDX.i756, align 8
  %613 = add i64 %612, 56
  %614 = add i64 %569, 41
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %RDX.i756, align 8
  %617 = add i64 %616, 6464
  %618 = add i64 %569, 48
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RDX.i756, align 8
  %621 = add i64 %569, 51
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RDX.i756, align 8
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -12
  %626 = add i64 %569, 55
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = sext i32 %628 to i64
  store i64 %629, i64* %RSI.i480, align 8
  %630 = shl nsw i64 %629, 3
  %631 = add i64 %630, %623
  %632 = add i64 %569, 59
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i64*
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %RDX.i756, align 8
  %635 = add i64 %624, -8
  %636 = add i64 %569, 63
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RSI.i480, align 8
  %639 = add i64 %638, 56
  %640 = add i64 %569, 67
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RSI.i480, align 8
  %643 = add i64 %642, 6400
  %644 = add i64 %569, 74
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = shl nsw i64 %647, 1
  %.lobit33 = lshr i32 %646, 31
  %649 = trunc i32 %.lobit33 to i8
  store i8 %649, i8* %12, align 1
  %650 = trunc i64 %648 to i32
  %651 = and i32 %650, 254
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %656 = icmp eq i32 %646, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %15, align 1
  %658 = lshr i64 %647, 62
  %659 = trunc i64 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i64 %610, i64* %RDI.i190, align 8
  %661 = add i64 %624, -64
  %662 = add i64 %569, 84
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  store i64 %648, i64* %663, align 8
  %664 = load i64, i64* %RDX.i756, align 8
  %665 = load i64, i64* %3, align 8
  store i64 %664, i64* %RSI.i480, align 8
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -64
  %668 = add i64 %665, 7
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  %670 = load i64, i64* %669, align 8
  store i64 %670, i64* %RDX.i756, align 8
  %671 = add i64 %665, -332636
  %672 = add i64 %665, 12
  %673 = load i64, i64* %6, align 8
  %674 = add i64 %673, -8
  %675 = inttoptr i64 %674 to i64*
  store i64 %672, i64* %675, align 8
  store i64 %674, i64* %6, align 8
  store i64 %671, i64* %3, align 8
  %676 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %566)
  %677 = load i64, i64* %RBP.i, align 8
  %678 = add i64 %677, -8
  %679 = load i64, i64* %3, align 8
  %680 = add i64 %679, 4
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %678 to i64*
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %RAX.i175, align 8
  %683 = add i64 %682, 40
  %684 = add i64 %679, 8
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %RAX.i175, align 8
  %687 = add i64 %686, 6464
  %688 = add i64 %679, 15
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX.i175, align 8
  %691 = add i64 %690, 8
  %692 = add i64 %679, 19
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RAX.i175, align 8
  %695 = add i64 %677, -12
  %696 = add i64 %679, 22
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = shl i32 %698, 1
  %700 = icmp slt i32 %698, 0
  %701 = icmp slt i32 %699, 0
  %702 = xor i1 %700, %701
  %703 = zext i32 %699 to i64
  store i64 %703, i64* %RCX.i586, align 8
  %.lobit34 = lshr i32 %698, 31
  %704 = trunc i32 %.lobit34 to i8
  store i8 %704, i8* %12, align 1
  %705 = and i32 %699, 254
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %710 = icmp eq i32 %699, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %15, align 1
  %712 = lshr i32 %698, 30
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %16, align 1
  %715 = zext i1 %702 to i8
  store i8 %715, i8* %17, align 1
  %716 = sext i32 %699 to i64
  store i64 %716, i64* %RDX.i756, align 8
  %717 = shl nsw i64 %716, 3
  %718 = add i64 %694, %717
  %719 = add i64 %679, 31
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RAX.i175, align 8
  %722 = add i64 %679, 35
  store i64 %722, i64* %3, align 8
  %723 = load i64, i64* %681, align 8
  store i64 %723, i64* %RDX.i756, align 8
  %724 = add i64 %723, 48
  %725 = add i64 %679, 39
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RDX.i756, align 8
  %728 = add i64 %727, 6464
  %729 = add i64 %679, 46
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RDX.i756, align 8
  %732 = add i64 %731, 8
  %733 = add i64 %679, 50
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RDX.i756, align 8
  %736 = add i64 %679, 54
  store i64 %736, i64* %3, align 8
  %737 = load i32, i32* %697, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RSI.i480, align 8
  %739 = shl nsw i64 %738, 3
  %740 = add i64 %739, %735
  %741 = add i64 %679, 58
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RDX.i756, align 8
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -8
  %746 = add i64 %679, 62
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RSI.i480, align 8
  %749 = add i64 %748, 48
  %750 = add i64 %679, 66
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RSI.i480, align 8
  %753 = add i64 %752, 6400
  %754 = add i64 %679, 73
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sext i32 %756 to i64
  %758 = shl nsw i64 %757, 1
  %.lobit35 = lshr i32 %756, 31
  %759 = trunc i32 %.lobit35 to i8
  store i8 %759, i8* %12, align 1
  %760 = trunc i64 %758 to i32
  %761 = and i32 %760, 254
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %766 = icmp eq i32 %756, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %15, align 1
  %768 = lshr i64 %757, 62
  %769 = trunc i64 %768 to i8
  %770 = and i8 %769, 1
  store i8 %770, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i64 %721, i64* %RDI.i190, align 8
  %771 = add i64 %744, -72
  %772 = add i64 %679, 83
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i64*
  store i64 %758, i64* %773, align 8
  %774 = load i64, i64* %RDX.i756, align 8
  %775 = load i64, i64* %3, align 8
  store i64 %774, i64* %RSI.i480, align 8
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -72
  %778 = add i64 %775, 7
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i64*
  %780 = load i64, i64* %779, align 8
  store i64 %780, i64* %RDX.i756, align 8
  %781 = add i64 %775, -332733
  %782 = add i64 %775, 12
  %783 = load i64, i64* %6, align 8
  %784 = add i64 %783, -8
  %785 = inttoptr i64 %784 to i64*
  store i64 %782, i64* %785, align 8
  store i64 %784, i64* %6, align 8
  store i64 %781, i64* %3, align 8
  %786 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %676)
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -8
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 4
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RAX.i175, align 8
  %793 = add i64 %792, 40
  %794 = add i64 %789, 8
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RAX.i175, align 8
  %797 = add i64 %796, 6464
  %798 = add i64 %789, 15
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RAX.i175, align 8
  %801 = add i64 %800, 8
  %802 = add i64 %789, 19
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %RAX.i175, align 8
  %805 = add i64 %787, -12
  %806 = add i64 %789, 22
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = shl i32 %808, 1
  %810 = or i32 %809, 1
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RCX.i586, align 8
  store i8 0, i8* %12, align 1
  %812 = and i32 %810, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %817 = lshr i32 %808, 30
  %818 = and i32 %817, 1
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %16, align 1
  %820 = lshr i32 %808, 30
  %821 = and i32 %820, 1
  %822 = xor i32 %818, %821
  %823 = add nuw nsw i32 %822, %818
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %17, align 1
  %826 = sext i32 %810 to i64
  store i64 %826, i64* %RDX.i756, align 8
  %827 = shl nsw i64 %826, 3
  %828 = add i64 %804, %827
  %829 = add i64 %789, 34
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX.i175, align 8
  %832 = add i64 %789, 38
  store i64 %832, i64* %3, align 8
  %833 = load i64, i64* %791, align 8
  store i64 %833, i64* %RDX.i756, align 8
  %834 = add i64 %833, 56
  %835 = add i64 %789, 42
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %RDX.i756, align 8
  %838 = add i64 %837, 6464
  %839 = add i64 %789, 49
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RDX.i756, align 8
  %842 = add i64 %841, 8
  %843 = add i64 %789, 53
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RDX.i756, align 8
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -12
  %848 = add i64 %789, 57
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = sext i32 %850 to i64
  store i64 %851, i64* %RSI.i480, align 8
  %852 = shl nsw i64 %851, 3
  %853 = add i64 %852, %845
  %854 = add i64 %789, 61
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %RDX.i756, align 8
  %857 = add i64 %846, -8
  %858 = add i64 %789, 65
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RSI.i480, align 8
  %861 = add i64 %860, 56
  %862 = add i64 %789, 69
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RSI.i480, align 8
  %865 = add i64 %864, 6400
  %866 = add i64 %789, 76
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = sext i32 %868 to i64
  %870 = shl nsw i64 %869, 1
  %.lobit37 = lshr i32 %868, 31
  %871 = trunc i32 %.lobit37 to i8
  store i8 %871, i8* %12, align 1
  %872 = trunc i64 %870 to i32
  %873 = and i32 %872, 254
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %878 = icmp eq i32 %868, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %15, align 1
  %880 = lshr i64 %869, 62
  %881 = trunc i64 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i64 %831, i64* %RDI.i190, align 8
  %883 = add i64 %846, -80
  %884 = add i64 %789, 86
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  store i64 %870, i64* %885, align 8
  %886 = load i64, i64* %RDX.i756, align 8
  %887 = load i64, i64* %3, align 8
  store i64 %886, i64* %RSI.i480, align 8
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -80
  %890 = add i64 %887, 7
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RDX.i756, align 8
  %893 = add i64 %887, -332833
  %894 = add i64 %887, 12
  %895 = load i64, i64* %6, align 8
  %896 = add i64 %895, -8
  %897 = inttoptr i64 %896 to i64*
  store i64 %894, i64* %897, align 8
  store i64 %896, i64* %6, align 8
  store i64 %893, i64* %3, align 8
  %898 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %786)
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -12
  %901 = load i64, i64* %3, align 8
  %902 = add i64 %901, 3
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %900 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = add i32 %904, 1
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RAX.i175, align 8
  %907 = icmp eq i32 %904, -1
  %908 = icmp eq i32 %905, 0
  %909 = or i1 %907, %908
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %12, align 1
  %911 = and i32 %905, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %13, align 1
  %916 = xor i32 %905, %904
  %917 = lshr i32 %916, 4
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %14, align 1
  %920 = zext i1 %908 to i8
  store i8 %920, i8* %15, align 1
  %921 = lshr i32 %905, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %16, align 1
  %923 = lshr i32 %904, 31
  %924 = xor i32 %921, %923
  %925 = add nuw nsw i32 %924, %921
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %17, align 1
  %928 = add i64 %901, 9
  store i64 %928, i64* %3, align 8
  store i32 %905, i32* %903, align 4
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, -422
  store i64 %930, i64* %3, align 8
  br label %block_.L_4523c0

block_.L_45256b:                                  ; preds = %block_.L_4523c0
  store i64 %472, i64* %RDI.i190, align 8
  %931 = add i64 %466, -149531
  %932 = add i64 %466, 13
  %933 = load i64, i64* %6, align 8
  %934 = add i64 %933, -8
  %935 = inttoptr i64 %934 to i64*
  store i64 %932, i64* %935, align 8
  store i64 %934, i64* %6, align 8
  store i64 %931, i64* %3, align 8
  %call2_452573 = tail call %struct.Memory* @sub_42dd50.UnifiedOneForthPix(%struct.State* nonnull %0, i64 %931, %struct.Memory* %MEMORY.1)
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -8
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 4
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %937 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RAX.i175, align 8
  %942 = add i64 %941, 48
  %943 = add i64 %938, 8
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RAX.i175, align 8
  %946 = add i64 %945, 4
  %947 = add i64 %938, 11
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RCX.i586, align 8
  %951 = add i64 %938, 15
  store i64 %951, i64* %3, align 8
  %952 = load i64, i64* %940, align 8
  store i64 %952, i64* %RAX.i175, align 8
  %953 = add i64 %952, 56
  %954 = add i64 %938, 19
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RAX.i175, align 8
  %957 = add i64 %956, 4
  %958 = add i64 %938, 22
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sub i32 %949, %960
  %962 = icmp ult i32 %949, %960
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %12, align 1
  %964 = and i32 %961, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %13, align 1
  %969 = xor i32 %960, %949
  %970 = xor i32 %969, %961
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %14, align 1
  %974 = icmp eq i32 %961, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %15, align 1
  %976 = lshr i32 %961, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %16, align 1
  %978 = lshr i32 %949, 31
  %979 = lshr i32 %960, 31
  %980 = xor i32 %979, %978
  %981 = xor i32 %976, %978
  %982 = add nuw nsw i32 %981, %980
  %983 = icmp eq i32 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %17, align 1
  %985 = icmp ne i8 %977, 0
  %986 = xor i1 %985, %983
  %.v277 = select i1 %986, i64 28, i64 47
  %987 = add i64 %938, %.v277
  %988 = add i64 %987, 4
  store i64 %988, i64* %3, align 8
  %989 = load i64, i64* %940, align 8
  store i64 %989, i64* %RAX.i175, align 8
  br i1 %986, label %block_452594, label %block_.L_4525a7

block_452594:                                     ; preds = %block_.L_45256b
  %990 = add i64 %989, 48
  %991 = add i64 %987, 8
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RAX.i175, align 8
  %994 = add i64 %993, 4
  %995 = add i64 %987, 11
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = zext i32 %997 to i64
  store i64 %998, i64* %RCX.i586, align 8
  %999 = add i64 %936, -84
  %1000 = add i64 %987, 14
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  store i32 %997, i32* %1001, align 4
  %1002 = load i64, i64* %3, align 8
  %1003 = add i64 %1002, 19
  store i64 %1003, i64* %3, align 8
  br label %block_.L_4525b5

block_.L_4525a7:                                  ; preds = %block_.L_45256b
  %1004 = add i64 %989, 56
  %1005 = add i64 %987, 8
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i64*
  %1007 = load i64, i64* %1006, align 8
  store i64 %1007, i64* %RAX.i175, align 8
  %1008 = add i64 %1007, 4
  %1009 = add i64 %987, 11
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RCX.i586, align 8
  %1013 = add i64 %936, -84
  %1014 = add i64 %987, 14
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  store i32 %1011, i32* %1015, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_4525b5

block_.L_4525b5:                                  ; preds = %block_.L_4525a7, %block_452594
  %1016 = phi i64 [ %.pre153, %block_.L_4525a7 ], [ %1003, %block_452594 ]
  %1017 = load i64, i64* %RBP.i, align 8
  %1018 = add i64 %1017, -84
  %1019 = add i64 %1016, 3
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RAX.i175, align 8
  store i64 0, i64* %RCX.i586, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %CL.i2729 = bitcast %union.anon* %46 to i8*
  %DL.i2730 = bitcast %union.anon* %74 to i8*
  store i8 0, i8* %DL.i2730, align 1
  %1023 = add i64 %1017, -8
  %1024 = add i64 %1016, 11
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  store i64 %1026, i64* %RSI.i480, align 8
  %1027 = add i64 %1026, 40
  %1028 = add i64 %1016, 15
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RSI.i480, align 8
  %1031 = add i64 %1030, 16
  %1032 = add i64 %1016, 18
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  store i32 %1021, i32* %1033, align 4
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -8
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 4
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1035 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %RSI.i480, align 8
  %1040 = add i64 %1039, 40
  %1041 = add i64 %1036, 8
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i64*
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %RSI.i480, align 8
  %1044 = add i64 %1043, 4
  %1045 = load i32, i32* %EAX.i174, align 4
  %1046 = add i64 %1036, 11
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1044 to i32*
  store i32 %1045, i32* %1047, align 4
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -8
  %1050 = load i64, i64* %3, align 8
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1049 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %RSI.i480, align 8
  %1054 = add i64 %1053, 36
  %1055 = load i32, i32* %EAX.i174, align 4
  %1056 = add i64 %1050, 7
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1054 to i32*
  store i32 %1055, i32* %1057, align 4
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -8
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, 4
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1059 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RSI.i480, align 8
  %1064 = add i64 %1063, 48
  %1065 = add i64 %1060, 8
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i64*
  %1067 = load i64, i64* %1066, align 8
  store i64 %1067, i64* %RSI.i480, align 8
  %1068 = add i64 %1067, 4
  %1069 = add i64 %1060, 11
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %RAX.i175, align 8
  %1073 = add i64 %1060, 15
  store i64 %1073, i64* %3, align 8
  %1074 = load i64, i64* %1062, align 8
  store i64 %1074, i64* %RSI.i480, align 8
  %1075 = add i64 %1074, 40
  %1076 = add i64 %1060, 19
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i64*
  %1078 = load i64, i64* %1077, align 8
  store i64 %1078, i64* %RSI.i480, align 8
  %1079 = add i64 %1078, 8
  %1080 = add i64 %1060, 22
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  store i32 %1071, i32* %1081, align 4
  %1082 = load i64, i64* %RBP.i, align 8
  %1083 = add i64 %1082, -8
  %1084 = load i64, i64* %3, align 8
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1083 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RSI.i480, align 8
  %1088 = add i64 %1087, 40
  %1089 = add i64 %1084, 8
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i64*
  %1091 = load i64, i64* %1090, align 8
  store i64 %1091, i64* %RSI.i480, align 8
  %1092 = add i64 %1091, 16
  %1093 = load i32, i32* %EAX.i174, align 4
  %1094 = add i64 %1084, 11
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1092 to i32*
  store i32 %1093, i32* %1095, align 4
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -8
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 4
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RSI.i480, align 8
  %1102 = add i64 %1101, 56
  %1103 = add i64 %1098, 8
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %RSI.i480, align 8
  %1106 = add i64 %1105, 8
  %1107 = load i32, i32* %EAX.i174, align 4
  %1108 = add i64 %1098, 11
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1106 to i32*
  store i32 %1107, i32* %1109, align 4
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -8
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %RSI.i480, align 8
  %1116 = add i64 %1115, 48
  %1117 = add i64 %1112, 8
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RSI.i480, align 8
  %1120 = add i64 %1119, 16
  %1121 = load i32, i32* %EAX.i174, align 4
  %1122 = add i64 %1112, 11
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1120 to i32*
  store i32 %1121, i32* %1123, align 4
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -8
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1125 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RSI.i480, align 8
  %1130 = add i64 %1129, 56
  %1131 = add i64 %1126, 8
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  store i64 %1133, i64* %RSI.i480, align 8
  %1134 = add i64 %1133, 16
  %1135 = load i32, i32* %EAX.i174, align 4
  %1136 = add i64 %1126, 11
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1134 to i32*
  store i32 %1135, i32* %1137, align 4
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -8
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1139 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RSI.i480, align 8
  %1144 = add i64 %1143, 56
  %1145 = add i64 %1140, 8
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RSI.i480, align 8
  %1148 = add i64 %1147, 4
  %1149 = add i64 %1140, 11
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = zext i32 %1151 to i64
  store i64 %1152, i64* %RAX.i175, align 8
  %1153 = add i64 %1140, 15
  store i64 %1153, i64* %3, align 8
  %1154 = load i64, i64* %1142, align 8
  store i64 %1154, i64* %RSI.i480, align 8
  %1155 = add i64 %1154, 48
  %1156 = add i64 %1140, 19
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  store i64 %1158, i64* %RSI.i480, align 8
  %1159 = add i64 %1158, 12
  %1160 = add i64 %1140, 22
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  store i32 %1151, i32* %1161, align 4
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -8
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1163 to i64*
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %RSI.i480, align 8
  %1168 = add i64 %1167, 56
  %1169 = add i64 %1164, 8
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RSI.i480, align 8
  %1172 = add i64 %1171, 4
  %1173 = add i64 %1164, 11
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX.i175, align 8
  %1177 = add i64 %1164, 15
  store i64 %1177, i64* %3, align 8
  %1178 = load i64, i64* %1166, align 8
  store i64 %1178, i64* %RSI.i480, align 8
  %1179 = add i64 %1178, 40
  %1180 = add i64 %1164, 19
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %RSI.i480, align 8
  %1183 = add i64 %1182, 12
  %1184 = add i64 %1164, 22
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  store i32 %1175, i32* %1185, align 4
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -8
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, 4
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i64*
  %1191 = load i64, i64* %1190, align 8
  store i64 %1191, i64* %RSI.i480, align 8
  %1192 = add i64 %1191, 48
  %1193 = add i64 %1188, 8
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RSI.i480, align 8
  %1196 = add i64 %1195, 6380
  %1197 = add i64 %1188, 15
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  store i8 0, i8* %12, align 1
  %1200 = and i32 %1199, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1205 = icmp eq i32 %1199, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %15, align 1
  %1207 = lshr i32 %1199, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1209 = add i64 %1186, -85
  %1210 = load i8, i8* %DL.i2730, align 1
  %1211 = add i64 %1188, 18
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1209 to i8*
  store i8 %1210, i8* %1212, align 1
  %1213 = load i64, i64* %3, align 8
  %1214 = load i8, i8* %15, align 1
  %1215 = icmp ne i8 %1214, 0
  %.v306 = select i1 %1215, i64 27, i64 6
  %1216 = add i64 %1213, %.v306
  store i64 %1216, i64* %3, align 8
  %cmpBr_452659 = icmp eq i8 %1214, 1
  br i1 %cmpBr_452659, label %block_.L_452674, label %block_45265f

block_45265f:                                     ; preds = %block_.L_4525b5
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -8
  %1219 = add i64 %1216, 4
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %RAX.i175, align 8
  %1222 = add i64 %1221, 56
  %1223 = add i64 %1216, 8
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %RAX.i175, align 8
  %1226 = add i64 %1225, 6380
  %1227 = add i64 %1216, 15
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  store i8 0, i8* %12, align 1
  %1230 = and i32 %1229, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1235 = icmp eq i32 %1229, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %15, align 1
  %1237 = lshr i32 %1229, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1239 = xor i1 %1235, true
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %CL.i2729, align 1
  %1241 = add i64 %1217, -85
  %1242 = add i64 %1216, 21
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i8*
  store i8 %1240, i8* %1243, align 1
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_452674

block_.L_452674:                                  ; preds = %block_45265f, %block_.L_4525b5
  %1244 = phi i64 [ %.pre154, %block_45265f ], [ %1216, %block_.L_4525b5 ]
  %AL.i2601 = bitcast %union.anon* %18 to i8*
  %1245 = load i64, i64* %RBP.i, align 8
  %1246 = add i64 %1245, -85
  %1247 = add i64 %1244, 3
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i8*
  %1249 = load i8, i8* %1248, align 1
  store i8 0, i8* %DL.i2730, align 1
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %AL.i2601, align 1
  store i8 0, i8* %12, align 1
  %1251 = zext i8 %1250 to i32
  %1252 = tail call i32 @llvm.ctpop.i32(i32 %1251)
  %1253 = trunc i32 %1252 to i8
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %13, align 1
  %1255 = xor i8 %1250, 1
  store i8 %1255, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1256 = zext i8 %1250 to i64
  store i64 %1256, i64* %RCX.i586, align 8
  %1257 = add i64 %1245, -8
  %1258 = add i64 %1244, 16
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RSI.i480, align 8
  %1261 = add i64 %1260, 40
  %1262 = add i64 %1244, 20
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i64*
  %1264 = load i64, i64* %1263, align 8
  store i64 %1264, i64* %RSI.i480, align 8
  %1265 = add i64 %1264, 6380
  %1266 = zext i8 %1250 to i32
  %1267 = add i64 %1244, 26
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1265 to i32*
  store i32 %1266, i32* %1268, align 4
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -8
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 4
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1270 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RSI.i480, align 8
  %1275 = add i64 %1274, 48
  %1276 = add i64 %1271, 8
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %RSI.i480, align 8
  %1279 = add i64 %1278, 6376
  %1280 = add i64 %1271, 15
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  store i8 0, i8* %12, align 1
  %1283 = and i32 %1282, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283)
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1288 = icmp eq i32 %1282, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %15, align 1
  %1290 = lshr i32 %1282, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1292 = add i64 %1269, -86
  %1293 = load i8, i8* %DL.i2730, align 1
  %1294 = add i64 %1271, 18
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1292 to i8*
  store i8 %1293, i8* %1295, align 1
  %1296 = load i64, i64* %3, align 8
  %1297 = load i8, i8* %15, align 1
  %1298 = icmp ne i8 %1297, 0
  %.v307 = select i1 %1298, i64 27, i64 6
  %1299 = add i64 %1296, %.v307
  store i64 %1299, i64* %3, align 8
  %cmpBr_4526a0 = icmp eq i8 %1297, 1
  br i1 %cmpBr_4526a0, label %block_.L_4526bb, label %block_4526a6

block_4526a6:                                     ; preds = %block_.L_452674
  %1300 = load i64, i64* %RBP.i, align 8
  %1301 = add i64 %1300, -8
  %1302 = add i64 %1299, 4
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i64*
  %1304 = load i64, i64* %1303, align 8
  store i64 %1304, i64* %RAX.i175, align 8
  %1305 = add i64 %1304, 56
  %1306 = add i64 %1299, 8
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i64*
  %1308 = load i64, i64* %1307, align 8
  store i64 %1308, i64* %RAX.i175, align 8
  %1309 = add i64 %1308, 6376
  %1310 = add i64 %1299, 15
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  store i8 0, i8* %12, align 1
  %1313 = and i32 %1312, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1318 = icmp eq i32 %1312, 0
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %15, align 1
  %1320 = lshr i32 %1312, 31
  %1321 = trunc i32 %1320 to i8
  store i8 %1321, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1322 = xor i1 %1318, true
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %CL.i2729, align 1
  %1324 = add i64 %1300, -86
  %1325 = add i64 %1299, 21
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i8*
  store i8 %1323, i8* %1326, align 1
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_4526bb

block_.L_4526bb:                                  ; preds = %block_4526a6, %block_.L_452674
  %1327 = phi i64 [ %.pre155, %block_4526a6 ], [ %1299, %block_.L_452674 ]
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -86
  %1330 = add i64 %1327, 3
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i8*
  %1332 = load i8, i8* %1331, align 1
  %1333 = and i8 %1332, 1
  store i8 %1333, i8* %AL.i2601, align 1
  store i8 0, i8* %12, align 1
  %1334 = zext i8 %1333 to i32
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %13, align 1
  %1338 = xor i8 %1333, 1
  store i8 %1338, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1339 = zext i8 %1333 to i64
  store i64 %1339, i64* %RCX.i586, align 8
  %1340 = add i64 %1328, -8
  %1341 = add i64 %1327, 12
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i64*
  %1343 = load i64, i64* %1342, align 8
  store i64 %1343, i64* %RDX.i756, align 8
  %1344 = add i64 %1343, 40
  %1345 = add i64 %1327, 16
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i64*
  %1347 = load i64, i64* %1346, align 8
  store i64 %1347, i64* %RDX.i756, align 8
  %1348 = add i64 %1347, 6376
  %1349 = zext i8 %1333 to i32
  %1350 = add i64 %1327, 22
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1348 to i32*
  store i32 %1349, i32* %1351, align 4
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -8
  %1354 = load i64, i64* %3, align 8
  %1355 = add i64 %1354, 4
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1353 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RDX.i756, align 8
  %1358 = add i64 %1357, 40
  %1359 = add i64 %1354, 8
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RDX.i756, align 8
  %1362 = add i64 %1361, 6376
  %1363 = add i64 %1354, 15
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  store i8 0, i8* %12, align 1
  %1366 = and i32 %1365, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1371 = icmp eq i32 %1365, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %15, align 1
  %1373 = lshr i32 %1365, 31
  %1374 = trunc i32 %1373 to i8
  store i8 %1374, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v279 = select i1 %1371, i64 42, i64 21
  %1375 = add i64 %1354, %.v279
  store i64 %1375, i64* %3, align 8
  br i1 %1371, label %block_.L_4526fb, label %block_4526e6

block_4526e6:                                     ; preds = %block_.L_4526bb
  %1376 = add i64 %1375, 4
  store i64 %1376, i64* %3, align 8
  %1377 = load i64, i64* %1356, align 8
  store i64 %1377, i64* %RAX.i175, align 8
  %1378 = add i64 %1377, 28
  %1379 = add i64 %1375, 7
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RCX.i586, align 8
  %1383 = add i64 %1375, 11
  store i64 %1383, i64* %3, align 8
  %1384 = load i64, i64* %1356, align 8
  store i64 %1384, i64* %RAX.i175, align 8
  %1385 = add i64 %1384, 40
  %1386 = add i64 %1375, 15
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RAX.i175, align 8
  %1389 = add i64 %1388, 6372
  %1390 = add i64 %1375, 21
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  store i32 %1381, i32* %1391, align 4
  %.pre156 = load i64, i64* %RBP.i, align 8
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_4526fb

block_.L_4526fb:                                  ; preds = %block_4526e6, %block_.L_4526bb
  %1392 = phi i64 [ %.pre157, %block_4526e6 ], [ %1375, %block_.L_4526bb ]
  %1393 = phi i64 [ %.pre156, %block_4526e6 ], [ %1352, %block_.L_4526bb ]
  %1394 = add i64 %1393, -8
  %1395 = add i64 %1392, 4
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RAX.i175, align 8
  %1398 = add i64 %1397, 48
  %1399 = add i64 %1392, 8
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i64*
  %1401 = load i64, i64* %1400, align 8
  store i64 %1401, i64* %RAX.i175, align 8
  %1402 = add i64 %1392, 12
  store i64 %1402, i64* %3, align 8
  %1403 = load i64, i64* %1396, align 8
  store i64 %1403, i64* %RCX.i586, align 8
  %1404 = add i64 %1403, 40
  %1405 = add i64 %1392, 16
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RCX.i586, align 8
  %1408 = add i64 %1407, 6528
  %1409 = add i64 %1392, 23
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i64*
  store i64 %1401, i64* %1410, align 8
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -8
  %1413 = load i64, i64* %3, align 8
  %1414 = add i64 %1413, 4
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1412 to i64*
  %1416 = load i64, i64* %1415, align 8
  store i64 %1416, i64* %RAX.i175, align 8
  %1417 = add i64 %1416, 56
  %1418 = add i64 %1413, 8
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i64*
  %1420 = load i64, i64* %1419, align 8
  store i64 %1420, i64* %RAX.i175, align 8
  %1421 = add i64 %1413, 12
  store i64 %1421, i64* %3, align 8
  %1422 = load i64, i64* %1415, align 8
  store i64 %1422, i64* %RCX.i586, align 8
  %1423 = add i64 %1422, 40
  %1424 = add i64 %1413, 16
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %RCX.i586, align 8
  %1427 = add i64 %1426, 6536
  %1428 = add i64 %1413, 23
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  store i64 %1420, i64* %1429, align 8
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -8
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1431 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RAX.i175, align 8
  %1436 = add i64 %1435, 40
  %1437 = add i64 %1432, 8
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i64*
  %1439 = load i64, i64* %1438, align 8
  store i64 %1439, i64* %RAX.i175, align 8
  %1440 = add i64 %1439, 6412
  %1441 = add i64 %1432, 18
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  store i32 0, i32* %1442, align 4
  %1443 = load i64, i64* %RBP.i, align 8
  %1444 = add i64 %1443, -8
  %1445 = load i64, i64* %3, align 8
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1444 to i64*
  %1448 = load i64, i64* %1447, align 8
  store i64 %1448, i64* %RAX.i175, align 8
  %1449 = add i64 %1448, 48
  %1450 = add i64 %1445, 8
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i64*
  %1452 = load i64, i64* %1451, align 8
  store i64 %1452, i64* %RAX.i175, align 8
  %1453 = add i64 %1452, 6552
  %1454 = add i64 %1445, 14
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = zext i32 %1456 to i64
  store i64 %1457, i64* %RDX.i756, align 8
  %1458 = add i64 %1445, 18
  store i64 %1458, i64* %3, align 8
  %1459 = load i64, i64* %1447, align 8
  store i64 %1459, i64* %RAX.i175, align 8
  %1460 = add i64 %1459, 40
  %1461 = add i64 %1445, 22
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i64*
  %1463 = load i64, i64* %1462, align 8
  store i64 %1463, i64* %RAX.i175, align 8
  %1464 = add i64 %1463, 6552
  %1465 = add i64 %1445, 28
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  store i32 %1456, i32* %1466, align 4
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -8
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, 4
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1468 to i64*
  %1472 = load i64, i64* %1471, align 8
  store i64 %1472, i64* %RAX.i175, align 8
  %1473 = add i64 %1472, 48
  %1474 = add i64 %1469, 8
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i64*
  %1476 = load i64, i64* %1475, align 8
  store i64 %1476, i64* %RAX.i175, align 8
  %1477 = add i64 %1476, 6560
  %1478 = add i64 %1469, 14
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RDX.i756, align 8
  %1482 = add i64 %1469, 18
  store i64 %1482, i64* %3, align 8
  %1483 = load i64, i64* %1471, align 8
  store i64 %1483, i64* %RAX.i175, align 8
  %1484 = add i64 %1483, 40
  %1485 = add i64 %1469, 22
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i64*
  %1487 = load i64, i64* %1486, align 8
  store i64 %1487, i64* %RAX.i175, align 8
  %1488 = add i64 %1487, 6560
  %1489 = add i64 %1469, 28
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  store i32 %1480, i32* %1490, align 4
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -8
  %1493 = load i64, i64* %3, align 8
  %1494 = add i64 %1493, 4
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1492 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RAX.i175, align 8
  %1497 = add i64 %1496, 40
  %1498 = add i64 %1493, 8
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %RAX.i175, align 8
  %1501 = add i64 %1500, 6560
  %1502 = add i64 %1493, 15
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  store i8 0, i8* %12, align 1
  %1505 = and i32 %1504, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1510 = icmp eq i32 %1504, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %15, align 1
  %1512 = lshr i32 %1504, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v280 = select i1 %1510, i64 133, i64 21
  %1514 = add i64 %1493, %.v280
  store i64 %1514, i64* %3, align 8
  br i1 %1510, label %block_.L_4527f8, label %block_452788

block_452788:                                     ; preds = %block_.L_4526fb
  %1515 = add i64 %1514, 4
  store i64 %1515, i64* %3, align 8
  %1516 = load i64, i64* %1495, align 8
  store i64 %1516, i64* %RAX.i175, align 8
  %1517 = add i64 %1516, 48
  %1518 = add i64 %1514, 8
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i64*
  %1520 = load i64, i64* %1519, align 8
  store i64 %1520, i64* %RAX.i175, align 8
  %1521 = add i64 %1520, 6572
  %1522 = add i64 %1514, 14
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RCX.i586, align 8
  %1526 = add i64 %1514, 18
  store i64 %1526, i64* %3, align 8
  %1527 = load i64, i64* %1495, align 8
  store i64 %1527, i64* %RAX.i175, align 8
  %1528 = add i64 %1527, 40
  %1529 = add i64 %1514, 22
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i64*
  %1531 = load i64, i64* %1530, align 8
  store i64 %1531, i64* %RAX.i175, align 8
  %1532 = add i64 %1531, 6572
  %1533 = add i64 %1514, 28
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i32*
  store i32 %1524, i32* %1534, align 4
  %1535 = load i64, i64* %RBP.i, align 8
  %1536 = add i64 %1535, -8
  %1537 = load i64, i64* %3, align 8
  %1538 = add i64 %1537, 4
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1536 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX.i175, align 8
  %1541 = add i64 %1540, 48
  %1542 = add i64 %1537, 8
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i64*
  %1544 = load i64, i64* %1543, align 8
  store i64 %1544, i64* %RAX.i175, align 8
  %1545 = add i64 %1544, 6576
  %1546 = add i64 %1537, 14
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i586, align 8
  %1550 = add i64 %1537, 18
  store i64 %1550, i64* %3, align 8
  %1551 = load i64, i64* %1539, align 8
  store i64 %1551, i64* %RAX.i175, align 8
  %1552 = add i64 %1551, 40
  %1553 = add i64 %1537, 22
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i64*
  %1555 = load i64, i64* %1554, align 8
  store i64 %1555, i64* %RAX.i175, align 8
  %1556 = add i64 %1555, 6576
  %1557 = add i64 %1537, 28
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  store i32 %1548, i32* %1558, align 4
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -8
  %1561 = load i64, i64* %3, align 8
  %1562 = add i64 %1561, 4
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1560 to i64*
  %1564 = load i64, i64* %1563, align 8
  store i64 %1564, i64* %RAX.i175, align 8
  %1565 = add i64 %1564, 48
  %1566 = add i64 %1561, 8
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i64*
  %1568 = load i64, i64* %1567, align 8
  store i64 %1568, i64* %RAX.i175, align 8
  %1569 = add i64 %1568, 6564
  %1570 = add i64 %1561, 14
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i586, align 8
  %1574 = add i64 %1561, 18
  store i64 %1574, i64* %3, align 8
  %1575 = load i64, i64* %1563, align 8
  store i64 %1575, i64* %RAX.i175, align 8
  %1576 = add i64 %1575, 40
  %1577 = add i64 %1561, 22
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i64*
  %1579 = load i64, i64* %1578, align 8
  store i64 %1579, i64* %RAX.i175, align 8
  %1580 = add i64 %1579, 6564
  %1581 = add i64 %1561, 28
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  store i32 %1572, i32* %1582, align 4
  %1583 = load i64, i64* %RBP.i, align 8
  %1584 = add i64 %1583, -8
  %1585 = load i64, i64* %3, align 8
  %1586 = add i64 %1585, 4
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1584 to i64*
  %1588 = load i64, i64* %1587, align 8
  store i64 %1588, i64* %RAX.i175, align 8
  %1589 = add i64 %1588, 48
  %1590 = add i64 %1585, 8
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i64*
  %1592 = load i64, i64* %1591, align 8
  store i64 %1592, i64* %RAX.i175, align 8
  %1593 = add i64 %1592, 6568
  %1594 = add i64 %1585, 14
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i32*
  %1596 = load i32, i32* %1595, align 4
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %RCX.i586, align 8
  %1598 = add i64 %1585, 18
  store i64 %1598, i64* %3, align 8
  %1599 = load i64, i64* %1587, align 8
  store i64 %1599, i64* %RAX.i175, align 8
  %1600 = add i64 %1599, 40
  %1601 = add i64 %1585, 22
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX.i175, align 8
  %1604 = add i64 %1603, 6568
  %1605 = add i64 %1585, 28
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  store i32 %1596, i32* %1606, align 4
  %.pre158 = load i64, i64* %RBP.i, align 8
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_4527f8

block_.L_4527f8:                                  ; preds = %block_452788, %block_.L_4526fb
  %1607 = phi i64 [ %.pre159, %block_452788 ], [ %1514, %block_.L_4526fb ]
  %1608 = phi i64 [ %.pre158, %block_452788 ], [ %1491, %block_.L_4526fb ]
  %1609 = add i64 %1608, -8
  %1610 = add i64 %1607, 4
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i64*
  %1612 = load i64, i64* %1611, align 8
  store i64 %1612, i64* %RAX.i175, align 8
  %1613 = add i64 %1612, 40
  %1614 = add i64 %1607, 8
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i64*
  %1616 = load i64, i64* %1615, align 8
  store i64 %1616, i64* %RAX.i175, align 8
  %1617 = add i64 %1607, 12
  store i64 %1617, i64* %3, align 8
  %1618 = load i64, i64* %1611, align 8
  store i64 %1618, i64* %RCX.i586, align 8
  %1619 = add i64 %1618, 56
  %1620 = add i64 %1607, 16
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i64*
  %1622 = load i64, i64* %1621, align 8
  store i64 %1622, i64* %RCX.i586, align 8
  %1623 = add i64 %1622, 6544
  %1624 = add i64 %1607, 23
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i64*
  store i64 %1616, i64* %1625, align 8
  %1626 = load i64, i64* %RBP.i, align 8
  %1627 = add i64 %1626, -8
  %1628 = load i64, i64* %3, align 8
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1627 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %RCX.i586, align 8
  %1632 = add i64 %1631, 48
  %1633 = add i64 %1628, 8
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %RCX.i586, align 8
  %1636 = add i64 %1635, 6544
  %1637 = load i64, i64* %RAX.i175, align 8
  %1638 = add i64 %1628, 15
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1636 to i64*
  store i64 %1637, i64* %1639, align 8
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -12
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, 7
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1641 to i32*
  store i32 0, i32* %1644, align 4
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %ESI.i2339 = bitcast %union.anon* %34 to i32*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %EDI.i2291 = bitcast %union.anon* %19 to i32*
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_452825

block_.L_452825:                                  ; preds = %block_.L_452908, %block_.L_4527f8
  %1647 = phi i64 [ %.pre160, %block_.L_4527f8 ], [ %2141, %block_.L_452908 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_452573, %block_.L_4527f8 ], [ %MEMORY.8, %block_.L_452908 ]
  store i64 2, i64* %RAX.i175, align 8
  %1648 = load i64, i64* %RBP.i, align 8
  %1649 = add i64 %1648, -12
  %1650 = add i64 %1647, 8
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  %1652 = load i32, i32* %1651, align 4
  %1653 = zext i32 %1652 to i64
  store i64 %1653, i64* %RCX.i586, align 8
  %1654 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %1655 = add i32 %1654, 1
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RDX.i756, align 8
  %1657 = icmp eq i32 %1654, -1
  %1658 = icmp eq i32 %1655, 0
  %1659 = or i1 %1657, %1658
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %12, align 1
  %1661 = and i32 %1655, 255
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661)
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %13, align 1
  %1666 = xor i32 %1655, %1654
  %1667 = lshr i32 %1666, 4
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  store i8 %1669, i8* %14, align 1
  %1670 = zext i1 %1658 to i8
  store i8 %1670, i8* %15, align 1
  %1671 = lshr i32 %1655, 31
  %1672 = trunc i32 %1671 to i8
  store i8 %1672, i8* %16, align 1
  %1673 = lshr i32 %1654, 31
  %1674 = xor i32 %1671, %1673
  %1675 = add nuw nsw i32 %1674, %1671
  %1676 = icmp eq i32 %1675, 2
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %17, align 1
  %1678 = add i64 %1648, -92
  %1679 = add i64 %1647, 21
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  store i32 2, i32* %1680, align 4
  %1681 = load i32, i32* %EDX.i1016, align 4
  %1682 = zext i32 %1681 to i64
  %1683 = load i64, i64* %3, align 8
  store i64 %1682, i64* %RAX.i175, align 8
  %1684 = sext i32 %1681 to i64
  %1685 = lshr i64 %1684, 32
  store i64 %1685, i64* %1645, align 8
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -92
  %1688 = add i64 %1683, 6
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RSI.i480, align 8
  %1692 = add i64 %1683, 8
  store i64 %1692, i64* %3, align 8
  %1693 = sext i32 %1690 to i64
  %1694 = shl nuw i64 %1685, 32
  %1695 = or i64 %1694, %1682
  %1696 = sdiv i64 %1695, %1693
  %1697 = shl i64 %1696, 32
  %1698 = ashr exact i64 %1697, 32
  %1699 = icmp eq i64 %1696, %1698
  br i1 %1699, label %1702, label %1700

; <label>:1700:                                   ; preds = %block_.L_452825
  %1701 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1692, %struct.Memory* %MEMORY.7)
  %.pre161 = load i32, i32* %EAX.i174, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit2340

; <label>:1702:                                   ; preds = %block_.L_452825
  %1703 = srem i64 %1695, %1693
  %1704 = and i64 %1696, 4294967295
  store i64 %1704, i64* %RAX.i175, align 8
  %1705 = and i64 %1703, 4294967295
  store i64 %1705, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1706 = trunc i64 %1696 to i32
  br label %routine_idivl__esi.exit2340

routine_idivl__esi.exit2340:                      ; preds = %1702, %1700
  %1707 = phi i64 [ %.pre162, %1700 ], [ %1692, %1702 ]
  %1708 = phi i32 [ %.pre161, %1700 ], [ %1706, %1702 ]
  %1709 = phi %struct.Memory* [ %1701, %1700 ], [ %MEMORY.7, %1702 ]
  %1710 = load i32, i32* %ECX.i1102, align 4
  %1711 = sub i32 %1710, %1708
  %1712 = icmp ult i32 %1710, %1708
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %12, align 1
  %1714 = and i32 %1711, 255
  %1715 = tail call i32 @llvm.ctpop.i32(i32 %1714)
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  store i8 %1718, i8* %13, align 1
  %1719 = xor i32 %1708, %1710
  %1720 = xor i32 %1719, %1711
  %1721 = lshr i32 %1720, 4
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  store i8 %1723, i8* %14, align 1
  %1724 = icmp eq i32 %1711, 0
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %15, align 1
  %1726 = lshr i32 %1711, 31
  %1727 = trunc i32 %1726 to i8
  store i8 %1727, i8* %16, align 1
  %1728 = lshr i32 %1710, 31
  %1729 = lshr i32 %1708, 31
  %1730 = xor i32 %1729, %1728
  %1731 = xor i32 %1726, %1728
  %1732 = add nuw nsw i32 %1731, %1730
  %1733 = icmp eq i32 %1732, 2
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %17, align 1
  %1735 = icmp ne i8 %1727, 0
  %1736 = xor i1 %1735, %1733
  %.v281 = select i1 %1736, i64 8, i64 236
  %1737 = add i64 %1707, %.v281
  store i64 %1737, i64* %3, align 8
  br i1 %1736, label %block_45284a, label %block_.L_45292e

block_45284a:                                     ; preds = %routine_idivl__esi.exit2340
  store i64 2, i64* %RAX.i175, align 8
  store i64 2, i64* %RCX.i586, align 8
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -8
  %1740 = add i64 %1737, 11
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i64*
  %1742 = load i64, i64* %1741, align 8
  store i64 %1742, i64* %RDX.i756, align 8
  %1743 = add i64 %1742, 48
  %1744 = add i64 %1737, 15
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RDX.i756, align 8
  %1747 = add i64 %1738, -12
  %1748 = add i64 %1737, 18
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = shl i32 %1750, 1
  %1752 = icmp slt i32 %1750, 0
  %1753 = icmp slt i32 %1751, 0
  %1754 = xor i1 %1752, %1753
  %1755 = zext i32 %1751 to i64
  store i64 %1755, i64* %RAX.i175, align 8
  %.lobit38 = lshr i32 %1750, 31
  %1756 = trunc i32 %.lobit38 to i8
  store i8 %1756, i8* %12, align 1
  %1757 = and i32 %1751, 254
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1762 = icmp eq i32 %1751, 0
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %15, align 1
  %1764 = lshr i32 %1750, 30
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  store i8 %1766, i8* %16, align 1
  %1767 = zext i1 %1754 to i8
  store i8 %1767, i8* %17, align 1
  %1768 = sext i32 %1751 to i64
  store i64 %1768, i64* %RSI.i480, align 8
  %1769 = shl nsw i64 %1768, 3
  %1770 = add nsw i64 %1769, 288
  %1771 = add i64 %1770, %1746
  %1772 = add i64 %1737, 31
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %RAX.i175, align 8
  %1775 = ashr i64 %1774, 63
  store i64 %1775, i64* %1645, align 8
  %1776 = add i64 %1737, 36
  store i64 %1776, i64* %3, align 8
  %1777 = zext i64 %1775 to i128
  %1778 = shl nuw i128 %1777, 64
  %1779 = zext i64 %1774 to i128
  %1780 = or i128 %1778, %1779
  %1781 = sdiv i128 %1780, 2
  %1782 = trunc i128 %1781 to i64
  %1783 = and i128 %1781, 18446744073709551615
  %1784 = sext i64 %1782 to i128
  %1785 = and i128 %1784, -18446744073709551616
  %1786 = or i128 %1785, %1783
  %1787 = icmp eq i128 %1781, %1786
  br i1 %1787, label %1790, label %1788

; <label>:1788:                                   ; preds = %block_45284a
  %1789 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1776, %struct.Memory* %1709)
  %.pre264 = load i64, i64* %RAX.i175, align 8
  %.pre265 = load i64, i64* %3, align 8
  %.pre266 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rcx.exit2307

; <label>:1790:                                   ; preds = %block_45284a
  %1791 = srem i128 %1780, 2
  %1792 = trunc i128 %1791 to i64
  store i64 %1782, i64* %1646, align 8
  store i64 %1792, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2307

routine_idivq__rcx.exit2307:                      ; preds = %1790, %1788
  %1793 = phi i64 [ %.pre266, %1788 ], [ %1738, %1790 ]
  %1794 = phi i64 [ %.pre265, %1788 ], [ %1776, %1790 ]
  %1795 = phi i64 [ %.pre264, %1788 ], [ %1782, %1790 ]
  %1796 = phi %struct.Memory* [ %1789, %1788 ], [ %1709, %1790 ]
  %1797 = shl i64 %1795, 1
  %1798 = icmp slt i64 %1795, 0
  %1799 = icmp slt i64 %1797, 0
  %1800 = xor i1 %1798, %1799
  store i64 %1797, i64* %RAX.i175, align 8
  %.lobit39 = lshr i64 %1795, 63
  %1801 = trunc i64 %.lobit39 to i8
  store i8 %1801, i8* %12, align 1
  %1802 = trunc i64 %1797 to i32
  %1803 = and i32 %1802, 254
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1808 = icmp eq i64 %1797, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %15, align 1
  %1810 = lshr i64 %1795, 62
  %1811 = trunc i64 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %16, align 1
  %1813 = zext i1 %1800 to i8
  store i8 %1813, i8* %17, align 1
  %1814 = add i64 %1793, -8
  %1815 = add i64 %1794, 7
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %RSI.i480, align 8
  %1818 = add i64 %1817, 56
  %1819 = add i64 %1794, 11
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %RSI.i480, align 8
  %1822 = add i64 %1793, -12
  %1823 = add i64 %1794, 14
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = shl i32 %1825, 1
  %1827 = icmp slt i32 %1825, 0
  %1828 = icmp slt i32 %1826, 0
  %1829 = xor i1 %1827, %1828
  %1830 = zext i32 %1826 to i64
  store i64 %1830, i64* %RDI.i190, align 8
  %.lobit40 = lshr i32 %1825, 31
  %1831 = trunc i32 %.lobit40 to i8
  store i8 %1831, i8* %12, align 1
  %1832 = and i32 %1826, 254
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1837 = icmp eq i32 %1826, 0
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %15, align 1
  %1839 = lshr i32 %1825, 30
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %16, align 1
  %1842 = zext i1 %1829 to i8
  store i8 %1842, i8* %17, align 1
  %1843 = sext i32 %1826 to i64
  store i64 %1843, i64* %86, align 8
  %1844 = shl nsw i64 %1843, 3
  %1845 = add nsw i64 %1844, 288
  %1846 = add i64 %1845, %1821
  %1847 = add i64 %1794, 27
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %RSI.i480, align 8
  %1850 = add i64 %1793, -104
  %1851 = add i64 %1794, 31
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i64*
  store i64 %1797, i64* %1852, align 8
  %1853 = load i64, i64* %RSI.i480, align 8
  %1854 = load i64, i64* %3, align 8
  store i64 %1853, i64* %RAX.i175, align 8
  %1855 = ashr i64 %1853, 63
  store i64 %1855, i64* %1645, align 8
  %1856 = load i64, i64* %RCX.i586, align 8
  %1857 = add i64 %1854, 8
  store i64 %1857, i64* %3, align 8
  %1858 = sext i64 %1856 to i128
  %1859 = and i128 %1858, -18446744073709551616
  %1860 = zext i64 %1855 to i128
  %1861 = shl nuw i128 %1860, 64
  %1862 = zext i64 %1853 to i128
  %1863 = or i128 %1861, %1862
  %1864 = zext i64 %1856 to i128
  %1865 = or i128 %1859, %1864
  %1866 = sdiv i128 %1863, %1865
  %1867 = trunc i128 %1866 to i64
  %1868 = and i128 %1866, 18446744073709551615
  %1869 = sext i64 %1867 to i128
  %1870 = and i128 %1869, -18446744073709551616
  %1871 = or i128 %1870, %1868
  %1872 = icmp eq i128 %1866, %1871
  br i1 %1872, label %1875, label %1873

; <label>:1873:                                   ; preds = %routine_idivq__rcx.exit2307
  %1874 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1857, %struct.Memory* %1796)
  %.pre267 = load i64, i64* %RAX.i175, align 8
  %.pre268 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit2276

; <label>:1875:                                   ; preds = %routine_idivq__rcx.exit2307
  %1876 = srem i128 %1863, %1865
  %1877 = trunc i128 %1876 to i64
  store i64 %1867, i64* %1646, align 8
  store i64 %1877, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2276

routine_idivq__rcx.exit2276:                      ; preds = %1875, %1873
  %1878 = phi i64 [ %.pre268, %1873 ], [ %1857, %1875 ]
  %1879 = phi i64 [ %.pre267, %1873 ], [ %1867, %1875 ]
  %1880 = phi %struct.Memory* [ %1874, %1873 ], [ %1796, %1875 ]
  %1881 = shl i64 %1879, 1
  %1882 = icmp slt i64 %1879, 0
  %1883 = icmp slt i64 %1881, 0
  %1884 = xor i1 %1882, %1883
  store i64 %1881, i64* %RAX.i175, align 8
  %.lobit41 = lshr i64 %1879, 63
  %1885 = trunc i64 %.lobit41 to i8
  store i8 %1885, i8* %12, align 1
  %1886 = trunc i64 %1881 to i32
  %1887 = and i32 %1886, 254
  %1888 = tail call i32 @llvm.ctpop.i32(i32 %1887)
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  store i8 %1891, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1892 = icmp eq i64 %1881, 0
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %15, align 1
  %1894 = lshr i64 %1879, 62
  %1895 = trunc i64 %1894 to i8
  %1896 = and i8 %1895, 1
  store i8 %1896, i8* %16, align 1
  %1897 = zext i1 %1884 to i8
  store i8 %1897, i8* %17, align 1
  %1898 = load i64, i64* %RBP.i, align 8
  %1899 = add i64 %1898, -104
  %1900 = add i64 %1878, 7
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i64*
  %1902 = load i64, i64* %1901, align 8
  %1903 = sub i64 %1902, %1881
  %1904 = icmp ult i64 %1902, %1881
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %12, align 1
  %1906 = trunc i64 %1903 to i32
  %1907 = and i32 %1906, 255
  %1908 = tail call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  store i8 %1911, i8* %13, align 1
  %1912 = xor i64 %1881, %1902
  %1913 = xor i64 %1912, %1903
  %1914 = lshr i64 %1913, 4
  %1915 = trunc i64 %1914 to i8
  %1916 = and i8 %1915, 1
  store i8 %1916, i8* %14, align 1
  %1917 = icmp eq i64 %1903, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %15, align 1
  %1919 = lshr i64 %1903, 63
  %1920 = trunc i64 %1919 to i8
  store i8 %1920, i8* %16, align 1
  %1921 = lshr i64 %1902, 63
  %1922 = lshr i64 %1879, 62
  %1923 = and i64 %1922, 1
  %1924 = xor i64 %1923, %1921
  %1925 = xor i64 %1919, %1921
  %1926 = add nuw nsw i64 %1925, %1924
  %1927 = icmp eq i64 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %17, align 1
  %1929 = icmp ne i8 %1920, 0
  %1930 = xor i1 %1929, %1927
  %.v290 = select i1 %1930, i64 16, i64 66
  %1931 = add i64 %1878, %.v290
  store i64 2, i64* %RAX.i175, align 8
  store i64 2, i64* %RCX.i586, align 8
  %1932 = add i64 %1898, -8
  %1933 = add i64 %1931, 11
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i64*
  %1935 = load i64, i64* %1934, align 8
  store i64 %1935, i64* %RDX.i756, align 8
  br i1 %1930, label %block_4528a9, label %block_.L_4528db

block_4528a9:                                     ; preds = %routine_idivq__rcx.exit2276
  %1936 = add i64 %1935, 48
  %1937 = add i64 %1931, 15
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i64*
  %1939 = load i64, i64* %1938, align 8
  store i64 %1939, i64* %RDX.i756, align 8
  %1940 = add i64 %1898, -12
  %1941 = add i64 %1931, 18
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = shl i32 %1943, 1
  %1945 = icmp slt i32 %1943, 0
  %1946 = icmp slt i32 %1944, 0
  %1947 = xor i1 %1945, %1946
  %1948 = zext i32 %1944 to i64
  store i64 %1948, i64* %RAX.i175, align 8
  %.lobit42 = lshr i32 %1943, 31
  %1949 = trunc i32 %.lobit42 to i8
  store i8 %1949, i8* %12, align 1
  %1950 = and i32 %1944, 254
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1955 = icmp eq i32 %1944, 0
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %15, align 1
  %1957 = lshr i32 %1943, 30
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  store i8 %1959, i8* %16, align 1
  %1960 = zext i1 %1947 to i8
  store i8 %1960, i8* %17, align 1
  %1961 = sext i32 %1944 to i64
  store i64 %1961, i64* %RSI.i480, align 8
  %1962 = shl nsw i64 %1961, 3
  %1963 = add nsw i64 %1962, 288
  %1964 = add i64 %1963, %1939
  %1965 = add i64 %1931, 31
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i64*
  %1967 = load i64, i64* %1966, align 8
  store i64 %1967, i64* %RAX.i175, align 8
  %1968 = ashr i64 %1967, 63
  store i64 %1968, i64* %1645, align 8
  %1969 = add i64 %1931, 36
  store i64 %1969, i64* %3, align 8
  %1970 = zext i64 %1968 to i128
  %1971 = shl nuw i128 %1970, 64
  %1972 = zext i64 %1967 to i128
  %1973 = or i128 %1971, %1972
  %1974 = sdiv i128 %1973, 2
  %1975 = trunc i128 %1974 to i64
  %1976 = and i128 %1974, 18446744073709551615
  %1977 = sext i64 %1975 to i128
  %1978 = and i128 %1977, -18446744073709551616
  %1979 = or i128 %1978, %1976
  %1980 = icmp eq i128 %1974, %1979
  br i1 %1980, label %1983, label %1981

; <label>:1981:                                   ; preds = %block_4528a9
  %1982 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1969, %struct.Memory* %1880)
  %.pre272 = load i64, i64* %RAX.i175, align 8
  %.pre273 = load i64, i64* %3, align 8
  %.pre274 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rcx.exit2239

; <label>:1983:                                   ; preds = %block_4528a9
  %1984 = srem i128 %1973, 2
  %1985 = trunc i128 %1984 to i64
  store i64 %1975, i64* %1646, align 8
  store i64 %1985, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2239

routine_idivq__rcx.exit2239:                      ; preds = %1983, %1981
  %1986 = phi i64 [ %.pre274, %1981 ], [ %1898, %1983 ]
  %1987 = phi i64 [ %.pre273, %1981 ], [ %1969, %1983 ]
  %1988 = phi i64 [ %.pre272, %1981 ], [ %1975, %1983 ]
  %1989 = phi %struct.Memory* [ %1982, %1981 ], [ %1880, %1983 ]
  %1990 = shl i64 %1988, 1
  %1991 = icmp slt i64 %1988, 0
  %1992 = icmp slt i64 %1990, 0
  %1993 = xor i1 %1991, %1992
  store i64 %1990, i64* %RAX.i175, align 8
  %.lobit43 = lshr i64 %1988, 63
  %1994 = trunc i64 %.lobit43 to i8
  store i8 %1994, i8* %12, align 1
  %1995 = trunc i64 %1990 to i32
  %1996 = and i32 %1995, 254
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2001 = icmp eq i64 %1990, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %15, align 1
  %2003 = lshr i64 %1988, 62
  %2004 = trunc i64 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %16, align 1
  %2006 = zext i1 %1993 to i8
  store i8 %2006, i8* %17, align 1
  %2007 = add i64 %1986, -112
  %2008 = add i64 %1987, 7
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i64*
  store i64 %1990, i64* %2009, align 8
  %2010 = load i64, i64* %3, align 8
  %2011 = add i64 %2010, 50
  store i64 %2011, i64* %3, align 8
  br label %block_.L_452908

block_.L_4528db:                                  ; preds = %routine_idivq__rcx.exit2276
  %2012 = add i64 %1935, 56
  %2013 = add i64 %1931, 15
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2012 to i64*
  %2015 = load i64, i64* %2014, align 8
  store i64 %2015, i64* %RDX.i756, align 8
  %2016 = add i64 %1898, -12
  %2017 = add i64 %1931, 18
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i32*
  %2019 = load i32, i32* %2018, align 4
  %2020 = shl i32 %2019, 1
  %2021 = icmp slt i32 %2019, 0
  %2022 = icmp slt i32 %2020, 0
  %2023 = xor i1 %2021, %2022
  %2024 = zext i32 %2020 to i64
  store i64 %2024, i64* %RAX.i175, align 8
  %.lobit44 = lshr i32 %2019, 31
  %2025 = trunc i32 %.lobit44 to i8
  store i8 %2025, i8* %12, align 1
  %2026 = and i32 %2020, 254
  %2027 = tail call i32 @llvm.ctpop.i32(i32 %2026)
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = xor i8 %2029, 1
  store i8 %2030, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2031 = icmp eq i32 %2020, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %15, align 1
  %2033 = lshr i32 %2019, 30
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  store i8 %2035, i8* %16, align 1
  %2036 = zext i1 %2023 to i8
  store i8 %2036, i8* %17, align 1
  %2037 = sext i32 %2020 to i64
  store i64 %2037, i64* %RSI.i480, align 8
  %2038 = shl nsw i64 %2037, 3
  %2039 = add nsw i64 %2038, 288
  %2040 = add i64 %2039, %2015
  %2041 = add i64 %1931, 31
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i64*
  %2043 = load i64, i64* %2042, align 8
  store i64 %2043, i64* %RAX.i175, align 8
  %2044 = ashr i64 %2043, 63
  store i64 %2044, i64* %1645, align 8
  %2045 = add i64 %1931, 36
  store i64 %2045, i64* %3, align 8
  %2046 = zext i64 %2044 to i128
  %2047 = shl nuw i128 %2046, 64
  %2048 = zext i64 %2043 to i128
  %2049 = or i128 %2047, %2048
  %2050 = sdiv i128 %2049, 2
  %2051 = trunc i128 %2050 to i64
  %2052 = and i128 %2050, 18446744073709551615
  %2053 = sext i64 %2051 to i128
  %2054 = and i128 %2053, -18446744073709551616
  %2055 = or i128 %2054, %2052
  %2056 = icmp eq i128 %2050, %2055
  br i1 %2056, label %2059, label %2057

; <label>:2057:                                   ; preds = %block_.L_4528db
  %2058 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2045, %struct.Memory* %1880)
  %.pre269 = load i64, i64* %RAX.i175, align 8
  %.pre270 = load i64, i64* %3, align 8
  %.pre271 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rcx.exit2205

; <label>:2059:                                   ; preds = %block_.L_4528db
  %2060 = srem i128 %2049, 2
  %2061 = trunc i128 %2060 to i64
  store i64 %2051, i64* %1646, align 8
  store i64 %2061, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2205

routine_idivq__rcx.exit2205:                      ; preds = %2059, %2057
  %2062 = phi i64 [ %.pre271, %2057 ], [ %1898, %2059 ]
  %2063 = phi i64 [ %.pre270, %2057 ], [ %2045, %2059 ]
  %2064 = phi i64 [ %.pre269, %2057 ], [ %2051, %2059 ]
  %2065 = phi %struct.Memory* [ %2058, %2057 ], [ %1880, %2059 ]
  %2066 = shl i64 %2064, 1
  %2067 = icmp slt i64 %2064, 0
  %2068 = icmp slt i64 %2066, 0
  %2069 = xor i1 %2067, %2068
  store i64 %2066, i64* %RAX.i175, align 8
  %.lobit45 = lshr i64 %2064, 63
  %2070 = trunc i64 %.lobit45 to i8
  store i8 %2070, i8* %12, align 1
  %2071 = trunc i64 %2066 to i32
  %2072 = and i32 %2071, 254
  %2073 = tail call i32 @llvm.ctpop.i32(i32 %2072)
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  %2076 = xor i8 %2075, 1
  store i8 %2076, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2077 = icmp eq i64 %2066, 0
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %15, align 1
  %2079 = lshr i64 %2064, 62
  %2080 = trunc i64 %2079 to i8
  %2081 = and i8 %2080, 1
  store i8 %2081, i8* %16, align 1
  %2082 = zext i1 %2069 to i8
  store i8 %2082, i8* %17, align 1
  %2083 = add i64 %2062, -112
  %2084 = add i64 %2063, 7
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i64*
  store i64 %2066, i64* %2085, align 8
  %.pre275 = load i64, i64* %3, align 8
  br label %block_.L_452908

block_.L_452908:                                  ; preds = %routine_idivq__rcx.exit2205, %routine_idivq__rcx.exit2239
  %2086 = phi i64 [ %.pre275, %routine_idivq__rcx.exit2205 ], [ %2011, %routine_idivq__rcx.exit2239 ]
  %MEMORY.8 = phi %struct.Memory* [ %2065, %routine_idivq__rcx.exit2205 ], [ %1989, %routine_idivq__rcx.exit2239 ]
  %2087 = load i64, i64* %RBP.i, align 8
  %2088 = add i64 %2087, -112
  %2089 = add i64 %2086, 4
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i64*
  %2091 = load i64, i64* %2090, align 8
  store i64 %2091, i64* %RAX.i175, align 8
  %2092 = add i64 %2087, -8
  %2093 = add i64 %2086, 8
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i64*
  %2095 = load i64, i64* %2094, align 8
  store i64 %2095, i64* %RCX.i586, align 8
  %2096 = add i64 %2095, 40
  %2097 = add i64 %2086, 12
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %RCX.i586, align 8
  %2100 = add i64 %2087, -12
  %2101 = add i64 %2086, 16
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = sext i32 %2103 to i64
  store i64 %2104, i64* %RDX.i756, align 8
  %2105 = shl nsw i64 %2104, 3
  %2106 = add i64 %2099, 288
  %2107 = add i64 %2106, %2105
  %2108 = add i64 %2086, 24
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i64*
  store i64 %2091, i64* %2109, align 8
  %2110 = load i64, i64* %RBP.i, align 8
  %2111 = add i64 %2110, -12
  %2112 = load i64, i64* %3, align 8
  %2113 = add i64 %2112, 3
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2111 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = add i32 %2115, 1
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX.i175, align 8
  %2118 = icmp eq i32 %2115, -1
  %2119 = icmp eq i32 %2116, 0
  %2120 = or i1 %2118, %2119
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %12, align 1
  %2122 = and i32 %2116, 255
  %2123 = tail call i32 @llvm.ctpop.i32(i32 %2122)
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  %2126 = xor i8 %2125, 1
  store i8 %2126, i8* %13, align 1
  %2127 = xor i32 %2116, %2115
  %2128 = lshr i32 %2127, 4
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %14, align 1
  %2131 = zext i1 %2119 to i8
  store i8 %2131, i8* %15, align 1
  %2132 = lshr i32 %2116, 31
  %2133 = trunc i32 %2132 to i8
  store i8 %2133, i8* %16, align 1
  %2134 = lshr i32 %2115, 31
  %2135 = xor i32 %2132, %2134
  %2136 = add nuw nsw i32 %2135, %2132
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %17, align 1
  %2139 = add i64 %2112, 9
  store i64 %2139, i64* %3, align 8
  store i32 %2116, i32* %2114, align 4
  %2140 = load i64, i64* %3, align 8
  %2141 = add i64 %2140, -260
  store i64 %2141, i64* %3, align 8
  br label %block_.L_452825

block_.L_45292e:                                  ; preds = %routine_idivl__esi.exit2340
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -12
  %2144 = add i64 %1737, 7
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  store i32 0, i32* %2145, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_452935

block_.L_452935:                                  ; preds = %block_.L_452a12, %block_.L_45292e
  %2146 = phi i64 [ %.pre163, %block_.L_45292e ], [ %2640, %block_.L_452a12 ]
  %MEMORY.9 = phi %struct.Memory* [ %1709, %block_.L_45292e ], [ %MEMORY.10, %block_.L_452a12 ]
  store i64 2, i64* %RAX.i175, align 8
  %2147 = load i64, i64* %RBP.i, align 8
  %2148 = add i64 %2147, -12
  %2149 = add i64 %2146, 8
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RCX.i586, align 8
  %2153 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %2154 = add i32 %2153, 1
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RDX.i756, align 8
  %2156 = icmp eq i32 %2153, -1
  %2157 = icmp eq i32 %2154, 0
  %2158 = or i1 %2156, %2157
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %12, align 1
  %2160 = and i32 %2154, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %13, align 1
  %2165 = xor i32 %2154, %2153
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  store i8 %2168, i8* %14, align 1
  %2169 = zext i1 %2157 to i8
  store i8 %2169, i8* %15, align 1
  %2170 = lshr i32 %2154, 31
  %2171 = trunc i32 %2170 to i8
  store i8 %2171, i8* %16, align 1
  %2172 = lshr i32 %2153, 31
  %2173 = xor i32 %2170, %2172
  %2174 = add nuw nsw i32 %2173, %2170
  %2175 = icmp eq i32 %2174, 2
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %17, align 1
  %2177 = add i64 %2147, -116
  %2178 = add i64 %2146, 21
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  store i32 2, i32* %2179, align 4
  %2180 = load i32, i32* %EDX.i1016, align 4
  %2181 = zext i32 %2180 to i64
  %2182 = load i64, i64* %3, align 8
  store i64 %2181, i64* %RAX.i175, align 8
  %2183 = sext i32 %2180 to i64
  %2184 = lshr i64 %2183, 32
  store i64 %2184, i64* %1645, align 8
  %2185 = load i64, i64* %RBP.i, align 8
  %2186 = add i64 %2185, -116
  %2187 = add i64 %2182, 6
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RSI.i480, align 8
  %2191 = add i64 %2182, 8
  store i64 %2191, i64* %3, align 8
  %2192 = sext i32 %2189 to i64
  %2193 = shl nuw i64 %2184, 32
  %2194 = or i64 %2193, %2181
  %2195 = sdiv i64 %2194, %2192
  %2196 = shl i64 %2195, 32
  %2197 = ashr exact i64 %2196, 32
  %2198 = icmp eq i64 %2195, %2197
  br i1 %2198, label %2201, label %2199

; <label>:2199:                                   ; preds = %block_.L_452935
  %2200 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2191, %struct.Memory* %MEMORY.9)
  %.pre164 = load i32, i32* %EAX.i174, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit2150

; <label>:2201:                                   ; preds = %block_.L_452935
  %2202 = srem i64 %2194, %2192
  %2203 = and i64 %2195, 4294967295
  store i64 %2203, i64* %RAX.i175, align 8
  %2204 = and i64 %2202, 4294967295
  store i64 %2204, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2205 = trunc i64 %2195 to i32
  br label %routine_idivl__esi.exit2150

routine_idivl__esi.exit2150:                      ; preds = %2201, %2199
  %2206 = phi i64 [ %.pre165, %2199 ], [ %2191, %2201 ]
  %2207 = phi i32 [ %.pre164, %2199 ], [ %2205, %2201 ]
  %2208 = phi %struct.Memory* [ %2200, %2199 ], [ %MEMORY.9, %2201 ]
  %2209 = load i32, i32* %ECX.i1102, align 4
  %2210 = sub i32 %2209, %2207
  %2211 = icmp ult i32 %2209, %2207
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %12, align 1
  %2213 = and i32 %2210, 255
  %2214 = tail call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  store i8 %2217, i8* %13, align 1
  %2218 = xor i32 %2207, %2209
  %2219 = xor i32 %2218, %2210
  %2220 = lshr i32 %2219, 4
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  store i8 %2222, i8* %14, align 1
  %2223 = icmp eq i32 %2210, 0
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %15, align 1
  %2225 = lshr i32 %2210, 31
  %2226 = trunc i32 %2225 to i8
  store i8 %2226, i8* %16, align 1
  %2227 = lshr i32 %2209, 31
  %2228 = lshr i32 %2207, 31
  %2229 = xor i32 %2228, %2227
  %2230 = xor i32 %2225, %2227
  %2231 = add nuw nsw i32 %2230, %2229
  %2232 = icmp eq i32 %2231, 2
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %17, align 1
  %2234 = icmp ne i8 %2226, 0
  %2235 = xor i1 %2234, %2232
  %.v282 = select i1 %2235, i64 8, i64 230
  %2236 = add i64 %2206, %.v282
  store i64 %2236, i64* %3, align 8
  br i1 %2235, label %block_45295a, label %block_.L_452a38

block_45295a:                                     ; preds = %routine_idivl__esi.exit2150
  store i64 2, i64* %RAX.i175, align 8
  store i64 2, i64* %RCX.i586, align 8
  %2237 = load i64, i64* %RBP.i, align 8
  %2238 = add i64 %2237, -8
  %2239 = add i64 %2236, 11
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i64*
  %2241 = load i64, i64* %2240, align 8
  store i64 %2241, i64* %RDX.i756, align 8
  %2242 = add i64 %2241, 48
  %2243 = add i64 %2236, 15
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2242 to i64*
  %2245 = load i64, i64* %2244, align 8
  store i64 %2245, i64* %RDX.i756, align 8
  %2246 = add i64 %2237, -12
  %2247 = add i64 %2236, 18
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = shl i32 %2249, 1
  %2251 = icmp slt i32 %2249, 0
  %2252 = icmp slt i32 %2250, 0
  %2253 = xor i1 %2251, %2252
  %2254 = zext i32 %2250 to i64
  store i64 %2254, i64* %RAX.i175, align 8
  %.lobit46 = lshr i32 %2249, 31
  %2255 = trunc i32 %.lobit46 to i8
  store i8 %2255, i8* %12, align 1
  %2256 = and i32 %2250, 254
  %2257 = tail call i32 @llvm.ctpop.i32(i32 %2256)
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  store i8 %2260, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2261 = icmp eq i32 %2250, 0
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %15, align 1
  %2263 = lshr i32 %2249, 30
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  store i8 %2265, i8* %16, align 1
  %2266 = zext i1 %2253 to i8
  store i8 %2266, i8* %17, align 1
  %2267 = sext i32 %2250 to i64
  store i64 %2267, i64* %RSI.i480, align 8
  %2268 = shl nsw i64 %2267, 3
  %2269 = add nsw i64 %2268, 24
  %2270 = add i64 %2269, %2245
  %2271 = add i64 %2236, 28
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i64*
  %2273 = load i64, i64* %2272, align 8
  store i64 %2273, i64* %RAX.i175, align 8
  %2274 = ashr i64 %2273, 63
  store i64 %2274, i64* %1645, align 8
  %2275 = add i64 %2236, 33
  store i64 %2275, i64* %3, align 8
  %2276 = zext i64 %2274 to i128
  %2277 = shl nuw i128 %2276, 64
  %2278 = zext i64 %2273 to i128
  %2279 = or i128 %2277, %2278
  %2280 = sdiv i128 %2279, 2
  %2281 = trunc i128 %2280 to i64
  %2282 = and i128 %2280, 18446744073709551615
  %2283 = sext i64 %2281 to i128
  %2284 = and i128 %2283, -18446744073709551616
  %2285 = or i128 %2284, %2282
  %2286 = icmp eq i128 %2280, %2285
  br i1 %2286, label %2289, label %2287

; <label>:2287:                                   ; preds = %block_45295a
  %2288 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2275, %struct.Memory* %2208)
  %.pre252 = load i64, i64* %RAX.i175, align 8
  %.pre253 = load i64, i64* %3, align 8
  %.pre254 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rcx.exit2117

; <label>:2289:                                   ; preds = %block_45295a
  %2290 = srem i128 %2279, 2
  %2291 = trunc i128 %2290 to i64
  store i64 %2281, i64* %1646, align 8
  store i64 %2291, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2117

routine_idivq__rcx.exit2117:                      ; preds = %2289, %2287
  %2292 = phi i64 [ %.pre254, %2287 ], [ %2237, %2289 ]
  %2293 = phi i64 [ %.pre253, %2287 ], [ %2275, %2289 ]
  %2294 = phi i64 [ %.pre252, %2287 ], [ %2281, %2289 ]
  %2295 = phi %struct.Memory* [ %2288, %2287 ], [ %2208, %2289 ]
  %2296 = shl i64 %2294, 1
  %2297 = icmp slt i64 %2294, 0
  %2298 = icmp slt i64 %2296, 0
  %2299 = xor i1 %2297, %2298
  store i64 %2296, i64* %RAX.i175, align 8
  %.lobit47 = lshr i64 %2294, 63
  %2300 = trunc i64 %.lobit47 to i8
  store i8 %2300, i8* %12, align 1
  %2301 = trunc i64 %2296 to i32
  %2302 = and i32 %2301, 254
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2307 = icmp eq i64 %2296, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %15, align 1
  %2309 = lshr i64 %2294, 62
  %2310 = trunc i64 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %16, align 1
  %2312 = zext i1 %2299 to i8
  store i8 %2312, i8* %17, align 1
  %2313 = add i64 %2292, -8
  %2314 = add i64 %2293, 7
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i64*
  %2316 = load i64, i64* %2315, align 8
  store i64 %2316, i64* %RSI.i480, align 8
  %2317 = add i64 %2316, 56
  %2318 = add i64 %2293, 11
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i64*
  %2320 = load i64, i64* %2319, align 8
  store i64 %2320, i64* %RSI.i480, align 8
  %2321 = add i64 %2292, -12
  %2322 = add i64 %2293, 14
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = shl i32 %2324, 1
  %2326 = icmp slt i32 %2324, 0
  %2327 = icmp slt i32 %2325, 0
  %2328 = xor i1 %2326, %2327
  %2329 = zext i32 %2325 to i64
  store i64 %2329, i64* %RDI.i190, align 8
  %.lobit48 = lshr i32 %2324, 31
  %2330 = trunc i32 %.lobit48 to i8
  store i8 %2330, i8* %12, align 1
  %2331 = and i32 %2325, 254
  %2332 = tail call i32 @llvm.ctpop.i32(i32 %2331)
  %2333 = trunc i32 %2332 to i8
  %2334 = and i8 %2333, 1
  %2335 = xor i8 %2334, 1
  store i8 %2335, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2336 = icmp eq i32 %2325, 0
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %15, align 1
  %2338 = lshr i32 %2324, 30
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  store i8 %2340, i8* %16, align 1
  %2341 = zext i1 %2328 to i8
  store i8 %2341, i8* %17, align 1
  %2342 = sext i32 %2325 to i64
  store i64 %2342, i64* %86, align 8
  %2343 = shl nsw i64 %2342, 3
  %2344 = add nsw i64 %2343, 24
  %2345 = add i64 %2344, %2320
  %2346 = add i64 %2293, 24
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i64*
  %2348 = load i64, i64* %2347, align 8
  store i64 %2348, i64* %RSI.i480, align 8
  %2349 = add i64 %2292, -128
  %2350 = add i64 %2293, 28
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i64*
  store i64 %2296, i64* %2351, align 8
  %2352 = load i64, i64* %RSI.i480, align 8
  %2353 = load i64, i64* %3, align 8
  store i64 %2352, i64* %RAX.i175, align 8
  %2354 = ashr i64 %2352, 63
  store i64 %2354, i64* %1645, align 8
  %2355 = load i64, i64* %RCX.i586, align 8
  %2356 = add i64 %2353, 8
  store i64 %2356, i64* %3, align 8
  %2357 = sext i64 %2355 to i128
  %2358 = and i128 %2357, -18446744073709551616
  %2359 = zext i64 %2354 to i128
  %2360 = shl nuw i128 %2359, 64
  %2361 = zext i64 %2352 to i128
  %2362 = or i128 %2360, %2361
  %2363 = zext i64 %2355 to i128
  %2364 = or i128 %2358, %2363
  %2365 = sdiv i128 %2362, %2364
  %2366 = trunc i128 %2365 to i64
  %2367 = and i128 %2365, 18446744073709551615
  %2368 = sext i64 %2366 to i128
  %2369 = and i128 %2368, -18446744073709551616
  %2370 = or i128 %2369, %2367
  %2371 = icmp eq i128 %2365, %2370
  br i1 %2371, label %2374, label %2372

; <label>:2372:                                   ; preds = %routine_idivq__rcx.exit2117
  %2373 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2356, %struct.Memory* %2295)
  %.pre255 = load i64, i64* %RAX.i175, align 8
  %.pre256 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit2086

; <label>:2374:                                   ; preds = %routine_idivq__rcx.exit2117
  %2375 = srem i128 %2362, %2364
  %2376 = trunc i128 %2375 to i64
  store i64 %2366, i64* %1646, align 8
  store i64 %2376, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2086

routine_idivq__rcx.exit2086:                      ; preds = %2374, %2372
  %2377 = phi i64 [ %.pre256, %2372 ], [ %2356, %2374 ]
  %2378 = phi i64 [ %.pre255, %2372 ], [ %2366, %2374 ]
  %2379 = phi %struct.Memory* [ %2373, %2372 ], [ %2295, %2374 ]
  %2380 = shl i64 %2378, 1
  %2381 = icmp slt i64 %2378, 0
  %2382 = icmp slt i64 %2380, 0
  %2383 = xor i1 %2381, %2382
  store i64 %2380, i64* %RAX.i175, align 8
  %.lobit49 = lshr i64 %2378, 63
  %2384 = trunc i64 %.lobit49 to i8
  store i8 %2384, i8* %12, align 1
  %2385 = trunc i64 %2380 to i32
  %2386 = and i32 %2385, 254
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2391 = icmp eq i64 %2380, 0
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %15, align 1
  %2393 = lshr i64 %2378, 62
  %2394 = trunc i64 %2393 to i8
  %2395 = and i8 %2394, 1
  store i8 %2395, i8* %16, align 1
  %2396 = zext i1 %2383 to i8
  store i8 %2396, i8* %17, align 1
  %2397 = load i64, i64* %RBP.i, align 8
  %2398 = add i64 %2397, -128
  %2399 = add i64 %2377, 7
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i64*
  %2401 = load i64, i64* %2400, align 8
  %2402 = sub i64 %2401, %2380
  %2403 = icmp ult i64 %2401, %2380
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %12, align 1
  %2405 = trunc i64 %2402 to i32
  %2406 = and i32 %2405, 255
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %13, align 1
  %2411 = xor i64 %2380, %2401
  %2412 = xor i64 %2411, %2402
  %2413 = lshr i64 %2412, 4
  %2414 = trunc i64 %2413 to i8
  %2415 = and i8 %2414, 1
  store i8 %2415, i8* %14, align 1
  %2416 = icmp eq i64 %2402, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %15, align 1
  %2418 = lshr i64 %2402, 63
  %2419 = trunc i64 %2418 to i8
  store i8 %2419, i8* %16, align 1
  %2420 = lshr i64 %2401, 63
  %2421 = lshr i64 %2378, 62
  %2422 = and i64 %2421, 1
  %2423 = xor i64 %2422, %2420
  %2424 = xor i64 %2418, %2420
  %2425 = add nuw nsw i64 %2424, %2423
  %2426 = icmp eq i64 %2425, 2
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %17, align 1
  %2428 = icmp ne i8 %2419, 0
  %2429 = xor i1 %2428, %2426
  %.v289 = select i1 %2429, i64 16, i64 66
  %2430 = add i64 %2377, %.v289
  store i64 2, i64* %RAX.i175, align 8
  store i64 2, i64* %RCX.i586, align 8
  %2431 = add i64 %2397, -8
  %2432 = add i64 %2430, 11
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i64*
  %2434 = load i64, i64* %2433, align 8
  store i64 %2434, i64* %RDX.i756, align 8
  br i1 %2429, label %block_4529b3, label %block_.L_4529e5

block_4529b3:                                     ; preds = %routine_idivq__rcx.exit2086
  %2435 = add i64 %2434, 48
  %2436 = add i64 %2430, 15
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i64*
  %2438 = load i64, i64* %2437, align 8
  store i64 %2438, i64* %RDX.i756, align 8
  %2439 = add i64 %2397, -12
  %2440 = add i64 %2430, 18
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = shl i32 %2442, 1
  %2444 = icmp slt i32 %2442, 0
  %2445 = icmp slt i32 %2443, 0
  %2446 = xor i1 %2444, %2445
  %2447 = zext i32 %2443 to i64
  store i64 %2447, i64* %RAX.i175, align 8
  %.lobit50 = lshr i32 %2442, 31
  %2448 = trunc i32 %.lobit50 to i8
  store i8 %2448, i8* %12, align 1
  %2449 = and i32 %2443, 254
  %2450 = tail call i32 @llvm.ctpop.i32(i32 %2449)
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  store i8 %2453, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2454 = icmp eq i32 %2443, 0
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %15, align 1
  %2456 = lshr i32 %2442, 30
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  store i8 %2458, i8* %16, align 1
  %2459 = zext i1 %2446 to i8
  store i8 %2459, i8* %17, align 1
  %2460 = sext i32 %2443 to i64
  store i64 %2460, i64* %RSI.i480, align 8
  %2461 = shl nsw i64 %2460, 3
  %2462 = add nsw i64 %2461, 24
  %2463 = add i64 %2462, %2438
  %2464 = add i64 %2430, 28
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i64*
  %2466 = load i64, i64* %2465, align 8
  store i64 %2466, i64* %RAX.i175, align 8
  %2467 = ashr i64 %2466, 63
  store i64 %2467, i64* %1645, align 8
  %2468 = add i64 %2430, 33
  store i64 %2468, i64* %3, align 8
  %2469 = zext i64 %2467 to i128
  %2470 = shl nuw i128 %2469, 64
  %2471 = zext i64 %2466 to i128
  %2472 = or i128 %2470, %2471
  %2473 = sdiv i128 %2472, 2
  %2474 = trunc i128 %2473 to i64
  %2475 = and i128 %2473, 18446744073709551615
  %2476 = sext i64 %2474 to i128
  %2477 = and i128 %2476, -18446744073709551616
  %2478 = or i128 %2477, %2475
  %2479 = icmp eq i128 %2473, %2478
  br i1 %2479, label %2482, label %2480

; <label>:2480:                                   ; preds = %block_4529b3
  %2481 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2468, %struct.Memory* %2379)
  %.pre260 = load i64, i64* %RAX.i175, align 8
  %.pre261 = load i64, i64* %3, align 8
  %.pre262 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rcx.exit2048

; <label>:2482:                                   ; preds = %block_4529b3
  %2483 = srem i128 %2472, 2
  %2484 = trunc i128 %2483 to i64
  store i64 %2474, i64* %1646, align 8
  store i64 %2484, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit2048

routine_idivq__rcx.exit2048:                      ; preds = %2482, %2480
  %2485 = phi i64 [ %.pre262, %2480 ], [ %2397, %2482 ]
  %2486 = phi i64 [ %.pre261, %2480 ], [ %2468, %2482 ]
  %2487 = phi i64 [ %.pre260, %2480 ], [ %2474, %2482 ]
  %2488 = phi %struct.Memory* [ %2481, %2480 ], [ %2379, %2482 ]
  %2489 = shl i64 %2487, 1
  %2490 = icmp slt i64 %2487, 0
  %2491 = icmp slt i64 %2489, 0
  %2492 = xor i1 %2490, %2491
  store i64 %2489, i64* %RAX.i175, align 8
  %.lobit51 = lshr i64 %2487, 63
  %2493 = trunc i64 %.lobit51 to i8
  store i8 %2493, i8* %12, align 1
  %2494 = trunc i64 %2489 to i32
  %2495 = and i32 %2494, 254
  %2496 = tail call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  store i8 %2499, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2500 = icmp eq i64 %2489, 0
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %15, align 1
  %2502 = lshr i64 %2487, 62
  %2503 = trunc i64 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %16, align 1
  %2505 = zext i1 %2492 to i8
  store i8 %2505, i8* %17, align 1
  %2506 = add i64 %2485, -136
  %2507 = add i64 %2486, 10
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i64*
  store i64 %2489, i64* %2508, align 8
  %2509 = load i64, i64* %3, align 8
  %2510 = add i64 %2509, 50
  store i64 %2510, i64* %3, align 8
  br label %block_.L_452a12

block_.L_4529e5:                                  ; preds = %routine_idivq__rcx.exit2086
  %2511 = add i64 %2434, 56
  %2512 = add i64 %2430, 15
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i64*
  %2514 = load i64, i64* %2513, align 8
  store i64 %2514, i64* %RDX.i756, align 8
  %2515 = add i64 %2397, -12
  %2516 = add i64 %2430, 18
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = shl i32 %2518, 1
  %2520 = icmp slt i32 %2518, 0
  %2521 = icmp slt i32 %2519, 0
  %2522 = xor i1 %2520, %2521
  %2523 = zext i32 %2519 to i64
  store i64 %2523, i64* %RAX.i175, align 8
  %.lobit52 = lshr i32 %2518, 31
  %2524 = trunc i32 %.lobit52 to i8
  store i8 %2524, i8* %12, align 1
  %2525 = and i32 %2519, 254
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2530 = icmp eq i32 %2519, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %15, align 1
  %2532 = lshr i32 %2518, 30
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %16, align 1
  %2535 = zext i1 %2522 to i8
  store i8 %2535, i8* %17, align 1
  %2536 = sext i32 %2519 to i64
  store i64 %2536, i64* %RSI.i480, align 8
  %2537 = shl nsw i64 %2536, 3
  %2538 = add nsw i64 %2537, 24
  %2539 = add i64 %2538, %2514
  %2540 = add i64 %2430, 28
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2539 to i64*
  %2542 = load i64, i64* %2541, align 8
  store i64 %2542, i64* %RAX.i175, align 8
  %2543 = ashr i64 %2542, 63
  store i64 %2543, i64* %1645, align 8
  %2544 = add i64 %2430, 33
  store i64 %2544, i64* %3, align 8
  %2545 = zext i64 %2543 to i128
  %2546 = shl nuw i128 %2545, 64
  %2547 = zext i64 %2542 to i128
  %2548 = or i128 %2546, %2547
  %2549 = sdiv i128 %2548, 2
  %2550 = trunc i128 %2549 to i64
  %2551 = and i128 %2549, 18446744073709551615
  %2552 = sext i64 %2550 to i128
  %2553 = and i128 %2552, -18446744073709551616
  %2554 = or i128 %2553, %2551
  %2555 = icmp eq i128 %2549, %2554
  br i1 %2555, label %2558, label %2556

; <label>:2556:                                   ; preds = %block_.L_4529e5
  %2557 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2544, %struct.Memory* %2379)
  %.pre257 = load i64, i64* %RAX.i175, align 8
  %.pre258 = load i64, i64* %3, align 8
  %.pre259 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rcx.exit

; <label>:2558:                                   ; preds = %block_.L_4529e5
  %2559 = srem i128 %2548, 2
  %2560 = trunc i128 %2559 to i64
  store i64 %2550, i64* %1646, align 8
  store i64 %2560, i64* %1645, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %2558, %2556
  %2561 = phi i64 [ %.pre259, %2556 ], [ %2397, %2558 ]
  %2562 = phi i64 [ %.pre258, %2556 ], [ %2544, %2558 ]
  %2563 = phi i64 [ %.pre257, %2556 ], [ %2550, %2558 ]
  %2564 = phi %struct.Memory* [ %2557, %2556 ], [ %2379, %2558 ]
  %2565 = shl i64 %2563, 1
  %2566 = icmp slt i64 %2563, 0
  %2567 = icmp slt i64 %2565, 0
  %2568 = xor i1 %2566, %2567
  store i64 %2565, i64* %RAX.i175, align 8
  %.lobit53 = lshr i64 %2563, 63
  %2569 = trunc i64 %.lobit53 to i8
  store i8 %2569, i8* %12, align 1
  %2570 = trunc i64 %2565 to i32
  %2571 = and i32 %2570, 254
  %2572 = tail call i32 @llvm.ctpop.i32(i32 %2571)
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  %2575 = xor i8 %2574, 1
  store i8 %2575, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2576 = icmp eq i64 %2565, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %15, align 1
  %2578 = lshr i64 %2563, 62
  %2579 = trunc i64 %2578 to i8
  %2580 = and i8 %2579, 1
  store i8 %2580, i8* %16, align 1
  %2581 = zext i1 %2568 to i8
  store i8 %2581, i8* %17, align 1
  %2582 = add i64 %2561, -136
  %2583 = add i64 %2562, 10
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i64*
  store i64 %2565, i64* %2584, align 8
  %.pre263 = load i64, i64* %3, align 8
  br label %block_.L_452a12

block_.L_452a12:                                  ; preds = %routine_idivq__rcx.exit, %routine_idivq__rcx.exit2048
  %2585 = phi i64 [ %.pre263, %routine_idivq__rcx.exit ], [ %2510, %routine_idivq__rcx.exit2048 ]
  %MEMORY.10 = phi %struct.Memory* [ %2564, %routine_idivq__rcx.exit ], [ %2488, %routine_idivq__rcx.exit2048 ]
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -136
  %2588 = add i64 %2585, 7
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i175, align 8
  %2591 = add i64 %2586, -8
  %2592 = add i64 %2585, 11
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i64*
  %2594 = load i64, i64* %2593, align 8
  store i64 %2594, i64* %RCX.i586, align 8
  %2595 = add i64 %2594, 40
  %2596 = add i64 %2585, 15
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to i64*
  %2598 = load i64, i64* %2597, align 8
  store i64 %2598, i64* %RCX.i586, align 8
  %2599 = add i64 %2586, -12
  %2600 = add i64 %2585, 19
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i32*
  %2602 = load i32, i32* %2601, align 4
  %2603 = sext i32 %2602 to i64
  store i64 %2603, i64* %RDX.i756, align 8
  %2604 = shl nsw i64 %2603, 3
  %2605 = add i64 %2598, 24
  %2606 = add i64 %2605, %2604
  %2607 = add i64 %2585, 24
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2606 to i64*
  store i64 %2590, i64* %2608, align 8
  %2609 = load i64, i64* %RBP.i, align 8
  %2610 = add i64 %2609, -12
  %2611 = load i64, i64* %3, align 8
  %2612 = add i64 %2611, 3
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2610 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = add i32 %2614, 1
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RAX.i175, align 8
  %2617 = icmp eq i32 %2614, -1
  %2618 = icmp eq i32 %2615, 0
  %2619 = or i1 %2617, %2618
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %12, align 1
  %2621 = and i32 %2615, 255
  %2622 = tail call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  store i8 %2625, i8* %13, align 1
  %2626 = xor i32 %2615, %2614
  %2627 = lshr i32 %2626, 4
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %14, align 1
  %2630 = zext i1 %2618 to i8
  store i8 %2630, i8* %15, align 1
  %2631 = lshr i32 %2615, 31
  %2632 = trunc i32 %2631 to i8
  store i8 %2632, i8* %16, align 1
  %2633 = lshr i32 %2614, 31
  %2634 = xor i32 %2631, %2633
  %2635 = add nuw nsw i32 %2634, %2631
  %2636 = icmp eq i32 %2635, 2
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %17, align 1
  %2638 = add i64 %2611, 9
  store i64 %2638, i64* %3, align 8
  store i32 %2615, i32* %2613, align 4
  %2639 = load i64, i64* %3, align 8
  %2640 = add i64 %2639, -254
  store i64 %2640, i64* %3, align 8
  br label %block_.L_452935

block_.L_452a38:                                  ; preds = %routine_idivl__esi.exit2150
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -12
  %2643 = add i64 %2236, 7
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  store i32 0, i32* %2644, align 4
  %R9W.i1771 = bitcast %union.anon* %128 to i16*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i952 = bitcast %union.anon* %2645 to i16*
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_452a3f

block_.L_452a3f:                                  ; preds = %block_.L_4534a6, %block_.L_452a38
  %2646 = phi i64 [ %.pre166, %block_.L_452a38 ], [ %6394, %block_.L_4534a6 ]
  %MEMORY.11 = phi %struct.Memory* [ %2208, %block_.L_452a38 ], [ %2781, %block_.L_4534a6 ]
  store i64 4, i64* %RAX.i175, align 8
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -12
  %2649 = add i64 %2646, 8
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2648 to i32*
  %2651 = load i32, i32* %2650, align 4
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RCX.i586, align 8
  %2653 = add i64 %2647, -8
  %2654 = add i64 %2646, 12
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i64*
  %2656 = load i64, i64* %2655, align 8
  store i64 %2656, i64* %RDX.i756, align 8
  %2657 = add i64 %2656, 48
  %2658 = add i64 %2646, 16
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  store i64 %2660, i64* %RDX.i756, align 8
  %2661 = add i64 %2660, 6392
  %2662 = add i64 %2646, 22
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = zext i32 %2664 to i64
  store i64 %2665, i64* %RSI.i480, align 8
  %2666 = add i64 %2647, -140
  %2667 = add i64 %2646, 28
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i32*
  store i32 4, i32* %2668, align 4
  %2669 = load i32, i32* %ESI.i2339, align 4
  %2670 = zext i32 %2669 to i64
  %2671 = load i64, i64* %3, align 8
  store i64 %2670, i64* %RAX.i175, align 8
  %2672 = sext i32 %2669 to i64
  %2673 = lshr i64 %2672, 32
  store i64 %2673, i64* %1645, align 8
  %2674 = load i64, i64* %RBP.i, align 8
  %2675 = add i64 %2674, -140
  %2676 = add i64 %2671, 9
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i32*
  %2678 = load i32, i32* %2677, align 4
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RSI.i480, align 8
  %2680 = add i64 %2671, 11
  store i64 %2680, i64* %3, align 8
  %2681 = sext i32 %2678 to i64
  %2682 = shl nuw i64 %2673, 32
  %2683 = or i64 %2682, %2670
  %2684 = sdiv i64 %2683, %2681
  %2685 = shl i64 %2684, 32
  %2686 = ashr exact i64 %2685, 32
  %2687 = icmp eq i64 %2684, %2686
  br i1 %2687, label %2690, label %2688

; <label>:2688:                                   ; preds = %block_.L_452a3f
  %2689 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2680, %struct.Memory* %MEMORY.11)
  %.pre167 = load i32, i32* %EAX.i174, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1956

; <label>:2690:                                   ; preds = %block_.L_452a3f
  %2691 = srem i64 %2683, %2681
  %2692 = and i64 %2684, 4294967295
  store i64 %2692, i64* %RAX.i175, align 8
  %2693 = and i64 %2691, 4294967295
  store i64 %2693, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2694 = trunc i64 %2684 to i32
  br label %routine_idivl__esi.exit1956

routine_idivl__esi.exit1956:                      ; preds = %2690, %2688
  %2695 = phi i64 [ %.pre168, %2688 ], [ %2680, %2690 ]
  %2696 = phi i32 [ %.pre167, %2688 ], [ %2694, %2690 ]
  %2697 = phi %struct.Memory* [ %2689, %2688 ], [ %MEMORY.11, %2690 ]
  %2698 = load i32, i32* %ECX.i1102, align 4
  %2699 = sub i32 %2698, %2696
  %2700 = icmp ult i32 %2698, %2696
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %12, align 1
  %2702 = and i32 %2699, 255
  %2703 = tail call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  store i8 %2706, i8* %13, align 1
  %2707 = xor i32 %2696, %2698
  %2708 = xor i32 %2707, %2699
  %2709 = lshr i32 %2708, 4
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  store i8 %2711, i8* %14, align 1
  %2712 = icmp eq i32 %2699, 0
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %15, align 1
  %2714 = lshr i32 %2699, 31
  %2715 = trunc i32 %2714 to i8
  store i8 %2715, i8* %16, align 1
  %2716 = lshr i32 %2698, 31
  %2717 = lshr i32 %2696, 31
  %2718 = xor i32 %2717, %2716
  %2719 = xor i32 %2714, %2716
  %2720 = add nuw nsw i32 %2719, %2718
  %2721 = icmp eq i32 %2720, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %17, align 1
  %2723 = icmp ne i8 %2715, 0
  %2724 = xor i1 %2723, %2721
  %.v283 = select i1 %2724, i64 8, i64 2643
  %2725 = add i64 %2695, %.v283
  store i64 %2725, i64* %3, align 8
  br i1 %2724, label %block_452a6e, label %block_.L_4534b9

block_452a6e:                                     ; preds = %routine_idivl__esi.exit1956
  %2726 = load i64, i64* %RBP.i, align 8
  %2727 = add i64 %2726, -16
  %2728 = add i64 %2725, 7
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i32*
  store i32 0, i32* %2729, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_452a75

block_.L_452a75:                                  ; preds = %routine_idivl__ecx.exit, %block_452a6e
  %2730 = phi i64 [ %.pre175, %block_452a6e ], [ %6363, %routine_idivl__ecx.exit ]
  %MEMORY.12 = phi %struct.Memory* [ %2697, %block_452a6e ], [ %6290, %routine_idivl__ecx.exit ]
  store i64 4, i64* %RAX.i175, align 8
  %2731 = load i64, i64* %RBP.i, align 8
  %2732 = add i64 %2731, -16
  %2733 = add i64 %2730, 8
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = zext i32 %2735 to i64
  store i64 %2736, i64* %RCX.i586, align 8
  %2737 = add i64 %2731, -8
  %2738 = add i64 %2730, 12
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i64*
  %2740 = load i64, i64* %2739, align 8
  store i64 %2740, i64* %RDX.i756, align 8
  %2741 = add i64 %2740, 48
  %2742 = add i64 %2730, 16
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i64*
  %2744 = load i64, i64* %2743, align 8
  store i64 %2744, i64* %RDX.i756, align 8
  %2745 = add i64 %2744, 6396
  %2746 = add i64 %2730, 22
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2745 to i32*
  %2748 = load i32, i32* %2747, align 4
  %2749 = zext i32 %2748 to i64
  store i64 %2749, i64* %RSI.i480, align 8
  %2750 = add i64 %2731, -144
  %2751 = add i64 %2730, 28
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i32*
  store i32 4, i32* %2752, align 4
  %2753 = load i32, i32* %ESI.i2339, align 4
  %2754 = zext i32 %2753 to i64
  %2755 = load i64, i64* %3, align 8
  store i64 %2754, i64* %RAX.i175, align 8
  %2756 = sext i32 %2753 to i64
  %2757 = lshr i64 %2756, 32
  store i64 %2757, i64* %1645, align 8
  %2758 = load i64, i64* %RBP.i, align 8
  %2759 = add i64 %2758, -144
  %2760 = add i64 %2755, 9
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = zext i32 %2762 to i64
  store i64 %2763, i64* %RSI.i480, align 8
  %2764 = add i64 %2755, 11
  store i64 %2764, i64* %3, align 8
  %2765 = sext i32 %2762 to i64
  %2766 = shl nuw i64 %2757, 32
  %2767 = or i64 %2766, %2754
  %2768 = sdiv i64 %2767, %2765
  %2769 = shl i64 %2768, 32
  %2770 = ashr exact i64 %2769, 32
  %2771 = icmp eq i64 %2768, %2770
  br i1 %2771, label %2774, label %2772

; <label>:2772:                                   ; preds = %block_.L_452a75
  %2773 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2764, %struct.Memory* %MEMORY.12)
  %.pre176 = load i32, i32* %EAX.i174, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1921

; <label>:2774:                                   ; preds = %block_.L_452a75
  %2775 = srem i64 %2767, %2765
  %2776 = and i64 %2768, 4294967295
  store i64 %2776, i64* %RAX.i175, align 8
  %2777 = and i64 %2775, 4294967295
  store i64 %2777, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2778 = trunc i64 %2768 to i32
  br label %routine_idivl__esi.exit1921

routine_idivl__esi.exit1921:                      ; preds = %2774, %2772
  %2779 = phi i64 [ %.pre177, %2772 ], [ %2764, %2774 ]
  %2780 = phi i32 [ %.pre176, %2772 ], [ %2778, %2774 ]
  %2781 = phi %struct.Memory* [ %2773, %2772 ], [ %MEMORY.12, %2774 ]
  %2782 = load i32, i32* %ECX.i1102, align 4
  %2783 = sub i32 %2782, %2780
  %2784 = icmp ult i32 %2782, %2780
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %12, align 1
  %2786 = and i32 %2783, 255
  %2787 = tail call i32 @llvm.ctpop.i32(i32 %2786)
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = xor i8 %2789, 1
  store i8 %2790, i8* %13, align 1
  %2791 = xor i32 %2780, %2782
  %2792 = xor i32 %2791, %2783
  %2793 = lshr i32 %2792, 4
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  store i8 %2795, i8* %14, align 1
  %2796 = icmp eq i32 %2783, 0
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %15, align 1
  %2798 = lshr i32 %2783, 31
  %2799 = trunc i32 %2798 to i8
  store i8 %2799, i8* %16, align 1
  %2800 = lshr i32 %2782, 31
  %2801 = lshr i32 %2780, 31
  %2802 = xor i32 %2801, %2800
  %2803 = xor i32 %2798, %2800
  %2804 = add nuw nsw i32 %2803, %2802
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %17, align 1
  %2807 = icmp ne i8 %2799, 0
  %2808 = xor i1 %2807, %2805
  %.v288 = select i1 %2808, i64 8, i64 2570
  %2809 = add i64 %2779, %.v288
  %2810 = add i64 %2809, 5
  store i64 %2810, i64* %3, align 8
  br i1 %2808, label %block_452aa4, label %block_.L_4534a6

block_452aa4:                                     ; preds = %routine_idivl__esi.exit1921
  store i64 4, i64* %RAX.i175, align 8
  %2811 = load i64, i64* %RBP.i, align 8
  %2812 = add i64 %2811, -8
  %2813 = add i64 %2809, 9
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i64*
  %2815 = load i64, i64* %2814, align 8
  store i64 %2815, i64* %RCX.i586, align 8
  %2816 = add i64 %2815, 40
  %2817 = add i64 %2809, 13
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i64*
  %2819 = load i64, i64* %2818, align 8
  store i64 %2819, i64* %RCX.i586, align 8
  %2820 = add i64 %2819, 6520
  %2821 = add i64 %2809, 20
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i64*
  %2823 = load i64, i64* %2822, align 8
  store i64 %2823, i64* %RCX.i586, align 8
  %2824 = add i64 %2811, -12
  %2825 = add i64 %2809, 24
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i32*
  %2827 = load i32, i32* %2826, align 4
  %2828 = sext i32 %2827 to i64
  store i64 %2828, i64* %RDX.i756, align 8
  %2829 = shl nsw i64 %2828, 3
  %2830 = add i64 %2829, %2823
  %2831 = add i64 %2809, 28
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i64*
  %2833 = load i64, i64* %2832, align 8
  store i64 %2833, i64* %RCX.i586, align 8
  %2834 = add i64 %2811, -16
  %2835 = add i64 %2809, 31
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  %2837 = load i32, i32* %2836, align 4
  %2838 = zext i32 %2837 to i64
  store i64 %2838, i64* %RSI.i480, align 8
  %2839 = add i64 %2811, -148
  %2840 = add i64 %2809, 37
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  store i32 4, i32* %2841, align 4
  %2842 = load i32, i32* %ESI.i2339, align 4
  %2843 = zext i32 %2842 to i64
  %2844 = load i64, i64* %3, align 8
  store i64 %2843, i64* %RAX.i175, align 8
  %2845 = sext i32 %2842 to i64
  %2846 = lshr i64 %2845, 32
  store i64 %2846, i64* %1645, align 8
  %2847 = load i64, i64* %RBP.i, align 8
  %2848 = add i64 %2847, -148
  %2849 = add i64 %2844, 9
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  %2851 = load i32, i32* %2850, align 4
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RSI.i480, align 8
  %2853 = add i64 %2844, 11
  store i64 %2853, i64* %3, align 8
  %2854 = sext i32 %2851 to i64
  %2855 = shl nuw i64 %2846, 32
  %2856 = or i64 %2855, %2843
  %2857 = sdiv i64 %2856, %2854
  %2858 = shl i64 %2857, 32
  %2859 = ashr exact i64 %2858, 32
  %2860 = icmp eq i64 %2857, %2859
  br i1 %2860, label %2863, label %2861

; <label>:2861:                                   ; preds = %block_452aa4
  %2862 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2853, %struct.Memory* %2781)
  %.pre178 = load i64, i64* %RAX.i175, align 8
  %.pre179 = load i64, i64* %3, align 8
  %.pre180 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit1883

; <label>:2863:                                   ; preds = %block_452aa4
  %2864 = srem i64 %2856, %2854
  %2865 = and i64 %2857, 4294967295
  store i64 %2865, i64* %RAX.i175, align 8
  %2866 = and i64 %2864, 4294967295
  store i64 %2866, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1883

routine_idivl__esi.exit1883:                      ; preds = %2863, %2861
  %2867 = phi i64 [ %.pre180, %2861 ], [ %2847, %2863 ]
  %2868 = phi i64 [ %.pre179, %2861 ], [ %2853, %2863 ]
  %2869 = phi i64 [ %.pre178, %2861 ], [ %2865, %2863 ]
  %2870 = phi %struct.Memory* [ %2862, %2861 ], [ %2781, %2863 ]
  %.tr = trunc i64 %2869 to i32
  %2871 = shl i32 %.tr, 3
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RAX.i175, align 8
  %2873 = lshr i64 %2869, 29
  %2874 = trunc i64 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %12, align 1
  %2876 = and i32 %2871, 248
  %2877 = tail call i32 @llvm.ctpop.i32(i32 %2876)
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  %2880 = xor i8 %2879, 1
  store i8 %2880, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2881 = icmp eq i32 %2871, 0
  %2882 = zext i1 %2881 to i8
  store i8 %2882, i8* %15, align 1
  %2883 = lshr i32 %.tr, 28
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  store i8 %2885, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2886 = add i64 %2867, -16
  %2887 = add i64 %2868, 6
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RDI.i190, align 8
  %2891 = add i64 %2867, -152
  %2892 = add i64 %2868, 12
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i32*
  store i32 %2871, i32* %2893, align 4
  %2894 = load i32, i32* %EDI.i2291, align 4
  %2895 = zext i32 %2894 to i64
  %2896 = load i64, i64* %3, align 8
  store i64 %2895, i64* %RAX.i175, align 8
  %2897 = sext i32 %2894 to i64
  %2898 = lshr i64 %2897, 32
  store i64 %2898, i64* %1645, align 8
  %2899 = load i32, i32* %ESI.i2339, align 4
  %2900 = add i64 %2896, 5
  store i64 %2900, i64* %3, align 8
  %2901 = sext i32 %2899 to i64
  %2902 = shl nuw i64 %2898, 32
  %2903 = or i64 %2902, %2895
  %2904 = sdiv i64 %2903, %2901
  %2905 = shl i64 %2904, 32
  %2906 = ashr exact i64 %2905, 32
  %2907 = icmp eq i64 %2904, %2906
  br i1 %2907, label %2910, label %2908

; <label>:2908:                                   ; preds = %routine_idivl__esi.exit1883
  %2909 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2900, %struct.Memory* %2870)
  %.pre181 = load i64, i64* %3, align 8
  %.pre182 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1865

; <label>:2910:                                   ; preds = %routine_idivl__esi.exit1883
  %2911 = srem i64 %2903, %2901
  %2912 = and i64 %2904, 4294967295
  store i64 %2912, i64* %RAX.i175, align 8
  %2913 = and i64 %2911, 4294967295
  store i64 %2913, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2914 = trunc i64 %2911 to i32
  br label %routine_idivl__esi.exit1865

routine_idivl__esi.exit1865:                      ; preds = %2910, %2908
  %2915 = phi i32 [ %.pre182, %2908 ], [ %2914, %2910 ]
  %2916 = phi i64 [ %.pre181, %2908 ], [ %2900, %2910 ]
  %2917 = phi %struct.Memory* [ %2909, %2908 ], [ %2870, %2910 ]
  %2918 = load i64, i64* %RBP.i, align 8
  %2919 = add i64 %2918, -152
  %2920 = add i64 %2916, 6
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = add i32 %2915, %2922
  %2924 = lshr i32 %2923, 31
  %2925 = add i32 %2923, 4
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RDI.i190, align 8
  %2927 = icmp ugt i32 %2923, -5
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %12, align 1
  %2929 = and i32 %2925, 255
  %2930 = tail call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  store i8 %2933, i8* %13, align 1
  %2934 = xor i32 %2925, %2923
  %2935 = lshr i32 %2934, 4
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  store i8 %2937, i8* %14, align 1
  %2938 = icmp eq i32 %2925, 0
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %15, align 1
  %2940 = lshr i32 %2925, 31
  %2941 = trunc i32 %2940 to i8
  store i8 %2941, i8* %16, align 1
  %2942 = xor i32 %2940, %2924
  %2943 = add nuw nsw i32 %2942, %2940
  %2944 = icmp eq i32 %2943, 2
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %17, align 1
  %2946 = sext i32 %2925 to i64
  store i64 %2946, i64* %86, align 8
  %2947 = load i64, i64* %RCX.i586, align 8
  %2948 = add i64 %2947, %2946
  %2949 = add i64 %2916, 19
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i8*
  store i8 1, i8* %2950, align 1
  %2951 = load i64, i64* %RBP.i, align 8
  %2952 = add i64 %2951, -8
  %2953 = load i64, i64* %3, align 8
  %2954 = add i64 %2953, 4
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2952 to i64*
  %2956 = load i64, i64* %2955, align 8
  store i64 %2956, i64* %RCX.i586, align 8
  %2957 = add i64 %2956, 40
  %2958 = add i64 %2953, 8
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i64*
  %2960 = load i64, i64* %2959, align 8
  store i64 %2960, i64* %RCX.i586, align 8
  %2961 = add i64 %2960, 6520
  %2962 = add i64 %2953, 15
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i64*
  %2964 = load i64, i64* %2963, align 8
  store i64 %2964, i64* %RCX.i586, align 8
  %2965 = add i64 %2951, -12
  %2966 = add i64 %2953, 19
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = sext i32 %2968 to i64
  store i64 %2969, i64* %86, align 8
  %2970 = shl nsw i64 %2969, 3
  %2971 = add i64 %2970, %2964
  %2972 = add i64 %2953, 23
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %RCX.i586, align 8
  %2975 = add i64 %2951, -16
  %2976 = add i64 %2953, 26
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i32*
  %2978 = load i32, i32* %2977, align 4
  %2979 = zext i32 %2978 to i64
  store i64 %2979, i64* %RAX.i175, align 8
  %2980 = sext i32 %2978 to i64
  %2981 = lshr i64 %2980, 32
  store i64 %2981, i64* %1645, align 8
  %2982 = load i32, i32* %ESI.i2339, align 4
  %2983 = add i64 %2953, 31
  store i64 %2983, i64* %3, align 8
  %2984 = sext i32 %2982 to i64
  %2985 = shl nuw i64 %2981, 32
  %2986 = or i64 %2985, %2979
  %2987 = sdiv i64 %2986, %2984
  %2988 = shl i64 %2987, 32
  %2989 = ashr exact i64 %2988, 32
  %2990 = icmp eq i64 %2987, %2989
  br i1 %2990, label %2993, label %2991

; <label>:2991:                                   ; preds = %routine_idivl__esi.exit1865
  %2992 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2983, %struct.Memory* %2917)
  %.pre183 = load i64, i64* %RAX.i175, align 8
  %.pre184 = load i64, i64* %3, align 8
  %.pre185 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit1826

; <label>:2993:                                   ; preds = %routine_idivl__esi.exit1865
  %2994 = srem i64 %2986, %2984
  %2995 = and i64 %2987, 4294967295
  store i64 %2995, i64* %RAX.i175, align 8
  %2996 = and i64 %2994, 4294967295
  store i64 %2996, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1826

routine_idivl__esi.exit1826:                      ; preds = %2993, %2991
  %2997 = phi i64 [ %.pre185, %2991 ], [ %2951, %2993 ]
  %2998 = phi i64 [ %.pre184, %2991 ], [ %2983, %2993 ]
  %2999 = phi i64 [ %.pre183, %2991 ], [ %2995, %2993 ]
  %3000 = phi %struct.Memory* [ %2992, %2991 ], [ %2917, %2993 ]
  %.tr56 = trunc i64 %2999 to i32
  %3001 = shl i32 %.tr56, 3
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RAX.i175, align 8
  %3003 = lshr i64 %2999, 29
  %3004 = trunc i64 %3003 to i8
  %3005 = and i8 %3004, 1
  store i8 %3005, i8* %12, align 1
  %3006 = and i32 %3001, 248
  %3007 = tail call i32 @llvm.ctpop.i32(i32 %3006)
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  store i8 %3010, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3011 = icmp eq i32 %3001, 0
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %15, align 1
  %3013 = lshr i32 %.tr56, 28
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  store i8 %3015, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3016 = add i64 %2997, -16
  %3017 = add i64 %2998, 6
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = zext i32 %3019 to i64
  store i64 %3020, i64* %RDI.i190, align 8
  %3021 = add i64 %2997, -156
  %3022 = add i64 %2998, 12
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  store i32 %3001, i32* %3023, align 4
  %3024 = load i32, i32* %EDI.i2291, align 4
  %3025 = zext i32 %3024 to i64
  %3026 = load i64, i64* %3, align 8
  store i64 %3025, i64* %RAX.i175, align 8
  %3027 = sext i32 %3024 to i64
  %3028 = lshr i64 %3027, 32
  store i64 %3028, i64* %1645, align 8
  %3029 = load i32, i32* %ESI.i2339, align 4
  %3030 = add i64 %3026, 5
  store i64 %3030, i64* %3, align 8
  %3031 = sext i32 %3029 to i64
  %3032 = shl nuw i64 %3028, 32
  %3033 = or i64 %3032, %3025
  %3034 = sdiv i64 %3033, %3031
  %3035 = shl i64 %3034, 32
  %3036 = ashr exact i64 %3035, 32
  %3037 = icmp eq i64 %3034, %3036
  br i1 %3037, label %3040, label %3038

; <label>:3038:                                   ; preds = %routine_idivl__esi.exit1826
  %3039 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3030, %struct.Memory* %3000)
  %.pre186 = load i64, i64* %3, align 8
  %.pre187 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1808

; <label>:3040:                                   ; preds = %routine_idivl__esi.exit1826
  %3041 = srem i64 %3033, %3031
  %3042 = and i64 %3034, 4294967295
  store i64 %3042, i64* %RAX.i175, align 8
  %3043 = and i64 %3041, 4294967295
  store i64 %3043, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3044 = trunc i64 %3041 to i32
  br label %routine_idivl__esi.exit1808

routine_idivl__esi.exit1808:                      ; preds = %3040, %3038
  %3045 = phi i32 [ %.pre187, %3038 ], [ %3044, %3040 ]
  %3046 = phi i64 [ %.pre186, %3038 ], [ %3030, %3040 ]
  %3047 = phi %struct.Memory* [ %3039, %3038 ], [ %3000, %3040 ]
  %3048 = load i64, i64* %RBP.i, align 8
  %3049 = add i64 %3048, -156
  %3050 = add i64 %3046, 6
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  %3052 = load i32, i32* %3051, align 4
  %3053 = add i32 %3045, %3052
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RDI.i190, align 8
  %3055 = icmp ult i32 %3053, %3052
  %3056 = icmp ult i32 %3053, %3045
  %3057 = or i1 %3055, %3056
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %12, align 1
  %3059 = and i32 %3053, 255
  %3060 = tail call i32 @llvm.ctpop.i32(i32 %3059)
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = xor i8 %3062, 1
  store i8 %3063, i8* %13, align 1
  %3064 = xor i32 %3045, %3052
  %3065 = xor i32 %3064, %3053
  %3066 = lshr i32 %3065, 4
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  store i8 %3068, i8* %14, align 1
  %3069 = icmp eq i32 %3053, 0
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %15, align 1
  %3071 = lshr i32 %3053, 31
  %3072 = trunc i32 %3071 to i8
  store i8 %3072, i8* %16, align 1
  %3073 = lshr i32 %3052, 31
  %3074 = lshr i32 %3045, 31
  %3075 = xor i32 %3071, %3073
  %3076 = xor i32 %3071, %3074
  %3077 = add nuw nsw i32 %3075, %3076
  %3078 = icmp eq i32 %3077, 2
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %17, align 1
  %3080 = sext i32 %3053 to i64
  store i64 %3080, i64* %86, align 8
  %3081 = load i64, i64* %RCX.i586, align 8
  %3082 = add i64 %3081, %3080
  %3083 = add i64 %3046, 16
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i8*
  store i8 1, i8* %3084, align 1
  %3085 = load i64, i64* %RBP.i, align 8
  %3086 = add i64 %3085, -8
  %3087 = load i64, i64* %3, align 8
  %3088 = add i64 %3087, 4
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3086 to i64*
  %3090 = load i64, i64* %3089, align 8
  store i64 %3090, i64* %RCX.i586, align 8
  %3091 = add i64 %3090, 48
  %3092 = add i64 %3087, 8
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3091 to i64*
  %3094 = load i64, i64* %3093, align 8
  store i64 %3094, i64* %RCX.i586, align 8
  %3095 = add i64 %3094, 6504
  %3096 = add i64 %3087, 15
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i64*
  %3098 = load i64, i64* %3097, align 8
  store i64 %3098, i64* %RCX.i586, align 8
  %3099 = add i64 %3087, 18
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to i64*
  %3101 = load i64, i64* %3100, align 8
  store i64 %3101, i64* %RCX.i586, align 8
  %3102 = add i64 %3085, -12
  %3103 = add i64 %3087, 22
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to i32*
  %3105 = load i32, i32* %3104, align 4
  %3106 = sext i32 %3105 to i64
  store i64 %3106, i64* %86, align 8
  %3107 = shl nsw i64 %3106, 3
  %3108 = add i64 %3107, %3101
  %3109 = add i64 %3087, 26
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i64*
  %3111 = load i64, i64* %3110, align 8
  store i64 %3111, i64* %RCX.i586, align 8
  %3112 = add i64 %3085, -16
  %3113 = add i64 %3087, 30
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i32*
  %3115 = load i32, i32* %3114, align 4
  %3116 = sext i32 %3115 to i64
  store i64 %3116, i64* %86, align 8
  %3117 = shl nsw i64 %3116, 3
  %3118 = add i64 %3117, %3111
  %3119 = add i64 %3087, 34
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i64*
  %3121 = load i64, i64* %3120, align 8
  store i64 %3121, i64* %RCX.i586, align 8
  %3122 = add i64 %3087, 38
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i16*
  %3124 = load i16, i16* %3123, align 2
  store i16 %3124, i16* %R9W.i1771, align 2
  %3125 = add i64 %3087, 42
  store i64 %3125, i64* %3, align 8
  %3126 = load i64, i64* %3089, align 8
  store i64 %3126, i64* %RCX.i586, align 8
  %3127 = add i64 %3126, 40
  %3128 = add i64 %3087, 46
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i64*
  %3130 = load i64, i64* %3129, align 8
  store i64 %3130, i64* %RCX.i586, align 8
  %3131 = add i64 %3130, 6504
  %3132 = add i64 %3087, 53
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i64*
  %3134 = load i64, i64* %3133, align 8
  store i64 %3134, i64* %RCX.i586, align 8
  %3135 = add i64 %3087, 56
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %RCX.i586, align 8
  %3138 = add i64 %3087, 60
  store i64 %3138, i64* %3, align 8
  %3139 = load i32, i32* %3104, align 4
  %3140 = sext i32 %3139 to i64
  store i64 %3140, i64* %86, align 8
  %3141 = shl nsw i64 %3140, 3
  %3142 = add i64 %3141, %3137
  %3143 = add i64 %3087, 64
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i64*
  %3145 = load i64, i64* %3144, align 8
  store i64 %3145, i64* %RCX.i586, align 8
  %3146 = add i64 %3087, 67
  store i64 %3146, i64* %3, align 8
  %3147 = load i32, i32* %3114, align 4
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RAX.i175, align 8
  %3149 = sext i32 %3147 to i64
  %3150 = lshr i64 %3149, 32
  store i64 %3150, i64* %1645, align 8
  %3151 = load i32, i32* %ESI.i2339, align 4
  %3152 = add i64 %3087, 72
  store i64 %3152, i64* %3, align 8
  %3153 = sext i32 %3151 to i64
  %3154 = shl nuw i64 %3150, 32
  %3155 = or i64 %3154, %3148
  %3156 = sdiv i64 %3155, %3153
  %3157 = shl i64 %3156, 32
  %3158 = ashr exact i64 %3157, 32
  %3159 = icmp eq i64 %3156, %3158
  br i1 %3159, label %3162, label %3160

; <label>:3160:                                   ; preds = %routine_idivl__esi.exit1808
  %3161 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3152, %struct.Memory* %3047)
  %.pre188 = load i64, i64* %RAX.i175, align 8
  %.pre189 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1745

; <label>:3162:                                   ; preds = %routine_idivl__esi.exit1808
  %3163 = srem i64 %3155, %3153
  %3164 = and i64 %3156, 4294967295
  store i64 %3164, i64* %RAX.i175, align 8
  %3165 = and i64 %3163, 4294967295
  store i64 %3165, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1745

routine_idivl__esi.exit1745:                      ; preds = %3162, %3160
  %3166 = phi i64 [ %.pre189, %3160 ], [ %3152, %3162 ]
  %3167 = phi i64 [ %.pre188, %3160 ], [ %3164, %3162 ]
  %3168 = phi %struct.Memory* [ %3161, %3160 ], [ %3047, %3162 ]
  %.tr59 = trunc i64 %3167 to i32
  %3169 = shl i32 %.tr59, 3
  %3170 = zext i32 %3169 to i64
  store i64 %3170, i64* %RAX.i175, align 8
  %3171 = lshr i64 %3167, 29
  %3172 = trunc i64 %3171 to i8
  %3173 = and i8 %3172, 1
  store i8 %3173, i8* %12, align 1
  %3174 = and i32 %3169, 248
  %3175 = tail call i32 @llvm.ctpop.i32(i32 %3174)
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  %3178 = xor i8 %3177, 1
  store i8 %3178, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3179 = icmp eq i32 %3169, 0
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %15, align 1
  %3181 = lshr i32 %.tr59, 28
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  store i8 %3183, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3184 = load i64, i64* %RBP.i, align 8
  %3185 = add i64 %3184, -16
  %3186 = add i64 %3166, 6
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  %3188 = load i32, i32* %3187, align 4
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RDI.i190, align 8
  %3190 = add i64 %3184, -160
  %3191 = add i64 %3166, 12
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i32*
  store i32 %3169, i32* %3192, align 4
  %3193 = load i32, i32* %EDI.i2291, align 4
  %3194 = zext i32 %3193 to i64
  %3195 = load i64, i64* %3, align 8
  store i64 %3194, i64* %RAX.i175, align 8
  %3196 = sext i32 %3193 to i64
  %3197 = lshr i64 %3196, 32
  store i64 %3197, i64* %1645, align 8
  %3198 = load i32, i32* %ESI.i2339, align 4
  %3199 = add i64 %3195, 5
  store i64 %3199, i64* %3, align 8
  %3200 = sext i32 %3198 to i64
  %3201 = shl nuw i64 %3197, 32
  %3202 = or i64 %3201, %3194
  %3203 = sdiv i64 %3202, %3200
  %3204 = shl i64 %3203, 32
  %3205 = ashr exact i64 %3204, 32
  %3206 = icmp eq i64 %3203, %3205
  br i1 %3206, label %3209, label %3207

; <label>:3207:                                   ; preds = %routine_idivl__esi.exit1745
  %3208 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3199, %struct.Memory* %3168)
  %.pre190 = load i64, i64* %3, align 8
  %.pre191 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1728

; <label>:3209:                                   ; preds = %routine_idivl__esi.exit1745
  %3210 = srem i64 %3202, %3200
  %3211 = and i64 %3203, 4294967295
  store i64 %3211, i64* %RAX.i175, align 8
  %3212 = and i64 %3210, 4294967295
  store i64 %3212, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3213 = trunc i64 %3210 to i32
  br label %routine_idivl__esi.exit1728

routine_idivl__esi.exit1728:                      ; preds = %3209, %3207
  %3214 = phi i32 [ %.pre191, %3207 ], [ %3213, %3209 ]
  %3215 = phi i64 [ %.pre190, %3207 ], [ %3199, %3209 ]
  %3216 = phi %struct.Memory* [ %3208, %3207 ], [ %3168, %3209 ]
  %3217 = load i64, i64* %RBP.i, align 8
  %3218 = add i64 %3217, -160
  %3219 = add i64 %3215, 6
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i32*
  %3221 = load i32, i32* %3220, align 4
  %3222 = add i32 %3214, %3221
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RDI.i190, align 8
  %3224 = icmp ult i32 %3222, %3221
  %3225 = icmp ult i32 %3222, %3214
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %12, align 1
  %3228 = and i32 %3222, 255
  %3229 = tail call i32 @llvm.ctpop.i32(i32 %3228)
  %3230 = trunc i32 %3229 to i8
  %3231 = and i8 %3230, 1
  %3232 = xor i8 %3231, 1
  store i8 %3232, i8* %13, align 1
  %3233 = xor i32 %3214, %3221
  %3234 = xor i32 %3233, %3222
  %3235 = lshr i32 %3234, 4
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  store i8 %3237, i8* %14, align 1
  %3238 = icmp eq i32 %3222, 0
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %15, align 1
  %3240 = lshr i32 %3222, 31
  %3241 = trunc i32 %3240 to i8
  store i8 %3241, i8* %16, align 1
  %3242 = lshr i32 %3221, 31
  %3243 = lshr i32 %3214, 31
  %3244 = xor i32 %3240, %3242
  %3245 = xor i32 %3240, %3243
  %3246 = add nuw nsw i32 %3244, %3245
  %3247 = icmp eq i32 %3246, 2
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %17, align 1
  %3249 = sext i32 %3222 to i64
  store i64 %3249, i64* %86, align 8
  %3250 = load i64, i64* %RCX.i586, align 8
  %3251 = shl nsw i64 %3249, 3
  %3252 = add i64 %3250, %3251
  %3253 = add i64 %3215, 15
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3252 to i64*
  %3255 = load i64, i64* %3254, align 8
  store i64 %3255, i64* %RCX.i586, align 8
  %3256 = load i16, i16* %R9W.i1771, align 2
  %3257 = add i64 %3215, 19
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3255 to i16*
  store i16 %3256, i16* %3258, align 2
  %3259 = load i64, i64* %RBP.i, align 8
  %3260 = add i64 %3259, -8
  %3261 = load i64, i64* %3, align 8
  %3262 = add i64 %3261, 4
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3260 to i64*
  %3264 = load i64, i64* %3263, align 8
  store i64 %3264, i64* %RCX.i586, align 8
  %3265 = add i64 %3264, 48
  %3266 = add i64 %3261, 8
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i64*
  %3268 = load i64, i64* %3267, align 8
  store i64 %3268, i64* %RCX.i586, align 8
  %3269 = add i64 %3268, 6504
  %3270 = add i64 %3261, 15
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i64*
  %3272 = load i64, i64* %3271, align 8
  store i64 %3272, i64* %RCX.i586, align 8
  %3273 = add i64 %3261, 18
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i64*
  %3275 = load i64, i64* %3274, align 8
  store i64 %3275, i64* %RCX.i586, align 8
  %3276 = add i64 %3259, -12
  %3277 = add i64 %3261, 22
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i32*
  %3279 = load i32, i32* %3278, align 4
  %3280 = sext i32 %3279 to i64
  store i64 %3280, i64* %86, align 8
  %3281 = shl nsw i64 %3280, 3
  %3282 = add i64 %3281, %3275
  %3283 = add i64 %3261, 26
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i64*
  %3285 = load i64, i64* %3284, align 8
  store i64 %3285, i64* %RCX.i586, align 8
  %3286 = add i64 %3259, -16
  %3287 = add i64 %3261, 30
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i32*
  %3289 = load i32, i32* %3288, align 4
  %3290 = sext i32 %3289 to i64
  store i64 %3290, i64* %86, align 8
  %3291 = shl nsw i64 %3290, 3
  %3292 = add i64 %3291, %3285
  %3293 = add i64 %3261, 34
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i64*
  %3295 = load i64, i64* %3294, align 8
  store i64 %3295, i64* %RCX.i586, align 8
  %3296 = add i64 %3295, 2
  %3297 = add i64 %3261, 39
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3296 to i16*
  %3299 = load i16, i16* %3298, align 2
  store i16 %3299, i16* %R9W.i1771, align 2
  %3300 = add i64 %3261, 43
  store i64 %3300, i64* %3, align 8
  %3301 = load i64, i64* %3263, align 8
  store i64 %3301, i64* %RCX.i586, align 8
  %3302 = add i64 %3301, 40
  %3303 = add i64 %3261, 47
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i64*
  %3305 = load i64, i64* %3304, align 8
  store i64 %3305, i64* %RCX.i586, align 8
  %3306 = add i64 %3305, 6504
  %3307 = add i64 %3261, 54
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i64*
  %3309 = load i64, i64* %3308, align 8
  store i64 %3309, i64* %RCX.i586, align 8
  %3310 = add i64 %3261, 57
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3309 to i64*
  %3312 = load i64, i64* %3311, align 8
  store i64 %3312, i64* %RCX.i586, align 8
  %3313 = add i64 %3261, 61
  store i64 %3313, i64* %3, align 8
  %3314 = load i32, i32* %3278, align 4
  %3315 = sext i32 %3314 to i64
  store i64 %3315, i64* %86, align 8
  %3316 = shl nsw i64 %3315, 3
  %3317 = add i64 %3316, %3312
  %3318 = add i64 %3261, 65
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3317 to i64*
  %3320 = load i64, i64* %3319, align 8
  store i64 %3320, i64* %RCX.i586, align 8
  %3321 = add i64 %3261, 68
  store i64 %3321, i64* %3, align 8
  %3322 = load i32, i32* %3288, align 4
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RAX.i175, align 8
  %3324 = sext i32 %3322 to i64
  %3325 = lshr i64 %3324, 32
  store i64 %3325, i64* %1645, align 8
  %3326 = load i32, i32* %ESI.i2339, align 4
  %3327 = add i64 %3261, 73
  store i64 %3327, i64* %3, align 8
  %3328 = sext i32 %3326 to i64
  %3329 = shl nuw i64 %3325, 32
  %3330 = or i64 %3329, %3323
  %3331 = sdiv i64 %3330, %3328
  %3332 = shl i64 %3331, 32
  %3333 = ashr exact i64 %3332, 32
  %3334 = icmp eq i64 %3331, %3333
  br i1 %3334, label %3337, label %3335

; <label>:3335:                                   ; preds = %routine_idivl__esi.exit1728
  %3336 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3327, %struct.Memory* %3216)
  %.pre192 = load i64, i64* %RAX.i175, align 8
  %.pre193 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1661

; <label>:3337:                                   ; preds = %routine_idivl__esi.exit1728
  %3338 = srem i64 %3330, %3328
  %3339 = and i64 %3331, 4294967295
  store i64 %3339, i64* %RAX.i175, align 8
  %3340 = and i64 %3338, 4294967295
  store i64 %3340, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1661

routine_idivl__esi.exit1661:                      ; preds = %3337, %3335
  %3341 = phi i64 [ %.pre193, %3335 ], [ %3327, %3337 ]
  %3342 = phi i64 [ %.pre192, %3335 ], [ %3339, %3337 ]
  %3343 = phi %struct.Memory* [ %3336, %3335 ], [ %3216, %3337 ]
  %.tr62 = trunc i64 %3342 to i32
  %3344 = shl i32 %.tr62, 3
  %3345 = zext i32 %3344 to i64
  store i64 %3345, i64* %RAX.i175, align 8
  %3346 = lshr i64 %3342, 29
  %3347 = trunc i64 %3346 to i8
  %3348 = and i8 %3347, 1
  store i8 %3348, i8* %12, align 1
  %3349 = and i32 %3344, 248
  %3350 = tail call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  store i8 %3353, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3354 = icmp eq i32 %3344, 0
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %15, align 1
  %3356 = lshr i32 %.tr62, 28
  %3357 = trunc i32 %3356 to i8
  %3358 = and i8 %3357, 1
  store i8 %3358, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3359 = load i64, i64* %RBP.i, align 8
  %3360 = add i64 %3359, -16
  %3361 = add i64 %3341, 6
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RDI.i190, align 8
  %3365 = add i64 %3359, -164
  %3366 = add i64 %3341, 12
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i32*
  store i32 %3344, i32* %3367, align 4
  %3368 = load i32, i32* %EDI.i2291, align 4
  %3369 = zext i32 %3368 to i64
  %3370 = load i64, i64* %3, align 8
  store i64 %3369, i64* %RAX.i175, align 8
  %3371 = sext i32 %3368 to i64
  %3372 = lshr i64 %3371, 32
  store i64 %3372, i64* %1645, align 8
  %3373 = load i32, i32* %ESI.i2339, align 4
  %3374 = add i64 %3370, 5
  store i64 %3374, i64* %3, align 8
  %3375 = sext i32 %3373 to i64
  %3376 = shl nuw i64 %3372, 32
  %3377 = or i64 %3376, %3369
  %3378 = sdiv i64 %3377, %3375
  %3379 = shl i64 %3378, 32
  %3380 = ashr exact i64 %3379, 32
  %3381 = icmp eq i64 %3378, %3380
  br i1 %3381, label %3384, label %3382

; <label>:3382:                                   ; preds = %routine_idivl__esi.exit1661
  %3383 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3374, %struct.Memory* %3343)
  %.pre194 = load i64, i64* %3, align 8
  %.pre195 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1645

; <label>:3384:                                   ; preds = %routine_idivl__esi.exit1661
  %3385 = srem i64 %3377, %3375
  %3386 = and i64 %3378, 4294967295
  store i64 %3386, i64* %RAX.i175, align 8
  %3387 = and i64 %3385, 4294967295
  store i64 %3387, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3388 = trunc i64 %3385 to i32
  br label %routine_idivl__esi.exit1645

routine_idivl__esi.exit1645:                      ; preds = %3384, %3382
  %3389 = phi i32 [ %.pre195, %3382 ], [ %3388, %3384 ]
  %3390 = phi i64 [ %.pre194, %3382 ], [ %3374, %3384 ]
  %3391 = phi %struct.Memory* [ %3383, %3382 ], [ %3343, %3384 ]
  %3392 = load i64, i64* %RBP.i, align 8
  %3393 = add i64 %3392, -164
  %3394 = add i64 %3390, 6
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = add i32 %3389, %3396
  %3398 = zext i32 %3397 to i64
  store i64 %3398, i64* %RDI.i190, align 8
  %3399 = icmp ult i32 %3397, %3396
  %3400 = icmp ult i32 %3397, %3389
  %3401 = or i1 %3399, %3400
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %12, align 1
  %3403 = and i32 %3397, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %13, align 1
  %3408 = xor i32 %3389, %3396
  %3409 = xor i32 %3408, %3397
  %3410 = lshr i32 %3409, 4
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  store i8 %3412, i8* %14, align 1
  %3413 = icmp eq i32 %3397, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %15, align 1
  %3415 = lshr i32 %3397, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %16, align 1
  %3417 = lshr i32 %3396, 31
  %3418 = lshr i32 %3389, 31
  %3419 = xor i32 %3415, %3417
  %3420 = xor i32 %3415, %3418
  %3421 = add nuw nsw i32 %3419, %3420
  %3422 = icmp eq i32 %3421, 2
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %17, align 1
  %3424 = sext i32 %3397 to i64
  store i64 %3424, i64* %86, align 8
  %3425 = load i64, i64* %RCX.i586, align 8
  %3426 = shl nsw i64 %3424, 3
  %3427 = add i64 %3425, %3426
  %3428 = add i64 %3390, 15
  store i64 %3428, i64* %3, align 8
  %3429 = inttoptr i64 %3427 to i64*
  %3430 = load i64, i64* %3429, align 8
  store i64 %3430, i64* %RCX.i586, align 8
  %3431 = add i64 %3430, 2
  %3432 = load i16, i16* %R9W.i1771, align 2
  %3433 = add i64 %3390, 20
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3431 to i16*
  store i16 %3432, i16* %3434, align 2
  %3435 = load i64, i64* %RBP.i, align 8
  %3436 = add i64 %3435, -8
  %3437 = load i64, i64* %3, align 8
  %3438 = add i64 %3437, 4
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3436 to i64*
  %3440 = load i64, i64* %3439, align 8
  store i64 %3440, i64* %RCX.i586, align 8
  %3441 = add i64 %3440, 48
  %3442 = add i64 %3437, 8
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i64*
  %3444 = load i64, i64* %3443, align 8
  store i64 %3444, i64* %RCX.i586, align 8
  %3445 = add i64 %3444, 6504
  %3446 = add i64 %3437, 15
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i64*
  %3448 = load i64, i64* %3447, align 8
  store i64 %3448, i64* %RCX.i586, align 8
  %3449 = add i64 %3448, 8
  %3450 = add i64 %3437, 19
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3449 to i64*
  %3452 = load i64, i64* %3451, align 8
  store i64 %3452, i64* %RCX.i586, align 8
  %3453 = add i64 %3435, -12
  %3454 = add i64 %3437, 23
  store i64 %3454, i64* %3, align 8
  %3455 = inttoptr i64 %3453 to i32*
  %3456 = load i32, i32* %3455, align 4
  %3457 = sext i32 %3456 to i64
  store i64 %3457, i64* %86, align 8
  %3458 = shl nsw i64 %3457, 3
  %3459 = add i64 %3458, %3452
  %3460 = add i64 %3437, 27
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3459 to i64*
  %3462 = load i64, i64* %3461, align 8
  store i64 %3462, i64* %RCX.i586, align 8
  %3463 = add i64 %3435, -16
  %3464 = add i64 %3437, 31
  store i64 %3464, i64* %3, align 8
  %3465 = inttoptr i64 %3463 to i32*
  %3466 = load i32, i32* %3465, align 4
  %3467 = sext i32 %3466 to i64
  store i64 %3467, i64* %86, align 8
  %3468 = shl nsw i64 %3467, 3
  %3469 = add i64 %3468, %3462
  %3470 = add i64 %3437, 35
  store i64 %3470, i64* %3, align 8
  %3471 = inttoptr i64 %3469 to i64*
  %3472 = load i64, i64* %3471, align 8
  store i64 %3472, i64* %RCX.i586, align 8
  %3473 = add i64 %3437, 39
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i16*
  %3475 = load i16, i16* %3474, align 2
  store i16 %3475, i16* %R9W.i1771, align 2
  %3476 = add i64 %3437, 43
  store i64 %3476, i64* %3, align 8
  %3477 = load i64, i64* %3439, align 8
  store i64 %3477, i64* %RCX.i586, align 8
  %3478 = add i64 %3477, 40
  %3479 = add i64 %3437, 47
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i64*
  %3481 = load i64, i64* %3480, align 8
  store i64 %3481, i64* %RCX.i586, align 8
  %3482 = add i64 %3481, 6504
  %3483 = add i64 %3437, 54
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i64*
  %3485 = load i64, i64* %3484, align 8
  store i64 %3485, i64* %RCX.i586, align 8
  %3486 = add i64 %3485, 8
  %3487 = add i64 %3437, 58
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i64*
  %3489 = load i64, i64* %3488, align 8
  store i64 %3489, i64* %RCX.i586, align 8
  %3490 = add i64 %3437, 62
  store i64 %3490, i64* %3, align 8
  %3491 = load i32, i32* %3455, align 4
  %3492 = sext i32 %3491 to i64
  store i64 %3492, i64* %86, align 8
  %3493 = shl nsw i64 %3492, 3
  %3494 = add i64 %3493, %3489
  %3495 = add i64 %3437, 66
  store i64 %3495, i64* %3, align 8
  %3496 = inttoptr i64 %3494 to i64*
  %3497 = load i64, i64* %3496, align 8
  store i64 %3497, i64* %RCX.i586, align 8
  %3498 = add i64 %3437, 69
  store i64 %3498, i64* %3, align 8
  %3499 = load i32, i32* %3465, align 4
  %3500 = zext i32 %3499 to i64
  store i64 %3500, i64* %RAX.i175, align 8
  %3501 = sext i32 %3499 to i64
  %3502 = lshr i64 %3501, 32
  store i64 %3502, i64* %1645, align 8
  %3503 = load i32, i32* %ESI.i2339, align 4
  %3504 = add i64 %3437, 74
  store i64 %3504, i64* %3, align 8
  %3505 = sext i32 %3503 to i64
  %3506 = shl nuw i64 %3502, 32
  %3507 = or i64 %3506, %3500
  %3508 = sdiv i64 %3507, %3505
  %3509 = shl i64 %3508, 32
  %3510 = ashr exact i64 %3509, 32
  %3511 = icmp eq i64 %3508, %3510
  br i1 %3511, label %3514, label %3512

; <label>:3512:                                   ; preds = %routine_idivl__esi.exit1645
  %3513 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3504, %struct.Memory* %3391)
  %.pre196 = load i64, i64* %RAX.i175, align 8
  %.pre197 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1578

; <label>:3514:                                   ; preds = %routine_idivl__esi.exit1645
  %3515 = srem i64 %3507, %3505
  %3516 = and i64 %3508, 4294967295
  store i64 %3516, i64* %RAX.i175, align 8
  %3517 = and i64 %3515, 4294967295
  store i64 %3517, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1578

routine_idivl__esi.exit1578:                      ; preds = %3514, %3512
  %3518 = phi i64 [ %.pre197, %3512 ], [ %3504, %3514 ]
  %3519 = phi i64 [ %.pre196, %3512 ], [ %3516, %3514 ]
  %3520 = phi %struct.Memory* [ %3513, %3512 ], [ %3391, %3514 ]
  %.tr65 = trunc i64 %3519 to i32
  %3521 = shl i32 %.tr65, 3
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RAX.i175, align 8
  %3523 = lshr i64 %3519, 29
  %3524 = trunc i64 %3523 to i8
  %3525 = and i8 %3524, 1
  store i8 %3525, i8* %12, align 1
  %3526 = and i32 %3521, 248
  %3527 = tail call i32 @llvm.ctpop.i32(i32 %3526)
  %3528 = trunc i32 %3527 to i8
  %3529 = and i8 %3528, 1
  %3530 = xor i8 %3529, 1
  store i8 %3530, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3531 = icmp eq i32 %3521, 0
  %3532 = zext i1 %3531 to i8
  store i8 %3532, i8* %15, align 1
  %3533 = lshr i32 %.tr65, 28
  %3534 = trunc i32 %3533 to i8
  %3535 = and i8 %3534, 1
  store i8 %3535, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3536 = load i64, i64* %RBP.i, align 8
  %3537 = add i64 %3536, -16
  %3538 = add i64 %3518, 6
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  %3540 = load i32, i32* %3539, align 4
  %3541 = zext i32 %3540 to i64
  store i64 %3541, i64* %RDI.i190, align 8
  %3542 = add i64 %3536, -168
  %3543 = add i64 %3518, 12
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3542 to i32*
  store i32 %3521, i32* %3544, align 4
  %3545 = load i32, i32* %EDI.i2291, align 4
  %3546 = zext i32 %3545 to i64
  %3547 = load i64, i64* %3, align 8
  store i64 %3546, i64* %RAX.i175, align 8
  %3548 = sext i32 %3545 to i64
  %3549 = lshr i64 %3548, 32
  store i64 %3549, i64* %1645, align 8
  %3550 = load i32, i32* %ESI.i2339, align 4
  %3551 = add i64 %3547, 5
  store i64 %3551, i64* %3, align 8
  %3552 = sext i32 %3550 to i64
  %3553 = shl nuw i64 %3549, 32
  %3554 = or i64 %3553, %3546
  %3555 = sdiv i64 %3554, %3552
  %3556 = shl i64 %3555, 32
  %3557 = ashr exact i64 %3556, 32
  %3558 = icmp eq i64 %3555, %3557
  br i1 %3558, label %3561, label %3559

; <label>:3559:                                   ; preds = %routine_idivl__esi.exit1578
  %3560 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3551, %struct.Memory* %3520)
  %.pre198 = load i64, i64* %3, align 8
  %.pre199 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1561

; <label>:3561:                                   ; preds = %routine_idivl__esi.exit1578
  %3562 = srem i64 %3554, %3552
  %3563 = and i64 %3555, 4294967295
  store i64 %3563, i64* %RAX.i175, align 8
  %3564 = and i64 %3562, 4294967295
  store i64 %3564, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3565 = trunc i64 %3562 to i32
  br label %routine_idivl__esi.exit1561

routine_idivl__esi.exit1561:                      ; preds = %3561, %3559
  %3566 = phi i32 [ %.pre199, %3559 ], [ %3565, %3561 ]
  %3567 = phi i64 [ %.pre198, %3559 ], [ %3551, %3561 ]
  %3568 = phi %struct.Memory* [ %3560, %3559 ], [ %3520, %3561 ]
  %3569 = load i64, i64* %RBP.i, align 8
  %3570 = add i64 %3569, -168
  %3571 = add i64 %3567, 6
  store i64 %3571, i64* %3, align 8
  %3572 = inttoptr i64 %3570 to i32*
  %3573 = load i32, i32* %3572, align 4
  %3574 = add i32 %3566, %3573
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %RDI.i190, align 8
  %3576 = icmp ult i32 %3574, %3573
  %3577 = icmp ult i32 %3574, %3566
  %3578 = or i1 %3576, %3577
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %12, align 1
  %3580 = and i32 %3574, 255
  %3581 = tail call i32 @llvm.ctpop.i32(i32 %3580)
  %3582 = trunc i32 %3581 to i8
  %3583 = and i8 %3582, 1
  %3584 = xor i8 %3583, 1
  store i8 %3584, i8* %13, align 1
  %3585 = xor i32 %3566, %3573
  %3586 = xor i32 %3585, %3574
  %3587 = lshr i32 %3586, 4
  %3588 = trunc i32 %3587 to i8
  %3589 = and i8 %3588, 1
  store i8 %3589, i8* %14, align 1
  %3590 = icmp eq i32 %3574, 0
  %3591 = zext i1 %3590 to i8
  store i8 %3591, i8* %15, align 1
  %3592 = lshr i32 %3574, 31
  %3593 = trunc i32 %3592 to i8
  store i8 %3593, i8* %16, align 1
  %3594 = lshr i32 %3573, 31
  %3595 = lshr i32 %3566, 31
  %3596 = xor i32 %3592, %3594
  %3597 = xor i32 %3592, %3595
  %3598 = add nuw nsw i32 %3596, %3597
  %3599 = icmp eq i32 %3598, 2
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %17, align 1
  %3601 = sext i32 %3574 to i64
  store i64 %3601, i64* %86, align 8
  %3602 = load i64, i64* %RCX.i586, align 8
  %3603 = shl nsw i64 %3601, 3
  %3604 = add i64 %3602, %3603
  %3605 = add i64 %3567, 15
  store i64 %3605, i64* %3, align 8
  %3606 = inttoptr i64 %3604 to i64*
  %3607 = load i64, i64* %3606, align 8
  store i64 %3607, i64* %RCX.i586, align 8
  %3608 = load i16, i16* %R9W.i1771, align 2
  %3609 = add i64 %3567, 19
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3607 to i16*
  store i16 %3608, i16* %3610, align 2
  %3611 = load i64, i64* %RBP.i, align 8
  %3612 = add i64 %3611, -8
  %3613 = load i64, i64* %3, align 8
  %3614 = add i64 %3613, 4
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3612 to i64*
  %3616 = load i64, i64* %3615, align 8
  store i64 %3616, i64* %RCX.i586, align 8
  %3617 = add i64 %3616, 48
  %3618 = add i64 %3613, 8
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i64*
  %3620 = load i64, i64* %3619, align 8
  store i64 %3620, i64* %RCX.i586, align 8
  %3621 = add i64 %3620, 6504
  %3622 = add i64 %3613, 15
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i64*
  %3624 = load i64, i64* %3623, align 8
  store i64 %3624, i64* %RCX.i586, align 8
  %3625 = add i64 %3624, 8
  %3626 = add i64 %3613, 19
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i64*
  %3628 = load i64, i64* %3627, align 8
  store i64 %3628, i64* %RCX.i586, align 8
  %3629 = add i64 %3611, -12
  %3630 = add i64 %3613, 23
  store i64 %3630, i64* %3, align 8
  %3631 = inttoptr i64 %3629 to i32*
  %3632 = load i32, i32* %3631, align 4
  %3633 = sext i32 %3632 to i64
  store i64 %3633, i64* %86, align 8
  %3634 = shl nsw i64 %3633, 3
  %3635 = add i64 %3634, %3628
  %3636 = add i64 %3613, 27
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i64*
  %3638 = load i64, i64* %3637, align 8
  store i64 %3638, i64* %RCX.i586, align 8
  %3639 = add i64 %3611, -16
  %3640 = add i64 %3613, 31
  store i64 %3640, i64* %3, align 8
  %3641 = inttoptr i64 %3639 to i32*
  %3642 = load i32, i32* %3641, align 4
  %3643 = sext i32 %3642 to i64
  store i64 %3643, i64* %86, align 8
  %3644 = shl nsw i64 %3643, 3
  %3645 = add i64 %3644, %3638
  %3646 = add i64 %3613, 35
  store i64 %3646, i64* %3, align 8
  %3647 = inttoptr i64 %3645 to i64*
  %3648 = load i64, i64* %3647, align 8
  store i64 %3648, i64* %RCX.i586, align 8
  %3649 = add i64 %3648, 2
  %3650 = add i64 %3613, 40
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i16*
  %3652 = load i16, i16* %3651, align 2
  store i16 %3652, i16* %R9W.i1771, align 2
  %3653 = add i64 %3613, 44
  store i64 %3653, i64* %3, align 8
  %3654 = load i64, i64* %3615, align 8
  store i64 %3654, i64* %RCX.i586, align 8
  %3655 = add i64 %3654, 40
  %3656 = add i64 %3613, 48
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i64*
  %3658 = load i64, i64* %3657, align 8
  store i64 %3658, i64* %RCX.i586, align 8
  %3659 = add i64 %3658, 6504
  %3660 = add i64 %3613, 55
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3659 to i64*
  %3662 = load i64, i64* %3661, align 8
  store i64 %3662, i64* %RCX.i586, align 8
  %3663 = add i64 %3662, 8
  %3664 = add i64 %3613, 59
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i64*
  %3666 = load i64, i64* %3665, align 8
  store i64 %3666, i64* %RCX.i586, align 8
  %3667 = add i64 %3613, 63
  store i64 %3667, i64* %3, align 8
  %3668 = load i32, i32* %3631, align 4
  %3669 = sext i32 %3668 to i64
  store i64 %3669, i64* %86, align 8
  %3670 = shl nsw i64 %3669, 3
  %3671 = add i64 %3670, %3666
  %3672 = add i64 %3613, 67
  store i64 %3672, i64* %3, align 8
  %3673 = inttoptr i64 %3671 to i64*
  %3674 = load i64, i64* %3673, align 8
  store i64 %3674, i64* %RCX.i586, align 8
  %3675 = add i64 %3613, 70
  store i64 %3675, i64* %3, align 8
  %3676 = load i32, i32* %3641, align 4
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RAX.i175, align 8
  %3678 = sext i32 %3676 to i64
  %3679 = lshr i64 %3678, 32
  store i64 %3679, i64* %1645, align 8
  %3680 = load i32, i32* %ESI.i2339, align 4
  %3681 = add i64 %3613, 75
  store i64 %3681, i64* %3, align 8
  %3682 = sext i32 %3680 to i64
  %3683 = shl nuw i64 %3679, 32
  %3684 = or i64 %3683, %3677
  %3685 = sdiv i64 %3684, %3682
  %3686 = shl i64 %3685, 32
  %3687 = ashr exact i64 %3686, 32
  %3688 = icmp eq i64 %3685, %3687
  br i1 %3688, label %3691, label %3689

; <label>:3689:                                   ; preds = %routine_idivl__esi.exit1561
  %3690 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3681, %struct.Memory* %3568)
  %.pre200 = load i64, i64* %RAX.i175, align 8
  %.pre201 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1494

; <label>:3691:                                   ; preds = %routine_idivl__esi.exit1561
  %3692 = srem i64 %3684, %3682
  %3693 = and i64 %3685, 4294967295
  store i64 %3693, i64* %RAX.i175, align 8
  %3694 = and i64 %3692, 4294967295
  store i64 %3694, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1494

routine_idivl__esi.exit1494:                      ; preds = %3691, %3689
  %3695 = phi i64 [ %.pre201, %3689 ], [ %3681, %3691 ]
  %3696 = phi i64 [ %.pre200, %3689 ], [ %3693, %3691 ]
  %3697 = phi %struct.Memory* [ %3690, %3689 ], [ %3568, %3691 ]
  %.tr68 = trunc i64 %3696 to i32
  %3698 = shl i32 %.tr68, 3
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RAX.i175, align 8
  %3700 = lshr i64 %3696, 29
  %3701 = trunc i64 %3700 to i8
  %3702 = and i8 %3701, 1
  store i8 %3702, i8* %12, align 1
  %3703 = and i32 %3698, 248
  %3704 = tail call i32 @llvm.ctpop.i32(i32 %3703)
  %3705 = trunc i32 %3704 to i8
  %3706 = and i8 %3705, 1
  %3707 = xor i8 %3706, 1
  store i8 %3707, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3708 = icmp eq i32 %3698, 0
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %15, align 1
  %3710 = lshr i32 %.tr68, 28
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  store i8 %3712, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3713 = load i64, i64* %RBP.i, align 8
  %3714 = add i64 %3713, -16
  %3715 = add i64 %3695, 6
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3714 to i32*
  %3717 = load i32, i32* %3716, align 4
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RDI.i190, align 8
  %3719 = add i64 %3713, -172
  %3720 = add i64 %3695, 12
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  store i32 %3698, i32* %3721, align 4
  %3722 = load i32, i32* %EDI.i2291, align 4
  %3723 = zext i32 %3722 to i64
  %3724 = load i64, i64* %3, align 8
  store i64 %3723, i64* %RAX.i175, align 8
  %3725 = sext i32 %3722 to i64
  %3726 = lshr i64 %3725, 32
  store i64 %3726, i64* %1645, align 8
  %3727 = load i32, i32* %ESI.i2339, align 4
  %3728 = add i64 %3724, 5
  store i64 %3728, i64* %3, align 8
  %3729 = sext i32 %3727 to i64
  %3730 = shl nuw i64 %3726, 32
  %3731 = or i64 %3730, %3723
  %3732 = sdiv i64 %3731, %3729
  %3733 = shl i64 %3732, 32
  %3734 = ashr exact i64 %3733, 32
  %3735 = icmp eq i64 %3732, %3734
  br i1 %3735, label %3738, label %3736

; <label>:3736:                                   ; preds = %routine_idivl__esi.exit1494
  %3737 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3728, %struct.Memory* %3697)
  %.pre202 = load i64, i64* %3, align 8
  %.pre203 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1476

; <label>:3738:                                   ; preds = %routine_idivl__esi.exit1494
  %3739 = srem i64 %3731, %3729
  %3740 = and i64 %3732, 4294967295
  store i64 %3740, i64* %RAX.i175, align 8
  %3741 = and i64 %3739, 4294967295
  store i64 %3741, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3742 = trunc i64 %3739 to i32
  br label %routine_idivl__esi.exit1476

routine_idivl__esi.exit1476:                      ; preds = %3738, %3736
  %3743 = phi i32 [ %.pre203, %3736 ], [ %3742, %3738 ]
  %3744 = phi i64 [ %.pre202, %3736 ], [ %3728, %3738 ]
  %3745 = phi %struct.Memory* [ %3737, %3736 ], [ %3697, %3738 ]
  %3746 = load i64, i64* %RBP.i, align 8
  %3747 = add i64 %3746, -172
  %3748 = add i64 %3744, 6
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  %3750 = load i32, i32* %3749, align 4
  %3751 = add i32 %3743, %3750
  %3752 = zext i32 %3751 to i64
  store i64 %3752, i64* %RDI.i190, align 8
  %3753 = icmp ult i32 %3751, %3750
  %3754 = icmp ult i32 %3751, %3743
  %3755 = or i1 %3753, %3754
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %12, align 1
  %3757 = and i32 %3751, 255
  %3758 = tail call i32 @llvm.ctpop.i32(i32 %3757)
  %3759 = trunc i32 %3758 to i8
  %3760 = and i8 %3759, 1
  %3761 = xor i8 %3760, 1
  store i8 %3761, i8* %13, align 1
  %3762 = xor i32 %3743, %3750
  %3763 = xor i32 %3762, %3751
  %3764 = lshr i32 %3763, 4
  %3765 = trunc i32 %3764 to i8
  %3766 = and i8 %3765, 1
  store i8 %3766, i8* %14, align 1
  %3767 = icmp eq i32 %3751, 0
  %3768 = zext i1 %3767 to i8
  store i8 %3768, i8* %15, align 1
  %3769 = lshr i32 %3751, 31
  %3770 = trunc i32 %3769 to i8
  store i8 %3770, i8* %16, align 1
  %3771 = lshr i32 %3750, 31
  %3772 = lshr i32 %3743, 31
  %3773 = xor i32 %3769, %3771
  %3774 = xor i32 %3769, %3772
  %3775 = add nuw nsw i32 %3773, %3774
  %3776 = icmp eq i32 %3775, 2
  %3777 = zext i1 %3776 to i8
  store i8 %3777, i8* %17, align 1
  %3778 = sext i32 %3751 to i64
  store i64 %3778, i64* %86, align 8
  %3779 = load i64, i64* %RCX.i586, align 8
  %3780 = shl nsw i64 %3778, 3
  %3781 = add i64 %3779, %3780
  %3782 = add i64 %3744, 15
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3781 to i64*
  %3784 = load i64, i64* %3783, align 8
  store i64 %3784, i64* %RCX.i586, align 8
  %3785 = add i64 %3784, 2
  %3786 = load i16, i16* %R9W.i1771, align 2
  %3787 = add i64 %3744, 20
  store i64 %3787, i64* %3, align 8
  %3788 = inttoptr i64 %3785 to i16*
  store i16 %3786, i16* %3788, align 2
  %3789 = load i64, i64* %RBP.i, align 8
  %3790 = add i64 %3789, -8
  %3791 = load i64, i64* %3, align 8
  %3792 = add i64 %3791, 4
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3790 to i64*
  %3794 = load i64, i64* %3793, align 8
  store i64 %3794, i64* %RCX.i586, align 8
  %3795 = add i64 %3794, 48
  %3796 = add i64 %3791, 8
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3795 to i64*
  %3798 = load i64, i64* %3797, align 8
  store i64 %3798, i64* %RCX.i586, align 8
  %3799 = add i64 %3798, 6480
  %3800 = add i64 %3791, 15
  store i64 %3800, i64* %3, align 8
  %3801 = inttoptr i64 %3799 to i64*
  %3802 = load i64, i64* %3801, align 8
  store i64 %3802, i64* %RCX.i586, align 8
  %3803 = add i64 %3791, 18
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i64*
  %3805 = load i64, i64* %3804, align 8
  store i64 %3805, i64* %RCX.i586, align 8
  %3806 = add i64 %3789, -12
  %3807 = add i64 %3791, 22
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i32*
  %3809 = load i32, i32* %3808, align 4
  %3810 = sext i32 %3809 to i64
  store i64 %3810, i64* %86, align 8
  %3811 = shl nsw i64 %3810, 3
  %3812 = add i64 %3811, %3805
  %3813 = add i64 %3791, 26
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3812 to i64*
  %3815 = load i64, i64* %3814, align 8
  store i64 %3815, i64* %RCX.i586, align 8
  %3816 = add i64 %3789, -16
  %3817 = add i64 %3791, 30
  store i64 %3817, i64* %3, align 8
  %3818 = inttoptr i64 %3816 to i32*
  %3819 = load i32, i32* %3818, align 4
  %3820 = sext i32 %3819 to i64
  store i64 %3820, i64* %86, align 8
  %3821 = shl nsw i64 %3820, 1
  %3822 = add i64 %3821, %3815
  %3823 = add i64 %3791, 35
  store i64 %3823, i64* %3, align 8
  %3824 = inttoptr i64 %3822 to i16*
  %3825 = load i16, i16* %3824, align 2
  store i16 %3825, i16* %R9W.i1771, align 2
  %3826 = add i64 %3791, 39
  store i64 %3826, i64* %3, align 8
  %3827 = load i64, i64* %3793, align 8
  store i64 %3827, i64* %RCX.i586, align 8
  %3828 = add i64 %3827, 40
  %3829 = add i64 %3791, 43
  store i64 %3829, i64* %3, align 8
  %3830 = inttoptr i64 %3828 to i64*
  %3831 = load i64, i64* %3830, align 8
  store i64 %3831, i64* %RCX.i586, align 8
  %3832 = add i64 %3831, 6480
  %3833 = add i64 %3791, 50
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i64*
  %3835 = load i64, i64* %3834, align 8
  store i64 %3835, i64* %RCX.i586, align 8
  %3836 = add i64 %3791, 53
  store i64 %3836, i64* %3, align 8
  %3837 = inttoptr i64 %3835 to i64*
  %3838 = load i64, i64* %3837, align 8
  store i64 %3838, i64* %RCX.i586, align 8
  %3839 = add i64 %3791, 57
  store i64 %3839, i64* %3, align 8
  %3840 = load i32, i32* %3808, align 4
  %3841 = sext i32 %3840 to i64
  store i64 %3841, i64* %86, align 8
  %3842 = shl nsw i64 %3841, 3
  %3843 = add i64 %3842, %3838
  %3844 = add i64 %3791, 61
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i64*
  %3846 = load i64, i64* %3845, align 8
  store i64 %3846, i64* %RCX.i586, align 8
  %3847 = add i64 %3791, 64
  store i64 %3847, i64* %3, align 8
  %3848 = load i32, i32* %3818, align 4
  %3849 = zext i32 %3848 to i64
  store i64 %3849, i64* %RAX.i175, align 8
  %3850 = sext i32 %3848 to i64
  %3851 = lshr i64 %3850, 32
  store i64 %3851, i64* %1645, align 8
  %3852 = load i32, i32* %ESI.i2339, align 4
  %3853 = add i64 %3791, 69
  store i64 %3853, i64* %3, align 8
  %3854 = sext i32 %3852 to i64
  %3855 = shl nuw i64 %3851, 32
  %3856 = or i64 %3855, %3849
  %3857 = sdiv i64 %3856, %3854
  %3858 = shl i64 %3857, 32
  %3859 = ashr exact i64 %3858, 32
  %3860 = icmp eq i64 %3857, %3859
  br i1 %3860, label %3863, label %3861

; <label>:3861:                                   ; preds = %routine_idivl__esi.exit1476
  %3862 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3853, %struct.Memory* %3745)
  %.pre204 = load i64, i64* %RAX.i175, align 8
  %.pre205 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1412

; <label>:3863:                                   ; preds = %routine_idivl__esi.exit1476
  %3864 = srem i64 %3856, %3854
  %3865 = and i64 %3857, 4294967295
  store i64 %3865, i64* %RAX.i175, align 8
  %3866 = and i64 %3864, 4294967295
  store i64 %3866, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1412

routine_idivl__esi.exit1412:                      ; preds = %3863, %3861
  %3867 = phi i64 [ %.pre205, %3861 ], [ %3853, %3863 ]
  %3868 = phi i64 [ %.pre204, %3861 ], [ %3865, %3863 ]
  %3869 = phi %struct.Memory* [ %3862, %3861 ], [ %3745, %3863 ]
  %.tr71 = trunc i64 %3868 to i32
  %3870 = shl i32 %.tr71, 3
  %3871 = zext i32 %3870 to i64
  store i64 %3871, i64* %RAX.i175, align 8
  %3872 = lshr i64 %3868, 29
  %3873 = trunc i64 %3872 to i8
  %3874 = and i8 %3873, 1
  store i8 %3874, i8* %12, align 1
  %3875 = and i32 %3870, 248
  %3876 = tail call i32 @llvm.ctpop.i32(i32 %3875)
  %3877 = trunc i32 %3876 to i8
  %3878 = and i8 %3877, 1
  %3879 = xor i8 %3878, 1
  store i8 %3879, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3880 = icmp eq i32 %3870, 0
  %3881 = zext i1 %3880 to i8
  store i8 %3881, i8* %15, align 1
  %3882 = lshr i32 %.tr71, 28
  %3883 = trunc i32 %3882 to i8
  %3884 = and i8 %3883, 1
  store i8 %3884, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3885 = load i64, i64* %RBP.i, align 8
  %3886 = add i64 %3885, -16
  %3887 = add i64 %3867, 6
  store i64 %3887, i64* %3, align 8
  %3888 = inttoptr i64 %3886 to i32*
  %3889 = load i32, i32* %3888, align 4
  %3890 = zext i32 %3889 to i64
  store i64 %3890, i64* %RDI.i190, align 8
  %3891 = add i64 %3885, -176
  %3892 = add i64 %3867, 12
  store i64 %3892, i64* %3, align 8
  %3893 = inttoptr i64 %3891 to i32*
  store i32 %3870, i32* %3893, align 4
  %3894 = load i32, i32* %EDI.i2291, align 4
  %3895 = zext i32 %3894 to i64
  %3896 = load i64, i64* %3, align 8
  store i64 %3895, i64* %RAX.i175, align 8
  %3897 = sext i32 %3894 to i64
  %3898 = lshr i64 %3897, 32
  store i64 %3898, i64* %1645, align 8
  %3899 = load i32, i32* %ESI.i2339, align 4
  %3900 = add i64 %3896, 5
  store i64 %3900, i64* %3, align 8
  %3901 = sext i32 %3899 to i64
  %3902 = shl nuw i64 %3898, 32
  %3903 = or i64 %3902, %3895
  %3904 = sdiv i64 %3903, %3901
  %3905 = shl i64 %3904, 32
  %3906 = ashr exact i64 %3905, 32
  %3907 = icmp eq i64 %3904, %3906
  br i1 %3907, label %3910, label %3908

; <label>:3908:                                   ; preds = %routine_idivl__esi.exit1412
  %3909 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3900, %struct.Memory* %3869)
  %.pre206 = load i64, i64* %3, align 8
  %.pre207 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1394

; <label>:3910:                                   ; preds = %routine_idivl__esi.exit1412
  %3911 = srem i64 %3903, %3901
  %3912 = and i64 %3904, 4294967295
  store i64 %3912, i64* %RAX.i175, align 8
  %3913 = and i64 %3911, 4294967295
  store i64 %3913, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3914 = trunc i64 %3911 to i32
  br label %routine_idivl__esi.exit1394

routine_idivl__esi.exit1394:                      ; preds = %3910, %3908
  %3915 = phi i32 [ %.pre207, %3908 ], [ %3914, %3910 ]
  %3916 = phi i64 [ %.pre206, %3908 ], [ %3900, %3910 ]
  %3917 = phi %struct.Memory* [ %3909, %3908 ], [ %3869, %3910 ]
  %3918 = load i64, i64* %RBP.i, align 8
  %3919 = add i64 %3918, -176
  %3920 = add i64 %3916, 6
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i32*
  %3922 = load i32, i32* %3921, align 4
  %3923 = add i32 %3915, %3922
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RDI.i190, align 8
  %3925 = icmp ult i32 %3923, %3922
  %3926 = icmp ult i32 %3923, %3915
  %3927 = or i1 %3925, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %12, align 1
  %3929 = and i32 %3923, 255
  %3930 = tail call i32 @llvm.ctpop.i32(i32 %3929)
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  store i8 %3933, i8* %13, align 1
  %3934 = xor i32 %3915, %3922
  %3935 = xor i32 %3934, %3923
  %3936 = lshr i32 %3935, 4
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  store i8 %3938, i8* %14, align 1
  %3939 = icmp eq i32 %3923, 0
  %3940 = zext i1 %3939 to i8
  store i8 %3940, i8* %15, align 1
  %3941 = lshr i32 %3923, 31
  %3942 = trunc i32 %3941 to i8
  store i8 %3942, i8* %16, align 1
  %3943 = lshr i32 %3922, 31
  %3944 = lshr i32 %3915, 31
  %3945 = xor i32 %3941, %3943
  %3946 = xor i32 %3941, %3944
  %3947 = add nuw nsw i32 %3945, %3946
  %3948 = icmp eq i32 %3947, 2
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %17, align 1
  %3950 = sext i32 %3923 to i64
  store i64 %3950, i64* %86, align 8
  %3951 = load i64, i64* %RCX.i586, align 8
  %3952 = shl nsw i64 %3950, 1
  %3953 = add i64 %3951, %3952
  %3954 = load i16, i16* %R9W.i1771, align 2
  %3955 = add i64 %3916, 16
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3953 to i16*
  store i16 %3954, i16* %3956, align 2
  %3957 = load i16, i16* %R9W.i1771, align 2
  %3958 = load i64, i64* %3, align 8
  %3959 = sext i16 %3957 to i64
  %3960 = and i64 %3959, 4294967295
  store i64 %3960, i64* %RDX.i756, align 8
  %3961 = load i64, i64* %RBP.i, align 8
  %3962 = add i64 %3961, -20
  %3963 = sext i16 %3957 to i32
  %3964 = add i64 %3958, 7
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3962 to i32*
  store i32 %3963, i32* %3965, align 4
  %3966 = load i64, i64* %RBP.i, align 8
  %3967 = add i64 %3966, -8
  %3968 = load i64, i64* %3, align 8
  %3969 = add i64 %3968, 4
  store i64 %3969, i64* %3, align 8
  %3970 = inttoptr i64 %3967 to i64*
  %3971 = load i64, i64* %3970, align 8
  store i64 %3971, i64* %RCX.i586, align 8
  %3972 = add i64 %3971, 48
  %3973 = add i64 %3968, 8
  store i64 %3973, i64* %3, align 8
  %3974 = inttoptr i64 %3972 to i64*
  %3975 = load i64, i64* %3974, align 8
  store i64 %3975, i64* %RCX.i586, align 8
  %3976 = add i64 %3975, 6480
  %3977 = add i64 %3968, 15
  store i64 %3977, i64* %3, align 8
  %3978 = inttoptr i64 %3976 to i64*
  %3979 = load i64, i64* %3978, align 8
  store i64 %3979, i64* %RCX.i586, align 8
  %3980 = add i64 %3979, 8
  %3981 = add i64 %3968, 19
  store i64 %3981, i64* %3, align 8
  %3982 = inttoptr i64 %3980 to i64*
  %3983 = load i64, i64* %3982, align 8
  store i64 %3983, i64* %RCX.i586, align 8
  %3984 = add i64 %3966, -12
  %3985 = add i64 %3968, 23
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = sext i32 %3987 to i64
  store i64 %3988, i64* %86, align 8
  %3989 = shl nsw i64 %3988, 3
  %3990 = add i64 %3989, %3983
  %3991 = add i64 %3968, 27
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i64*
  %3993 = load i64, i64* %3992, align 8
  store i64 %3993, i64* %RCX.i586, align 8
  %3994 = add i64 %3966, -16
  %3995 = add i64 %3968, 31
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i32*
  %3997 = load i32, i32* %3996, align 4
  %3998 = sext i32 %3997 to i64
  store i64 %3998, i64* %86, align 8
  %3999 = shl nsw i64 %3998, 1
  %4000 = add i64 %3999, %3993
  %4001 = add i64 %3968, 36
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i16*
  %4003 = load i16, i16* %4002, align 2
  store i16 %4003, i16* %R9W.i1771, align 2
  %4004 = add i64 %3968, 40
  store i64 %4004, i64* %3, align 8
  %4005 = load i64, i64* %3970, align 8
  store i64 %4005, i64* %RCX.i586, align 8
  %4006 = add i64 %4005, 40
  %4007 = add i64 %3968, 44
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i64*
  %4009 = load i64, i64* %4008, align 8
  store i64 %4009, i64* %RCX.i586, align 8
  %4010 = add i64 %4009, 6480
  %4011 = add i64 %3968, 51
  store i64 %4011, i64* %3, align 8
  %4012 = inttoptr i64 %4010 to i64*
  %4013 = load i64, i64* %4012, align 8
  store i64 %4013, i64* %RCX.i586, align 8
  %4014 = add i64 %4013, 8
  %4015 = add i64 %3968, 55
  store i64 %4015, i64* %3, align 8
  %4016 = inttoptr i64 %4014 to i64*
  %4017 = load i64, i64* %4016, align 8
  store i64 %4017, i64* %RCX.i586, align 8
  %4018 = add i64 %3968, 59
  store i64 %4018, i64* %3, align 8
  %4019 = load i32, i32* %3986, align 4
  %4020 = sext i32 %4019 to i64
  store i64 %4020, i64* %86, align 8
  %4021 = shl nsw i64 %4020, 3
  %4022 = add i64 %4021, %4017
  %4023 = add i64 %3968, 63
  store i64 %4023, i64* %3, align 8
  %4024 = inttoptr i64 %4022 to i64*
  %4025 = load i64, i64* %4024, align 8
  store i64 %4025, i64* %RCX.i586, align 8
  %4026 = add i64 %3968, 66
  store i64 %4026, i64* %3, align 8
  %4027 = load i32, i32* %3996, align 4
  %4028 = zext i32 %4027 to i64
  store i64 %4028, i64* %RAX.i175, align 8
  %4029 = sext i32 %4027 to i64
  %4030 = lshr i64 %4029, 32
  store i64 %4030, i64* %1645, align 8
  %4031 = load i32, i32* %ESI.i2339, align 4
  %4032 = add i64 %3968, 71
  store i64 %4032, i64* %3, align 8
  %4033 = sext i32 %4031 to i64
  %4034 = shl nuw i64 %4030, 32
  %4035 = or i64 %4034, %4028
  %4036 = sdiv i64 %4035, %4033
  %4037 = shl i64 %4036, 32
  %4038 = ashr exact i64 %4037, 32
  %4039 = icmp eq i64 %4036, %4038
  br i1 %4039, label %4042, label %4040

; <label>:4040:                                   ; preds = %routine_idivl__esi.exit1394
  %4041 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4032, %struct.Memory* %3917)
  %.pre208 = load i64, i64* %RAX.i175, align 8
  %.pre209 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1325

; <label>:4042:                                   ; preds = %routine_idivl__esi.exit1394
  %4043 = srem i64 %4035, %4033
  %4044 = and i64 %4036, 4294967295
  store i64 %4044, i64* %RAX.i175, align 8
  %4045 = and i64 %4043, 4294967295
  store i64 %4045, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit1325

routine_idivl__esi.exit1325:                      ; preds = %4042, %4040
  %4046 = phi i64 [ %.pre209, %4040 ], [ %4032, %4042 ]
  %4047 = phi i64 [ %.pre208, %4040 ], [ %4044, %4042 ]
  %4048 = phi %struct.Memory* [ %4041, %4040 ], [ %3917, %4042 ]
  %.tr74 = trunc i64 %4047 to i32
  %4049 = shl i32 %.tr74, 3
  %4050 = zext i32 %4049 to i64
  store i64 %4050, i64* %RAX.i175, align 8
  %4051 = lshr i64 %4047, 29
  %4052 = trunc i64 %4051 to i8
  %4053 = and i8 %4052, 1
  store i8 %4053, i8* %12, align 1
  %4054 = and i32 %4049, 248
  %4055 = tail call i32 @llvm.ctpop.i32(i32 %4054)
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  %4058 = xor i8 %4057, 1
  store i8 %4058, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4059 = icmp eq i32 %4049, 0
  %4060 = zext i1 %4059 to i8
  store i8 %4060, i8* %15, align 1
  %4061 = lshr i32 %.tr74, 28
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  store i8 %4063, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4064 = load i64, i64* %RBP.i, align 8
  %4065 = add i64 %4064, -16
  %4066 = add i64 %4046, 6
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4065 to i32*
  %4068 = load i32, i32* %4067, align 4
  %4069 = zext i32 %4068 to i64
  store i64 %4069, i64* %RDI.i190, align 8
  %4070 = add i64 %4064, -180
  %4071 = add i64 %4046, 12
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i32*
  store i32 %4049, i32* %4072, align 4
  %4073 = load i32, i32* %EDI.i2291, align 4
  %4074 = zext i32 %4073 to i64
  %4075 = load i64, i64* %3, align 8
  store i64 %4074, i64* %RAX.i175, align 8
  %4076 = sext i32 %4073 to i64
  %4077 = lshr i64 %4076, 32
  store i64 %4077, i64* %1645, align 8
  %4078 = load i32, i32* %ESI.i2339, align 4
  %4079 = add i64 %4075, 5
  store i64 %4079, i64* %3, align 8
  %4080 = sext i32 %4078 to i64
  %4081 = shl nuw i64 %4077, 32
  %4082 = or i64 %4081, %4074
  %4083 = sdiv i64 %4082, %4080
  %4084 = shl i64 %4083, 32
  %4085 = ashr exact i64 %4084, 32
  %4086 = icmp eq i64 %4083, %4085
  br i1 %4086, label %4089, label %4087

; <label>:4087:                                   ; preds = %routine_idivl__esi.exit1325
  %4088 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4079, %struct.Memory* %4048)
  %.pre210 = load i64, i64* %3, align 8
  %.pre211 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__esi.exit1309

; <label>:4089:                                   ; preds = %routine_idivl__esi.exit1325
  %4090 = srem i64 %4082, %4080
  %4091 = and i64 %4083, 4294967295
  store i64 %4091, i64* %RAX.i175, align 8
  %4092 = and i64 %4090, 4294967295
  store i64 %4092, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4093 = trunc i64 %4090 to i32
  br label %routine_idivl__esi.exit1309

routine_idivl__esi.exit1309:                      ; preds = %4089, %4087
  %4094 = phi i32 [ %.pre211, %4087 ], [ %4093, %4089 ]
  %4095 = phi i64 [ %.pre210, %4087 ], [ %4079, %4089 ]
  %4096 = phi %struct.Memory* [ %4088, %4087 ], [ %4048, %4089 ]
  %4097 = load i64, i64* %RBP.i, align 8
  %4098 = add i64 %4097, -180
  %4099 = add i64 %4095, 6
  store i64 %4099, i64* %3, align 8
  %4100 = inttoptr i64 %4098 to i32*
  %4101 = load i32, i32* %4100, align 4
  %4102 = add i32 %4094, %4101
  %4103 = zext i32 %4102 to i64
  store i64 %4103, i64* %RDI.i190, align 8
  %4104 = icmp ult i32 %4102, %4101
  %4105 = icmp ult i32 %4102, %4094
  %4106 = or i1 %4104, %4105
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %12, align 1
  %4108 = and i32 %4102, 255
  %4109 = tail call i32 @llvm.ctpop.i32(i32 %4108)
  %4110 = trunc i32 %4109 to i8
  %4111 = and i8 %4110, 1
  %4112 = xor i8 %4111, 1
  store i8 %4112, i8* %13, align 1
  %4113 = xor i32 %4094, %4101
  %4114 = xor i32 %4113, %4102
  %4115 = lshr i32 %4114, 4
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  store i8 %4117, i8* %14, align 1
  %4118 = icmp eq i32 %4102, 0
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %15, align 1
  %4120 = lshr i32 %4102, 31
  %4121 = trunc i32 %4120 to i8
  store i8 %4121, i8* %16, align 1
  %4122 = lshr i32 %4101, 31
  %4123 = lshr i32 %4094, 31
  %4124 = xor i32 %4120, %4122
  %4125 = xor i32 %4120, %4123
  %4126 = add nuw nsw i32 %4124, %4125
  %4127 = icmp eq i32 %4126, 2
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %17, align 1
  %4129 = sext i32 %4102 to i64
  store i64 %4129, i64* %86, align 8
  %4130 = load i64, i64* %RCX.i586, align 8
  %4131 = shl nsw i64 %4129, 1
  %4132 = add i64 %4130, %4131
  %4133 = load i16, i16* %R9W.i1771, align 2
  %4134 = add i64 %4095, 16
  store i64 %4134, i64* %3, align 8
  %4135 = inttoptr i64 %4132 to i16*
  store i16 %4133, i16* %4135, align 2
  %4136 = load i16, i16* %R9W.i1771, align 2
  %4137 = load i64, i64* %3, align 8
  %4138 = sext i16 %4136 to i64
  %4139 = and i64 %4138, 4294967295
  store i64 %4139, i64* %RDX.i756, align 8
  %4140 = load i64, i64* %RBP.i, align 8
  %4141 = add i64 %4140, -24
  %4142 = sext i16 %4136 to i32
  %4143 = add i64 %4137, 7
  store i64 %4143, i64* %3, align 8
  %4144 = inttoptr i64 %4141 to i32*
  store i32 %4142, i32* %4144, align 4
  %4145 = load i64, i64* %RBP.i, align 8
  %4146 = add i64 %4145, -20
  %4147 = load i64, i64* %3, align 8
  %4148 = add i64 %4147, 4
  store i64 %4148, i64* %3, align 8
  %4149 = inttoptr i64 %4146 to i32*
  %4150 = load i32, i32* %4149, align 4
  store i8 0, i8* %12, align 1
  %4151 = and i32 %4150, 255
  %4152 = tail call i32 @llvm.ctpop.i32(i32 %4151)
  %4153 = trunc i32 %4152 to i8
  %4154 = and i8 %4153, 1
  %4155 = xor i8 %4154, 1
  store i8 %4155, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4156 = icmp eq i32 %4150, 0
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %15, align 1
  %4158 = lshr i32 %4150, 31
  %4159 = trunc i32 %4158 to i8
  store i8 %4159, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4160 = icmp ne i8 %4159, 0
  %.v = select i1 %4160, i64 35, i64 6
  %4161 = add i64 %4148, %.v
  store i64 %4161, i64* %3, align 8
  br i1 %4160, label %block_.L_452df3, label %block_452dd6

block_452dd6:                                     ; preds = %routine_idivl__esi.exit1309
  %4162 = add i64 %4145, -8
  %4163 = add i64 %4161, 4
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4162 to i64*
  %4165 = load i64, i64* %4164, align 8
  store i64 %4165, i64* %RAX.i175, align 8
  %4166 = add i64 %4165, 48
  %4167 = add i64 %4161, 8
  store i64 %4167, i64* %3, align 8
  %4168 = inttoptr i64 %4166 to i64*
  %4169 = load i64, i64* %4168, align 8
  store i64 %4169, i64* %RAX.i175, align 8
  %4170 = add i64 %4161, 12
  store i64 %4170, i64* %3, align 8
  %4171 = load i32, i32* %4149, align 4
  %4172 = sext i32 %4171 to i64
  store i64 %4172, i64* %RCX.i586, align 8
  %4173 = shl nsw i64 %4172, 3
  %4174 = add i64 %4169, 24
  %4175 = add i64 %4174, %4173
  %4176 = add i64 %4161, 17
  store i64 %4176, i64* %3, align 8
  %4177 = inttoptr i64 %4175 to i64*
  %4178 = load i64, i64* %4177, align 8
  store i64 %4178, i64* %RAX.i175, align 8
  %4179 = add i64 %4145, -192
  %4180 = add i64 %4161, 24
  store i64 %4180, i64* %3, align 8
  %4181 = inttoptr i64 %4179 to i64*
  store i64 %4178, i64* %4181, align 8
  %4182 = load i64, i64* %3, align 8
  %4183 = add i64 %4182, 21
  br label %block_.L_452e03

block_.L_452df3:                                  ; preds = %routine_idivl__esi.exit1309
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i586, align 8
  %4184 = add i64 %4145, -192
  %4185 = add i64 %4161, 11
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4184 to i64*
  store i64 0, i64* %4186, align 8
  %4187 = load i64, i64* %3, align 8
  %4188 = add i64 %4187, 5
  store i64 %4188, i64* %3, align 8
  br label %block_.L_452e03

block_.L_452e03:                                  ; preds = %block_.L_452df3, %block_452dd6
  %storemerge = phi i64 [ %4183, %block_452dd6 ], [ %4188, %block_.L_452df3 ]
  %4189 = load i64, i64* %RBP.i, align 8
  %4190 = add i64 %4189, -192
  %4191 = add i64 %storemerge, 7
  store i64 %4191, i64* %3, align 8
  %4192 = inttoptr i64 %4190 to i64*
  %4193 = load i64, i64* %4192, align 8
  store i64 %4193, i64* %RAX.i175, align 8
  %4194 = add i64 %4189, -8
  %4195 = add i64 %storemerge, 11
  store i64 %4195, i64* %3, align 8
  %4196 = inttoptr i64 %4194 to i64*
  %4197 = load i64, i64* %4196, align 8
  store i64 %4197, i64* %RCX.i586, align 8
  %4198 = add i64 %4197, 48
  %4199 = add i64 %storemerge, 15
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i64*
  %4201 = load i64, i64* %4200, align 8
  store i64 %4201, i64* %RCX.i586, align 8
  %4202 = add i64 %4201, 6496
  %4203 = add i64 %storemerge, 22
  store i64 %4203, i64* %3, align 8
  %4204 = inttoptr i64 %4202 to i64*
  %4205 = load i64, i64* %4204, align 8
  store i64 %4205, i64* %RCX.i586, align 8
  %4206 = add i64 %storemerge, 25
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4205 to i64*
  %4208 = load i64, i64* %4207, align 8
  store i64 %4208, i64* %RCX.i586, align 8
  %4209 = add i64 %4189, -12
  %4210 = add i64 %storemerge, 29
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to i32*
  %4212 = load i32, i32* %4211, align 4
  %4213 = sext i32 %4212 to i64
  store i64 %4213, i64* %RDX.i756, align 8
  %4214 = shl nsw i64 %4213, 3
  %4215 = add i64 %4214, %4208
  %4216 = add i64 %storemerge, 33
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4215 to i64*
  %4218 = load i64, i64* %4217, align 8
  store i64 %4218, i64* %RCX.i586, align 8
  %4219 = add i64 %4189, -16
  %4220 = add i64 %storemerge, 37
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i32*
  %4222 = load i32, i32* %4221, align 4
  %4223 = sext i32 %4222 to i64
  store i64 %4223, i64* %RDX.i756, align 8
  %4224 = shl nsw i64 %4223, 3
  %4225 = add i64 %4224, %4218
  %4226 = add i64 %storemerge, 41
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i64*
  store i64 %4193, i64* %4227, align 8
  %4228 = load i64, i64* %RBP.i, align 8
  %4229 = add i64 %4228, -24
  %4230 = load i64, i64* %3, align 8
  %4231 = add i64 %4230, 4
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4229 to i32*
  %4233 = load i32, i32* %4232, align 4
  store i8 0, i8* %12, align 1
  %4234 = and i32 %4233, 255
  %4235 = tail call i32 @llvm.ctpop.i32(i32 %4234)
  %4236 = trunc i32 %4235 to i8
  %4237 = and i8 %4236, 1
  %4238 = xor i8 %4237, 1
  store i8 %4238, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4239 = icmp eq i32 %4233, 0
  %4240 = zext i1 %4239 to i8
  store i8 %4240, i8* %15, align 1
  %4241 = lshr i32 %4233, 31
  %4242 = trunc i32 %4241 to i8
  store i8 %4242, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4243 = icmp ne i8 %4242, 0
  %.v114 = select i1 %4243, i64 38, i64 6
  %4244 = add i64 %4231, %.v114
  store i64 %4244, i64* %3, align 8
  br i1 %4243, label %block_.L_452e56, label %block_452e36

block_452e36:                                     ; preds = %block_.L_452e03
  %4245 = add i64 %4228, -8
  %4246 = add i64 %4244, 4
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i64*
  %4248 = load i64, i64* %4247, align 8
  store i64 %4248, i64* %RAX.i175, align 8
  %4249 = add i64 %4248, 48
  %4250 = add i64 %4244, 8
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i64*
  %4252 = load i64, i64* %4251, align 8
  store i64 %4252, i64* %RAX.i175, align 8
  %4253 = add i64 %4244, 12
  store i64 %4253, i64* %3, align 8
  %4254 = load i32, i32* %4232, align 4
  %4255 = sext i32 %4254 to i64
  store i64 %4255, i64* %RCX.i586, align 8
  %4256 = shl nsw i64 %4255, 3
  %4257 = add i64 %4252, 288
  %4258 = add i64 %4257, %4256
  %4259 = add i64 %4244, 20
  store i64 %4259, i64* %3, align 8
  %4260 = inttoptr i64 %4258 to i64*
  %4261 = load i64, i64* %4260, align 8
  store i64 %4261, i64* %RAX.i175, align 8
  %4262 = add i64 %4228, -200
  %4263 = add i64 %4244, 27
  store i64 %4263, i64* %3, align 8
  %4264 = inttoptr i64 %4262 to i64*
  store i64 %4261, i64* %4264, align 8
  %4265 = load i64, i64* %3, align 8
  %4266 = add i64 %4265, 21
  br label %block_.L_452e66

block_.L_452e56:                                  ; preds = %block_.L_452e03
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i586, align 8
  %4267 = add i64 %4228, -200
  %4268 = add i64 %4244, 11
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i64*
  store i64 0, i64* %4269, align 8
  %4270 = load i64, i64* %3, align 8
  %4271 = add i64 %4270, 5
  store i64 %4271, i64* %3, align 8
  br label %block_.L_452e66

block_.L_452e66:                                  ; preds = %block_.L_452e56, %block_452e36
  %storemerge77 = phi i64 [ %4266, %block_452e36 ], [ %4271, %block_.L_452e56 ]
  %4272 = load i64, i64* %RBP.i, align 8
  %4273 = add i64 %4272, -200
  %4274 = add i64 %storemerge77, 7
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i64*
  %4276 = load i64, i64* %4275, align 8
  store i64 %4276, i64* %RAX.i175, align 8
  %4277 = add i64 %4272, -8
  %4278 = add i64 %storemerge77, 11
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4277 to i64*
  %4280 = load i64, i64* %4279, align 8
  store i64 %4280, i64* %RCX.i586, align 8
  %4281 = add i64 %4280, 48
  %4282 = add i64 %storemerge77, 15
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i64*
  %4284 = load i64, i64* %4283, align 8
  store i64 %4284, i64* %RCX.i586, align 8
  %4285 = add i64 %4284, 6496
  %4286 = add i64 %storemerge77, 22
  store i64 %4286, i64* %3, align 8
  %4287 = inttoptr i64 %4285 to i64*
  %4288 = load i64, i64* %4287, align 8
  store i64 %4288, i64* %RCX.i586, align 8
  %4289 = add i64 %4288, 8
  %4290 = add i64 %storemerge77, 26
  store i64 %4290, i64* %3, align 8
  %4291 = inttoptr i64 %4289 to i64*
  %4292 = load i64, i64* %4291, align 8
  store i64 %4292, i64* %RCX.i586, align 8
  %4293 = add i64 %4272, -12
  %4294 = add i64 %storemerge77, 30
  store i64 %4294, i64* %3, align 8
  %4295 = inttoptr i64 %4293 to i32*
  %4296 = load i32, i32* %4295, align 4
  %4297 = sext i32 %4296 to i64
  store i64 %4297, i64* %RDX.i756, align 8
  %4298 = shl nsw i64 %4297, 3
  %4299 = add i64 %4298, %4292
  %4300 = add i64 %storemerge77, 34
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4299 to i64*
  %4302 = load i64, i64* %4301, align 8
  store i64 %4302, i64* %RCX.i586, align 8
  %4303 = add i64 %4272, -16
  %4304 = add i64 %storemerge77, 38
  store i64 %4304, i64* %3, align 8
  %4305 = inttoptr i64 %4303 to i32*
  %4306 = load i32, i32* %4305, align 4
  %4307 = sext i32 %4306 to i64
  store i64 %4307, i64* %RDX.i756, align 8
  %4308 = shl nsw i64 %4307, 3
  %4309 = add i64 %4308, %4302
  %4310 = add i64 %storemerge77, 42
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4309 to i64*
  store i64 %4276, i64* %4311, align 8
  %4312 = load i64, i64* %RBP.i, align 8
  %4313 = add i64 %4312, -20
  %4314 = load i64, i64* %3, align 8
  %4315 = add i64 %4314, 4
  store i64 %4315, i64* %3, align 8
  %4316 = inttoptr i64 %4313 to i32*
  %4317 = load i32, i32* %4316, align 4
  store i8 0, i8* %12, align 1
  %4318 = and i32 %4317, 255
  %4319 = tail call i32 @llvm.ctpop.i32(i32 %4318)
  %4320 = trunc i32 %4319 to i8
  %4321 = and i8 %4320, 1
  %4322 = xor i8 %4321, 1
  store i8 %4322, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4323 = icmp eq i32 %4317, 0
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %15, align 1
  %4325 = lshr i32 %4317, 31
  %4326 = trunc i32 %4325 to i8
  store i8 %4326, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4327 = icmp ne i8 %4326, 0
  %.v115 = select i1 %4327, i64 38, i64 6
  %4328 = add i64 %4315, %.v115
  store i64 %4328, i64* %3, align 8
  br i1 %4327, label %block_.L_452eba, label %block_452e9a

block_452e9a:                                     ; preds = %block_.L_452e66
  %4329 = add i64 %4312, -8
  %4330 = add i64 %4328, 4
  store i64 %4330, i64* %3, align 8
  %4331 = inttoptr i64 %4329 to i64*
  %4332 = load i64, i64* %4331, align 8
  store i64 %4332, i64* %RAX.i175, align 8
  %4333 = add i64 %4332, 48
  %4334 = add i64 %4328, 8
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i64*
  %4336 = load i64, i64* %4335, align 8
  store i64 %4336, i64* %RAX.i175, align 8
  %4337 = add i64 %4328, 12
  store i64 %4337, i64* %3, align 8
  %4338 = load i32, i32* %4316, align 4
  %4339 = sext i32 %4338 to i64
  store i64 %4339, i64* %RCX.i586, align 8
  %4340 = shl nsw i64 %4339, 3
  %4341 = add i64 %4336, 1608
  %4342 = add i64 %4341, %4340
  %4343 = add i64 %4328, 20
  store i64 %4343, i64* %3, align 8
  %4344 = inttoptr i64 %4342 to i64*
  %4345 = load i64, i64* %4344, align 8
  store i64 %4345, i64* %RAX.i175, align 8
  %4346 = add i64 %4312, -208
  %4347 = add i64 %4328, 27
  store i64 %4347, i64* %3, align 8
  %4348 = inttoptr i64 %4346 to i64*
  store i64 %4345, i64* %4348, align 8
  %4349 = load i64, i64* %3, align 8
  %4350 = add i64 %4349, 21
  br label %block_.L_452eca

block_.L_452eba:                                  ; preds = %block_.L_452e66
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i586, align 8
  %4351 = add i64 %4312, -208
  %4352 = add i64 %4328, 11
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i64*
  store i64 0, i64* %4353, align 8
  %4354 = load i64, i64* %3, align 8
  %4355 = add i64 %4354, 5
  store i64 %4355, i64* %3, align 8
  br label %block_.L_452eca

block_.L_452eca:                                  ; preds = %block_.L_452eba, %block_452e9a
  %storemerge78 = phi i64 [ %4350, %block_452e9a ], [ %4355, %block_.L_452eba ]
  %4356 = load i64, i64* %RBP.i, align 8
  %4357 = add i64 %4356, -208
  %4358 = add i64 %storemerge78, 7
  store i64 %4358, i64* %3, align 8
  %4359 = inttoptr i64 %4357 to i64*
  %4360 = load i64, i64* %4359, align 8
  store i64 %4360, i64* %RAX.i175, align 8
  store i64 4, i64* %RCX.i586, align 8
  %4361 = add i64 %4356, -8
  %4362 = add i64 %storemerge78, 16
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i64*
  %4364 = load i64, i64* %4363, align 8
  store i64 %4364, i64* %RDX.i756, align 8
  %4365 = add i64 %4364, 40
  %4366 = add i64 %storemerge78, 20
  store i64 %4366, i64* %3, align 8
  %4367 = inttoptr i64 %4365 to i64*
  %4368 = load i64, i64* %4367, align 8
  store i64 %4368, i64* %RDX.i756, align 8
  %4369 = add i64 %4368, 6496
  %4370 = add i64 %storemerge78, 27
  store i64 %4370, i64* %3, align 8
  %4371 = inttoptr i64 %4369 to i64*
  %4372 = load i64, i64* %4371, align 8
  store i64 %4372, i64* %RDX.i756, align 8
  %4373 = add i64 %storemerge78, 30
  store i64 %4373, i64* %3, align 8
  %4374 = inttoptr i64 %4372 to i64*
  %4375 = load i64, i64* %4374, align 8
  store i64 %4375, i64* %RDX.i756, align 8
  %4376 = add i64 %4356, -12
  %4377 = add i64 %storemerge78, 34
  store i64 %4377, i64* %3, align 8
  %4378 = inttoptr i64 %4376 to i32*
  %4379 = load i32, i32* %4378, align 4
  %4380 = sext i32 %4379 to i64
  store i64 %4380, i64* %RSI.i480, align 8
  %4381 = shl nsw i64 %4380, 3
  %4382 = add i64 %4381, %4375
  %4383 = add i64 %storemerge78, 38
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i64*
  %4385 = load i64, i64* %4384, align 8
  store i64 %4385, i64* %RDX.i756, align 8
  %4386 = add i64 %4356, -16
  %4387 = add i64 %storemerge78, 41
  store i64 %4387, i64* %3, align 8
  %4388 = inttoptr i64 %4386 to i32*
  %4389 = load i32, i32* %4388, align 4
  %4390 = zext i32 %4389 to i64
  store i64 %4390, i64* %RDI.i190, align 8
  %4391 = add i64 %4356, -216
  %4392 = add i64 %storemerge78, 48
  store i64 %4392, i64* %3, align 8
  %4393 = inttoptr i64 %4391 to i64*
  store i64 %4360, i64* %4393, align 8
  %4394 = load i32, i32* %EDI.i2291, align 4
  %4395 = zext i32 %4394 to i64
  %4396 = load i64, i64* %3, align 8
  store i64 %4395, i64* %RAX.i175, align 8
  %4397 = load i64, i64* %RBP.i, align 8
  %4398 = add i64 %4397, -224
  %4399 = load i64, i64* %RDX.i756, align 8
  %4400 = add i64 %4396, 9
  store i64 %4400, i64* %3, align 8
  %4401 = inttoptr i64 %4398 to i64*
  store i64 %4399, i64* %4401, align 8
  %4402 = load i64, i64* %3, align 8
  %4403 = load i32, i32* %EAX.i174, align 8
  %4404 = sext i32 %4403 to i64
  %4405 = lshr i64 %4404, 32
  store i64 %4405, i64* %1645, align 8
  %4406 = load i32, i32* %ECX.i1102, align 4
  %4407 = add i64 %4402, 3
  store i64 %4407, i64* %3, align 8
  %4408 = zext i32 %4403 to i64
  %4409 = sext i32 %4406 to i64
  %4410 = shl nuw i64 %4405, 32
  %4411 = or i64 %4410, %4408
  %4412 = sdiv i64 %4411, %4409
  %4413 = shl i64 %4412, 32
  %4414 = ashr exact i64 %4413, 32
  %4415 = icmp eq i64 %4412, %4414
  br i1 %4415, label %4418, label %4416

; <label>:4416:                                   ; preds = %block_.L_452eca
  %4417 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4407, %struct.Memory* %4096)
  %.pre212 = load i64, i64* %RAX.i175, align 8
  %.pre213 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1118

; <label>:4418:                                   ; preds = %block_.L_452eca
  %4419 = srem i64 %4411, %4409
  %4420 = and i64 %4412, 4294967295
  store i64 %4420, i64* %RAX.i175, align 8
  %4421 = and i64 %4419, 4294967295
  store i64 %4421, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit1118

routine_idivl__ecx.exit1118:                      ; preds = %4418, %4416
  %4422 = phi i64 [ %.pre213, %4416 ], [ %4407, %4418 ]
  %4423 = phi i64 [ %.pre212, %4416 ], [ %4420, %4418 ]
  %4424 = phi %struct.Memory* [ %4417, %4416 ], [ %4096, %4418 ]
  %.tr79 = trunc i64 %4423 to i32
  %4425 = shl i32 %.tr79, 3
  %4426 = zext i32 %4425 to i64
  store i64 %4426, i64* %RAX.i175, align 8
  %4427 = lshr i64 %4423, 29
  %4428 = trunc i64 %4427 to i8
  %4429 = and i8 %4428, 1
  store i8 %4429, i8* %12, align 1
  %4430 = and i32 %4425, 248
  %4431 = tail call i32 @llvm.ctpop.i32(i32 %4430)
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = xor i8 %4433, 1
  store i8 %4434, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4435 = icmp eq i32 %4425, 0
  %4436 = zext i1 %4435 to i8
  store i8 %4436, i8* %15, align 1
  %4437 = lshr i32 %.tr79, 28
  %4438 = trunc i32 %4437 to i8
  %4439 = and i8 %4438, 1
  store i8 %4439, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4440 = load i64, i64* %RBP.i, align 8
  %4441 = add i64 %4440, -16
  %4442 = add i64 %4422, 6
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to i32*
  %4444 = load i32, i32* %4443, align 4
  %4445 = zext i32 %4444 to i64
  store i64 %4445, i64* %RDI.i190, align 8
  %4446 = add i64 %4440, -228
  %4447 = add i64 %4422, 12
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i32*
  store i32 %4425, i32* %4448, align 4
  %4449 = load i32, i32* %EDI.i2291, align 4
  %4450 = zext i32 %4449 to i64
  %4451 = load i64, i64* %3, align 8
  store i64 %4450, i64* %RAX.i175, align 8
  %4452 = sext i32 %4449 to i64
  %4453 = lshr i64 %4452, 32
  store i64 %4453, i64* %1645, align 8
  %4454 = load i32, i32* %ECX.i1102, align 4
  %4455 = add i64 %4451, 5
  store i64 %4455, i64* %3, align 8
  %4456 = sext i32 %4454 to i64
  %4457 = shl nuw i64 %4453, 32
  %4458 = or i64 %4457, %4450
  %4459 = sdiv i64 %4458, %4456
  %4460 = shl i64 %4459, 32
  %4461 = ashr exact i64 %4460, 32
  %4462 = icmp eq i64 %4459, %4461
  br i1 %4462, label %4465, label %4463

; <label>:4463:                                   ; preds = %routine_idivl__ecx.exit1118
  %4464 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4455, %struct.Memory* %4424)
  %.pre214 = load i64, i64* %3, align 8
  %.pre215 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit1100

; <label>:4465:                                   ; preds = %routine_idivl__ecx.exit1118
  %4466 = srem i64 %4458, %4456
  %4467 = and i64 %4459, 4294967295
  store i64 %4467, i64* %RAX.i175, align 8
  %4468 = and i64 %4466, 4294967295
  store i64 %4468, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4469 = trunc i64 %4466 to i32
  br label %routine_idivl__ecx.exit1100

routine_idivl__ecx.exit1100:                      ; preds = %4465, %4463
  %4470 = phi i32 [ %.pre215, %4463 ], [ %4469, %4465 ]
  %4471 = phi i64 [ %.pre214, %4463 ], [ %4455, %4465 ]
  %4472 = phi %struct.Memory* [ %4464, %4463 ], [ %4424, %4465 ]
  %4473 = load i64, i64* %RBP.i, align 8
  %4474 = add i64 %4473, -228
  %4475 = add i64 %4471, 6
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = add i32 %4470, %4477
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RCX.i586, align 8
  %4480 = icmp ult i32 %4478, %4477
  %4481 = icmp ult i32 %4478, %4470
  %4482 = or i1 %4480, %4481
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %12, align 1
  %4484 = and i32 %4478, 255
  %4485 = tail call i32 @llvm.ctpop.i32(i32 %4484)
  %4486 = trunc i32 %4485 to i8
  %4487 = and i8 %4486, 1
  %4488 = xor i8 %4487, 1
  store i8 %4488, i8* %13, align 1
  %4489 = xor i32 %4470, %4477
  %4490 = xor i32 %4489, %4478
  %4491 = lshr i32 %4490, 4
  %4492 = trunc i32 %4491 to i8
  %4493 = and i8 %4492, 1
  store i8 %4493, i8* %14, align 1
  %4494 = icmp eq i32 %4478, 0
  %4495 = zext i1 %4494 to i8
  store i8 %4495, i8* %15, align 1
  %4496 = lshr i32 %4478, 31
  %4497 = trunc i32 %4496 to i8
  store i8 %4497, i8* %16, align 1
  %4498 = lshr i32 %4477, 31
  %4499 = lshr i32 %4470, 31
  %4500 = xor i32 %4496, %4498
  %4501 = xor i32 %4496, %4499
  %4502 = add nuw nsw i32 %4500, %4501
  %4503 = icmp eq i32 %4502, 2
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %17, align 1
  %4505 = sext i32 %4478 to i64
  store i64 %4505, i64* %RSI.i480, align 8
  %4506 = add i64 %4473, -224
  %4507 = add i64 %4471, 18
  store i64 %4507, i64* %3, align 8
  %4508 = inttoptr i64 %4506 to i64*
  %4509 = load i64, i64* %4508, align 8
  store i64 %4509, i64* %86, align 8
  %4510 = add i64 %4473, -216
  %4511 = add i64 %4471, 25
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i64*
  %4513 = load i64, i64* %4512, align 8
  store i64 %4513, i64* %R9.i1328, align 8
  %4514 = shl nsw i64 %4505, 3
  %4515 = add i64 %4514, %4509
  %4516 = add i64 %4471, 29
  store i64 %4516, i64* %3, align 8
  %4517 = inttoptr i64 %4515 to i64*
  store i64 %4513, i64* %4517, align 8
  %4518 = load i64, i64* %RBP.i, align 8
  %4519 = add i64 %4518, -24
  %4520 = load i64, i64* %3, align 8
  %4521 = add i64 %4520, 4
  store i64 %4521, i64* %3, align 8
  %4522 = inttoptr i64 %4519 to i32*
  %4523 = load i32, i32* %4522, align 4
  store i8 0, i8* %12, align 1
  %4524 = and i32 %4523, 255
  %4525 = tail call i32 @llvm.ctpop.i32(i32 %4524)
  %4526 = trunc i32 %4525 to i8
  %4527 = and i8 %4526, 1
  %4528 = xor i8 %4527, 1
  store i8 %4528, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4529 = icmp eq i32 %4523, 0
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %15, align 1
  %4531 = lshr i32 %4523, 31
  %4532 = trunc i32 %4531 to i8
  store i8 %4532, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4533 = icmp ne i8 %4532, 0
  %.v116 = select i1 %4533, i64 38, i64 6
  %4534 = add i64 %4521, %.v116
  store i64 %4534, i64* %3, align 8
  br i1 %4533, label %block_.L_452f5e, label %block_452f3e

block_452f3e:                                     ; preds = %routine_idivl__ecx.exit1100
  %4535 = add i64 %4518, -8
  %4536 = add i64 %4534, 4
  store i64 %4536, i64* %3, align 8
  %4537 = inttoptr i64 %4535 to i64*
  %4538 = load i64, i64* %4537, align 8
  store i64 %4538, i64* %RAX.i175, align 8
  %4539 = add i64 %4538, 48
  %4540 = add i64 %4534, 8
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to i64*
  %4542 = load i64, i64* %4541, align 8
  store i64 %4542, i64* %RAX.i175, align 8
  %4543 = add i64 %4534, 12
  store i64 %4543, i64* %3, align 8
  %4544 = load i32, i32* %4522, align 4
  %4545 = sext i32 %4544 to i64
  store i64 %4545, i64* %RCX.i586, align 8
  %4546 = shl nsw i64 %4545, 3
  %4547 = add i64 %4542, 1872
  %4548 = add i64 %4547, %4546
  %4549 = add i64 %4534, 20
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i64*
  %4551 = load i64, i64* %4550, align 8
  store i64 %4551, i64* %RAX.i175, align 8
  %4552 = add i64 %4518, -240
  %4553 = add i64 %4534, 27
  store i64 %4553, i64* %3, align 8
  %4554 = inttoptr i64 %4552 to i64*
  store i64 %4551, i64* %4554, align 8
  %4555 = load i64, i64* %3, align 8
  %4556 = add i64 %4555, 21
  br label %block_.L_452f6e

block_.L_452f5e:                                  ; preds = %routine_idivl__ecx.exit1100
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i586, align 8
  %4557 = add i64 %4518, -240
  %4558 = add i64 %4534, 11
  store i64 %4558, i64* %3, align 8
  %4559 = inttoptr i64 %4557 to i64*
  store i64 0, i64* %4559, align 8
  %4560 = load i64, i64* %3, align 8
  %4561 = add i64 %4560, 5
  store i64 %4561, i64* %3, align 8
  br label %block_.L_452f6e

block_.L_452f6e:                                  ; preds = %block_.L_452f5e, %block_452f3e
  %storemerge82 = phi i64 [ %4556, %block_452f3e ], [ %4561, %block_.L_452f5e ]
  %4562 = load i64, i64* %RBP.i, align 8
  %4563 = add i64 %4562, -240
  %4564 = add i64 %storemerge82, 7
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4563 to i64*
  %4566 = load i64, i64* %4565, align 8
  store i64 %4566, i64* %RAX.i175, align 8
  store i64 4, i64* %RCX.i586, align 8
  %4567 = add i64 %4562, -8
  %4568 = add i64 %storemerge82, 16
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to i64*
  %4570 = load i64, i64* %4569, align 8
  store i64 %4570, i64* %RDX.i756, align 8
  %4571 = add i64 %4570, 40
  %4572 = add i64 %storemerge82, 20
  store i64 %4572, i64* %3, align 8
  %4573 = inttoptr i64 %4571 to i64*
  %4574 = load i64, i64* %4573, align 8
  store i64 %4574, i64* %RDX.i756, align 8
  %4575 = add i64 %4574, 6496
  %4576 = add i64 %storemerge82, 27
  store i64 %4576, i64* %3, align 8
  %4577 = inttoptr i64 %4575 to i64*
  %4578 = load i64, i64* %4577, align 8
  store i64 %4578, i64* %RDX.i756, align 8
  %4579 = add i64 %4578, 8
  %4580 = add i64 %storemerge82, 31
  store i64 %4580, i64* %3, align 8
  %4581 = inttoptr i64 %4579 to i64*
  %4582 = load i64, i64* %4581, align 8
  store i64 %4582, i64* %RDX.i756, align 8
  %4583 = add i64 %4562, -12
  %4584 = add i64 %storemerge82, 35
  store i64 %4584, i64* %3, align 8
  %4585 = inttoptr i64 %4583 to i32*
  %4586 = load i32, i32* %4585, align 4
  %4587 = sext i32 %4586 to i64
  store i64 %4587, i64* %RSI.i480, align 8
  %4588 = shl nsw i64 %4587, 3
  %4589 = add i64 %4588, %4582
  %4590 = add i64 %storemerge82, 39
  store i64 %4590, i64* %3, align 8
  %4591 = inttoptr i64 %4589 to i64*
  %4592 = load i64, i64* %4591, align 8
  store i64 %4592, i64* %RDX.i756, align 8
  %4593 = add i64 %4562, -16
  %4594 = add i64 %storemerge82, 42
  store i64 %4594, i64* %3, align 8
  %4595 = inttoptr i64 %4593 to i32*
  %4596 = load i32, i32* %4595, align 4
  %4597 = zext i32 %4596 to i64
  store i64 %4597, i64* %RDI.i190, align 8
  %4598 = add i64 %4562, -248
  %4599 = add i64 %storemerge82, 49
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i64*
  store i64 %4566, i64* %4600, align 8
  %4601 = load i32, i32* %EDI.i2291, align 4
  %4602 = zext i32 %4601 to i64
  %4603 = load i64, i64* %3, align 8
  store i64 %4602, i64* %RAX.i175, align 8
  %4604 = load i64, i64* %RBP.i, align 8
  %4605 = add i64 %4604, -256
  %4606 = load i64, i64* %RDX.i756, align 8
  %4607 = add i64 %4603, 9
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4605 to i64*
  store i64 %4606, i64* %4608, align 8
  %4609 = load i64, i64* %3, align 8
  %4610 = load i32, i32* %EAX.i174, align 8
  %4611 = sext i32 %4610 to i64
  %4612 = lshr i64 %4611, 32
  store i64 %4612, i64* %1645, align 8
  %4613 = load i32, i32* %ECX.i1102, align 4
  %4614 = add i64 %4609, 3
  store i64 %4614, i64* %3, align 8
  %4615 = zext i32 %4610 to i64
  %4616 = sext i32 %4613 to i64
  %4617 = shl nuw i64 %4612, 32
  %4618 = or i64 %4617, %4615
  %4619 = sdiv i64 %4618, %4616
  %4620 = shl i64 %4619, 32
  %4621 = ashr exact i64 %4620, 32
  %4622 = icmp eq i64 %4619, %4621
  br i1 %4622, label %4625, label %4623

; <label>:4623:                                   ; preds = %block_.L_452f6e
  %4624 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4614, %struct.Memory* %4472)
  %.pre216 = load i64, i64* %RAX.i175, align 8
  %.pre217 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1014

; <label>:4625:                                   ; preds = %block_.L_452f6e
  %4626 = srem i64 %4618, %4616
  %4627 = and i64 %4619, 4294967295
  store i64 %4627, i64* %RAX.i175, align 8
  %4628 = and i64 %4626, 4294967295
  store i64 %4628, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit1014

routine_idivl__ecx.exit1014:                      ; preds = %4625, %4623
  %4629 = phi i64 [ %.pre217, %4623 ], [ %4614, %4625 ]
  %4630 = phi i64 [ %.pre216, %4623 ], [ %4627, %4625 ]
  %4631 = phi %struct.Memory* [ %4624, %4623 ], [ %4472, %4625 ]
  %.tr83 = trunc i64 %4630 to i32
  %4632 = shl i32 %.tr83, 3
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RAX.i175, align 8
  %4634 = lshr i64 %4630, 29
  %4635 = trunc i64 %4634 to i8
  %4636 = and i8 %4635, 1
  store i8 %4636, i8* %12, align 1
  %4637 = and i32 %4632, 248
  %4638 = tail call i32 @llvm.ctpop.i32(i32 %4637)
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = xor i8 %4640, 1
  store i8 %4641, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4642 = icmp eq i32 %4632, 0
  %4643 = zext i1 %4642 to i8
  store i8 %4643, i8* %15, align 1
  %4644 = lshr i32 %.tr83, 28
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  store i8 %4646, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4647 = load i64, i64* %RBP.i, align 8
  %4648 = add i64 %4647, -16
  %4649 = add i64 %4629, 6
  store i64 %4649, i64* %3, align 8
  %4650 = inttoptr i64 %4648 to i32*
  %4651 = load i32, i32* %4650, align 4
  %4652 = zext i32 %4651 to i64
  store i64 %4652, i64* %RDI.i190, align 8
  %4653 = add i64 %4647, -260
  %4654 = add i64 %4629, 12
  store i64 %4654, i64* %3, align 8
  %4655 = inttoptr i64 %4653 to i32*
  store i32 %4632, i32* %4655, align 4
  %4656 = load i32, i32* %EDI.i2291, align 4
  %4657 = zext i32 %4656 to i64
  %4658 = load i64, i64* %3, align 8
  store i64 %4657, i64* %RAX.i175, align 8
  %4659 = sext i32 %4656 to i64
  %4660 = lshr i64 %4659, 32
  store i64 %4660, i64* %1645, align 8
  %4661 = load i32, i32* %ECX.i1102, align 4
  %4662 = add i64 %4658, 5
  store i64 %4662, i64* %3, align 8
  %4663 = sext i32 %4661 to i64
  %4664 = shl nuw i64 %4660, 32
  %4665 = or i64 %4664, %4657
  %4666 = sdiv i64 %4665, %4663
  %4667 = shl i64 %4666, 32
  %4668 = ashr exact i64 %4667, 32
  %4669 = icmp eq i64 %4666, %4668
  br i1 %4669, label %4672, label %4670

; <label>:4670:                                   ; preds = %routine_idivl__ecx.exit1014
  %4671 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4662, %struct.Memory* %4631)
  %.pre218 = load i64, i64* %3, align 8
  %.pre219 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit996

; <label>:4672:                                   ; preds = %routine_idivl__ecx.exit1014
  %4673 = srem i64 %4665, %4663
  %4674 = and i64 %4666, 4294967295
  store i64 %4674, i64* %RAX.i175, align 8
  %4675 = and i64 %4673, 4294967295
  store i64 %4675, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4676 = trunc i64 %4673 to i32
  br label %routine_idivl__ecx.exit996

routine_idivl__ecx.exit996:                       ; preds = %4672, %4670
  %4677 = phi i32 [ %.pre219, %4670 ], [ %4676, %4672 ]
  %4678 = phi i64 [ %.pre218, %4670 ], [ %4662, %4672 ]
  %4679 = phi %struct.Memory* [ %4671, %4670 ], [ %4631, %4672 ]
  %4680 = load i64, i64* %RBP.i, align 8
  %4681 = add i64 %4680, -260
  %4682 = add i64 %4678, 6
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i32*
  %4684 = load i32, i32* %4683, align 4
  %4685 = add i32 %4677, %4684
  %4686 = zext i32 %4685 to i64
  store i64 %4686, i64* %RDI.i190, align 8
  %4687 = icmp ult i32 %4685, %4684
  %4688 = icmp ult i32 %4685, %4677
  %4689 = or i1 %4687, %4688
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %12, align 1
  %4691 = and i32 %4685, 255
  %4692 = tail call i32 @llvm.ctpop.i32(i32 %4691)
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  %4695 = xor i8 %4694, 1
  store i8 %4695, i8* %13, align 1
  %4696 = xor i32 %4677, %4684
  %4697 = xor i32 %4696, %4685
  %4698 = lshr i32 %4697, 4
  %4699 = trunc i32 %4698 to i8
  %4700 = and i8 %4699, 1
  store i8 %4700, i8* %14, align 1
  %4701 = icmp eq i32 %4685, 0
  %4702 = zext i1 %4701 to i8
  store i8 %4702, i8* %15, align 1
  %4703 = lshr i32 %4685, 31
  %4704 = trunc i32 %4703 to i8
  store i8 %4704, i8* %16, align 1
  %4705 = lshr i32 %4684, 31
  %4706 = lshr i32 %4677, 31
  %4707 = xor i32 %4703, %4705
  %4708 = xor i32 %4703, %4706
  %4709 = add nuw nsw i32 %4707, %4708
  %4710 = icmp eq i32 %4709, 2
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %17, align 1
  %4712 = sext i32 %4685 to i64
  store i64 %4712, i64* %RSI.i480, align 8
  %4713 = add i64 %4680, -256
  %4714 = add i64 %4678, 18
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i64*
  %4716 = load i64, i64* %4715, align 8
  store i64 %4716, i64* %86, align 8
  %4717 = add i64 %4680, -248
  %4718 = add i64 %4678, 25
  store i64 %4718, i64* %3, align 8
  %4719 = inttoptr i64 %4717 to i64*
  %4720 = load i64, i64* %4719, align 8
  store i64 %4720, i64* %R9.i1328, align 8
  %4721 = shl nsw i64 %4712, 3
  %4722 = add i64 %4721, %4716
  %4723 = add i64 %4678, 29
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i64*
  store i64 %4720, i64* %4724, align 8
  %4725 = load i64, i64* %RBP.i, align 8
  %4726 = add i64 %4725, -8
  %4727 = load i64, i64* %3, align 8
  %4728 = add i64 %4727, 4
  store i64 %4728, i64* %3, align 8
  %4729 = inttoptr i64 %4726 to i64*
  %4730 = load i64, i64* %4729, align 8
  store i64 %4730, i64* %RSI.i480, align 8
  %4731 = add i64 %4730, 56
  %4732 = add i64 %4727, 8
  store i64 %4732, i64* %3, align 8
  %4733 = inttoptr i64 %4731 to i64*
  %4734 = load i64, i64* %4733, align 8
  store i64 %4734, i64* %RSI.i480, align 8
  %4735 = add i64 %4734, 6504
  %4736 = add i64 %4727, 15
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4735 to i64*
  %4738 = load i64, i64* %4737, align 8
  store i64 %4738, i64* %RSI.i480, align 8
  %4739 = add i64 %4727, 18
  store i64 %4739, i64* %3, align 8
  %4740 = inttoptr i64 %4738 to i64*
  %4741 = load i64, i64* %4740, align 8
  store i64 %4741, i64* %RSI.i480, align 8
  %4742 = add i64 %4725, -12
  %4743 = add i64 %4727, 22
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = sext i32 %4745 to i64
  store i64 %4746, i64* %R9.i1328, align 8
  %4747 = shl nsw i64 %4746, 3
  %4748 = add i64 %4747, %4741
  %4749 = add i64 %4727, 26
  store i64 %4749, i64* %3, align 8
  %4750 = inttoptr i64 %4748 to i64*
  %4751 = load i64, i64* %4750, align 8
  store i64 %4751, i64* %RSI.i480, align 8
  %4752 = add i64 %4725, -16
  %4753 = add i64 %4727, 30
  store i64 %4753, i64* %3, align 8
  %4754 = inttoptr i64 %4752 to i32*
  %4755 = load i32, i32* %4754, align 4
  %4756 = sext i32 %4755 to i64
  store i64 %4756, i64* %R9.i1328, align 8
  %4757 = shl nsw i64 %4756, 3
  %4758 = add i64 %4757, %4751
  %4759 = add i64 %4727, 34
  store i64 %4759, i64* %3, align 8
  %4760 = inttoptr i64 %4758 to i64*
  %4761 = load i64, i64* %4760, align 8
  store i64 %4761, i64* %RSI.i480, align 8
  %4762 = add i64 %4727, 38
  store i64 %4762, i64* %3, align 8
  %4763 = inttoptr i64 %4761 to i16*
  %4764 = load i16, i16* %4763, align 2
  store i16 %4764, i16* %R10W.i952, align 2
  %4765 = add i64 %4727, 42
  store i64 %4765, i64* %3, align 8
  %4766 = load i64, i64* %4729, align 8
  store i64 %4766, i64* %RSI.i480, align 8
  %4767 = add i64 %4766, 40
  %4768 = add i64 %4727, 46
  store i64 %4768, i64* %3, align 8
  %4769 = inttoptr i64 %4767 to i64*
  %4770 = load i64, i64* %4769, align 8
  store i64 %4770, i64* %RSI.i480, align 8
  %4771 = add i64 %4770, 6504
  %4772 = add i64 %4727, 53
  store i64 %4772, i64* %3, align 8
  %4773 = inttoptr i64 %4771 to i64*
  %4774 = load i64, i64* %4773, align 8
  store i64 %4774, i64* %RSI.i480, align 8
  %4775 = add i64 %4727, 56
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i64*
  %4777 = load i64, i64* %4776, align 8
  store i64 %4777, i64* %RSI.i480, align 8
  %4778 = add i64 %4727, 60
  store i64 %4778, i64* %3, align 8
  %4779 = load i32, i32* %4744, align 4
  %4780 = sext i32 %4779 to i64
  store i64 %4780, i64* %R9.i1328, align 8
  %4781 = shl nsw i64 %4780, 3
  %4782 = add i64 %4781, %4777
  %4783 = add i64 %4727, 64
  store i64 %4783, i64* %3, align 8
  %4784 = inttoptr i64 %4782 to i64*
  %4785 = load i64, i64* %4784, align 8
  store i64 %4785, i64* %RSI.i480, align 8
  %4786 = add i64 %4727, 67
  store i64 %4786, i64* %3, align 8
  %4787 = load i32, i32* %4754, align 4
  %4788 = zext i32 %4787 to i64
  store i64 %4788, i64* %RAX.i175, align 8
  %4789 = sext i32 %4787 to i64
  %4790 = lshr i64 %4789, 32
  store i64 %4790, i64* %1645, align 8
  %4791 = load i32, i32* %ECX.i1102, align 4
  %4792 = add i64 %4727, 72
  store i64 %4792, i64* %3, align 8
  %4793 = sext i32 %4791 to i64
  %4794 = shl nuw i64 %4790, 32
  %4795 = or i64 %4794, %4788
  %4796 = sdiv i64 %4795, %4793
  %4797 = shl i64 %4796, 32
  %4798 = ashr exact i64 %4797, 32
  %4799 = icmp eq i64 %4796, %4798
  br i1 %4799, label %4802, label %4800

; <label>:4800:                                   ; preds = %routine_idivl__ecx.exit996
  %4801 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4792, %struct.Memory* %4679)
  %.pre220 = load i64, i64* %RAX.i175, align 8
  %.pre221 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit926

; <label>:4802:                                   ; preds = %routine_idivl__ecx.exit996
  %4803 = srem i64 %4795, %4793
  %4804 = and i64 %4796, 4294967295
  store i64 %4804, i64* %RAX.i175, align 8
  %4805 = and i64 %4803, 4294967295
  store i64 %4805, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit926

routine_idivl__ecx.exit926:                       ; preds = %4802, %4800
  %4806 = phi i64 [ %.pre221, %4800 ], [ %4792, %4802 ]
  %4807 = phi i64 [ %.pre220, %4800 ], [ %4804, %4802 ]
  %4808 = phi %struct.Memory* [ %4801, %4800 ], [ %4679, %4802 ]
  %.tr86 = trunc i64 %4807 to i32
  %4809 = shl i32 %.tr86, 3
  %4810 = zext i32 %4809 to i64
  store i64 %4810, i64* %RAX.i175, align 8
  %4811 = lshr i64 %4807, 29
  %4812 = trunc i64 %4811 to i8
  %4813 = and i8 %4812, 1
  store i8 %4813, i8* %12, align 1
  %4814 = and i32 %4809, 248
  %4815 = tail call i32 @llvm.ctpop.i32(i32 %4814)
  %4816 = trunc i32 %4815 to i8
  %4817 = and i8 %4816, 1
  %4818 = xor i8 %4817, 1
  store i8 %4818, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4819 = icmp eq i32 %4809, 0
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %15, align 1
  %4821 = lshr i32 %.tr86, 28
  %4822 = trunc i32 %4821 to i8
  %4823 = and i8 %4822, 1
  store i8 %4823, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4824 = load i64, i64* %RBP.i, align 8
  %4825 = add i64 %4824, -16
  %4826 = add i64 %4806, 6
  store i64 %4826, i64* %3, align 8
  %4827 = inttoptr i64 %4825 to i32*
  %4828 = load i32, i32* %4827, align 4
  %4829 = zext i32 %4828 to i64
  store i64 %4829, i64* %RDI.i190, align 8
  %4830 = add i64 %4824, -264
  %4831 = add i64 %4806, 12
  store i64 %4831, i64* %3, align 8
  %4832 = inttoptr i64 %4830 to i32*
  store i32 %4809, i32* %4832, align 4
  %4833 = load i32, i32* %EDI.i2291, align 4
  %4834 = zext i32 %4833 to i64
  %4835 = load i64, i64* %3, align 8
  store i64 %4834, i64* %RAX.i175, align 8
  %4836 = sext i32 %4833 to i64
  %4837 = lshr i64 %4836, 32
  store i64 %4837, i64* %1645, align 8
  %4838 = load i32, i32* %ECX.i1102, align 4
  %4839 = add i64 %4835, 5
  store i64 %4839, i64* %3, align 8
  %4840 = sext i32 %4838 to i64
  %4841 = shl nuw i64 %4837, 32
  %4842 = or i64 %4841, %4834
  %4843 = sdiv i64 %4842, %4840
  %4844 = shl i64 %4843, 32
  %4845 = ashr exact i64 %4844, 32
  %4846 = icmp eq i64 %4843, %4845
  br i1 %4846, label %4849, label %4847

; <label>:4847:                                   ; preds = %routine_idivl__ecx.exit926
  %4848 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4839, %struct.Memory* %4808)
  %.pre222 = load i64, i64* %3, align 8
  %.pre223 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit909

; <label>:4849:                                   ; preds = %routine_idivl__ecx.exit926
  %4850 = srem i64 %4842, %4840
  %4851 = and i64 %4843, 4294967295
  store i64 %4851, i64* %RAX.i175, align 8
  %4852 = and i64 %4850, 4294967295
  store i64 %4852, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4853 = trunc i64 %4850 to i32
  br label %routine_idivl__ecx.exit909

routine_idivl__ecx.exit909:                       ; preds = %4849, %4847
  %4854 = phi i32 [ %.pre223, %4847 ], [ %4853, %4849 ]
  %4855 = phi i64 [ %.pre222, %4847 ], [ %4839, %4849 ]
  %4856 = phi %struct.Memory* [ %4848, %4847 ], [ %4808, %4849 ]
  %4857 = load i64, i64* %RBP.i, align 8
  %4858 = add i64 %4857, -264
  %4859 = add i64 %4855, 6
  store i64 %4859, i64* %3, align 8
  %4860 = inttoptr i64 %4858 to i32*
  %4861 = load i32, i32* %4860, align 4
  %4862 = add i32 %4854, %4861
  %4863 = lshr i32 %4862, 31
  %4864 = add i32 %4862, 4
  %4865 = zext i32 %4864 to i64
  store i64 %4865, i64* %RDI.i190, align 8
  %4866 = icmp ugt i32 %4862, -5
  %4867 = zext i1 %4866 to i8
  store i8 %4867, i8* %12, align 1
  %4868 = and i32 %4864, 255
  %4869 = tail call i32 @llvm.ctpop.i32(i32 %4868)
  %4870 = trunc i32 %4869 to i8
  %4871 = and i8 %4870, 1
  %4872 = xor i8 %4871, 1
  store i8 %4872, i8* %13, align 1
  %4873 = xor i32 %4864, %4862
  %4874 = lshr i32 %4873, 4
  %4875 = trunc i32 %4874 to i8
  %4876 = and i8 %4875, 1
  store i8 %4876, i8* %14, align 1
  %4877 = icmp eq i32 %4864, 0
  %4878 = zext i1 %4877 to i8
  store i8 %4878, i8* %15, align 1
  %4879 = lshr i32 %4864, 31
  %4880 = trunc i32 %4879 to i8
  store i8 %4880, i8* %16, align 1
  %4881 = xor i32 %4879, %4863
  %4882 = add nuw nsw i32 %4881, %4879
  %4883 = icmp eq i32 %4882, 2
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %17, align 1
  %4885 = sext i32 %4864 to i64
  store i64 %4885, i64* %R9.i1328, align 8
  %4886 = load i64, i64* %RSI.i480, align 8
  %4887 = shl nsw i64 %4885, 3
  %4888 = add i64 %4886, %4887
  %4889 = add i64 %4855, 18
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4888 to i64*
  %4891 = load i64, i64* %4890, align 8
  store i64 %4891, i64* %RSI.i480, align 8
  %4892 = load i16, i16* %R10W.i952, align 2
  %4893 = add i64 %4855, 22
  store i64 %4893, i64* %3, align 8
  %4894 = inttoptr i64 %4891 to i16*
  store i16 %4892, i16* %4894, align 2
  %4895 = load i64, i64* %RBP.i, align 8
  %4896 = add i64 %4895, -8
  %4897 = load i64, i64* %3, align 8
  %4898 = add i64 %4897, 4
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4896 to i64*
  %4900 = load i64, i64* %4899, align 8
  store i64 %4900, i64* %RSI.i480, align 8
  %4901 = add i64 %4900, 56
  %4902 = add i64 %4897, 8
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4901 to i64*
  %4904 = load i64, i64* %4903, align 8
  store i64 %4904, i64* %RSI.i480, align 8
  %4905 = add i64 %4904, 6504
  %4906 = add i64 %4897, 15
  store i64 %4906, i64* %3, align 8
  %4907 = inttoptr i64 %4905 to i64*
  %4908 = load i64, i64* %4907, align 8
  store i64 %4908, i64* %RSI.i480, align 8
  %4909 = add i64 %4897, 18
  store i64 %4909, i64* %3, align 8
  %4910 = inttoptr i64 %4908 to i64*
  %4911 = load i64, i64* %4910, align 8
  store i64 %4911, i64* %RSI.i480, align 8
  %4912 = add i64 %4895, -12
  %4913 = add i64 %4897, 22
  store i64 %4913, i64* %3, align 8
  %4914 = inttoptr i64 %4912 to i32*
  %4915 = load i32, i32* %4914, align 4
  %4916 = sext i32 %4915 to i64
  store i64 %4916, i64* %R9.i1328, align 8
  %4917 = shl nsw i64 %4916, 3
  %4918 = add i64 %4917, %4911
  %4919 = add i64 %4897, 26
  store i64 %4919, i64* %3, align 8
  %4920 = inttoptr i64 %4918 to i64*
  %4921 = load i64, i64* %4920, align 8
  store i64 %4921, i64* %RSI.i480, align 8
  %4922 = add i64 %4895, -16
  %4923 = add i64 %4897, 30
  store i64 %4923, i64* %3, align 8
  %4924 = inttoptr i64 %4922 to i32*
  %4925 = load i32, i32* %4924, align 4
  %4926 = sext i32 %4925 to i64
  store i64 %4926, i64* %R9.i1328, align 8
  %4927 = shl nsw i64 %4926, 3
  %4928 = add i64 %4927, %4921
  %4929 = add i64 %4897, 34
  store i64 %4929, i64* %3, align 8
  %4930 = inttoptr i64 %4928 to i64*
  %4931 = load i64, i64* %4930, align 8
  store i64 %4931, i64* %RSI.i480, align 8
  %4932 = add i64 %4931, 2
  %4933 = add i64 %4897, 39
  store i64 %4933, i64* %3, align 8
  %4934 = inttoptr i64 %4932 to i16*
  %4935 = load i16, i16* %4934, align 2
  store i16 %4935, i16* %R10W.i952, align 2
  %4936 = add i64 %4897, 43
  store i64 %4936, i64* %3, align 8
  %4937 = load i64, i64* %4899, align 8
  store i64 %4937, i64* %RSI.i480, align 8
  %4938 = add i64 %4937, 40
  %4939 = add i64 %4897, 47
  store i64 %4939, i64* %3, align 8
  %4940 = inttoptr i64 %4938 to i64*
  %4941 = load i64, i64* %4940, align 8
  store i64 %4941, i64* %RSI.i480, align 8
  %4942 = add i64 %4941, 6504
  %4943 = add i64 %4897, 54
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4942 to i64*
  %4945 = load i64, i64* %4944, align 8
  store i64 %4945, i64* %RSI.i480, align 8
  %4946 = add i64 %4897, 57
  store i64 %4946, i64* %3, align 8
  %4947 = inttoptr i64 %4945 to i64*
  %4948 = load i64, i64* %4947, align 8
  store i64 %4948, i64* %RSI.i480, align 8
  %4949 = add i64 %4897, 61
  store i64 %4949, i64* %3, align 8
  %4950 = load i32, i32* %4914, align 4
  %4951 = sext i32 %4950 to i64
  store i64 %4951, i64* %R9.i1328, align 8
  %4952 = shl nsw i64 %4951, 3
  %4953 = add i64 %4952, %4948
  %4954 = add i64 %4897, 65
  store i64 %4954, i64* %3, align 8
  %4955 = inttoptr i64 %4953 to i64*
  %4956 = load i64, i64* %4955, align 8
  store i64 %4956, i64* %RSI.i480, align 8
  %4957 = add i64 %4897, 68
  store i64 %4957, i64* %3, align 8
  %4958 = load i32, i32* %4924, align 4
  %4959 = zext i32 %4958 to i64
  store i64 %4959, i64* %RAX.i175, align 8
  %4960 = sext i32 %4958 to i64
  %4961 = lshr i64 %4960, 32
  store i64 %4961, i64* %1645, align 8
  %4962 = load i32, i32* %ECX.i1102, align 4
  %4963 = add i64 %4897, 73
  store i64 %4963, i64* %3, align 8
  %4964 = sext i32 %4962 to i64
  %4965 = shl nuw i64 %4961, 32
  %4966 = or i64 %4965, %4959
  %4967 = sdiv i64 %4966, %4964
  %4968 = shl i64 %4967, 32
  %4969 = ashr exact i64 %4968, 32
  %4970 = icmp eq i64 %4967, %4969
  br i1 %4970, label %4973, label %4971

; <label>:4971:                                   ; preds = %routine_idivl__ecx.exit909
  %4972 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4963, %struct.Memory* %4856)
  %.pre224 = load i64, i64* %RAX.i175, align 8
  %.pre225 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit841

; <label>:4973:                                   ; preds = %routine_idivl__ecx.exit909
  %4974 = srem i64 %4966, %4964
  %4975 = and i64 %4967, 4294967295
  store i64 %4975, i64* %RAX.i175, align 8
  %4976 = and i64 %4974, 4294967295
  store i64 %4976, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit841

routine_idivl__ecx.exit841:                       ; preds = %4973, %4971
  %4977 = phi i64 [ %.pre225, %4971 ], [ %4963, %4973 ]
  %4978 = phi i64 [ %.pre224, %4971 ], [ %4975, %4973 ]
  %4979 = phi %struct.Memory* [ %4972, %4971 ], [ %4856, %4973 ]
  %.tr89 = trunc i64 %4978 to i32
  %4980 = shl i32 %.tr89, 3
  %4981 = zext i32 %4980 to i64
  store i64 %4981, i64* %RAX.i175, align 8
  %4982 = lshr i64 %4978, 29
  %4983 = trunc i64 %4982 to i8
  %4984 = and i8 %4983, 1
  store i8 %4984, i8* %12, align 1
  %4985 = and i32 %4980, 248
  %4986 = tail call i32 @llvm.ctpop.i32(i32 %4985)
  %4987 = trunc i32 %4986 to i8
  %4988 = and i8 %4987, 1
  %4989 = xor i8 %4988, 1
  store i8 %4989, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4990 = icmp eq i32 %4980, 0
  %4991 = zext i1 %4990 to i8
  store i8 %4991, i8* %15, align 1
  %4992 = lshr i32 %.tr89, 28
  %4993 = trunc i32 %4992 to i8
  %4994 = and i8 %4993, 1
  store i8 %4994, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4995 = load i64, i64* %RBP.i, align 8
  %4996 = add i64 %4995, -16
  %4997 = add i64 %4977, 6
  store i64 %4997, i64* %3, align 8
  %4998 = inttoptr i64 %4996 to i32*
  %4999 = load i32, i32* %4998, align 4
  %5000 = zext i32 %4999 to i64
  store i64 %5000, i64* %RDI.i190, align 8
  %5001 = add i64 %4995, -268
  %5002 = add i64 %4977, 12
  store i64 %5002, i64* %3, align 8
  %5003 = inttoptr i64 %5001 to i32*
  store i32 %4980, i32* %5003, align 4
  %5004 = load i32, i32* %EDI.i2291, align 4
  %5005 = zext i32 %5004 to i64
  %5006 = load i64, i64* %3, align 8
  store i64 %5005, i64* %RAX.i175, align 8
  %5007 = sext i32 %5004 to i64
  %5008 = lshr i64 %5007, 32
  store i64 %5008, i64* %1645, align 8
  %5009 = load i32, i32* %ECX.i1102, align 4
  %5010 = add i64 %5006, 5
  store i64 %5010, i64* %3, align 8
  %5011 = sext i32 %5009 to i64
  %5012 = shl nuw i64 %5008, 32
  %5013 = or i64 %5012, %5005
  %5014 = sdiv i64 %5013, %5011
  %5015 = shl i64 %5014, 32
  %5016 = ashr exact i64 %5015, 32
  %5017 = icmp eq i64 %5014, %5016
  br i1 %5017, label %5020, label %5018

; <label>:5018:                                   ; preds = %routine_idivl__ecx.exit841
  %5019 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5010, %struct.Memory* %4979)
  %.pre226 = load i64, i64* %3, align 8
  %.pre227 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit823

; <label>:5020:                                   ; preds = %routine_idivl__ecx.exit841
  %5021 = srem i64 %5013, %5011
  %5022 = and i64 %5014, 4294967295
  store i64 %5022, i64* %RAX.i175, align 8
  %5023 = and i64 %5021, 4294967295
  store i64 %5023, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5024 = trunc i64 %5021 to i32
  br label %routine_idivl__ecx.exit823

routine_idivl__ecx.exit823:                       ; preds = %5020, %5018
  %5025 = phi i32 [ %.pre227, %5018 ], [ %5024, %5020 ]
  %5026 = phi i64 [ %.pre226, %5018 ], [ %5010, %5020 ]
  %5027 = phi %struct.Memory* [ %5019, %5018 ], [ %4979, %5020 ]
  %5028 = load i64, i64* %RBP.i, align 8
  %5029 = add i64 %5028, -268
  %5030 = add i64 %5026, 6
  store i64 %5030, i64* %3, align 8
  %5031 = inttoptr i64 %5029 to i32*
  %5032 = load i32, i32* %5031, align 4
  %5033 = add i32 %5025, %5032
  %5034 = lshr i32 %5033, 31
  %5035 = add i32 %5033, 4
  %5036 = zext i32 %5035 to i64
  store i64 %5036, i64* %RDI.i190, align 8
  %5037 = icmp ugt i32 %5033, -5
  %5038 = zext i1 %5037 to i8
  store i8 %5038, i8* %12, align 1
  %5039 = and i32 %5035, 255
  %5040 = tail call i32 @llvm.ctpop.i32(i32 %5039)
  %5041 = trunc i32 %5040 to i8
  %5042 = and i8 %5041, 1
  %5043 = xor i8 %5042, 1
  store i8 %5043, i8* %13, align 1
  %5044 = xor i32 %5035, %5033
  %5045 = lshr i32 %5044, 4
  %5046 = trunc i32 %5045 to i8
  %5047 = and i8 %5046, 1
  store i8 %5047, i8* %14, align 1
  %5048 = icmp eq i32 %5035, 0
  %5049 = zext i1 %5048 to i8
  store i8 %5049, i8* %15, align 1
  %5050 = lshr i32 %5035, 31
  %5051 = trunc i32 %5050 to i8
  store i8 %5051, i8* %16, align 1
  %5052 = xor i32 %5050, %5034
  %5053 = add nuw nsw i32 %5052, %5050
  %5054 = icmp eq i32 %5053, 2
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %17, align 1
  %5056 = sext i32 %5035 to i64
  store i64 %5056, i64* %R9.i1328, align 8
  %5057 = load i64, i64* %RSI.i480, align 8
  %5058 = shl nsw i64 %5056, 3
  %5059 = add i64 %5057, %5058
  %5060 = add i64 %5026, 18
  store i64 %5060, i64* %3, align 8
  %5061 = inttoptr i64 %5059 to i64*
  %5062 = load i64, i64* %5061, align 8
  store i64 %5062, i64* %RSI.i480, align 8
  %5063 = add i64 %5062, 2
  %5064 = load i16, i16* %R10W.i952, align 2
  %5065 = add i64 %5026, 23
  store i64 %5065, i64* %3, align 8
  %5066 = inttoptr i64 %5063 to i16*
  store i16 %5064, i16* %5066, align 2
  %5067 = load i64, i64* %RBP.i, align 8
  %5068 = add i64 %5067, -8
  %5069 = load i64, i64* %3, align 8
  %5070 = add i64 %5069, 4
  store i64 %5070, i64* %3, align 8
  %5071 = inttoptr i64 %5068 to i64*
  %5072 = load i64, i64* %5071, align 8
  store i64 %5072, i64* %RSI.i480, align 8
  %5073 = add i64 %5072, 56
  %5074 = add i64 %5069, 8
  store i64 %5074, i64* %3, align 8
  %5075 = inttoptr i64 %5073 to i64*
  %5076 = load i64, i64* %5075, align 8
  store i64 %5076, i64* %RSI.i480, align 8
  %5077 = add i64 %5076, 6504
  %5078 = add i64 %5069, 15
  store i64 %5078, i64* %3, align 8
  %5079 = inttoptr i64 %5077 to i64*
  %5080 = load i64, i64* %5079, align 8
  store i64 %5080, i64* %RSI.i480, align 8
  %5081 = add i64 %5080, 8
  %5082 = add i64 %5069, 19
  store i64 %5082, i64* %3, align 8
  %5083 = inttoptr i64 %5081 to i64*
  %5084 = load i64, i64* %5083, align 8
  store i64 %5084, i64* %RSI.i480, align 8
  %5085 = add i64 %5067, -12
  %5086 = add i64 %5069, 23
  store i64 %5086, i64* %3, align 8
  %5087 = inttoptr i64 %5085 to i32*
  %5088 = load i32, i32* %5087, align 4
  %5089 = sext i32 %5088 to i64
  store i64 %5089, i64* %R9.i1328, align 8
  %5090 = shl nsw i64 %5089, 3
  %5091 = add i64 %5090, %5084
  %5092 = add i64 %5069, 27
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i64*
  %5094 = load i64, i64* %5093, align 8
  store i64 %5094, i64* %RSI.i480, align 8
  %5095 = add i64 %5067, -16
  %5096 = add i64 %5069, 31
  store i64 %5096, i64* %3, align 8
  %5097 = inttoptr i64 %5095 to i32*
  %5098 = load i32, i32* %5097, align 4
  %5099 = sext i32 %5098 to i64
  store i64 %5099, i64* %R9.i1328, align 8
  %5100 = shl nsw i64 %5099, 3
  %5101 = add i64 %5100, %5094
  %5102 = add i64 %5069, 35
  store i64 %5102, i64* %3, align 8
  %5103 = inttoptr i64 %5101 to i64*
  %5104 = load i64, i64* %5103, align 8
  store i64 %5104, i64* %RSI.i480, align 8
  %5105 = add i64 %5069, 39
  store i64 %5105, i64* %3, align 8
  %5106 = inttoptr i64 %5104 to i16*
  %5107 = load i16, i16* %5106, align 2
  store i16 %5107, i16* %R10W.i952, align 2
  %5108 = add i64 %5069, 43
  store i64 %5108, i64* %3, align 8
  %5109 = load i64, i64* %5071, align 8
  store i64 %5109, i64* %RSI.i480, align 8
  %5110 = add i64 %5109, 40
  %5111 = add i64 %5069, 47
  store i64 %5111, i64* %3, align 8
  %5112 = inttoptr i64 %5110 to i64*
  %5113 = load i64, i64* %5112, align 8
  store i64 %5113, i64* %RSI.i480, align 8
  %5114 = add i64 %5113, 6504
  %5115 = add i64 %5069, 54
  store i64 %5115, i64* %3, align 8
  %5116 = inttoptr i64 %5114 to i64*
  %5117 = load i64, i64* %5116, align 8
  store i64 %5117, i64* %RSI.i480, align 8
  %5118 = add i64 %5117, 8
  %5119 = add i64 %5069, 58
  store i64 %5119, i64* %3, align 8
  %5120 = inttoptr i64 %5118 to i64*
  %5121 = load i64, i64* %5120, align 8
  store i64 %5121, i64* %RSI.i480, align 8
  %5122 = add i64 %5069, 62
  store i64 %5122, i64* %3, align 8
  %5123 = load i32, i32* %5087, align 4
  %5124 = sext i32 %5123 to i64
  store i64 %5124, i64* %R9.i1328, align 8
  %5125 = shl nsw i64 %5124, 3
  %5126 = add i64 %5125, %5121
  %5127 = add i64 %5069, 66
  store i64 %5127, i64* %3, align 8
  %5128 = inttoptr i64 %5126 to i64*
  %5129 = load i64, i64* %5128, align 8
  store i64 %5129, i64* %RSI.i480, align 8
  %5130 = add i64 %5069, 69
  store i64 %5130, i64* %3, align 8
  %5131 = load i32, i32* %5097, align 4
  %5132 = zext i32 %5131 to i64
  store i64 %5132, i64* %RAX.i175, align 8
  %5133 = sext i32 %5131 to i64
  %5134 = lshr i64 %5133, 32
  store i64 %5134, i64* %1645, align 8
  %5135 = load i32, i32* %ECX.i1102, align 4
  %5136 = add i64 %5069, 74
  store i64 %5136, i64* %3, align 8
  %5137 = sext i32 %5135 to i64
  %5138 = shl nuw i64 %5134, 32
  %5139 = or i64 %5138, %5132
  %5140 = sdiv i64 %5139, %5137
  %5141 = shl i64 %5140, 32
  %5142 = ashr exact i64 %5141, 32
  %5143 = icmp eq i64 %5140, %5142
  br i1 %5143, label %5146, label %5144

; <label>:5144:                                   ; preds = %routine_idivl__ecx.exit823
  %5145 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5136, %struct.Memory* %5027)
  %.pre228 = load i64, i64* %RAX.i175, align 8
  %.pre229 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit754

; <label>:5146:                                   ; preds = %routine_idivl__ecx.exit823
  %5147 = srem i64 %5139, %5137
  %5148 = and i64 %5140, 4294967295
  store i64 %5148, i64* %RAX.i175, align 8
  %5149 = and i64 %5147, 4294967295
  store i64 %5149, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit754

routine_idivl__ecx.exit754:                       ; preds = %5146, %5144
  %5150 = phi i64 [ %.pre229, %5144 ], [ %5136, %5146 ]
  %5151 = phi i64 [ %.pre228, %5144 ], [ %5148, %5146 ]
  %5152 = phi %struct.Memory* [ %5145, %5144 ], [ %5027, %5146 ]
  %.tr92 = trunc i64 %5151 to i32
  %5153 = shl i32 %.tr92, 3
  %5154 = zext i32 %5153 to i64
  store i64 %5154, i64* %RAX.i175, align 8
  %5155 = lshr i64 %5151, 29
  %5156 = trunc i64 %5155 to i8
  %5157 = and i8 %5156, 1
  store i8 %5157, i8* %12, align 1
  %5158 = and i32 %5153, 248
  %5159 = tail call i32 @llvm.ctpop.i32(i32 %5158)
  %5160 = trunc i32 %5159 to i8
  %5161 = and i8 %5160, 1
  %5162 = xor i8 %5161, 1
  store i8 %5162, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5163 = icmp eq i32 %5153, 0
  %5164 = zext i1 %5163 to i8
  store i8 %5164, i8* %15, align 1
  %5165 = lshr i32 %.tr92, 28
  %5166 = trunc i32 %5165 to i8
  %5167 = and i8 %5166, 1
  store i8 %5167, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5168 = load i64, i64* %RBP.i, align 8
  %5169 = add i64 %5168, -16
  %5170 = add i64 %5150, 6
  store i64 %5170, i64* %3, align 8
  %5171 = inttoptr i64 %5169 to i32*
  %5172 = load i32, i32* %5171, align 4
  %5173 = zext i32 %5172 to i64
  store i64 %5173, i64* %RDI.i190, align 8
  %5174 = add i64 %5168, -272
  %5175 = add i64 %5150, 12
  store i64 %5175, i64* %3, align 8
  %5176 = inttoptr i64 %5174 to i32*
  store i32 %5153, i32* %5176, align 4
  %5177 = load i32, i32* %EDI.i2291, align 4
  %5178 = zext i32 %5177 to i64
  %5179 = load i64, i64* %3, align 8
  store i64 %5178, i64* %RAX.i175, align 8
  %5180 = sext i32 %5177 to i64
  %5181 = lshr i64 %5180, 32
  store i64 %5181, i64* %1645, align 8
  %5182 = load i32, i32* %ECX.i1102, align 4
  %5183 = add i64 %5179, 5
  store i64 %5183, i64* %3, align 8
  %5184 = sext i32 %5182 to i64
  %5185 = shl nuw i64 %5181, 32
  %5186 = or i64 %5185, %5178
  %5187 = sdiv i64 %5186, %5184
  %5188 = shl i64 %5187, 32
  %5189 = ashr exact i64 %5188, 32
  %5190 = icmp eq i64 %5187, %5189
  br i1 %5190, label %5193, label %5191

; <label>:5191:                                   ; preds = %routine_idivl__ecx.exit754
  %5192 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5183, %struct.Memory* %5152)
  %.pre230 = load i64, i64* %3, align 8
  %.pre231 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit737

; <label>:5193:                                   ; preds = %routine_idivl__ecx.exit754
  %5194 = srem i64 %5186, %5184
  %5195 = and i64 %5187, 4294967295
  store i64 %5195, i64* %RAX.i175, align 8
  %5196 = and i64 %5194, 4294967295
  store i64 %5196, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5197 = trunc i64 %5194 to i32
  br label %routine_idivl__ecx.exit737

routine_idivl__ecx.exit737:                       ; preds = %5193, %5191
  %5198 = phi i32 [ %.pre231, %5191 ], [ %5197, %5193 ]
  %5199 = phi i64 [ %.pre230, %5191 ], [ %5183, %5193 ]
  %5200 = phi %struct.Memory* [ %5192, %5191 ], [ %5152, %5193 ]
  %5201 = load i64, i64* %RBP.i, align 8
  %5202 = add i64 %5201, -272
  %5203 = add i64 %5199, 6
  store i64 %5203, i64* %3, align 8
  %5204 = inttoptr i64 %5202 to i32*
  %5205 = load i32, i32* %5204, align 4
  %5206 = add i32 %5198, %5205
  %5207 = lshr i32 %5206, 31
  %5208 = add i32 %5206, 4
  %5209 = zext i32 %5208 to i64
  store i64 %5209, i64* %RDI.i190, align 8
  %5210 = icmp ugt i32 %5206, -5
  %5211 = zext i1 %5210 to i8
  store i8 %5211, i8* %12, align 1
  %5212 = and i32 %5208, 255
  %5213 = tail call i32 @llvm.ctpop.i32(i32 %5212)
  %5214 = trunc i32 %5213 to i8
  %5215 = and i8 %5214, 1
  %5216 = xor i8 %5215, 1
  store i8 %5216, i8* %13, align 1
  %5217 = xor i32 %5208, %5206
  %5218 = lshr i32 %5217, 4
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  store i8 %5220, i8* %14, align 1
  %5221 = icmp eq i32 %5208, 0
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %15, align 1
  %5223 = lshr i32 %5208, 31
  %5224 = trunc i32 %5223 to i8
  store i8 %5224, i8* %16, align 1
  %5225 = xor i32 %5223, %5207
  %5226 = add nuw nsw i32 %5225, %5223
  %5227 = icmp eq i32 %5226, 2
  %5228 = zext i1 %5227 to i8
  store i8 %5228, i8* %17, align 1
  %5229 = sext i32 %5208 to i64
  store i64 %5229, i64* %R9.i1328, align 8
  %5230 = load i64, i64* %RSI.i480, align 8
  %5231 = shl nsw i64 %5229, 3
  %5232 = add i64 %5230, %5231
  %5233 = add i64 %5199, 18
  store i64 %5233, i64* %3, align 8
  %5234 = inttoptr i64 %5232 to i64*
  %5235 = load i64, i64* %5234, align 8
  store i64 %5235, i64* %RSI.i480, align 8
  %5236 = load i16, i16* %R10W.i952, align 2
  %5237 = add i64 %5199, 22
  store i64 %5237, i64* %3, align 8
  %5238 = inttoptr i64 %5235 to i16*
  store i16 %5236, i16* %5238, align 2
  %5239 = load i64, i64* %RBP.i, align 8
  %5240 = add i64 %5239, -8
  %5241 = load i64, i64* %3, align 8
  %5242 = add i64 %5241, 4
  store i64 %5242, i64* %3, align 8
  %5243 = inttoptr i64 %5240 to i64*
  %5244 = load i64, i64* %5243, align 8
  store i64 %5244, i64* %RSI.i480, align 8
  %5245 = add i64 %5244, 56
  %5246 = add i64 %5241, 8
  store i64 %5246, i64* %3, align 8
  %5247 = inttoptr i64 %5245 to i64*
  %5248 = load i64, i64* %5247, align 8
  store i64 %5248, i64* %RSI.i480, align 8
  %5249 = add i64 %5248, 6504
  %5250 = add i64 %5241, 15
  store i64 %5250, i64* %3, align 8
  %5251 = inttoptr i64 %5249 to i64*
  %5252 = load i64, i64* %5251, align 8
  store i64 %5252, i64* %RSI.i480, align 8
  %5253 = add i64 %5252, 8
  %5254 = add i64 %5241, 19
  store i64 %5254, i64* %3, align 8
  %5255 = inttoptr i64 %5253 to i64*
  %5256 = load i64, i64* %5255, align 8
  store i64 %5256, i64* %RSI.i480, align 8
  %5257 = add i64 %5239, -12
  %5258 = add i64 %5241, 23
  store i64 %5258, i64* %3, align 8
  %5259 = inttoptr i64 %5257 to i32*
  %5260 = load i32, i32* %5259, align 4
  %5261 = sext i32 %5260 to i64
  store i64 %5261, i64* %R9.i1328, align 8
  %5262 = shl nsw i64 %5261, 3
  %5263 = add i64 %5262, %5256
  %5264 = add i64 %5241, 27
  store i64 %5264, i64* %3, align 8
  %5265 = inttoptr i64 %5263 to i64*
  %5266 = load i64, i64* %5265, align 8
  store i64 %5266, i64* %RSI.i480, align 8
  %5267 = add i64 %5239, -16
  %5268 = add i64 %5241, 31
  store i64 %5268, i64* %3, align 8
  %5269 = inttoptr i64 %5267 to i32*
  %5270 = load i32, i32* %5269, align 4
  %5271 = sext i32 %5270 to i64
  store i64 %5271, i64* %R9.i1328, align 8
  %5272 = shl nsw i64 %5271, 3
  %5273 = add i64 %5272, %5266
  %5274 = add i64 %5241, 35
  store i64 %5274, i64* %3, align 8
  %5275 = inttoptr i64 %5273 to i64*
  %5276 = load i64, i64* %5275, align 8
  store i64 %5276, i64* %RSI.i480, align 8
  %5277 = add i64 %5276, 2
  %5278 = add i64 %5241, 40
  store i64 %5278, i64* %3, align 8
  %5279 = inttoptr i64 %5277 to i16*
  %5280 = load i16, i16* %5279, align 2
  store i16 %5280, i16* %R10W.i952, align 2
  %5281 = add i64 %5241, 44
  store i64 %5281, i64* %3, align 8
  %5282 = load i64, i64* %5243, align 8
  store i64 %5282, i64* %RSI.i480, align 8
  %5283 = add i64 %5282, 40
  %5284 = add i64 %5241, 48
  store i64 %5284, i64* %3, align 8
  %5285 = inttoptr i64 %5283 to i64*
  %5286 = load i64, i64* %5285, align 8
  store i64 %5286, i64* %RSI.i480, align 8
  %5287 = add i64 %5286, 6504
  %5288 = add i64 %5241, 55
  store i64 %5288, i64* %3, align 8
  %5289 = inttoptr i64 %5287 to i64*
  %5290 = load i64, i64* %5289, align 8
  store i64 %5290, i64* %RSI.i480, align 8
  %5291 = add i64 %5290, 8
  %5292 = add i64 %5241, 59
  store i64 %5292, i64* %3, align 8
  %5293 = inttoptr i64 %5291 to i64*
  %5294 = load i64, i64* %5293, align 8
  store i64 %5294, i64* %RSI.i480, align 8
  %5295 = add i64 %5241, 63
  store i64 %5295, i64* %3, align 8
  %5296 = load i32, i32* %5259, align 4
  %5297 = sext i32 %5296 to i64
  store i64 %5297, i64* %R9.i1328, align 8
  %5298 = shl nsw i64 %5297, 3
  %5299 = add i64 %5298, %5294
  %5300 = add i64 %5241, 67
  store i64 %5300, i64* %3, align 8
  %5301 = inttoptr i64 %5299 to i64*
  %5302 = load i64, i64* %5301, align 8
  store i64 %5302, i64* %RSI.i480, align 8
  %5303 = add i64 %5241, 70
  store i64 %5303, i64* %3, align 8
  %5304 = load i32, i32* %5269, align 4
  %5305 = zext i32 %5304 to i64
  store i64 %5305, i64* %RAX.i175, align 8
  %5306 = sext i32 %5304 to i64
  %5307 = lshr i64 %5306, 32
  store i64 %5307, i64* %1645, align 8
  %5308 = load i32, i32* %ECX.i1102, align 4
  %5309 = add i64 %5241, 75
  store i64 %5309, i64* %3, align 8
  %5310 = sext i32 %5308 to i64
  %5311 = shl nuw i64 %5307, 32
  %5312 = or i64 %5311, %5305
  %5313 = sdiv i64 %5312, %5310
  %5314 = shl i64 %5313, 32
  %5315 = ashr exact i64 %5314, 32
  %5316 = icmp eq i64 %5313, %5315
  br i1 %5316, label %5319, label %5317

; <label>:5317:                                   ; preds = %routine_idivl__ecx.exit737
  %5318 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5309, %struct.Memory* %5200)
  %.pre232 = load i64, i64* %RAX.i175, align 8
  %.pre233 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit668

; <label>:5319:                                   ; preds = %routine_idivl__ecx.exit737
  %5320 = srem i64 %5312, %5310
  %5321 = and i64 %5313, 4294967295
  store i64 %5321, i64* %RAX.i175, align 8
  %5322 = and i64 %5320, 4294967295
  store i64 %5322, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit668

routine_idivl__ecx.exit668:                       ; preds = %5319, %5317
  %5323 = phi i64 [ %.pre233, %5317 ], [ %5309, %5319 ]
  %5324 = phi i64 [ %.pre232, %5317 ], [ %5321, %5319 ]
  %5325 = phi %struct.Memory* [ %5318, %5317 ], [ %5200, %5319 ]
  %.tr95 = trunc i64 %5324 to i32
  %5326 = shl i32 %.tr95, 3
  %5327 = zext i32 %5326 to i64
  store i64 %5327, i64* %RAX.i175, align 8
  %5328 = lshr i64 %5324, 29
  %5329 = trunc i64 %5328 to i8
  %5330 = and i8 %5329, 1
  store i8 %5330, i8* %12, align 1
  %5331 = and i32 %5326, 248
  %5332 = tail call i32 @llvm.ctpop.i32(i32 %5331)
  %5333 = trunc i32 %5332 to i8
  %5334 = and i8 %5333, 1
  %5335 = xor i8 %5334, 1
  store i8 %5335, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5336 = icmp eq i32 %5326, 0
  %5337 = zext i1 %5336 to i8
  store i8 %5337, i8* %15, align 1
  %5338 = lshr i32 %.tr95, 28
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  store i8 %5340, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5341 = load i64, i64* %RBP.i, align 8
  %5342 = add i64 %5341, -16
  %5343 = add i64 %5323, 6
  store i64 %5343, i64* %3, align 8
  %5344 = inttoptr i64 %5342 to i32*
  %5345 = load i32, i32* %5344, align 4
  %5346 = zext i32 %5345 to i64
  store i64 %5346, i64* %RDI.i190, align 8
  %5347 = add i64 %5341, -276
  %5348 = add i64 %5323, 12
  store i64 %5348, i64* %3, align 8
  %5349 = inttoptr i64 %5347 to i32*
  store i32 %5326, i32* %5349, align 4
  %5350 = load i32, i32* %EDI.i2291, align 4
  %5351 = zext i32 %5350 to i64
  %5352 = load i64, i64* %3, align 8
  store i64 %5351, i64* %RAX.i175, align 8
  %5353 = sext i32 %5350 to i64
  %5354 = lshr i64 %5353, 32
  store i64 %5354, i64* %1645, align 8
  %5355 = load i32, i32* %ECX.i1102, align 4
  %5356 = add i64 %5352, 5
  store i64 %5356, i64* %3, align 8
  %5357 = sext i32 %5355 to i64
  %5358 = shl nuw i64 %5354, 32
  %5359 = or i64 %5358, %5351
  %5360 = sdiv i64 %5359, %5357
  %5361 = shl i64 %5360, 32
  %5362 = ashr exact i64 %5361, 32
  %5363 = icmp eq i64 %5360, %5362
  br i1 %5363, label %5366, label %5364

; <label>:5364:                                   ; preds = %routine_idivl__ecx.exit668
  %5365 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5356, %struct.Memory* %5325)
  %.pre234 = load i64, i64* %3, align 8
  %.pre235 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit651

; <label>:5366:                                   ; preds = %routine_idivl__ecx.exit668
  %5367 = srem i64 %5359, %5357
  %5368 = and i64 %5360, 4294967295
  store i64 %5368, i64* %RAX.i175, align 8
  %5369 = and i64 %5367, 4294967295
  store i64 %5369, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5370 = trunc i64 %5367 to i32
  br label %routine_idivl__ecx.exit651

routine_idivl__ecx.exit651:                       ; preds = %5366, %5364
  %5371 = phi i32 [ %.pre235, %5364 ], [ %5370, %5366 ]
  %5372 = phi i64 [ %.pre234, %5364 ], [ %5356, %5366 ]
  %5373 = phi %struct.Memory* [ %5365, %5364 ], [ %5325, %5366 ]
  %5374 = load i64, i64* %RBP.i, align 8
  %5375 = add i64 %5374, -276
  %5376 = add i64 %5372, 6
  store i64 %5376, i64* %3, align 8
  %5377 = inttoptr i64 %5375 to i32*
  %5378 = load i32, i32* %5377, align 4
  %5379 = add i32 %5371, %5378
  %5380 = lshr i32 %5379, 31
  %5381 = add i32 %5379, 4
  %5382 = zext i32 %5381 to i64
  store i64 %5382, i64* %RDI.i190, align 8
  %5383 = icmp ugt i32 %5379, -5
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %12, align 1
  %5385 = and i32 %5381, 255
  %5386 = tail call i32 @llvm.ctpop.i32(i32 %5385)
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  %5389 = xor i8 %5388, 1
  store i8 %5389, i8* %13, align 1
  %5390 = xor i32 %5381, %5379
  %5391 = lshr i32 %5390, 4
  %5392 = trunc i32 %5391 to i8
  %5393 = and i8 %5392, 1
  store i8 %5393, i8* %14, align 1
  %5394 = icmp eq i32 %5381, 0
  %5395 = zext i1 %5394 to i8
  store i8 %5395, i8* %15, align 1
  %5396 = lshr i32 %5381, 31
  %5397 = trunc i32 %5396 to i8
  store i8 %5397, i8* %16, align 1
  %5398 = xor i32 %5396, %5380
  %5399 = add nuw nsw i32 %5398, %5396
  %5400 = icmp eq i32 %5399, 2
  %5401 = zext i1 %5400 to i8
  store i8 %5401, i8* %17, align 1
  %5402 = sext i32 %5381 to i64
  store i64 %5402, i64* %R9.i1328, align 8
  %5403 = load i64, i64* %RSI.i480, align 8
  %5404 = shl nsw i64 %5402, 3
  %5405 = add i64 %5403, %5404
  %5406 = add i64 %5372, 18
  store i64 %5406, i64* %3, align 8
  %5407 = inttoptr i64 %5405 to i64*
  %5408 = load i64, i64* %5407, align 8
  store i64 %5408, i64* %RSI.i480, align 8
  %5409 = add i64 %5408, 2
  %5410 = load i16, i16* %R10W.i952, align 2
  %5411 = add i64 %5372, 23
  store i64 %5411, i64* %3, align 8
  %5412 = inttoptr i64 %5409 to i16*
  store i16 %5410, i16* %5412, align 2
  %5413 = load i64, i64* %RBP.i, align 8
  %5414 = add i64 %5413, -8
  %5415 = load i64, i64* %3, align 8
  %5416 = add i64 %5415, 4
  store i64 %5416, i64* %3, align 8
  %5417 = inttoptr i64 %5414 to i64*
  %5418 = load i64, i64* %5417, align 8
  store i64 %5418, i64* %RSI.i480, align 8
  %5419 = add i64 %5418, 56
  %5420 = add i64 %5415, 8
  store i64 %5420, i64* %3, align 8
  %5421 = inttoptr i64 %5419 to i64*
  %5422 = load i64, i64* %5421, align 8
  store i64 %5422, i64* %RSI.i480, align 8
  %5423 = add i64 %5422, 6480
  %5424 = add i64 %5415, 15
  store i64 %5424, i64* %3, align 8
  %5425 = inttoptr i64 %5423 to i64*
  %5426 = load i64, i64* %5425, align 8
  store i64 %5426, i64* %RSI.i480, align 8
  %5427 = add i64 %5415, 18
  store i64 %5427, i64* %3, align 8
  %5428 = inttoptr i64 %5426 to i64*
  %5429 = load i64, i64* %5428, align 8
  store i64 %5429, i64* %RSI.i480, align 8
  %5430 = add i64 %5413, -12
  %5431 = add i64 %5415, 22
  store i64 %5431, i64* %3, align 8
  %5432 = inttoptr i64 %5430 to i32*
  %5433 = load i32, i32* %5432, align 4
  %5434 = sext i32 %5433 to i64
  store i64 %5434, i64* %R9.i1328, align 8
  %5435 = shl nsw i64 %5434, 3
  %5436 = add i64 %5435, %5429
  %5437 = add i64 %5415, 26
  store i64 %5437, i64* %3, align 8
  %5438 = inttoptr i64 %5436 to i64*
  %5439 = load i64, i64* %5438, align 8
  store i64 %5439, i64* %RSI.i480, align 8
  %5440 = add i64 %5413, -16
  %5441 = add i64 %5415, 30
  store i64 %5441, i64* %3, align 8
  %5442 = inttoptr i64 %5440 to i32*
  %5443 = load i32, i32* %5442, align 4
  %5444 = sext i32 %5443 to i64
  store i64 %5444, i64* %R9.i1328, align 8
  %5445 = shl nsw i64 %5444, 1
  %5446 = add i64 %5445, %5439
  %5447 = add i64 %5415, 35
  store i64 %5447, i64* %3, align 8
  %5448 = inttoptr i64 %5446 to i16*
  %5449 = load i16, i16* %5448, align 2
  store i16 %5449, i16* %R10W.i952, align 2
  %5450 = add i64 %5415, 39
  store i64 %5450, i64* %3, align 8
  %5451 = load i64, i64* %5417, align 8
  store i64 %5451, i64* %RSI.i480, align 8
  %5452 = add i64 %5451, 40
  %5453 = add i64 %5415, 43
  store i64 %5453, i64* %3, align 8
  %5454 = inttoptr i64 %5452 to i64*
  %5455 = load i64, i64* %5454, align 8
  store i64 %5455, i64* %RSI.i480, align 8
  %5456 = add i64 %5455, 6480
  %5457 = add i64 %5415, 50
  store i64 %5457, i64* %3, align 8
  %5458 = inttoptr i64 %5456 to i64*
  %5459 = load i64, i64* %5458, align 8
  store i64 %5459, i64* %RSI.i480, align 8
  %5460 = add i64 %5415, 53
  store i64 %5460, i64* %3, align 8
  %5461 = inttoptr i64 %5459 to i64*
  %5462 = load i64, i64* %5461, align 8
  store i64 %5462, i64* %RSI.i480, align 8
  %5463 = add i64 %5415, 57
  store i64 %5463, i64* %3, align 8
  %5464 = load i32, i32* %5432, align 4
  %5465 = sext i32 %5464 to i64
  store i64 %5465, i64* %R9.i1328, align 8
  %5466 = shl nsw i64 %5465, 3
  %5467 = add i64 %5466, %5462
  %5468 = add i64 %5415, 61
  store i64 %5468, i64* %3, align 8
  %5469 = inttoptr i64 %5467 to i64*
  %5470 = load i64, i64* %5469, align 8
  store i64 %5470, i64* %RSI.i480, align 8
  %5471 = add i64 %5415, 64
  store i64 %5471, i64* %3, align 8
  %5472 = load i32, i32* %5442, align 4
  %5473 = zext i32 %5472 to i64
  store i64 %5473, i64* %RAX.i175, align 8
  %5474 = sext i32 %5472 to i64
  %5475 = lshr i64 %5474, 32
  store i64 %5475, i64* %1645, align 8
  %5476 = load i32, i32* %ECX.i1102, align 4
  %5477 = add i64 %5415, 69
  store i64 %5477, i64* %3, align 8
  %5478 = sext i32 %5476 to i64
  %5479 = shl nuw i64 %5475, 32
  %5480 = or i64 %5479, %5473
  %5481 = sdiv i64 %5480, %5478
  %5482 = shl i64 %5481, 32
  %5483 = ashr exact i64 %5482, 32
  %5484 = icmp eq i64 %5481, %5483
  br i1 %5484, label %5487, label %5485

; <label>:5485:                                   ; preds = %routine_idivl__ecx.exit651
  %5486 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5477, %struct.Memory* %5373)
  %.pre236 = load i64, i64* %RAX.i175, align 8
  %.pre237 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit584

; <label>:5487:                                   ; preds = %routine_idivl__ecx.exit651
  %5488 = srem i64 %5480, %5478
  %5489 = and i64 %5481, 4294967295
  store i64 %5489, i64* %RAX.i175, align 8
  %5490 = and i64 %5488, 4294967295
  store i64 %5490, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit584

routine_idivl__ecx.exit584:                       ; preds = %5487, %5485
  %5491 = phi i64 [ %.pre237, %5485 ], [ %5477, %5487 ]
  %5492 = phi i64 [ %.pre236, %5485 ], [ %5489, %5487 ]
  %5493 = phi %struct.Memory* [ %5486, %5485 ], [ %5373, %5487 ]
  %.tr98 = trunc i64 %5492 to i32
  %5494 = shl i32 %.tr98, 3
  %5495 = zext i32 %5494 to i64
  store i64 %5495, i64* %RAX.i175, align 8
  %5496 = lshr i64 %5492, 29
  %5497 = trunc i64 %5496 to i8
  %5498 = and i8 %5497, 1
  store i8 %5498, i8* %12, align 1
  %5499 = and i32 %5494, 248
  %5500 = tail call i32 @llvm.ctpop.i32(i32 %5499)
  %5501 = trunc i32 %5500 to i8
  %5502 = and i8 %5501, 1
  %5503 = xor i8 %5502, 1
  store i8 %5503, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5504 = icmp eq i32 %5494, 0
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %15, align 1
  %5506 = lshr i32 %.tr98, 28
  %5507 = trunc i32 %5506 to i8
  %5508 = and i8 %5507, 1
  store i8 %5508, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5509 = load i64, i64* %RBP.i, align 8
  %5510 = add i64 %5509, -16
  %5511 = add i64 %5491, 6
  store i64 %5511, i64* %3, align 8
  %5512 = inttoptr i64 %5510 to i32*
  %5513 = load i32, i32* %5512, align 4
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RDI.i190, align 8
  %5515 = add i64 %5509, -280
  %5516 = add i64 %5491, 12
  store i64 %5516, i64* %3, align 8
  %5517 = inttoptr i64 %5515 to i32*
  store i32 %5494, i32* %5517, align 4
  %5518 = load i32, i32* %EDI.i2291, align 4
  %5519 = zext i32 %5518 to i64
  %5520 = load i64, i64* %3, align 8
  store i64 %5519, i64* %RAX.i175, align 8
  %5521 = sext i32 %5518 to i64
  %5522 = lshr i64 %5521, 32
  store i64 %5522, i64* %1645, align 8
  %5523 = load i32, i32* %ECX.i1102, align 4
  %5524 = add i64 %5520, 5
  store i64 %5524, i64* %3, align 8
  %5525 = sext i32 %5523 to i64
  %5526 = shl nuw i64 %5522, 32
  %5527 = or i64 %5526, %5519
  %5528 = sdiv i64 %5527, %5525
  %5529 = shl i64 %5528, 32
  %5530 = ashr exact i64 %5529, 32
  %5531 = icmp eq i64 %5528, %5530
  br i1 %5531, label %5534, label %5532

; <label>:5532:                                   ; preds = %routine_idivl__ecx.exit584
  %5533 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5524, %struct.Memory* %5493)
  %.pre238 = load i64, i64* %3, align 8
  %.pre239 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit567

; <label>:5534:                                   ; preds = %routine_idivl__ecx.exit584
  %5535 = srem i64 %5527, %5525
  %5536 = and i64 %5528, 4294967295
  store i64 %5536, i64* %RAX.i175, align 8
  %5537 = and i64 %5535, 4294967295
  store i64 %5537, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5538 = trunc i64 %5535 to i32
  br label %routine_idivl__ecx.exit567

routine_idivl__ecx.exit567:                       ; preds = %5534, %5532
  %5539 = phi i32 [ %.pre239, %5532 ], [ %5538, %5534 ]
  %5540 = phi i64 [ %.pre238, %5532 ], [ %5524, %5534 ]
  %5541 = phi %struct.Memory* [ %5533, %5532 ], [ %5493, %5534 ]
  %5542 = load i64, i64* %RBP.i, align 8
  %5543 = add i64 %5542, -280
  %5544 = add i64 %5540, 6
  store i64 %5544, i64* %3, align 8
  %5545 = inttoptr i64 %5543 to i32*
  %5546 = load i32, i32* %5545, align 4
  %5547 = add i32 %5539, %5546
  %5548 = lshr i32 %5547, 31
  %5549 = add i32 %5547, 4
  %5550 = zext i32 %5549 to i64
  store i64 %5550, i64* %RDI.i190, align 8
  %5551 = icmp ugt i32 %5547, -5
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %12, align 1
  %5553 = and i32 %5549, 255
  %5554 = tail call i32 @llvm.ctpop.i32(i32 %5553)
  %5555 = trunc i32 %5554 to i8
  %5556 = and i8 %5555, 1
  %5557 = xor i8 %5556, 1
  store i8 %5557, i8* %13, align 1
  %5558 = xor i32 %5549, %5547
  %5559 = lshr i32 %5558, 4
  %5560 = trunc i32 %5559 to i8
  %5561 = and i8 %5560, 1
  store i8 %5561, i8* %14, align 1
  %5562 = icmp eq i32 %5549, 0
  %5563 = zext i1 %5562 to i8
  store i8 %5563, i8* %15, align 1
  %5564 = lshr i32 %5549, 31
  %5565 = trunc i32 %5564 to i8
  store i8 %5565, i8* %16, align 1
  %5566 = xor i32 %5564, %5548
  %5567 = add nuw nsw i32 %5566, %5564
  %5568 = icmp eq i32 %5567, 2
  %5569 = zext i1 %5568 to i8
  store i8 %5569, i8* %17, align 1
  %5570 = sext i32 %5549 to i64
  store i64 %5570, i64* %R9.i1328, align 8
  %5571 = load i64, i64* %RSI.i480, align 8
  %5572 = shl nsw i64 %5570, 1
  %5573 = add i64 %5571, %5572
  %5574 = load i16, i16* %R10W.i952, align 2
  %5575 = add i64 %5540, 19
  store i64 %5575, i64* %3, align 8
  %5576 = inttoptr i64 %5573 to i16*
  store i16 %5574, i16* %5576, align 2
  %5577 = load i16, i16* %R10W.i952, align 2
  %5578 = load i64, i64* %3, align 8
  %5579 = sext i16 %5577 to i64
  %5580 = and i64 %5579, 4294967295
  store i64 %5580, i64* %RDX.i756, align 8
  %5581 = load i64, i64* %RBP.i, align 8
  %5582 = add i64 %5581, -20
  %5583 = sext i16 %5577 to i32
  %5584 = add i64 %5578, 7
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5582 to i32*
  store i32 %5583, i32* %5585, align 4
  %5586 = load i64, i64* %RBP.i, align 8
  %5587 = add i64 %5586, -8
  %5588 = load i64, i64* %3, align 8
  %5589 = add i64 %5588, 4
  store i64 %5589, i64* %3, align 8
  %5590 = inttoptr i64 %5587 to i64*
  %5591 = load i64, i64* %5590, align 8
  store i64 %5591, i64* %RSI.i480, align 8
  %5592 = add i64 %5591, 56
  %5593 = add i64 %5588, 8
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i64*
  %5595 = load i64, i64* %5594, align 8
  store i64 %5595, i64* %RSI.i480, align 8
  %5596 = add i64 %5595, 6480
  %5597 = add i64 %5588, 15
  store i64 %5597, i64* %3, align 8
  %5598 = inttoptr i64 %5596 to i64*
  %5599 = load i64, i64* %5598, align 8
  store i64 %5599, i64* %RSI.i480, align 8
  %5600 = add i64 %5599, 8
  %5601 = add i64 %5588, 19
  store i64 %5601, i64* %3, align 8
  %5602 = inttoptr i64 %5600 to i64*
  %5603 = load i64, i64* %5602, align 8
  store i64 %5603, i64* %RSI.i480, align 8
  %5604 = add i64 %5586, -12
  %5605 = add i64 %5588, 23
  store i64 %5605, i64* %3, align 8
  %5606 = inttoptr i64 %5604 to i32*
  %5607 = load i32, i32* %5606, align 4
  %5608 = sext i32 %5607 to i64
  store i64 %5608, i64* %R9.i1328, align 8
  %5609 = shl nsw i64 %5608, 3
  %5610 = add i64 %5609, %5603
  %5611 = add i64 %5588, 27
  store i64 %5611, i64* %3, align 8
  %5612 = inttoptr i64 %5610 to i64*
  %5613 = load i64, i64* %5612, align 8
  store i64 %5613, i64* %RSI.i480, align 8
  %5614 = add i64 %5586, -16
  %5615 = add i64 %5588, 31
  store i64 %5615, i64* %3, align 8
  %5616 = inttoptr i64 %5614 to i32*
  %5617 = load i32, i32* %5616, align 4
  %5618 = sext i32 %5617 to i64
  store i64 %5618, i64* %R9.i1328, align 8
  %5619 = shl nsw i64 %5618, 1
  %5620 = add i64 %5619, %5613
  %5621 = add i64 %5588, 36
  store i64 %5621, i64* %3, align 8
  %5622 = inttoptr i64 %5620 to i16*
  %5623 = load i16, i16* %5622, align 2
  store i16 %5623, i16* %R10W.i952, align 2
  %5624 = add i64 %5588, 40
  store i64 %5624, i64* %3, align 8
  %5625 = load i64, i64* %5590, align 8
  store i64 %5625, i64* %RSI.i480, align 8
  %5626 = add i64 %5625, 40
  %5627 = add i64 %5588, 44
  store i64 %5627, i64* %3, align 8
  %5628 = inttoptr i64 %5626 to i64*
  %5629 = load i64, i64* %5628, align 8
  store i64 %5629, i64* %RSI.i480, align 8
  %5630 = add i64 %5629, 6480
  %5631 = add i64 %5588, 51
  store i64 %5631, i64* %3, align 8
  %5632 = inttoptr i64 %5630 to i64*
  %5633 = load i64, i64* %5632, align 8
  store i64 %5633, i64* %RSI.i480, align 8
  %5634 = add i64 %5633, 8
  %5635 = add i64 %5588, 55
  store i64 %5635, i64* %3, align 8
  %5636 = inttoptr i64 %5634 to i64*
  %5637 = load i64, i64* %5636, align 8
  store i64 %5637, i64* %RSI.i480, align 8
  %5638 = add i64 %5588, 59
  store i64 %5638, i64* %3, align 8
  %5639 = load i32, i32* %5606, align 4
  %5640 = sext i32 %5639 to i64
  store i64 %5640, i64* %R9.i1328, align 8
  %5641 = shl nsw i64 %5640, 3
  %5642 = add i64 %5641, %5637
  %5643 = add i64 %5588, 63
  store i64 %5643, i64* %3, align 8
  %5644 = inttoptr i64 %5642 to i64*
  %5645 = load i64, i64* %5644, align 8
  store i64 %5645, i64* %RSI.i480, align 8
  %5646 = add i64 %5588, 66
  store i64 %5646, i64* %3, align 8
  %5647 = load i32, i32* %5616, align 4
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RAX.i175, align 8
  %5649 = sext i32 %5647 to i64
  %5650 = lshr i64 %5649, 32
  store i64 %5650, i64* %1645, align 8
  %5651 = load i32, i32* %ECX.i1102, align 4
  %5652 = add i64 %5588, 71
  store i64 %5652, i64* %3, align 8
  %5653 = sext i32 %5651 to i64
  %5654 = shl nuw i64 %5650, 32
  %5655 = or i64 %5654, %5648
  %5656 = sdiv i64 %5655, %5653
  %5657 = shl i64 %5656, 32
  %5658 = ashr exact i64 %5657, 32
  %5659 = icmp eq i64 %5656, %5658
  br i1 %5659, label %5662, label %5660

; <label>:5660:                                   ; preds = %routine_idivl__ecx.exit567
  %5661 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5652, %struct.Memory* %5541)
  %.pre240 = load i64, i64* %RAX.i175, align 8
  %.pre241 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit496

; <label>:5662:                                   ; preds = %routine_idivl__ecx.exit567
  %5663 = srem i64 %5655, %5653
  %5664 = and i64 %5656, 4294967295
  store i64 %5664, i64* %RAX.i175, align 8
  %5665 = and i64 %5663, 4294967295
  store i64 %5665, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit496

routine_idivl__ecx.exit496:                       ; preds = %5662, %5660
  %5666 = phi i64 [ %.pre241, %5660 ], [ %5652, %5662 ]
  %5667 = phi i64 [ %.pre240, %5660 ], [ %5664, %5662 ]
  %5668 = phi %struct.Memory* [ %5661, %5660 ], [ %5541, %5662 ]
  %.tr101 = trunc i64 %5667 to i32
  %5669 = shl i32 %.tr101, 3
  %5670 = zext i32 %5669 to i64
  store i64 %5670, i64* %RAX.i175, align 8
  %5671 = lshr i64 %5667, 29
  %5672 = trunc i64 %5671 to i8
  %5673 = and i8 %5672, 1
  store i8 %5673, i8* %12, align 1
  %5674 = and i32 %5669, 248
  %5675 = tail call i32 @llvm.ctpop.i32(i32 %5674)
  %5676 = trunc i32 %5675 to i8
  %5677 = and i8 %5676, 1
  %5678 = xor i8 %5677, 1
  store i8 %5678, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5679 = icmp eq i32 %5669, 0
  %5680 = zext i1 %5679 to i8
  store i8 %5680, i8* %15, align 1
  %5681 = lshr i32 %.tr101, 28
  %5682 = trunc i32 %5681 to i8
  %5683 = and i8 %5682, 1
  store i8 %5683, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5684 = load i64, i64* %RBP.i, align 8
  %5685 = add i64 %5684, -16
  %5686 = add i64 %5666, 6
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = zext i32 %5688 to i64
  store i64 %5689, i64* %RDI.i190, align 8
  %5690 = add i64 %5684, -284
  %5691 = add i64 %5666, 12
  store i64 %5691, i64* %3, align 8
  %5692 = inttoptr i64 %5690 to i32*
  store i32 %5669, i32* %5692, align 4
  %5693 = load i32, i32* %EDI.i2291, align 4
  %5694 = zext i32 %5693 to i64
  %5695 = load i64, i64* %3, align 8
  store i64 %5694, i64* %RAX.i175, align 8
  %5696 = sext i32 %5693 to i64
  %5697 = lshr i64 %5696, 32
  store i64 %5697, i64* %1645, align 8
  %5698 = load i32, i32* %ECX.i1102, align 4
  %5699 = add i64 %5695, 5
  store i64 %5699, i64* %3, align 8
  %5700 = sext i32 %5698 to i64
  %5701 = shl nuw i64 %5697, 32
  %5702 = or i64 %5701, %5694
  %5703 = sdiv i64 %5702, %5700
  %5704 = shl i64 %5703, 32
  %5705 = ashr exact i64 %5704, 32
  %5706 = icmp eq i64 %5703, %5705
  br i1 %5706, label %5709, label %5707

; <label>:5707:                                   ; preds = %routine_idivl__ecx.exit496
  %5708 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5699, %struct.Memory* %5668)
  %.pre242 = load i64, i64* %3, align 8
  %.pre243 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit478

; <label>:5709:                                   ; preds = %routine_idivl__ecx.exit496
  %5710 = srem i64 %5702, %5700
  %5711 = and i64 %5703, 4294967295
  store i64 %5711, i64* %RAX.i175, align 8
  %5712 = and i64 %5710, 4294967295
  store i64 %5712, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5713 = trunc i64 %5710 to i32
  br label %routine_idivl__ecx.exit478

routine_idivl__ecx.exit478:                       ; preds = %5709, %5707
  %5714 = phi i32 [ %.pre243, %5707 ], [ %5713, %5709 ]
  %5715 = phi i64 [ %.pre242, %5707 ], [ %5699, %5709 ]
  %5716 = phi %struct.Memory* [ %5708, %5707 ], [ %5668, %5709 ]
  %5717 = load i64, i64* %RBP.i, align 8
  %5718 = add i64 %5717, -284
  %5719 = add i64 %5715, 6
  store i64 %5719, i64* %3, align 8
  %5720 = inttoptr i64 %5718 to i32*
  %5721 = load i32, i32* %5720, align 4
  %5722 = add i32 %5714, %5721
  %5723 = lshr i32 %5722, 31
  %5724 = add i32 %5722, 4
  %5725 = icmp ugt i32 %5722, -5
  %5726 = zext i1 %5725 to i8
  store i8 %5726, i8* %12, align 1
  %5727 = and i32 %5724, 255
  %5728 = tail call i32 @llvm.ctpop.i32(i32 %5727)
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  %5731 = xor i8 %5730, 1
  store i8 %5731, i8* %13, align 1
  %5732 = xor i32 %5724, %5722
  %5733 = lshr i32 %5732, 4
  %5734 = trunc i32 %5733 to i8
  %5735 = and i8 %5734, 1
  store i8 %5735, i8* %14, align 1
  %5736 = icmp eq i32 %5724, 0
  %5737 = zext i1 %5736 to i8
  store i8 %5737, i8* %15, align 1
  %5738 = lshr i32 %5724, 31
  %5739 = trunc i32 %5738 to i8
  store i8 %5739, i8* %16, align 1
  %5740 = xor i32 %5738, %5723
  %5741 = add nuw nsw i32 %5740, %5738
  %5742 = icmp eq i32 %5741, 2
  %5743 = zext i1 %5742 to i8
  store i8 %5743, i8* %17, align 1
  %5744 = sext i32 %5724 to i64
  store i64 %5744, i64* %R9.i1328, align 8
  %5745 = load i64, i64* %RSI.i480, align 8
  %5746 = shl nsw i64 %5744, 1
  %5747 = add i64 %5745, %5746
  %5748 = load i16, i16* %R10W.i952, align 2
  %5749 = add i64 %5715, 19
  store i64 %5749, i64* %3, align 8
  %5750 = inttoptr i64 %5747 to i16*
  store i16 %5748, i16* %5750, align 2
  %5751 = load i16, i16* %R10W.i952, align 2
  %5752 = load i64, i64* %3, align 8
  %5753 = sext i16 %5751 to i64
  %5754 = and i64 %5753, 4294967295
  store i64 %5754, i64* %RCX.i586, align 8
  %5755 = load i64, i64* %RBP.i, align 8
  %5756 = add i64 %5755, -24
  %5757 = sext i16 %5751 to i32
  %5758 = add i64 %5752, 7
  store i64 %5758, i64* %3, align 8
  %5759 = inttoptr i64 %5756 to i32*
  store i32 %5757, i32* %5759, align 4
  %5760 = load i64, i64* %RBP.i, align 8
  %5761 = add i64 %5760, -20
  %5762 = load i64, i64* %3, align 8
  %5763 = add i64 %5762, 4
  store i64 %5763, i64* %3, align 8
  %5764 = inttoptr i64 %5761 to i32*
  %5765 = load i32, i32* %5764, align 4
  store i8 0, i8* %12, align 1
  %5766 = and i32 %5765, 255
  %5767 = tail call i32 @llvm.ctpop.i32(i32 %5766)
  %5768 = trunc i32 %5767 to i8
  %5769 = and i8 %5768, 1
  %5770 = xor i8 %5769, 1
  store i8 %5770, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5771 = icmp eq i32 %5765, 0
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %15, align 1
  %5773 = lshr i32 %5765, 31
  %5774 = trunc i32 %5773 to i8
  store i8 %5774, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5775 = icmp ne i8 %5774, 0
  %.v117 = select i1 %5775, i64 35, i64 6
  %5776 = add i64 %5763, %.v117
  store i64 %5776, i64* %3, align 8
  br i1 %5775, label %block_.L_4532a6, label %block_453289

block_453289:                                     ; preds = %routine_idivl__ecx.exit478
  %5777 = add i64 %5760, -8
  %5778 = add i64 %5776, 4
  store i64 %5778, i64* %3, align 8
  %5779 = inttoptr i64 %5777 to i64*
  %5780 = load i64, i64* %5779, align 8
  store i64 %5780, i64* %RAX.i175, align 8
  %5781 = add i64 %5780, 56
  %5782 = add i64 %5776, 8
  store i64 %5782, i64* %3, align 8
  %5783 = inttoptr i64 %5781 to i64*
  %5784 = load i64, i64* %5783, align 8
  store i64 %5784, i64* %RAX.i175, align 8
  %5785 = add i64 %5776, 12
  store i64 %5785, i64* %3, align 8
  %5786 = load i32, i32* %5764, align 4
  %5787 = sext i32 %5786 to i64
  store i64 %5787, i64* %RCX.i586, align 8
  %5788 = shl nsw i64 %5787, 3
  %5789 = add i64 %5784, 24
  %5790 = add i64 %5789, %5788
  %5791 = add i64 %5776, 17
  store i64 %5791, i64* %3, align 8
  %5792 = inttoptr i64 %5790 to i64*
  %5793 = load i64, i64* %5792, align 8
  store i64 %5793, i64* %RAX.i175, align 8
  %5794 = add i64 %5760, -296
  %5795 = add i64 %5776, 24
  store i64 %5795, i64* %3, align 8
  %5796 = inttoptr i64 %5794 to i64*
  store i64 %5793, i64* %5796, align 8
  %5797 = load i64, i64* %3, align 8
  %5798 = add i64 %5797, 21
  br label %block_.L_4532b6

block_.L_4532a6:                                  ; preds = %routine_idivl__ecx.exit478
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i586, align 8
  %5799 = add i64 %5760, -296
  %5800 = add i64 %5776, 11
  store i64 %5800, i64* %3, align 8
  %5801 = inttoptr i64 %5799 to i64*
  store i64 0, i64* %5801, align 8
  %5802 = load i64, i64* %3, align 8
  %5803 = add i64 %5802, 5
  store i64 %5803, i64* %3, align 8
  br label %block_.L_4532b6

block_.L_4532b6:                                  ; preds = %block_.L_4532a6, %block_453289
  %storemerge104 = phi i64 [ %5798, %block_453289 ], [ %5803, %block_.L_4532a6 ]
  %5804 = load i64, i64* %RBP.i, align 8
  %5805 = add i64 %5804, -296
  %5806 = add i64 %storemerge104, 7
  store i64 %5806, i64* %3, align 8
  %5807 = inttoptr i64 %5805 to i64*
  %5808 = load i64, i64* %5807, align 8
  store i64 %5808, i64* %RAX.i175, align 8
  %5809 = add i64 %5804, -8
  %5810 = add i64 %storemerge104, 11
  store i64 %5810, i64* %3, align 8
  %5811 = inttoptr i64 %5809 to i64*
  %5812 = load i64, i64* %5811, align 8
  store i64 %5812, i64* %RCX.i586, align 8
  %5813 = add i64 %5812, 56
  %5814 = add i64 %storemerge104, 15
  store i64 %5814, i64* %3, align 8
  %5815 = inttoptr i64 %5813 to i64*
  %5816 = load i64, i64* %5815, align 8
  store i64 %5816, i64* %RCX.i586, align 8
  %5817 = add i64 %5816, 6496
  %5818 = add i64 %storemerge104, 22
  store i64 %5818, i64* %3, align 8
  %5819 = inttoptr i64 %5817 to i64*
  %5820 = load i64, i64* %5819, align 8
  store i64 %5820, i64* %RCX.i586, align 8
  %5821 = add i64 %storemerge104, 25
  store i64 %5821, i64* %3, align 8
  %5822 = inttoptr i64 %5820 to i64*
  %5823 = load i64, i64* %5822, align 8
  store i64 %5823, i64* %RCX.i586, align 8
  %5824 = add i64 %5804, -12
  %5825 = add i64 %storemerge104, 29
  store i64 %5825, i64* %3, align 8
  %5826 = inttoptr i64 %5824 to i32*
  %5827 = load i32, i32* %5826, align 4
  %5828 = sext i32 %5827 to i64
  store i64 %5828, i64* %RDX.i756, align 8
  %5829 = shl nsw i64 %5828, 3
  %5830 = add i64 %5829, %5823
  %5831 = add i64 %storemerge104, 33
  store i64 %5831, i64* %3, align 8
  %5832 = inttoptr i64 %5830 to i64*
  %5833 = load i64, i64* %5832, align 8
  store i64 %5833, i64* %RCX.i586, align 8
  %5834 = add i64 %5804, -16
  %5835 = add i64 %storemerge104, 37
  store i64 %5835, i64* %3, align 8
  %5836 = inttoptr i64 %5834 to i32*
  %5837 = load i32, i32* %5836, align 4
  %5838 = sext i32 %5837 to i64
  store i64 %5838, i64* %RDX.i756, align 8
  %5839 = shl nsw i64 %5838, 3
  %5840 = add i64 %5839, %5833
  %5841 = add i64 %storemerge104, 41
  store i64 %5841, i64* %3, align 8
  %5842 = inttoptr i64 %5840 to i64*
  store i64 %5808, i64* %5842, align 8
  %5843 = load i64, i64* %RBP.i, align 8
  %5844 = add i64 %5843, -24
  %5845 = load i64, i64* %3, align 8
  %5846 = add i64 %5845, 4
  store i64 %5846, i64* %3, align 8
  %5847 = inttoptr i64 %5844 to i32*
  %5848 = load i32, i32* %5847, align 4
  store i8 0, i8* %12, align 1
  %5849 = and i32 %5848, 255
  %5850 = tail call i32 @llvm.ctpop.i32(i32 %5849)
  %5851 = trunc i32 %5850 to i8
  %5852 = and i8 %5851, 1
  %5853 = xor i8 %5852, 1
  store i8 %5853, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5854 = icmp eq i32 %5848, 0
  %5855 = zext i1 %5854 to i8
  store i8 %5855, i8* %15, align 1
  %5856 = lshr i32 %5848, 31
  %5857 = trunc i32 %5856 to i8
  store i8 %5857, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5858 = icmp ne i8 %5857, 0
  %.v118 = select i1 %5858, i64 38, i64 6
  %5859 = add i64 %5846, %.v118
  store i64 %5859, i64* %3, align 8
  br i1 %5858, label %block_.L_453309, label %block_4532e9

block_4532e9:                                     ; preds = %block_.L_4532b6
  %5860 = add i64 %5843, -8
  %5861 = add i64 %5859, 4
  store i64 %5861, i64* %3, align 8
  %5862 = inttoptr i64 %5860 to i64*
  %5863 = load i64, i64* %5862, align 8
  store i64 %5863, i64* %RAX.i175, align 8
  %5864 = add i64 %5863, 56
  %5865 = add i64 %5859, 8
  store i64 %5865, i64* %3, align 8
  %5866 = inttoptr i64 %5864 to i64*
  %5867 = load i64, i64* %5866, align 8
  store i64 %5867, i64* %RAX.i175, align 8
  %5868 = add i64 %5859, 12
  store i64 %5868, i64* %3, align 8
  %5869 = load i32, i32* %5847, align 4
  %5870 = sext i32 %5869 to i64
  store i64 %5870, i64* %RCX.i586, align 8
  %5871 = shl nsw i64 %5870, 3
  %5872 = add i64 %5867, 288
  %5873 = add i64 %5872, %5871
  %5874 = add i64 %5859, 20
  store i64 %5874, i64* %3, align 8
  %5875 = inttoptr i64 %5873 to i64*
  %5876 = load i64, i64* %5875, align 8
  store i64 %5876, i64* %RAX.i175, align 8
  %5877 = add i64 %5843, -304
  %5878 = add i64 %5859, 27
  store i64 %5878, i64* %3, align 8
  %5879 = inttoptr i64 %5877 to i64*
  store i64 %5876, i64* %5879, align 8
  %5880 = load i64, i64* %3, align 8
  %5881 = add i64 %5880, 21
  br label %block_.L_453319

block_.L_453309:                                  ; preds = %block_.L_4532b6
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i586, align 8
  %5882 = add i64 %5843, -304
  %5883 = add i64 %5859, 11
  store i64 %5883, i64* %3, align 8
  %5884 = inttoptr i64 %5882 to i64*
  store i64 0, i64* %5884, align 8
  %5885 = load i64, i64* %3, align 8
  %5886 = add i64 %5885, 5
  store i64 %5886, i64* %3, align 8
  br label %block_.L_453319

block_.L_453319:                                  ; preds = %block_.L_453309, %block_4532e9
  %storemerge105 = phi i64 [ %5881, %block_4532e9 ], [ %5886, %block_.L_453309 ]
  %5887 = load i64, i64* %RBP.i, align 8
  %5888 = add i64 %5887, -304
  %5889 = add i64 %storemerge105, 7
  store i64 %5889, i64* %3, align 8
  %5890 = inttoptr i64 %5888 to i64*
  %5891 = load i64, i64* %5890, align 8
  store i64 %5891, i64* %RAX.i175, align 8
  %5892 = add i64 %5887, -8
  %5893 = add i64 %storemerge105, 11
  store i64 %5893, i64* %3, align 8
  %5894 = inttoptr i64 %5892 to i64*
  %5895 = load i64, i64* %5894, align 8
  store i64 %5895, i64* %RCX.i586, align 8
  %5896 = add i64 %5895, 56
  %5897 = add i64 %storemerge105, 15
  store i64 %5897, i64* %3, align 8
  %5898 = inttoptr i64 %5896 to i64*
  %5899 = load i64, i64* %5898, align 8
  store i64 %5899, i64* %RCX.i586, align 8
  %5900 = add i64 %5899, 6496
  %5901 = add i64 %storemerge105, 22
  store i64 %5901, i64* %3, align 8
  %5902 = inttoptr i64 %5900 to i64*
  %5903 = load i64, i64* %5902, align 8
  store i64 %5903, i64* %RCX.i586, align 8
  %5904 = add i64 %5903, 8
  %5905 = add i64 %storemerge105, 26
  store i64 %5905, i64* %3, align 8
  %5906 = inttoptr i64 %5904 to i64*
  %5907 = load i64, i64* %5906, align 8
  store i64 %5907, i64* %RCX.i586, align 8
  %5908 = add i64 %5887, -12
  %5909 = add i64 %storemerge105, 30
  store i64 %5909, i64* %3, align 8
  %5910 = inttoptr i64 %5908 to i32*
  %5911 = load i32, i32* %5910, align 4
  %5912 = sext i32 %5911 to i64
  store i64 %5912, i64* %RDX.i756, align 8
  %5913 = shl nsw i64 %5912, 3
  %5914 = add i64 %5913, %5907
  %5915 = add i64 %storemerge105, 34
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5914 to i64*
  %5917 = load i64, i64* %5916, align 8
  store i64 %5917, i64* %RCX.i586, align 8
  %5918 = add i64 %5887, -16
  %5919 = add i64 %storemerge105, 38
  store i64 %5919, i64* %3, align 8
  %5920 = inttoptr i64 %5918 to i32*
  %5921 = load i32, i32* %5920, align 4
  %5922 = sext i32 %5921 to i64
  store i64 %5922, i64* %RDX.i756, align 8
  %5923 = shl nsw i64 %5922, 3
  %5924 = add i64 %5923, %5917
  %5925 = add i64 %storemerge105, 42
  store i64 %5925, i64* %3, align 8
  %5926 = inttoptr i64 %5924 to i64*
  store i64 %5891, i64* %5926, align 8
  %5927 = load i64, i64* %RBP.i, align 8
  %5928 = add i64 %5927, -20
  %5929 = load i64, i64* %3, align 8
  %5930 = add i64 %5929, 4
  store i64 %5930, i64* %3, align 8
  %5931 = inttoptr i64 %5928 to i32*
  %5932 = load i32, i32* %5931, align 4
  store i8 0, i8* %12, align 1
  %5933 = and i32 %5932, 255
  %5934 = tail call i32 @llvm.ctpop.i32(i32 %5933)
  %5935 = trunc i32 %5934 to i8
  %5936 = and i8 %5935, 1
  %5937 = xor i8 %5936, 1
  store i8 %5937, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5938 = icmp eq i32 %5932, 0
  %5939 = zext i1 %5938 to i8
  store i8 %5939, i8* %15, align 1
  %5940 = lshr i32 %5932, 31
  %5941 = trunc i32 %5940 to i8
  store i8 %5941, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5942 = icmp ne i8 %5941, 0
  %.v119 = select i1 %5942, i64 38, i64 6
  %5943 = add i64 %5930, %.v119
  store i64 %5943, i64* %3, align 8
  br i1 %5942, label %block_.L_45336d, label %block_45334d

block_45334d:                                     ; preds = %block_.L_453319
  %5944 = add i64 %5927, -8
  %5945 = add i64 %5943, 4
  store i64 %5945, i64* %3, align 8
  %5946 = inttoptr i64 %5944 to i64*
  %5947 = load i64, i64* %5946, align 8
  store i64 %5947, i64* %RAX.i175, align 8
  %5948 = add i64 %5947, 56
  %5949 = add i64 %5943, 8
  store i64 %5949, i64* %3, align 8
  %5950 = inttoptr i64 %5948 to i64*
  %5951 = load i64, i64* %5950, align 8
  store i64 %5951, i64* %RAX.i175, align 8
  %5952 = add i64 %5943, 12
  store i64 %5952, i64* %3, align 8
  %5953 = load i32, i32* %5931, align 4
  %5954 = sext i32 %5953 to i64
  store i64 %5954, i64* %RCX.i586, align 8
  %5955 = shl nsw i64 %5954, 3
  %5956 = add i64 %5951, 1608
  %5957 = add i64 %5956, %5955
  %5958 = add i64 %5943, 20
  store i64 %5958, i64* %3, align 8
  %5959 = inttoptr i64 %5957 to i64*
  %5960 = load i64, i64* %5959, align 8
  store i64 %5960, i64* %RAX.i175, align 8
  %5961 = add i64 %5927, -312
  %5962 = add i64 %5943, 27
  store i64 %5962, i64* %3, align 8
  %5963 = inttoptr i64 %5961 to i64*
  store i64 %5960, i64* %5963, align 8
  %5964 = load i64, i64* %3, align 8
  %5965 = add i64 %5964, 24
  br label %block_.L_453380

block_.L_45336d:                                  ; preds = %block_.L_453319
  store i64 -1, i64* %RAX.i175, align 8
  %5966 = add i64 %5927, -312
  %5967 = add i64 %5943, 14
  store i64 %5967, i64* %3, align 8
  %5968 = inttoptr i64 %5966 to i64*
  store i64 -1, i64* %5968, align 8
  %5969 = load i64, i64* %3, align 8
  %5970 = add i64 %5969, 5
  store i64 %5970, i64* %3, align 8
  br label %block_.L_453380

block_.L_453380:                                  ; preds = %block_.L_45336d, %block_45334d
  %storemerge106 = phi i64 [ %5965, %block_45334d ], [ %5970, %block_.L_45336d ]
  %5971 = load i64, i64* %RBP.i, align 8
  %5972 = add i64 %5971, -312
  %5973 = add i64 %storemerge106, 7
  store i64 %5973, i64* %3, align 8
  %5974 = inttoptr i64 %5972 to i64*
  %5975 = load i64, i64* %5974, align 8
  store i64 %5975, i64* %RAX.i175, align 8
  store i64 4, i64* %RCX.i586, align 8
  %5976 = add i64 %5971, -8
  %5977 = add i64 %storemerge106, 16
  store i64 %5977, i64* %3, align 8
  %5978 = inttoptr i64 %5976 to i64*
  %5979 = load i64, i64* %5978, align 8
  store i64 %5979, i64* %RDX.i756, align 8
  %5980 = add i64 %5979, 40
  %5981 = add i64 %storemerge106, 20
  store i64 %5981, i64* %3, align 8
  %5982 = inttoptr i64 %5980 to i64*
  %5983 = load i64, i64* %5982, align 8
  store i64 %5983, i64* %RDX.i756, align 8
  %5984 = add i64 %5983, 6496
  %5985 = add i64 %storemerge106, 27
  store i64 %5985, i64* %3, align 8
  %5986 = inttoptr i64 %5984 to i64*
  %5987 = load i64, i64* %5986, align 8
  store i64 %5987, i64* %RDX.i756, align 8
  %5988 = add i64 %storemerge106, 30
  store i64 %5988, i64* %3, align 8
  %5989 = inttoptr i64 %5987 to i64*
  %5990 = load i64, i64* %5989, align 8
  store i64 %5990, i64* %RDX.i756, align 8
  %5991 = add i64 %5971, -12
  %5992 = add i64 %storemerge106, 34
  store i64 %5992, i64* %3, align 8
  %5993 = inttoptr i64 %5991 to i32*
  %5994 = load i32, i32* %5993, align 4
  %5995 = sext i32 %5994 to i64
  store i64 %5995, i64* %RSI.i480, align 8
  %5996 = shl nsw i64 %5995, 3
  %5997 = add i64 %5996, %5990
  %5998 = add i64 %storemerge106, 38
  store i64 %5998, i64* %3, align 8
  %5999 = inttoptr i64 %5997 to i64*
  %6000 = load i64, i64* %5999, align 8
  store i64 %6000, i64* %RDX.i756, align 8
  %6001 = add i64 %5971, -16
  %6002 = add i64 %storemerge106, 41
  store i64 %6002, i64* %3, align 8
  %6003 = inttoptr i64 %6001 to i32*
  %6004 = load i32, i32* %6003, align 4
  %6005 = zext i32 %6004 to i64
  store i64 %6005, i64* %RDI.i190, align 8
  %6006 = add i64 %5971, -320
  %6007 = add i64 %storemerge106, 48
  store i64 %6007, i64* %3, align 8
  %6008 = inttoptr i64 %6006 to i64*
  store i64 %5975, i64* %6008, align 8
  %6009 = load i32, i32* %EDI.i2291, align 4
  %6010 = zext i32 %6009 to i64
  %6011 = load i64, i64* %3, align 8
  store i64 %6010, i64* %RAX.i175, align 8
  %6012 = load i64, i64* %RBP.i, align 8
  %6013 = add i64 %6012, -328
  %6014 = load i64, i64* %RDX.i756, align 8
  %6015 = add i64 %6011, 9
  store i64 %6015, i64* %3, align 8
  %6016 = inttoptr i64 %6013 to i64*
  store i64 %6014, i64* %6016, align 8
  %6017 = load i64, i64* %3, align 8
  %6018 = load i32, i32* %EAX.i174, align 8
  %6019 = sext i32 %6018 to i64
  %6020 = lshr i64 %6019, 32
  store i64 %6020, i64* %1645, align 8
  %6021 = load i32, i32* %ECX.i1102, align 4
  %6022 = add i64 %6017, 3
  store i64 %6022, i64* %3, align 8
  %6023 = zext i32 %6018 to i64
  %6024 = sext i32 %6021 to i64
  %6025 = shl nuw i64 %6020, 32
  %6026 = or i64 %6025, %6023
  %6027 = sdiv i64 %6026, %6024
  %6028 = shl i64 %6027, 32
  %6029 = ashr exact i64 %6028, 32
  %6030 = icmp eq i64 %6027, %6029
  br i1 %6030, label %6033, label %6031

; <label>:6031:                                   ; preds = %block_.L_453380
  %6032 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6022, %struct.Memory* %5716)
  %.pre244 = load i64, i64* %RAX.i175, align 8
  %.pre245 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit290

; <label>:6033:                                   ; preds = %block_.L_453380
  %6034 = srem i64 %6026, %6024
  %6035 = and i64 %6027, 4294967295
  store i64 %6035, i64* %RAX.i175, align 8
  %6036 = and i64 %6034, 4294967295
  store i64 %6036, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit290

routine_idivl__ecx.exit290:                       ; preds = %6033, %6031
  %6037 = phi i64 [ %.pre245, %6031 ], [ %6022, %6033 ]
  %6038 = phi i64 [ %.pre244, %6031 ], [ %6035, %6033 ]
  %6039 = phi %struct.Memory* [ %6032, %6031 ], [ %5716, %6033 ]
  %.tr107 = trunc i64 %6038 to i32
  %6040 = shl i32 %.tr107, 3
  %6041 = zext i32 %6040 to i64
  store i64 %6041, i64* %RAX.i175, align 8
  %6042 = lshr i64 %6038, 29
  %6043 = trunc i64 %6042 to i8
  %6044 = and i8 %6043, 1
  store i8 %6044, i8* %12, align 1
  %6045 = and i32 %6040, 248
  %6046 = tail call i32 @llvm.ctpop.i32(i32 %6045)
  %6047 = trunc i32 %6046 to i8
  %6048 = and i8 %6047, 1
  %6049 = xor i8 %6048, 1
  store i8 %6049, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6050 = icmp eq i32 %6040, 0
  %6051 = zext i1 %6050 to i8
  store i8 %6051, i8* %15, align 1
  %6052 = lshr i32 %.tr107, 28
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  store i8 %6054, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6055 = load i64, i64* %RBP.i, align 8
  %6056 = add i64 %6055, -16
  %6057 = add i64 %6037, 6
  store i64 %6057, i64* %3, align 8
  %6058 = inttoptr i64 %6056 to i32*
  %6059 = load i32, i32* %6058, align 4
  %6060 = zext i32 %6059 to i64
  store i64 %6060, i64* %RDI.i190, align 8
  %6061 = add i64 %6055, -332
  %6062 = add i64 %6037, 12
  store i64 %6062, i64* %3, align 8
  %6063 = inttoptr i64 %6061 to i32*
  store i32 %6040, i32* %6063, align 4
  %6064 = load i32, i32* %EDI.i2291, align 4
  %6065 = zext i32 %6064 to i64
  %6066 = load i64, i64* %3, align 8
  store i64 %6065, i64* %RAX.i175, align 8
  %6067 = sext i32 %6064 to i64
  %6068 = lshr i64 %6067, 32
  store i64 %6068, i64* %1645, align 8
  %6069 = load i32, i32* %ECX.i1102, align 4
  %6070 = add i64 %6066, 5
  store i64 %6070, i64* %3, align 8
  %6071 = sext i32 %6069 to i64
  %6072 = shl nuw i64 %6068, 32
  %6073 = or i64 %6072, %6065
  %6074 = sdiv i64 %6073, %6071
  %6075 = shl i64 %6074, 32
  %6076 = ashr exact i64 %6075, 32
  %6077 = icmp eq i64 %6074, %6076
  br i1 %6077, label %6080, label %6078

; <label>:6078:                                   ; preds = %routine_idivl__ecx.exit290
  %6079 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6070, %struct.Memory* %6039)
  %.pre246 = load i64, i64* %3, align 8
  %.pre247 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit272

; <label>:6080:                                   ; preds = %routine_idivl__ecx.exit290
  %6081 = srem i64 %6073, %6071
  %6082 = and i64 %6074, 4294967295
  store i64 %6082, i64* %RAX.i175, align 8
  %6083 = and i64 %6081, 4294967295
  store i64 %6083, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6084 = trunc i64 %6081 to i32
  br label %routine_idivl__ecx.exit272

routine_idivl__ecx.exit272:                       ; preds = %6080, %6078
  %6085 = phi i32 [ %.pre247, %6078 ], [ %6084, %6080 ]
  %6086 = phi i64 [ %.pre246, %6078 ], [ %6070, %6080 ]
  %6087 = phi %struct.Memory* [ %6079, %6078 ], [ %6039, %6080 ]
  %6088 = load i64, i64* %RBP.i, align 8
  %6089 = add i64 %6088, -332
  %6090 = add i64 %6086, 6
  store i64 %6090, i64* %3, align 8
  %6091 = inttoptr i64 %6089 to i32*
  %6092 = load i32, i32* %6091, align 4
  %6093 = add i32 %6085, %6092
  %6094 = lshr i32 %6093, 31
  %6095 = add i32 %6093, 4
  %6096 = zext i32 %6095 to i64
  store i64 %6096, i64* %RCX.i586, align 8
  %6097 = icmp ugt i32 %6093, -5
  %6098 = zext i1 %6097 to i8
  store i8 %6098, i8* %12, align 1
  %6099 = and i32 %6095, 255
  %6100 = tail call i32 @llvm.ctpop.i32(i32 %6099)
  %6101 = trunc i32 %6100 to i8
  %6102 = and i8 %6101, 1
  %6103 = xor i8 %6102, 1
  store i8 %6103, i8* %13, align 1
  %6104 = xor i32 %6095, %6093
  %6105 = lshr i32 %6104, 4
  %6106 = trunc i32 %6105 to i8
  %6107 = and i8 %6106, 1
  store i8 %6107, i8* %14, align 1
  %6108 = icmp eq i32 %6095, 0
  %6109 = zext i1 %6108 to i8
  store i8 %6109, i8* %15, align 1
  %6110 = lshr i32 %6095, 31
  %6111 = trunc i32 %6110 to i8
  store i8 %6111, i8* %16, align 1
  %6112 = xor i32 %6110, %6094
  %6113 = add nuw nsw i32 %6112, %6110
  %6114 = icmp eq i32 %6113, 2
  %6115 = zext i1 %6114 to i8
  store i8 %6115, i8* %17, align 1
  %6116 = sext i32 %6095 to i64
  store i64 %6116, i64* %RSI.i480, align 8
  %6117 = add i64 %6088, -328
  %6118 = add i64 %6086, 21
  store i64 %6118, i64* %3, align 8
  %6119 = inttoptr i64 %6117 to i64*
  %6120 = load i64, i64* %6119, align 8
  store i64 %6120, i64* %86, align 8
  %6121 = add i64 %6088, -320
  %6122 = add i64 %6086, 28
  store i64 %6122, i64* %3, align 8
  %6123 = inttoptr i64 %6121 to i64*
  %6124 = load i64, i64* %6123, align 8
  store i64 %6124, i64* %R9.i1328, align 8
  %6125 = shl nsw i64 %6116, 3
  %6126 = add i64 %6125, %6120
  %6127 = add i64 %6086, 32
  store i64 %6127, i64* %3, align 8
  %6128 = inttoptr i64 %6126 to i64*
  store i64 %6124, i64* %6128, align 8
  %6129 = load i64, i64* %RBP.i, align 8
  %6130 = add i64 %6129, -24
  %6131 = load i64, i64* %3, align 8
  %6132 = add i64 %6131, 4
  store i64 %6132, i64* %3, align 8
  %6133 = inttoptr i64 %6130 to i32*
  %6134 = load i32, i32* %6133, align 4
  store i8 0, i8* %12, align 1
  %6135 = and i32 %6134, 255
  %6136 = tail call i32 @llvm.ctpop.i32(i32 %6135)
  %6137 = trunc i32 %6136 to i8
  %6138 = and i8 %6137, 1
  %6139 = xor i8 %6138, 1
  store i8 %6139, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6140 = icmp eq i32 %6134, 0
  %6141 = zext i1 %6140 to i8
  store i8 %6141, i8* %15, align 1
  %6142 = lshr i32 %6134, 31
  %6143 = trunc i32 %6142 to i8
  store i8 %6143, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6144 = icmp ne i8 %6143, 0
  %.v120 = select i1 %6144, i64 38, i64 6
  %6145 = add i64 %6132, %.v120
  store i64 %6145, i64* %3, align 8
  br i1 %6144, label %block_.L_453417, label %block_4533f7

block_4533f7:                                     ; preds = %routine_idivl__ecx.exit272
  %6146 = add i64 %6129, -8
  %6147 = add i64 %6145, 4
  store i64 %6147, i64* %3, align 8
  %6148 = inttoptr i64 %6146 to i64*
  %6149 = load i64, i64* %6148, align 8
  store i64 %6149, i64* %RAX.i175, align 8
  %6150 = add i64 %6149, 56
  %6151 = add i64 %6145, 8
  store i64 %6151, i64* %3, align 8
  %6152 = inttoptr i64 %6150 to i64*
  %6153 = load i64, i64* %6152, align 8
  store i64 %6153, i64* %RAX.i175, align 8
  %6154 = add i64 %6145, 12
  store i64 %6154, i64* %3, align 8
  %6155 = load i32, i32* %6133, align 4
  %6156 = sext i32 %6155 to i64
  store i64 %6156, i64* %RCX.i586, align 8
  %6157 = shl nsw i64 %6156, 3
  %6158 = add i64 %6153, 1872
  %6159 = add i64 %6158, %6157
  %6160 = add i64 %6145, 20
  store i64 %6160, i64* %3, align 8
  %6161 = inttoptr i64 %6159 to i64*
  %6162 = load i64, i64* %6161, align 8
  store i64 %6162, i64* %RAX.i175, align 8
  %6163 = add i64 %6129, -344
  %6164 = add i64 %6145, 27
  store i64 %6164, i64* %3, align 8
  %6165 = inttoptr i64 %6163 to i64*
  store i64 %6162, i64* %6165, align 8
  %6166 = load i64, i64* %3, align 8
  %6167 = add i64 %6166, 24
  br label %block_.L_45342a

block_.L_453417:                                  ; preds = %routine_idivl__ecx.exit272
  store i64 -1, i64* %RAX.i175, align 8
  %6168 = add i64 %6129, -344
  %6169 = add i64 %6145, 14
  store i64 %6169, i64* %3, align 8
  %6170 = inttoptr i64 %6168 to i64*
  store i64 -1, i64* %6170, align 8
  %6171 = load i64, i64* %3, align 8
  %6172 = add i64 %6171, 5
  store i64 %6172, i64* %3, align 8
  br label %block_.L_45342a

block_.L_45342a:                                  ; preds = %block_.L_453417, %block_4533f7
  %storemerge110 = phi i64 [ %6167, %block_4533f7 ], [ %6172, %block_.L_453417 ]
  %6173 = load i64, i64* %RBP.i, align 8
  %6174 = add i64 %6173, -344
  %6175 = add i64 %storemerge110, 7
  store i64 %6175, i64* %3, align 8
  %6176 = inttoptr i64 %6174 to i64*
  %6177 = load i64, i64* %6176, align 8
  store i64 %6177, i64* %RAX.i175, align 8
  store i64 4, i64* %RCX.i586, align 8
  %6178 = add i64 %6173, -8
  %6179 = add i64 %storemerge110, 16
  store i64 %6179, i64* %3, align 8
  %6180 = inttoptr i64 %6178 to i64*
  %6181 = load i64, i64* %6180, align 8
  store i64 %6181, i64* %RDX.i756, align 8
  %6182 = add i64 %6181, 40
  %6183 = add i64 %storemerge110, 20
  store i64 %6183, i64* %3, align 8
  %6184 = inttoptr i64 %6182 to i64*
  %6185 = load i64, i64* %6184, align 8
  store i64 %6185, i64* %RDX.i756, align 8
  %6186 = add i64 %6185, 6496
  %6187 = add i64 %storemerge110, 27
  store i64 %6187, i64* %3, align 8
  %6188 = inttoptr i64 %6186 to i64*
  %6189 = load i64, i64* %6188, align 8
  store i64 %6189, i64* %RDX.i756, align 8
  %6190 = add i64 %6189, 8
  %6191 = add i64 %storemerge110, 31
  store i64 %6191, i64* %3, align 8
  %6192 = inttoptr i64 %6190 to i64*
  %6193 = load i64, i64* %6192, align 8
  store i64 %6193, i64* %RDX.i756, align 8
  %6194 = add i64 %6173, -12
  %6195 = add i64 %storemerge110, 35
  store i64 %6195, i64* %3, align 8
  %6196 = inttoptr i64 %6194 to i32*
  %6197 = load i32, i32* %6196, align 4
  %6198 = sext i32 %6197 to i64
  store i64 %6198, i64* %RSI.i480, align 8
  %6199 = shl nsw i64 %6198, 3
  %6200 = add i64 %6199, %6193
  %6201 = add i64 %storemerge110, 39
  store i64 %6201, i64* %3, align 8
  %6202 = inttoptr i64 %6200 to i64*
  %6203 = load i64, i64* %6202, align 8
  store i64 %6203, i64* %RDX.i756, align 8
  %6204 = add i64 %6173, -16
  %6205 = add i64 %storemerge110, 42
  store i64 %6205, i64* %3, align 8
  %6206 = inttoptr i64 %6204 to i32*
  %6207 = load i32, i32* %6206, align 4
  %6208 = zext i32 %6207 to i64
  store i64 %6208, i64* %RDI.i190, align 8
  %6209 = add i64 %6173, -352
  %6210 = add i64 %storemerge110, 49
  store i64 %6210, i64* %3, align 8
  %6211 = inttoptr i64 %6209 to i64*
  store i64 %6177, i64* %6211, align 8
  %6212 = load i32, i32* %EDI.i2291, align 4
  %6213 = zext i32 %6212 to i64
  %6214 = load i64, i64* %3, align 8
  store i64 %6213, i64* %RAX.i175, align 8
  %6215 = load i64, i64* %RBP.i, align 8
  %6216 = add i64 %6215, -360
  %6217 = load i64, i64* %RDX.i756, align 8
  %6218 = add i64 %6214, 9
  store i64 %6218, i64* %3, align 8
  %6219 = inttoptr i64 %6216 to i64*
  store i64 %6217, i64* %6219, align 8
  %6220 = load i64, i64* %3, align 8
  %6221 = load i32, i32* %EAX.i174, align 8
  %6222 = sext i32 %6221 to i64
  %6223 = lshr i64 %6222, 32
  store i64 %6223, i64* %1645, align 8
  %6224 = load i32, i32* %ECX.i1102, align 4
  %6225 = add i64 %6220, 3
  store i64 %6225, i64* %3, align 8
  %6226 = zext i32 %6221 to i64
  %6227 = sext i32 %6224 to i64
  %6228 = shl nuw i64 %6223, 32
  %6229 = or i64 %6228, %6226
  %6230 = sdiv i64 %6229, %6227
  %6231 = shl i64 %6230, 32
  %6232 = ashr exact i64 %6231, 32
  %6233 = icmp eq i64 %6230, %6232
  br i1 %6233, label %6236, label %6234

; <label>:6234:                                   ; preds = %block_.L_45342a
  %6235 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6225, %struct.Memory* %6087)
  %.pre248 = load i64, i64* %RAX.i175, align 8
  %.pre249 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit188

; <label>:6236:                                   ; preds = %block_.L_45342a
  %6237 = srem i64 %6229, %6227
  %6238 = and i64 %6230, 4294967295
  store i64 %6238, i64* %RAX.i175, align 8
  %6239 = and i64 %6237, 4294967295
  store i64 %6239, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit188

routine_idivl__ecx.exit188:                       ; preds = %6236, %6234
  %6240 = phi i64 [ %.pre249, %6234 ], [ %6225, %6236 ]
  %6241 = phi i64 [ %.pre248, %6234 ], [ %6238, %6236 ]
  %6242 = phi %struct.Memory* [ %6235, %6234 ], [ %6087, %6236 ]
  %.tr111 = trunc i64 %6241 to i32
  %6243 = shl i32 %.tr111, 3
  %6244 = zext i32 %6243 to i64
  store i64 %6244, i64* %RAX.i175, align 8
  %6245 = lshr i64 %6241, 29
  %6246 = trunc i64 %6245 to i8
  %6247 = and i8 %6246, 1
  store i8 %6247, i8* %12, align 1
  %6248 = and i32 %6243, 248
  %6249 = tail call i32 @llvm.ctpop.i32(i32 %6248)
  %6250 = trunc i32 %6249 to i8
  %6251 = and i8 %6250, 1
  %6252 = xor i8 %6251, 1
  store i8 %6252, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6253 = icmp eq i32 %6243, 0
  %6254 = zext i1 %6253 to i8
  store i8 %6254, i8* %15, align 1
  %6255 = lshr i32 %.tr111, 28
  %6256 = trunc i32 %6255 to i8
  %6257 = and i8 %6256, 1
  store i8 %6257, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6258 = load i64, i64* %RBP.i, align 8
  %6259 = add i64 %6258, -16
  %6260 = add i64 %6240, 6
  store i64 %6260, i64* %3, align 8
  %6261 = inttoptr i64 %6259 to i32*
  %6262 = load i32, i32* %6261, align 4
  %6263 = zext i32 %6262 to i64
  store i64 %6263, i64* %RDI.i190, align 8
  %6264 = add i64 %6258, -364
  %6265 = add i64 %6240, 12
  store i64 %6265, i64* %3, align 8
  %6266 = inttoptr i64 %6264 to i32*
  store i32 %6243, i32* %6266, align 4
  %6267 = load i32, i32* %EDI.i2291, align 4
  %6268 = zext i32 %6267 to i64
  %6269 = load i64, i64* %3, align 8
  store i64 %6268, i64* %RAX.i175, align 8
  %6270 = sext i32 %6267 to i64
  %6271 = lshr i64 %6270, 32
  store i64 %6271, i64* %1645, align 8
  %6272 = load i32, i32* %ECX.i1102, align 4
  %6273 = add i64 %6269, 5
  store i64 %6273, i64* %3, align 8
  %6274 = sext i32 %6272 to i64
  %6275 = shl nuw i64 %6271, 32
  %6276 = or i64 %6275, %6268
  %6277 = sdiv i64 %6276, %6274
  %6278 = shl i64 %6277, 32
  %6279 = ashr exact i64 %6278, 32
  %6280 = icmp eq i64 %6277, %6279
  br i1 %6280, label %6283, label %6281

; <label>:6281:                                   ; preds = %routine_idivl__ecx.exit188
  %6282 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6273, %struct.Memory* %6242)
  %.pre250 = load i64, i64* %3, align 8
  %.pre251 = load i32, i32* %EDX.i1016, align 4
  br label %routine_idivl__ecx.exit

; <label>:6283:                                   ; preds = %routine_idivl__ecx.exit188
  %6284 = srem i64 %6276, %6274
  %6285 = and i64 %6277, 4294967295
  store i64 %6285, i64* %RAX.i175, align 8
  %6286 = and i64 %6284, 4294967295
  store i64 %6286, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6287 = trunc i64 %6284 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %6283, %6281
  %6288 = phi i32 [ %.pre251, %6281 ], [ %6287, %6283 ]
  %6289 = phi i64 [ %.pre250, %6281 ], [ %6273, %6283 ]
  %6290 = phi %struct.Memory* [ %6282, %6281 ], [ %6242, %6283 ]
  %6291 = load i64, i64* %RBP.i, align 8
  %6292 = add i64 %6291, -364
  %6293 = add i64 %6289, 6
  store i64 %6293, i64* %3, align 8
  %6294 = inttoptr i64 %6292 to i32*
  %6295 = load i32, i32* %6294, align 4
  %6296 = add i32 %6288, %6295
  %6297 = lshr i32 %6296, 31
  %6298 = add i32 %6296, 4
  %6299 = zext i32 %6298 to i64
  store i64 %6299, i64* %RCX.i586, align 8
  %6300 = icmp ugt i32 %6296, -5
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %12, align 1
  %6302 = and i32 %6298, 255
  %6303 = tail call i32 @llvm.ctpop.i32(i32 %6302)
  %6304 = trunc i32 %6303 to i8
  %6305 = and i8 %6304, 1
  %6306 = xor i8 %6305, 1
  store i8 %6306, i8* %13, align 1
  %6307 = xor i32 %6298, %6296
  %6308 = lshr i32 %6307, 4
  %6309 = trunc i32 %6308 to i8
  %6310 = and i8 %6309, 1
  store i8 %6310, i8* %14, align 1
  %6311 = icmp eq i32 %6298, 0
  %6312 = zext i1 %6311 to i8
  store i8 %6312, i8* %15, align 1
  %6313 = lshr i32 %6298, 31
  %6314 = trunc i32 %6313 to i8
  store i8 %6314, i8* %16, align 1
  %6315 = xor i32 %6313, %6297
  %6316 = add nuw nsw i32 %6315, %6313
  %6317 = icmp eq i32 %6316, 2
  %6318 = zext i1 %6317 to i8
  store i8 %6318, i8* %17, align 1
  %6319 = sext i32 %6298 to i64
  store i64 %6319, i64* %RSI.i480, align 8
  %6320 = add i64 %6291, -360
  %6321 = add i64 %6289, 21
  store i64 %6321, i64* %3, align 8
  %6322 = inttoptr i64 %6320 to i64*
  %6323 = load i64, i64* %6322, align 8
  store i64 %6323, i64* %86, align 8
  %6324 = add i64 %6291, -352
  %6325 = add i64 %6289, 28
  store i64 %6325, i64* %3, align 8
  %6326 = inttoptr i64 %6324 to i64*
  %6327 = load i64, i64* %6326, align 8
  store i64 %6327, i64* %R9.i1328, align 8
  %6328 = shl nsw i64 %6319, 3
  %6329 = add i64 %6328, %6323
  %6330 = add i64 %6289, 32
  store i64 %6330, i64* %3, align 8
  %6331 = inttoptr i64 %6329 to i64*
  store i64 %6327, i64* %6331, align 8
  %6332 = load i64, i64* %RBP.i, align 8
  %6333 = add i64 %6332, -16
  %6334 = load i64, i64* %3, align 8
  %6335 = add i64 %6334, 3
  store i64 %6335, i64* %3, align 8
  %6336 = inttoptr i64 %6333 to i32*
  %6337 = load i32, i32* %6336, align 4
  %6338 = add i32 %6337, 1
  %6339 = zext i32 %6338 to i64
  store i64 %6339, i64* %RAX.i175, align 8
  %6340 = icmp eq i32 %6337, -1
  %6341 = icmp eq i32 %6338, 0
  %6342 = or i1 %6340, %6341
  %6343 = zext i1 %6342 to i8
  store i8 %6343, i8* %12, align 1
  %6344 = and i32 %6338, 255
  %6345 = tail call i32 @llvm.ctpop.i32(i32 %6344)
  %6346 = trunc i32 %6345 to i8
  %6347 = and i8 %6346, 1
  %6348 = xor i8 %6347, 1
  store i8 %6348, i8* %13, align 1
  %6349 = xor i32 %6338, %6337
  %6350 = lshr i32 %6349, 4
  %6351 = trunc i32 %6350 to i8
  %6352 = and i8 %6351, 1
  store i8 %6352, i8* %14, align 1
  %6353 = zext i1 %6341 to i8
  store i8 %6353, i8* %15, align 1
  %6354 = lshr i32 %6338, 31
  %6355 = trunc i32 %6354 to i8
  store i8 %6355, i8* %16, align 1
  %6356 = lshr i32 %6337, 31
  %6357 = xor i32 %6354, %6356
  %6358 = add nuw nsw i32 %6357, %6354
  %6359 = icmp eq i32 %6358, 2
  %6360 = zext i1 %6359 to i8
  store i8 %6360, i8* %17, align 1
  %6361 = add i64 %6334, 9
  store i64 %6361, i64* %3, align 8
  store i32 %6338, i32* %6336, align 4
  %6362 = load i64, i64* %3, align 8
  %6363 = add i64 %6362, -2604
  store i64 %6363, i64* %3, align 8
  br label %block_.L_452a75

block_.L_4534a6:                                  ; preds = %routine_idivl__esi.exit1921
  %6364 = load i64, i64* %RBP.i, align 8
  %6365 = add i64 %6364, -12
  %6366 = add i64 %2809, 8
  store i64 %6366, i64* %3, align 8
  %6367 = inttoptr i64 %6365 to i32*
  %6368 = load i32, i32* %6367, align 4
  %6369 = add i32 %6368, 1
  %6370 = zext i32 %6369 to i64
  store i64 %6370, i64* %RAX.i175, align 8
  %6371 = icmp eq i32 %6368, -1
  %6372 = icmp eq i32 %6369, 0
  %6373 = or i1 %6371, %6372
  %6374 = zext i1 %6373 to i8
  store i8 %6374, i8* %12, align 1
  %6375 = and i32 %6369, 255
  %6376 = tail call i32 @llvm.ctpop.i32(i32 %6375)
  %6377 = trunc i32 %6376 to i8
  %6378 = and i8 %6377, 1
  %6379 = xor i8 %6378, 1
  store i8 %6379, i8* %13, align 1
  %6380 = xor i32 %6369, %6368
  %6381 = lshr i32 %6380, 4
  %6382 = trunc i32 %6381 to i8
  %6383 = and i8 %6382, 1
  store i8 %6383, i8* %14, align 1
  %6384 = zext i1 %6372 to i8
  store i8 %6384, i8* %15, align 1
  %6385 = lshr i32 %6369, 31
  %6386 = trunc i32 %6385 to i8
  store i8 %6386, i8* %16, align 1
  %6387 = lshr i32 %6368, 31
  %6388 = xor i32 %6385, %6387
  %6389 = add nuw nsw i32 %6388, %6385
  %6390 = icmp eq i32 %6389, 2
  %6391 = zext i1 %6390 to i8
  store i8 %6391, i8* %17, align 1
  %6392 = add i64 %2809, 14
  store i64 %6392, i64* %3, align 8
  store i32 %6369, i32* %6367, align 4
  %6393 = load i64, i64* %3, align 8
  %6394 = add i64 %6393, -2677
  store i64 %6394, i64* %3, align 8
  br label %block_.L_452a3f

block_.L_4534b9:                                  ; preds = %routine_idivl__esi.exit1956
  %6395 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %6395, i64* %RAX.i175, align 8
  %6396 = add i64 %6395, 1148
  %6397 = add i64 %2725, 15
  store i64 %6397, i64* %3, align 8
  %6398 = inttoptr i64 %6396 to i32*
  %6399 = load i32, i32* %6398, align 4
  store i8 0, i8* %12, align 1
  %6400 = and i32 %6399, 255
  %6401 = tail call i32 @llvm.ctpop.i32(i32 %6400)
  %6402 = trunc i32 %6401 to i8
  %6403 = and i8 %6402, 1
  %6404 = xor i8 %6403, 1
  store i8 %6404, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6405 = icmp eq i32 %6399, 0
  %6406 = zext i1 %6405 to i8
  store i8 %6406, i8* %15, align 1
  %6407 = lshr i32 %6399, 31
  %6408 = trunc i32 %6407 to i8
  store i8 %6408, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v284 = select i1 %6405, i64 42, i64 21
  %6409 = add i64 %2725, %.v284
  store i64 %6409, i64* %3, align 8
  br i1 %6405, label %block_.L_4534e3, label %block_4534ce

block_4534ce:                                     ; preds = %block_.L_4534b9
  store i64 %6395, i64* %RAX.i175, align 8
  %6410 = add i64 %6395, 1156
  %6411 = add i64 %6409, 15
  store i64 %6411, i64* %3, align 8
  %6412 = inttoptr i64 %6410 to i32*
  %6413 = load i32, i32* %6412, align 4
  store i8 0, i8* %12, align 1
  %6414 = and i32 %6413, 255
  %6415 = tail call i32 @llvm.ctpop.i32(i32 %6414)
  %6416 = trunc i32 %6415 to i8
  %6417 = and i8 %6416, 1
  %6418 = xor i8 %6417, 1
  store i8 %6418, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6419 = icmp eq i32 %6413, 0
  %6420 = zext i1 %6419 to i8
  store i8 %6420, i8* %15, align 1
  %6421 = lshr i32 %6413, 31
  %6422 = trunc i32 %6421 to i8
  store i8 %6422, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v285 = select i1 %6419, i64 229, i64 21
  %6423 = add i64 %6409, %.v285
  store i64 %6423, i64* %3, align 8
  br i1 %6419, label %block_.L_4535b3, label %block_.L_4534e3

block_.L_4534e3:                                  ; preds = %block_4534ce, %block_.L_4534b9
  %6424 = phi i64 [ %6423, %block_4534ce ], [ %6409, %block_.L_4534b9 ]
  %6425 = load i64, i64* %RBP.i, align 8
  %6426 = add i64 %6425, -12
  %6427 = add i64 %6424, 7
  store i64 %6427, i64* %3, align 8
  %6428 = inttoptr i64 %6426 to i32*
  store i32 0, i32* %6428, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_4534ea

block_.L_4534ea:                                  ; preds = %block_.L_45359b, %block_.L_4534e3
  %6429 = phi i64 [ %.pre169, %block_.L_4534e3 ], [ %6717, %block_.L_45359b ]
  %MEMORY.22 = phi %struct.Memory* [ %2697, %block_.L_4534e3 ], [ %6564, %block_.L_45359b ]
  store i64 4, i64* %RAX.i175, align 8
  %6430 = load i64, i64* %RBP.i, align 8
  %6431 = add i64 %6430, -12
  %6432 = add i64 %6429, 8
  store i64 %6432, i64* %3, align 8
  %6433 = inttoptr i64 %6431 to i32*
  %6434 = load i32, i32* %6433, align 4
  %6435 = zext i32 %6434 to i64
  store i64 %6435, i64* %RCX.i586, align 8
  %6436 = add i64 %6430, -8
  %6437 = add i64 %6429, 12
  store i64 %6437, i64* %3, align 8
  %6438 = inttoptr i64 %6436 to i64*
  %6439 = load i64, i64* %6438, align 8
  store i64 %6439, i64* %RDX.i756, align 8
  %6440 = add i64 %6439, 48
  %6441 = add i64 %6429, 16
  store i64 %6441, i64* %3, align 8
  %6442 = inttoptr i64 %6440 to i64*
  %6443 = load i64, i64* %6442, align 8
  store i64 %6443, i64* %RDX.i756, align 8
  %6444 = add i64 %6443, 6392
  %6445 = add i64 %6429, 22
  store i64 %6445, i64* %3, align 8
  %6446 = inttoptr i64 %6444 to i32*
  %6447 = load i32, i32* %6446, align 4
  %6448 = zext i32 %6447 to i64
  store i64 %6448, i64* %RSI.i480, align 8
  %6449 = add i64 %6430, -368
  %6450 = add i64 %6429, 28
  store i64 %6450, i64* %3, align 8
  %6451 = inttoptr i64 %6449 to i32*
  store i32 4, i32* %6451, align 4
  %6452 = load i32, i32* %ESI.i2339, align 4
  %6453 = zext i32 %6452 to i64
  %6454 = load i64, i64* %3, align 8
  store i64 %6453, i64* %RAX.i175, align 8
  %6455 = sext i32 %6452 to i64
  %6456 = lshr i64 %6455, 32
  store i64 %6456, i64* %1645, align 8
  %6457 = load i64, i64* %RBP.i, align 8
  %6458 = add i64 %6457, -368
  %6459 = add i64 %6454, 9
  store i64 %6459, i64* %3, align 8
  %6460 = inttoptr i64 %6458 to i32*
  %6461 = load i32, i32* %6460, align 4
  %6462 = zext i32 %6461 to i64
  store i64 %6462, i64* %RSI.i480, align 8
  %6463 = add i64 %6454, 11
  store i64 %6463, i64* %3, align 8
  %6464 = sext i32 %6461 to i64
  %6465 = shl nuw i64 %6456, 32
  %6466 = or i64 %6465, %6453
  %6467 = sdiv i64 %6466, %6464
  %6468 = shl i64 %6467, 32
  %6469 = ashr exact i64 %6468, 32
  %6470 = icmp eq i64 %6467, %6469
  br i1 %6470, label %6473, label %6471

; <label>:6471:                                   ; preds = %block_.L_4534ea
  %6472 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6463, %struct.Memory* %MEMORY.22)
  %.pre170 = load i32, i32* %EAX.i174, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit96

; <label>:6473:                                   ; preds = %block_.L_4534ea
  %6474 = srem i64 %6466, %6464
  %6475 = and i64 %6467, 4294967295
  store i64 %6475, i64* %RAX.i175, align 8
  %6476 = and i64 %6474, 4294967295
  store i64 %6476, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6477 = trunc i64 %6467 to i32
  br label %routine_idivl__esi.exit96

routine_idivl__esi.exit96:                        ; preds = %6473, %6471
  %6478 = phi i64 [ %.pre171, %6471 ], [ %6463, %6473 ]
  %6479 = phi i32 [ %.pre170, %6471 ], [ %6477, %6473 ]
  %6480 = phi %struct.Memory* [ %6472, %6471 ], [ %MEMORY.22, %6473 ]
  %6481 = load i32, i32* %ECX.i1102, align 4
  %6482 = sub i32 %6481, %6479
  %6483 = icmp ult i32 %6481, %6479
  %6484 = zext i1 %6483 to i8
  store i8 %6484, i8* %12, align 1
  %6485 = and i32 %6482, 255
  %6486 = tail call i32 @llvm.ctpop.i32(i32 %6485)
  %6487 = trunc i32 %6486 to i8
  %6488 = and i8 %6487, 1
  %6489 = xor i8 %6488, 1
  store i8 %6489, i8* %13, align 1
  %6490 = xor i32 %6479, %6481
  %6491 = xor i32 %6490, %6482
  %6492 = lshr i32 %6491, 4
  %6493 = trunc i32 %6492 to i8
  %6494 = and i8 %6493, 1
  store i8 %6494, i8* %14, align 1
  %6495 = icmp eq i32 %6482, 0
  %6496 = zext i1 %6495 to i8
  store i8 %6496, i8* %15, align 1
  %6497 = lshr i32 %6482, 31
  %6498 = trunc i32 %6497 to i8
  store i8 %6498, i8* %16, align 1
  %6499 = lshr i32 %6481, 31
  %6500 = lshr i32 %6479, 31
  %6501 = xor i32 %6500, %6499
  %6502 = xor i32 %6497, %6499
  %6503 = add nuw nsw i32 %6502, %6501
  %6504 = icmp eq i32 %6503, 2
  %6505 = zext i1 %6504 to i8
  store i8 %6505, i8* %17, align 1
  %6506 = icmp ne i8 %6498, 0
  %6507 = xor i1 %6506, %6504
  %.v286 = select i1 %6507, i64 8, i64 157
  %6508 = add i64 %6478, %.v286
  store i64 %6508, i64* %3, align 8
  br i1 %6507, label %block_453519, label %block_.L_4535ae

block_453519:                                     ; preds = %routine_idivl__esi.exit96
  %6509 = load i64, i64* %RBP.i, align 8
  %6510 = add i64 %6509, -16
  %6511 = add i64 %6508, 7
  store i64 %6511, i64* %3, align 8
  %6512 = inttoptr i64 %6510 to i32*
  store i32 0, i32* %6512, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_453520

block_.L_453520:                                  ; preds = %block_45354f, %block_453519
  %6513 = phi i64 [ %.pre172, %block_453519 ], [ %6687, %block_45354f ]
  %MEMORY.23 = phi %struct.Memory* [ %6480, %block_453519 ], [ %6564, %block_45354f ]
  store i64 4, i64* %RAX.i175, align 8
  %6514 = load i64, i64* %RBP.i, align 8
  %6515 = add i64 %6514, -16
  %6516 = add i64 %6513, 8
  store i64 %6516, i64* %3, align 8
  %6517 = inttoptr i64 %6515 to i32*
  %6518 = load i32, i32* %6517, align 4
  %6519 = zext i32 %6518 to i64
  store i64 %6519, i64* %RCX.i586, align 8
  %6520 = add i64 %6514, -8
  %6521 = add i64 %6513, 12
  store i64 %6521, i64* %3, align 8
  %6522 = inttoptr i64 %6520 to i64*
  %6523 = load i64, i64* %6522, align 8
  store i64 %6523, i64* %RDX.i756, align 8
  %6524 = add i64 %6523, 48
  %6525 = add i64 %6513, 16
  store i64 %6525, i64* %3, align 8
  %6526 = inttoptr i64 %6524 to i64*
  %6527 = load i64, i64* %6526, align 8
  store i64 %6527, i64* %RDX.i756, align 8
  %6528 = add i64 %6527, 6396
  %6529 = add i64 %6513, 22
  store i64 %6529, i64* %3, align 8
  %6530 = inttoptr i64 %6528 to i32*
  %6531 = load i32, i32* %6530, align 4
  %6532 = zext i32 %6531 to i64
  store i64 %6532, i64* %RSI.i480, align 8
  %6533 = add i64 %6514, -372
  %6534 = add i64 %6513, 28
  store i64 %6534, i64* %3, align 8
  %6535 = inttoptr i64 %6533 to i32*
  store i32 4, i32* %6535, align 4
  %6536 = load i32, i32* %ESI.i2339, align 4
  %6537 = zext i32 %6536 to i64
  %6538 = load i64, i64* %3, align 8
  store i64 %6537, i64* %RAX.i175, align 8
  %6539 = sext i32 %6536 to i64
  %6540 = lshr i64 %6539, 32
  store i64 %6540, i64* %1645, align 8
  %6541 = load i64, i64* %RBP.i, align 8
  %6542 = add i64 %6541, -372
  %6543 = add i64 %6538, 9
  store i64 %6543, i64* %3, align 8
  %6544 = inttoptr i64 %6542 to i32*
  %6545 = load i32, i32* %6544, align 4
  %6546 = zext i32 %6545 to i64
  store i64 %6546, i64* %RSI.i480, align 8
  %6547 = add i64 %6538, 11
  store i64 %6547, i64* %3, align 8
  %6548 = sext i32 %6545 to i64
  %6549 = shl nuw i64 %6540, 32
  %6550 = or i64 %6549, %6537
  %6551 = sdiv i64 %6550, %6548
  %6552 = shl i64 %6551, 32
  %6553 = ashr exact i64 %6552, 32
  %6554 = icmp eq i64 %6551, %6553
  br i1 %6554, label %6557, label %6555

; <label>:6555:                                   ; preds = %block_.L_453520
  %6556 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6547, %struct.Memory* %MEMORY.23)
  %.pre173 = load i32, i32* %EAX.i174, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:6557:                                   ; preds = %block_.L_453520
  %6558 = srem i64 %6550, %6548
  %6559 = and i64 %6551, 4294967295
  store i64 %6559, i64* %RAX.i175, align 8
  %6560 = and i64 %6558, 4294967295
  store i64 %6560, i64* %RDX.i756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6561 = trunc i64 %6551 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %6557, %6555
  %6562 = phi i64 [ %.pre174, %6555 ], [ %6547, %6557 ]
  %6563 = phi i32 [ %.pre173, %6555 ], [ %6561, %6557 ]
  %6564 = phi %struct.Memory* [ %6556, %6555 ], [ %MEMORY.23, %6557 ]
  %6565 = load i32, i32* %ECX.i1102, align 4
  %6566 = sub i32 %6565, %6563
  %6567 = icmp ult i32 %6565, %6563
  %6568 = zext i1 %6567 to i8
  store i8 %6568, i8* %12, align 1
  %6569 = and i32 %6566, 255
  %6570 = tail call i32 @llvm.ctpop.i32(i32 %6569)
  %6571 = trunc i32 %6570 to i8
  %6572 = and i8 %6571, 1
  %6573 = xor i8 %6572, 1
  store i8 %6573, i8* %13, align 1
  %6574 = xor i32 %6563, %6565
  %6575 = xor i32 %6574, %6566
  %6576 = lshr i32 %6575, 4
  %6577 = trunc i32 %6576 to i8
  %6578 = and i8 %6577, 1
  store i8 %6578, i8* %14, align 1
  %6579 = icmp eq i32 %6566, 0
  %6580 = zext i1 %6579 to i8
  store i8 %6580, i8* %15, align 1
  %6581 = lshr i32 %6566, 31
  %6582 = trunc i32 %6581 to i8
  store i8 %6582, i8* %16, align 1
  %6583 = lshr i32 %6565, 31
  %6584 = lshr i32 %6563, 31
  %6585 = xor i32 %6584, %6583
  %6586 = xor i32 %6581, %6583
  %6587 = add nuw nsw i32 %6586, %6585
  %6588 = icmp eq i32 %6587, 2
  %6589 = zext i1 %6588 to i8
  store i8 %6589, i8* %17, align 1
  %6590 = icmp ne i8 %6582, 0
  %6591 = xor i1 %6590, %6588
  %.v287 = select i1 %6591, i64 8, i64 84
  %6592 = add i64 %6562, %.v287
  store i64 %6592, i64* %3, align 8
  %6593 = load i64, i64* %RBP.i, align 8
  br i1 %6591, label %block_45354f, label %block_.L_45359b

block_45354f:                                     ; preds = %routine_idivl__esi.exit
  %6594 = add i64 %6593, -8
  %6595 = add i64 %6592, 4
  store i64 %6595, i64* %3, align 8
  %6596 = inttoptr i64 %6594 to i64*
  %6597 = load i64, i64* %6596, align 8
  store i64 %6597, i64* %RAX.i175, align 8
  %6598 = add i64 %6597, 48
  %6599 = add i64 %6592, 8
  store i64 %6599, i64* %3, align 8
  %6600 = inttoptr i64 %6598 to i64*
  %6601 = load i64, i64* %6600, align 8
  store i64 %6601, i64* %RAX.i175, align 8
  %6602 = add i64 %6601, 6520
  %6603 = add i64 %6592, 15
  store i64 %6603, i64* %3, align 8
  %6604 = inttoptr i64 %6602 to i64*
  %6605 = load i64, i64* %6604, align 8
  store i64 %6605, i64* %RAX.i175, align 8
  %6606 = add i64 %6593, -12
  %6607 = add i64 %6592, 19
  store i64 %6607, i64* %3, align 8
  %6608 = inttoptr i64 %6606 to i32*
  %6609 = load i32, i32* %6608, align 4
  %6610 = sext i32 %6609 to i64
  store i64 %6610, i64* %RCX.i586, align 8
  %6611 = shl nsw i64 %6610, 3
  %6612 = add i64 %6611, %6605
  %6613 = add i64 %6592, 23
  store i64 %6613, i64* %3, align 8
  %6614 = inttoptr i64 %6612 to i64*
  %6615 = load i64, i64* %6614, align 8
  store i64 %6615, i64* %RAX.i175, align 8
  %6616 = add i64 %6593, -16
  %6617 = add i64 %6592, 27
  store i64 %6617, i64* %3, align 8
  %6618 = inttoptr i64 %6616 to i32*
  %6619 = load i32, i32* %6618, align 4
  %6620 = sext i32 %6619 to i64
  store i64 %6620, i64* %RCX.i586, align 8
  %6621 = add i64 %6615, %6620
  %6622 = add i64 %6592, 31
  store i64 %6622, i64* %3, align 8
  %6623 = inttoptr i64 %6621 to i8*
  store i8 1, i8* %6623, align 1
  %6624 = load i64, i64* %RBP.i, align 8
  %6625 = add i64 %6624, -8
  %6626 = load i64, i64* %3, align 8
  %6627 = add i64 %6626, 4
  store i64 %6627, i64* %3, align 8
  %6628 = inttoptr i64 %6625 to i64*
  %6629 = load i64, i64* %6628, align 8
  store i64 %6629, i64* %RAX.i175, align 8
  %6630 = add i64 %6629, 56
  %6631 = add i64 %6626, 8
  store i64 %6631, i64* %3, align 8
  %6632 = inttoptr i64 %6630 to i64*
  %6633 = load i64, i64* %6632, align 8
  store i64 %6633, i64* %RAX.i175, align 8
  %6634 = add i64 %6633, 6520
  %6635 = add i64 %6626, 15
  store i64 %6635, i64* %3, align 8
  %6636 = inttoptr i64 %6634 to i64*
  %6637 = load i64, i64* %6636, align 8
  store i64 %6637, i64* %RAX.i175, align 8
  %6638 = add i64 %6624, -12
  %6639 = add i64 %6626, 19
  store i64 %6639, i64* %3, align 8
  %6640 = inttoptr i64 %6638 to i32*
  %6641 = load i32, i32* %6640, align 4
  %6642 = sext i32 %6641 to i64
  store i64 %6642, i64* %RCX.i586, align 8
  %6643 = shl nsw i64 %6642, 3
  %6644 = add i64 %6643, %6637
  %6645 = add i64 %6626, 23
  store i64 %6645, i64* %3, align 8
  %6646 = inttoptr i64 %6644 to i64*
  %6647 = load i64, i64* %6646, align 8
  store i64 %6647, i64* %RAX.i175, align 8
  %6648 = add i64 %6624, -16
  %6649 = add i64 %6626, 27
  store i64 %6649, i64* %3, align 8
  %6650 = inttoptr i64 %6648 to i32*
  %6651 = load i32, i32* %6650, align 4
  %6652 = sext i32 %6651 to i64
  store i64 %6652, i64* %RCX.i586, align 8
  %6653 = add i64 %6647, %6652
  %6654 = add i64 %6626, 31
  store i64 %6654, i64* %3, align 8
  %6655 = inttoptr i64 %6653 to i8*
  store i8 1, i8* %6655, align 1
  %6656 = load i64, i64* %RBP.i, align 8
  %6657 = add i64 %6656, -16
  %6658 = load i64, i64* %3, align 8
  %6659 = add i64 %6658, 3
  store i64 %6659, i64* %3, align 8
  %6660 = inttoptr i64 %6657 to i32*
  %6661 = load i32, i32* %6660, align 4
  %6662 = add i32 %6661, 1
  %6663 = zext i32 %6662 to i64
  store i64 %6663, i64* %RAX.i175, align 8
  %6664 = icmp eq i32 %6661, -1
  %6665 = icmp eq i32 %6662, 0
  %6666 = or i1 %6664, %6665
  %6667 = zext i1 %6666 to i8
  store i8 %6667, i8* %12, align 1
  %6668 = and i32 %6662, 255
  %6669 = tail call i32 @llvm.ctpop.i32(i32 %6668)
  %6670 = trunc i32 %6669 to i8
  %6671 = and i8 %6670, 1
  %6672 = xor i8 %6671, 1
  store i8 %6672, i8* %13, align 1
  %6673 = xor i32 %6662, %6661
  %6674 = lshr i32 %6673, 4
  %6675 = trunc i32 %6674 to i8
  %6676 = and i8 %6675, 1
  store i8 %6676, i8* %14, align 1
  %6677 = zext i1 %6665 to i8
  store i8 %6677, i8* %15, align 1
  %6678 = lshr i32 %6662, 31
  %6679 = trunc i32 %6678 to i8
  store i8 %6679, i8* %16, align 1
  %6680 = lshr i32 %6661, 31
  %6681 = xor i32 %6678, %6680
  %6682 = add nuw nsw i32 %6681, %6678
  %6683 = icmp eq i32 %6682, 2
  %6684 = zext i1 %6683 to i8
  store i8 %6684, i8* %17, align 1
  %6685 = add i64 %6658, 9
  store i64 %6685, i64* %3, align 8
  store i32 %6662, i32* %6660, align 4
  %6686 = load i64, i64* %3, align 8
  %6687 = add i64 %6686, -118
  store i64 %6687, i64* %3, align 8
  br label %block_.L_453520

block_.L_45359b:                                  ; preds = %routine_idivl__esi.exit
  %6688 = add i64 %6593, -12
  %6689 = add i64 %6592, 8
  store i64 %6689, i64* %3, align 8
  %6690 = inttoptr i64 %6688 to i32*
  %6691 = load i32, i32* %6690, align 4
  %6692 = add i32 %6691, 1
  %6693 = zext i32 %6692 to i64
  store i64 %6693, i64* %RAX.i175, align 8
  %6694 = icmp eq i32 %6691, -1
  %6695 = icmp eq i32 %6692, 0
  %6696 = or i1 %6694, %6695
  %6697 = zext i1 %6696 to i8
  store i8 %6697, i8* %12, align 1
  %6698 = and i32 %6692, 255
  %6699 = tail call i32 @llvm.ctpop.i32(i32 %6698)
  %6700 = trunc i32 %6699 to i8
  %6701 = and i8 %6700, 1
  %6702 = xor i8 %6701, 1
  store i8 %6702, i8* %13, align 1
  %6703 = xor i32 %6692, %6691
  %6704 = lshr i32 %6703, 4
  %6705 = trunc i32 %6704 to i8
  %6706 = and i8 %6705, 1
  store i8 %6706, i8* %14, align 1
  %6707 = zext i1 %6695 to i8
  store i8 %6707, i8* %15, align 1
  %6708 = lshr i32 %6692, 31
  %6709 = trunc i32 %6708 to i8
  store i8 %6709, i8* %16, align 1
  %6710 = lshr i32 %6691, 31
  %6711 = xor i32 %6708, %6710
  %6712 = add nuw nsw i32 %6711, %6708
  %6713 = icmp eq i32 %6712, 2
  %6714 = zext i1 %6713 to i8
  store i8 %6714, i8* %17, align 1
  %6715 = add i64 %6592, 14
  store i64 %6715, i64* %3, align 8
  store i32 %6692, i32* %6690, align 4
  %6716 = load i64, i64* %3, align 8
  %6717 = add i64 %6716, -191
  store i64 %6717, i64* %3, align 8
  br label %block_.L_4534ea

block_.L_4535ae:                                  ; preds = %routine_idivl__esi.exit96
  %6718 = add i64 %6508, 5
  store i64 %6718, i64* %3, align 8
  br label %block_.L_4535b3

block_.L_4535b3:                                  ; preds = %block_.L_4535ae, %block_4534ce
  %6719 = phi i64 [ %6718, %block_.L_4535ae ], [ %6423, %block_4534ce ]
  %MEMORY.24 = phi %struct.Memory* [ %6480, %block_.L_4535ae ], [ %2697, %block_4534ce ]
  %6720 = load i64, i64* %6, align 8
  %6721 = add i64 %6720, 384
  store i64 %6721, i64* %6, align 8
  %6722 = icmp ugt i64 %6720, -385
  %6723 = zext i1 %6722 to i8
  store i8 %6723, i8* %12, align 1
  %6724 = trunc i64 %6721 to i32
  %6725 = and i32 %6724, 255
  %6726 = tail call i32 @llvm.ctpop.i32(i32 %6725)
  %6727 = trunc i32 %6726 to i8
  %6728 = and i8 %6727, 1
  %6729 = xor i8 %6728, 1
  store i8 %6729, i8* %13, align 1
  %6730 = xor i64 %6721, %6720
  %6731 = lshr i64 %6730, 4
  %6732 = trunc i64 %6731 to i8
  %6733 = and i8 %6732, 1
  store i8 %6733, i8* %14, align 1
  %6734 = icmp eq i64 %6721, 0
  %6735 = zext i1 %6734 to i8
  store i8 %6735, i8* %15, align 1
  %6736 = lshr i64 %6721, 63
  %6737 = trunc i64 %6736 to i8
  store i8 %6737, i8* %16, align 1
  %6738 = lshr i64 %6720, 63
  %6739 = xor i64 %6736, %6738
  %6740 = add nuw nsw i64 %6739, %6736
  %6741 = icmp eq i64 %6740, 2
  %6742 = zext i1 %6741 to i8
  store i8 %6742, i8* %17, align 1
  %6743 = add i64 %6719, 8
  store i64 %6743, i64* %3, align 8
  %6744 = add i64 %6720, 392
  %6745 = inttoptr i64 %6721 to i64*
  %6746 = load i64, i64* %6745, align 8
  store i64 %6746, i64* %RBP.i, align 8
  store i64 %6744, i64* %6, align 8
  %6747 = add i64 %6719, 9
  store i64 %6747, i64* %3, align 8
  %6748 = inttoptr i64 %6744 to i64*
  %6749 = load i64, i64* %6748, align 8
  store i64 %6749, i64* %3, align 8
  %6750 = add i64 %6720, 400
  store i64 %6750, i64* %6, align 8
  ret %struct.Memory* %MEMORY.24
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
define %struct.Memory* @routine_subq__0x180___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -384
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 384
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
define %struct.Memory* @routine_movq_0x30__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18f8__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 6392
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
define %struct.Memory* @routine_movl_0x18fc__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1900__rdi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x1904__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 6404
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 1
  %9 = icmp slt i32 %5, 0
  %10 = icmp slt i32 %8, 0
  %11 = xor i1 %9, %10
  %12 = zext i32 %8 to i64
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %5, 31
  %14 = trunc i32 %.lobit to i8
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = and i32 %8, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %15, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %5, 30
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %30 = zext i1 %11 to i8
  store i8 %30, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x28__r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18fc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 6396
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4523b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x18f8__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4522df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x1904__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 6404
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45256b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x1900__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4523c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.UnifiedOneForthPix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4525a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4525b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x10__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x24__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18ec__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6380
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
define %struct.Memory* @routine_movb__dl__MINUS0x55__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -85
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_452674(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6380
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
define %struct.Memory* @routine_setne__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x55__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -85
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x55__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -85
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
define %struct.Memory* @routine_movl__ecx__0x18ec__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 6380
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18e8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6376
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
define %struct.Memory* @routine_movb__dl__MINUS0x56__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -86
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4526bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6376
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
define %struct.Memory* @routine_movb__cl__MINUS0x56__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -86
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x56__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -86
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x18e8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 6376
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18e8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6376
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
define %struct.Memory* @routine_je_.L_4526fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6372
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x1980__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6528
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x1988__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6536
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x190c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6412
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1998__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6552
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
define %struct.Memory* @routine_movl__edx__0x1998__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6552
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x19a0__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6560
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
define %struct.Memory* @routine_movl__edx__0x19a0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6560
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_4527f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x19ac__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6572
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
define %struct.Memory* @routine_movl__ecx__0x19ac__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6572
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x19b0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6576
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
define %struct.Memory* @routine_movl__ecx__0x19b0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6576
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x19a4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6564
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
define %struct.Memory* @routine_movl__ecx__0x19a4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6564
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x19a8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6568
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
define %struct.Memory* @routine_movl__ecx__0x19a8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6568
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x1990__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6544
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x7247b4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45292e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x120__rdx__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
block_400488:
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

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x120__rsi__r8_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_4528db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_452908(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x120__rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RAX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452825(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7247b0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jge_.L_452a38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rdx__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rsi__r8_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4529e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_452a12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x18__rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RAX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452935(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18f8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6392
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
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_jge_.L_4534b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18fc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6396
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_jge_.L_4534a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1978__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -5
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
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____rcx__r8_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rcx____r9w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %R9W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r9w____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %R9W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rcx____r9w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R9W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r9w__0x2__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %R9W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rcx__r8_2____r9w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %R9W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r9w____rcx__r8_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %R9W, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r9w___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R9W, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jl_.L_452df3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452e03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jl_.L_452e56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x120__rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452e66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_452eba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x648__rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 1608
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452eca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1960__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9____r8__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %R9, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_452f5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x750__rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 1872
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452f6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x104__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rsi____r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %R10W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rsi____r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w__0x2__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %R10W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x110__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x114__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rsi__r9_2____r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x118__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w____rsi__r9_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %R10W, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r10w___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R10W, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
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
define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -5
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
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r10w___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i16, i16* %R10W, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4532a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4532b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x128__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_453309(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453319(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x130__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_45336d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453380(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  store i64 -1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x138__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
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
define %struct.Memory* @routine_movq_MINUS0x148__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x140__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_453417(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45342a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x158__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x16c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -364
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
define %struct.Memory* @routine_movq_MINUS0x168__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x160__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452a75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4534ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_452a3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_je_.L_4534e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x484__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1156
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
define %struct.Memory* @routine_je_.L_4535b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x170__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
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
define %struct.Memory* @routine_jge_.L_4535ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x174__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -372
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
define %struct.Memory* @routine_jge_.L_45359b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1978__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4535a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4534ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4535b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x180___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -385
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
