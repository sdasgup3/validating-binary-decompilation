; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G__0x4b23a0_type = type <{ [8 x i8] }>
%G__0x6d09f0_type = type <{ [8 x i8] }>
%G__0x70d010_type = type <{ [8 x i8] }>
%G__0x70e8f0_type = type <{ [8 x i8] }>
%G__0x70fe80_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G__0x4b23a0 = global %G__0x4b23a0_type zeroinitializer
@G__0x6d09f0 = global %G__0x6d09f0_type zeroinitializer
@G__0x70d010 = global %G__0x70d010_type zeroinitializer
@G__0x70e8f0 = global %G__0x70e8f0_type zeroinitializer
@G__0x70fe80 = global %G__0x70fe80_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_475150.sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dct_luma(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -264
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1982 = bitcast %union.anon* %18 to i32*
  %RAX.i1983 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %AL.i2555 = bitcast %union.anon* %18 to i8*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i = bitcast %union.anon* %19 to i8*
  store i8 0, i8* %R8B.i, align 1
  store i64 2, i64* %RAX.i1983, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %20 to i32*
  %21 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0
  store i64 4, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2719 = bitcast %union.anon* %22 to i32*
  %23 = add i64 %7, -12
  %24 = load i32, i32* %EDI.i2719, align 4
  %25 = add i64 %10, 29
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2738 = bitcast %union.anon* %27 to i32*
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -8
  %30 = load i32, i32* %ESI.i2738, align 4
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 3
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %33, align 4
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2756 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -16
  %37 = load i64, i64* %RDX.i2756, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %36 to i64*
  store i64 %37, i64* %40, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2771 = bitcast %union.anon* %41 to i32*
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -20
  %44 = load i32, i32* %ECX.i2771, align 4
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 3
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %47, align 4
  %RCX.i2784 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RCX.i2784, align 8
  %55 = add i64 %48, -160
  %56 = load i32, i32* %EAX.i1982, align 4
  %57 = add i64 %50, 9
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %ECX.i2771, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* %3, align 8
  store i64 %60, i64* %RAX.i1983, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %63 = sext i32 %59 to i64
  %64 = lshr i64 %63, 32
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %R9D.i, align 4
  %66 = add i64 %61, 6
  store i64 %66, i64* %3, align 8
  %67 = bitcast %union.anon* %34 to i32*
  %68 = sext i32 %65 to i64
  %69 = shl nuw i64 %64, 32
  %70 = or i64 %69, %60
  %71 = sdiv i64 %70, %68
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %77, label %75

; <label>:75:                                     ; preds = %entry
  %76 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %66, %struct.Memory* %2)
  %.pre = load i32, i32* %EAX.i1982, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit2782

; <label>:77:                                     ; preds = %entry
  %78 = srem i64 %70, %68
  %79 = and i64 %71, 4294967295
  store i64 %79, i64* %RAX.i1983, align 8
  %80 = and i64 %78, 4294967295
  store i64 %80, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %81 = trunc i64 %71 to i32
  br label %routine_idivl__r9d.exit2782

routine_idivl__r9d.exit2782:                      ; preds = %77, %75
  %82 = phi i64 [ %.pre127, %75 ], [ %66, %77 ]
  %83 = phi i32 [ %.pre, %75 ], [ %81, %77 ]
  %84 = phi %struct.Memory* [ %76, %75 ], [ %2, %77 ]
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -116
  %87 = add i64 %82, 3
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 %83, i32* %88, align 4
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX.i1983, align 8
  %96 = sext i32 %94 to i64
  %97 = lshr i64 %96, 32
  store i64 %97, i64* %62, align 8
  %98 = load i32, i32* %R9D.i, align 4
  %99 = add i64 %91, 7
  store i64 %99, i64* %3, align 8
  %100 = sext i32 %98 to i64
  %101 = shl nuw i64 %97, 32
  %102 = or i64 %101, %95
  %103 = sdiv i64 %102, %100
  %104 = shl i64 %103, 32
  %105 = ashr exact i64 %104, 32
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %109, label %107

; <label>:107:                                    ; preds = %routine_idivl__r9d.exit2782
  %108 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %99, %struct.Memory* %84)
  %.pre128 = load i64, i64* %RBP.i, align 8
  %.pre129 = load i32, i32* %EAX.i1982, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit

; <label>:109:                                    ; preds = %routine_idivl__r9d.exit2782
  %110 = srem i64 %102, %100
  %111 = and i64 %103, 4294967295
  store i64 %111, i64* %RAX.i1983, align 8
  %112 = and i64 %110, 4294967295
  store i64 %112, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %113 = trunc i64 %103 to i32
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %109, %107
  %114 = phi i64 [ %.pre130, %107 ], [ %99, %109 ]
  %115 = phi i32 [ %.pre129, %107 ], [ %113, %109 ]
  %116 = phi i64 [ %.pre128, %107 ], [ %89, %109 ]
  %117 = phi %struct.Memory* [ %108, %107 ], [ %84, %109 ]
  %118 = add i64 %116, -120
  %119 = add i64 %114, 3
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  store i32 %115, i32* %120, align 4
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -120
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 3
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX.i1983, align 8
  %128 = sext i32 %126 to i64
  %129 = lshr i64 %128, 32
  store i64 %129, i64* %62, align 8
  %130 = add i64 %121, -160
  %131 = add i64 %123, 10
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RCX.i2784, align 8
  %135 = add i64 %123, 12
  store i64 %135, i64* %3, align 8
  %136 = sext i32 %133 to i64
  %137 = shl nuw i64 %129, 32
  %138 = or i64 %137, %127
  %139 = sdiv i64 %138, %136
  %140 = shl i64 %139, 32
  %141 = ashr exact i64 %140, 32
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %145, label %143

; <label>:143:                                    ; preds = %routine_idivl__r9d.exit
  %144 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %135, %struct.Memory* %117)
  %.pre131 = load i64, i64* %RAX.i1983, align 8
  %.pre132 = load i64, i64* %3, align 8
  %.pre133 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2754

; <label>:145:                                    ; preds = %routine_idivl__r9d.exit
  %146 = srem i64 %138, %136
  %147 = and i64 %139, 4294967295
  store i64 %147, i64* %RAX.i1983, align 8
  %148 = and i64 %146, 4294967295
  store i64 %148, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit2754

routine_idivl__ecx.exit2754:                      ; preds = %145, %143
  %149 = phi i64 [ %.pre133, %143 ], [ %121, %145 ]
  %150 = phi i64 [ %.pre132, %143 ], [ %135, %145 ]
  %151 = phi i64 [ %.pre131, %143 ], [ %147, %145 ]
  %152 = phi %struct.Memory* [ %144, %143 ], [ %117, %145 ]
  %153 = trunc i64 %151 to i32
  %154 = shl i32 %153, 1
  %155 = icmp slt i32 %153, 0
  %156 = icmp slt i32 %154, 0
  %157 = xor i1 %155, %156
  %158 = zext i32 %154 to i64
  store i64 %158, i64* %RAX.i1983, align 8
  %.lobit = lshr i32 %153, 31
  %159 = trunc i32 %.lobit to i8
  store i8 %159, i8* %12, align 1
  %160 = and i32 %154, 254
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %165 = icmp eq i32 %154, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %15, align 1
  %167 = lshr i32 %153, 30
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %16, align 1
  %170 = zext i1 %157 to i8
  store i8 %170, i8* %17, align 1
  %RSI.i2748 = getelementptr inbounds %union.anon, %union.anon* %27, i64 0, i32 0
  %171 = add i64 %149, -116
  %172 = add i64 %150, 5
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RSI.i2748, align 8
  %176 = add i64 %149, -164
  %177 = add i64 %150, 11
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 %154, i32* %178, align 4
  %179 = load i32, i32* %ESI.i2738, align 4
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %3, align 8
  store i64 %180, i64* %RAX.i1983, align 8
  %182 = sext i32 %179 to i64
  %183 = lshr i64 %182, 32
  store i64 %183, i64* %62, align 8
  %184 = load i32, i32* %ECX.i2771, align 4
  %185 = add i64 %181, 5
  store i64 %185, i64* %3, align 8
  %186 = sext i32 %184 to i64
  %187 = shl nuw i64 %183, 32
  %188 = or i64 %187, %180
  %189 = sdiv i64 %188, %186
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %195, label %193

; <label>:193:                                    ; preds = %routine_idivl__ecx.exit2754
  %194 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %185, %struct.Memory* %152)
  %.pre134 = load i64, i64* %3, align 8
  %.pre135 = load i32, i32* %EAX.i1982, align 4
  br label %routine_idivl__ecx.exit2736

; <label>:195:                                    ; preds = %routine_idivl__ecx.exit2754
  %196 = srem i64 %188, %186
  %197 = and i64 %189, 4294967295
  store i64 %197, i64* %RAX.i1983, align 8
  %198 = and i64 %196, 4294967295
  store i64 %198, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %199 = trunc i64 %189 to i32
  br label %routine_idivl__ecx.exit2736

routine_idivl__ecx.exit2736:                      ; preds = %195, %193
  %200 = phi i32 [ %.pre135, %193 ], [ %199, %195 ]
  %201 = phi i64 [ %.pre134, %193 ], [ %185, %195 ]
  %202 = phi %struct.Memory* [ %194, %193 ], [ %152, %195 ]
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -164
  %205 = add i64 %201, 6
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %200, %207
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RSI.i2748, align 8
  %210 = icmp ult i32 %208, %207
  %211 = icmp ult i32 %208, %200
  %212 = or i1 %210, %211
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %12, align 1
  %214 = and i32 %208, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %13, align 1
  %219 = xor i32 %200, %207
  %220 = xor i32 %219, %208
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %14, align 1
  %224 = icmp eq i32 %208, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %15, align 1
  %226 = lshr i32 %208, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %16, align 1
  %228 = lshr i32 %207, 31
  %229 = lshr i32 %200, 31
  %230 = xor i32 %226, %228
  %231 = xor i32 %226, %229
  %232 = add nuw nsw i32 %230, %231
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %17, align 1
  %235 = add i64 %203, -124
  %236 = add i64 %201, 11
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  store i32 %208, i32* %237, align 4
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -120
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 3
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX.i1983, align 8
  %245 = sext i32 %243 to i64
  %246 = lshr i64 %245, 32
  store i64 %246, i64* %62, align 8
  %247 = load i32, i32* %ECX.i2771, align 4
  %248 = add i64 %240, 6
  store i64 %248, i64* %3, align 8
  %249 = sext i32 %247 to i64
  %250 = shl nuw i64 %246, 32
  %251 = or i64 %250, %244
  %252 = sdiv i64 %251, %249
  %253 = shl i64 %252, 32
  %254 = ashr exact i64 %253, 32
  %255 = icmp eq i64 %252, %254
  br i1 %255, label %258, label %256

; <label>:256:                                    ; preds = %routine_idivl__ecx.exit2736
  %257 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %248, %struct.Memory* %202)
  %.pre136 = load i64, i64* %RDX.i2756, align 8
  %.pre137 = load i64, i64* %3, align 8
  %.pre138 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2717

; <label>:258:                                    ; preds = %routine_idivl__ecx.exit2736
  %259 = srem i64 %251, %249
  %260 = and i64 %252, 4294967295
  store i64 %260, i64* %RAX.i1983, align 8
  %261 = and i64 %259, 4294967295
  store i64 %261, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit2717

routine_idivl__ecx.exit2717:                      ; preds = %258, %256
  %262 = phi i64 [ %.pre138, %256 ], [ %238, %258 ]
  %263 = phi i64 [ %.pre137, %256 ], [ %248, %258 ]
  %264 = phi i64 [ %.pre136, %256 ], [ %261, %258 ]
  %265 = phi %struct.Memory* [ %257, %256 ], [ %202, %258 ]
  %266 = trunc i64 %264 to i32
  %267 = shl i32 %266, 1
  %268 = icmp slt i32 %266, 0
  %269 = icmp slt i32 %267, 0
  %270 = xor i1 %268, %269
  %271 = zext i32 %267 to i64
  store i64 %271, i64* %RDX.i2756, align 8
  %.lobit41 = lshr i32 %266, 31
  %272 = trunc i32 %.lobit41 to i8
  store i8 %272, i8* %12, align 1
  %273 = and i32 %267, 254
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %278 = icmp eq i32 %267, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %15, align 1
  %280 = lshr i32 %266, 30
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %16, align 1
  %283 = zext i1 %270 to i8
  store i8 %283, i8* %17, align 1
  %284 = add i64 %262, -116
  %285 = add i64 %263, 5
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RSI.i2748, align 8
  store i64 %288, i64* %RAX.i1983, align 8
  %289 = add i64 %262, -168
  %290 = add i64 %263, 13
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  store i32 %267, i32* %291, align 4
  %292 = load i64, i64* %3, align 8
  %293 = load i32, i32* %EAX.i1982, align 8
  %294 = sext i32 %293 to i64
  %295 = lshr i64 %294, 32
  store i64 %295, i64* %62, align 8
  %296 = load i32, i32* %ECX.i2771, align 4
  %297 = add i64 %292, 3
  store i64 %297, i64* %3, align 8
  %298 = zext i32 %293 to i64
  %299 = sext i32 %296 to i64
  %300 = shl nuw i64 %295, 32
  %301 = or i64 %300, %298
  %302 = sdiv i64 %301, %299
  %303 = shl i64 %302, 32
  %304 = ashr exact i64 %303, 32
  %305 = icmp eq i64 %302, %304
  br i1 %305, label %308, label %306

; <label>:306:                                    ; preds = %routine_idivl__ecx.exit2717
  %307 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %297, %struct.Memory* %265)
  %.pre139 = load i64, i64* %3, align 8
  %.pre140 = load i32, i32* %67, align 4
  br label %routine_idivl__ecx.exit2701

; <label>:308:                                    ; preds = %routine_idivl__ecx.exit2717
  %309 = srem i64 %301, %299
  %310 = and i64 %302, 4294967295
  store i64 %310, i64* %RAX.i1983, align 8
  %311 = and i64 %309, 4294967295
  store i64 %311, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %312 = trunc i64 %309 to i32
  br label %routine_idivl__ecx.exit2701

routine_idivl__ecx.exit2701:                      ; preds = %308, %306
  %313 = phi i32 [ %.pre140, %306 ], [ %312, %308 ]
  %314 = phi i64 [ %.pre139, %306 ], [ %297, %308 ]
  %315 = phi %struct.Memory* [ %307, %306 ], [ %265, %308 ]
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -168
  %318 = add i64 %314, 6
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = add i32 %313, %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RSI.i2748, align 8
  %323 = icmp ult i32 %321, %320
  %324 = icmp ult i32 %321, %313
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %12, align 1
  %327 = and i32 %321, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %13, align 1
  %332 = xor i32 %313, %320
  %333 = xor i32 %332, %321
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  store i8 %336, i8* %14, align 1
  %337 = icmp eq i32 %321, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %15, align 1
  %339 = lshr i32 %321, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %16, align 1
  %341 = lshr i32 %320, 31
  %342 = lshr i32 %313, 31
  %343 = xor i32 %339, %341
  %344 = xor i32 %339, %342
  %345 = add nuw nsw i32 %343, %344
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %17, align 1
  %348 = add i64 %316, -128
  %349 = add i64 %314, 11
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  store i32 %321, i32* %350, align 4
  %R10.i2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %351 = load i64, i64* %3, align 8
  %352 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %352, i64* %R10.i2689, align 8
  %353 = add i64 %352, 14136
  %354 = add i64 %351, 15
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i64*
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %R10.i2689, align 8
  %R11.i2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -124
  %359 = add i64 %351, 19
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  store i64 %362, i64* %R11.i2685, align 8
  %363 = shl nsw i64 %362, 3
  %364 = add i64 %363, %356
  %365 = add i64 %351, 23
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %R10.i2689, align 8
  %368 = add i64 %357, -128
  %369 = add i64 %351, 27
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %R11.i2685, align 8
  %373 = shl nsw i64 %372, 3
  %374 = add i64 %373, %367
  %375 = add i64 %351, 31
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %R10.i2689, align 8
  %378 = add i64 %351, 34
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  %381 = add i64 %357, -136
  %382 = add i64 %351, 41
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i64*
  store i64 %380, i64* %383, align 8
  %384 = load i64, i64* %3, align 8
  %385 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %385, i64* %R10.i2689, align 8
  %386 = add i64 %385, 14136
  %387 = add i64 %384, 15
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %R10.i2689, align 8
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -124
  %392 = add i64 %384, 19
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %R11.i2685, align 8
  %396 = shl nsw i64 %395, 3
  %397 = add i64 %396, %389
  %398 = add i64 %384, 23
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %R10.i2689, align 8
  %401 = add i64 %390, -128
  %402 = add i64 %384, 27
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %R11.i2685, align 8
  %406 = shl nsw i64 %405, 3
  %407 = add i64 %406, %400
  %408 = add i64 %384, 31
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i64*
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %R10.i2689, align 8
  %411 = add i64 %410, 8
  %412 = add i64 %384, 35
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  %415 = add i64 %390, -144
  %416 = add i64 %384, 42
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  store i64 %414, i64* %417, align 8
  %418 = load i64, i64* %3, align 8
  %419 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %419, i64* %R10.i2689, align 8
  %420 = add i64 %419, 14168
  %421 = add i64 %418, 15
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %R10.i2689, align 8
  store i64 %419, i64* %R11.i2685, align 8
  %424 = add i64 %419, 12
  %425 = add i64 %418, 27
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = mul nsw i64 %428, 632
  store i64 %429, i64* %R11.i2685, align 8
  %430 = lshr i64 %429, 63
  %431 = add i64 %429, %423
  store i64 %431, i64* %R10.i2689, align 8
  %432 = icmp ult i64 %431, %423
  %433 = icmp ult i64 %431, %429
  %434 = or i1 %432, %433
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %12, align 1
  %436 = trunc i64 %431 to i32
  %437 = and i32 %436, 255
  %438 = tail call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  store i8 %441, i8* %13, align 1
  %442 = xor i64 %429, %423
  %443 = xor i64 %442, %431
  %444 = lshr i64 %443, 4
  %445 = trunc i64 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %14, align 1
  %447 = icmp eq i64 %431, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %15, align 1
  %449 = lshr i64 %431, 63
  %450 = trunc i64 %449 to i8
  store i8 %450, i8* %16, align 1
  %451 = lshr i64 %423, 63
  %452 = xor i64 %449, %451
  %453 = xor i64 %449, %430
  %454 = add nuw nsw i64 %452, %453
  %455 = icmp eq i64 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %17, align 1
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -152
  %459 = add i64 %418, 44
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i64*
  store i64 %431, i64* %460, align 8
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -152
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %R10.i2689, align 8
  %467 = add i64 %466, 12
  %468 = add i64 %463, 11
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RDX.i2756, align 8
  %472 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %472, i64* %R10.i2689, align 8
  %473 = add i64 %472, 72668
  %474 = add i64 %463, 26
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = add i32 %476, %470
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RDX.i2756, align 8
  %479 = and i32 %477, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = icmp eq i32 %477, 0
  %485 = zext i1 %484 to i8
  %486 = lshr i32 %477, 31
  %487 = trunc i32 %486 to i8
  store i8 0, i8* %12, align 1
  store i8 %483, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 %485, i8* %15, align 1
  store i8 %487, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %488 = add i64 %461, -169
  %489 = load i8, i8* %R8B.i, align 1
  %490 = add i64 %463, 36
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %488 to i8*
  store i8 %489, i8* %491, align 1
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 30
  %494 = add i64 %492, 6
  %495 = load i8, i8* %15, align 1
  %496 = icmp eq i8 %495, 0
  %497 = select i1 %496, i64 %493, i64 %494
  store i64 %497, i64* %3, align 8
  br i1 %496, label %block_.L_40639f, label %block_406387

block_406387:                                     ; preds = %routine_idivl__ecx.exit2701
  %498 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %498, i64* %RAX.i1983, align 8
  %499 = add i64 %498, 72704
  %500 = add i64 %497, 15
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %502, -1
  %504 = icmp eq i32 %502, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %12, align 1
  %506 = and i32 %503, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %13, align 1
  %511 = xor i32 %503, %502
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %14, align 1
  %515 = icmp eq i32 %503, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %15, align 1
  %517 = lshr i32 %503, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %16, align 1
  %519 = lshr i32 %502, 31
  %520 = xor i32 %517, %519
  %521 = add nuw nsw i32 %520, %519
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %17, align 1
  %CL.i2612 = bitcast %union.anon* %41 to i8*
  store i8 %516, i8* %CL.i2612, align 1
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -169
  %526 = add i64 %497, 24
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i8*
  store i8 %516, i8* %527, align 1
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_40639f

block_.L_40639f:                                  ; preds = %block_406387, %routine_idivl__ecx.exit2701
  %528 = phi i64 [ %.pre141, %block_406387 ], [ %493, %routine_idivl__ecx.exit2701 ]
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -169
  %531 = add i64 %528, 6
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i8*
  %533 = load i8, i8* %532, align 1
  store i64 6, i64* %RCX.i2784, align 8
  %534 = and i8 %533, 1
  store i8 %534, i8* %AL.i2555, align 1
  store i8 0, i8* %12, align 1
  %535 = zext i8 %534 to i32
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = xor i8 %537, 1
  store i8 %538, i8* %13, align 1
  %539 = xor i8 %534, 1
  store i8 %539, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %540 = zext i8 %534 to i64
  store i64 %540, i64* %RDX.i2756, align 8
  %541 = add i64 %529, -156
  %542 = zext i8 %534 to i32
  %543 = add i64 %528, 22
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %541 to i32*
  store i32 %542, i32* %544, align 4
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -152
  %547 = load i64, i64* %3, align 8
  %548 = add i64 %547, 7
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %546 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RSI.i2748, align 8
  %551 = add i64 %550, 12
  %552 = add i64 %547, 10
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RDX.i2756, align 8
  %556 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %556, i64* %RSI.i2748, align 8
  %557 = add i64 %556, 72668
  %558 = add i64 %547, 24
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, %554
  %562 = and i32 %561, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  %567 = icmp eq i32 %561, 0
  %568 = zext i1 %567 to i8
  %569 = lshr i32 %561, 31
  %570 = trunc i32 %569 to i8
  store i8 0, i8* %12, align 1
  store i8 %566, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 %568, i8* %15, align 1
  store i8 %570, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %571 = zext i32 %561 to i64
  store i64 %571, i64* %RAX.i1983, align 8
  %572 = sext i32 %561 to i64
  %573 = lshr i64 %572, 32
  store i64 %573, i64* %62, align 8
  %574 = load i32, i32* %ECX.i2771, align 4
  %575 = add i64 %547, 32
  store i64 %575, i64* %3, align 8
  %576 = sext i32 %574 to i64
  %577 = shl nuw i64 %573, 32
  %578 = or i64 %577, %571
  %579 = sdiv i64 %578, %576
  %580 = shl i64 %579, 32
  %581 = ashr exact i64 %580, 32
  %582 = icmp eq i64 %579, %581
  br i1 %582, label %585, label %583

; <label>:583:                                    ; preds = %block_.L_40639f
  %584 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %575, %struct.Memory* %315)
  %.pre142 = load i64, i64* %RBP.i, align 8
  %.pre143 = load i32, i32* %EAX.i1982, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit2575

; <label>:585:                                    ; preds = %block_.L_40639f
  %586 = srem i64 %578, %576
  %587 = and i64 %579, 4294967295
  store i64 %587, i64* %RAX.i1983, align 8
  %588 = and i64 %586, 4294967295
  store i64 %588, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %589 = trunc i64 %579 to i32
  br label %routine_idivl__ecx.exit2575

routine_idivl__ecx.exit2575:                      ; preds = %585, %583
  %590 = phi i64 [ %.pre144, %583 ], [ %575, %585 ]
  %591 = phi i32 [ %.pre143, %583 ], [ %589, %585 ]
  %592 = phi i64 [ %.pre142, %583 ], [ %545, %585 ]
  %593 = phi %struct.Memory* [ %584, %583 ], [ %315, %585 ]
  %594 = add i64 %592, -104
  %595 = add i64 %590, 3
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  store i32 %591, i32* %596, align 4
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -152
  %599 = load i64, i64* %3, align 8
  %600 = add i64 %599, 7
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %598 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RSI.i2748, align 8
  %603 = add i64 %602, 12
  %604 = add i64 %599, 10
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i1983, align 8
  %608 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %608, i64* %RSI.i2748, align 8
  %609 = add i64 %608, 72668
  %610 = add i64 %599, 24
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = add i32 %612, %606
  %614 = zext i32 %613 to i64
  %615 = and i32 %613, 255
  %616 = tail call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  %620 = icmp eq i32 %613, 0
  %621 = zext i1 %620 to i8
  %622 = lshr i32 %613, 31
  %623 = trunc i32 %622 to i8
  store i64 %614, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 %619, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 %621, i8* %15, align 1
  store i8 %623, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %624 = sext i32 %613 to i64
  %625 = lshr i64 %624, 32
  store i64 %625, i64* %62, align 8
  %626 = load i32, i32* %ECX.i2771, align 4
  %627 = add i64 %599, 30
  store i64 %627, i64* %3, align 8
  %628 = zext i32 %613 to i64
  %629 = sext i32 %626 to i64
  %630 = shl nuw i64 %625, 32
  %631 = or i64 %630, %628
  %632 = sdiv i64 %631, %629
  %633 = shl i64 %632, 32
  %634 = ashr exact i64 %633, 32
  %635 = icmp eq i64 %632, %634
  br i1 %635, label %638, label %636

; <label>:636:                                    ; preds = %routine_idivl__ecx.exit2575
  %637 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %627, %struct.Memory* %593)
  %.pre145 = load i64, i64* %RBP.i, align 8
  %.pre146 = load i32, i32* %67, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:638:                                    ; preds = %routine_idivl__ecx.exit2575
  %639 = srem i64 %631, %629
  %640 = and i64 %632, 4294967295
  store i64 %640, i64* %RAX.i1983, align 8
  %641 = and i64 %639, 4294967295
  store i64 %641, i64* %RDX.i2756, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %642 = trunc i64 %639 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %638, %636
  %643 = phi i64 [ %.pre147, %636 ], [ %627, %638 ]
  %644 = phi i32 [ %.pre146, %636 ], [ %642, %638 ]
  %645 = phi i64 [ %.pre145, %636 ], [ %597, %638 ]
  %646 = phi %struct.Memory* [ %637, %636 ], [ %593, %638 ]
  %647 = add i64 %645, -108
  %648 = add i64 %643, 3
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  store i32 %644, i32* %649, align 4
  %650 = load i64, i64* %RBP.i, align 8
  %651 = add i64 %650, -104
  %652 = load i64, i64* %3, align 8
  %653 = add i64 %652, 3
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %651 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = add i32 %655, 15
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RCX.i2784, align 8
  %658 = icmp ugt i32 %655, -16
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %12, align 1
  %660 = and i32 %656, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %13, align 1
  %665 = xor i32 %656, %655
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %14, align 1
  %669 = icmp eq i32 %656, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %15, align 1
  %671 = lshr i32 %656, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %16, align 1
  %673 = lshr i32 %655, 31
  %674 = xor i32 %671, %673
  %675 = add nuw nsw i32 %674, %671
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %17, align 1
  %678 = add i64 %650, -112
  %679 = add i64 %652, 9
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  store i32 %656, i32* %680, align 4
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -28
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 7
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %682 to i32*
  store i32 0, i32* %685, align 4
  %CL.i2535 = bitcast %union.anon* %41 to i8*
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_406409

block_.L_406409:                                  ; preds = %block_.L_406500, %routine_idivl__ecx.exit
  %686 = phi i64 [ %1421, %block_.L_406500 ], [ %.pre148, %routine_idivl__ecx.exit ]
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i2535, align 1
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -28
  %689 = add i64 %686, 8
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = add i32 %691, -4
  %693 = icmp ult i32 %691, 4
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %12, align 1
  %695 = and i32 %692, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %13, align 1
  %700 = xor i32 %692, %691
  %701 = lshr i32 %700, 4
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  store i8 %703, i8* %14, align 1
  %704 = icmp eq i32 %692, 0
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %15, align 1
  %706 = lshr i32 %692, 31
  %707 = trunc i32 %706 to i8
  store i8 %707, i8* %16, align 1
  %708 = lshr i32 %691, 31
  %709 = xor i32 %706, %708
  %710 = add nuw nsw i32 %709, %708
  %711 = icmp eq i32 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %17, align 1
  %713 = add i64 %687, -170
  %714 = add i64 %686, 14
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i8*
  store i8 0, i8* %715, align 1
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 24
  %718 = add i64 %716, 6
  %719 = load i8, i8* %16, align 1
  %720 = icmp ne i8 %719, 0
  %721 = load i8, i8* %17, align 1
  %722 = icmp ne i8 %721, 0
  %723 = xor i1 %720, %722
  %724 = select i1 %723, i64 %718, i64 %717
  store i64 %724, i64* %3, align 8
  br i1 %723, label %block_40641d, label %block_.L_40642f

block_40641d:                                     ; preds = %block_.L_406409
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -156
  %727 = add i64 %724, 7
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = icmp ne i32 %729, 0
  %731 = zext i1 %730 to i64
  %732 = xor i64 %731, 255
  %733 = trunc i64 %732 to i8
  store i8 %733, i8* %AL.i2555, align 1
  store i8 0, i8* %12, align 1
  %734 = trunc i64 %732 to i32
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %13, align 1
  store i8 0, i8* %15, align 1
  store i8 1, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %739 = add i64 %725, -170
  %740 = add i64 %724, 18
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i8*
  store i8 %733, i8* %741, align 1
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_40642f

block_.L_40642f:                                  ; preds = %block_.L_406409, %block_40641d
  %742 = phi i64 [ %717, %block_.L_406409 ], [ %.pre149, %block_40641d ]
  %743 = load i64, i64* %RBP.i, align 8
  %744 = add i64 %743, -170
  %745 = add i64 %742, 6
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i8*
  %747 = load i8, i8* %746, align 1
  store i8 %747, i8* %AL.i2555, align 1
  %748 = and i8 %747, 1
  store i8 0, i8* %12, align 1
  %749 = zext i8 %748 to i32
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = xor i8 %751, 1
  store i8 %752, i8* %13, align 1
  %753 = xor i8 %748, 1
  store i8 %753, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %754 = icmp eq i8 %753, 0
  %.v = select i1 %754, i64 19, i64 14
  %755 = add i64 %742, %.v
  store i64 %755, i64* %3, align 8
  %756 = add i64 %743, -24
  br i1 %754, label %block_.L_406442, label %block_40643d

block_40643d:                                     ; preds = %block_.L_40642f
  %757 = add i64 %755, 324
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  store i32 0, i32* %758, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_406581

block_.L_406442:                                  ; preds = %block_.L_40642f
  %759 = add i64 %755, 7
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %756 to i32*
  store i32 0, i32* %760, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_406449

block_.L_406449:                                  ; preds = %block_406453, %block_.L_406442
  %761 = phi i64 [ %1179, %block_406453 ], [ %.pre180, %block_.L_406442 ]
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -24
  %764 = add i64 %761, 4
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = add i32 %766, -2
  %768 = icmp ult i32 %766, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %12, align 1
  %770 = and i32 %767, 255
  %771 = tail call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  store i8 %774, i8* %13, align 1
  %775 = xor i32 %767, %766
  %776 = lshr i32 %775, 4
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  store i8 %778, i8* %14, align 1
  %779 = icmp eq i32 %767, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %15, align 1
  %781 = lshr i32 %767, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %16, align 1
  %783 = lshr i32 %766, 31
  %784 = xor i32 %781, %783
  %785 = add nuw nsw i32 %784, %783
  %786 = icmp eq i32 %785, 2
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %17, align 1
  %788 = icmp ne i8 %782, 0
  %789 = xor i1 %788, %786
  %.v213 = select i1 %789, i64 10, i64 183
  %790 = add i64 %761, %.v213
  store i64 %790, i64* %3, align 8
  br i1 %789, label %block_406453, label %block_.L_406500

block_406453:                                     ; preds = %block_.L_406449
  store i64 3, i64* %RAX.i1983, align 8
  %791 = add i64 %790, 8
  store i64 %791, i64* %3, align 8
  %792 = load i32, i32* %765, align 4
  %793 = sub i32 3, %792
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i1983, align 8
  %795 = add i64 %762, -32
  %796 = add i64 %790, 11
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  store i32 %793, i32* %797, align 4
  %798 = load i64, i64* %3, align 8
  %799 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %800 = add i64 %799, 13112
  store i64 %800, i64* %RCX.i2784, align 8
  %801 = icmp ugt i64 %799, -13113
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %12, align 1
  %803 = trunc i64 %800 to i32
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %13, align 1
  %809 = xor i64 %799, 16
  %810 = xor i64 %809, %800
  %811 = lshr i64 %810, 4
  %812 = trunc i64 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %14, align 1
  %814 = icmp eq i64 %800, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %15, align 1
  %816 = lshr i64 %800, 63
  %817 = trunc i64 %816 to i8
  store i8 %817, i8* %16, align 1
  %818 = lshr i64 %799, 63
  %819 = xor i64 %816, %818
  %820 = add nuw nsw i64 %819, %816
  %821 = icmp eq i64 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %17, align 1
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -24
  %825 = add i64 %798, 19
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  %829 = shl nsw i64 %828, 6
  store i64 %829, i64* %RDX.i2756, align 8
  %830 = add i64 %829, %800
  store i64 %830, i64* %RCX.i2784, align 8
  %831 = icmp ult i64 %830, %800
  %832 = icmp ult i64 %830, %829
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %12, align 1
  %835 = trunc i64 %830 to i32
  %836 = and i32 %835, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %13, align 1
  %841 = xor i64 %800, %830
  %842 = lshr i64 %841, 4
  %843 = trunc i64 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %14, align 1
  %845 = icmp eq i64 %830, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %15, align 1
  %847 = lshr i64 %830, 63
  %848 = trunc i64 %847 to i8
  store i8 %848, i8* %16, align 1
  %849 = lshr i64 %828, 57
  %850 = and i64 %849, 1
  %851 = xor i64 %847, %816
  %852 = xor i64 %847, %850
  %853 = add nuw nsw i64 %851, %852
  %854 = icmp eq i64 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %17, align 1
  %856 = add i64 %823, -28
  %857 = add i64 %798, 30
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = sext i32 %859 to i64
  store i64 %860, i64* %RDX.i2756, align 8
  %861 = shl nsw i64 %860, 2
  %862 = add i64 %861, %830
  %863 = add i64 %798, 33
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RAX.i1983, align 8
  %867 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %868 = add i64 %867, 13112
  store i64 %868, i64* %RCX.i2784, align 8
  %869 = icmp ugt i64 %867, -13113
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %12, align 1
  %871 = trunc i64 %868 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %13, align 1
  %877 = xor i64 %867, 16
  %878 = xor i64 %877, %868
  %879 = lshr i64 %878, 4
  %880 = trunc i64 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %14, align 1
  %882 = icmp eq i64 %868, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %15, align 1
  %884 = lshr i64 %868, 63
  %885 = trunc i64 %884 to i8
  store i8 %885, i8* %16, align 1
  %886 = lshr i64 %867, 63
  %887 = xor i64 %884, %886
  %888 = add nuw nsw i64 %887, %884
  %889 = icmp eq i64 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %17, align 1
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -32
  %893 = add i64 %798, 52
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sext i32 %895 to i64
  %897 = shl nsw i64 %896, 6
  store i64 %897, i64* %RDX.i2756, align 8
  %898 = add i64 %897, %868
  store i64 %898, i64* %RCX.i2784, align 8
  %899 = icmp ult i64 %898, %868
  %900 = icmp ult i64 %898, %897
  %901 = or i1 %899, %900
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %12, align 1
  %903 = trunc i64 %898 to i32
  %904 = and i32 %903, 255
  %905 = tail call i32 @llvm.ctpop.i32(i32 %904)
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  store i8 %908, i8* %13, align 1
  %909 = xor i64 %868, %898
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  store i8 %912, i8* %14, align 1
  %913 = icmp eq i64 %898, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %15, align 1
  %915 = lshr i64 %898, 63
  %916 = trunc i64 %915 to i8
  store i8 %916, i8* %16, align 1
  %917 = lshr i64 %896, 57
  %918 = and i64 %917, 1
  %919 = xor i64 %915, %884
  %920 = xor i64 %915, %918
  %921 = add nuw nsw i64 %919, %920
  %922 = icmp eq i64 %921, 2
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %17, align 1
  %924 = add i64 %891, -28
  %925 = add i64 %798, 63
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = sext i32 %927 to i64
  store i64 %928, i64* %RDX.i2756, align 8
  %929 = load i64, i64* %RAX.i1983, align 8
  %930 = shl nsw i64 %928, 2
  %931 = add i64 %898, %930
  %932 = add i64 %798, 66
  store i64 %932, i64* %3, align 8
  %933 = trunc i64 %929 to i32
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = add i32 %935, %933
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i1983, align 8
  %938 = icmp ult i32 %936, %933
  %939 = icmp ult i32 %936, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %12, align 1
  %942 = and i32 %936, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %13, align 1
  %947 = xor i32 %935, %933
  %948 = xor i32 %947, %936
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %14, align 1
  %952 = icmp eq i32 %936, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %15, align 1
  %954 = lshr i32 %936, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %16, align 1
  %956 = lshr i32 %933, 31
  %957 = lshr i32 %935, 31
  %958 = xor i32 %954, %956
  %959 = xor i32 %954, %957
  %960 = add nuw nsw i32 %958, %959
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %17, align 1
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -24
  %965 = add i64 %798, 70
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = sext i32 %967 to i64
  %969 = shl nsw i64 %968, 2
  %970 = add i64 %963, -64
  %971 = add i64 %970, %969
  %972 = add i64 %798, 74
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  store i32 %936, i32* %973, align 4
  %974 = load i64, i64* %3, align 8
  %975 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %976 = add i64 %975, 13112
  store i64 %976, i64* %RCX.i2784, align 8
  %977 = icmp ugt i64 %975, -13113
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %12, align 1
  %979 = trunc i64 %976 to i32
  %980 = and i32 %979, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %13, align 1
  %985 = xor i64 %975, 16
  %986 = xor i64 %985, %976
  %987 = lshr i64 %986, 4
  %988 = trunc i64 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %14, align 1
  %990 = icmp eq i64 %976, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %15, align 1
  %992 = lshr i64 %976, 63
  %993 = trunc i64 %992 to i8
  store i8 %993, i8* %16, align 1
  %994 = lshr i64 %975, 63
  %995 = xor i64 %992, %994
  %996 = add nuw nsw i64 %995, %992
  %997 = icmp eq i64 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %17, align 1
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -24
  %1001 = add i64 %974, 19
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = shl nsw i64 %1004, 6
  store i64 %1005, i64* %RDX.i2756, align 8
  %1006 = add i64 %1005, %976
  store i64 %1006, i64* %RCX.i2784, align 8
  %1007 = icmp ult i64 %1006, %976
  %1008 = icmp ult i64 %1006, %1005
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %12, align 1
  %1011 = trunc i64 %1006 to i32
  %1012 = and i32 %1011, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %13, align 1
  %1017 = xor i64 %976, %1006
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %14, align 1
  %1021 = icmp eq i64 %1006, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %15, align 1
  %1023 = lshr i64 %1006, 63
  %1024 = trunc i64 %1023 to i8
  store i8 %1024, i8* %16, align 1
  %1025 = lshr i64 %1004, 57
  %1026 = and i64 %1025, 1
  %1027 = xor i64 %1023, %992
  %1028 = xor i64 %1023, %1026
  %1029 = add nuw nsw i64 %1027, %1028
  %1030 = icmp eq i64 %1029, 2
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %17, align 1
  %1032 = add i64 %999, -28
  %1033 = add i64 %974, 30
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = sext i32 %1035 to i64
  store i64 %1036, i64* %RDX.i2756, align 8
  %1037 = shl nsw i64 %1036, 2
  %1038 = add i64 %1037, %1006
  %1039 = add i64 %974, 33
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i1983, align 8
  %1043 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1044 = add i64 %1043, 13112
  store i64 %1044, i64* %RCX.i2784, align 8
  %1045 = icmp ugt i64 %1043, -13113
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %12, align 1
  %1047 = trunc i64 %1044 to i32
  %1048 = and i32 %1047, 255
  %1049 = tail call i32 @llvm.ctpop.i32(i32 %1048)
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = xor i8 %1051, 1
  store i8 %1052, i8* %13, align 1
  %1053 = xor i64 %1043, 16
  %1054 = xor i64 %1053, %1044
  %1055 = lshr i64 %1054, 4
  %1056 = trunc i64 %1055 to i8
  %1057 = and i8 %1056, 1
  store i8 %1057, i8* %14, align 1
  %1058 = icmp eq i64 %1044, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %15, align 1
  %1060 = lshr i64 %1044, 63
  %1061 = trunc i64 %1060 to i8
  store i8 %1061, i8* %16, align 1
  %1062 = lshr i64 %1043, 63
  %1063 = xor i64 %1060, %1062
  %1064 = add nuw nsw i64 %1063, %1060
  %1065 = icmp eq i64 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %17, align 1
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -32
  %1069 = add i64 %974, 52
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = shl nsw i64 %1072, 6
  store i64 %1073, i64* %RDX.i2756, align 8
  %1074 = add i64 %1073, %1044
  store i64 %1074, i64* %RCX.i2784, align 8
  %1075 = icmp ult i64 %1074, %1044
  %1076 = icmp ult i64 %1074, %1073
  %1077 = or i1 %1075, %1076
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %12, align 1
  %1079 = trunc i64 %1074 to i32
  %1080 = and i32 %1079, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %13, align 1
  %1085 = xor i64 %1044, %1074
  %1086 = lshr i64 %1085, 4
  %1087 = trunc i64 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %14, align 1
  %1089 = icmp eq i64 %1074, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %15, align 1
  %1091 = lshr i64 %1074, 63
  %1092 = trunc i64 %1091 to i8
  store i8 %1092, i8* %16, align 1
  %1093 = lshr i64 %1072, 57
  %1094 = and i64 %1093, 1
  %1095 = xor i64 %1091, %1060
  %1096 = xor i64 %1091, %1094
  %1097 = add nuw nsw i64 %1095, %1096
  %1098 = icmp eq i64 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %17, align 1
  %1100 = add i64 %1067, -28
  %1101 = add i64 %974, 63
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sext i32 %1103 to i64
  store i64 %1104, i64* %RDX.i2756, align 8
  %1105 = load i64, i64* %RAX.i1983, align 8
  %1106 = shl nsw i64 %1104, 2
  %1107 = add i64 %1074, %1106
  %1108 = add i64 %974, 66
  store i64 %1108, i64* %3, align 8
  %1109 = trunc i64 %1105 to i32
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = sub i32 %1109, %1111
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX.i1983, align 8
  %1114 = icmp ult i32 %1109, %1111
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %12, align 1
  %1116 = and i32 %1112, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %13, align 1
  %1121 = xor i32 %1111, %1109
  %1122 = xor i32 %1121, %1112
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %14, align 1
  %1126 = icmp eq i32 %1112, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %15, align 1
  %1128 = lshr i32 %1112, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %16, align 1
  %1130 = lshr i32 %1109, 31
  %1131 = lshr i32 %1111, 31
  %1132 = xor i32 %1131, %1130
  %1133 = xor i32 %1128, %1130
  %1134 = add nuw nsw i32 %1133, %1132
  %1135 = icmp eq i32 %1134, 2
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %17, align 1
  %1137 = load i64, i64* %RBP.i, align 8
  %1138 = add i64 %1137, -32
  %1139 = add i64 %974, 70
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = sext i32 %1141 to i64
  store i64 %1142, i64* %RCX.i2784, align 8
  %1143 = shl nsw i64 %1142, 2
  %1144 = add i64 %1137, -64
  %1145 = add i64 %1144, %1143
  %1146 = add i64 %974, 74
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  store i32 %1112, i32* %1147, align 4
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -24
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = add i32 %1153, 1
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i1983, align 8
  %1156 = icmp eq i32 %1153, -1
  %1157 = icmp eq i32 %1154, 0
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %12, align 1
  %1160 = and i32 %1154, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %13, align 1
  %1165 = xor i32 %1154, %1153
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %14, align 1
  %1169 = zext i1 %1157 to i8
  store i8 %1169, i8* %15, align 1
  %1170 = lshr i32 %1154, 31
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %16, align 1
  %1172 = lshr i32 %1153, 31
  %1173 = xor i32 %1170, %1172
  %1174 = add nuw nsw i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 2
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %17, align 1
  %1177 = add i64 %1150, 9
  store i64 %1177, i64* %3, align 8
  store i32 %1154, i32* %1152, align 4
  %1178 = load i64, i64* %3, align 8
  %1179 = add i64 %1178, -178
  store i64 %1179, i64* %3, align 8
  br label %block_.L_406449

block_.L_406500:                                  ; preds = %block_.L_406449
  %1180 = add i64 %762, -64
  %1181 = add i64 %790, 3
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RAX.i1983, align 8
  %1185 = add i64 %762, -60
  %1186 = add i64 %790, 6
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = add i32 %1188, %1183
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i1983, align 8
  %1191 = icmp ult i32 %1189, %1183
  %1192 = icmp ult i32 %1189, %1188
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %12, align 1
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %13, align 1
  %1200 = xor i32 %1188, %1183
  %1201 = xor i32 %1200, %1189
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %14, align 1
  %1205 = icmp eq i32 %1189, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %15, align 1
  %1207 = lshr i32 %1189, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %16, align 1
  %1209 = lshr i32 %1183, 31
  %1210 = lshr i32 %1188, 31
  %1211 = xor i32 %1207, %1209
  %1212 = xor i32 %1207, %1210
  %1213 = add nuw nsw i32 %1211, %1212
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %17, align 1
  %1216 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1216, i64* %RCX.i2784, align 8
  %1217 = add i64 %762, -28
  %1218 = add i64 %790, 18
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sext i32 %1220 to i64
  store i64 %1221, i64* %RDX.i2756, align 8
  %1222 = shl nsw i64 %1221, 2
  %1223 = add i64 %1216, 13112
  %1224 = add i64 %1223, %1222
  %1225 = add i64 %790, 25
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  store i32 %1189, i32* %1226, align 4
  %1227 = load i64, i64* %RBP.i, align 8
  %1228 = add i64 %1227, -64
  %1229 = load i64, i64* %3, align 8
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1228 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RAX.i1983, align 8
  %1234 = add i64 %1227, -60
  %1235 = add i64 %1229, 6
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = sub i32 %1232, %1237
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RAX.i1983, align 8
  %1240 = icmp ult i32 %1232, %1237
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %12, align 1
  %1242 = and i32 %1238, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %13, align 1
  %1247 = xor i32 %1237, %1232
  %1248 = xor i32 %1247, %1238
  %1249 = lshr i32 %1248, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %14, align 1
  %1252 = icmp eq i32 %1238, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %15, align 1
  %1254 = lshr i32 %1238, 31
  %1255 = trunc i32 %1254 to i8
  store i8 %1255, i8* %16, align 1
  %1256 = lshr i32 %1232, 31
  %1257 = lshr i32 %1237, 31
  %1258 = xor i32 %1257, %1256
  %1259 = xor i32 %1254, %1256
  %1260 = add nuw nsw i32 %1259, %1258
  %1261 = icmp eq i32 %1260, 2
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %17, align 1
  %1263 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1263, i64* %RCX.i2784, align 8
  %1264 = add i64 %1227, -28
  %1265 = add i64 %1229, 18
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  %1267 = load i32, i32* %1266, align 4
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RDX.i2756, align 8
  %1269 = shl nsw i64 %1268, 2
  %1270 = add i64 %1263, 13240
  %1271 = add i64 %1270, %1269
  %1272 = add i64 %1229, 25
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  store i32 %1238, i32* %1273, align 4
  %1274 = load i64, i64* %RBP.i, align 8
  %1275 = add i64 %1274, -52
  %1276 = load i64, i64* %3, align 8
  %1277 = add i64 %1276, 3
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1275 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = shl i32 %1279, 1
  %1281 = icmp slt i32 %1279, 0
  %1282 = icmp slt i32 %1280, 0
  %1283 = xor i1 %1281, %1282
  %1284 = zext i32 %1280 to i64
  store i64 %1284, i64* %RAX.i1983, align 8
  %.lobit101 = lshr i32 %1279, 31
  %1285 = trunc i32 %.lobit101 to i8
  store i8 %1285, i8* %12, align 1
  %1286 = and i32 %1280, 254
  %1287 = tail call i32 @llvm.ctpop.i32(i32 %1286)
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  %1290 = xor i8 %1289, 1
  store i8 %1290, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1291 = icmp eq i32 %1280, 0
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %15, align 1
  %1293 = lshr i32 %1279, 30
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  store i8 %1295, i8* %16, align 1
  %1296 = zext i1 %1283 to i8
  store i8 %1296, i8* %17, align 1
  %1297 = add i64 %1274, -56
  %1298 = add i64 %1276, 8
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i32*
  %1300 = load i32, i32* %1299, align 4
  %1301 = add i32 %1300, %1280
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i1983, align 8
  %1303 = icmp ult i32 %1301, %1280
  %1304 = icmp ult i32 %1301, %1300
  %1305 = or i1 %1303, %1304
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %12, align 1
  %1307 = and i32 %1301, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %13, align 1
  %1312 = xor i32 %1300, %1280
  %1313 = xor i32 %1312, %1301
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %14, align 1
  %1317 = icmp eq i32 %1301, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %15, align 1
  %1319 = lshr i32 %1301, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %16, align 1
  %1321 = lshr i32 %1279, 30
  %1322 = and i32 %1321, 1
  %1323 = lshr i32 %1300, 31
  %1324 = xor i32 %1319, %1322
  %1325 = xor i32 %1319, %1323
  %1326 = add nuw nsw i32 %1324, %1325
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %17, align 1
  %1329 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1329, i64* %RCX.i2784, align 8
  %1330 = add i64 %1274, -28
  %1331 = add i64 %1276, 20
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = sext i32 %1333 to i64
  store i64 %1334, i64* %RDX.i2756, align 8
  %1335 = shl nsw i64 %1334, 2
  %1336 = add i64 %1329, 13176
  %1337 = add i64 %1336, %1335
  %1338 = add i64 %1276, 27
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  store i32 %1301, i32* %1339, align 4
  %1340 = load i64, i64* %RBP.i, align 8
  %1341 = add i64 %1340, -52
  %1342 = load i64, i64* %3, align 8
  %1343 = add i64 %1342, 3
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1341 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %RAX.i1983, align 8
  %1347 = add i64 %1340, -56
  %1348 = add i64 %1342, 6
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = shl i32 %1350, 1
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RSI.i2748, align 8
  %1353 = sub i32 %1345, %1351
  %1354 = zext i32 %1353 to i64
  store i64 %1354, i64* %RAX.i1983, align 8
  %1355 = icmp ult i32 %1345, %1351
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %12, align 1
  %1357 = and i32 %1353, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %13, align 1
  %1362 = xor i32 %1351, %1345
  %1363 = xor i32 %1362, %1353
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %14, align 1
  %1367 = icmp eq i32 %1353, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %15, align 1
  %1369 = lshr i32 %1353, 31
  %1370 = trunc i32 %1369 to i8
  store i8 %1370, i8* %16, align 1
  %1371 = lshr i32 %1345, 31
  %1372 = lshr i32 %1350, 30
  %1373 = and i32 %1372, 1
  %1374 = xor i32 %1373, %1371
  %1375 = xor i32 %1369, %1371
  %1376 = add nuw nsw i32 %1375, %1374
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %17, align 1
  %1379 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1379, i64* %RCX.i2784, align 8
  %1380 = add i64 %1340, -28
  %1381 = add i64 %1342, 22
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = sext i32 %1383 to i64
  store i64 %1384, i64* %RDX.i2756, align 8
  %1385 = shl nsw i64 %1384, 2
  %1386 = add i64 %1379, 13304
  %1387 = add i64 %1386, %1385
  %1388 = add i64 %1342, 29
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  store i32 %1353, i32* %1389, align 4
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -28
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 3
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1391 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = add i32 %1395, 1
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RAX.i1983, align 8
  %1398 = icmp eq i32 %1395, -1
  %1399 = icmp eq i32 %1396, 0
  %1400 = or i1 %1398, %1399
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %12, align 1
  %1402 = and i32 %1396, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %13, align 1
  %1407 = xor i32 %1396, %1395
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %14, align 1
  %1411 = zext i1 %1399 to i8
  store i8 %1411, i8* %15, align 1
  %1412 = lshr i32 %1396, 31
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, i8* %16, align 1
  %1414 = lshr i32 %1395, 31
  %1415 = xor i32 %1412, %1414
  %1416 = add nuw nsw i32 %1415, %1412
  %1417 = icmp eq i32 %1416, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %17, align 1
  %1419 = add i64 %1392, 9
  store i64 %1419, i64* %3, align 8
  store i32 %1396, i32* %1394, align 4
  %1420 = load i64, i64* %3, align 8
  %1421 = add i64 %1420, -364
  store i64 %1421, i64* %3, align 8
  br label %block_.L_406409

block_.L_406581:                                  ; preds = %block_.L_406678, %block_40643d
  %1422 = phi i64 [ %2272, %block_.L_406678 ], [ %.pre150, %block_40643d ]
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i2535, align 1
  %1423 = load i64, i64* %RBP.i, align 8
  %1424 = add i64 %1423, -24
  %1425 = add i64 %1422, 8
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = add i32 %1427, -4
  %1429 = icmp ult i32 %1427, 4
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %12, align 1
  %1431 = and i32 %1428, 255
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %13, align 1
  %1436 = xor i32 %1428, %1427
  %1437 = lshr i32 %1436, 4
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  store i8 %1439, i8* %14, align 1
  %1440 = icmp eq i32 %1428, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %15, align 1
  %1442 = lshr i32 %1428, 31
  %1443 = trunc i32 %1442 to i8
  store i8 %1443, i8* %16, align 1
  %1444 = lshr i32 %1427, 31
  %1445 = xor i32 %1442, %1444
  %1446 = add nuw nsw i32 %1445, %1444
  %1447 = icmp eq i32 %1446, 2
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %17, align 1
  %1449 = add i64 %1423, -171
  %1450 = add i64 %1422, 14
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i8*
  store i8 0, i8* %1451, align 1
  %1452 = load i64, i64* %3, align 8
  %1453 = add i64 %1452, 24
  %1454 = add i64 %1452, 6
  %1455 = load i8, i8* %16, align 1
  %1456 = icmp ne i8 %1455, 0
  %1457 = load i8, i8* %17, align 1
  %1458 = icmp ne i8 %1457, 0
  %1459 = xor i1 %1456, %1458
  %1460 = select i1 %1459, i64 %1454, i64 %1453
  store i64 %1460, i64* %3, align 8
  br i1 %1459, label %block_406595, label %block_.L_4065a7

block_406595:                                     ; preds = %block_.L_406581
  %1461 = load i64, i64* %RBP.i, align 8
  %1462 = add i64 %1461, -156
  %1463 = add i64 %1460, 7
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = icmp ne i32 %1465, 0
  %1467 = zext i1 %1466 to i64
  %1468 = xor i64 %1467, 255
  %1469 = trunc i64 %1468 to i8
  store i8 %1469, i8* %AL.i2555, align 1
  store i8 0, i8* %12, align 1
  %1470 = trunc i64 %1468 to i32
  %1471 = tail call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %13, align 1
  store i8 0, i8* %15, align 1
  store i8 1, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1475 = add i64 %1461, -171
  %1476 = add i64 %1460, 18
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i8*
  store i8 %1469, i8* %1477, align 1
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_4065a7

block_.L_4065a7:                                  ; preds = %block_.L_406581, %block_406595
  %1478 = phi i64 [ %1453, %block_.L_406581 ], [ %.pre151, %block_406595 ]
  %1479 = load i64, i64* %RBP.i, align 8
  %1480 = add i64 %1479, -171
  %1481 = add i64 %1478, 6
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i8*
  %1483 = load i8, i8* %1482, align 1
  store i8 %1483, i8* %AL.i2555, align 1
  %1484 = and i8 %1483, 1
  store i8 0, i8* %12, align 1
  %1485 = zext i8 %1484 to i32
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %13, align 1
  %1489 = xor i8 %1484, 1
  store i8 %1489, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1490 = icmp eq i8 %1489, 0
  %.v181 = select i1 %1490, i64 19, i64 14
  %1491 = add i64 %1478, %.v181
  store i64 %1491, i64* %3, align 8
  br i1 %1490, label %block_.L_4065ba, label %block_4065b5

block_4065b5:                                     ; preds = %block_.L_4065a7
  %1492 = add i64 %1479, -100
  %1493 = add i64 %1491, 363
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i32*
  store i32 0, i32* %1494, align 4
  %1495 = load i64, i64* %RBP.i, align 8
  %1496 = add i64 %1495, -96
  %1497 = load i64, i64* %3, align 8
  %1498 = add i64 %1497, 7
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1496 to i32*
  store i32 -1, i32* %1499, align 4
  %1500 = load i64, i64* %RBP.i, align 8
  %1501 = add i64 %1500, -92
  %1502 = load i64, i64* %3, align 8
  %1503 = add i64 %1502, 7
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1501 to i32*
  store i32 0, i32* %1504, align 4
  %1505 = load i64, i64* %RBP.i, align 8
  %1506 = add i64 %1505, -84
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, 7
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1506 to i32*
  store i32 0, i32* %1509, align 4
  %RDI.i1875 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %R8.i1581 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_406735

block_.L_4065ba:                                  ; preds = %block_.L_4065a7
  %1510 = add i64 %1479, -28
  %1511 = add i64 %1491, 7
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  store i32 0, i32* %1512, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_4065c1

block_.L_4065c1:                                  ; preds = %block_4065cb, %block_.L_4065ba
  %1513 = phi i64 [ %1931, %block_4065cb ], [ %.pre179, %block_.L_4065ba ]
  %1514 = load i64, i64* %RBP.i, align 8
  %1515 = add i64 %1514, -28
  %1516 = add i64 %1513, 4
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = add i32 %1518, -2
  %1520 = icmp ult i32 %1518, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %12, align 1
  %1522 = and i32 %1519, 255
  %1523 = tail call i32 @llvm.ctpop.i32(i32 %1522)
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  store i8 %1526, i8* %13, align 1
  %1527 = xor i32 %1519, %1518
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %14, align 1
  %1531 = icmp eq i32 %1519, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %15, align 1
  %1533 = lshr i32 %1519, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %16, align 1
  %1535 = lshr i32 %1518, 31
  %1536 = xor i32 %1533, %1535
  %1537 = add nuw nsw i32 %1536, %1535
  %1538 = icmp eq i32 %1537, 2
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %17, align 1
  %1540 = icmp ne i8 %1534, 0
  %1541 = xor i1 %1540, %1538
  %.v212 = select i1 %1541, i64 10, i64 183
  %1542 = add i64 %1513, %.v212
  store i64 %1542, i64* %3, align 8
  br i1 %1541, label %block_4065cb, label %block_.L_406678

block_4065cb:                                     ; preds = %block_.L_4065c1
  store i64 3, i64* %RAX.i1983, align 8
  %1543 = add i64 %1542, 8
  store i64 %1543, i64* %3, align 8
  %1544 = load i32, i32* %1517, align 4
  %1545 = sub i32 3, %1544
  %1546 = zext i32 %1545 to i64
  store i64 %1546, i64* %RAX.i1983, align 8
  %1547 = add i64 %1514, -36
  %1548 = add i64 %1542, 11
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  store i32 %1545, i32* %1549, align 4
  %1550 = load i64, i64* %3, align 8
  %1551 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1552 = add i64 %1551, 13112
  store i64 %1552, i64* %RCX.i2784, align 8
  %1553 = icmp ugt i64 %1551, -13113
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %12, align 1
  %1555 = trunc i64 %1552 to i32
  %1556 = and i32 %1555, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %13, align 1
  %1561 = xor i64 %1551, 16
  %1562 = xor i64 %1561, %1552
  %1563 = lshr i64 %1562, 4
  %1564 = trunc i64 %1563 to i8
  %1565 = and i8 %1564, 1
  store i8 %1565, i8* %14, align 1
  %1566 = icmp eq i64 %1552, 0
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %15, align 1
  %1568 = lshr i64 %1552, 63
  %1569 = trunc i64 %1568 to i8
  store i8 %1569, i8* %16, align 1
  %1570 = lshr i64 %1551, 63
  %1571 = xor i64 %1568, %1570
  %1572 = add nuw nsw i64 %1571, %1568
  %1573 = icmp eq i64 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %17, align 1
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -24
  %1577 = add i64 %1550, 19
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = sext i32 %1579 to i64
  %1581 = shl nsw i64 %1580, 6
  store i64 %1581, i64* %RDX.i2756, align 8
  %1582 = add i64 %1581, %1552
  store i64 %1582, i64* %RCX.i2784, align 8
  %1583 = icmp ult i64 %1582, %1552
  %1584 = icmp ult i64 %1582, %1581
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %12, align 1
  %1587 = trunc i64 %1582 to i32
  %1588 = and i32 %1587, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %13, align 1
  %1593 = xor i64 %1552, %1582
  %1594 = lshr i64 %1593, 4
  %1595 = trunc i64 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %14, align 1
  %1597 = icmp eq i64 %1582, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %15, align 1
  %1599 = lshr i64 %1582, 63
  %1600 = trunc i64 %1599 to i8
  store i8 %1600, i8* %16, align 1
  %1601 = lshr i64 %1580, 57
  %1602 = and i64 %1601, 1
  %1603 = xor i64 %1599, %1568
  %1604 = xor i64 %1599, %1602
  %1605 = add nuw nsw i64 %1603, %1604
  %1606 = icmp eq i64 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %17, align 1
  %1608 = add i64 %1575, -28
  %1609 = add i64 %1550, 30
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i32*
  %1611 = load i32, i32* %1610, align 4
  %1612 = sext i32 %1611 to i64
  store i64 %1612, i64* %RDX.i2756, align 8
  %1613 = shl nsw i64 %1612, 2
  %1614 = add i64 %1613, %1582
  %1615 = add i64 %1550, 33
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i1983, align 8
  %1619 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1620 = add i64 %1619, 13112
  store i64 %1620, i64* %RCX.i2784, align 8
  %1621 = icmp ugt i64 %1619, -13113
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %12, align 1
  %1623 = trunc i64 %1620 to i32
  %1624 = and i32 %1623, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %13, align 1
  %1629 = xor i64 %1619, 16
  %1630 = xor i64 %1629, %1620
  %1631 = lshr i64 %1630, 4
  %1632 = trunc i64 %1631 to i8
  %1633 = and i8 %1632, 1
  store i8 %1633, i8* %14, align 1
  %1634 = icmp eq i64 %1620, 0
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %15, align 1
  %1636 = lshr i64 %1620, 63
  %1637 = trunc i64 %1636 to i8
  store i8 %1637, i8* %16, align 1
  %1638 = lshr i64 %1619, 63
  %1639 = xor i64 %1636, %1638
  %1640 = add nuw nsw i64 %1639, %1636
  %1641 = icmp eq i64 %1640, 2
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %17, align 1
  %1643 = load i64, i64* %RBP.i, align 8
  %1644 = add i64 %1643, -24
  %1645 = add i64 %1550, 52
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i32*
  %1647 = load i32, i32* %1646, align 4
  %1648 = sext i32 %1647 to i64
  %1649 = shl nsw i64 %1648, 6
  store i64 %1649, i64* %RDX.i2756, align 8
  %1650 = add i64 %1649, %1620
  store i64 %1650, i64* %RCX.i2784, align 8
  %1651 = icmp ult i64 %1650, %1620
  %1652 = icmp ult i64 %1650, %1649
  %1653 = or i1 %1651, %1652
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %12, align 1
  %1655 = trunc i64 %1650 to i32
  %1656 = and i32 %1655, 255
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %13, align 1
  %1661 = xor i64 %1620, %1650
  %1662 = lshr i64 %1661, 4
  %1663 = trunc i64 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %14, align 1
  %1665 = icmp eq i64 %1650, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %15, align 1
  %1667 = lshr i64 %1650, 63
  %1668 = trunc i64 %1667 to i8
  store i8 %1668, i8* %16, align 1
  %1669 = lshr i64 %1648, 57
  %1670 = and i64 %1669, 1
  %1671 = xor i64 %1667, %1636
  %1672 = xor i64 %1667, %1670
  %1673 = add nuw nsw i64 %1671, %1672
  %1674 = icmp eq i64 %1673, 2
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %17, align 1
  %1676 = add i64 %1643, -36
  %1677 = add i64 %1550, 63
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = sext i32 %1679 to i64
  store i64 %1680, i64* %RDX.i2756, align 8
  %1681 = load i64, i64* %RAX.i1983, align 8
  %1682 = shl nsw i64 %1680, 2
  %1683 = add i64 %1650, %1682
  %1684 = add i64 %1550, 66
  store i64 %1684, i64* %3, align 8
  %1685 = trunc i64 %1681 to i32
  %1686 = inttoptr i64 %1683 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = add i32 %1687, %1685
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RAX.i1983, align 8
  %1690 = icmp ult i32 %1688, %1685
  %1691 = icmp ult i32 %1688, %1687
  %1692 = or i1 %1690, %1691
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %12, align 1
  %1694 = and i32 %1688, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %13, align 1
  %1699 = xor i32 %1687, %1685
  %1700 = xor i32 %1699, %1688
  %1701 = lshr i32 %1700, 4
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %14, align 1
  %1704 = icmp eq i32 %1688, 0
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %15, align 1
  %1706 = lshr i32 %1688, 31
  %1707 = trunc i32 %1706 to i8
  store i8 %1707, i8* %16, align 1
  %1708 = lshr i32 %1685, 31
  %1709 = lshr i32 %1687, 31
  %1710 = xor i32 %1706, %1708
  %1711 = xor i32 %1706, %1709
  %1712 = add nuw nsw i32 %1710, %1711
  %1713 = icmp eq i32 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %17, align 1
  %1715 = load i64, i64* %RBP.i, align 8
  %1716 = add i64 %1715, -28
  %1717 = add i64 %1550, 70
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i32*
  %1719 = load i32, i32* %1718, align 4
  %1720 = sext i32 %1719 to i64
  %1721 = shl nsw i64 %1720, 2
  %1722 = add i64 %1715, -64
  %1723 = add i64 %1722, %1721
  %1724 = add i64 %1550, 74
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i32*
  store i32 %1688, i32* %1725, align 4
  %1726 = load i64, i64* %3, align 8
  %1727 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1728 = add i64 %1727, 13112
  store i64 %1728, i64* %RCX.i2784, align 8
  %1729 = icmp ugt i64 %1727, -13113
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %12, align 1
  %1731 = trunc i64 %1728 to i32
  %1732 = and i32 %1731, 255
  %1733 = tail call i32 @llvm.ctpop.i32(i32 %1732)
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  %1736 = xor i8 %1735, 1
  store i8 %1736, i8* %13, align 1
  %1737 = xor i64 %1727, 16
  %1738 = xor i64 %1737, %1728
  %1739 = lshr i64 %1738, 4
  %1740 = trunc i64 %1739 to i8
  %1741 = and i8 %1740, 1
  store i8 %1741, i8* %14, align 1
  %1742 = icmp eq i64 %1728, 0
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %15, align 1
  %1744 = lshr i64 %1728, 63
  %1745 = trunc i64 %1744 to i8
  store i8 %1745, i8* %16, align 1
  %1746 = lshr i64 %1727, 63
  %1747 = xor i64 %1744, %1746
  %1748 = add nuw nsw i64 %1747, %1744
  %1749 = icmp eq i64 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %17, align 1
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -24
  %1753 = add i64 %1726, 19
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  %1756 = sext i32 %1755 to i64
  %1757 = shl nsw i64 %1756, 6
  store i64 %1757, i64* %RDX.i2756, align 8
  %1758 = add i64 %1757, %1728
  store i64 %1758, i64* %RCX.i2784, align 8
  %1759 = icmp ult i64 %1758, %1728
  %1760 = icmp ult i64 %1758, %1757
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %12, align 1
  %1763 = trunc i64 %1758 to i32
  %1764 = and i32 %1763, 255
  %1765 = tail call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  store i8 %1768, i8* %13, align 1
  %1769 = xor i64 %1728, %1758
  %1770 = lshr i64 %1769, 4
  %1771 = trunc i64 %1770 to i8
  %1772 = and i8 %1771, 1
  store i8 %1772, i8* %14, align 1
  %1773 = icmp eq i64 %1758, 0
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %15, align 1
  %1775 = lshr i64 %1758, 63
  %1776 = trunc i64 %1775 to i8
  store i8 %1776, i8* %16, align 1
  %1777 = lshr i64 %1756, 57
  %1778 = and i64 %1777, 1
  %1779 = xor i64 %1775, %1744
  %1780 = xor i64 %1775, %1778
  %1781 = add nuw nsw i64 %1779, %1780
  %1782 = icmp eq i64 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %17, align 1
  %1784 = add i64 %1751, -28
  %1785 = add i64 %1726, 30
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = sext i32 %1787 to i64
  store i64 %1788, i64* %RDX.i2756, align 8
  %1789 = shl nsw i64 %1788, 2
  %1790 = add i64 %1789, %1758
  %1791 = add i64 %1726, 33
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1790 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = zext i32 %1793 to i64
  store i64 %1794, i64* %RAX.i1983, align 8
  %1795 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1796 = add i64 %1795, 13112
  store i64 %1796, i64* %RCX.i2784, align 8
  %1797 = icmp ugt i64 %1795, -13113
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %12, align 1
  %1799 = trunc i64 %1796 to i32
  %1800 = and i32 %1799, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %13, align 1
  %1805 = xor i64 %1795, 16
  %1806 = xor i64 %1805, %1796
  %1807 = lshr i64 %1806, 4
  %1808 = trunc i64 %1807 to i8
  %1809 = and i8 %1808, 1
  store i8 %1809, i8* %14, align 1
  %1810 = icmp eq i64 %1796, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %15, align 1
  %1812 = lshr i64 %1796, 63
  %1813 = trunc i64 %1812 to i8
  store i8 %1813, i8* %16, align 1
  %1814 = lshr i64 %1795, 63
  %1815 = xor i64 %1812, %1814
  %1816 = add nuw nsw i64 %1815, %1812
  %1817 = icmp eq i64 %1816, 2
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %17, align 1
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -24
  %1821 = add i64 %1726, 52
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = sext i32 %1823 to i64
  %1825 = shl nsw i64 %1824, 6
  store i64 %1825, i64* %RDX.i2756, align 8
  %1826 = add i64 %1825, %1796
  store i64 %1826, i64* %RCX.i2784, align 8
  %1827 = icmp ult i64 %1826, %1796
  %1828 = icmp ult i64 %1826, %1825
  %1829 = or i1 %1827, %1828
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %12, align 1
  %1831 = trunc i64 %1826 to i32
  %1832 = and i32 %1831, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %13, align 1
  %1837 = xor i64 %1796, %1826
  %1838 = lshr i64 %1837, 4
  %1839 = trunc i64 %1838 to i8
  %1840 = and i8 %1839, 1
  store i8 %1840, i8* %14, align 1
  %1841 = icmp eq i64 %1826, 0
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %15, align 1
  %1843 = lshr i64 %1826, 63
  %1844 = trunc i64 %1843 to i8
  store i8 %1844, i8* %16, align 1
  %1845 = lshr i64 %1824, 57
  %1846 = and i64 %1845, 1
  %1847 = xor i64 %1843, %1812
  %1848 = xor i64 %1843, %1846
  %1849 = add nuw nsw i64 %1847, %1848
  %1850 = icmp eq i64 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %17, align 1
  %1852 = add i64 %1819, -36
  %1853 = add i64 %1726, 63
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  %1856 = sext i32 %1855 to i64
  store i64 %1856, i64* %RDX.i2756, align 8
  %1857 = load i64, i64* %RAX.i1983, align 8
  %1858 = shl nsw i64 %1856, 2
  %1859 = add i64 %1826, %1858
  %1860 = add i64 %1726, 66
  store i64 %1860, i64* %3, align 8
  %1861 = trunc i64 %1857 to i32
  %1862 = inttoptr i64 %1859 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = sub i32 %1861, %1863
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i1983, align 8
  %1866 = icmp ult i32 %1861, %1863
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %12, align 1
  %1868 = and i32 %1864, 255
  %1869 = tail call i32 @llvm.ctpop.i32(i32 %1868)
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  %1872 = xor i8 %1871, 1
  store i8 %1872, i8* %13, align 1
  %1873 = xor i32 %1863, %1861
  %1874 = xor i32 %1873, %1864
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  store i8 %1877, i8* %14, align 1
  %1878 = icmp eq i32 %1864, 0
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %15, align 1
  %1880 = lshr i32 %1864, 31
  %1881 = trunc i32 %1880 to i8
  store i8 %1881, i8* %16, align 1
  %1882 = lshr i32 %1861, 31
  %1883 = lshr i32 %1863, 31
  %1884 = xor i32 %1883, %1882
  %1885 = xor i32 %1880, %1882
  %1886 = add nuw nsw i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %17, align 1
  %1889 = load i64, i64* %RBP.i, align 8
  %1890 = add i64 %1889, -36
  %1891 = add i64 %1726, 70
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = sext i32 %1893 to i64
  store i64 %1894, i64* %RCX.i2784, align 8
  %1895 = shl nsw i64 %1894, 2
  %1896 = add i64 %1889, -64
  %1897 = add i64 %1896, %1895
  %1898 = add i64 %1726, 74
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  store i32 %1864, i32* %1899, align 4
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -28
  %1902 = load i64, i64* %3, align 8
  %1903 = add i64 %1902, 3
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1901 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = add i32 %1905, 1
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RAX.i1983, align 8
  %1908 = icmp eq i32 %1905, -1
  %1909 = icmp eq i32 %1906, 0
  %1910 = or i1 %1908, %1909
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %12, align 1
  %1912 = and i32 %1906, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %13, align 1
  %1917 = xor i32 %1906, %1905
  %1918 = lshr i32 %1917, 4
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %14, align 1
  %1921 = zext i1 %1909 to i8
  store i8 %1921, i8* %15, align 1
  %1922 = lshr i32 %1906, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %16, align 1
  %1924 = lshr i32 %1905, 31
  %1925 = xor i32 %1922, %1924
  %1926 = add nuw nsw i32 %1925, %1922
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %17, align 1
  %1929 = add i64 %1902, 9
  store i64 %1929, i64* %3, align 8
  store i32 %1906, i32* %1904, align 4
  %1930 = load i64, i64* %3, align 8
  %1931 = add i64 %1930, -178
  store i64 %1931, i64* %3, align 8
  br label %block_.L_4065c1

block_.L_406678:                                  ; preds = %block_.L_4065c1
  %1932 = add i64 %1514, -64
  %1933 = add i64 %1542, 3
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RAX.i1983, align 8
  %1937 = add i64 %1514, -60
  %1938 = add i64 %1542, 6
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = add i32 %1940, %1935
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RAX.i1983, align 8
  %1943 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1944 = add i64 %1943, 13112
  store i64 %1944, i64* %RCX.i2784, align 8
  %1945 = icmp ugt i64 %1943, -13113
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %12, align 1
  %1947 = trunc i64 %1944 to i32
  %1948 = and i32 %1947, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %13, align 1
  %1953 = xor i64 %1943, 16
  %1954 = xor i64 %1953, %1944
  %1955 = lshr i64 %1954, 4
  %1956 = trunc i64 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %14, align 1
  %1958 = icmp eq i64 %1944, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %15, align 1
  %1960 = lshr i64 %1944, 63
  %1961 = trunc i64 %1960 to i8
  store i8 %1961, i8* %16, align 1
  %1962 = lshr i64 %1943, 63
  %1963 = xor i64 %1960, %1962
  %1964 = add nuw nsw i64 %1963, %1960
  %1965 = icmp eq i64 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %17, align 1
  %1967 = add i64 %1514, -24
  %1968 = add i64 %1542, 25
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = sext i32 %1970 to i64
  %1972 = shl nsw i64 %1971, 6
  store i64 %1972, i64* %RDX.i2756, align 8
  %1973 = add i64 %1972, %1944
  store i64 %1973, i64* %RCX.i2784, align 8
  %1974 = icmp ult i64 %1973, %1944
  %1975 = icmp ult i64 %1973, %1972
  %1976 = or i1 %1974, %1975
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %12, align 1
  %1978 = trunc i64 %1973 to i32
  %1979 = and i32 %1978, 255
  %1980 = tail call i32 @llvm.ctpop.i32(i32 %1979)
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  %1983 = xor i8 %1982, 1
  store i8 %1983, i8* %13, align 1
  %1984 = xor i64 %1944, %1973
  %1985 = lshr i64 %1984, 4
  %1986 = trunc i64 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %14, align 1
  %1988 = icmp eq i64 %1973, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %15, align 1
  %1990 = lshr i64 %1973, 63
  %1991 = trunc i64 %1990 to i8
  store i8 %1991, i8* %16, align 1
  %1992 = lshr i64 %1971, 57
  %1993 = and i64 %1992, 1
  %1994 = xor i64 %1990, %1960
  %1995 = xor i64 %1990, %1993
  %1996 = add nuw nsw i64 %1994, %1995
  %1997 = icmp eq i64 %1996, 2
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %17, align 1
  %1999 = inttoptr i64 %1973 to i32*
  %2000 = load i32, i32* %EAX.i1982, align 4
  %2001 = add i64 %1542, 34
  store i64 %2001, i64* %3, align 8
  store i32 %2000, i32* %1999, align 4
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -64
  %2004 = load i64, i64* %3, align 8
  %2005 = add i64 %2004, 3
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2003 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RAX.i1983, align 8
  %2009 = add i64 %2002, -60
  %2010 = add i64 %2004, 6
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = sub i32 %2007, %2012
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RAX.i1983, align 8
  %2015 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2016 = add i64 %2015, 13112
  store i64 %2016, i64* %RCX.i2784, align 8
  %2017 = icmp ugt i64 %2015, -13113
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %12, align 1
  %2019 = trunc i64 %2016 to i32
  %2020 = and i32 %2019, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %13, align 1
  %2025 = xor i64 %2015, 16
  %2026 = xor i64 %2025, %2016
  %2027 = lshr i64 %2026, 4
  %2028 = trunc i64 %2027 to i8
  %2029 = and i8 %2028, 1
  store i8 %2029, i8* %14, align 1
  %2030 = icmp eq i64 %2016, 0
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %15, align 1
  %2032 = lshr i64 %2016, 63
  %2033 = trunc i64 %2032 to i8
  store i8 %2033, i8* %16, align 1
  %2034 = lshr i64 %2015, 63
  %2035 = xor i64 %2032, %2034
  %2036 = add nuw nsw i64 %2035, %2032
  %2037 = icmp eq i64 %2036, 2
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %17, align 1
  %2039 = add i64 %2002, -24
  %2040 = add i64 %2004, 25
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = sext i32 %2042 to i64
  %2044 = shl nsw i64 %2043, 6
  store i64 %2044, i64* %RDX.i2756, align 8
  %2045 = add i64 %2044, %2016
  store i64 %2045, i64* %RCX.i2784, align 8
  %2046 = icmp ult i64 %2045, %2016
  %2047 = icmp ult i64 %2045, %2044
  %2048 = or i1 %2046, %2047
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %12, align 1
  %2050 = trunc i64 %2045 to i32
  %2051 = and i32 %2050, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %13, align 1
  %2056 = xor i64 %2016, %2045
  %2057 = lshr i64 %2056, 4
  %2058 = trunc i64 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %14, align 1
  %2060 = icmp eq i64 %2045, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %15, align 1
  %2062 = lshr i64 %2045, 63
  %2063 = trunc i64 %2062 to i8
  store i8 %2063, i8* %16, align 1
  %2064 = lshr i64 %2043, 57
  %2065 = and i64 %2064, 1
  %2066 = xor i64 %2062, %2032
  %2067 = xor i64 %2062, %2065
  %2068 = add nuw nsw i64 %2066, %2067
  %2069 = icmp eq i64 %2068, 2
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %17, align 1
  %2071 = add i64 %2045, 8
  %2072 = load i32, i32* %EAX.i1982, align 4
  %2073 = add i64 %2004, 35
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2071 to i32*
  store i32 %2072, i32* %2074, align 4
  %2075 = load i64, i64* %RBP.i, align 8
  %2076 = add i64 %2075, -52
  %2077 = load i64, i64* %3, align 8
  %2078 = add i64 %2077, 3
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2076 to i32*
  %2080 = load i32, i32* %2079, align 4
  %2081 = shl i32 %2080, 1
  %2082 = icmp slt i32 %2080, 0
  %2083 = icmp slt i32 %2081, 0
  %2084 = xor i1 %2082, %2083
  %2085 = zext i32 %2081 to i64
  store i64 %2085, i64* %RAX.i1983, align 8
  %.lobit93 = lshr i32 %2080, 31
  %2086 = trunc i32 %.lobit93 to i8
  store i8 %2086, i8* %12, align 1
  %2087 = and i32 %2081, 254
  %2088 = tail call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  store i8 %2091, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2092 = icmp eq i32 %2081, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %15, align 1
  %2094 = lshr i32 %2080, 30
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %16, align 1
  %2097 = zext i1 %2084 to i8
  store i8 %2097, i8* %17, align 1
  %2098 = add i64 %2075, -56
  %2099 = add i64 %2077, 8
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i32*
  %2101 = load i32, i32* %2100, align 4
  %2102 = add i32 %2101, %2081
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RAX.i1983, align 8
  %2104 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2105 = add i64 %2104, 13112
  store i64 %2105, i64* %RCX.i2784, align 8
  %2106 = icmp ugt i64 %2104, -13113
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %12, align 1
  %2108 = trunc i64 %2105 to i32
  %2109 = and i32 %2108, 255
  %2110 = tail call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  store i8 %2113, i8* %13, align 1
  %2114 = xor i64 %2104, 16
  %2115 = xor i64 %2114, %2105
  %2116 = lshr i64 %2115, 4
  %2117 = trunc i64 %2116 to i8
  %2118 = and i8 %2117, 1
  store i8 %2118, i8* %14, align 1
  %2119 = icmp eq i64 %2105, 0
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %15, align 1
  %2121 = lshr i64 %2105, 63
  %2122 = trunc i64 %2121 to i8
  store i8 %2122, i8* %16, align 1
  %2123 = lshr i64 %2104, 63
  %2124 = xor i64 %2121, %2123
  %2125 = add nuw nsw i64 %2124, %2121
  %2126 = icmp eq i64 %2125, 2
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %17, align 1
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -24
  %2130 = add i64 %2077, 27
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = sext i32 %2132 to i64
  %2134 = shl nsw i64 %2133, 6
  store i64 %2134, i64* %RDX.i2756, align 8
  %2135 = add i64 %2134, %2105
  store i64 %2135, i64* %RCX.i2784, align 8
  %2136 = icmp ult i64 %2135, %2105
  %2137 = icmp ult i64 %2135, %2134
  %2138 = or i1 %2136, %2137
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %12, align 1
  %2140 = trunc i64 %2135 to i32
  %2141 = and i32 %2140, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %13, align 1
  %2146 = xor i64 %2105, %2135
  %2147 = lshr i64 %2146, 4
  %2148 = trunc i64 %2147 to i8
  %2149 = and i8 %2148, 1
  store i8 %2149, i8* %14, align 1
  %2150 = icmp eq i64 %2135, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %15, align 1
  %2152 = lshr i64 %2135, 63
  %2153 = trunc i64 %2152 to i8
  store i8 %2153, i8* %16, align 1
  %2154 = lshr i64 %2133, 57
  %2155 = and i64 %2154, 1
  %2156 = xor i64 %2152, %2121
  %2157 = xor i64 %2152, %2155
  %2158 = add nuw nsw i64 %2156, %2157
  %2159 = icmp eq i64 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %17, align 1
  %2161 = add i64 %2135, 4
  %2162 = load i32, i32* %EAX.i1982, align 4
  %2163 = add i64 %2077, 37
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2161 to i32*
  store i32 %2162, i32* %2164, align 4
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -52
  %2167 = load i64, i64* %3, align 8
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2166 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RAX.i1983, align 8
  %2172 = add i64 %2165, -56
  %2173 = add i64 %2167, 6
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = shl i32 %2175, 1
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RSI.i2748, align 8
  %2178 = sub i32 %2170, %2176
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RAX.i1983, align 8
  %2180 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2181 = add i64 %2180, 13112
  store i64 %2181, i64* %RCX.i2784, align 8
  %2182 = icmp ugt i64 %2180, -13113
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %12, align 1
  %2184 = trunc i64 %2181 to i32
  %2185 = and i32 %2184, 255
  %2186 = tail call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  store i8 %2189, i8* %13, align 1
  %2190 = xor i64 %2180, 16
  %2191 = xor i64 %2190, %2181
  %2192 = lshr i64 %2191, 4
  %2193 = trunc i64 %2192 to i8
  %2194 = and i8 %2193, 1
  store i8 %2194, i8* %14, align 1
  %2195 = icmp eq i64 %2181, 0
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %15, align 1
  %2197 = lshr i64 %2181, 63
  %2198 = trunc i64 %2197 to i8
  store i8 %2198, i8* %16, align 1
  %2199 = lshr i64 %2180, 63
  %2200 = xor i64 %2197, %2199
  %2201 = add nuw nsw i64 %2200, %2197
  %2202 = icmp eq i64 %2201, 2
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %17, align 1
  %2204 = load i64, i64* %RBP.i, align 8
  %2205 = add i64 %2204, -24
  %2206 = add i64 %2167, 29
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = sext i32 %2208 to i64
  %2210 = shl nsw i64 %2209, 6
  store i64 %2210, i64* %RDX.i2756, align 8
  %2211 = add i64 %2210, %2181
  store i64 %2211, i64* %RCX.i2784, align 8
  %2212 = icmp ult i64 %2211, %2181
  %2213 = icmp ult i64 %2211, %2210
  %2214 = or i1 %2212, %2213
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %12, align 1
  %2216 = trunc i64 %2211 to i32
  %2217 = and i32 %2216, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %13, align 1
  %2222 = xor i64 %2181, %2211
  %2223 = lshr i64 %2222, 4
  %2224 = trunc i64 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %14, align 1
  %2226 = icmp eq i64 %2211, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %15, align 1
  %2228 = lshr i64 %2211, 63
  %2229 = trunc i64 %2228 to i8
  store i8 %2229, i8* %16, align 1
  %2230 = lshr i64 %2209, 57
  %2231 = and i64 %2230, 1
  %2232 = xor i64 %2228, %2197
  %2233 = xor i64 %2228, %2231
  %2234 = add nuw nsw i64 %2232, %2233
  %2235 = icmp eq i64 %2234, 2
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %17, align 1
  %2237 = add i64 %2211, 12
  %2238 = load i32, i32* %EAX.i1982, align 4
  %2239 = add i64 %2167, 39
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2237 to i32*
  store i32 %2238, i32* %2240, align 4
  %2241 = load i64, i64* %RBP.i, align 8
  %2242 = add i64 %2241, -24
  %2243 = load i64, i64* %3, align 8
  %2244 = add i64 %2243, 3
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2242 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = add i32 %2246, 1
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RAX.i1983, align 8
  %2249 = icmp eq i32 %2246, -1
  %2250 = icmp eq i32 %2247, 0
  %2251 = or i1 %2249, %2250
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %12, align 1
  %2253 = and i32 %2247, 255
  %2254 = tail call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  store i8 %2257, i8* %13, align 1
  %2258 = xor i32 %2247, %2246
  %2259 = lshr i32 %2258, 4
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  store i8 %2261, i8* %14, align 1
  %2262 = zext i1 %2250 to i8
  store i8 %2262, i8* %15, align 1
  %2263 = lshr i32 %2247, 31
  %2264 = trunc i32 %2263 to i8
  store i8 %2264, i8* %16, align 1
  %2265 = lshr i32 %2246, 31
  %2266 = xor i32 %2263, %2265
  %2267 = add nuw nsw i32 %2266, %2263
  %2268 = icmp eq i32 %2267, 2
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %17, align 1
  %2270 = add i64 %2243, 9
  store i64 %2270, i64* %3, align 8
  store i32 %2247, i32* %2245, align 4
  %2271 = load i64, i64* %3, align 8
  %2272 = add i64 %2271, -403
  store i64 %2272, i64* %3, align 8
  br label %block_.L_406581

block_.L_406735:                                  ; preds = %block_.L_406bc3, %block_4065b5
  %2273 = phi i64 [ %.pre152, %block_4065b5 ], [ %4635, %block_.L_406bc3 ]
  %MEMORY.7 = phi %struct.Memory* [ %646, %block_4065b5 ], [ %MEMORY.19, %block_.L_406bc3 ]
  %2274 = load i64, i64* %RBP.i, align 8
  %2275 = add i64 %2274, -84
  %2276 = add i64 %2273, 4
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2275 to i32*
  %2278 = load i32, i32* %2277, align 4
  %2279 = add i32 %2278, -16
  %2280 = icmp ult i32 %2278, 16
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %12, align 1
  %2282 = and i32 %2279, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %13, align 1
  %2287 = xor i32 %2278, 16
  %2288 = xor i32 %2287, %2279
  %2289 = lshr i32 %2288, 4
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  store i8 %2291, i8* %14, align 1
  %2292 = icmp eq i32 %2279, 0
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %15, align 1
  %2294 = lshr i32 %2279, 31
  %2295 = trunc i32 %2294 to i8
  store i8 %2295, i8* %16, align 1
  %2296 = lshr i32 %2278, 31
  %2297 = xor i32 %2294, %2296
  %2298 = add nuw nsw i32 %2297, %2296
  %2299 = icmp eq i32 %2298, 2
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %17, align 1
  %2301 = icmp ne i8 %2295, 0
  %2302 = xor i1 %2301, %2299
  %.v188 = select i1 %2302, i64 10, i64 1185
  %2303 = add i64 %2273, %.v188
  store i64 %2303, i64* %3, align 8
  br i1 %2302, label %block_40673f, label %block_.L_406bd6

block_40673f:                                     ; preds = %block_.L_406735
  %2304 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2304, i64* %RAX.i1983, align 8
  %2305 = add i64 %2304, 72444
  %2306 = add i64 %2303, 15
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  store i8 0, i8* %12, align 1
  %2309 = and i32 %2308, 255
  %2310 = tail call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2314 = icmp eq i32 %2308, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %15, align 1
  %2316 = lshr i32 %2308, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v201 = select i1 %2314, i64 21, i64 62
  %2318 = add i64 %2303, %.v201
  store i64 %2318, i64* %3, align 8
  br i1 %2314, label %block_406754, label %block_.L_40677d

block_406754:                                     ; preds = %block_40673f
  store i64 %2304, i64* %RAX.i1983, align 8
  %2319 = add i64 %2304, 72400
  %2320 = add i64 %2318, 15
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i32*
  %2322 = load i32, i32* %2321, align 4
  store i8 0, i8* %12, align 1
  %2323 = and i32 %2322, 255
  %2324 = tail call i32 @llvm.ctpop.i32(i32 %2323)
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = xor i8 %2326, 1
  store i8 %2327, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2328 = icmp eq i32 %2322, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %15, align 1
  %2330 = lshr i32 %2322, 31
  %2331 = trunc i32 %2330 to i8
  store i8 %2331, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v210 = select i1 %2328, i64 76, i64 21
  %2332 = add i64 %2318, %.v210
  store i64 %2332, i64* %3, align 8
  br i1 %2328, label %block_.L_4067a0, label %block_406769

block_406769:                                     ; preds = %block_406754
  %2333 = add i64 %2274, -152
  %2334 = add i64 %2332, 7
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i64*
  %2336 = load i64, i64* %2335, align 8
  store i64 %2336, i64* %RAX.i1983, align 8
  %2337 = add i64 %2336, 532
  %2338 = add i64 %2332, 14
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i32*
  %2340 = load i32, i32* %2339, align 4
  store i8 0, i8* %12, align 1
  %2341 = and i32 %2340, 255
  %2342 = tail call i32 @llvm.ctpop.i32(i32 %2341)
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  %2345 = xor i8 %2344, 1
  store i8 %2345, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2346 = icmp eq i32 %2340, 0
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %15, align 1
  %2348 = lshr i32 %2340, 31
  %2349 = trunc i32 %2348 to i8
  store i8 %2349, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v211 = select i1 %2346, i64 55, i64 20
  %2350 = add i64 %2332, %.v211
  store i64 %2350, i64* %3, align 8
  br i1 %2346, label %block_.L_4067a0, label %block_.L_40677d

block_.L_40677d:                                  ; preds = %block_40673f, %block_406769
  %2351 = phi i64 [ %2350, %block_406769 ], [ %2318, %block_40673f ]
  %2352 = add i64 %2351, 4
  store i64 %2352, i64* %3, align 8
  %2353 = load i32, i32* %2277, align 4
  %2354 = sext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i1983, align 8
  %2355 = shl nsw i64 %2354, 1
  %2356 = add nsw i64 %2355, 4924288
  %2357 = add i64 %2351, 12
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i8*
  %2359 = load i8, i8* %2358, align 2
  %2360 = zext i8 %2359 to i64
  store i64 %2360, i64* %RCX.i2784, align 8
  %2361 = add i64 %2274, -24
  %2362 = zext i8 %2359 to i32
  %2363 = add i64 %2351, 15
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2361 to i32*
  store i32 %2362, i32* %2364, align 4
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -84
  %2367 = load i64, i64* %3, align 8
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369, align 4
  %2371 = sext i32 %2370 to i64
  store i64 %2371, i64* %RAX.i1983, align 8
  %2372 = shl nsw i64 %2371, 1
  %2373 = add nsw i64 %2372, 4924289
  %2374 = add i64 %2367, 12
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i8*
  %2376 = load i8, i8* %2375, align 1
  %2377 = zext i8 %2376 to i64
  store i64 %2377, i64* %RCX.i2784, align 8
  %2378 = add i64 %2365, -28
  %2379 = zext i8 %2376 to i32
  %2380 = add i64 %2367, 15
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2378 to i32*
  store i32 %2379, i32* %2381, align 4
  %2382 = load i64, i64* %3, align 8
  %2383 = add i64 %2382, 35
  store i64 %2383, i64* %3, align 8
  br label %block_.L_4067be

block_.L_4067a0:                                  ; preds = %block_406769, %block_406754
  %2384 = phi i64 [ %2350, %block_406769 ], [ %2332, %block_406754 ]
  %2385 = add i64 %2384, 4
  store i64 %2385, i64* %3, align 8
  %2386 = load i32, i32* %2277, align 4
  %2387 = sext i32 %2386 to i64
  store i64 %2387, i64* %RAX.i1983, align 8
  %2388 = shl nsw i64 %2387, 1
  %2389 = add nsw i64 %2388, 4924256
  %2390 = add i64 %2384, 12
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i8*
  %2392 = load i8, i8* %2391, align 2
  %2393 = zext i8 %2392 to i64
  store i64 %2393, i64* %RCX.i2784, align 8
  %2394 = add i64 %2274, -24
  %2395 = zext i8 %2392 to i32
  %2396 = add i64 %2384, 15
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2394 to i32*
  store i32 %2395, i32* %2397, align 4
  %2398 = load i64, i64* %RBP.i, align 8
  %2399 = add i64 %2398, -84
  %2400 = load i64, i64* %3, align 8
  %2401 = add i64 %2400, 4
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2399 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = sext i32 %2403 to i64
  store i64 %2404, i64* %RAX.i1983, align 8
  %2405 = shl nsw i64 %2404, 1
  %2406 = add nsw i64 %2405, 4924257
  %2407 = add i64 %2400, 12
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i8*
  %2409 = load i8, i8* %2408, align 1
  %2410 = zext i8 %2409 to i64
  store i64 %2410, i64* %RCX.i2784, align 8
  %2411 = add i64 %2398, -28
  %2412 = zext i8 %2409 to i32
  %2413 = add i64 %2400, 15
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2411 to i32*
  store i32 %2412, i32* %2414, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_4067be

block_.L_4067be:                                  ; preds = %block_.L_4067a0, %block_.L_40677d
  %2415 = phi i64 [ %.pre171, %block_.L_4067a0 ], [ %2383, %block_.L_40677d ]
  %2416 = load i64, i64* %RBP.i, align 8
  %2417 = add i64 %2416, -96
  %2418 = add i64 %2415, 3
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  %2420 = load i32, i32* %2419, align 4
  %2421 = add i32 %2420, 1
  %2422 = zext i32 %2421 to i64
  store i64 %2422, i64* %RAX.i1983, align 8
  %2423 = icmp eq i32 %2420, -1
  %2424 = icmp eq i32 %2421, 0
  %2425 = or i1 %2423, %2424
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %12, align 1
  %2427 = and i32 %2421, 255
  %2428 = tail call i32 @llvm.ctpop.i32(i32 %2427)
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  %2431 = xor i8 %2430, 1
  store i8 %2431, i8* %13, align 1
  %2432 = xor i32 %2421, %2420
  %2433 = lshr i32 %2432, 4
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  store i8 %2435, i8* %14, align 1
  %2436 = zext i1 %2424 to i8
  store i8 %2436, i8* %15, align 1
  %2437 = lshr i32 %2421, 31
  %2438 = trunc i32 %2437 to i8
  store i8 %2438, i8* %16, align 1
  %2439 = lshr i32 %2420, 31
  %2440 = xor i32 %2437, %2439
  %2441 = add nuw nsw i32 %2440, %2437
  %2442 = icmp eq i32 %2441, 2
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %17, align 1
  %2444 = add i64 %2415, 9
  store i64 %2444, i64* %3, align 8
  store i32 %2421, i32* %2419, align 4
  %2445 = load i64, i64* %RBP.i, align 8
  %2446 = add i64 %2445, -40
  %2447 = load i64, i64* %3, align 8
  %2448 = add i64 %2447, 7
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2446 to i32*
  store i32 0, i32* %2449, align 4
  %2450 = load i64, i64* %RBP.i, align 8
  %2451 = add i64 %2450, -156
  %2452 = load i64, i64* %3, align 8
  %2453 = add i64 %2452, 7
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2451 to i32*
  %2455 = load i32, i32* %2454, align 4
  store i8 0, i8* %12, align 1
  %2456 = and i32 %2455, 255
  %2457 = tail call i32 @llvm.ctpop.i32(i32 %2456)
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  store i8 %2460, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2461 = icmp eq i32 %2455, 0
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %15, align 1
  %2463 = lshr i32 %2455, 31
  %2464 = trunc i32 %2463 to i8
  store i8 %2464, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v202 = select i1 %2461, i64 58, i64 13
  %2465 = add i64 %2452, %.v202
  store i64 %2465, i64* %3, align 8
  br i1 %2461, label %block_.L_406808, label %block_4067db

block_4067db:                                     ; preds = %block_.L_4067be
  %2466 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2467 = add i64 %2466, 13112
  store i64 %2467, i64* %RAX.i1983, align 8
  %2468 = icmp ugt i64 %2466, -13113
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %12, align 1
  %2470 = trunc i64 %2467 to i32
  %2471 = and i32 %2470, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %13, align 1
  %2476 = xor i64 %2466, 16
  %2477 = xor i64 %2476, %2467
  %2478 = lshr i64 %2477, 4
  %2479 = trunc i64 %2478 to i8
  %2480 = and i8 %2479, 1
  store i8 %2480, i8* %14, align 1
  %2481 = icmp eq i64 %2467, 0
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %15, align 1
  %2483 = lshr i64 %2467, 63
  %2484 = trunc i64 %2483 to i8
  store i8 %2484, i8* %16, align 1
  %2485 = lshr i64 %2466, 63
  %2486 = xor i64 %2483, %2485
  %2487 = add nuw nsw i64 %2486, %2483
  %2488 = icmp eq i64 %2487, 2
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %17, align 1
  %2490 = add i64 %2450, -24
  %2491 = add i64 %2465, 18
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = sext i32 %2493 to i64
  %2495 = shl nsw i64 %2494, 6
  store i64 %2495, i64* %RCX.i2784, align 8
  %2496 = add i64 %2495, %2467
  store i64 %2496, i64* %RAX.i1983, align 8
  %2497 = icmp ult i64 %2496, %2467
  %2498 = icmp ult i64 %2496, %2495
  %2499 = or i1 %2497, %2498
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %12, align 1
  %2501 = trunc i64 %2496 to i32
  %2502 = and i32 %2501, 255
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %13, align 1
  %2507 = xor i64 %2467, %2496
  %2508 = lshr i64 %2507, 4
  %2509 = trunc i64 %2508 to i8
  %2510 = and i8 %2509, 1
  store i8 %2510, i8* %14, align 1
  %2511 = icmp eq i64 %2496, 0
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %15, align 1
  %2513 = lshr i64 %2496, 63
  %2514 = trunc i64 %2513 to i8
  store i8 %2514, i8* %16, align 1
  %2515 = lshr i64 %2494, 57
  %2516 = and i64 %2515, 1
  %2517 = xor i64 %2513, %2483
  %2518 = xor i64 %2513, %2516
  %2519 = add nuw nsw i64 %2517, %2518
  %2520 = icmp eq i64 %2519, 2
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %17, align 1
  %2522 = load i64, i64* %RBP.i, align 8
  %2523 = add i64 %2522, -28
  %2524 = add i64 %2465, 29
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  %2526 = load i32, i32* %2525, align 4
  %2527 = sext i32 %2526 to i64
  store i64 %2527, i64* %RCX.i2784, align 8
  %2528 = shl nsw i64 %2527, 2
  %2529 = add i64 %2528, %2496
  %2530 = add i64 %2465, 32
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RDI.i1875, align 8
  %2534 = add i64 %2465, -22491
  %2535 = add i64 %2465, 37
  %2536 = load i64, i64* %6, align 8
  %2537 = add i64 %2536, -8
  %2538 = inttoptr i64 %2537 to i64*
  store i64 %2535, i64* %2538, align 8
  store i64 %2537, i64* %6, align 8
  store i64 %2534, i64* %3, align 8
  %2539 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.7)
  %2540 = load i64, i64* %RBP.i, align 8
  %2541 = add i64 %2540, -88
  %2542 = load i32, i32* %EAX.i1982, align 4
  %2543 = load i64, i64* %3, align 8
  %2544 = add i64 %2543, 3
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2541 to i32*
  store i32 %2542, i32* %2545, align 4
  %2546 = load i64, i64* %3, align 8
  %2547 = add i64 %2546, 273
  br label %block_.L_406914

block_.L_406808:                                  ; preds = %block_.L_4067be
  %2548 = add i64 %2450, -20
  %2549 = add i64 %2465, 4
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = icmp eq i32 %2551, 1
  %.v209 = select i1 %2552, i64 10, i64 139
  %2553 = add i64 %2465, %.v209
  %2554 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2555 = add i64 %2554, 13112
  store i64 %2555, i64* %RAX.i1983, align 8
  %2556 = icmp ugt i64 %2554, -13113
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %12, align 1
  %2558 = trunc i64 %2555 to i32
  %2559 = and i32 %2558, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %13, align 1
  %2564 = xor i64 %2554, 16
  %2565 = xor i64 %2564, %2555
  %2566 = lshr i64 %2565, 4
  %2567 = trunc i64 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %14, align 1
  %2569 = icmp eq i64 %2555, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %15, align 1
  %2571 = lshr i64 %2555, 63
  %2572 = trunc i64 %2571 to i8
  store i8 %2572, i8* %16, align 1
  %2573 = lshr i64 %2554, 63
  %2574 = xor i64 %2571, %2573
  %2575 = add nuw nsw i64 %2574, %2571
  %2576 = icmp eq i64 %2575, 2
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %17, align 1
  %2578 = add i64 %2450, -24
  %2579 = add i64 %2553, 18
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = sext i32 %2581 to i64
  %2583 = shl nsw i64 %2582, 6
  store i64 %2583, i64* %RCX.i2784, align 8
  %2584 = add i64 %2583, %2555
  store i64 %2584, i64* %RAX.i1983, align 8
  %2585 = icmp ult i64 %2584, %2555
  %2586 = icmp ult i64 %2584, %2583
  %2587 = or i1 %2585, %2586
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %12, align 1
  %2589 = trunc i64 %2584 to i32
  %2590 = and i32 %2589, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %13, align 1
  %2595 = xor i64 %2555, %2584
  %2596 = lshr i64 %2595, 4
  %2597 = trunc i64 %2596 to i8
  %2598 = and i8 %2597, 1
  store i8 %2598, i8* %14, align 1
  %2599 = icmp eq i64 %2584, 0
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %15, align 1
  %2601 = lshr i64 %2584, 63
  %2602 = trunc i64 %2601 to i8
  store i8 %2602, i8* %16, align 1
  %2603 = lshr i64 %2582, 57
  %2604 = and i64 %2603, 1
  %2605 = xor i64 %2601, %2571
  %2606 = xor i64 %2601, %2604
  %2607 = add nuw nsw i64 %2605, %2606
  %2608 = icmp eq i64 %2607, 2
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %17, align 1
  %2610 = load i64, i64* %RBP.i, align 8
  %2611 = add i64 %2610, -28
  %2612 = add i64 %2553, 29
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = sext i32 %2614 to i64
  store i64 %2615, i64* %RCX.i2784, align 8
  %2616 = shl nsw i64 %2615, 2
  %2617 = add i64 %2616, %2584
  %2618 = add i64 %2553, 32
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RDI.i1875, align 8
  br i1 %2552, label %block_406812, label %block_.L_406893

block_406812:                                     ; preds = %block_.L_406808
  %2622 = add i64 %2553, -22546
  %2623 = add i64 %2553, 37
  %2624 = load i64, i64* %6, align 8
  %2625 = add i64 %2624, -8
  %2626 = inttoptr i64 %2625 to i64*
  store i64 %2623, i64* %2626, align 8
  store i64 %2625, i64* %6, align 8
  store i64 %2622, i64* %3, align 8
  %2627 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.7)
  %2628 = load i64, i64* %3, align 8
  store i64 7405600, i64* %RCX.i2784, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RDX.i2756, align 8
  %2629 = load i64, i64* %RBP.i, align 8
  %2630 = add i64 %2629, -108
  %2631 = add i64 %2628, 24
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = sext i32 %2633 to i64
  %2635 = shl nsw i64 %2634, 6
  store i64 %2635, i64* %RSI.i2748, align 8
  %2636 = add i64 %2635, ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64)
  store i64 %2636, i64* %RDX.i2756, align 8
  %2637 = icmp ult i64 %2636, ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64)
  %2638 = icmp ult i64 %2636, %2635
  %2639 = or i1 %2637, %2638
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %12, align 1
  %2641 = trunc i64 %2636 to i32
  %2642 = and i32 %2641, 248
  %2643 = tail call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  store i8 %2646, i8* %13, align 1
  %2647 = xor i64 %2636, ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64)
  %2648 = lshr i64 %2647, 4
  %2649 = trunc i64 %2648 to i8
  %2650 = and i8 %2649, 1
  store i8 %2650, i8* %14, align 1
  %2651 = icmp eq i64 %2636, 0
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %15, align 1
  %2653 = lshr i64 %2636, 63
  %2654 = trunc i64 %2653 to i8
  store i8 %2654, i8* %16, align 1
  %2655 = lshr i64 %2634, 57
  %2656 = and i64 %2655, 1
  %2657 = xor i64 %2653, lshr (i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64 63)
  %2658 = xor i64 %2653, %2656
  %2659 = add nuw nsw i64 %2657, %2658
  %2660 = icmp eq i64 %2659, 2
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %17, align 1
  %2662 = add i64 %2629, -24
  %2663 = add i64 %2628, 35
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = sext i32 %2665 to i64
  %2667 = shl nsw i64 %2666, 4
  store i64 %2667, i64* %RSI.i2748, align 8
  %2668 = add i64 %2667, %2636
  store i64 %2668, i64* %RDX.i2756, align 8
  %2669 = icmp ult i64 %2668, %2636
  %2670 = icmp ult i64 %2668, %2667
  %2671 = or i1 %2669, %2670
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %12, align 1
  %2673 = trunc i64 %2668 to i32
  %2674 = and i32 %2673, 248
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %13, align 1
  %2679 = xor i64 %2667, %2636
  %2680 = xor i64 %2679, %2668
  %2681 = lshr i64 %2680, 4
  %2682 = trunc i64 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %14, align 1
  %2684 = icmp eq i64 %2668, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %15, align 1
  %2686 = lshr i64 %2668, 63
  %2687 = trunc i64 %2686 to i8
  store i8 %2687, i8* %16, align 1
  %2688 = lshr i64 %2666, 59
  %2689 = and i64 %2688, 1
  %2690 = xor i64 %2686, %2653
  %2691 = xor i64 %2686, %2689
  %2692 = add nuw nsw i64 %2690, %2691
  %2693 = icmp eq i64 %2692, 2
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %17, align 1
  %2695 = load i64, i64* %RBP.i, align 8
  %2696 = add i64 %2695, -28
  %2697 = add i64 %2628, 46
  store i64 %2697, i64* %3, align 8
  %2698 = inttoptr i64 %2696 to i32*
  %2699 = load i32, i32* %2698, align 4
  %2700 = sext i32 %2699 to i64
  store i64 %2700, i64* %RSI.i2748, align 8
  %2701 = load i64, i64* %RAX.i1983, align 8
  %2702 = shl nsw i64 %2700, 2
  %2703 = add i64 %2668, %2702
  %2704 = add i64 %2628, 50
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = shl i64 %2701, 32
  %2708 = ashr exact i64 %2707, 32
  %2709 = sext i32 %2706 to i64
  %2710 = mul nsw i64 %2709, %2708
  %2711 = trunc i64 %2710 to i32
  %2712 = and i64 %2710, 4294967295
  store i64 %2712, i64* %RAX.i1983, align 8
  %2713 = shl i64 %2710, 32
  %2714 = ashr exact i64 %2713, 32
  %2715 = icmp ne i64 %2714, %2710
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %12, align 1
  %2717 = and i32 %2711, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %2722 = lshr i32 %2711, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %16, align 1
  store i8 %2716, i8* %17, align 1
  %2724 = add i64 %2695, -104
  %2725 = add i64 %2628, 54
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = sext i32 %2727 to i64
  %2729 = shl nsw i64 %2728, 6
  store i64 %2729, i64* %RDX.i2756, align 8
  %2730 = load i64, i64* %RCX.i2784, align 8
  %2731 = add i64 %2729, %2730
  store i64 %2731, i64* %RCX.i2784, align 8
  %2732 = icmp ult i64 %2731, %2730
  %2733 = icmp ult i64 %2731, %2729
  %2734 = or i1 %2732, %2733
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %12, align 1
  %2736 = trunc i64 %2731 to i32
  %2737 = and i32 %2736, 255
  %2738 = tail call i32 @llvm.ctpop.i32(i32 %2737)
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  store i8 %2741, i8* %13, align 1
  %2742 = xor i64 %2730, %2731
  %2743 = lshr i64 %2742, 4
  %2744 = trunc i64 %2743 to i8
  %2745 = and i8 %2744, 1
  store i8 %2745, i8* %14, align 1
  %2746 = icmp eq i64 %2731, 0
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %15, align 1
  %2748 = lshr i64 %2731, 63
  %2749 = trunc i64 %2748 to i8
  store i8 %2749, i8* %16, align 1
  %2750 = lshr i64 %2730, 63
  %2751 = lshr i64 %2728, 57
  %2752 = and i64 %2751, 1
  %2753 = xor i64 %2748, %2750
  %2754 = xor i64 %2748, %2752
  %2755 = add nuw nsw i64 %2753, %2754
  %2756 = icmp eq i64 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %17, align 1
  %2758 = load i64, i64* %RBP.i, align 8
  %2759 = add i64 %2758, -24
  %2760 = add i64 %2628, 65
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = sext i32 %2762 to i64
  %2764 = shl nsw i64 %2763, 4
  store i64 %2764, i64* %RDX.i2756, align 8
  %2765 = add i64 %2764, %2731
  store i64 %2765, i64* %RCX.i2784, align 8
  %2766 = icmp ult i64 %2765, %2731
  %2767 = icmp ult i64 %2765, %2764
  %2768 = or i1 %2766, %2767
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %12, align 1
  %2770 = trunc i64 %2765 to i32
  %2771 = and i32 %2770, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %13, align 1
  %2776 = xor i64 %2764, %2731
  %2777 = xor i64 %2776, %2765
  %2778 = lshr i64 %2777, 4
  %2779 = trunc i64 %2778 to i8
  %2780 = and i8 %2779, 1
  store i8 %2780, i8* %14, align 1
  %2781 = icmp eq i64 %2765, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %15, align 1
  %2783 = lshr i64 %2765, 63
  %2784 = trunc i64 %2783 to i8
  store i8 %2784, i8* %16, align 1
  %2785 = lshr i64 %2763, 59
  %2786 = and i64 %2785, 1
  %2787 = xor i64 %2783, %2748
  %2788 = xor i64 %2783, %2786
  %2789 = add nuw nsw i64 %2787, %2788
  %2790 = icmp eq i64 %2789, 2
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %17, align 1
  %2792 = add i64 %2758, -28
  %2793 = add i64 %2628, 76
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i32*
  %2795 = load i32, i32* %2794, align 4
  %2796 = sext i32 %2795 to i64
  store i64 %2796, i64* %RDX.i2756, align 8
  %2797 = load i64, i64* %RAX.i1983, align 8
  %2798 = shl nsw i64 %2796, 2
  %2799 = add i64 %2765, %2798
  %2800 = add i64 %2628, 79
  store i64 %2800, i64* %3, align 8
  %2801 = trunc i64 %2797 to i32
  %2802 = inttoptr i64 %2799 to i32*
  %2803 = load i32, i32* %2802, align 4
  %2804 = add i32 %2803, %2801
  %2805 = zext i32 %2804 to i64
  store i64 %2805, i64* %RAX.i1983, align 8
  %2806 = icmp ult i32 %2804, %2801
  %2807 = icmp ult i32 %2804, %2803
  %2808 = or i1 %2806, %2807
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %12, align 1
  %2810 = and i32 %2804, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %13, align 1
  %2815 = xor i32 %2803, %2801
  %2816 = xor i32 %2815, %2804
  %2817 = lshr i32 %2816, 4
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %14, align 1
  %2820 = icmp eq i32 %2804, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %15, align 1
  %2822 = lshr i32 %2804, 31
  %2823 = trunc i32 %2822 to i8
  store i8 %2823, i8* %16, align 1
  %2824 = lshr i32 %2801, 31
  %2825 = lshr i32 %2803, 31
  %2826 = xor i32 %2822, %2824
  %2827 = xor i32 %2822, %2825
  %2828 = add nuw nsw i32 %2826, %2827
  %2829 = icmp eq i32 %2828, 2
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %17, align 1
  %2831 = load i64, i64* %RBP.i, align 8
  %2832 = add i64 %2831, -112
  %2833 = add i64 %2628, 82
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RCX.i2784, align 8
  %2837 = add i64 %2628, 84
  store i64 %2837, i64* %3, align 8
  %2838 = trunc i32 %2835 to i5
  switch i5 %2838, label %2842 [
    i5 0, label %routine_sarl__cl___eax.exit1898
    i5 1, label %2839
  ]

; <label>:2839:                                   ; preds = %block_406812
  %2840 = shl nuw i64 %2805, 32
  %2841 = ashr i64 %2840, 33
  br label %2849

; <label>:2842:                                   ; preds = %block_406812
  %2843 = and i32 %2835, 31
  %2844 = zext i32 %2843 to i64
  %2845 = add nsw i64 %2844, -1
  %2846 = sext i32 %2804 to i64
  %2847 = ashr i64 %2846, %2845
  %2848 = lshr i64 %2847, 1
  br label %2849

; <label>:2849:                                   ; preds = %2842, %2839
  %2850 = phi i64 [ %2848, %2842 ], [ %2841, %2839 ]
  %2851 = phi i64 [ %2847, %2842 ], [ %2805, %2839 ]
  %2852 = trunc i64 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = trunc i64 %2850 to i32
  %2855 = and i64 %2850, 4294967295
  store i64 %2855, i64* %RAX.i1983, align 8
  store i8 %2853, i8* %12, align 1
  %2856 = and i32 %2854, 255
  %2857 = tail call i32 @llvm.ctpop.i32(i32 %2856)
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = xor i8 %2859, 1
  store i8 %2860, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2861 = icmp eq i32 %2854, 0
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %15, align 1
  %2863 = lshr i32 %2854, 31
  %2864 = trunc i32 %2863 to i8
  store i8 %2864, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2865 = trunc i64 %2850 to i32
  br label %routine_sarl__cl___eax.exit1898

routine_sarl__cl___eax.exit1898:                  ; preds = %2849, %block_406812
  %2866 = phi i32 [ %2865, %2849 ], [ %2804, %block_406812 ]
  %2867 = add i64 %2831, -88
  %2868 = add i64 %2628, 87
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  store i32 %2866, i32* %2869, align 4
  %2870 = load i64, i64* %3, align 8
  %2871 = add i64 %2870, 129
  store i64 %2871, i64* %3, align 8
  br label %block_.L_40690f

block_.L_406893:                                  ; preds = %block_.L_406808
  %2872 = add i64 %2553, -22675
  %2873 = add i64 %2553, 37
  %2874 = load i64, i64* %6, align 8
  %2875 = add i64 %2874, -8
  %2876 = inttoptr i64 %2875 to i64*
  store i64 %2873, i64* %2876, align 8
  store i64 %2875, i64* %6, align 8
  store i64 %2872, i64* %3, align 8
  %2877 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.7)
  %2878 = load i64, i64* %3, align 8
  store i64 7131024, i64* %RCX.i2784, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RDX.i2756, align 8
  %2879 = load i64, i64* %RBP.i, align 8
  %2880 = add i64 %2879, -108
  %2881 = add i64 %2878, 24
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i32*
  %2883 = load i32, i32* %2882, align 4
  %2884 = sext i32 %2883 to i64
  %2885 = shl nsw i64 %2884, 6
  store i64 %2885, i64* %RSI.i2748, align 8
  %2886 = add i64 %2885, ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64)
  store i64 %2886, i64* %RDX.i2756, align 8
  %2887 = icmp ult i64 %2886, ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64)
  %2888 = icmp ult i64 %2886, %2885
  %2889 = or i1 %2887, %2888
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %12, align 1
  %2891 = trunc i64 %2886 to i32
  %2892 = and i32 %2891, 248
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %13, align 1
  %2897 = xor i64 %2886, ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64)
  %2898 = lshr i64 %2897, 4
  %2899 = trunc i64 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %14, align 1
  %2901 = icmp eq i64 %2886, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %15, align 1
  %2903 = lshr i64 %2886, 63
  %2904 = trunc i64 %2903 to i8
  store i8 %2904, i8* %16, align 1
  %2905 = lshr i64 %2884, 57
  %2906 = and i64 %2905, 1
  %2907 = xor i64 %2903, lshr (i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64 63)
  %2908 = xor i64 %2903, %2906
  %2909 = add nuw nsw i64 %2907, %2908
  %2910 = icmp eq i64 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %17, align 1
  %2912 = add i64 %2879, -24
  %2913 = add i64 %2878, 35
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = sext i32 %2915 to i64
  %2917 = shl nsw i64 %2916, 4
  store i64 %2917, i64* %RSI.i2748, align 8
  %2918 = add i64 %2917, %2886
  store i64 %2918, i64* %RDX.i2756, align 8
  %2919 = icmp ult i64 %2918, %2886
  %2920 = icmp ult i64 %2918, %2917
  %2921 = or i1 %2919, %2920
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %12, align 1
  %2923 = trunc i64 %2918 to i32
  %2924 = and i32 %2923, 248
  %2925 = tail call i32 @llvm.ctpop.i32(i32 %2924)
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  store i8 %2928, i8* %13, align 1
  %2929 = xor i64 %2917, %2886
  %2930 = xor i64 %2929, %2918
  %2931 = lshr i64 %2930, 4
  %2932 = trunc i64 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %14, align 1
  %2934 = icmp eq i64 %2918, 0
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %15, align 1
  %2936 = lshr i64 %2918, 63
  %2937 = trunc i64 %2936 to i8
  store i8 %2937, i8* %16, align 1
  %2938 = lshr i64 %2916, 59
  %2939 = and i64 %2938, 1
  %2940 = xor i64 %2936, %2903
  %2941 = xor i64 %2936, %2939
  %2942 = add nuw nsw i64 %2940, %2941
  %2943 = icmp eq i64 %2942, 2
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %17, align 1
  %2945 = load i64, i64* %RBP.i, align 8
  %2946 = add i64 %2945, -28
  %2947 = add i64 %2878, 46
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2946 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = sext i32 %2949 to i64
  store i64 %2950, i64* %RSI.i2748, align 8
  %2951 = load i64, i64* %RAX.i1983, align 8
  %2952 = shl nsw i64 %2950, 2
  %2953 = add i64 %2918, %2952
  %2954 = add i64 %2878, 50
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i32*
  %2956 = load i32, i32* %2955, align 4
  %2957 = shl i64 %2951, 32
  %2958 = ashr exact i64 %2957, 32
  %2959 = sext i32 %2956 to i64
  %2960 = mul nsw i64 %2959, %2958
  %2961 = trunc i64 %2960 to i32
  %2962 = and i64 %2960, 4294967295
  store i64 %2962, i64* %RAX.i1983, align 8
  %2963 = shl i64 %2960, 32
  %2964 = ashr exact i64 %2963, 32
  %2965 = icmp ne i64 %2964, %2960
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %12, align 1
  %2967 = and i32 %2961, 255
  %2968 = tail call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  store i8 %2971, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %2972 = lshr i32 %2961, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %16, align 1
  store i8 %2966, i8* %17, align 1
  %2974 = add i64 %2945, -104
  %2975 = add i64 %2878, 54
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  %2977 = load i32, i32* %2976, align 4
  %2978 = sext i32 %2977 to i64
  %2979 = shl nsw i64 %2978, 6
  store i64 %2979, i64* %RDX.i2756, align 8
  %2980 = load i64, i64* %RCX.i2784, align 8
  %2981 = add i64 %2979, %2980
  store i64 %2981, i64* %RCX.i2784, align 8
  %2982 = icmp ult i64 %2981, %2980
  %2983 = icmp ult i64 %2981, %2979
  %2984 = or i1 %2982, %2983
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %12, align 1
  %2986 = trunc i64 %2981 to i32
  %2987 = and i32 %2986, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %13, align 1
  %2992 = xor i64 %2980, %2981
  %2993 = lshr i64 %2992, 4
  %2994 = trunc i64 %2993 to i8
  %2995 = and i8 %2994, 1
  store i8 %2995, i8* %14, align 1
  %2996 = icmp eq i64 %2981, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %15, align 1
  %2998 = lshr i64 %2981, 63
  %2999 = trunc i64 %2998 to i8
  store i8 %2999, i8* %16, align 1
  %3000 = lshr i64 %2980, 63
  %3001 = lshr i64 %2978, 57
  %3002 = and i64 %3001, 1
  %3003 = xor i64 %2998, %3000
  %3004 = xor i64 %2998, %3002
  %3005 = add nuw nsw i64 %3003, %3004
  %3006 = icmp eq i64 %3005, 2
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %17, align 1
  %3008 = load i64, i64* %RBP.i, align 8
  %3009 = add i64 %3008, -24
  %3010 = add i64 %2878, 65
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = sext i32 %3012 to i64
  %3014 = shl nsw i64 %3013, 4
  store i64 %3014, i64* %RDX.i2756, align 8
  %3015 = add i64 %3014, %2981
  store i64 %3015, i64* %RCX.i2784, align 8
  %3016 = icmp ult i64 %3015, %2981
  %3017 = icmp ult i64 %3015, %3014
  %3018 = or i1 %3016, %3017
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %12, align 1
  %3020 = trunc i64 %3015 to i32
  %3021 = and i32 %3020, 255
  %3022 = tail call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  store i8 %3025, i8* %13, align 1
  %3026 = xor i64 %3014, %2981
  %3027 = xor i64 %3026, %3015
  %3028 = lshr i64 %3027, 4
  %3029 = trunc i64 %3028 to i8
  %3030 = and i8 %3029, 1
  store i8 %3030, i8* %14, align 1
  %3031 = icmp eq i64 %3015, 0
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %15, align 1
  %3033 = lshr i64 %3015, 63
  %3034 = trunc i64 %3033 to i8
  store i8 %3034, i8* %16, align 1
  %3035 = lshr i64 %3013, 59
  %3036 = and i64 %3035, 1
  %3037 = xor i64 %3033, %2998
  %3038 = xor i64 %3033, %3036
  %3039 = add nuw nsw i64 %3037, %3038
  %3040 = icmp eq i64 %3039, 2
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %17, align 1
  %3042 = add i64 %3008, -28
  %3043 = add i64 %2878, 76
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = sext i32 %3045 to i64
  store i64 %3046, i64* %RDX.i2756, align 8
  %3047 = load i64, i64* %RAX.i1983, align 8
  %3048 = shl nsw i64 %3046, 2
  %3049 = add i64 %3015, %3048
  %3050 = add i64 %2878, 79
  store i64 %3050, i64* %3, align 8
  %3051 = trunc i64 %3047 to i32
  %3052 = inttoptr i64 %3049 to i32*
  %3053 = load i32, i32* %3052, align 4
  %3054 = add i32 %3053, %3051
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RAX.i1983, align 8
  %3056 = icmp ult i32 %3054, %3051
  %3057 = icmp ult i32 %3054, %3053
  %3058 = or i1 %3056, %3057
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %12, align 1
  %3060 = and i32 %3054, 255
  %3061 = tail call i32 @llvm.ctpop.i32(i32 %3060)
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = xor i8 %3063, 1
  store i8 %3064, i8* %13, align 1
  %3065 = xor i32 %3053, %3051
  %3066 = xor i32 %3065, %3054
  %3067 = lshr i32 %3066, 4
  %3068 = trunc i32 %3067 to i8
  %3069 = and i8 %3068, 1
  store i8 %3069, i8* %14, align 1
  %3070 = icmp eq i32 %3054, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %15, align 1
  %3072 = lshr i32 %3054, 31
  %3073 = trunc i32 %3072 to i8
  store i8 %3073, i8* %16, align 1
  %3074 = lshr i32 %3051, 31
  %3075 = lshr i32 %3053, 31
  %3076 = xor i32 %3072, %3074
  %3077 = xor i32 %3072, %3075
  %3078 = add nuw nsw i32 %3076, %3077
  %3079 = icmp eq i32 %3078, 2
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %17, align 1
  %3081 = load i64, i64* %RBP.i, align 8
  %3082 = add i64 %3081, -112
  %3083 = add i64 %2878, 82
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i32*
  %3085 = load i32, i32* %3084, align 4
  %3086 = zext i32 %3085 to i64
  store i64 %3086, i64* %RCX.i2784, align 8
  %3087 = add i64 %2878, 84
  store i64 %3087, i64* %3, align 8
  %3088 = trunc i32 %3085 to i5
  switch i5 %3088, label %3092 [
    i5 0, label %routine_sarl__cl___eax.exit
    i5 1, label %3089
  ]

; <label>:3089:                                   ; preds = %block_.L_406893
  %3090 = shl nuw i64 %3055, 32
  %3091 = ashr i64 %3090, 33
  br label %3099

; <label>:3092:                                   ; preds = %block_.L_406893
  %3093 = and i32 %3085, 31
  %3094 = zext i32 %3093 to i64
  %3095 = add nsw i64 %3094, -1
  %3096 = sext i32 %3054 to i64
  %3097 = ashr i64 %3096, %3095
  %3098 = lshr i64 %3097, 1
  br label %3099

; <label>:3099:                                   ; preds = %3092, %3089
  %3100 = phi i64 [ %3098, %3092 ], [ %3091, %3089 ]
  %3101 = phi i64 [ %3097, %3092 ], [ %3055, %3089 ]
  %3102 = trunc i64 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = trunc i64 %3100 to i32
  %3105 = and i64 %3100, 4294967295
  store i64 %3105, i64* %RAX.i1983, align 8
  store i8 %3103, i8* %12, align 1
  %3106 = and i32 %3104, 255
  %3107 = tail call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  store i8 %3110, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3111 = icmp eq i32 %3104, 0
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %15, align 1
  %3113 = lshr i32 %3104, 31
  %3114 = trunc i32 %3113 to i8
  store i8 %3114, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3115 = trunc i64 %3100 to i32
  br label %routine_sarl__cl___eax.exit

routine_sarl__cl___eax.exit:                      ; preds = %3099, %block_.L_406893
  %3116 = phi i32 [ %3115, %3099 ], [ %3054, %block_.L_406893 ]
  %3117 = add i64 %3081, -88
  %3118 = add i64 %2878, 87
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  store i32 %3116, i32* %3119, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_40690f

block_.L_40690f:                                  ; preds = %routine_sarl__cl___eax.exit, %routine_sarl__cl___eax.exit1898
  %3120 = phi i64 [ %.pre172, %routine_sarl__cl___eax.exit ], [ %2871, %routine_sarl__cl___eax.exit1898 ]
  %MEMORY.11 = phi %struct.Memory* [ %2877, %routine_sarl__cl___eax.exit ], [ %2627, %routine_sarl__cl___eax.exit1898 ]
  %3121 = add i64 %3120, 5
  store i64 %3121, i64* %3, align 8
  br label %block_.L_406914

block_.L_406914:                                  ; preds = %block_.L_40690f, %block_4067db
  %storemerge = phi i64 [ %2547, %block_4067db ], [ %3121, %block_.L_40690f ]
  %MEMORY.12 = phi %struct.Memory* [ %2539, %block_4067db ], [ %MEMORY.11, %block_.L_40690f ]
  %3122 = load i64, i64* %RBP.i, align 8
  %3123 = add i64 %3122, -88
  %3124 = add i64 %storemerge, 4
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i32*
  %3126 = load i32, i32* %3125, align 4
  store i8 0, i8* %12, align 1
  %3127 = and i32 %3126, 255
  %3128 = tail call i32 @llvm.ctpop.i32(i32 %3127)
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  store i8 %3131, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3132 = icmp eq i32 %3126, 0
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %15, align 1
  %3134 = lshr i32 %3126, 31
  %3135 = trunc i32 %3134 to i8
  store i8 %3135, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v203 = select i1 %3132, i64 638, i64 10
  %3136 = add i64 %storemerge, %.v203
  store i64 %3136, i64* %3, align 8
  br i1 %3132, label %block_.L_406b92, label %block_40691e

block_40691e:                                     ; preds = %block_.L_406914
  %3137 = add i64 %3122, -100
  %3138 = add i64 %3136, 7
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  store i32 1, i32* %3139, align 4
  %3140 = load i64, i64* %RBP.i, align 8
  %3141 = add i64 %3140, -88
  %3142 = load i64, i64* %3, align 8
  %3143 = add i64 %3142, 4
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3141 to i32*
  %3145 = load i32, i32* %3144, align 4
  %3146 = add i32 %3145, -1
  %3147 = icmp eq i32 %3145, 0
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %12, align 1
  %3149 = and i32 %3146, 255
  %3150 = tail call i32 @llvm.ctpop.i32(i32 %3149)
  %3151 = trunc i32 %3150 to i8
  %3152 = and i8 %3151, 1
  %3153 = xor i8 %3152, 1
  store i8 %3153, i8* %13, align 1
  %3154 = xor i32 %3146, %3145
  %3155 = lshr i32 %3154, 4
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  store i8 %3157, i8* %14, align 1
  %3158 = icmp eq i32 %3146, 0
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %15, align 1
  %3160 = lshr i32 %3146, 31
  %3161 = trunc i32 %3160 to i8
  store i8 %3161, i8* %16, align 1
  %3162 = lshr i32 %3145, 31
  %3163 = xor i32 %3160, %3162
  %3164 = add nuw nsw i32 %3163, %3162
  %3165 = icmp eq i32 %3164, 2
  %3166 = zext i1 %3165 to i8
  store i8 %3166, i8* %17, align 1
  %3167 = icmp ne i8 %3161, 0
  %3168 = xor i1 %3167, %3165
  %.demorgan = or i1 %3158, %3168
  %.v204 = select i1 %.demorgan, i64 10, i64 23
  %3169 = add i64 %3142, %.v204
  store i64 %3169, i64* %3, align 8
  br i1 %.demorgan, label %block_40692f, label %block_.L_40693c

block_40692f:                                     ; preds = %block_40691e
  %3170 = add i64 %3140, -156
  %3171 = add i64 %3169, 7
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i32*
  %3173 = load i32, i32* %3172, align 4
  store i8 0, i8* %12, align 1
  %3174 = and i32 %3173, 255
  %3175 = tail call i32 @llvm.ctpop.i32(i32 %3174)
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  %3178 = xor i8 %3177, 1
  store i8 %3178, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3179 = icmp eq i32 %3173, 0
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %15, align 1
  %3181 = lshr i32 %3173, 31
  %3182 = trunc i32 %3181 to i8
  store i8 %3182, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v208 = select i1 %3179, i64 32, i64 13
  %3183 = add i64 %3169, %.v208
  store i64 %3183, i64* %3, align 8
  br i1 %3179, label %block_.L_40694f, label %block_.L_40693c

block_.L_40693c:                                  ; preds = %block_40691e, %block_40692f
  %3184 = phi i64 [ %3183, %block_40692f ], [ %3169, %block_40691e ]
  %3185 = add i64 %3140, -16
  %3186 = add i64 %3184, 4
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i64*
  %3188 = load i64, i64* %3187, align 8
  store i64 %3188, i64* %RAX.i1983, align 8
  %3189 = add i64 %3184, 6
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = add i32 %3191, 999999
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RCX.i2784, align 8
  %3194 = icmp ugt i32 %3191, -1000000
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %12, align 1
  %3196 = and i32 %3192, 255
  %3197 = tail call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  store i8 %3200, i8* %13, align 1
  %3201 = xor i32 %3191, 16
  %3202 = xor i32 %3201, %3192
  %3203 = lshr i32 %3202, 4
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  store i8 %3205, i8* %14, align 1
  %3206 = icmp eq i32 %3192, 0
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %15, align 1
  %3208 = lshr i32 %3192, 31
  %3209 = trunc i32 %3208 to i8
  store i8 %3209, i8* %16, align 1
  %3210 = lshr i32 %3191, 31
  %3211 = xor i32 %3208, %3210
  %3212 = add nuw nsw i32 %3211, %3208
  %3213 = icmp eq i32 %3212, 2
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %17, align 1
  %3215 = add i64 %3184, 14
  store i64 %3215, i64* %3, align 8
  store i32 %3192, i32* %3190, align 4
  %3216 = load i64, i64* %3, align 8
  %3217 = add i64 %3216, 53
  store i64 %3217, i64* %3, align 8
  br label %block_.L_40697f

block_.L_40694f:                                  ; preds = %block_40692f
  store i64 ptrtoint (%G__0x4b23a0_type* @G__0x4b23a0 to i64), i64* %RAX.i1983, align 8
  %3218 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3218, i64* %RCX.i2784, align 8
  %3219 = add i64 %3218, 2468
  %3220 = add i64 %3183, 25
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = sext i32 %3222 to i64
  %3224 = shl nsw i64 %3223, 4
  store i64 %3224, i64* %RCX.i2784, align 8
  %3225 = add i64 %3224, ptrtoint (%G__0x4b23a0_type* @G__0x4b23a0 to i64)
  store i64 %3225, i64* %RAX.i1983, align 8
  %3226 = icmp ult i64 %3225, ptrtoint (%G__0x4b23a0_type* @G__0x4b23a0 to i64)
  %3227 = icmp ult i64 %3225, %3224
  %3228 = or i1 %3226, %3227
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %12, align 1
  %3230 = trunc i64 %3225 to i32
  %3231 = and i32 %3230, 248
  %3232 = tail call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  store i8 %3235, i8* %13, align 1
  %3236 = xor i64 %3224, ptrtoint (%G__0x4b23a0_type* @G__0x4b23a0 to i64)
  %3237 = xor i64 %3236, %3225
  %3238 = lshr i64 %3237, 4
  %3239 = trunc i64 %3238 to i8
  %3240 = and i8 %3239, 1
  store i8 %3240, i8* %14, align 1
  %3241 = icmp eq i64 %3225, 0
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %15, align 1
  %3243 = lshr i64 %3225, 63
  %3244 = trunc i64 %3243 to i8
  store i8 %3244, i8* %16, align 1
  %3245 = lshr i64 %3223, 59
  %3246 = and i64 %3245, 1
  %3247 = xor i64 %3243, lshr (i64 ptrtoint (%G__0x4b23a0_type* @G__0x4b23a0 to i64), i64 63)
  %3248 = xor i64 %3243, %3246
  %3249 = add nuw nsw i64 %3247, %3248
  %3250 = icmp eq i64 %3249, 2
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %17, align 1
  %3252 = add i64 %3140, -96
  %3253 = add i64 %3183, 36
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3252 to i32*
  %3255 = load i32, i32* %3254, align 4
  %3256 = sext i32 %3255 to i64
  store i64 %3256, i64* %RCX.i2784, align 8
  %3257 = add i64 %3225, %3256
  %3258 = add i64 %3183, 40
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i8*
  %3260 = load i8, i8* %3259, align 1
  %3261 = zext i8 %3260 to i64
  store i64 %3261, i64* %RDX.i2756, align 8
  %3262 = add i64 %3140, -16
  %3263 = add i64 %3183, 44
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i64*
  %3265 = load i64, i64* %3264, align 8
  store i64 %3265, i64* %RAX.i1983, align 8
  %3266 = add i64 %3183, 46
  store i64 %3266, i64* %3, align 8
  %3267 = zext i8 %3260 to i32
  %3268 = inttoptr i64 %3265 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = add i32 %3269, %3267
  %3271 = zext i32 %3270 to i64
  store i64 %3271, i64* %RDX.i2756, align 8
  %3272 = icmp ult i32 %3270, %3267
  %3273 = icmp ult i32 %3270, %3269
  %3274 = or i1 %3272, %3273
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %12, align 1
  %3276 = and i32 %3270, 255
  %3277 = tail call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  store i8 %3280, i8* %13, align 1
  %3281 = xor i32 %3269, %3267
  %3282 = xor i32 %3281, %3270
  %3283 = lshr i32 %3282, 4
  %3284 = trunc i32 %3283 to i8
  %3285 = and i8 %3284, 1
  store i8 %3285, i8* %14, align 1
  %3286 = icmp eq i32 %3270, 0
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %15, align 1
  %3288 = lshr i32 %3270, 31
  %3289 = trunc i32 %3288 to i8
  store i8 %3289, i8* %16, align 1
  %3290 = lshr i32 %3269, 31
  %3291 = xor i32 %3288, %3290
  %3292 = add nuw nsw i32 %3288, %3291
  %3293 = icmp eq i32 %3292, 2
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %17, align 1
  %3295 = add i64 %3183, 48
  store i64 %3295, i64* %3, align 8
  store i32 %3270, i32* %3268, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_40697f

block_.L_40697f:                                  ; preds = %block_.L_40694f, %block_.L_40693c
  %3296 = phi i64 [ %.pre173, %block_.L_40694f ], [ %3217, %block_.L_40693c ]
  %3297 = load i64, i64* %RBP.i, align 8
  %3298 = add i64 %3297, -88
  %3299 = add i64 %3296, 3
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3298 to i32*
  %3301 = load i32, i32* %3300, align 4
  %3302 = zext i32 %3301 to i64
  store i64 %3302, i64* %RDI.i1875, align 8
  %3303 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3304 = add i64 %3303, 13112
  store i64 %3304, i64* %RAX.i1983, align 8
  %3305 = icmp ugt i64 %3303, -13113
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %12, align 1
  %3307 = trunc i64 %3304 to i32
  %3308 = and i32 %3307, 255
  %3309 = tail call i32 @llvm.ctpop.i32(i32 %3308)
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = xor i8 %3311, 1
  store i8 %3312, i8* %13, align 1
  %3313 = xor i64 %3303, 16
  %3314 = xor i64 %3313, %3304
  %3315 = lshr i64 %3314, 4
  %3316 = trunc i64 %3315 to i8
  %3317 = and i8 %3316, 1
  store i8 %3317, i8* %14, align 1
  %3318 = icmp eq i64 %3304, 0
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %15, align 1
  %3320 = lshr i64 %3304, 63
  %3321 = trunc i64 %3320 to i8
  store i8 %3321, i8* %16, align 1
  %3322 = lshr i64 %3303, 63
  %3323 = xor i64 %3320, %3322
  %3324 = add nuw nsw i64 %3323, %3320
  %3325 = icmp eq i64 %3324, 2
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %17, align 1
  %3327 = add i64 %3297, -24
  %3328 = add i64 %3296, 21
  store i64 %3328, i64* %3, align 8
  %3329 = inttoptr i64 %3327 to i32*
  %3330 = load i32, i32* %3329, align 4
  %3331 = sext i32 %3330 to i64
  %3332 = shl nsw i64 %3331, 6
  store i64 %3332, i64* %RCX.i2784, align 8
  %3333 = add i64 %3332, %3304
  store i64 %3333, i64* %RAX.i1983, align 8
  %3334 = icmp ult i64 %3333, %3304
  %3335 = icmp ult i64 %3333, %3332
  %3336 = or i1 %3334, %3335
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %12, align 1
  %3338 = trunc i64 %3333 to i32
  %3339 = and i32 %3338, 255
  %3340 = tail call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  store i8 %3343, i8* %13, align 1
  %3344 = xor i64 %3304, %3333
  %3345 = lshr i64 %3344, 4
  %3346 = trunc i64 %3345 to i8
  %3347 = and i8 %3346, 1
  store i8 %3347, i8* %14, align 1
  %3348 = icmp eq i64 %3333, 0
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %15, align 1
  %3350 = lshr i64 %3333, 63
  %3351 = trunc i64 %3350 to i8
  store i8 %3351, i8* %16, align 1
  %3352 = lshr i64 %3331, 57
  %3353 = and i64 %3352, 1
  %3354 = xor i64 %3350, %3320
  %3355 = xor i64 %3350, %3353
  %3356 = add nuw nsw i64 %3354, %3355
  %3357 = icmp eq i64 %3356, 2
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %17, align 1
  %3359 = load i64, i64* %RBP.i, align 8
  %3360 = add i64 %3359, -28
  %3361 = add i64 %3296, 32
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = sext i32 %3363 to i64
  store i64 %3364, i64* %RCX.i2784, align 8
  %3365 = shl nsw i64 %3364, 2
  %3366 = add i64 %3365, %3333
  %3367 = add i64 %3296, 35
  store i64 %3367, i64* %3, align 8
  %3368 = inttoptr i64 %3366 to i32*
  %3369 = load i32, i32* %3368, align 4
  %3370 = zext i32 %3369 to i64
  store i64 %3370, i64* %RSI.i2748, align 8
  %3371 = add i64 %3296, 452561
  %3372 = add i64 %3296, 40
  %3373 = load i64, i64* %6, align 8
  %3374 = add i64 %3373, -8
  %3375 = inttoptr i64 %3374 to i64*
  store i64 %3372, i64* %3375, align 8
  store i64 %3374, i64* %6, align 8
  store i64 %3371, i64* %3, align 8
  %call2_4069a2 = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %3371, %struct.Memory* %MEMORY.12)
  %3376 = load i64, i64* %RBP.i, align 8
  %3377 = add i64 %3376, -136
  %3378 = load i64, i64* %3, align 8
  %3379 = add i64 %3378, 7
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3377 to i64*
  %3381 = load i64, i64* %3380, align 8
  store i64 %3381, i64* %RCX.i2784, align 8
  %3382 = add i64 %3376, -92
  %3383 = add i64 %3378, 11
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  %3385 = load i32, i32* %3384, align 4
  %3386 = sext i32 %3385 to i64
  store i64 %3386, i64* %RDX.i2756, align 8
  %3387 = shl nsw i64 %3386, 2
  %3388 = add i64 %3387, %3381
  %3389 = load i32, i32* %EAX.i1982, align 4
  %3390 = add i64 %3378, 14
  store i64 %3390, i64* %3, align 8
  %3391 = inttoptr i64 %3388 to i32*
  store i32 %3389, i32* %3391, align 4
  %3392 = load i64, i64* %RBP.i, align 8
  %3393 = add i64 %3392, -96
  %3394 = load i64, i64* %3, align 8
  %3395 = add i64 %3394, 3
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3393 to i32*
  %3397 = load i32, i32* %3396, align 4
  %3398 = zext i32 %3397 to i64
  store i64 %3398, i64* %RAX.i1983, align 8
  %3399 = add i64 %3392, -144
  %3400 = add i64 %3394, 10
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3399 to i64*
  %3402 = load i64, i64* %3401, align 8
  store i64 %3402, i64* %RCX.i2784, align 8
  %3403 = add i64 %3392, -92
  %3404 = add i64 %3394, 14
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  %3407 = sext i32 %3406 to i64
  store i64 %3407, i64* %RDX.i2756, align 8
  %3408 = shl nsw i64 %3407, 2
  %3409 = add i64 %3408, %3402
  %3410 = add i64 %3394, 17
  store i64 %3410, i64* %3, align 8
  %3411 = inttoptr i64 %3409 to i32*
  store i32 %3397, i32* %3411, align 4
  %3412 = load i64, i64* %RBP.i, align 8
  %3413 = add i64 %3412, -92
  %3414 = load i64, i64* %3, align 8
  %3415 = add i64 %3414, 3
  store i64 %3415, i64* %3, align 8
  %3416 = inttoptr i64 %3413 to i32*
  %3417 = load i32, i32* %3416, align 4
  %3418 = add i32 %3417, 1
  %3419 = zext i32 %3418 to i64
  store i64 %3419, i64* %RAX.i1983, align 8
  %3420 = icmp eq i32 %3417, -1
  %3421 = icmp eq i32 %3418, 0
  %3422 = or i1 %3420, %3421
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %12, align 1
  %3424 = and i32 %3418, 255
  %3425 = tail call i32 @llvm.ctpop.i32(i32 %3424)
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = xor i8 %3427, 1
  store i8 %3428, i8* %13, align 1
  %3429 = xor i32 %3418, %3417
  %3430 = lshr i32 %3429, 4
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  store i8 %3432, i8* %14, align 1
  %3433 = zext i1 %3421 to i8
  store i8 %3433, i8* %15, align 1
  %3434 = lshr i32 %3418, 31
  %3435 = trunc i32 %3434 to i8
  store i8 %3435, i8* %16, align 1
  %3436 = lshr i32 %3417, 31
  %3437 = xor i32 %3434, %3436
  %3438 = add nuw nsw i32 %3437, %3434
  %3439 = icmp eq i32 %3438, 2
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %17, align 1
  %3441 = add i64 %3414, 9
  store i64 %3441, i64* %3, align 8
  store i32 %3418, i32* %3416, align 4
  %3442 = load i64, i64* %RBP.i, align 8
  %3443 = add i64 %3442, -96
  %3444 = load i64, i64* %3, align 8
  %3445 = add i64 %3444, 7
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3443 to i32*
  store i32 -1, i32* %3446, align 4
  %3447 = load i64, i64* %RBP.i, align 8
  %3448 = add i64 %3447, -88
  %3449 = load i64, i64* %3, align 8
  %3450 = add i64 %3449, 3
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3448 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %RDI.i1875, align 8
  %3454 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3455 = add i64 %3454, 13112
  store i64 %3455, i64* %RCX.i2784, align 8
  %3456 = icmp ugt i64 %3454, -13113
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %12, align 1
  %3458 = trunc i64 %3455 to i32
  %3459 = and i32 %3458, 255
  %3460 = tail call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  store i8 %3463, i8* %13, align 1
  %3464 = xor i64 %3454, 16
  %3465 = xor i64 %3464, %3455
  %3466 = lshr i64 %3465, 4
  %3467 = trunc i64 %3466 to i8
  %3468 = and i8 %3467, 1
  store i8 %3468, i8* %14, align 1
  %3469 = icmp eq i64 %3455, 0
  %3470 = zext i1 %3469 to i8
  store i8 %3470, i8* %15, align 1
  %3471 = lshr i64 %3455, 63
  %3472 = trunc i64 %3471 to i8
  store i8 %3472, i8* %16, align 1
  %3473 = lshr i64 %3454, 63
  %3474 = xor i64 %3471, %3473
  %3475 = add nuw nsw i64 %3474, %3471
  %3476 = icmp eq i64 %3475, 2
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %17, align 1
  %3478 = add i64 %3447, -24
  %3479 = add i64 %3449, 22
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = sext i32 %3481 to i64
  %3483 = shl nsw i64 %3482, 6
  store i64 %3483, i64* %RDX.i2756, align 8
  %3484 = add i64 %3483, %3455
  store i64 %3484, i64* %RCX.i2784, align 8
  %3485 = icmp ult i64 %3484, %3455
  %3486 = icmp ult i64 %3484, %3483
  %3487 = or i1 %3485, %3486
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %12, align 1
  %3489 = trunc i64 %3484 to i32
  %3490 = and i32 %3489, 255
  %3491 = tail call i32 @llvm.ctpop.i32(i32 %3490)
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  %3494 = xor i8 %3493, 1
  store i8 %3494, i8* %13, align 1
  %3495 = xor i64 %3455, %3484
  %3496 = lshr i64 %3495, 4
  %3497 = trunc i64 %3496 to i8
  %3498 = and i8 %3497, 1
  store i8 %3498, i8* %14, align 1
  %3499 = icmp eq i64 %3484, 0
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %15, align 1
  %3501 = lshr i64 %3484, 63
  %3502 = trunc i64 %3501 to i8
  store i8 %3502, i8* %16, align 1
  %3503 = lshr i64 %3482, 57
  %3504 = and i64 %3503, 1
  %3505 = xor i64 %3501, %3471
  %3506 = xor i64 %3501, %3504
  %3507 = add nuw nsw i64 %3505, %3506
  %3508 = icmp eq i64 %3507, 2
  %3509 = zext i1 %3508 to i8
  store i8 %3509, i8* %17, align 1
  %3510 = load i64, i64* %RBP.i, align 8
  %3511 = add i64 %3510, -28
  %3512 = add i64 %3449, 33
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = sext i32 %3514 to i64
  store i64 %3515, i64* %RDX.i2756, align 8
  %3516 = shl nsw i64 %3515, 2
  %3517 = add i64 %3516, %3484
  %3518 = add i64 %3449, 36
  store i64 %3518, i64* %3, align 8
  %3519 = inttoptr i64 %3517 to i32*
  %3520 = load i32, i32* %3519, align 4
  %3521 = zext i32 %3520 to i64
  store i64 %3521, i64* %RSI.i2748, align 8
  %3522 = add i64 %3449, 452474
  %3523 = add i64 %3449, 41
  %3524 = load i64, i64* %6, align 8
  %3525 = add i64 %3524, -8
  %3526 = inttoptr i64 %3525 to i64*
  store i64 %3523, i64* %3526, align 8
  store i64 %3525, i64* %6, align 8
  store i64 %3522, i64* %3, align 8
  %call2_4069fa = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %3522, %struct.Memory* %call2_4069a2)
  %3527 = load i64, i64* %RBP.i, align 8
  %3528 = add i64 %3527, -88
  %3529 = load i32, i32* %EAX.i1982, align 4
  %3530 = load i64, i64* %3, align 8
  %3531 = add i64 %3530, 3
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3528 to i32*
  store i32 %3529, i32* %3532, align 4
  %3533 = load i64, i64* %RBP.i, align 8
  %3534 = add i64 %3533, -156
  %3535 = load i64, i64* %3, align 8
  %3536 = add i64 %3535, 7
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3534 to i32*
  %3538 = load i32, i32* %3537, align 4
  store i8 0, i8* %12, align 1
  %3539 = and i32 %3538, 255
  %3540 = tail call i32 @llvm.ctpop.i32(i32 %3539)
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = xor i8 %3542, 1
  store i8 %3543, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3544 = icmp eq i32 %3538, 0
  %3545 = zext i1 %3544 to i8
  store i8 %3545, i8* %15, align 1
  %3546 = lshr i32 %3538, 31
  %3547 = trunc i32 %3546 to i8
  store i8 %3547, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v187 = select i1 %3544, i64 24, i64 13
  %3548 = add i64 %3535, %.v187
  store i64 %3548, i64* %3, align 8
  br i1 %3544, label %block_.L_406a1a, label %block_406a0f

block_406a0f:                                     ; preds = %block_.L_40697f
  %3549 = add i64 %3533, -88
  %3550 = add i64 %3548, 3
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = zext i32 %3552 to i64
  store i64 %3553, i64* %RAX.i1983, align 8
  %3554 = add i64 %3533, -40
  %3555 = add i64 %3548, 6
  store i64 %3555, i64* %3, align 8
  %3556 = inttoptr i64 %3554 to i32*
  store i32 %3552, i32* %3556, align 4
  %3557 = load i64, i64* %3, align 8
  %3558 = add i64 %3557, 376
  br label %block_.L_406b8d

block_.L_406a1a:                                  ; preds = %block_.L_40697f
  %3559 = add i64 %3533, -104
  %3560 = add i64 %3548, 4
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3559 to i32*
  %3562 = load i32, i32* %3561, align 4
  %3563 = add i32 %3562, -4
  %3564 = icmp ult i32 %3562, 4
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %12, align 1
  %3566 = and i32 %3563, 255
  %3567 = tail call i32 @llvm.ctpop.i32(i32 %3566)
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  store i8 %3570, i8* %13, align 1
  %3571 = xor i32 %3563, %3562
  %3572 = lshr i32 %3571, 4
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  store i8 %3574, i8* %14, align 1
  %3575 = icmp eq i32 %3563, 0
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %15, align 1
  %3577 = lshr i32 %3563, 31
  %3578 = trunc i32 %3577 to i8
  store i8 %3578, i8* %16, align 1
  %3579 = lshr i32 %3562, 31
  %3580 = xor i32 %3577, %3579
  %3581 = add nuw nsw i32 %3580, %3579
  %3582 = icmp eq i32 %3581, 2
  %3583 = zext i1 %3582 to i8
  store i8 %3583, i8* %17, align 1
  %3584 = icmp ne i8 %3578, 0
  %3585 = xor i1 %3584, %3582
  %.v186 = select i1 %3585, i64 10, i64 210
  %3586 = add i64 %3548, %.v186
  %3587 = add i64 %3533, -20
  %3588 = add i64 %3586, 4
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = add i32 %3590, -1
  %3592 = icmp eq i32 %3590, 0
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %12, align 1
  %3594 = and i32 %3591, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %13, align 1
  %3599 = xor i32 %3591, %3590
  %3600 = lshr i32 %3599, 4
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  store i8 %3602, i8* %14, align 1
  %3603 = icmp eq i32 %3591, 0
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %15, align 1
  %3605 = lshr i32 %3591, 31
  %3606 = trunc i32 %3605 to i8
  store i8 %3606, i8* %16, align 1
  %3607 = lshr i32 %3590, 31
  %3608 = xor i32 %3605, %3607
  %3609 = add nuw nsw i32 %3608, %3607
  %3610 = icmp eq i32 %3609, 2
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %17, align 1
  br i1 %3585, label %block_406a24, label %block_.L_406aec

block_406a24:                                     ; preds = %block_.L_406a1a
  %.v207 = select i1 %3603, i64 10, i64 105
  %3612 = add i64 %3586, %.v207
  store i64 4, i64* %RAX.i1983, align 8
  store i64 1, i64* %RCX.i2784, align 8
  store i64 3, i64* %RDX.i2756, align 8
  %3613 = add i64 %3612, 25
  store i64 %3613, i64* %3, align 8
  br i1 %3603, label %block_406a2e, label %block_.L_406a8d

block_406a2e:                                     ; preds = %block_406a24
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RSI.i2748, align 8
  %3614 = add i64 %3533, -88
  %3615 = add i64 %3612, 28
  store i64 %3615, i64* %3, align 8
  %3616 = inttoptr i64 %3614 to i32*
  %3617 = load i32, i32* %3616, align 4
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RDI.i1875, align 8
  %3619 = add i64 %3533, -108
  %3620 = add i64 %3612, 32
  store i64 %3620, i64* %3, align 8
  %3621 = inttoptr i64 %3619 to i32*
  %3622 = load i32, i32* %3621, align 4
  %3623 = sext i32 %3622 to i64
  %3624 = shl nsw i64 %3623, 6
  store i64 %3624, i64* %R8.i1581, align 8
  %3625 = add i64 %3624, ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64)
  store i64 %3625, i64* %RSI.i2748, align 8
  %3626 = icmp ult i64 %3625, ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64)
  %3627 = icmp ult i64 %3625, %3624
  %3628 = or i1 %3626, %3627
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %12, align 1
  %3630 = trunc i64 %3625 to i32
  %3631 = and i32 %3630, 248
  %3632 = tail call i32 @llvm.ctpop.i32(i32 %3631)
  %3633 = trunc i32 %3632 to i8
  %3634 = and i8 %3633, 1
  %3635 = xor i8 %3634, 1
  store i8 %3635, i8* %13, align 1
  %3636 = xor i64 %3625, ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64)
  %3637 = lshr i64 %3636, 4
  %3638 = trunc i64 %3637 to i8
  %3639 = and i8 %3638, 1
  store i8 %3639, i8* %14, align 1
  %3640 = icmp eq i64 %3625, 0
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %15, align 1
  %3642 = lshr i64 %3625, 63
  %3643 = trunc i64 %3642 to i8
  store i8 %3643, i8* %16, align 1
  %3644 = lshr i64 %3623, 57
  %3645 = and i64 %3644, 1
  %3646 = xor i64 %3642, lshr (i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64 63)
  %3647 = xor i64 %3642, %3645
  %3648 = add nuw nsw i64 %3646, %3647
  %3649 = icmp eq i64 %3648, 2
  %3650 = zext i1 %3649 to i8
  store i8 %3650, i8* %17, align 1
  %3651 = add i64 %3533, -24
  %3652 = add i64 %3612, 43
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3651 to i32*
  %3654 = load i32, i32* %3653, align 4
  %3655 = sext i32 %3654 to i64
  %3656 = shl nsw i64 %3655, 4
  store i64 %3656, i64* %R8.i1581, align 8
  %3657 = add i64 %3656, %3625
  store i64 %3657, i64* %RSI.i2748, align 8
  %3658 = icmp ult i64 %3657, %3625
  %3659 = icmp ult i64 %3657, %3656
  %3660 = or i1 %3658, %3659
  %3661 = zext i1 %3660 to i8
  store i8 %3661, i8* %12, align 1
  %3662 = trunc i64 %3657 to i32
  %3663 = and i32 %3662, 248
  %3664 = tail call i32 @llvm.ctpop.i32(i32 %3663)
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  store i8 %3667, i8* %13, align 1
  %3668 = xor i64 %3656, %3625
  %3669 = xor i64 %3668, %3657
  %3670 = lshr i64 %3669, 4
  %3671 = trunc i64 %3670 to i8
  %3672 = and i8 %3671, 1
  store i8 %3672, i8* %14, align 1
  %3673 = icmp eq i64 %3657, 0
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %15, align 1
  %3675 = lshr i64 %3657, 63
  %3676 = trunc i64 %3675 to i8
  store i8 %3676, i8* %16, align 1
  %3677 = lshr i64 %3655, 59
  %3678 = and i64 %3677, 1
  %3679 = xor i64 %3675, %3642
  %3680 = xor i64 %3675, %3678
  %3681 = add nuw nsw i64 %3679, %3680
  %3682 = icmp eq i64 %3681, 2
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %17, align 1
  %3684 = load i64, i64* %RBP.i, align 8
  %3685 = add i64 %3684, -28
  %3686 = add i64 %3612, 54
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i32*
  %3688 = load i32, i32* %3687, align 4
  %3689 = sext i32 %3688 to i64
  store i64 %3689, i64* %R8.i1581, align 8
  %3690 = load i64, i64* %RDI.i1875, align 8
  %3691 = shl nsw i64 %3689, 2
  %3692 = add i64 %3657, %3691
  %3693 = add i64 %3612, 59
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3692 to i32*
  %3695 = load i32, i32* %3694, align 4
  %3696 = shl i64 %3690, 32
  %3697 = ashr exact i64 %3696, 32
  %3698 = sext i32 %3695 to i64
  %3699 = mul nsw i64 %3698, %3697
  %3700 = trunc i64 %3699 to i32
  %3701 = and i64 %3699, 4294967295
  store i64 %3701, i64* %RDI.i1875, align 8
  %3702 = shl i64 %3699, 32
  %3703 = ashr exact i64 %3702, 32
  %3704 = icmp ne i64 %3703, %3699
  %3705 = zext i1 %3704 to i8
  store i8 %3705, i8* %12, align 1
  %3706 = and i32 %3700, 255
  %3707 = tail call i32 @llvm.ctpop.i32(i32 %3706)
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  %3710 = xor i8 %3709, 1
  store i8 %3710, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %3711 = lshr i32 %3700, 31
  %3712 = trunc i32 %3711 to i8
  store i8 %3712, i8* %16, align 1
  store i8 %3705, i8* %17, align 1
  %3713 = load i64, i64* %RDX.i2756, align 8
  %3714 = add i64 %3684, -104
  %3715 = add i64 %3612, 62
  store i64 %3715, i64* %3, align 8
  %3716 = trunc i64 %3713 to i32
  %3717 = inttoptr i64 %3714 to i32*
  %3718 = load i32, i32* %3717, align 4
  %3719 = sub i32 %3716, %3718
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RDX.i2756, align 8
  %3721 = icmp ult i32 %3716, %3718
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %12, align 1
  %3723 = and i32 %3719, 255
  %3724 = tail call i32 @llvm.ctpop.i32(i32 %3723)
  %3725 = trunc i32 %3724 to i8
  %3726 = and i8 %3725, 1
  %3727 = xor i8 %3726, 1
  store i8 %3727, i8* %13, align 1
  %3728 = xor i32 %3718, %3716
  %3729 = xor i32 %3728, %3719
  %3730 = lshr i32 %3729, 4
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  store i8 %3732, i8* %14, align 1
  %3733 = icmp eq i32 %3719, 0
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %15, align 1
  %3735 = lshr i32 %3719, 31
  %3736 = trunc i32 %3735 to i8
  store i8 %3736, i8* %16, align 1
  %3737 = lshr i32 %3716, 31
  %3738 = lshr i32 %3718, 31
  %3739 = xor i32 %3738, %3737
  %3740 = xor i32 %3735, %3737
  %3741 = add nuw nsw i32 %3740, %3739
  %3742 = icmp eq i32 %3741, 2
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %17, align 1
  %3744 = add i64 %3684, -176
  %3745 = load i32, i32* %ECX.i2771, align 4
  %3746 = add i64 %3612, 68
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3744 to i32*
  store i32 %3745, i32* %3747, align 4
  %3748 = load i32, i32* %67, align 4
  %3749 = zext i32 %3748 to i64
  %3750 = load i64, i64* %3, align 8
  store i64 %3749, i64* %RCX.i2784, align 8
  %3751 = load i64, i64* %RBP.i, align 8
  %3752 = add i64 %3751, -176
  %3753 = add i64 %3750, 8
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i32*
  %3755 = load i32, i32* %3754, align 4
  %3756 = zext i32 %3755 to i64
  store i64 %3756, i64* %RDX.i2756, align 8
  %3757 = add i64 %3750, 10
  store i64 %3757, i64* %3, align 8
  %3758 = trunc i32 %3748 to i5
  switch i5 %3758, label %3764 [
    i5 0, label %routine_shll__cl___edx.exit1613
    i5 1, label %3759
  ]

; <label>:3759:                                   ; preds = %block_406a2e
  %3760 = shl i32 %3755, 1
  %3761 = icmp slt i32 %3755, 0
  %3762 = icmp slt i32 %3760, 0
  %3763 = xor i1 %3761, %3762
  br label %3773

; <label>:3764:                                   ; preds = %block_406a2e
  %3765 = and i32 %3748, 31
  %3766 = zext i32 %3765 to i64
  %3767 = add nuw nsw i64 %3766, 4294967295
  %3768 = and i64 %3767, 4294967295
  %3769 = shl i64 %3756, %3768
  %3770 = trunc i64 %3769 to i32
  %3771 = icmp slt i32 %3770, 0
  %3772 = shl i32 %3770, 1
  br label %3773

; <label>:3773:                                   ; preds = %3764, %3759
  %3774 = phi i1 [ %3761, %3759 ], [ %3771, %3764 ]
  %3775 = phi i1 [ %3763, %3759 ], [ false, %3764 ]
  %3776 = phi i32 [ %3760, %3759 ], [ %3772, %3764 ]
  %3777 = zext i32 %3776 to i64
  store i64 %3777, i64* %RDX.i2756, align 8
  %3778 = zext i1 %3774 to i8
  store i8 %3778, i8* %12, align 1
  %3779 = and i32 %3776, 254
  %3780 = tail call i32 @llvm.ctpop.i32(i32 %3779)
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  %3783 = xor i8 %3782, 1
  store i8 %3783, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3784 = icmp eq i32 %3776, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %15, align 1
  %3786 = lshr i32 %3776, 31
  %3787 = trunc i32 %3786 to i8
  store i8 %3787, i8* %16, align 1
  %3788 = zext i1 %3775 to i8
  store i8 %3788, i8* %17, align 1
  br label %routine_shll__cl___edx.exit1613

routine_shll__cl___edx.exit1613:                  ; preds = %3773, %block_406a2e
  %3789 = phi i32 [ %3776, %3773 ], [ %3755, %block_406a2e ]
  %3790 = load i64, i64* %RDI.i1875, align 8
  %3791 = zext i32 %3789 to i64
  %3792 = trunc i64 %3790 to i32
  %3793 = add i32 %3789, %3792
  %3794 = zext i32 %3793 to i64
  store i64 %3794, i64* %RDI.i1875, align 8
  %3795 = icmp ult i32 %3793, %3792
  %3796 = icmp ult i32 %3793, %3789
  %3797 = or i1 %3795, %3796
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %12, align 1
  %3799 = and i32 %3793, 255
  %3800 = tail call i32 @llvm.ctpop.i32(i32 %3799)
  %3801 = trunc i32 %3800 to i8
  %3802 = and i8 %3801, 1
  %3803 = xor i8 %3802, 1
  store i8 %3803, i8* %13, align 1
  %3804 = xor i64 %3791, %3790
  %3805 = trunc i64 %3804 to i32
  %3806 = xor i32 %3805, %3793
  %3807 = lshr i32 %3806, 4
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  store i8 %3809, i8* %14, align 1
  %3810 = icmp eq i32 %3793, 0
  %3811 = zext i1 %3810 to i8
  store i8 %3811, i8* %15, align 1
  %3812 = lshr i32 %3793, 31
  %3813 = trunc i32 %3812 to i8
  store i8 %3813, i8* %16, align 1
  %3814 = lshr i32 %3792, 31
  %3815 = lshr i32 %3789, 31
  %3816 = xor i32 %3812, %3814
  %3817 = xor i32 %3812, %3815
  %3818 = add nuw nsw i32 %3816, %3817
  %3819 = icmp eq i32 %3818, 2
  %3820 = zext i1 %3819 to i8
  store i8 %3820, i8* %17, align 1
  %3821 = load i64, i64* %RAX.i1983, align 8
  %3822 = add i64 %3751, -104
  %3823 = add i64 %3750, 15
  store i64 %3823, i64* %3, align 8
  %3824 = trunc i64 %3821 to i32
  %3825 = inttoptr i64 %3822 to i32*
  %3826 = load i32, i32* %3825, align 4
  %3827 = sub i32 %3824, %3826
  %3828 = zext i32 %3827 to i64
  store i64 %3828, i64* %RAX.i1983, align 8
  %3829 = icmp ult i32 %3824, %3826
  %3830 = zext i1 %3829 to i8
  store i8 %3830, i8* %12, align 1
  %3831 = and i32 %3827, 255
  %3832 = tail call i32 @llvm.ctpop.i32(i32 %3831)
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  %3835 = xor i8 %3834, 1
  store i8 %3835, i8* %13, align 1
  %3836 = xor i32 %3826, %3824
  %3837 = xor i32 %3836, %3827
  %3838 = lshr i32 %3837, 4
  %3839 = trunc i32 %3838 to i8
  %3840 = and i8 %3839, 1
  store i8 %3840, i8* %14, align 1
  %3841 = icmp eq i32 %3827, 0
  %3842 = zext i1 %3841 to i8
  store i8 %3842, i8* %15, align 1
  %3843 = lshr i32 %3827, 31
  %3844 = trunc i32 %3843 to i8
  store i8 %3844, i8* %16, align 1
  %3845 = lshr i32 %3824, 31
  %3846 = lshr i32 %3826, 31
  %3847 = xor i32 %3846, %3845
  %3848 = xor i32 %3843, %3845
  %3849 = add nuw nsw i32 %3848, %3847
  %3850 = icmp eq i32 %3849, 2
  %3851 = zext i1 %3850 to i8
  store i8 %3851, i8* %17, align 1
  store i64 %3828, i64* %RCX.i2784, align 8
  %3852 = add i64 %3750, 19
  store i64 %3852, i64* %3, align 8
  %3853 = trunc i32 %3827 to i5
  switch i5 %3853, label %3857 [
    i5 0, label %routine_sarl__cl___edi.exit1600
    i5 1, label %3854
  ]

; <label>:3854:                                   ; preds = %routine_shll__cl___edx.exit1613
  %3855 = shl nuw i64 %3794, 32
  %3856 = ashr i64 %3855, 33
  br label %3864

; <label>:3857:                                   ; preds = %routine_shll__cl___edx.exit1613
  %3858 = and i32 %3827, 31
  %3859 = zext i32 %3858 to i64
  %3860 = add nsw i64 %3859, -1
  %3861 = sext i32 %3793 to i64
  %3862 = ashr i64 %3861, %3860
  %3863 = lshr i64 %3862, 1
  br label %3864

; <label>:3864:                                   ; preds = %3857, %3854
  %3865 = phi i64 [ %3863, %3857 ], [ %3856, %3854 ]
  %3866 = phi i64 [ %3862, %3857 ], [ %3794, %3854 ]
  %3867 = trunc i64 %3866 to i8
  %3868 = and i8 %3867, 1
  %3869 = trunc i64 %3865 to i32
  %3870 = and i64 %3865, 4294967295
  store i64 %3870, i64* %RDI.i1875, align 8
  store i8 %3868, i8* %12, align 1
  %3871 = and i32 %3869, 255
  %3872 = tail call i32 @llvm.ctpop.i32(i32 %3871)
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = xor i8 %3874, 1
  store i8 %3875, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3876 = icmp eq i32 %3869, 0
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %15, align 1
  %3878 = lshr i32 %3869, 31
  %3879 = trunc i32 %3878 to i8
  store i8 %3879, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3880 = trunc i64 %3865 to i32
  br label %routine_sarl__cl___edi.exit1600

routine_sarl__cl___edi.exit1600:                  ; preds = %3864, %routine_shll__cl___edx.exit1613
  %3881 = phi i32 [ %3880, %3864 ], [ %3793, %routine_shll__cl___edx.exit1613 ]
  %3882 = add i64 %3751, -40
  %3883 = add i64 %3750, 22
  store i64 %3883, i64* %3, align 8
  %3884 = inttoptr i64 %3882 to i32*
  store i32 %3881, i32* %3884, align 4
  %3885 = load i64, i64* %3, align 8
  %3886 = add i64 %3885, 95
  store i64 %3886, i64* %3, align 8
  br label %block_.L_406ae7

block_.L_406a8d:                                  ; preds = %block_406a24
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RSI.i2748, align 8
  %3887 = add i64 %3533, -88
  %3888 = add i64 %3612, 28
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3887 to i32*
  %3890 = load i32, i32* %3889, align 4
  %3891 = zext i32 %3890 to i64
  store i64 %3891, i64* %RDI.i1875, align 8
  %3892 = add i64 %3533, -108
  %3893 = add i64 %3612, 32
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i32*
  %3895 = load i32, i32* %3894, align 4
  %3896 = sext i32 %3895 to i64
  %3897 = shl nsw i64 %3896, 6
  store i64 %3897, i64* %R8.i1581, align 8
  %3898 = add i64 %3897, ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64)
  store i64 %3898, i64* %RSI.i2748, align 8
  %3899 = icmp ult i64 %3898, ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64)
  %3900 = icmp ult i64 %3898, %3897
  %3901 = or i1 %3899, %3900
  %3902 = zext i1 %3901 to i8
  store i8 %3902, i8* %12, align 1
  %3903 = trunc i64 %3898 to i32
  %3904 = and i32 %3903, 248
  %3905 = tail call i32 @llvm.ctpop.i32(i32 %3904)
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = xor i8 %3907, 1
  store i8 %3908, i8* %13, align 1
  %3909 = xor i64 %3898, ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64)
  %3910 = lshr i64 %3909, 4
  %3911 = trunc i64 %3910 to i8
  %3912 = and i8 %3911, 1
  store i8 %3912, i8* %14, align 1
  %3913 = icmp eq i64 %3898, 0
  %3914 = zext i1 %3913 to i8
  store i8 %3914, i8* %15, align 1
  %3915 = lshr i64 %3898, 63
  %3916 = trunc i64 %3915 to i8
  store i8 %3916, i8* %16, align 1
  %3917 = lshr i64 %3896, 57
  %3918 = and i64 %3917, 1
  %3919 = xor i64 %3915, lshr (i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64 63)
  %3920 = xor i64 %3915, %3918
  %3921 = add nuw nsw i64 %3919, %3920
  %3922 = icmp eq i64 %3921, 2
  %3923 = zext i1 %3922 to i8
  store i8 %3923, i8* %17, align 1
  %3924 = add i64 %3533, -24
  %3925 = add i64 %3612, 43
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = sext i32 %3927 to i64
  %3929 = shl nsw i64 %3928, 4
  store i64 %3929, i64* %R8.i1581, align 8
  %3930 = add i64 %3929, %3898
  store i64 %3930, i64* %RSI.i2748, align 8
  %3931 = icmp ult i64 %3930, %3898
  %3932 = icmp ult i64 %3930, %3929
  %3933 = or i1 %3931, %3932
  %3934 = zext i1 %3933 to i8
  store i8 %3934, i8* %12, align 1
  %3935 = trunc i64 %3930 to i32
  %3936 = and i32 %3935, 248
  %3937 = tail call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  store i8 %3940, i8* %13, align 1
  %3941 = xor i64 %3929, %3898
  %3942 = xor i64 %3941, %3930
  %3943 = lshr i64 %3942, 4
  %3944 = trunc i64 %3943 to i8
  %3945 = and i8 %3944, 1
  store i8 %3945, i8* %14, align 1
  %3946 = icmp eq i64 %3930, 0
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %15, align 1
  %3948 = lshr i64 %3930, 63
  %3949 = trunc i64 %3948 to i8
  store i8 %3949, i8* %16, align 1
  %3950 = lshr i64 %3928, 59
  %3951 = and i64 %3950, 1
  %3952 = xor i64 %3948, %3915
  %3953 = xor i64 %3948, %3951
  %3954 = add nuw nsw i64 %3952, %3953
  %3955 = icmp eq i64 %3954, 2
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %17, align 1
  %3957 = load i64, i64* %RBP.i, align 8
  %3958 = add i64 %3957, -28
  %3959 = add i64 %3612, 54
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i32*
  %3961 = load i32, i32* %3960, align 4
  %3962 = sext i32 %3961 to i64
  store i64 %3962, i64* %R8.i1581, align 8
  %3963 = load i64, i64* %RDI.i1875, align 8
  %3964 = shl nsw i64 %3962, 2
  %3965 = add i64 %3930, %3964
  %3966 = add i64 %3612, 59
  store i64 %3966, i64* %3, align 8
  %3967 = inttoptr i64 %3965 to i32*
  %3968 = load i32, i32* %3967, align 4
  %3969 = shl i64 %3963, 32
  %3970 = ashr exact i64 %3969, 32
  %3971 = sext i32 %3968 to i64
  %3972 = mul nsw i64 %3971, %3970
  %3973 = trunc i64 %3972 to i32
  %3974 = and i64 %3972, 4294967295
  store i64 %3974, i64* %RDI.i1875, align 8
  %3975 = shl i64 %3972, 32
  %3976 = ashr exact i64 %3975, 32
  %3977 = icmp ne i64 %3976, %3972
  %3978 = zext i1 %3977 to i8
  store i8 %3978, i8* %12, align 1
  %3979 = and i32 %3973, 255
  %3980 = tail call i32 @llvm.ctpop.i32(i32 %3979)
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  %3983 = xor i8 %3982, 1
  store i8 %3983, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %3984 = lshr i32 %3973, 31
  %3985 = trunc i32 %3984 to i8
  store i8 %3985, i8* %16, align 1
  store i8 %3978, i8* %17, align 1
  %3986 = load i64, i64* %RDX.i2756, align 8
  %3987 = add i64 %3957, -104
  %3988 = add i64 %3612, 62
  store i64 %3988, i64* %3, align 8
  %3989 = trunc i64 %3986 to i32
  %3990 = inttoptr i64 %3987 to i32*
  %3991 = load i32, i32* %3990, align 4
  %3992 = sub i32 %3989, %3991
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RDX.i2756, align 8
  %3994 = icmp ult i32 %3989, %3991
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %12, align 1
  %3996 = and i32 %3992, 255
  %3997 = tail call i32 @llvm.ctpop.i32(i32 %3996)
  %3998 = trunc i32 %3997 to i8
  %3999 = and i8 %3998, 1
  %4000 = xor i8 %3999, 1
  store i8 %4000, i8* %13, align 1
  %4001 = xor i32 %3991, %3989
  %4002 = xor i32 %4001, %3992
  %4003 = lshr i32 %4002, 4
  %4004 = trunc i32 %4003 to i8
  %4005 = and i8 %4004, 1
  store i8 %4005, i8* %14, align 1
  %4006 = icmp eq i32 %3992, 0
  %4007 = zext i1 %4006 to i8
  store i8 %4007, i8* %15, align 1
  %4008 = lshr i32 %3992, 31
  %4009 = trunc i32 %4008 to i8
  store i8 %4009, i8* %16, align 1
  %4010 = lshr i32 %3989, 31
  %4011 = lshr i32 %3991, 31
  %4012 = xor i32 %4011, %4010
  %4013 = xor i32 %4008, %4010
  %4014 = add nuw nsw i32 %4013, %4012
  %4015 = icmp eq i32 %4014, 2
  %4016 = zext i1 %4015 to i8
  store i8 %4016, i8* %17, align 1
  %4017 = add i64 %3957, -180
  %4018 = load i32, i32* %ECX.i2771, align 4
  %4019 = add i64 %3612, 68
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4017 to i32*
  store i32 %4018, i32* %4020, align 4
  %4021 = load i32, i32* %67, align 4
  %4022 = zext i32 %4021 to i64
  %4023 = load i64, i64* %3, align 8
  store i64 %4022, i64* %RCX.i2784, align 8
  %4024 = load i64, i64* %RBP.i, align 8
  %4025 = add i64 %4024, -180
  %4026 = add i64 %4023, 8
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  %4028 = load i32, i32* %4027, align 4
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RDX.i2756, align 8
  %4030 = add i64 %4023, 10
  store i64 %4030, i64* %3, align 8
  %4031 = trunc i32 %4021 to i5
  switch i5 %4031, label %4037 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %4032
  ]

; <label>:4032:                                   ; preds = %block_.L_406a8d
  %4033 = shl i32 %4028, 1
  %4034 = icmp slt i32 %4028, 0
  %4035 = icmp slt i32 %4033, 0
  %4036 = xor i1 %4034, %4035
  br label %4046

; <label>:4037:                                   ; preds = %block_.L_406a8d
  %4038 = and i32 %4021, 31
  %4039 = zext i32 %4038 to i64
  %4040 = add nuw nsw i64 %4039, 4294967295
  %4041 = and i64 %4040, 4294967295
  %4042 = shl i64 %4029, %4041
  %4043 = trunc i64 %4042 to i32
  %4044 = icmp slt i32 %4043, 0
  %4045 = shl i32 %4043, 1
  br label %4046

; <label>:4046:                                   ; preds = %4037, %4032
  %4047 = phi i1 [ %4034, %4032 ], [ %4044, %4037 ]
  %4048 = phi i1 [ %4036, %4032 ], [ false, %4037 ]
  %4049 = phi i32 [ %4033, %4032 ], [ %4045, %4037 ]
  %4050 = zext i32 %4049 to i64
  store i64 %4050, i64* %RDX.i2756, align 8
  %4051 = zext i1 %4047 to i8
  store i8 %4051, i8* %12, align 1
  %4052 = and i32 %4049, 254
  %4053 = tail call i32 @llvm.ctpop.i32(i32 %4052)
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = xor i8 %4055, 1
  store i8 %4056, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4057 = icmp eq i32 %4049, 0
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %15, align 1
  %4059 = lshr i32 %4049, 31
  %4060 = trunc i32 %4059 to i8
  store i8 %4060, i8* %16, align 1
  %4061 = zext i1 %4048 to i8
  store i8 %4061, i8* %17, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %4046, %block_.L_406a8d
  %4062 = phi i32 [ %4049, %4046 ], [ %4028, %block_.L_406a8d ]
  %4063 = load i64, i64* %RDI.i1875, align 8
  %4064 = zext i32 %4062 to i64
  %4065 = trunc i64 %4063 to i32
  %4066 = add i32 %4062, %4065
  %4067 = zext i32 %4066 to i64
  store i64 %4067, i64* %RDI.i1875, align 8
  %4068 = icmp ult i32 %4066, %4065
  %4069 = icmp ult i32 %4066, %4062
  %4070 = or i1 %4068, %4069
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %12, align 1
  %4072 = and i32 %4066, 255
  %4073 = tail call i32 @llvm.ctpop.i32(i32 %4072)
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = xor i8 %4075, 1
  store i8 %4076, i8* %13, align 1
  %4077 = xor i64 %4064, %4063
  %4078 = trunc i64 %4077 to i32
  %4079 = xor i32 %4078, %4066
  %4080 = lshr i32 %4079, 4
  %4081 = trunc i32 %4080 to i8
  %4082 = and i8 %4081, 1
  store i8 %4082, i8* %14, align 1
  %4083 = icmp eq i32 %4066, 0
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %15, align 1
  %4085 = lshr i32 %4066, 31
  %4086 = trunc i32 %4085 to i8
  store i8 %4086, i8* %16, align 1
  %4087 = lshr i32 %4065, 31
  %4088 = lshr i32 %4062, 31
  %4089 = xor i32 %4085, %4087
  %4090 = xor i32 %4085, %4088
  %4091 = add nuw nsw i32 %4089, %4090
  %4092 = icmp eq i32 %4091, 2
  %4093 = zext i1 %4092 to i8
  store i8 %4093, i8* %17, align 1
  %4094 = load i64, i64* %RAX.i1983, align 8
  %4095 = add i64 %4024, -104
  %4096 = add i64 %4023, 15
  store i64 %4096, i64* %3, align 8
  %4097 = trunc i64 %4094 to i32
  %4098 = inttoptr i64 %4095 to i32*
  %4099 = load i32, i32* %4098, align 4
  %4100 = sub i32 %4097, %4099
  %4101 = zext i32 %4100 to i64
  store i64 %4101, i64* %RAX.i1983, align 8
  %4102 = icmp ult i32 %4097, %4099
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %12, align 1
  %4104 = and i32 %4100, 255
  %4105 = tail call i32 @llvm.ctpop.i32(i32 %4104)
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = xor i8 %4107, 1
  store i8 %4108, i8* %13, align 1
  %4109 = xor i32 %4099, %4097
  %4110 = xor i32 %4109, %4100
  %4111 = lshr i32 %4110, 4
  %4112 = trunc i32 %4111 to i8
  %4113 = and i8 %4112, 1
  store i8 %4113, i8* %14, align 1
  %4114 = icmp eq i32 %4100, 0
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %15, align 1
  %4116 = lshr i32 %4100, 31
  %4117 = trunc i32 %4116 to i8
  store i8 %4117, i8* %16, align 1
  %4118 = lshr i32 %4097, 31
  %4119 = lshr i32 %4099, 31
  %4120 = xor i32 %4119, %4118
  %4121 = xor i32 %4116, %4118
  %4122 = add nuw nsw i32 %4121, %4120
  %4123 = icmp eq i32 %4122, 2
  %4124 = zext i1 %4123 to i8
  store i8 %4124, i8* %17, align 1
  store i64 %4101, i64* %RCX.i2784, align 8
  %4125 = add i64 %4023, 19
  store i64 %4125, i64* %3, align 8
  %4126 = trunc i32 %4100 to i5
  switch i5 %4126, label %4130 [
    i5 0, label %routine_sarl__cl___edi.exit
    i5 1, label %4127
  ]

; <label>:4127:                                   ; preds = %routine_shll__cl___edx.exit
  %4128 = shl nuw i64 %4067, 32
  %4129 = ashr i64 %4128, 33
  br label %4137

; <label>:4130:                                   ; preds = %routine_shll__cl___edx.exit
  %4131 = and i32 %4100, 31
  %4132 = zext i32 %4131 to i64
  %4133 = add nsw i64 %4132, -1
  %4134 = sext i32 %4066 to i64
  %4135 = ashr i64 %4134, %4133
  %4136 = lshr i64 %4135, 1
  br label %4137

; <label>:4137:                                   ; preds = %4130, %4127
  %4138 = phi i64 [ %4136, %4130 ], [ %4129, %4127 ]
  %4139 = phi i64 [ %4135, %4130 ], [ %4067, %4127 ]
  %4140 = trunc i64 %4139 to i8
  %4141 = and i8 %4140, 1
  %4142 = trunc i64 %4138 to i32
  %4143 = and i64 %4138, 4294967295
  store i64 %4143, i64* %RDI.i1875, align 8
  store i8 %4141, i8* %12, align 1
  %4144 = and i32 %4142, 255
  %4145 = tail call i32 @llvm.ctpop.i32(i32 %4144)
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  %4148 = xor i8 %4147, 1
  store i8 %4148, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4149 = icmp eq i32 %4142, 0
  %4150 = zext i1 %4149 to i8
  store i8 %4150, i8* %15, align 1
  %4151 = lshr i32 %4142, 31
  %4152 = trunc i32 %4151 to i8
  store i8 %4152, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4153 = trunc i64 %4138 to i32
  br label %routine_sarl__cl___edi.exit

routine_sarl__cl___edi.exit:                      ; preds = %4137, %routine_shll__cl___edx.exit
  %4154 = phi i32 [ %4153, %4137 ], [ %4066, %routine_shll__cl___edx.exit ]
  %4155 = add i64 %4024, -40
  %4156 = add i64 %4023, 22
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  store i32 %4154, i32* %4157, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_406ae7

block_.L_406ae7:                                  ; preds = %routine_sarl__cl___edi.exit, %routine_sarl__cl___edi.exit1600
  %4158 = phi i64 [ %.pre175, %routine_sarl__cl___edi.exit ], [ %3886, %routine_sarl__cl___edi.exit1600 ]
  %4159 = add i64 %4158, 161
  br label %block_.L_406b88

block_.L_406aec:                                  ; preds = %block_.L_406a1a
  %.v206 = select i1 %3603, i64 10, i64 83
  %4160 = add i64 %3586, %.v206
  %4161 = add i64 %4160, 10
  store i64 %4161, i64* %3, align 8
  br i1 %3603, label %block_406af6, label %block_.L_406b3f

block_406af6:                                     ; preds = %block_.L_406aec
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RAX.i1983, align 8
  %4162 = add i64 %3533, -88
  %4163 = add i64 %4160, 13
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4162 to i32*
  %4165 = load i32, i32* %4164, align 4
  %4166 = zext i32 %4165 to i64
  store i64 %4166, i64* %RCX.i2784, align 8
  %4167 = add i64 %3533, -108
  %4168 = add i64 %4160, 17
  store i64 %4168, i64* %3, align 8
  %4169 = inttoptr i64 %4167 to i32*
  %4170 = load i32, i32* %4169, align 4
  %4171 = sext i32 %4170 to i64
  %4172 = shl nsw i64 %4171, 6
  store i64 %4172, i64* %RDX.i2756, align 8
  %4173 = add i64 %4172, ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64)
  store i64 %4173, i64* %RAX.i1983, align 8
  %4174 = icmp ult i64 %4173, ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64)
  %4175 = icmp ult i64 %4173, %4172
  %4176 = or i1 %4174, %4175
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %12, align 1
  %4178 = trunc i64 %4173 to i32
  %4179 = and i32 %4178, 248
  %4180 = tail call i32 @llvm.ctpop.i32(i32 %4179)
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  %4183 = xor i8 %4182, 1
  store i8 %4183, i8* %13, align 1
  %4184 = xor i64 %4173, ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64)
  %4185 = lshr i64 %4184, 4
  %4186 = trunc i64 %4185 to i8
  %4187 = and i8 %4186, 1
  store i8 %4187, i8* %14, align 1
  %4188 = icmp eq i64 %4173, 0
  %4189 = zext i1 %4188 to i8
  store i8 %4189, i8* %15, align 1
  %4190 = lshr i64 %4173, 63
  %4191 = trunc i64 %4190 to i8
  store i8 %4191, i8* %16, align 1
  %4192 = lshr i64 %4171, 57
  %4193 = and i64 %4192, 1
  %4194 = xor i64 %4190, lshr (i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64 63)
  %4195 = xor i64 %4190, %4193
  %4196 = add nuw nsw i64 %4194, %4195
  %4197 = icmp eq i64 %4196, 2
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %17, align 1
  %4199 = add i64 %3533, -24
  %4200 = add i64 %4160, 28
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4199 to i32*
  %4202 = load i32, i32* %4201, align 4
  %4203 = sext i32 %4202 to i64
  %4204 = shl nsw i64 %4203, 4
  store i64 %4204, i64* %RDX.i2756, align 8
  %4205 = add i64 %4204, %4173
  store i64 %4205, i64* %RAX.i1983, align 8
  %4206 = icmp ult i64 %4205, %4173
  %4207 = icmp ult i64 %4205, %4204
  %4208 = or i1 %4206, %4207
  %4209 = zext i1 %4208 to i8
  store i8 %4209, i8* %12, align 1
  %4210 = trunc i64 %4205 to i32
  %4211 = and i32 %4210, 248
  %4212 = tail call i32 @llvm.ctpop.i32(i32 %4211)
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = xor i8 %4214, 1
  store i8 %4215, i8* %13, align 1
  %4216 = xor i64 %4204, %4173
  %4217 = xor i64 %4216, %4205
  %4218 = lshr i64 %4217, 4
  %4219 = trunc i64 %4218 to i8
  %4220 = and i8 %4219, 1
  store i8 %4220, i8* %14, align 1
  %4221 = icmp eq i64 %4205, 0
  %4222 = zext i1 %4221 to i8
  store i8 %4222, i8* %15, align 1
  %4223 = lshr i64 %4205, 63
  %4224 = trunc i64 %4223 to i8
  store i8 %4224, i8* %16, align 1
  %4225 = lshr i64 %4203, 59
  %4226 = and i64 %4225, 1
  %4227 = xor i64 %4223, %4190
  %4228 = xor i64 %4223, %4226
  %4229 = add nuw nsw i64 %4227, %4228
  %4230 = icmp eq i64 %4229, 2
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %17, align 1
  %4232 = load i64, i64* %RBP.i, align 8
  %4233 = add i64 %4232, -28
  %4234 = add i64 %4160, 39
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  %4236 = load i32, i32* %4235, align 4
  %4237 = sext i32 %4236 to i64
  store i64 %4237, i64* %RDX.i2756, align 8
  %4238 = load i64, i64* %RCX.i2784, align 8
  %4239 = shl nsw i64 %4237, 2
  %4240 = add i64 %4205, %4239
  %4241 = add i64 %4160, 43
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4240 to i32*
  %4243 = load i32, i32* %4242, align 4
  %4244 = shl i64 %4238, 32
  %4245 = ashr exact i64 %4244, 32
  %4246 = sext i32 %4243 to i64
  %4247 = mul nsw i64 %4246, %4245
  %4248 = trunc i64 %4247 to i32
  %4249 = and i64 %4247, 4294967295
  store i64 %4249, i64* %RCX.i2784, align 8
  %4250 = shl i64 %4247, 32
  %4251 = ashr exact i64 %4250, 32
  %4252 = icmp ne i64 %4251, %4247
  %4253 = zext i1 %4252 to i8
  store i8 %4253, i8* %12, align 1
  %4254 = and i32 %4248, 255
  %4255 = tail call i32 @llvm.ctpop.i32(i32 %4254)
  %4256 = trunc i32 %4255 to i8
  %4257 = and i8 %4256, 1
  %4258 = xor i8 %4257, 1
  store i8 %4258, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %4259 = lshr i32 %4248, 31
  %4260 = trunc i32 %4259 to i8
  store i8 %4260, i8* %16, align 1
  store i8 %4253, i8* %17, align 1
  %4261 = add i64 %4232, -104
  %4262 = add i64 %4160, 46
  store i64 %4262, i64* %3, align 8
  %4263 = inttoptr i64 %4261 to i32*
  %4264 = load i32, i32* %4263, align 4
  %4265 = add i32 %4264, -4
  %4266 = zext i32 %4265 to i64
  store i64 %4266, i64* %RSI.i2748, align 8
  %4267 = icmp ult i32 %4264, 4
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %12, align 1
  %4269 = and i32 %4265, 255
  %4270 = tail call i32 @llvm.ctpop.i32(i32 %4269)
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = xor i8 %4272, 1
  store i8 %4273, i8* %13, align 1
  %4274 = xor i32 %4265, %4264
  %4275 = lshr i32 %4274, 4
  %4276 = trunc i32 %4275 to i8
  %4277 = and i8 %4276, 1
  store i8 %4277, i8* %14, align 1
  %4278 = icmp eq i32 %4265, 0
  %4279 = zext i1 %4278 to i8
  store i8 %4279, i8* %15, align 1
  %4280 = lshr i32 %4265, 31
  %4281 = trunc i32 %4280 to i8
  store i8 %4281, i8* %16, align 1
  %4282 = lshr i32 %4264, 31
  %4283 = xor i32 %4280, %4282
  %4284 = add nuw nsw i32 %4283, %4282
  %4285 = icmp eq i32 %4284, 2
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %17, align 1
  %4287 = add i64 %4232, -184
  %4288 = trunc i64 %4247 to i32
  %4289 = add i64 %4160, 55
  store i64 %4289, i64* %3, align 8
  %4290 = inttoptr i64 %4287 to i32*
  store i32 %4288, i32* %4290, align 4
  %4291 = load i32, i32* %ESI.i2738, align 4
  %4292 = zext i32 %4291 to i64
  %4293 = load i64, i64* %3, align 8
  store i64 %4292, i64* %RCX.i2784, align 8
  %4294 = load i64, i64* %RBP.i, align 8
  %4295 = add i64 %4294, -184
  %4296 = add i64 %4293, 8
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4295 to i32*
  %4298 = load i32, i32* %4297, align 4
  %4299 = zext i32 %4298 to i64
  store i64 %4299, i64* %RSI.i2748, align 8
  %4300 = add i64 %4293, 10
  store i64 %4300, i64* %3, align 8
  %4301 = trunc i32 %4291 to i5
  switch i5 %4301, label %4307 [
    i5 0, label %routine_shll__cl___esi.exit1483
    i5 1, label %4302
  ]

; <label>:4302:                                   ; preds = %block_406af6
  %4303 = shl i32 %4298, 1
  %4304 = icmp slt i32 %4298, 0
  %4305 = icmp slt i32 %4303, 0
  %4306 = xor i1 %4304, %4305
  br label %4316

; <label>:4307:                                   ; preds = %block_406af6
  %4308 = and i32 %4291, 31
  %4309 = zext i32 %4308 to i64
  %4310 = add nuw nsw i64 %4309, 4294967295
  %4311 = and i64 %4310, 4294967295
  %4312 = shl i64 %4299, %4311
  %4313 = trunc i64 %4312 to i32
  %4314 = icmp slt i32 %4313, 0
  %4315 = shl i32 %4313, 1
  br label %4316

; <label>:4316:                                   ; preds = %4307, %4302
  %4317 = phi i1 [ %4304, %4302 ], [ %4314, %4307 ]
  %4318 = phi i1 [ %4306, %4302 ], [ false, %4307 ]
  %4319 = phi i32 [ %4303, %4302 ], [ %4315, %4307 ]
  %4320 = zext i32 %4319 to i64
  store i64 %4320, i64* %RSI.i2748, align 8
  %4321 = zext i1 %4317 to i8
  store i8 %4321, i8* %12, align 1
  %4322 = and i32 %4319, 254
  %4323 = tail call i32 @llvm.ctpop.i32(i32 %4322)
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  %4326 = xor i8 %4325, 1
  store i8 %4326, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4327 = icmp eq i32 %4319, 0
  %4328 = zext i1 %4327 to i8
  store i8 %4328, i8* %15, align 1
  %4329 = lshr i32 %4319, 31
  %4330 = trunc i32 %4329 to i8
  store i8 %4330, i8* %16, align 1
  %4331 = zext i1 %4318 to i8
  store i8 %4331, i8* %17, align 1
  br label %routine_shll__cl___esi.exit1483

routine_shll__cl___esi.exit1483:                  ; preds = %4316, %block_406af6
  %4332 = phi i32 [ %4319, %4316 ], [ %4298, %block_406af6 ]
  %4333 = add i64 %4294, -40
  %4334 = add i64 %4293, 13
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i32*
  store i32 %4332, i32* %4335, align 4
  %4336 = load i64, i64* %3, align 8
  %4337 = add i64 %4336, 73
  store i64 %4337, i64* %3, align 8
  br label %block_.L_406b83

block_.L_406b3f:                                  ; preds = %block_.L_406aec
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RAX.i1983, align 8
  %4338 = add i64 %3533, -88
  %4339 = add i64 %4160, 13
  store i64 %4339, i64* %3, align 8
  %4340 = inttoptr i64 %4338 to i32*
  %4341 = load i32, i32* %4340, align 4
  %4342 = zext i32 %4341 to i64
  store i64 %4342, i64* %RCX.i2784, align 8
  %4343 = add i64 %3533, -108
  %4344 = add i64 %4160, 17
  store i64 %4344, i64* %3, align 8
  %4345 = inttoptr i64 %4343 to i32*
  %4346 = load i32, i32* %4345, align 4
  %4347 = sext i32 %4346 to i64
  %4348 = shl nsw i64 %4347, 6
  store i64 %4348, i64* %RDX.i2756, align 8
  %4349 = add i64 %4348, ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64)
  store i64 %4349, i64* %RAX.i1983, align 8
  %4350 = icmp ult i64 %4349, ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64)
  %4351 = icmp ult i64 %4349, %4348
  %4352 = or i1 %4350, %4351
  %4353 = zext i1 %4352 to i8
  store i8 %4353, i8* %12, align 1
  %4354 = trunc i64 %4349 to i32
  %4355 = and i32 %4354, 248
  %4356 = tail call i32 @llvm.ctpop.i32(i32 %4355)
  %4357 = trunc i32 %4356 to i8
  %4358 = and i8 %4357, 1
  %4359 = xor i8 %4358, 1
  store i8 %4359, i8* %13, align 1
  %4360 = xor i64 %4349, ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64)
  %4361 = lshr i64 %4360, 4
  %4362 = trunc i64 %4361 to i8
  %4363 = and i8 %4362, 1
  store i8 %4363, i8* %14, align 1
  %4364 = icmp eq i64 %4349, 0
  %4365 = zext i1 %4364 to i8
  store i8 %4365, i8* %15, align 1
  %4366 = lshr i64 %4349, 63
  %4367 = trunc i64 %4366 to i8
  store i8 %4367, i8* %16, align 1
  %4368 = lshr i64 %4347, 57
  %4369 = and i64 %4368, 1
  %4370 = xor i64 %4366, lshr (i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64 63)
  %4371 = xor i64 %4366, %4369
  %4372 = add nuw nsw i64 %4370, %4371
  %4373 = icmp eq i64 %4372, 2
  %4374 = zext i1 %4373 to i8
  store i8 %4374, i8* %17, align 1
  %4375 = add i64 %3533, -24
  %4376 = add i64 %4160, 28
  store i64 %4376, i64* %3, align 8
  %4377 = inttoptr i64 %4375 to i32*
  %4378 = load i32, i32* %4377, align 4
  %4379 = sext i32 %4378 to i64
  %4380 = shl nsw i64 %4379, 4
  store i64 %4380, i64* %RDX.i2756, align 8
  %4381 = add i64 %4380, %4349
  store i64 %4381, i64* %RAX.i1983, align 8
  %4382 = icmp ult i64 %4381, %4349
  %4383 = icmp ult i64 %4381, %4380
  %4384 = or i1 %4382, %4383
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %12, align 1
  %4386 = trunc i64 %4381 to i32
  %4387 = and i32 %4386, 248
  %4388 = tail call i32 @llvm.ctpop.i32(i32 %4387)
  %4389 = trunc i32 %4388 to i8
  %4390 = and i8 %4389, 1
  %4391 = xor i8 %4390, 1
  store i8 %4391, i8* %13, align 1
  %4392 = xor i64 %4380, %4349
  %4393 = xor i64 %4392, %4381
  %4394 = lshr i64 %4393, 4
  %4395 = trunc i64 %4394 to i8
  %4396 = and i8 %4395, 1
  store i8 %4396, i8* %14, align 1
  %4397 = icmp eq i64 %4381, 0
  %4398 = zext i1 %4397 to i8
  store i8 %4398, i8* %15, align 1
  %4399 = lshr i64 %4381, 63
  %4400 = trunc i64 %4399 to i8
  store i8 %4400, i8* %16, align 1
  %4401 = lshr i64 %4379, 59
  %4402 = and i64 %4401, 1
  %4403 = xor i64 %4399, %4366
  %4404 = xor i64 %4399, %4402
  %4405 = add nuw nsw i64 %4403, %4404
  %4406 = icmp eq i64 %4405, 2
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %17, align 1
  %4408 = load i64, i64* %RBP.i, align 8
  %4409 = add i64 %4408, -28
  %4410 = add i64 %4160, 39
  store i64 %4410, i64* %3, align 8
  %4411 = inttoptr i64 %4409 to i32*
  %4412 = load i32, i32* %4411, align 4
  %4413 = sext i32 %4412 to i64
  store i64 %4413, i64* %RDX.i2756, align 8
  %4414 = load i64, i64* %RCX.i2784, align 8
  %4415 = shl nsw i64 %4413, 2
  %4416 = add i64 %4381, %4415
  %4417 = add i64 %4160, 43
  store i64 %4417, i64* %3, align 8
  %4418 = inttoptr i64 %4416 to i32*
  %4419 = load i32, i32* %4418, align 4
  %4420 = shl i64 %4414, 32
  %4421 = ashr exact i64 %4420, 32
  %4422 = sext i32 %4419 to i64
  %4423 = mul nsw i64 %4422, %4421
  %4424 = trunc i64 %4423 to i32
  %4425 = and i64 %4423, 4294967295
  store i64 %4425, i64* %RCX.i2784, align 8
  %4426 = shl i64 %4423, 32
  %4427 = ashr exact i64 %4426, 32
  %4428 = icmp ne i64 %4427, %4423
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %12, align 1
  %4430 = and i32 %4424, 255
  %4431 = tail call i32 @llvm.ctpop.i32(i32 %4430)
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = xor i8 %4433, 1
  store i8 %4434, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %4435 = lshr i32 %4424, 31
  %4436 = trunc i32 %4435 to i8
  store i8 %4436, i8* %16, align 1
  store i8 %4429, i8* %17, align 1
  %4437 = add i64 %4408, -104
  %4438 = add i64 %4160, 46
  store i64 %4438, i64* %3, align 8
  %4439 = inttoptr i64 %4437 to i32*
  %4440 = load i32, i32* %4439, align 4
  %4441 = add i32 %4440, -4
  %4442 = zext i32 %4441 to i64
  store i64 %4442, i64* %RSI.i2748, align 8
  %4443 = icmp ult i32 %4440, 4
  %4444 = zext i1 %4443 to i8
  store i8 %4444, i8* %12, align 1
  %4445 = and i32 %4441, 255
  %4446 = tail call i32 @llvm.ctpop.i32(i32 %4445)
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  %4449 = xor i8 %4448, 1
  store i8 %4449, i8* %13, align 1
  %4450 = xor i32 %4441, %4440
  %4451 = lshr i32 %4450, 4
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  store i8 %4453, i8* %14, align 1
  %4454 = icmp eq i32 %4441, 0
  %4455 = zext i1 %4454 to i8
  store i8 %4455, i8* %15, align 1
  %4456 = lshr i32 %4441, 31
  %4457 = trunc i32 %4456 to i8
  store i8 %4457, i8* %16, align 1
  %4458 = lshr i32 %4440, 31
  %4459 = xor i32 %4456, %4458
  %4460 = add nuw nsw i32 %4459, %4458
  %4461 = icmp eq i32 %4460, 2
  %4462 = zext i1 %4461 to i8
  store i8 %4462, i8* %17, align 1
  %4463 = add i64 %4408, -188
  %4464 = trunc i64 %4423 to i32
  %4465 = add i64 %4160, 55
  store i64 %4465, i64* %3, align 8
  %4466 = inttoptr i64 %4463 to i32*
  store i32 %4464, i32* %4466, align 4
  %4467 = load i32, i32* %ESI.i2738, align 4
  %4468 = zext i32 %4467 to i64
  %4469 = load i64, i64* %3, align 8
  store i64 %4468, i64* %RCX.i2784, align 8
  %4470 = load i64, i64* %RBP.i, align 8
  %4471 = add i64 %4470, -188
  %4472 = add i64 %4469, 8
  store i64 %4472, i64* %3, align 8
  %4473 = inttoptr i64 %4471 to i32*
  %4474 = load i32, i32* %4473, align 4
  %4475 = zext i32 %4474 to i64
  store i64 %4475, i64* %RSI.i2748, align 8
  %4476 = add i64 %4469, 10
  store i64 %4476, i64* %3, align 8
  %4477 = trunc i32 %4467 to i5
  switch i5 %4477, label %4483 [
    i5 0, label %routine_shll__cl___esi.exit
    i5 1, label %4478
  ]

; <label>:4478:                                   ; preds = %block_.L_406b3f
  %4479 = shl i32 %4474, 1
  %4480 = icmp slt i32 %4474, 0
  %4481 = icmp slt i32 %4479, 0
  %4482 = xor i1 %4480, %4481
  br label %4492

; <label>:4483:                                   ; preds = %block_.L_406b3f
  %4484 = and i32 %4467, 31
  %4485 = zext i32 %4484 to i64
  %4486 = add nuw nsw i64 %4485, 4294967295
  %4487 = and i64 %4486, 4294967295
  %4488 = shl i64 %4475, %4487
  %4489 = trunc i64 %4488 to i32
  %4490 = icmp slt i32 %4489, 0
  %4491 = shl i32 %4489, 1
  br label %4492

; <label>:4492:                                   ; preds = %4483, %4478
  %4493 = phi i1 [ %4480, %4478 ], [ %4490, %4483 ]
  %4494 = phi i1 [ %4482, %4478 ], [ false, %4483 ]
  %4495 = phi i32 [ %4479, %4478 ], [ %4491, %4483 ]
  %4496 = zext i32 %4495 to i64
  store i64 %4496, i64* %RSI.i2748, align 8
  %4497 = zext i1 %4493 to i8
  store i8 %4497, i8* %12, align 1
  %4498 = and i32 %4495, 254
  %4499 = tail call i32 @llvm.ctpop.i32(i32 %4498)
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  %4502 = xor i8 %4501, 1
  store i8 %4502, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4503 = icmp eq i32 %4495, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %15, align 1
  %4505 = lshr i32 %4495, 31
  %4506 = trunc i32 %4505 to i8
  store i8 %4506, i8* %16, align 1
  %4507 = zext i1 %4494 to i8
  store i8 %4507, i8* %17, align 1
  br label %routine_shll__cl___esi.exit

routine_shll__cl___esi.exit:                      ; preds = %4492, %block_.L_406b3f
  %4508 = phi i32 [ %4495, %4492 ], [ %4474, %block_.L_406b3f ]
  %4509 = add i64 %4470, -40
  %4510 = add i64 %4469, 13
  store i64 %4510, i64* %3, align 8
  %4511 = inttoptr i64 %4509 to i32*
  store i32 %4508, i32* %4511, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_406b83

block_.L_406b83:                                  ; preds = %routine_shll__cl___esi.exit, %routine_shll__cl___esi.exit1483
  %4512 = phi i64 [ %.pre174, %routine_shll__cl___esi.exit ], [ %4337, %routine_shll__cl___esi.exit1483 ]
  %4513 = add i64 %4512, 5
  store i64 %4513, i64* %3, align 8
  br label %block_.L_406b88

block_.L_406b88:                                  ; preds = %block_.L_406b83, %block_.L_406ae7
  %storemerge49 = phi i64 [ %4159, %block_.L_406ae7 ], [ %4513, %block_.L_406b83 ]
  %4514 = add i64 %storemerge49, 5
  store i64 %4514, i64* %3, align 8
  br label %block_.L_406b8d

block_.L_406b8d:                                  ; preds = %block_.L_406b88, %block_406a0f
  %storemerge45 = phi i64 [ %3558, %block_406a0f ], [ %4514, %block_.L_406b88 ]
  %4515 = add i64 %storemerge45, 5
  store i64 %4515, i64* %3, align 8
  %.pre176 = load i64, i64* %RBP.i, align 8
  br label %block_.L_406b92

block_.L_406b92:                                  ; preds = %block_.L_406b8d, %block_.L_406914
  %4516 = phi i64 [ %3136, %block_.L_406914 ], [ %4515, %block_.L_406b8d ]
  %4517 = phi i64 [ %3122, %block_.L_406914 ], [ %.pre176, %block_.L_406b8d ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.12, %block_.L_406914 ], [ %call2_4069fa, %block_.L_406b8d ]
  %4518 = add i64 %4517, -156
  %4519 = add i64 %4516, 7
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i32*
  %4521 = load i32, i32* %4520, align 4
  store i8 0, i8* %12, align 1
  %4522 = and i32 %4521, 255
  %4523 = tail call i32 @llvm.ctpop.i32(i32 %4522)
  %4524 = trunc i32 %4523 to i8
  %4525 = and i8 %4524, 1
  %4526 = xor i8 %4525, 1
  store i8 %4526, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4527 = icmp eq i32 %4521, 0
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %15, align 1
  %4529 = lshr i32 %4521, 31
  %4530 = trunc i32 %4529 to i8
  store i8 %4530, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v205 = select i1 %4527, i64 13, i64 49
  %4531 = add i64 %4516, %.v205
  store i64 %4531, i64* %3, align 8
  br i1 %4527, label %block_406b9f, label %block_.L_406bc3

block_406b9f:                                     ; preds = %block_.L_406b92
  %4532 = add i64 %4517, -40
  %4533 = add i64 %4531, 3
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  %4535 = load i32, i32* %4534, align 4
  %4536 = zext i32 %4535 to i64
  store i64 %4536, i64* %RAX.i1983, align 8
  %4537 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4538 = add i64 %4537, 13112
  store i64 %4538, i64* %RCX.i2784, align 8
  %4539 = icmp ugt i64 %4537, -13113
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %12, align 1
  %4541 = trunc i64 %4538 to i32
  %4542 = and i32 %4541, 255
  %4543 = tail call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  store i8 %4546, i8* %13, align 1
  %4547 = xor i64 %4537, 16
  %4548 = xor i64 %4547, %4538
  %4549 = lshr i64 %4548, 4
  %4550 = trunc i64 %4549 to i8
  %4551 = and i8 %4550, 1
  store i8 %4551, i8* %14, align 1
  %4552 = icmp eq i64 %4538, 0
  %4553 = zext i1 %4552 to i8
  store i8 %4553, i8* %15, align 1
  %4554 = lshr i64 %4538, 63
  %4555 = trunc i64 %4554 to i8
  store i8 %4555, i8* %16, align 1
  %4556 = lshr i64 %4537, 63
  %4557 = xor i64 %4554, %4556
  %4558 = add nuw nsw i64 %4557, %4554
  %4559 = icmp eq i64 %4558, 2
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %17, align 1
  %4561 = add i64 %4517, -24
  %4562 = add i64 %4531, 22
  store i64 %4562, i64* %3, align 8
  %4563 = inttoptr i64 %4561 to i32*
  %4564 = load i32, i32* %4563, align 4
  %4565 = sext i32 %4564 to i64
  %4566 = shl nsw i64 %4565, 6
  store i64 %4566, i64* %RDX.i2756, align 8
  %4567 = add i64 %4566, %4538
  store i64 %4567, i64* %RCX.i2784, align 8
  %4568 = icmp ult i64 %4567, %4538
  %4569 = icmp ult i64 %4567, %4566
  %4570 = or i1 %4568, %4569
  %4571 = zext i1 %4570 to i8
  store i8 %4571, i8* %12, align 1
  %4572 = trunc i64 %4567 to i32
  %4573 = and i32 %4572, 255
  %4574 = tail call i32 @llvm.ctpop.i32(i32 %4573)
  %4575 = trunc i32 %4574 to i8
  %4576 = and i8 %4575, 1
  %4577 = xor i8 %4576, 1
  store i8 %4577, i8* %13, align 1
  %4578 = xor i64 %4538, %4567
  %4579 = lshr i64 %4578, 4
  %4580 = trunc i64 %4579 to i8
  %4581 = and i8 %4580, 1
  store i8 %4581, i8* %14, align 1
  %4582 = icmp eq i64 %4567, 0
  %4583 = zext i1 %4582 to i8
  store i8 %4583, i8* %15, align 1
  %4584 = lshr i64 %4567, 63
  %4585 = trunc i64 %4584 to i8
  store i8 %4585, i8* %16, align 1
  %4586 = lshr i64 %4565, 57
  %4587 = and i64 %4586, 1
  %4588 = xor i64 %4584, %4554
  %4589 = xor i64 %4584, %4587
  %4590 = add nuw nsw i64 %4588, %4589
  %4591 = icmp eq i64 %4590, 2
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %17, align 1
  %4593 = load i64, i64* %RBP.i, align 8
  %4594 = add i64 %4593, -28
  %4595 = add i64 %4531, 33
  store i64 %4595, i64* %3, align 8
  %4596 = inttoptr i64 %4594 to i32*
  %4597 = load i32, i32* %4596, align 4
  %4598 = sext i32 %4597 to i64
  store i64 %4598, i64* %RDX.i2756, align 8
  %4599 = shl nsw i64 %4598, 2
  %4600 = add i64 %4599, %4567
  %4601 = load i32, i32* %EAX.i1982, align 4
  %4602 = add i64 %4531, 36
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4600 to i32*
  store i32 %4601, i32* %4603, align 4
  %.pre177 = load i64, i64* %3, align 8
  %.pre178 = load i64, i64* %RBP.i, align 8
  br label %block_.L_406bc3

block_.L_406bc3:                                  ; preds = %block_.L_406b92, %block_406b9f
  %4604 = phi i64 [ %.pre178, %block_406b9f ], [ %4517, %block_.L_406b92 ]
  %4605 = phi i64 [ %.pre177, %block_406b9f ], [ %4531, %block_.L_406b92 ]
  %4606 = add i64 %4604, -84
  %4607 = add i64 %4605, 8
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to i32*
  %4609 = load i32, i32* %4608, align 4
  %4610 = add i32 %4609, 1
  %4611 = zext i32 %4610 to i64
  store i64 %4611, i64* %RAX.i1983, align 8
  %4612 = icmp eq i32 %4609, -1
  %4613 = icmp eq i32 %4610, 0
  %4614 = or i1 %4612, %4613
  %4615 = zext i1 %4614 to i8
  store i8 %4615, i8* %12, align 1
  %4616 = and i32 %4610, 255
  %4617 = tail call i32 @llvm.ctpop.i32(i32 %4616)
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  %4620 = xor i8 %4619, 1
  store i8 %4620, i8* %13, align 1
  %4621 = xor i32 %4610, %4609
  %4622 = lshr i32 %4621, 4
  %4623 = trunc i32 %4622 to i8
  %4624 = and i8 %4623, 1
  store i8 %4624, i8* %14, align 1
  %4625 = zext i1 %4613 to i8
  store i8 %4625, i8* %15, align 1
  %4626 = lshr i32 %4610, 31
  %4627 = trunc i32 %4626 to i8
  store i8 %4627, i8* %16, align 1
  %4628 = lshr i32 %4609, 31
  %4629 = xor i32 %4626, %4628
  %4630 = add nuw nsw i32 %4629, %4626
  %4631 = icmp eq i32 %4630, 2
  %4632 = zext i1 %4631 to i8
  store i8 %4632, i8* %17, align 1
  %4633 = add i64 %4605, 14
  store i64 %4633, i64* %3, align 8
  store i32 %4610, i32* %4608, align 4
  %4634 = load i64, i64* %3, align 8
  %4635 = add i64 %4634, -1180
  store i64 %4635, i64* %3, align 8
  br label %block_.L_406735

block_.L_406bd6:                                  ; preds = %block_.L_406735
  %4636 = add i64 %2274, -136
  %4637 = add i64 %2303, 7
  store i64 %4637, i64* %3, align 8
  %4638 = inttoptr i64 %4636 to i64*
  %4639 = load i64, i64* %4638, align 8
  store i64 %4639, i64* %RAX.i1983, align 8
  %4640 = add i64 %2274, -92
  %4641 = add i64 %2303, 11
  store i64 %4641, i64* %3, align 8
  %4642 = inttoptr i64 %4640 to i32*
  %4643 = load i32, i32* %4642, align 4
  %4644 = sext i32 %4643 to i64
  store i64 %4644, i64* %RCX.i2784, align 8
  %4645 = shl nsw i64 %4644, 2
  %4646 = add i64 %4645, %4639
  %4647 = add i64 %2303, 18
  store i64 %4647, i64* %3, align 8
  %4648 = inttoptr i64 %4646 to i32*
  store i32 0, i32* %4648, align 4
  %4649 = load i64, i64* %RBP.i, align 8
  %4650 = add i64 %4649, -28
  %4651 = load i64, i64* %3, align 8
  %4652 = add i64 %4651, 7
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4650 to i32*
  store i32 0, i32* %4653, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_406bef

block_.L_406bef:                                  ; preds = %block_.L_406d27, %block_.L_406bd6
  %4654 = phi i64 [ %5363, %block_.L_406d27 ], [ %.pre153, %block_.L_406bd6 ]
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i2535, align 1
  %4655 = load i64, i64* %RBP.i, align 8
  %4656 = add i64 %4655, -28
  %4657 = add i64 %4654, 8
  store i64 %4657, i64* %3, align 8
  %4658 = inttoptr i64 %4656 to i32*
  %4659 = load i32, i32* %4658, align 4
  %4660 = add i32 %4659, -4
  %4661 = icmp ult i32 %4659, 4
  %4662 = zext i1 %4661 to i8
  store i8 %4662, i8* %12, align 1
  %4663 = and i32 %4660, 255
  %4664 = tail call i32 @llvm.ctpop.i32(i32 %4663)
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  %4667 = xor i8 %4666, 1
  store i8 %4667, i8* %13, align 1
  %4668 = xor i32 %4660, %4659
  %4669 = lshr i32 %4668, 4
  %4670 = trunc i32 %4669 to i8
  %4671 = and i8 %4670, 1
  store i8 %4671, i8* %14, align 1
  %4672 = icmp eq i32 %4660, 0
  %4673 = zext i1 %4672 to i8
  store i8 %4673, i8* %15, align 1
  %4674 = lshr i32 %4660, 31
  %4675 = trunc i32 %4674 to i8
  store i8 %4675, i8* %16, align 1
  %4676 = lshr i32 %4659, 31
  %4677 = xor i32 %4674, %4676
  %4678 = add nuw nsw i32 %4677, %4676
  %4679 = icmp eq i32 %4678, 2
  %4680 = zext i1 %4679 to i8
  store i8 %4680, i8* %17, align 1
  %4681 = add i64 %4655, -189
  %4682 = add i64 %4654, 14
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i8*
  store i8 0, i8* %4683, align 1
  %4684 = load i64, i64* %3, align 8
  %4685 = add i64 %4684, 24
  %4686 = add i64 %4684, 6
  %4687 = load i8, i8* %16, align 1
  %4688 = icmp ne i8 %4687, 0
  %4689 = load i8, i8* %17, align 1
  %4690 = icmp ne i8 %4689, 0
  %4691 = xor i1 %4688, %4690
  %4692 = select i1 %4691, i64 %4686, i64 %4685
  store i64 %4692, i64* %3, align 8
  br i1 %4691, label %block_406c03, label %block_.L_406c15

block_406c03:                                     ; preds = %block_.L_406bef
  %4693 = load i64, i64* %RBP.i, align 8
  %4694 = add i64 %4693, -156
  %4695 = add i64 %4692, 7
  store i64 %4695, i64* %3, align 8
  %4696 = inttoptr i64 %4694 to i32*
  %4697 = load i32, i32* %4696, align 4
  %4698 = icmp ne i32 %4697, 0
  %4699 = zext i1 %4698 to i64
  %4700 = xor i64 %4699, 255
  %4701 = trunc i64 %4700 to i8
  store i8 %4701, i8* %AL.i2555, align 1
  store i8 0, i8* %12, align 1
  %4702 = trunc i64 %4700 to i32
  %4703 = tail call i32 @llvm.ctpop.i32(i32 %4702)
  %4704 = trunc i32 %4703 to i8
  %4705 = and i8 %4704, 1
  %4706 = xor i8 %4705, 1
  store i8 %4706, i8* %13, align 1
  store i8 0, i8* %15, align 1
  store i8 1, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %4707 = add i64 %4693, -189
  %4708 = add i64 %4692, 18
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i8*
  store i8 %4701, i8* %4709, align 1
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_406c15

block_.L_406c15:                                  ; preds = %block_.L_406bef, %block_406c03
  %4710 = phi i64 [ %4685, %block_.L_406bef ], [ %.pre154, %block_406c03 ]
  %4711 = load i64, i64* %RBP.i, align 8
  %4712 = add i64 %4711, -189
  %4713 = add i64 %4710, 6
  store i64 %4713, i64* %3, align 8
  %4714 = inttoptr i64 %4712 to i8*
  %4715 = load i8, i8* %4714, align 1
  store i8 %4715, i8* %AL.i2555, align 1
  %4716 = and i8 %4715, 1
  store i8 0, i8* %12, align 1
  %4717 = zext i8 %4716 to i32
  %4718 = tail call i32 @llvm.ctpop.i32(i32 %4717)
  %4719 = trunc i32 %4718 to i8
  %4720 = xor i8 %4719, 1
  store i8 %4720, i8* %13, align 1
  %4721 = xor i8 %4716, 1
  store i8 %4721, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %4722 = icmp eq i8 %4721, 0
  %.v182 = select i1 %4722, i64 19, i64 14
  %4723 = add i64 %4710, %.v182
  store i64 %4723, i64* %3, align 8
  %4724 = add i64 %4711, -24
  br i1 %4722, label %block_.L_406c28, label %block_406c23

block_406c23:                                     ; preds = %block_.L_406c15
  %4725 = add i64 %4723, 286
  store i64 %4725, i64* %3, align 8
  %4726 = inttoptr i64 %4724 to i32*
  store i32 0, i32* %4726, align 4
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_406d41

block_.L_406c28:                                  ; preds = %block_.L_406c15
  %4727 = add i64 %4723, 7
  store i64 %4727, i64* %3, align 8
  %4728 = inttoptr i64 %4724 to i32*
  store i32 0, i32* %4728, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_406c2f

block_.L_406c2f:                                  ; preds = %block_406c39, %block_.L_406c28
  %4729 = phi i64 [ %4866, %block_406c39 ], [ %.pre169, %block_.L_406c28 ]
  %4730 = load i64, i64* %RBP.i, align 8
  %4731 = add i64 %4730, -24
  %4732 = add i64 %4729, 4
  store i64 %4732, i64* %3, align 8
  %4733 = inttoptr i64 %4731 to i32*
  %4734 = load i32, i32* %4733, align 4
  %4735 = add i32 %4734, -4
  %4736 = icmp ult i32 %4734, 4
  %4737 = zext i1 %4736 to i8
  store i8 %4737, i8* %12, align 1
  %4738 = and i32 %4735, 255
  %4739 = tail call i32 @llvm.ctpop.i32(i32 %4738)
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  %4742 = xor i8 %4741, 1
  store i8 %4742, i8* %13, align 1
  %4743 = xor i32 %4735, %4734
  %4744 = lshr i32 %4743, 4
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  store i8 %4746, i8* %14, align 1
  %4747 = icmp eq i32 %4735, 0
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %15, align 1
  %4749 = lshr i32 %4735, 31
  %4750 = trunc i32 %4749 to i8
  store i8 %4750, i8* %16, align 1
  %4751 = lshr i32 %4734, 31
  %4752 = xor i32 %4749, %4751
  %4753 = add nuw nsw i32 %4752, %4751
  %4754 = icmp eq i32 %4753, 2
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %17, align 1
  %4756 = icmp ne i8 %4750, 0
  %4757 = xor i1 %4756, %4754
  %.v199 = select i1 %4757, i64 10, i64 64
  %4758 = add i64 %4729, %.v199
  store i64 %4758, i64* %3, align 8
  br i1 %4757, label %block_406c39, label %block_.L_406c6f

block_406c39:                                     ; preds = %block_.L_406c2f
  %4759 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4760 = add i64 %4759, 13112
  store i64 %4760, i64* %RAX.i1983, align 8
  %4761 = icmp ugt i64 %4759, -13113
  %4762 = zext i1 %4761 to i8
  store i8 %4762, i8* %12, align 1
  %4763 = trunc i64 %4760 to i32
  %4764 = and i32 %4763, 255
  %4765 = tail call i32 @llvm.ctpop.i32(i32 %4764)
  %4766 = trunc i32 %4765 to i8
  %4767 = and i8 %4766, 1
  %4768 = xor i8 %4767, 1
  store i8 %4768, i8* %13, align 1
  %4769 = xor i64 %4759, 16
  %4770 = xor i64 %4769, %4760
  %4771 = lshr i64 %4770, 4
  %4772 = trunc i64 %4771 to i8
  %4773 = and i8 %4772, 1
  store i8 %4773, i8* %14, align 1
  %4774 = icmp eq i64 %4760, 0
  %4775 = zext i1 %4774 to i8
  store i8 %4775, i8* %15, align 1
  %4776 = lshr i64 %4760, 63
  %4777 = trunc i64 %4776 to i8
  store i8 %4777, i8* %16, align 1
  %4778 = lshr i64 %4759, 63
  %4779 = xor i64 %4776, %4778
  %4780 = add nuw nsw i64 %4779, %4776
  %4781 = icmp eq i64 %4780, 2
  %4782 = zext i1 %4781 to i8
  store i8 %4782, i8* %17, align 1
  %4783 = add i64 %4758, 18
  store i64 %4783, i64* %3, align 8
  %4784 = load i32, i32* %4733, align 4
  %4785 = sext i32 %4784 to i64
  %4786 = shl nsw i64 %4785, 6
  store i64 %4786, i64* %RCX.i2784, align 8
  %4787 = add i64 %4786, %4760
  store i64 %4787, i64* %RAX.i1983, align 8
  %4788 = icmp ult i64 %4787, %4760
  %4789 = icmp ult i64 %4787, %4786
  %4790 = or i1 %4788, %4789
  %4791 = zext i1 %4790 to i8
  store i8 %4791, i8* %12, align 1
  %4792 = trunc i64 %4787 to i32
  %4793 = and i32 %4792, 255
  %4794 = tail call i32 @llvm.ctpop.i32(i32 %4793)
  %4795 = trunc i32 %4794 to i8
  %4796 = and i8 %4795, 1
  %4797 = xor i8 %4796, 1
  store i8 %4797, i8* %13, align 1
  %4798 = xor i64 %4760, %4787
  %4799 = lshr i64 %4798, 4
  %4800 = trunc i64 %4799 to i8
  %4801 = and i8 %4800, 1
  store i8 %4801, i8* %14, align 1
  %4802 = icmp eq i64 %4787, 0
  %4803 = zext i1 %4802 to i8
  store i8 %4803, i8* %15, align 1
  %4804 = lshr i64 %4787, 63
  %4805 = trunc i64 %4804 to i8
  store i8 %4805, i8* %16, align 1
  %4806 = lshr i64 %4785, 57
  %4807 = and i64 %4806, 1
  %4808 = xor i64 %4804, %4776
  %4809 = xor i64 %4804, %4807
  %4810 = add nuw nsw i64 %4808, %4809
  %4811 = icmp eq i64 %4810, 2
  %4812 = zext i1 %4811 to i8
  store i8 %4812, i8* %17, align 1
  %4813 = add i64 %4730, -28
  %4814 = add i64 %4758, 29
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i32*
  %4816 = load i32, i32* %4815, align 4
  %4817 = sext i32 %4816 to i64
  store i64 %4817, i64* %RCX.i2784, align 8
  %4818 = shl nsw i64 %4817, 2
  %4819 = add i64 %4818, %4787
  %4820 = add i64 %4758, 32
  store i64 %4820, i64* %3, align 8
  %4821 = inttoptr i64 %4819 to i32*
  %4822 = load i32, i32* %4821, align 4
  %4823 = zext i32 %4822 to i64
  store i64 %4823, i64* %RDX.i2756, align 8
  %4824 = load i64, i64* %RBP.i, align 8
  %4825 = add i64 %4824, -24
  %4826 = add i64 %4758, 36
  store i64 %4826, i64* %3, align 8
  %4827 = inttoptr i64 %4825 to i32*
  %4828 = load i32, i32* %4827, align 4
  %4829 = sext i32 %4828 to i64
  store i64 %4829, i64* %RAX.i1983, align 8
  %4830 = shl nsw i64 %4829, 2
  %4831 = add i64 %4824, -64
  %4832 = add i64 %4831, %4830
  %4833 = add i64 %4758, 40
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i32*
  store i32 %4822, i32* %4834, align 4
  %4835 = load i64, i64* %RBP.i, align 8
  %4836 = add i64 %4835, -24
  %4837 = load i64, i64* %3, align 8
  %4838 = add i64 %4837, 3
  store i64 %4838, i64* %3, align 8
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839, align 4
  %4841 = add i32 %4840, 1
  %4842 = zext i32 %4841 to i64
  store i64 %4842, i64* %RAX.i1983, align 8
  %4843 = icmp eq i32 %4840, -1
  %4844 = icmp eq i32 %4841, 0
  %4845 = or i1 %4843, %4844
  %4846 = zext i1 %4845 to i8
  store i8 %4846, i8* %12, align 1
  %4847 = and i32 %4841, 255
  %4848 = tail call i32 @llvm.ctpop.i32(i32 %4847)
  %4849 = trunc i32 %4848 to i8
  %4850 = and i8 %4849, 1
  %4851 = xor i8 %4850, 1
  store i8 %4851, i8* %13, align 1
  %4852 = xor i32 %4841, %4840
  %4853 = lshr i32 %4852, 4
  %4854 = trunc i32 %4853 to i8
  %4855 = and i8 %4854, 1
  store i8 %4855, i8* %14, align 1
  %4856 = zext i1 %4844 to i8
  store i8 %4856, i8* %15, align 1
  %4857 = lshr i32 %4841, 31
  %4858 = trunc i32 %4857 to i8
  store i8 %4858, i8* %16, align 1
  %4859 = lshr i32 %4840, 31
  %4860 = xor i32 %4857, %4859
  %4861 = add nuw nsw i32 %4860, %4857
  %4862 = icmp eq i32 %4861, 2
  %4863 = zext i1 %4862 to i8
  store i8 %4863, i8* %17, align 1
  %4864 = add i64 %4837, 9
  store i64 %4864, i64* %3, align 8
  store i32 %4841, i32* %4839, align 4
  %4865 = load i64, i64* %3, align 8
  %4866 = add i64 %4865, -59
  store i64 %4866, i64* %3, align 8
  br label %block_.L_406c2f

block_.L_406c6f:                                  ; preds = %block_.L_406c2f
  %4867 = add i64 %4730, -64
  %4868 = add i64 %4758, 3
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4867 to i32*
  %4870 = load i32, i32* %4869, align 4
  %4871 = zext i32 %4870 to i64
  store i64 %4871, i64* %RAX.i1983, align 8
  %4872 = add i64 %4730, -56
  %4873 = add i64 %4758, 6
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = add i32 %4875, %4870
  %4877 = zext i32 %4876 to i64
  store i64 %4877, i64* %RAX.i1983, align 8
  %4878 = icmp ult i32 %4876, %4870
  %4879 = icmp ult i32 %4876, %4875
  %4880 = or i1 %4878, %4879
  %4881 = zext i1 %4880 to i8
  store i8 %4881, i8* %12, align 1
  %4882 = and i32 %4876, 255
  %4883 = tail call i32 @llvm.ctpop.i32(i32 %4882)
  %4884 = trunc i32 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = xor i8 %4885, 1
  store i8 %4886, i8* %13, align 1
  %4887 = xor i32 %4875, %4870
  %4888 = xor i32 %4887, %4876
  %4889 = lshr i32 %4888, 4
  %4890 = trunc i32 %4889 to i8
  %4891 = and i8 %4890, 1
  store i8 %4891, i8* %14, align 1
  %4892 = icmp eq i32 %4876, 0
  %4893 = zext i1 %4892 to i8
  store i8 %4893, i8* %15, align 1
  %4894 = lshr i32 %4876, 31
  %4895 = trunc i32 %4894 to i8
  store i8 %4895, i8* %16, align 1
  %4896 = lshr i32 %4870, 31
  %4897 = lshr i32 %4875, 31
  %4898 = xor i32 %4894, %4896
  %4899 = xor i32 %4894, %4897
  %4900 = add nuw nsw i32 %4898, %4899
  %4901 = icmp eq i32 %4900, 2
  %4902 = zext i1 %4901 to i8
  store i8 %4902, i8* %17, align 1
  %4903 = add i64 %4730, -80
  %4904 = add i64 %4758, 9
  store i64 %4904, i64* %3, align 8
  %4905 = inttoptr i64 %4903 to i32*
  store i32 %4876, i32* %4905, align 4
  %4906 = load i64, i64* %RBP.i, align 8
  %4907 = add i64 %4906, -64
  %4908 = load i64, i64* %3, align 8
  %4909 = add i64 %4908, 3
  store i64 %4909, i64* %3, align 8
  %4910 = inttoptr i64 %4907 to i32*
  %4911 = load i32, i32* %4910, align 4
  %4912 = zext i32 %4911 to i64
  store i64 %4912, i64* %RAX.i1983, align 8
  %4913 = add i64 %4906, -56
  %4914 = add i64 %4908, 6
  store i64 %4914, i64* %3, align 8
  %4915 = inttoptr i64 %4913 to i32*
  %4916 = load i32, i32* %4915, align 4
  %4917 = sub i32 %4911, %4916
  %4918 = zext i32 %4917 to i64
  store i64 %4918, i64* %RAX.i1983, align 8
  %4919 = icmp ult i32 %4911, %4916
  %4920 = zext i1 %4919 to i8
  store i8 %4920, i8* %12, align 1
  %4921 = and i32 %4917, 255
  %4922 = tail call i32 @llvm.ctpop.i32(i32 %4921)
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  %4925 = xor i8 %4924, 1
  store i8 %4925, i8* %13, align 1
  %4926 = xor i32 %4916, %4911
  %4927 = xor i32 %4926, %4917
  %4928 = lshr i32 %4927, 4
  %4929 = trunc i32 %4928 to i8
  %4930 = and i8 %4929, 1
  store i8 %4930, i8* %14, align 1
  %4931 = icmp eq i32 %4917, 0
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %15, align 1
  %4933 = lshr i32 %4917, 31
  %4934 = trunc i32 %4933 to i8
  store i8 %4934, i8* %16, align 1
  %4935 = lshr i32 %4911, 31
  %4936 = lshr i32 %4916, 31
  %4937 = xor i32 %4936, %4935
  %4938 = xor i32 %4933, %4935
  %4939 = add nuw nsw i32 %4938, %4937
  %4940 = icmp eq i32 %4939, 2
  %4941 = zext i1 %4940 to i8
  store i8 %4941, i8* %17, align 1
  %4942 = add i64 %4906, -76
  %4943 = add i64 %4908, 9
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4942 to i32*
  store i32 %4917, i32* %4944, align 4
  %4945 = load i64, i64* %RBP.i, align 8
  %4946 = add i64 %4945, -60
  %4947 = load i64, i64* %3, align 8
  %4948 = add i64 %4947, 3
  store i64 %4948, i64* %3, align 8
  %4949 = inttoptr i64 %4946 to i32*
  %4950 = load i32, i32* %4949, align 4
  %4951 = zext i32 %4950 to i64
  %4952 = shl nuw i64 %4951, 32
  %4953 = ashr i64 %4952, 33
  %4954 = trunc i32 %4950 to i8
  %4955 = and i8 %4954, 1
  %4956 = trunc i64 %4953 to i32
  %4957 = and i64 %4953, 4294967295
  store i64 %4957, i64* %RAX.i1983, align 8
  store i8 %4955, i8* %12, align 1
  %4958 = and i32 %4956, 255
  %4959 = tail call i32 @llvm.ctpop.i32(i32 %4958)
  %4960 = trunc i32 %4959 to i8
  %4961 = and i8 %4960, 1
  %4962 = xor i8 %4961, 1
  store i8 %4962, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4963 = icmp eq i32 %4956, 0
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %15, align 1
  %4965 = lshr i64 %4953, 31
  %4966 = trunc i64 %4965 to i8
  %4967 = and i8 %4966, 1
  store i8 %4967, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4968 = add i64 %4945, -52
  %4969 = add i64 %4947, 8
  store i64 %4969, i64* %3, align 8
  %4970 = trunc i64 %4953 to i32
  %4971 = inttoptr i64 %4968 to i32*
  %4972 = load i32, i32* %4971, align 4
  %4973 = sub i32 %4970, %4972
  %4974 = zext i32 %4973 to i64
  store i64 %4974, i64* %RAX.i1983, align 8
  %4975 = icmp ult i32 %4970, %4972
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %12, align 1
  %4977 = and i32 %4973, 255
  %4978 = tail call i32 @llvm.ctpop.i32(i32 %4977)
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  %4981 = xor i8 %4980, 1
  store i8 %4981, i8* %13, align 1
  %4982 = xor i32 %4972, %4970
  %4983 = xor i32 %4982, %4973
  %4984 = lshr i32 %4983, 4
  %4985 = trunc i32 %4984 to i8
  %4986 = and i8 %4985, 1
  store i8 %4986, i8* %14, align 1
  %4987 = icmp eq i32 %4973, 0
  %4988 = zext i1 %4987 to i8
  store i8 %4988, i8* %15, align 1
  %4989 = lshr i32 %4973, 31
  %4990 = trunc i32 %4989 to i8
  store i8 %4990, i8* %16, align 1
  %4991 = lshr i64 %4953, 31
  %4992 = trunc i64 %4991 to i32
  %4993 = and i32 %4992, 1
  %4994 = lshr i32 %4972, 31
  %4995 = xor i32 %4994, %4993
  %4996 = xor i32 %4989, %4993
  %4997 = add nuw nsw i32 %4996, %4995
  %4998 = icmp eq i32 %4997, 2
  %4999 = zext i1 %4998 to i8
  store i8 %4999, i8* %17, align 1
  %5000 = add i64 %4945, -72
  %5001 = add i64 %4947, 11
  store i64 %5001, i64* %3, align 8
  %5002 = inttoptr i64 %5000 to i32*
  store i32 %4973, i32* %5002, align 4
  %5003 = load i64, i64* %RBP.i, align 8
  %5004 = add i64 %5003, -60
  %5005 = load i64, i64* %3, align 8
  %5006 = add i64 %5005, 3
  store i64 %5006, i64* %3, align 8
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007, align 4
  %5009 = zext i32 %5008 to i64
  store i64 %5009, i64* %RAX.i1983, align 8
  %5010 = add i64 %5003, -52
  %5011 = add i64 %5005, 6
  store i64 %5011, i64* %3, align 8
  %5012 = inttoptr i64 %5010 to i32*
  %5013 = load i32, i32* %5012, align 4
  %5014 = zext i32 %5013 to i64
  %5015 = shl nuw i64 %5014, 32
  %5016 = ashr i64 %5015, 33
  %5017 = and i64 %5016, 4294967295
  store i64 %5017, i64* %RCX.i2784, align 8
  %5018 = trunc i64 %5016 to i32
  %5019 = add i32 %5018, %5008
  %5020 = zext i32 %5019 to i64
  store i64 %5020, i64* %RAX.i1983, align 8
  %5021 = icmp ult i32 %5019, %5008
  %5022 = icmp ult i32 %5019, %5018
  %5023 = or i1 %5021, %5022
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %12, align 1
  %5025 = and i32 %5019, 255
  %5026 = tail call i32 @llvm.ctpop.i32(i32 %5025)
  %5027 = trunc i32 %5026 to i8
  %5028 = and i8 %5027, 1
  %5029 = xor i8 %5028, 1
  store i8 %5029, i8* %13, align 1
  %5030 = xor i64 %5016, %5009
  %5031 = trunc i64 %5030 to i32
  %5032 = xor i32 %5031, %5019
  %5033 = lshr i32 %5032, 4
  %5034 = trunc i32 %5033 to i8
  %5035 = and i8 %5034, 1
  store i8 %5035, i8* %14, align 1
  %5036 = icmp eq i32 %5019, 0
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %15, align 1
  %5038 = lshr i32 %5019, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %16, align 1
  %5040 = lshr i32 %5008, 31
  %5041 = lshr i64 %5016, 31
  %5042 = trunc i64 %5041 to i32
  %5043 = and i32 %5042, 1
  %5044 = xor i32 %5038, %5040
  %5045 = xor i32 %5038, %5043
  %5046 = add nuw nsw i32 %5044, %5045
  %5047 = icmp eq i32 %5046, 2
  %5048 = zext i1 %5047 to i8
  store i8 %5048, i8* %17, align 1
  %5049 = add i64 %5003, -68
  %5050 = add i64 %5005, 13
  store i64 %5050, i64* %3, align 8
  %5051 = inttoptr i64 %5049 to i32*
  store i32 %5019, i32* %5051, align 4
  %5052 = load i64, i64* %RBP.i, align 8
  %5053 = add i64 %5052, -24
  %5054 = load i64, i64* %3, align 8
  %5055 = add i64 %5054, 7
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5053 to i32*
  store i32 0, i32* %5056, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_406ca2

block_.L_406ca2:                                  ; preds = %block_406cac, %block_.L_406c6f
  %5057 = phi i64 [ %5333, %block_406cac ], [ %.pre170, %block_.L_406c6f ]
  %5058 = load i64, i64* %RBP.i, align 8
  %5059 = add i64 %5058, -24
  %5060 = add i64 %5057, 4
  store i64 %5060, i64* %3, align 8
  %5061 = inttoptr i64 %5059 to i32*
  %5062 = load i32, i32* %5061, align 4
  %5063 = add i32 %5062, -2
  %5064 = icmp ult i32 %5062, 2
  %5065 = zext i1 %5064 to i8
  store i8 %5065, i8* %12, align 1
  %5066 = and i32 %5063, 255
  %5067 = tail call i32 @llvm.ctpop.i32(i32 %5066)
  %5068 = trunc i32 %5067 to i8
  %5069 = and i8 %5068, 1
  %5070 = xor i8 %5069, 1
  store i8 %5070, i8* %13, align 1
  %5071 = xor i32 %5063, %5062
  %5072 = lshr i32 %5071, 4
  %5073 = trunc i32 %5072 to i8
  %5074 = and i8 %5073, 1
  store i8 %5074, i8* %14, align 1
  %5075 = icmp eq i32 %5063, 0
  %5076 = zext i1 %5075 to i8
  store i8 %5076, i8* %15, align 1
  %5077 = lshr i32 %5063, 31
  %5078 = trunc i32 %5077 to i8
  store i8 %5078, i8* %16, align 1
  %5079 = lshr i32 %5062, 31
  %5080 = xor i32 %5077, %5079
  %5081 = add nuw nsw i32 %5080, %5079
  %5082 = icmp eq i32 %5081, 2
  %5083 = zext i1 %5082 to i8
  store i8 %5083, i8* %17, align 1
  %5084 = icmp ne i8 %5078, 0
  %5085 = xor i1 %5084, %5082
  %.v200 = select i1 %5085, i64 10, i64 133
  %5086 = add i64 %5057, %.v200
  %5087 = add i64 %5086, 5
  store i64 %5087, i64* %3, align 8
  br i1 %5085, label %block_406cac, label %block_.L_406d27

block_406cac:                                     ; preds = %block_.L_406ca2
  store i64 3, i64* %RAX.i1983, align 8
  %5088 = add i64 %5086, 8
  store i64 %5088, i64* %3, align 8
  %5089 = load i32, i32* %5061, align 4
  %5090 = sub i32 3, %5089
  %5091 = zext i32 %5090 to i64
  store i64 %5091, i64* %RAX.i1983, align 8
  %5092 = icmp ugt i32 %5089, 3
  %5093 = zext i1 %5092 to i8
  store i8 %5093, i8* %12, align 1
  %5094 = and i32 %5090, 255
  %5095 = tail call i32 @llvm.ctpop.i32(i32 %5094)
  %5096 = trunc i32 %5095 to i8
  %5097 = and i8 %5096, 1
  %5098 = xor i8 %5097, 1
  store i8 %5098, i8* %13, align 1
  %5099 = xor i32 %5090, %5089
  %5100 = lshr i32 %5099, 4
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  store i8 %5102, i8* %14, align 1
  %5103 = icmp eq i32 %5090, 0
  %5104 = zext i1 %5103 to i8
  store i8 %5104, i8* %15, align 1
  %5105 = lshr i32 %5090, 31
  %5106 = trunc i32 %5105 to i8
  store i8 %5106, i8* %16, align 1
  %5107 = lshr i32 %5089, 31
  %5108 = add nuw nsw i32 %5105, %5107
  %5109 = icmp eq i32 %5108, 2
  %5110 = zext i1 %5109 to i8
  store i8 %5110, i8* %17, align 1
  %5111 = add i64 %5058, -32
  %5112 = add i64 %5086, 11
  store i64 %5112, i64* %3, align 8
  %5113 = inttoptr i64 %5111 to i32*
  store i32 %5090, i32* %5113, align 4
  %5114 = load i64, i64* %RBP.i, align 8
  %5115 = add i64 %5114, -24
  %5116 = load i64, i64* %3, align 8
  %5117 = add i64 %5116, 4
  store i64 %5117, i64* %3, align 8
  %5118 = inttoptr i64 %5115 to i32*
  %5119 = load i32, i32* %5118, align 4
  %5120 = sext i32 %5119 to i64
  store i64 %5120, i64* %RCX.i2784, align 8
  %5121 = shl nsw i64 %5120, 2
  %5122 = add i64 %5114, -80
  %5123 = add i64 %5122, %5121
  %5124 = add i64 %5116, 8
  store i64 %5124, i64* %3, align 8
  %5125 = inttoptr i64 %5123 to i32*
  %5126 = load i32, i32* %5125, align 4
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RAX.i1983, align 8
  %5128 = add i64 %5114, -32
  %5129 = add i64 %5116, 12
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i32*
  %5131 = load i32, i32* %5130, align 4
  %5132 = sext i32 %5131 to i64
  store i64 %5132, i64* %RCX.i2784, align 8
  %5133 = shl nsw i64 %5132, 2
  %5134 = add nsw i64 %5133, -80
  %5135 = add i64 %5134, %5114
  %5136 = add i64 %5116, 16
  store i64 %5136, i64* %3, align 8
  %5137 = inttoptr i64 %5135 to i32*
  %5138 = load i32, i32* %5137, align 4
  %5139 = add i32 %5138, %5126
  %5140 = zext i32 %5139 to i64
  store i64 %5140, i64* %RAX.i1983, align 8
  %5141 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5142 = add i64 %5141, 13112
  store i64 %5142, i64* %RCX.i2784, align 8
  %5143 = icmp ugt i64 %5141, -13113
  %5144 = zext i1 %5143 to i8
  store i8 %5144, i8* %12, align 1
  %5145 = trunc i64 %5142 to i32
  %5146 = and i32 %5145, 255
  %5147 = tail call i32 @llvm.ctpop.i32(i32 %5146)
  %5148 = trunc i32 %5147 to i8
  %5149 = and i8 %5148, 1
  %5150 = xor i8 %5149, 1
  store i8 %5150, i8* %13, align 1
  %5151 = xor i64 %5141, 16
  %5152 = xor i64 %5151, %5142
  %5153 = lshr i64 %5152, 4
  %5154 = trunc i64 %5153 to i8
  %5155 = and i8 %5154, 1
  store i8 %5155, i8* %14, align 1
  %5156 = icmp eq i64 %5142, 0
  %5157 = zext i1 %5156 to i8
  store i8 %5157, i8* %15, align 1
  %5158 = lshr i64 %5142, 63
  %5159 = trunc i64 %5158 to i8
  store i8 %5159, i8* %16, align 1
  %5160 = lshr i64 %5141, 63
  %5161 = xor i64 %5158, %5160
  %5162 = add nuw nsw i64 %5161, %5158
  %5163 = icmp eq i64 %5162, 2
  %5164 = zext i1 %5163 to i8
  store i8 %5164, i8* %17, align 1
  %5165 = load i64, i64* %RBP.i, align 8
  %5166 = add i64 %5165, -24
  %5167 = add i64 %5116, 35
  store i64 %5167, i64* %3, align 8
  %5168 = inttoptr i64 %5166 to i32*
  %5169 = load i32, i32* %5168, align 4
  %5170 = sext i32 %5169 to i64
  %5171 = shl nsw i64 %5170, 6
  store i64 %5171, i64* %RDX.i2756, align 8
  %5172 = add i64 %5171, %5142
  store i64 %5172, i64* %RCX.i2784, align 8
  %5173 = icmp ult i64 %5172, %5142
  %5174 = icmp ult i64 %5172, %5171
  %5175 = or i1 %5173, %5174
  %5176 = zext i1 %5175 to i8
  store i8 %5176, i8* %12, align 1
  %5177 = trunc i64 %5172 to i32
  %5178 = and i32 %5177, 255
  %5179 = tail call i32 @llvm.ctpop.i32(i32 %5178)
  %5180 = trunc i32 %5179 to i8
  %5181 = and i8 %5180, 1
  %5182 = xor i8 %5181, 1
  store i8 %5182, i8* %13, align 1
  %5183 = xor i64 %5142, %5172
  %5184 = lshr i64 %5183, 4
  %5185 = trunc i64 %5184 to i8
  %5186 = and i8 %5185, 1
  store i8 %5186, i8* %14, align 1
  %5187 = icmp eq i64 %5172, 0
  %5188 = zext i1 %5187 to i8
  store i8 %5188, i8* %15, align 1
  %5189 = lshr i64 %5172, 63
  %5190 = trunc i64 %5189 to i8
  store i8 %5190, i8* %16, align 1
  %5191 = lshr i64 %5170, 57
  %5192 = and i64 %5191, 1
  %5193 = xor i64 %5189, %5158
  %5194 = xor i64 %5189, %5192
  %5195 = add nuw nsw i64 %5193, %5194
  %5196 = icmp eq i64 %5195, 2
  %5197 = zext i1 %5196 to i8
  store i8 %5197, i8* %17, align 1
  %5198 = add i64 %5165, -28
  %5199 = add i64 %5116, 46
  store i64 %5199, i64* %3, align 8
  %5200 = inttoptr i64 %5198 to i32*
  %5201 = load i32, i32* %5200, align 4
  %5202 = sext i32 %5201 to i64
  store i64 %5202, i64* %RDX.i2756, align 8
  %5203 = shl nsw i64 %5202, 2
  %5204 = add i64 %5203, %5172
  %5205 = load i32, i32* %EAX.i1982, align 4
  %5206 = add i64 %5116, 49
  store i64 %5206, i64* %3, align 8
  %5207 = inttoptr i64 %5204 to i32*
  store i32 %5205, i32* %5207, align 4
  %5208 = load i64, i64* %RBP.i, align 8
  %5209 = add i64 %5208, -24
  %5210 = load i64, i64* %3, align 8
  %5211 = add i64 %5210, 4
  store i64 %5211, i64* %3, align 8
  %5212 = inttoptr i64 %5209 to i32*
  %5213 = load i32, i32* %5212, align 4
  %5214 = sext i32 %5213 to i64
  store i64 %5214, i64* %RCX.i2784, align 8
  %5215 = shl nsw i64 %5214, 2
  %5216 = add i64 %5208, -80
  %5217 = add i64 %5216, %5215
  %5218 = add i64 %5210, 8
  store i64 %5218, i64* %3, align 8
  %5219 = inttoptr i64 %5217 to i32*
  %5220 = load i32, i32* %5219, align 4
  %5221 = zext i32 %5220 to i64
  store i64 %5221, i64* %RAX.i1983, align 8
  %5222 = add i64 %5208, -32
  %5223 = add i64 %5210, 12
  store i64 %5223, i64* %3, align 8
  %5224 = inttoptr i64 %5222 to i32*
  %5225 = load i32, i32* %5224, align 4
  %5226 = sext i32 %5225 to i64
  store i64 %5226, i64* %RCX.i2784, align 8
  %5227 = shl nsw i64 %5226, 2
  %5228 = add nsw i64 %5227, -80
  %5229 = add i64 %5228, %5208
  %5230 = add i64 %5210, 16
  store i64 %5230, i64* %3, align 8
  %5231 = inttoptr i64 %5229 to i32*
  %5232 = load i32, i32* %5231, align 4
  %5233 = sub i32 %5220, %5232
  %5234 = zext i32 %5233 to i64
  store i64 %5234, i64* %RAX.i1983, align 8
  %5235 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5236 = add i64 %5235, 13112
  store i64 %5236, i64* %RCX.i2784, align 8
  %5237 = icmp ugt i64 %5235, -13113
  %5238 = zext i1 %5237 to i8
  store i8 %5238, i8* %12, align 1
  %5239 = trunc i64 %5236 to i32
  %5240 = and i32 %5239, 255
  %5241 = tail call i32 @llvm.ctpop.i32(i32 %5240)
  %5242 = trunc i32 %5241 to i8
  %5243 = and i8 %5242, 1
  %5244 = xor i8 %5243, 1
  store i8 %5244, i8* %13, align 1
  %5245 = xor i64 %5235, 16
  %5246 = xor i64 %5245, %5236
  %5247 = lshr i64 %5246, 4
  %5248 = trunc i64 %5247 to i8
  %5249 = and i8 %5248, 1
  store i8 %5249, i8* %14, align 1
  %5250 = icmp eq i64 %5236, 0
  %5251 = zext i1 %5250 to i8
  store i8 %5251, i8* %15, align 1
  %5252 = lshr i64 %5236, 63
  %5253 = trunc i64 %5252 to i8
  store i8 %5253, i8* %16, align 1
  %5254 = lshr i64 %5235, 63
  %5255 = xor i64 %5252, %5254
  %5256 = add nuw nsw i64 %5255, %5252
  %5257 = icmp eq i64 %5256, 2
  %5258 = zext i1 %5257 to i8
  store i8 %5258, i8* %17, align 1
  %5259 = load i64, i64* %RBP.i, align 8
  %5260 = add i64 %5259, -32
  %5261 = add i64 %5210, 35
  store i64 %5261, i64* %3, align 8
  %5262 = inttoptr i64 %5260 to i32*
  %5263 = load i32, i32* %5262, align 4
  %5264 = sext i32 %5263 to i64
  %5265 = shl nsw i64 %5264, 6
  store i64 %5265, i64* %RDX.i2756, align 8
  %5266 = add i64 %5265, %5236
  store i64 %5266, i64* %RCX.i2784, align 8
  %5267 = icmp ult i64 %5266, %5236
  %5268 = icmp ult i64 %5266, %5265
  %5269 = or i1 %5267, %5268
  %5270 = zext i1 %5269 to i8
  store i8 %5270, i8* %12, align 1
  %5271 = trunc i64 %5266 to i32
  %5272 = and i32 %5271, 255
  %5273 = tail call i32 @llvm.ctpop.i32(i32 %5272)
  %5274 = trunc i32 %5273 to i8
  %5275 = and i8 %5274, 1
  %5276 = xor i8 %5275, 1
  store i8 %5276, i8* %13, align 1
  %5277 = xor i64 %5236, %5266
  %5278 = lshr i64 %5277, 4
  %5279 = trunc i64 %5278 to i8
  %5280 = and i8 %5279, 1
  store i8 %5280, i8* %14, align 1
  %5281 = icmp eq i64 %5266, 0
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %15, align 1
  %5283 = lshr i64 %5266, 63
  %5284 = trunc i64 %5283 to i8
  store i8 %5284, i8* %16, align 1
  %5285 = lshr i64 %5264, 57
  %5286 = and i64 %5285, 1
  %5287 = xor i64 %5283, %5252
  %5288 = xor i64 %5283, %5286
  %5289 = add nuw nsw i64 %5287, %5288
  %5290 = icmp eq i64 %5289, 2
  %5291 = zext i1 %5290 to i8
  store i8 %5291, i8* %17, align 1
  %5292 = add i64 %5259, -28
  %5293 = add i64 %5210, 46
  store i64 %5293, i64* %3, align 8
  %5294 = inttoptr i64 %5292 to i32*
  %5295 = load i32, i32* %5294, align 4
  %5296 = sext i32 %5295 to i64
  store i64 %5296, i64* %RDX.i2756, align 8
  %5297 = shl nsw i64 %5296, 2
  %5298 = add i64 %5297, %5266
  %5299 = load i32, i32* %EAX.i1982, align 4
  %5300 = add i64 %5210, 49
  store i64 %5300, i64* %3, align 8
  %5301 = inttoptr i64 %5298 to i32*
  store i32 %5299, i32* %5301, align 4
  %5302 = load i64, i64* %RBP.i, align 8
  %5303 = add i64 %5302, -24
  %5304 = load i64, i64* %3, align 8
  %5305 = add i64 %5304, 3
  store i64 %5305, i64* %3, align 8
  %5306 = inttoptr i64 %5303 to i32*
  %5307 = load i32, i32* %5306, align 4
  %5308 = add i32 %5307, 1
  %5309 = zext i32 %5308 to i64
  store i64 %5309, i64* %RAX.i1983, align 8
  %5310 = icmp eq i32 %5307, -1
  %5311 = icmp eq i32 %5308, 0
  %5312 = or i1 %5310, %5311
  %5313 = zext i1 %5312 to i8
  store i8 %5313, i8* %12, align 1
  %5314 = and i32 %5308, 255
  %5315 = tail call i32 @llvm.ctpop.i32(i32 %5314)
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  %5318 = xor i8 %5317, 1
  store i8 %5318, i8* %13, align 1
  %5319 = xor i32 %5308, %5307
  %5320 = lshr i32 %5319, 4
  %5321 = trunc i32 %5320 to i8
  %5322 = and i8 %5321, 1
  store i8 %5322, i8* %14, align 1
  %5323 = zext i1 %5311 to i8
  store i8 %5323, i8* %15, align 1
  %5324 = lshr i32 %5308, 31
  %5325 = trunc i32 %5324 to i8
  store i8 %5325, i8* %16, align 1
  %5326 = lshr i32 %5307, 31
  %5327 = xor i32 %5324, %5326
  %5328 = add nuw nsw i32 %5327, %5324
  %5329 = icmp eq i32 %5328, 2
  %5330 = zext i1 %5329 to i8
  store i8 %5330, i8* %17, align 1
  %5331 = add i64 %5304, 9
  store i64 %5331, i64* %3, align 8
  store i32 %5308, i32* %5306, align 4
  %5332 = load i64, i64* %3, align 8
  %5333 = add i64 %5332, -128
  store i64 %5333, i64* %3, align 8
  br label %block_.L_406ca2

block_.L_406d27:                                  ; preds = %block_.L_406ca2
  %5334 = add i64 %5058, -28
  %5335 = add i64 %5086, 8
  store i64 %5335, i64* %3, align 8
  %5336 = inttoptr i64 %5334 to i32*
  %5337 = load i32, i32* %5336, align 4
  %5338 = add i32 %5337, 1
  %5339 = zext i32 %5338 to i64
  store i64 %5339, i64* %RAX.i1983, align 8
  %5340 = icmp eq i32 %5337, -1
  %5341 = icmp eq i32 %5338, 0
  %5342 = or i1 %5340, %5341
  %5343 = zext i1 %5342 to i8
  store i8 %5343, i8* %12, align 1
  %5344 = and i32 %5338, 255
  %5345 = tail call i32 @llvm.ctpop.i32(i32 %5344)
  %5346 = trunc i32 %5345 to i8
  %5347 = and i8 %5346, 1
  %5348 = xor i8 %5347, 1
  store i8 %5348, i8* %13, align 1
  %5349 = xor i32 %5338, %5337
  %5350 = lshr i32 %5349, 4
  %5351 = trunc i32 %5350 to i8
  %5352 = and i8 %5351, 1
  store i8 %5352, i8* %14, align 1
  %5353 = zext i1 %5341 to i8
  store i8 %5353, i8* %15, align 1
  %5354 = lshr i32 %5338, 31
  %5355 = trunc i32 %5354 to i8
  store i8 %5355, i8* %16, align 1
  %5356 = lshr i32 %5337, 31
  %5357 = xor i32 %5354, %5356
  %5358 = add nuw nsw i32 %5357, %5354
  %5359 = icmp eq i32 %5358, 2
  %5360 = zext i1 %5359 to i8
  store i8 %5360, i8* %17, align 1
  %5361 = add i64 %5086, 14
  store i64 %5361, i64* %3, align 8
  store i32 %5338, i32* %5336, align 4
  %5362 = load i64, i64* %3, align 8
  %5363 = add i64 %5362, -326
  store i64 %5363, i64* %3, align 8
  br label %block_.L_406bef

block_.L_406d41:                                  ; preds = %block_.L_407329, %block_406c23
  %5364 = phi i64 [ %7966, %block_.L_407329 ], [ %.pre155, %block_406c23 ]
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i2535, align 1
  %5365 = load i64, i64* %RBP.i, align 8
  %5366 = add i64 %5365, -24
  %5367 = add i64 %5364, 8
  store i64 %5367, i64* %3, align 8
  %5368 = inttoptr i64 %5366 to i32*
  %5369 = load i32, i32* %5368, align 4
  %5370 = add i32 %5369, -4
  %5371 = icmp ult i32 %5369, 4
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %12, align 1
  %5373 = and i32 %5370, 255
  %5374 = tail call i32 @llvm.ctpop.i32(i32 %5373)
  %5375 = trunc i32 %5374 to i8
  %5376 = and i8 %5375, 1
  %5377 = xor i8 %5376, 1
  store i8 %5377, i8* %13, align 1
  %5378 = xor i32 %5370, %5369
  %5379 = lshr i32 %5378, 4
  %5380 = trunc i32 %5379 to i8
  %5381 = and i8 %5380, 1
  store i8 %5381, i8* %14, align 1
  %5382 = icmp eq i32 %5370, 0
  %5383 = zext i1 %5382 to i8
  store i8 %5383, i8* %15, align 1
  %5384 = lshr i32 %5370, 31
  %5385 = trunc i32 %5384 to i8
  store i8 %5385, i8* %16, align 1
  %5386 = lshr i32 %5369, 31
  %5387 = xor i32 %5384, %5386
  %5388 = add nuw nsw i32 %5387, %5386
  %5389 = icmp eq i32 %5388, 2
  %5390 = zext i1 %5389 to i8
  store i8 %5390, i8* %17, align 1
  %5391 = add i64 %5365, -190
  %5392 = add i64 %5364, 14
  store i64 %5392, i64* %3, align 8
  %5393 = inttoptr i64 %5391 to i8*
  store i8 0, i8* %5393, align 1
  %5394 = load i64, i64* %3, align 8
  %5395 = add i64 %5394, 24
  %5396 = add i64 %5394, 6
  %5397 = load i8, i8* %16, align 1
  %5398 = icmp ne i8 %5397, 0
  %5399 = load i8, i8* %17, align 1
  %5400 = icmp ne i8 %5399, 0
  %5401 = xor i1 %5398, %5400
  %5402 = select i1 %5401, i64 %5396, i64 %5395
  store i64 %5402, i64* %3, align 8
  br i1 %5401, label %block_406d55, label %block_.L_406d67

block_406d55:                                     ; preds = %block_.L_406d41
  %5403 = load i64, i64* %RBP.i, align 8
  %5404 = add i64 %5403, -156
  %5405 = add i64 %5402, 7
  store i64 %5405, i64* %3, align 8
  %5406 = inttoptr i64 %5404 to i32*
  %5407 = load i32, i32* %5406, align 4
  %5408 = icmp ne i32 %5407, 0
  %5409 = zext i1 %5408 to i64
  %5410 = xor i64 %5409, 255
  %5411 = trunc i64 %5410 to i8
  store i8 %5411, i8* %AL.i2555, align 1
  store i8 0, i8* %12, align 1
  %5412 = trunc i64 %5410 to i32
  %5413 = tail call i32 @llvm.ctpop.i32(i32 %5412)
  %5414 = trunc i32 %5413 to i8
  %5415 = and i8 %5414, 1
  %5416 = xor i8 %5415, 1
  store i8 %5416, i8* %13, align 1
  store i8 0, i8* %15, align 1
  store i8 1, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %5417 = add i64 %5403, -190
  %5418 = add i64 %5402, 18
  store i64 %5418, i64* %3, align 8
  %5419 = inttoptr i64 %5417 to i8*
  store i8 %5411, i8* %5419, align 1
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_406d67

block_.L_406d67:                                  ; preds = %block_.L_406d41, %block_406d55
  %5420 = phi i64 [ %5395, %block_.L_406d41 ], [ %.pre156, %block_406d55 ]
  %5421 = load i64, i64* %RBP.i, align 8
  %5422 = add i64 %5421, -190
  %5423 = add i64 %5420, 6
  store i64 %5423, i64* %3, align 8
  %5424 = inttoptr i64 %5422 to i8*
  %5425 = load i8, i8* %5424, align 1
  store i8 %5425, i8* %AL.i2555, align 1
  %5426 = and i8 %5425, 1
  store i8 0, i8* %12, align 1
  %5427 = zext i8 %5426 to i32
  %5428 = tail call i32 @llvm.ctpop.i32(i32 %5427)
  %5429 = trunc i32 %5428 to i8
  %5430 = xor i8 %5429, 1
  store i8 %5430, i8* %13, align 1
  %5431 = xor i8 %5426, 1
  store i8 %5431, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %5432 = icmp eq i8 %5431, 0
  %.v189 = select i1 %5432, i64 19, i64 14
  %5433 = add i64 %5420, %.v189
  store i64 %5433, i64* %3, align 8
  br i1 %5432, label %block_.L_406d7a, label %block_406d75

block_406d75:                                     ; preds = %block_.L_406d67
  %5434 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5434, i64* %RAX.i1983, align 8
  %5435 = add i64 %5434, 72724
  %5436 = add i64 %5433, 1494
  store i64 %5436, i64* %3, align 8
  %5437 = inttoptr i64 %5435 to i32*
  %5438 = load i32, i32* %5437, align 4
  store i8 0, i8* %12, align 1
  %5439 = and i32 %5438, 255
  %5440 = tail call i32 @llvm.ctpop.i32(i32 %5439)
  %5441 = trunc i32 %5440 to i8
  %5442 = and i8 %5441, 1
  %5443 = xor i8 %5442, 1
  store i8 %5443, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5444 = icmp eq i32 %5438, 0
  %5445 = zext i1 %5444 to i8
  store i8 %5445, i8* %15, align 1
  %5446 = lshr i32 %5438, 31
  %5447 = trunc i32 %5446 to i8
  store i8 %5447, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v190 = select i1 %5444, i64 1500, i64 1848
  %5448 = add i64 %5433, %.v190
  store i64 %5448, i64* %3, align 8
  br i1 %5444, label %block_407351, label %block_.L_4074ad

block_.L_406d7a:                                  ; preds = %block_.L_406d67
  %5449 = add i64 %5421, -28
  %5450 = add i64 %5433, 7
  store i64 %5450, i64* %3, align 8
  %5451 = inttoptr i64 %5449 to i32*
  store i32 0, i32* %5451, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_406d81

block_.L_406d81:                                  ; preds = %block_406d8b, %block_.L_406d7a
  %5452 = phi i64 [ %5589, %block_406d8b ], [ %.pre160, %block_.L_406d7a ]
  %5453 = load i64, i64* %RBP.i, align 8
  %5454 = add i64 %5453, -28
  %5455 = add i64 %5452, 4
  store i64 %5455, i64* %3, align 8
  %5456 = inttoptr i64 %5454 to i32*
  %5457 = load i32, i32* %5456, align 4
  %5458 = add i32 %5457, -4
  %5459 = icmp ult i32 %5457, 4
  %5460 = zext i1 %5459 to i8
  store i8 %5460, i8* %12, align 1
  %5461 = and i32 %5458, 255
  %5462 = tail call i32 @llvm.ctpop.i32(i32 %5461)
  %5463 = trunc i32 %5462 to i8
  %5464 = and i8 %5463, 1
  %5465 = xor i8 %5464, 1
  store i8 %5465, i8* %13, align 1
  %5466 = xor i32 %5458, %5457
  %5467 = lshr i32 %5466, 4
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  store i8 %5469, i8* %14, align 1
  %5470 = icmp eq i32 %5458, 0
  %5471 = zext i1 %5470 to i8
  store i8 %5471, i8* %15, align 1
  %5472 = lshr i32 %5458, 31
  %5473 = trunc i32 %5472 to i8
  store i8 %5473, i8* %16, align 1
  %5474 = lshr i32 %5457, 31
  %5475 = xor i32 %5472, %5474
  %5476 = add nuw nsw i32 %5475, %5474
  %5477 = icmp eq i32 %5476, 2
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %17, align 1
  %5479 = icmp ne i8 %5473, 0
  %5480 = xor i1 %5479, %5477
  %.v193 = select i1 %5480, i64 10, i64 64
  %5481 = add i64 %5452, %.v193
  store i64 %5481, i64* %3, align 8
  br i1 %5480, label %block_406d8b, label %block_.L_406dc1

block_406d8b:                                     ; preds = %block_.L_406d81
  %5482 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5483 = add i64 %5482, 13112
  store i64 %5483, i64* %RAX.i1983, align 8
  %5484 = icmp ugt i64 %5482, -13113
  %5485 = zext i1 %5484 to i8
  store i8 %5485, i8* %12, align 1
  %5486 = trunc i64 %5483 to i32
  %5487 = and i32 %5486, 255
  %5488 = tail call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  store i8 %5491, i8* %13, align 1
  %5492 = xor i64 %5482, 16
  %5493 = xor i64 %5492, %5483
  %5494 = lshr i64 %5493, 4
  %5495 = trunc i64 %5494 to i8
  %5496 = and i8 %5495, 1
  store i8 %5496, i8* %14, align 1
  %5497 = icmp eq i64 %5483, 0
  %5498 = zext i1 %5497 to i8
  store i8 %5498, i8* %15, align 1
  %5499 = lshr i64 %5483, 63
  %5500 = trunc i64 %5499 to i8
  store i8 %5500, i8* %16, align 1
  %5501 = lshr i64 %5482, 63
  %5502 = xor i64 %5499, %5501
  %5503 = add nuw nsw i64 %5502, %5499
  %5504 = icmp eq i64 %5503, 2
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %17, align 1
  %5506 = add i64 %5453, -24
  %5507 = add i64 %5481, 18
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = sext i32 %5509 to i64
  %5511 = shl nsw i64 %5510, 6
  store i64 %5511, i64* %RCX.i2784, align 8
  %5512 = add i64 %5511, %5483
  store i64 %5512, i64* %RAX.i1983, align 8
  %5513 = icmp ult i64 %5512, %5483
  %5514 = icmp ult i64 %5512, %5511
  %5515 = or i1 %5513, %5514
  %5516 = zext i1 %5515 to i8
  store i8 %5516, i8* %12, align 1
  %5517 = trunc i64 %5512 to i32
  %5518 = and i32 %5517, 255
  %5519 = tail call i32 @llvm.ctpop.i32(i32 %5518)
  %5520 = trunc i32 %5519 to i8
  %5521 = and i8 %5520, 1
  %5522 = xor i8 %5521, 1
  store i8 %5522, i8* %13, align 1
  %5523 = xor i64 %5483, %5512
  %5524 = lshr i64 %5523, 4
  %5525 = trunc i64 %5524 to i8
  %5526 = and i8 %5525, 1
  store i8 %5526, i8* %14, align 1
  %5527 = icmp eq i64 %5512, 0
  %5528 = zext i1 %5527 to i8
  store i8 %5528, i8* %15, align 1
  %5529 = lshr i64 %5512, 63
  %5530 = trunc i64 %5529 to i8
  store i8 %5530, i8* %16, align 1
  %5531 = lshr i64 %5510, 57
  %5532 = and i64 %5531, 1
  %5533 = xor i64 %5529, %5499
  %5534 = xor i64 %5529, %5532
  %5535 = add nuw nsw i64 %5533, %5534
  %5536 = icmp eq i64 %5535, 2
  %5537 = zext i1 %5536 to i8
  store i8 %5537, i8* %17, align 1
  %5538 = load i64, i64* %RBP.i, align 8
  %5539 = add i64 %5538, -28
  %5540 = add i64 %5481, 29
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5539 to i32*
  %5542 = load i32, i32* %5541, align 4
  %5543 = sext i32 %5542 to i64
  store i64 %5543, i64* %RCX.i2784, align 8
  %5544 = shl nsw i64 %5543, 2
  %5545 = add i64 %5544, %5512
  %5546 = add i64 %5481, 32
  store i64 %5546, i64* %3, align 8
  %5547 = inttoptr i64 %5545 to i32*
  %5548 = load i32, i32* %5547, align 4
  %5549 = zext i32 %5548 to i64
  store i64 %5549, i64* %RDX.i2756, align 8
  %5550 = add i64 %5481, 36
  store i64 %5550, i64* %3, align 8
  %5551 = load i32, i32* %5541, align 4
  %5552 = sext i32 %5551 to i64
  store i64 %5552, i64* %RAX.i1983, align 8
  %5553 = shl nsw i64 %5552, 2
  %5554 = add i64 %5538, -64
  %5555 = add i64 %5554, %5553
  %5556 = add i64 %5481, 40
  store i64 %5556, i64* %3, align 8
  %5557 = inttoptr i64 %5555 to i32*
  store i32 %5548, i32* %5557, align 4
  %5558 = load i64, i64* %RBP.i, align 8
  %5559 = add i64 %5558, -28
  %5560 = load i64, i64* %3, align 8
  %5561 = add i64 %5560, 3
  store i64 %5561, i64* %3, align 8
  %5562 = inttoptr i64 %5559 to i32*
  %5563 = load i32, i32* %5562, align 4
  %5564 = add i32 %5563, 1
  %5565 = zext i32 %5564 to i64
  store i64 %5565, i64* %RAX.i1983, align 8
  %5566 = icmp eq i32 %5563, -1
  %5567 = icmp eq i32 %5564, 0
  %5568 = or i1 %5566, %5567
  %5569 = zext i1 %5568 to i8
  store i8 %5569, i8* %12, align 1
  %5570 = and i32 %5564, 255
  %5571 = tail call i32 @llvm.ctpop.i32(i32 %5570)
  %5572 = trunc i32 %5571 to i8
  %5573 = and i8 %5572, 1
  %5574 = xor i8 %5573, 1
  store i8 %5574, i8* %13, align 1
  %5575 = xor i32 %5564, %5563
  %5576 = lshr i32 %5575, 4
  %5577 = trunc i32 %5576 to i8
  %5578 = and i8 %5577, 1
  store i8 %5578, i8* %14, align 1
  %5579 = zext i1 %5567 to i8
  store i8 %5579, i8* %15, align 1
  %5580 = lshr i32 %5564, 31
  %5581 = trunc i32 %5580 to i8
  store i8 %5581, i8* %16, align 1
  %5582 = lshr i32 %5563, 31
  %5583 = xor i32 %5580, %5582
  %5584 = add nuw nsw i32 %5583, %5580
  %5585 = icmp eq i32 %5584, 2
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %17, align 1
  %5587 = add i64 %5560, 9
  store i64 %5587, i64* %3, align 8
  store i32 %5564, i32* %5562, align 4
  %5588 = load i64, i64* %3, align 8
  %5589 = add i64 %5588, -59
  store i64 %5589, i64* %3, align 8
  br label %block_.L_406d81

block_.L_406dc1:                                  ; preds = %block_.L_406d81
  %5590 = add i64 %5453, -64
  %5591 = add i64 %5481, 3
  store i64 %5591, i64* %3, align 8
  %5592 = inttoptr i64 %5590 to i32*
  %5593 = load i32, i32* %5592, align 4
  %5594 = zext i32 %5593 to i64
  store i64 %5594, i64* %RAX.i1983, align 8
  %5595 = add i64 %5453, -56
  %5596 = add i64 %5481, 6
  store i64 %5596, i64* %3, align 8
  %5597 = inttoptr i64 %5595 to i32*
  %5598 = load i32, i32* %5597, align 4
  %5599 = add i32 %5598, %5593
  %5600 = zext i32 %5599 to i64
  store i64 %5600, i64* %RAX.i1983, align 8
  %5601 = icmp ult i32 %5599, %5593
  %5602 = icmp ult i32 %5599, %5598
  %5603 = or i1 %5601, %5602
  %5604 = zext i1 %5603 to i8
  store i8 %5604, i8* %12, align 1
  %5605 = and i32 %5599, 255
  %5606 = tail call i32 @llvm.ctpop.i32(i32 %5605)
  %5607 = trunc i32 %5606 to i8
  %5608 = and i8 %5607, 1
  %5609 = xor i8 %5608, 1
  store i8 %5609, i8* %13, align 1
  %5610 = xor i32 %5598, %5593
  %5611 = xor i32 %5610, %5599
  %5612 = lshr i32 %5611, 4
  %5613 = trunc i32 %5612 to i8
  %5614 = and i8 %5613, 1
  store i8 %5614, i8* %14, align 1
  %5615 = icmp eq i32 %5599, 0
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %15, align 1
  %5617 = lshr i32 %5599, 31
  %5618 = trunc i32 %5617 to i8
  store i8 %5618, i8* %16, align 1
  %5619 = lshr i32 %5593, 31
  %5620 = lshr i32 %5598, 31
  %5621 = xor i32 %5617, %5619
  %5622 = xor i32 %5617, %5620
  %5623 = add nuw nsw i32 %5621, %5622
  %5624 = icmp eq i32 %5623, 2
  %5625 = zext i1 %5624 to i8
  store i8 %5625, i8* %17, align 1
  %5626 = add i64 %5453, -80
  %5627 = add i64 %5481, 9
  store i64 %5627, i64* %3, align 8
  %5628 = inttoptr i64 %5626 to i32*
  store i32 %5599, i32* %5628, align 4
  %5629 = load i64, i64* %RBP.i, align 8
  %5630 = add i64 %5629, -64
  %5631 = load i64, i64* %3, align 8
  %5632 = add i64 %5631, 3
  store i64 %5632, i64* %3, align 8
  %5633 = inttoptr i64 %5630 to i32*
  %5634 = load i32, i32* %5633, align 4
  %5635 = zext i32 %5634 to i64
  store i64 %5635, i64* %RAX.i1983, align 8
  %5636 = add i64 %5629, -56
  %5637 = add i64 %5631, 6
  store i64 %5637, i64* %3, align 8
  %5638 = inttoptr i64 %5636 to i32*
  %5639 = load i32, i32* %5638, align 4
  %5640 = sub i32 %5634, %5639
  %5641 = zext i32 %5640 to i64
  store i64 %5641, i64* %RAX.i1983, align 8
  %5642 = icmp ult i32 %5634, %5639
  %5643 = zext i1 %5642 to i8
  store i8 %5643, i8* %12, align 1
  %5644 = and i32 %5640, 255
  %5645 = tail call i32 @llvm.ctpop.i32(i32 %5644)
  %5646 = trunc i32 %5645 to i8
  %5647 = and i8 %5646, 1
  %5648 = xor i8 %5647, 1
  store i8 %5648, i8* %13, align 1
  %5649 = xor i32 %5639, %5634
  %5650 = xor i32 %5649, %5640
  %5651 = lshr i32 %5650, 4
  %5652 = trunc i32 %5651 to i8
  %5653 = and i8 %5652, 1
  store i8 %5653, i8* %14, align 1
  %5654 = icmp eq i32 %5640, 0
  %5655 = zext i1 %5654 to i8
  store i8 %5655, i8* %15, align 1
  %5656 = lshr i32 %5640, 31
  %5657 = trunc i32 %5656 to i8
  store i8 %5657, i8* %16, align 1
  %5658 = lshr i32 %5634, 31
  %5659 = lshr i32 %5639, 31
  %5660 = xor i32 %5659, %5658
  %5661 = xor i32 %5656, %5658
  %5662 = add nuw nsw i32 %5661, %5660
  %5663 = icmp eq i32 %5662, 2
  %5664 = zext i1 %5663 to i8
  store i8 %5664, i8* %17, align 1
  %5665 = add i64 %5629, -76
  %5666 = add i64 %5631, 9
  store i64 %5666, i64* %3, align 8
  %5667 = inttoptr i64 %5665 to i32*
  store i32 %5640, i32* %5667, align 4
  %5668 = load i64, i64* %RBP.i, align 8
  %5669 = add i64 %5668, -60
  %5670 = load i64, i64* %3, align 8
  %5671 = add i64 %5670, 3
  store i64 %5671, i64* %3, align 8
  %5672 = inttoptr i64 %5669 to i32*
  %5673 = load i32, i32* %5672, align 4
  %5674 = zext i32 %5673 to i64
  %5675 = shl nuw i64 %5674, 32
  %5676 = ashr i64 %5675, 33
  %5677 = trunc i32 %5673 to i8
  %5678 = and i8 %5677, 1
  %5679 = trunc i64 %5676 to i32
  %5680 = and i64 %5676, 4294967295
  store i64 %5680, i64* %RAX.i1983, align 8
  store i8 %5678, i8* %12, align 1
  %5681 = and i32 %5679, 255
  %5682 = tail call i32 @llvm.ctpop.i32(i32 %5681)
  %5683 = trunc i32 %5682 to i8
  %5684 = and i8 %5683, 1
  %5685 = xor i8 %5684, 1
  store i8 %5685, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5686 = icmp eq i32 %5679, 0
  %5687 = zext i1 %5686 to i8
  store i8 %5687, i8* %15, align 1
  %5688 = lshr i64 %5676, 31
  %5689 = trunc i64 %5688 to i8
  %5690 = and i8 %5689, 1
  store i8 %5690, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %5691 = add i64 %5668, -52
  %5692 = add i64 %5670, 8
  store i64 %5692, i64* %3, align 8
  %5693 = trunc i64 %5676 to i32
  %5694 = inttoptr i64 %5691 to i32*
  %5695 = load i32, i32* %5694, align 4
  %5696 = sub i32 %5693, %5695
  %5697 = zext i32 %5696 to i64
  store i64 %5697, i64* %RAX.i1983, align 8
  %5698 = icmp ult i32 %5693, %5695
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %12, align 1
  %5700 = and i32 %5696, 255
  %5701 = tail call i32 @llvm.ctpop.i32(i32 %5700)
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = xor i8 %5703, 1
  store i8 %5704, i8* %13, align 1
  %5705 = xor i32 %5695, %5693
  %5706 = xor i32 %5705, %5696
  %5707 = lshr i32 %5706, 4
  %5708 = trunc i32 %5707 to i8
  %5709 = and i8 %5708, 1
  store i8 %5709, i8* %14, align 1
  %5710 = icmp eq i32 %5696, 0
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %15, align 1
  %5712 = lshr i32 %5696, 31
  %5713 = trunc i32 %5712 to i8
  store i8 %5713, i8* %16, align 1
  %5714 = lshr i64 %5676, 31
  %5715 = trunc i64 %5714 to i32
  %5716 = and i32 %5715, 1
  %5717 = lshr i32 %5695, 31
  %5718 = xor i32 %5717, %5716
  %5719 = xor i32 %5712, %5716
  %5720 = add nuw nsw i32 %5719, %5718
  %5721 = icmp eq i32 %5720, 2
  %5722 = zext i1 %5721 to i8
  store i8 %5722, i8* %17, align 1
  %5723 = add i64 %5668, -72
  %5724 = add i64 %5670, 11
  store i64 %5724, i64* %3, align 8
  %5725 = inttoptr i64 %5723 to i32*
  store i32 %5696, i32* %5725, align 4
  %5726 = load i64, i64* %RBP.i, align 8
  %5727 = add i64 %5726, -60
  %5728 = load i64, i64* %3, align 8
  %5729 = add i64 %5728, 3
  store i64 %5729, i64* %3, align 8
  %5730 = inttoptr i64 %5727 to i32*
  %5731 = load i32, i32* %5730, align 4
  %5732 = zext i32 %5731 to i64
  store i64 %5732, i64* %RAX.i1983, align 8
  %5733 = add i64 %5726, -52
  %5734 = add i64 %5728, 6
  store i64 %5734, i64* %3, align 8
  %5735 = inttoptr i64 %5733 to i32*
  %5736 = load i32, i32* %5735, align 4
  %5737 = zext i32 %5736 to i64
  %5738 = shl nuw i64 %5737, 32
  %5739 = ashr i64 %5738, 33
  %5740 = and i64 %5739, 4294967295
  store i64 %5740, i64* %RCX.i2784, align 8
  %5741 = trunc i64 %5739 to i32
  %5742 = add i32 %5741, %5731
  %5743 = zext i32 %5742 to i64
  store i64 %5743, i64* %RAX.i1983, align 8
  %5744 = icmp ult i32 %5742, %5731
  %5745 = icmp ult i32 %5742, %5741
  %5746 = or i1 %5744, %5745
  %5747 = zext i1 %5746 to i8
  store i8 %5747, i8* %12, align 1
  %5748 = and i32 %5742, 255
  %5749 = tail call i32 @llvm.ctpop.i32(i32 %5748)
  %5750 = trunc i32 %5749 to i8
  %5751 = and i8 %5750, 1
  %5752 = xor i8 %5751, 1
  store i8 %5752, i8* %13, align 1
  %5753 = xor i64 %5739, %5732
  %5754 = trunc i64 %5753 to i32
  %5755 = xor i32 %5754, %5742
  %5756 = lshr i32 %5755, 4
  %5757 = trunc i32 %5756 to i8
  %5758 = and i8 %5757, 1
  store i8 %5758, i8* %14, align 1
  %5759 = icmp eq i32 %5742, 0
  %5760 = zext i1 %5759 to i8
  store i8 %5760, i8* %15, align 1
  %5761 = lshr i32 %5742, 31
  %5762 = trunc i32 %5761 to i8
  store i8 %5762, i8* %16, align 1
  %5763 = lshr i32 %5731, 31
  %5764 = lshr i64 %5739, 31
  %5765 = trunc i64 %5764 to i32
  %5766 = and i32 %5765, 1
  %5767 = xor i32 %5761, %5763
  %5768 = xor i32 %5761, %5766
  %5769 = add nuw nsw i32 %5767, %5768
  %5770 = icmp eq i32 %5769, 2
  %5771 = zext i1 %5770 to i8
  store i8 %5771, i8* %17, align 1
  %5772 = add i64 %5726, -68
  %5773 = add i64 %5728, 13
  store i64 %5773, i64* %3, align 8
  %5774 = inttoptr i64 %5772 to i32*
  store i32 %5742, i32* %5774, align 4
  %5775 = load i64, i64* %RBP.i, align 8
  %5776 = add i64 %5775, -28
  %5777 = load i64, i64* %3, align 8
  %5778 = add i64 %5777, 7
  store i64 %5778, i64* %3, align 8
  %5779 = inttoptr i64 %5776 to i32*
  store i32 0, i32* %5779, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_406df4

block_.L_406df4:                                  ; preds = %block_.L_407316, %block_.L_406dc1
  %5780 = phi i64 [ %7936, %block_.L_407316 ], [ %.pre161, %block_.L_406dc1 ]
  %5781 = load i64, i64* %RBP.i, align 8
  %5782 = add i64 %5781, -28
  %5783 = add i64 %5780, 4
  store i64 %5783, i64* %3, align 8
  %5784 = inttoptr i64 %5782 to i32*
  %5785 = load i32, i32* %5784, align 4
  %5786 = add i32 %5785, -2
  %5787 = icmp ult i32 %5785, 2
  %5788 = zext i1 %5787 to i8
  store i8 %5788, i8* %12, align 1
  %5789 = and i32 %5786, 255
  %5790 = tail call i32 @llvm.ctpop.i32(i32 %5789)
  %5791 = trunc i32 %5790 to i8
  %5792 = and i8 %5791, 1
  %5793 = xor i8 %5792, 1
  store i8 %5793, i8* %13, align 1
  %5794 = xor i32 %5786, %5785
  %5795 = lshr i32 %5794, 4
  %5796 = trunc i32 %5795 to i8
  %5797 = and i8 %5796, 1
  store i8 %5797, i8* %14, align 1
  %5798 = icmp eq i32 %5786, 0
  %5799 = zext i1 %5798 to i8
  store i8 %5799, i8* %15, align 1
  %5800 = lshr i32 %5786, 31
  %5801 = trunc i32 %5800 to i8
  store i8 %5801, i8* %16, align 1
  %5802 = lshr i32 %5785, 31
  %5803 = xor i32 %5800, %5802
  %5804 = add nuw nsw i32 %5803, %5802
  %5805 = icmp eq i32 %5804, 2
  %5806 = zext i1 %5805 to i8
  store i8 %5806, i8* %17, align 1
  %5807 = icmp ne i8 %5801, 0
  %5808 = xor i1 %5807, %5805
  %.v194 = select i1 %5808, i64 10, i64 1333
  %5809 = add i64 %5780, %.v194
  %5810 = add i64 %5809, 5
  store i64 %5810, i64* %3, align 8
  br i1 %5808, label %block_406dfe, label %block_.L_407329

block_406dfe:                                     ; preds = %block_.L_406df4
  store i64 3, i64* %RAX.i1983, align 8
  %5811 = add i64 %5809, 8
  store i64 %5811, i64* %3, align 8
  %5812 = load i32, i32* %5784, align 4
  %5813 = sub i32 3, %5812
  %5814 = zext i32 %5813 to i64
  store i64 %5814, i64* %RAX.i1983, align 8
  %5815 = icmp ugt i32 %5812, 3
  %5816 = zext i1 %5815 to i8
  store i8 %5816, i8* %12, align 1
  %5817 = and i32 %5813, 255
  %5818 = tail call i32 @llvm.ctpop.i32(i32 %5817)
  %5819 = trunc i32 %5818 to i8
  %5820 = and i8 %5819, 1
  %5821 = xor i8 %5820, 1
  store i8 %5821, i8* %13, align 1
  %5822 = xor i32 %5813, %5812
  %5823 = lshr i32 %5822, 4
  %5824 = trunc i32 %5823 to i8
  %5825 = and i8 %5824, 1
  store i8 %5825, i8* %14, align 1
  %5826 = icmp eq i32 %5813, 0
  %5827 = zext i1 %5826 to i8
  store i8 %5827, i8* %15, align 1
  %5828 = lshr i32 %5813, 31
  %5829 = trunc i32 %5828 to i8
  store i8 %5829, i8* %16, align 1
  %5830 = lshr i32 %5812, 31
  %5831 = add nuw nsw i32 %5828, %5830
  %5832 = icmp eq i32 %5831, 2
  %5833 = zext i1 %5832 to i8
  store i8 %5833, i8* %17, align 1
  %5834 = add i64 %5781, -36
  %5835 = add i64 %5809, 11
  store i64 %5835, i64* %3, align 8
  %5836 = inttoptr i64 %5834 to i32*
  store i32 %5813, i32* %5836, align 4
  %5837 = load i64, i64* %3, align 8
  %5838 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5838, i64* %RCX.i2784, align 8
  %5839 = add i64 %5838, 72724
  %5840 = add i64 %5837, 15
  store i64 %5840, i64* %3, align 8
  %5841 = inttoptr i64 %5839 to i32*
  %5842 = load i32, i32* %5841, align 4
  store i8 0, i8* %12, align 1
  %5843 = and i32 %5842, 255
  %5844 = tail call i32 @llvm.ctpop.i32(i32 %5843)
  %5845 = trunc i32 %5844 to i8
  %5846 = and i8 %5845, 1
  %5847 = xor i8 %5846, 1
  store i8 %5847, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5848 = icmp eq i32 %5842, 0
  %5849 = zext i1 %5848 to i8
  store i8 %5849, i8* %15, align 1
  %5850 = lshr i32 %5842, 31
  %5851 = trunc i32 %5850 to i8
  store i8 %5851, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v185 = select i1 %5848, i64 21, i64 1066
  %5852 = add i64 %5837, %.v185
  store i64 %5852, i64* %3, align 8
  br i1 %5848, label %block_406e1e, label %block_.L_407233

block_406e1e:                                     ; preds = %block_406dfe
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  store i64 %5838, i64* %RDX.i2756, align 8
  %5853 = add i64 %5838, 72684
  %5854 = add i64 %5852, 19
  store i64 %5854, i64* %3, align 8
  %5855 = inttoptr i64 %5853 to i32*
  %5856 = load i32, i32* %5855, align 4
  %5857 = sext i32 %5856 to i64
  store i64 %5857, i64* %RDX.i2756, align 8
  %5858 = load i64, i64* %RBP.i, align 8
  %5859 = add i64 %5858, -28
  %5860 = add i64 %5852, 23
  store i64 %5860, i64* %3, align 8
  %5861 = inttoptr i64 %5859 to i32*
  %5862 = load i32, i32* %5861, align 4
  %5863 = sext i32 %5862 to i64
  store i64 %5863, i64* %RSI.i2748, align 8
  %5864 = shl nsw i64 %5863, 2
  %5865 = add i64 %5858, -80
  %5866 = add i64 %5865, %5864
  %5867 = add i64 %5852, 27
  store i64 %5867, i64* %3, align 8
  %5868 = inttoptr i64 %5866 to i32*
  %5869 = load i32, i32* %5868, align 4
  %5870 = zext i32 %5869 to i64
  store i64 %5870, i64* %RAX.i1983, align 8
  %5871 = add i64 %5858, -36
  %5872 = add i64 %5852, 31
  store i64 %5872, i64* %3, align 8
  %5873 = inttoptr i64 %5871 to i32*
  %5874 = load i32, i32* %5873, align 4
  %5875 = sext i32 %5874 to i64
  store i64 %5875, i64* %RSI.i2748, align 8
  %5876 = shl nsw i64 %5875, 2
  %5877 = add nsw i64 %5876, -80
  %5878 = add i64 %5877, %5858
  %5879 = add i64 %5852, 35
  store i64 %5879, i64* %3, align 8
  %5880 = inttoptr i64 %5878 to i32*
  %5881 = load i32, i32* %5880, align 4
  %5882 = add i32 %5881, %5869
  %5883 = zext i32 %5882 to i64
  store i64 %5883, i64* %RAX.i1983, align 8
  %5884 = sext i32 %5882 to i64
  store i64 %5884, i64* %RSI.i2748, align 8
  %5885 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5886 = add i64 %5885, 12600
  store i64 %5886, i64* %RDI.i1875, align 8
  %5887 = icmp ugt i64 %5885, -12601
  %5888 = zext i1 %5887 to i8
  store i8 %5888, i8* %12, align 1
  %5889 = trunc i64 %5886 to i32
  %5890 = and i32 %5889, 255
  %5891 = tail call i32 @llvm.ctpop.i32(i32 %5890)
  %5892 = trunc i32 %5891 to i8
  %5893 = and i8 %5892, 1
  %5894 = xor i8 %5893, 1
  store i8 %5894, i8* %13, align 1
  %5895 = xor i64 %5885, 16
  %5896 = xor i64 %5895, %5886
  %5897 = lshr i64 %5896, 4
  %5898 = trunc i64 %5897 to i8
  %5899 = and i8 %5898, 1
  store i8 %5899, i8* %14, align 1
  %5900 = icmp eq i64 %5886, 0
  %5901 = zext i1 %5900 to i8
  store i8 %5901, i8* %15, align 1
  %5902 = lshr i64 %5886, 63
  %5903 = trunc i64 %5902 to i8
  store i8 %5903, i8* %16, align 1
  %5904 = lshr i64 %5885, 63
  %5905 = xor i64 %5902, %5904
  %5906 = add nuw nsw i64 %5905, %5902
  %5907 = icmp eq i64 %5906, 2
  %5908 = zext i1 %5907 to i8
  store i8 %5908, i8* %17, align 1
  %5909 = load i64, i64* %RBP.i, align 8
  %5910 = add i64 %5909, -24
  %5911 = add i64 %5852, 56
  store i64 %5911, i64* %3, align 8
  %5912 = inttoptr i64 %5910 to i32*
  %5913 = load i32, i32* %5912, align 4
  %5914 = zext i32 %5913 to i64
  store i64 %5914, i64* %RAX.i1983, align 8
  %5915 = add i64 %5909, -4
  %5916 = add i64 %5852, 59
  store i64 %5916, i64* %3, align 8
  %5917 = inttoptr i64 %5915 to i32*
  %5918 = load i32, i32* %5917, align 4
  %5919 = add i32 %5918, %5913
  %5920 = zext i32 %5919 to i64
  store i64 %5920, i64* %RAX.i1983, align 8
  %5921 = sext i32 %5919 to i64
  %5922 = shl nsw i64 %5921, 5
  store i64 %5922, i64* %R8.i1581, align 8
  %5923 = load i64, i64* %RDI.i1875, align 8
  %5924 = add i64 %5922, %5923
  store i64 %5924, i64* %RDI.i1875, align 8
  %5925 = icmp ult i64 %5924, %5923
  %5926 = icmp ult i64 %5924, %5922
  %5927 = or i1 %5925, %5926
  %5928 = zext i1 %5927 to i8
  store i8 %5928, i8* %12, align 1
  %5929 = trunc i64 %5924 to i32
  %5930 = and i32 %5929, 255
  %5931 = tail call i32 @llvm.ctpop.i32(i32 %5930)
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = xor i8 %5933, 1
  store i8 %5934, i8* %13, align 1
  %5935 = xor i64 %5923, %5924
  %5936 = lshr i64 %5935, 4
  %5937 = trunc i64 %5936 to i8
  %5938 = and i8 %5937, 1
  store i8 %5938, i8* %14, align 1
  %5939 = icmp eq i64 %5924, 0
  %5940 = zext i1 %5939 to i8
  store i8 %5940, i8* %15, align 1
  %5941 = lshr i64 %5924, 63
  %5942 = trunc i64 %5941 to i8
  store i8 %5942, i8* %16, align 1
  %5943 = lshr i64 %5923, 63
  %5944 = lshr i64 %5921, 58
  %5945 = and i64 %5944, 1
  %5946 = xor i64 %5941, %5943
  %5947 = xor i64 %5941, %5945
  %5948 = add nuw nsw i64 %5946, %5947
  %5949 = icmp eq i64 %5948, 2
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %17, align 1
  %5951 = load i64, i64* %RBP.i, align 8
  %5952 = add i64 %5951, -28
  %5953 = add i64 %5852, 72
  store i64 %5953, i64* %3, align 8
  %5954 = inttoptr i64 %5952 to i32*
  %5955 = load i32, i32* %5954, align 4
  %5956 = zext i32 %5955 to i64
  store i64 %5956, i64* %RAX.i1983, align 8
  %5957 = add i64 %5951, -8
  %5958 = add i64 %5852, 75
  store i64 %5958, i64* %3, align 8
  %5959 = inttoptr i64 %5957 to i32*
  %5960 = load i32, i32* %5959, align 4
  %5961 = add i32 %5960, %5955
  %5962 = zext i32 %5961 to i64
  store i64 %5962, i64* %RAX.i1983, align 8
  %5963 = icmp ult i32 %5961, %5955
  %5964 = icmp ult i32 %5961, %5960
  %5965 = or i1 %5963, %5964
  %5966 = zext i1 %5965 to i8
  store i8 %5966, i8* %12, align 1
  %5967 = and i32 %5961, 255
  %5968 = tail call i32 @llvm.ctpop.i32(i32 %5967)
  %5969 = trunc i32 %5968 to i8
  %5970 = and i8 %5969, 1
  %5971 = xor i8 %5970, 1
  store i8 %5971, i8* %13, align 1
  %5972 = xor i32 %5960, %5955
  %5973 = xor i32 %5972, %5961
  %5974 = lshr i32 %5973, 4
  %5975 = trunc i32 %5974 to i8
  %5976 = and i8 %5975, 1
  store i8 %5976, i8* %14, align 1
  %5977 = icmp eq i32 %5961, 0
  %5978 = zext i1 %5977 to i8
  store i8 %5978, i8* %15, align 1
  %5979 = lshr i32 %5961, 31
  %5980 = trunc i32 %5979 to i8
  store i8 %5980, i8* %16, align 1
  %5981 = lshr i32 %5955, 31
  %5982 = lshr i32 %5960, 31
  %5983 = xor i32 %5979, %5981
  %5984 = xor i32 %5979, %5982
  %5985 = add nuw nsw i32 %5983, %5984
  %5986 = icmp eq i32 %5985, 2
  %5987 = zext i1 %5986 to i8
  store i8 %5987, i8* %17, align 1
  %5988 = sext i32 %5961 to i64
  store i64 %5988, i64* %R8.i1581, align 8
  %5989 = shl nsw i64 %5988, 1
  %5990 = add i64 %5924, %5989
  %5991 = add i64 %5852, 83
  store i64 %5991, i64* %3, align 8
  %5992 = inttoptr i64 %5990 to i16*
  %5993 = load i16, i16* %5992, align 2
  %5994 = zext i16 %5993 to i64
  store i64 %5994, i64* %RAX.i1983, align 8
  %5995 = zext i16 %5993 to i64
  %5996 = shl nuw nsw i64 %5995, 6
  store i64 %5996, i64* %RDI.i1875, align 8
  %5997 = load i64, i64* %RSI.i2748, align 8
  %5998 = add i64 %5996, %5997
  %5999 = add i64 %5998, 32
  %6000 = ashr i64 %5999, 6
  store i64 %6000, i64* %RSI.i2748, align 8
  %6001 = lshr i64 %6000, 63
  %6002 = load i64, i64* %RCX.i2784, align 8
  %6003 = sub i64 %6002, %6000
  %6004 = icmp ult i64 %6002, %6000
  %6005 = zext i1 %6004 to i8
  store i8 %6005, i8* %12, align 1
  %6006 = trunc i64 %6003 to i32
  %6007 = and i32 %6006, 255
  %6008 = tail call i32 @llvm.ctpop.i32(i32 %6007)
  %6009 = trunc i32 %6008 to i8
  %6010 = and i8 %6009, 1
  %6011 = xor i8 %6010, 1
  store i8 %6011, i8* %13, align 1
  %6012 = xor i64 %6000, %6002
  %6013 = xor i64 %6012, %6003
  %6014 = lshr i64 %6013, 4
  %6015 = trunc i64 %6014 to i8
  %6016 = and i8 %6015, 1
  store i8 %6016, i8* %14, align 1
  %6017 = icmp eq i64 %6003, 0
  %6018 = zext i1 %6017 to i8
  store i8 %6018, i8* %15, align 1
  %6019 = lshr i64 %6003, 63
  %6020 = trunc i64 %6019 to i8
  store i8 %6020, i8* %16, align 1
  %6021 = lshr i64 %6002, 63
  %6022 = xor i64 %6001, %6021
  %6023 = xor i64 %6019, %6021
  %6024 = add nuw nsw i64 %6023, %6022
  %6025 = icmp eq i64 %6024, 2
  %6026 = zext i1 %6025 to i8
  store i8 %6026, i8* %17, align 1
  %6027 = load i64, i64* %RBP.i, align 8
  %6028 = add i64 %6027, -200
  %6029 = load i64, i64* %RDX.i2756, align 8
  %6030 = add i64 %5852, 110
  store i64 %6030, i64* %3, align 8
  %6031 = inttoptr i64 %6028 to i64*
  store i64 %6029, i64* %6031, align 8
  %6032 = load i64, i64* %3, align 8
  %6033 = load i8, i8* %15, align 1
  %6034 = icmp ne i8 %6033, 0
  %6035 = load i8, i8* %16, align 1
  %6036 = icmp ne i8 %6035, 0
  %6037 = load i8, i8* %17, align 1
  %6038 = icmp ne i8 %6037, 0
  %6039 = xor i1 %6036, %6038
  %6040 = or i1 %6034, %6039
  %.v239 = select i1 %6040, i64 22, i64 6
  %6041 = add i64 %6032, %.v239
  store i64 %6041, i64* %3, align 8
  br i1 %6040, label %block_.L_406ea2, label %block_406e92

block_406e92:                                     ; preds = %block_406e1e
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  %6042 = load i64, i64* %RBP.i, align 8
  %6043 = add i64 %6042, -208
  %6044 = add i64 %6041, 11
  store i64 %6044, i64* %3, align 8
  %6045 = inttoptr i64 %6043 to i64*
  store i64 0, i64* %6045, align 8
  %6046 = load i64, i64* %3, align 8
  %6047 = add i64 %6046, 92
  store i64 %6047, i64* %3, align 8
  br label %block_.L_406ef9

block_.L_406ea2:                                  ; preds = %block_406e1e
  %6048 = load i64, i64* %RBP.i, align 8
  %6049 = add i64 %6048, -28
  %6050 = add i64 %6041, 4
  store i64 %6050, i64* %3, align 8
  %6051 = inttoptr i64 %6049 to i32*
  %6052 = load i32, i32* %6051, align 4
  %6053 = sext i32 %6052 to i64
  store i64 %6053, i64* %RAX.i1983, align 8
  %6054 = shl nsw i64 %6053, 2
  %6055 = add i64 %6048, -80
  %6056 = add i64 %6055, %6054
  %6057 = add i64 %6041, 8
  store i64 %6057, i64* %3, align 8
  %6058 = inttoptr i64 %6056 to i32*
  %6059 = load i32, i32* %6058, align 4
  %6060 = zext i32 %6059 to i64
  store i64 %6060, i64* %RCX.i2784, align 8
  %6061 = add i64 %6048, -36
  %6062 = add i64 %6041, 12
  store i64 %6062, i64* %3, align 8
  %6063 = inttoptr i64 %6061 to i32*
  %6064 = load i32, i32* %6063, align 4
  %6065 = sext i32 %6064 to i64
  store i64 %6065, i64* %RAX.i1983, align 8
  %6066 = shl nsw i64 %6065, 2
  %6067 = add nsw i64 %6066, -80
  %6068 = add i64 %6067, %6048
  %6069 = add i64 %6041, 16
  store i64 %6069, i64* %3, align 8
  %6070 = inttoptr i64 %6068 to i32*
  %6071 = load i32, i32* %6070, align 4
  %6072 = add i32 %6071, %6059
  %6073 = zext i32 %6072 to i64
  store i64 %6073, i64* %RCX.i2784, align 8
  %6074 = sext i32 %6072 to i64
  store i64 %6074, i64* %RAX.i1983, align 8
  %6075 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6076 = add i64 %6075, 12600
  store i64 %6076, i64* %RDX.i2756, align 8
  %6077 = icmp ugt i64 %6075, -12601
  %6078 = zext i1 %6077 to i8
  store i8 %6078, i8* %12, align 1
  %6079 = trunc i64 %6076 to i32
  %6080 = and i32 %6079, 255
  %6081 = tail call i32 @llvm.ctpop.i32(i32 %6080)
  %6082 = trunc i32 %6081 to i8
  %6083 = and i8 %6082, 1
  %6084 = xor i8 %6083, 1
  store i8 %6084, i8* %13, align 1
  %6085 = xor i64 %6075, 16
  %6086 = xor i64 %6085, %6076
  %6087 = lshr i64 %6086, 4
  %6088 = trunc i64 %6087 to i8
  %6089 = and i8 %6088, 1
  store i8 %6089, i8* %14, align 1
  %6090 = icmp eq i64 %6076, 0
  %6091 = zext i1 %6090 to i8
  store i8 %6091, i8* %15, align 1
  %6092 = lshr i64 %6076, 63
  %6093 = trunc i64 %6092 to i8
  store i8 %6093, i8* %16, align 1
  %6094 = lshr i64 %6075, 63
  %6095 = xor i64 %6092, %6094
  %6096 = add nuw nsw i64 %6095, %6092
  %6097 = icmp eq i64 %6096, 2
  %6098 = zext i1 %6097 to i8
  store i8 %6098, i8* %17, align 1
  %6099 = load i64, i64* %RBP.i, align 8
  %6100 = add i64 %6099, -24
  %6101 = add i64 %6041, 37
  store i64 %6101, i64* %3, align 8
  %6102 = inttoptr i64 %6100 to i32*
  %6103 = load i32, i32* %6102, align 4
  %6104 = zext i32 %6103 to i64
  store i64 %6104, i64* %RCX.i2784, align 8
  %6105 = add i64 %6099, -4
  %6106 = add i64 %6041, 40
  store i64 %6106, i64* %3, align 8
  %6107 = inttoptr i64 %6105 to i32*
  %6108 = load i32, i32* %6107, align 4
  %6109 = add i32 %6108, %6103
  %6110 = zext i32 %6109 to i64
  store i64 %6110, i64* %RCX.i2784, align 8
  %6111 = sext i32 %6109 to i64
  %6112 = shl nsw i64 %6111, 5
  store i64 %6112, i64* %RSI.i2748, align 8
  %6113 = load i64, i64* %RDX.i2756, align 8
  %6114 = add i64 %6112, %6113
  store i64 %6114, i64* %RDX.i2756, align 8
  %6115 = icmp ult i64 %6114, %6113
  %6116 = icmp ult i64 %6114, %6112
  %6117 = or i1 %6115, %6116
  %6118 = zext i1 %6117 to i8
  store i8 %6118, i8* %12, align 1
  %6119 = trunc i64 %6114 to i32
  %6120 = and i32 %6119, 255
  %6121 = tail call i32 @llvm.ctpop.i32(i32 %6120)
  %6122 = trunc i32 %6121 to i8
  %6123 = and i8 %6122, 1
  %6124 = xor i8 %6123, 1
  store i8 %6124, i8* %13, align 1
  %6125 = xor i64 %6113, %6114
  %6126 = lshr i64 %6125, 4
  %6127 = trunc i64 %6126 to i8
  %6128 = and i8 %6127, 1
  store i8 %6128, i8* %14, align 1
  %6129 = icmp eq i64 %6114, 0
  %6130 = zext i1 %6129 to i8
  store i8 %6130, i8* %15, align 1
  %6131 = lshr i64 %6114, 63
  %6132 = trunc i64 %6131 to i8
  store i8 %6132, i8* %16, align 1
  %6133 = lshr i64 %6113, 63
  %6134 = lshr i64 %6111, 58
  %6135 = and i64 %6134, 1
  %6136 = xor i64 %6131, %6133
  %6137 = xor i64 %6131, %6135
  %6138 = add nuw nsw i64 %6136, %6137
  %6139 = icmp eq i64 %6138, 2
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %17, align 1
  %6141 = load i64, i64* %RBP.i, align 8
  %6142 = add i64 %6141, -28
  %6143 = add i64 %6041, 53
  store i64 %6143, i64* %3, align 8
  %6144 = inttoptr i64 %6142 to i32*
  %6145 = load i32, i32* %6144, align 4
  %6146 = zext i32 %6145 to i64
  store i64 %6146, i64* %RCX.i2784, align 8
  %6147 = add i64 %6141, -8
  %6148 = add i64 %6041, 56
  store i64 %6148, i64* %3, align 8
  %6149 = inttoptr i64 %6147 to i32*
  %6150 = load i32, i32* %6149, align 4
  %6151 = add i32 %6150, %6145
  %6152 = zext i32 %6151 to i64
  store i64 %6152, i64* %RCX.i2784, align 8
  %6153 = icmp ult i32 %6151, %6145
  %6154 = icmp ult i32 %6151, %6150
  %6155 = or i1 %6153, %6154
  %6156 = zext i1 %6155 to i8
  store i8 %6156, i8* %12, align 1
  %6157 = and i32 %6151, 255
  %6158 = tail call i32 @llvm.ctpop.i32(i32 %6157)
  %6159 = trunc i32 %6158 to i8
  %6160 = and i8 %6159, 1
  %6161 = xor i8 %6160, 1
  store i8 %6161, i8* %13, align 1
  %6162 = xor i32 %6150, %6145
  %6163 = xor i32 %6162, %6151
  %6164 = lshr i32 %6163, 4
  %6165 = trunc i32 %6164 to i8
  %6166 = and i8 %6165, 1
  store i8 %6166, i8* %14, align 1
  %6167 = icmp eq i32 %6151, 0
  %6168 = zext i1 %6167 to i8
  store i8 %6168, i8* %15, align 1
  %6169 = lshr i32 %6151, 31
  %6170 = trunc i32 %6169 to i8
  store i8 %6170, i8* %16, align 1
  %6171 = lshr i32 %6145, 31
  %6172 = lshr i32 %6150, 31
  %6173 = xor i32 %6169, %6171
  %6174 = xor i32 %6169, %6172
  %6175 = add nuw nsw i32 %6173, %6174
  %6176 = icmp eq i32 %6175, 2
  %6177 = zext i1 %6176 to i8
  store i8 %6177, i8* %17, align 1
  %6178 = sext i32 %6151 to i64
  store i64 %6178, i64* %RSI.i2748, align 8
  %6179 = shl nsw i64 %6178, 1
  %6180 = add i64 %6114, %6179
  %6181 = add i64 %6041, 63
  store i64 %6181, i64* %3, align 8
  %6182 = inttoptr i64 %6180 to i16*
  %6183 = load i16, i16* %6182, align 2
  %6184 = zext i16 %6183 to i64
  store i64 %6184, i64* %RCX.i2784, align 8
  %6185 = zext i16 %6183 to i64
  %6186 = shl nuw nsw i64 %6185, 6
  store i64 %6186, i64* %RDX.i2756, align 8
  %6187 = load i64, i64* %RAX.i1983, align 8
  %6188 = add i64 %6186, %6187
  %6189 = add i64 %6188, 32
  %6190 = lshr i64 %6189, 5
  %6191 = trunc i64 %6190 to i8
  %6192 = and i8 %6191, 1
  %6193 = ashr i64 %6189, 6
  store i64 %6193, i64* %RAX.i1983, align 8
  store i8 %6192, i8* %12, align 1
  %6194 = trunc i64 %6193 to i32
  %6195 = and i32 %6194, 255
  %6196 = tail call i32 @llvm.ctpop.i32(i32 %6195)
  %6197 = trunc i32 %6196 to i8
  %6198 = and i8 %6197, 1
  %6199 = xor i8 %6198, 1
  store i8 %6199, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6200 = icmp eq i64 %6193, 0
  %6201 = zext i1 %6200 to i8
  store i8 %6201, i8* %15, align 1
  %6202 = lshr i64 %6193, 63
  %6203 = trunc i64 %6202 to i8
  store i8 %6203, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6204 = load i64, i64* %RBP.i, align 8
  %6205 = add i64 %6204, -208
  %6206 = add i64 %6041, 87
  store i64 %6206, i64* %3, align 8
  %6207 = inttoptr i64 %6205 to i64*
  store i64 %6193, i64* %6207, align 8
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_406ef9

block_.L_406ef9:                                  ; preds = %block_.L_406ea2, %block_406e92
  %6208 = phi i64 [ %.pre162, %block_.L_406ea2 ], [ %6047, %block_406e92 ]
  %6209 = load i64, i64* %RBP.i, align 8
  %6210 = add i64 %6209, -208
  %6211 = add i64 %6208, 7
  store i64 %6211, i64* %3, align 8
  %6212 = inttoptr i64 %6210 to i64*
  %6213 = load i64, i64* %6212, align 8
  store i64 %6213, i64* %RAX.i1983, align 8
  %6214 = add i64 %6209, -200
  %6215 = add i64 %6208, 14
  store i64 %6215, i64* %3, align 8
  %6216 = inttoptr i64 %6214 to i64*
  %6217 = load i64, i64* %6216, align 8
  store i64 %6217, i64* %RCX.i2784, align 8
  %6218 = sub i64 %6217, %6213
  %6219 = icmp ult i64 %6217, %6213
  %6220 = zext i1 %6219 to i8
  store i8 %6220, i8* %12, align 1
  %6221 = trunc i64 %6218 to i32
  %6222 = and i32 %6221, 255
  %6223 = tail call i32 @llvm.ctpop.i32(i32 %6222)
  %6224 = trunc i32 %6223 to i8
  %6225 = and i8 %6224, 1
  %6226 = xor i8 %6225, 1
  store i8 %6226, i8* %13, align 1
  %6227 = xor i64 %6213, %6217
  %6228 = xor i64 %6227, %6218
  %6229 = lshr i64 %6228, 4
  %6230 = trunc i64 %6229 to i8
  %6231 = and i8 %6230, 1
  store i8 %6231, i8* %14, align 1
  %6232 = icmp eq i64 %6218, 0
  %6233 = zext i1 %6232 to i8
  store i8 %6233, i8* %15, align 1
  %6234 = lshr i64 %6218, 63
  %6235 = trunc i64 %6234 to i8
  store i8 %6235, i8* %16, align 1
  %6236 = lshr i64 %6217, 63
  %6237 = lshr i64 %6213, 63
  %6238 = xor i64 %6237, %6236
  %6239 = xor i64 %6234, %6236
  %6240 = add nuw nsw i64 %6239, %6238
  %6241 = icmp eq i64 %6240, 2
  %6242 = zext i1 %6241 to i8
  store i8 %6242, i8* %17, align 1
  %6243 = icmp ne i8 %6235, 0
  %6244 = xor i1 %6243, %6241
  %.v195 = select i1 %6244, i64 23, i64 50
  %6245 = add i64 %6208, %.v195
  store i64 %6245, i64* %3, align 8
  br i1 %6244, label %block_406f10, label %block_.L_406f2b

block_406f10:                                     ; preds = %block_.L_406ef9
  %6246 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6246, i64* %RAX.i1983, align 8
  %6247 = add i64 %6246, 72684
  %6248 = add i64 %6245, 15
  store i64 %6248, i64* %3, align 8
  %6249 = inttoptr i64 %6247 to i32*
  %6250 = load i32, i32* %6249, align 4
  %6251 = sext i32 %6250 to i64
  store i64 %6251, i64* %RAX.i1983, align 8
  %6252 = add i64 %6209, -216
  %6253 = add i64 %6245, 22
  store i64 %6253, i64* %3, align 8
  %6254 = inttoptr i64 %6252 to i64*
  store i64 %6251, i64* %6254, align 8
  %6255 = load i64, i64* %3, align 8
  %6256 = add i64 %6255, 215
  store i64 %6256, i64* %3, align 8
  br label %block_.L_406ffd

block_.L_406f2b:                                  ; preds = %block_.L_406ef9
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  %6257 = add i64 %6209, -28
  %6258 = add i64 %6245, 8
  store i64 %6258, i64* %3, align 8
  %6259 = inttoptr i64 %6257 to i32*
  %6260 = load i32, i32* %6259, align 4
  %6261 = sext i32 %6260 to i64
  store i64 %6261, i64* %RDX.i2756, align 8
  %6262 = shl nsw i64 %6261, 2
  %6263 = add i64 %6209, -80
  %6264 = add i64 %6263, %6262
  %6265 = add i64 %6245, 12
  store i64 %6265, i64* %3, align 8
  %6266 = inttoptr i64 %6264 to i32*
  %6267 = load i32, i32* %6266, align 4
  %6268 = zext i32 %6267 to i64
  store i64 %6268, i64* %RAX.i1983, align 8
  %6269 = add i64 %6209, -36
  %6270 = add i64 %6245, 16
  store i64 %6270, i64* %3, align 8
  %6271 = inttoptr i64 %6269 to i32*
  %6272 = load i32, i32* %6271, align 4
  %6273 = sext i32 %6272 to i64
  store i64 %6273, i64* %RDX.i2756, align 8
  %6274 = shl nsw i64 %6273, 2
  %6275 = add nsw i64 %6274, -80
  %6276 = add i64 %6275, %6209
  %6277 = add i64 %6245, 20
  store i64 %6277, i64* %3, align 8
  %6278 = inttoptr i64 %6276 to i32*
  %6279 = load i32, i32* %6278, align 4
  %6280 = add i32 %6279, %6267
  %6281 = zext i32 %6280 to i64
  store i64 %6281, i64* %RAX.i1983, align 8
  %6282 = sext i32 %6280 to i64
  store i64 %6282, i64* %RDX.i2756, align 8
  %6283 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6284 = add i64 %6283, 12600
  store i64 %6284, i64* %RSI.i2748, align 8
  %6285 = icmp ugt i64 %6283, -12601
  %6286 = zext i1 %6285 to i8
  store i8 %6286, i8* %12, align 1
  %6287 = trunc i64 %6284 to i32
  %6288 = and i32 %6287, 255
  %6289 = tail call i32 @llvm.ctpop.i32(i32 %6288)
  %6290 = trunc i32 %6289 to i8
  %6291 = and i8 %6290, 1
  %6292 = xor i8 %6291, 1
  store i8 %6292, i8* %13, align 1
  %6293 = xor i64 %6283, 16
  %6294 = xor i64 %6293, %6284
  %6295 = lshr i64 %6294, 4
  %6296 = trunc i64 %6295 to i8
  %6297 = and i8 %6296, 1
  store i8 %6297, i8* %14, align 1
  %6298 = icmp eq i64 %6284, 0
  %6299 = zext i1 %6298 to i8
  store i8 %6299, i8* %15, align 1
  %6300 = lshr i64 %6284, 63
  %6301 = trunc i64 %6300 to i8
  store i8 %6301, i8* %16, align 1
  %6302 = lshr i64 %6283, 63
  %6303 = xor i64 %6300, %6302
  %6304 = add nuw nsw i64 %6303, %6300
  %6305 = icmp eq i64 %6304, 2
  %6306 = zext i1 %6305 to i8
  store i8 %6306, i8* %17, align 1
  %6307 = load i64, i64* %RBP.i, align 8
  %6308 = add i64 %6307, -24
  %6309 = add i64 %6245, 41
  store i64 %6309, i64* %3, align 8
  %6310 = inttoptr i64 %6308 to i32*
  %6311 = load i32, i32* %6310, align 4
  %6312 = zext i32 %6311 to i64
  store i64 %6312, i64* %RAX.i1983, align 8
  %6313 = add i64 %6307, -4
  %6314 = add i64 %6245, 44
  store i64 %6314, i64* %3, align 8
  %6315 = inttoptr i64 %6313 to i32*
  %6316 = load i32, i32* %6315, align 4
  %6317 = add i32 %6316, %6311
  %6318 = zext i32 %6317 to i64
  store i64 %6318, i64* %RAX.i1983, align 8
  %6319 = sext i32 %6317 to i64
  %6320 = shl nsw i64 %6319, 5
  store i64 %6320, i64* %RDI.i1875, align 8
  %6321 = load i64, i64* %RSI.i2748, align 8
  %6322 = add i64 %6320, %6321
  store i64 %6322, i64* %RSI.i2748, align 8
  %6323 = icmp ult i64 %6322, %6321
  %6324 = icmp ult i64 %6322, %6320
  %6325 = or i1 %6323, %6324
  %6326 = zext i1 %6325 to i8
  store i8 %6326, i8* %12, align 1
  %6327 = trunc i64 %6322 to i32
  %6328 = and i32 %6327, 255
  %6329 = tail call i32 @llvm.ctpop.i32(i32 %6328)
  %6330 = trunc i32 %6329 to i8
  %6331 = and i8 %6330, 1
  %6332 = xor i8 %6331, 1
  store i8 %6332, i8* %13, align 1
  %6333 = xor i64 %6321, %6322
  %6334 = lshr i64 %6333, 4
  %6335 = trunc i64 %6334 to i8
  %6336 = and i8 %6335, 1
  store i8 %6336, i8* %14, align 1
  %6337 = icmp eq i64 %6322, 0
  %6338 = zext i1 %6337 to i8
  store i8 %6338, i8* %15, align 1
  %6339 = lshr i64 %6322, 63
  %6340 = trunc i64 %6339 to i8
  store i8 %6340, i8* %16, align 1
  %6341 = lshr i64 %6321, 63
  %6342 = lshr i64 %6319, 58
  %6343 = and i64 %6342, 1
  %6344 = xor i64 %6339, %6341
  %6345 = xor i64 %6339, %6343
  %6346 = add nuw nsw i64 %6344, %6345
  %6347 = icmp eq i64 %6346, 2
  %6348 = zext i1 %6347 to i8
  store i8 %6348, i8* %17, align 1
  %6349 = load i64, i64* %RBP.i, align 8
  %6350 = add i64 %6349, -28
  %6351 = add i64 %6245, 57
  store i64 %6351, i64* %3, align 8
  %6352 = inttoptr i64 %6350 to i32*
  %6353 = load i32, i32* %6352, align 4
  %6354 = zext i32 %6353 to i64
  store i64 %6354, i64* %RAX.i1983, align 8
  %6355 = add i64 %6349, -8
  %6356 = add i64 %6245, 60
  store i64 %6356, i64* %3, align 8
  %6357 = inttoptr i64 %6355 to i32*
  %6358 = load i32, i32* %6357, align 4
  %6359 = add i32 %6358, %6353
  %6360 = zext i32 %6359 to i64
  store i64 %6360, i64* %RAX.i1983, align 8
  %6361 = icmp ult i32 %6359, %6353
  %6362 = icmp ult i32 %6359, %6358
  %6363 = or i1 %6361, %6362
  %6364 = zext i1 %6363 to i8
  store i8 %6364, i8* %12, align 1
  %6365 = and i32 %6359, 255
  %6366 = tail call i32 @llvm.ctpop.i32(i32 %6365)
  %6367 = trunc i32 %6366 to i8
  %6368 = and i8 %6367, 1
  %6369 = xor i8 %6368, 1
  store i8 %6369, i8* %13, align 1
  %6370 = xor i32 %6358, %6353
  %6371 = xor i32 %6370, %6359
  %6372 = lshr i32 %6371, 4
  %6373 = trunc i32 %6372 to i8
  %6374 = and i8 %6373, 1
  store i8 %6374, i8* %14, align 1
  %6375 = icmp eq i32 %6359, 0
  %6376 = zext i1 %6375 to i8
  store i8 %6376, i8* %15, align 1
  %6377 = lshr i32 %6359, 31
  %6378 = trunc i32 %6377 to i8
  store i8 %6378, i8* %16, align 1
  %6379 = lshr i32 %6353, 31
  %6380 = lshr i32 %6358, 31
  %6381 = xor i32 %6377, %6379
  %6382 = xor i32 %6377, %6380
  %6383 = add nuw nsw i32 %6381, %6382
  %6384 = icmp eq i32 %6383, 2
  %6385 = zext i1 %6384 to i8
  store i8 %6385, i8* %17, align 1
  %6386 = sext i32 %6359 to i64
  store i64 %6386, i64* %RDI.i1875, align 8
  %6387 = shl nsw i64 %6386, 1
  %6388 = add i64 %6322, %6387
  %6389 = add i64 %6245, 67
  store i64 %6389, i64* %3, align 8
  %6390 = inttoptr i64 %6388 to i16*
  %6391 = load i16, i16* %6390, align 2
  %6392 = zext i16 %6391 to i64
  store i64 %6392, i64* %RAX.i1983, align 8
  %6393 = zext i16 %6391 to i64
  %6394 = shl nuw nsw i64 %6393, 6
  store i64 %6394, i64* %RSI.i2748, align 8
  %6395 = load i64, i64* %RDX.i2756, align 8
  %6396 = add i64 %6394, %6395
  %6397 = add i64 %6396, 32
  %6398 = ashr i64 %6397, 6
  store i64 %6398, i64* %RDX.i2756, align 8
  %6399 = lshr i64 %6398, 63
  %6400 = load i64, i64* %RCX.i2784, align 8
  %6401 = sub i64 %6400, %6398
  %6402 = icmp ult i64 %6400, %6398
  %6403 = zext i1 %6402 to i8
  store i8 %6403, i8* %12, align 1
  %6404 = trunc i64 %6401 to i32
  %6405 = and i32 %6404, 255
  %6406 = tail call i32 @llvm.ctpop.i32(i32 %6405)
  %6407 = trunc i32 %6406 to i8
  %6408 = and i8 %6407, 1
  %6409 = xor i8 %6408, 1
  store i8 %6409, i8* %13, align 1
  %6410 = xor i64 %6398, %6400
  %6411 = xor i64 %6410, %6401
  %6412 = lshr i64 %6411, 4
  %6413 = trunc i64 %6412 to i8
  %6414 = and i8 %6413, 1
  store i8 %6414, i8* %14, align 1
  %6415 = icmp eq i64 %6401, 0
  %6416 = zext i1 %6415 to i8
  store i8 %6416, i8* %15, align 1
  %6417 = lshr i64 %6401, 63
  %6418 = trunc i64 %6417 to i8
  store i8 %6418, i8* %16, align 1
  %6419 = lshr i64 %6400, 63
  %6420 = xor i64 %6399, %6419
  %6421 = xor i64 %6417, %6419
  %6422 = add nuw nsw i64 %6421, %6420
  %6423 = icmp eq i64 %6422, 2
  %6424 = zext i1 %6423 to i8
  store i8 %6424, i8* %17, align 1
  %6425 = icmp ne i8 %6418, 0
  %6426 = xor i1 %6425, %6423
  %6427 = or i1 %6415, %6426
  %.v196 = select i1 %6427, i64 109, i64 93
  %6428 = add i64 %6245, %.v196
  store i64 %6428, i64* %3, align 8
  br i1 %6427, label %block_.L_406f98, label %block_406f88

block_406f88:                                     ; preds = %block_.L_406f2b
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  %6429 = load i64, i64* %RBP.i, align 8
  %6430 = add i64 %6429, -224
  %6431 = add i64 %6428, 11
  store i64 %6431, i64* %3, align 8
  %6432 = inttoptr i64 %6430 to i64*
  store i64 0, i64* %6432, align 8
  %6433 = load i64, i64* %3, align 8
  %6434 = add i64 %6433, 92
  store i64 %6434, i64* %3, align 8
  br label %block_.L_406fef

block_.L_406f98:                                  ; preds = %block_.L_406f2b
  %6435 = load i64, i64* %RBP.i, align 8
  %6436 = add i64 %6435, -28
  %6437 = add i64 %6428, 4
  store i64 %6437, i64* %3, align 8
  %6438 = inttoptr i64 %6436 to i32*
  %6439 = load i32, i32* %6438, align 4
  %6440 = sext i32 %6439 to i64
  store i64 %6440, i64* %RAX.i1983, align 8
  %6441 = shl nsw i64 %6440, 2
  %6442 = add i64 %6435, -80
  %6443 = add i64 %6442, %6441
  %6444 = add i64 %6428, 8
  store i64 %6444, i64* %3, align 8
  %6445 = inttoptr i64 %6443 to i32*
  %6446 = load i32, i32* %6445, align 4
  %6447 = zext i32 %6446 to i64
  store i64 %6447, i64* %RCX.i2784, align 8
  %6448 = add i64 %6435, -36
  %6449 = add i64 %6428, 12
  store i64 %6449, i64* %3, align 8
  %6450 = inttoptr i64 %6448 to i32*
  %6451 = load i32, i32* %6450, align 4
  %6452 = sext i32 %6451 to i64
  store i64 %6452, i64* %RAX.i1983, align 8
  %6453 = shl nsw i64 %6452, 2
  %6454 = add nsw i64 %6453, -80
  %6455 = add i64 %6454, %6435
  %6456 = add i64 %6428, 16
  store i64 %6456, i64* %3, align 8
  %6457 = inttoptr i64 %6455 to i32*
  %6458 = load i32, i32* %6457, align 4
  %6459 = add i32 %6458, %6446
  %6460 = zext i32 %6459 to i64
  store i64 %6460, i64* %RCX.i2784, align 8
  %6461 = sext i32 %6459 to i64
  store i64 %6461, i64* %RAX.i1983, align 8
  %6462 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6463 = add i64 %6462, 12600
  store i64 %6463, i64* %RDX.i2756, align 8
  %6464 = icmp ugt i64 %6462, -12601
  %6465 = zext i1 %6464 to i8
  store i8 %6465, i8* %12, align 1
  %6466 = trunc i64 %6463 to i32
  %6467 = and i32 %6466, 255
  %6468 = tail call i32 @llvm.ctpop.i32(i32 %6467)
  %6469 = trunc i32 %6468 to i8
  %6470 = and i8 %6469, 1
  %6471 = xor i8 %6470, 1
  store i8 %6471, i8* %13, align 1
  %6472 = xor i64 %6462, 16
  %6473 = xor i64 %6472, %6463
  %6474 = lshr i64 %6473, 4
  %6475 = trunc i64 %6474 to i8
  %6476 = and i8 %6475, 1
  store i8 %6476, i8* %14, align 1
  %6477 = icmp eq i64 %6463, 0
  %6478 = zext i1 %6477 to i8
  store i8 %6478, i8* %15, align 1
  %6479 = lshr i64 %6463, 63
  %6480 = trunc i64 %6479 to i8
  store i8 %6480, i8* %16, align 1
  %6481 = lshr i64 %6462, 63
  %6482 = xor i64 %6479, %6481
  %6483 = add nuw nsw i64 %6482, %6479
  %6484 = icmp eq i64 %6483, 2
  %6485 = zext i1 %6484 to i8
  store i8 %6485, i8* %17, align 1
  %6486 = load i64, i64* %RBP.i, align 8
  %6487 = add i64 %6486, -24
  %6488 = add i64 %6428, 37
  store i64 %6488, i64* %3, align 8
  %6489 = inttoptr i64 %6487 to i32*
  %6490 = load i32, i32* %6489, align 4
  %6491 = zext i32 %6490 to i64
  store i64 %6491, i64* %RCX.i2784, align 8
  %6492 = add i64 %6486, -4
  %6493 = add i64 %6428, 40
  store i64 %6493, i64* %3, align 8
  %6494 = inttoptr i64 %6492 to i32*
  %6495 = load i32, i32* %6494, align 4
  %6496 = add i32 %6495, %6490
  %6497 = zext i32 %6496 to i64
  store i64 %6497, i64* %RCX.i2784, align 8
  %6498 = sext i32 %6496 to i64
  %6499 = shl nsw i64 %6498, 5
  store i64 %6499, i64* %RSI.i2748, align 8
  %6500 = load i64, i64* %RDX.i2756, align 8
  %6501 = add i64 %6499, %6500
  store i64 %6501, i64* %RDX.i2756, align 8
  %6502 = icmp ult i64 %6501, %6500
  %6503 = icmp ult i64 %6501, %6499
  %6504 = or i1 %6502, %6503
  %6505 = zext i1 %6504 to i8
  store i8 %6505, i8* %12, align 1
  %6506 = trunc i64 %6501 to i32
  %6507 = and i32 %6506, 255
  %6508 = tail call i32 @llvm.ctpop.i32(i32 %6507)
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  store i8 %6511, i8* %13, align 1
  %6512 = xor i64 %6500, %6501
  %6513 = lshr i64 %6512, 4
  %6514 = trunc i64 %6513 to i8
  %6515 = and i8 %6514, 1
  store i8 %6515, i8* %14, align 1
  %6516 = icmp eq i64 %6501, 0
  %6517 = zext i1 %6516 to i8
  store i8 %6517, i8* %15, align 1
  %6518 = lshr i64 %6501, 63
  %6519 = trunc i64 %6518 to i8
  store i8 %6519, i8* %16, align 1
  %6520 = lshr i64 %6500, 63
  %6521 = lshr i64 %6498, 58
  %6522 = and i64 %6521, 1
  %6523 = xor i64 %6518, %6520
  %6524 = xor i64 %6518, %6522
  %6525 = add nuw nsw i64 %6523, %6524
  %6526 = icmp eq i64 %6525, 2
  %6527 = zext i1 %6526 to i8
  store i8 %6527, i8* %17, align 1
  %6528 = load i64, i64* %RBP.i, align 8
  %6529 = add i64 %6528, -28
  %6530 = add i64 %6428, 53
  store i64 %6530, i64* %3, align 8
  %6531 = inttoptr i64 %6529 to i32*
  %6532 = load i32, i32* %6531, align 4
  %6533 = zext i32 %6532 to i64
  store i64 %6533, i64* %RCX.i2784, align 8
  %6534 = add i64 %6528, -8
  %6535 = add i64 %6428, 56
  store i64 %6535, i64* %3, align 8
  %6536 = inttoptr i64 %6534 to i32*
  %6537 = load i32, i32* %6536, align 4
  %6538 = add i32 %6537, %6532
  %6539 = zext i32 %6538 to i64
  store i64 %6539, i64* %RCX.i2784, align 8
  %6540 = icmp ult i32 %6538, %6532
  %6541 = icmp ult i32 %6538, %6537
  %6542 = or i1 %6540, %6541
  %6543 = zext i1 %6542 to i8
  store i8 %6543, i8* %12, align 1
  %6544 = and i32 %6538, 255
  %6545 = tail call i32 @llvm.ctpop.i32(i32 %6544)
  %6546 = trunc i32 %6545 to i8
  %6547 = and i8 %6546, 1
  %6548 = xor i8 %6547, 1
  store i8 %6548, i8* %13, align 1
  %6549 = xor i32 %6537, %6532
  %6550 = xor i32 %6549, %6538
  %6551 = lshr i32 %6550, 4
  %6552 = trunc i32 %6551 to i8
  %6553 = and i8 %6552, 1
  store i8 %6553, i8* %14, align 1
  %6554 = icmp eq i32 %6538, 0
  %6555 = zext i1 %6554 to i8
  store i8 %6555, i8* %15, align 1
  %6556 = lshr i32 %6538, 31
  %6557 = trunc i32 %6556 to i8
  store i8 %6557, i8* %16, align 1
  %6558 = lshr i32 %6532, 31
  %6559 = lshr i32 %6537, 31
  %6560 = xor i32 %6556, %6558
  %6561 = xor i32 %6556, %6559
  %6562 = add nuw nsw i32 %6560, %6561
  %6563 = icmp eq i32 %6562, 2
  %6564 = zext i1 %6563 to i8
  store i8 %6564, i8* %17, align 1
  %6565 = sext i32 %6538 to i64
  store i64 %6565, i64* %RSI.i2748, align 8
  %6566 = shl nsw i64 %6565, 1
  %6567 = add i64 %6501, %6566
  %6568 = add i64 %6428, 63
  store i64 %6568, i64* %3, align 8
  %6569 = inttoptr i64 %6567 to i16*
  %6570 = load i16, i16* %6569, align 2
  %6571 = zext i16 %6570 to i64
  store i64 %6571, i64* %RCX.i2784, align 8
  %6572 = zext i16 %6570 to i64
  %6573 = shl nuw nsw i64 %6572, 6
  store i64 %6573, i64* %RDX.i2756, align 8
  %6574 = load i64, i64* %RAX.i1983, align 8
  %6575 = add i64 %6573, %6574
  %6576 = add i64 %6575, 32
  %6577 = lshr i64 %6576, 5
  %6578 = trunc i64 %6577 to i8
  %6579 = and i8 %6578, 1
  %6580 = ashr i64 %6576, 6
  store i64 %6580, i64* %RAX.i1983, align 8
  store i8 %6579, i8* %12, align 1
  %6581 = trunc i64 %6580 to i32
  %6582 = and i32 %6581, 255
  %6583 = tail call i32 @llvm.ctpop.i32(i32 %6582)
  %6584 = trunc i32 %6583 to i8
  %6585 = and i8 %6584, 1
  %6586 = xor i8 %6585, 1
  store i8 %6586, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %6587 = icmp eq i64 %6580, 0
  %6588 = zext i1 %6587 to i8
  store i8 %6588, i8* %15, align 1
  %6589 = lshr i64 %6580, 63
  %6590 = trunc i64 %6589 to i8
  store i8 %6590, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %6591 = load i64, i64* %RBP.i, align 8
  %6592 = add i64 %6591, -224
  %6593 = add i64 %6428, 87
  store i64 %6593, i64* %3, align 8
  %6594 = inttoptr i64 %6592 to i64*
  store i64 %6580, i64* %6594, align 8
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_406fef

block_.L_406fef:                                  ; preds = %block_.L_406f98, %block_406f88
  %6595 = phi i64 [ %.pre163, %block_.L_406f98 ], [ %6434, %block_406f88 ]
  %6596 = load i64, i64* %RBP.i, align 8
  %6597 = add i64 %6596, -224
  %6598 = add i64 %6595, 7
  store i64 %6598, i64* %3, align 8
  %6599 = inttoptr i64 %6597 to i64*
  %6600 = load i64, i64* %6599, align 8
  store i64 %6600, i64* %RAX.i1983, align 8
  %6601 = add i64 %6596, -216
  %6602 = add i64 %6595, 14
  store i64 %6602, i64* %3, align 8
  %6603 = inttoptr i64 %6601 to i64*
  store i64 %6600, i64* %6603, align 8
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_406ffd

block_.L_406ffd:                                  ; preds = %block_.L_406fef, %block_406f10
  %6604 = phi i64 [ %.pre164, %block_.L_406fef ], [ %6256, %block_406f10 ]
  %6605 = load i64, i64* %RBP.i, align 8
  %6606 = add i64 %6605, -216
  %6607 = add i64 %6604, 7
  store i64 %6607, i64* %3, align 8
  %6608 = inttoptr i64 %6606 to i64*
  %6609 = load i64, i64* %6608, align 8
  store i64 0, i64* %RDX.i2756, align 8
  %6610 = and i64 %6609, 4294967295
  store i64 %6610, i64* %RCX.i2784, align 8
  %6611 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6612 = add i64 %6611, 13112
  store i64 %6612, i64* %RAX.i1983, align 8
  %6613 = icmp ugt i64 %6611, -13113
  %6614 = zext i1 %6613 to i8
  store i8 %6614, i8* %12, align 1
  %6615 = trunc i64 %6612 to i32
  %6616 = and i32 %6615, 255
  %6617 = tail call i32 @llvm.ctpop.i32(i32 %6616)
  %6618 = trunc i32 %6617 to i8
  %6619 = and i8 %6618, 1
  %6620 = xor i8 %6619, 1
  store i8 %6620, i8* %13, align 1
  %6621 = xor i64 %6611, 16
  %6622 = xor i64 %6621, %6612
  %6623 = lshr i64 %6622, 4
  %6624 = trunc i64 %6623 to i8
  %6625 = and i8 %6624, 1
  store i8 %6625, i8* %14, align 1
  %6626 = icmp eq i64 %6612, 0
  %6627 = zext i1 %6626 to i8
  store i8 %6627, i8* %15, align 1
  %6628 = lshr i64 %6612, 63
  %6629 = trunc i64 %6628 to i8
  store i8 %6629, i8* %16, align 1
  %6630 = lshr i64 %6611, 63
  %6631 = xor i64 %6628, %6630
  %6632 = add nuw nsw i64 %6631, %6628
  %6633 = icmp eq i64 %6632, 2
  %6634 = zext i1 %6633 to i8
  store i8 %6634, i8* %17, align 1
  %6635 = add i64 %6605, -24
  %6636 = add i64 %6604, 31
  store i64 %6636, i64* %3, align 8
  %6637 = inttoptr i64 %6635 to i32*
  %6638 = load i32, i32* %6637, align 4
  %6639 = sext i32 %6638 to i64
  %6640 = shl nsw i64 %6639, 6
  store i64 %6640, i64* %RSI.i2748, align 8
  %6641 = add i64 %6640, %6612
  store i64 %6641, i64* %RAX.i1983, align 8
  %6642 = icmp ult i64 %6641, %6612
  %6643 = icmp ult i64 %6641, %6640
  %6644 = or i1 %6642, %6643
  %6645 = zext i1 %6644 to i8
  store i8 %6645, i8* %12, align 1
  %6646 = trunc i64 %6641 to i32
  %6647 = and i32 %6646, 255
  %6648 = tail call i32 @llvm.ctpop.i32(i32 %6647)
  %6649 = trunc i32 %6648 to i8
  %6650 = and i8 %6649, 1
  %6651 = xor i8 %6650, 1
  store i8 %6651, i8* %13, align 1
  %6652 = xor i64 %6612, %6641
  %6653 = lshr i64 %6652, 4
  %6654 = trunc i64 %6653 to i8
  %6655 = and i8 %6654, 1
  store i8 %6655, i8* %14, align 1
  %6656 = icmp eq i64 %6641, 0
  %6657 = zext i1 %6656 to i8
  store i8 %6657, i8* %15, align 1
  %6658 = lshr i64 %6641, 63
  %6659 = trunc i64 %6658 to i8
  store i8 %6659, i8* %16, align 1
  %6660 = lshr i64 %6639, 57
  %6661 = and i64 %6660, 1
  %6662 = xor i64 %6658, %6628
  %6663 = xor i64 %6658, %6661
  %6664 = add nuw nsw i64 %6662, %6663
  %6665 = icmp eq i64 %6664, 2
  %6666 = zext i1 %6665 to i8
  store i8 %6666, i8* %17, align 1
  %6667 = load i64, i64* %RBP.i, align 8
  %6668 = add i64 %6667, -28
  %6669 = add i64 %6604, 42
  store i64 %6669, i64* %3, align 8
  %6670 = inttoptr i64 %6668 to i32*
  %6671 = load i32, i32* %6670, align 4
  %6672 = sext i32 %6671 to i64
  store i64 %6672, i64* %RSI.i2748, align 8
  %6673 = shl nsw i64 %6672, 2
  %6674 = add i64 %6673, %6641
  %6675 = load i32, i32* %ECX.i2771, align 4
  %6676 = add i64 %6604, 45
  store i64 %6676, i64* %3, align 8
  %6677 = inttoptr i64 %6674 to i32*
  store i32 %6675, i32* %6677, align 4
  %6678 = load i64, i64* %3, align 8
  %6679 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6679, i64* %RAX.i1983, align 8
  %6680 = add i64 %6679, 72684
  %6681 = add i64 %6678, 15
  store i64 %6681, i64* %3, align 8
  %6682 = inttoptr i64 %6680 to i32*
  %6683 = load i32, i32* %6682, align 4
  %6684 = sext i32 %6683 to i64
  store i64 %6684, i64* %RAX.i1983, align 8
  %6685 = load i64, i64* %RBP.i, align 8
  %6686 = add i64 %6685, -28
  %6687 = add i64 %6678, 19
  store i64 %6687, i64* %3, align 8
  %6688 = inttoptr i64 %6686 to i32*
  %6689 = load i32, i32* %6688, align 4
  %6690 = sext i32 %6689 to i64
  store i64 %6690, i64* %RSI.i2748, align 8
  %6691 = shl nsw i64 %6690, 2
  %6692 = add i64 %6685, -80
  %6693 = add i64 %6692, %6691
  %6694 = add i64 %6678, 23
  store i64 %6694, i64* %3, align 8
  %6695 = inttoptr i64 %6693 to i32*
  %6696 = load i32, i32* %6695, align 4
  %6697 = zext i32 %6696 to i64
  store i64 %6697, i64* %RCX.i2784, align 8
  %6698 = add i64 %6685, -36
  %6699 = add i64 %6678, 27
  store i64 %6699, i64* %3, align 8
  %6700 = inttoptr i64 %6698 to i32*
  %6701 = load i32, i32* %6700, align 4
  %6702 = sext i32 %6701 to i64
  store i64 %6702, i64* %RSI.i2748, align 8
  %6703 = shl nsw i64 %6702, 2
  %6704 = add nsw i64 %6703, -80
  %6705 = add i64 %6704, %6685
  %6706 = add i64 %6678, 31
  store i64 %6706, i64* %3, align 8
  %6707 = inttoptr i64 %6705 to i32*
  %6708 = load i32, i32* %6707, align 4
  %6709 = sub i32 %6696, %6708
  %6710 = zext i32 %6709 to i64
  store i64 %6710, i64* %RCX.i2784, align 8
  %6711 = sext i32 %6709 to i64
  store i64 %6711, i64* %RSI.i2748, align 8
  %6712 = add i64 %6679, 12600
  store i64 %6712, i64* %RDI.i1875, align 8
  %6713 = icmp ugt i64 %6679, -12601
  %6714 = zext i1 %6713 to i8
  store i8 %6714, i8* %12, align 1
  %6715 = trunc i64 %6712 to i32
  %6716 = and i32 %6715, 255
  %6717 = tail call i32 @llvm.ctpop.i32(i32 %6716)
  %6718 = trunc i32 %6717 to i8
  %6719 = and i8 %6718, 1
  %6720 = xor i8 %6719, 1
  store i8 %6720, i8* %13, align 1
  %6721 = xor i64 %6679, 16
  %6722 = xor i64 %6721, %6712
  %6723 = lshr i64 %6722, 4
  %6724 = trunc i64 %6723 to i8
  %6725 = and i8 %6724, 1
  store i8 %6725, i8* %14, align 1
  %6726 = icmp eq i64 %6712, 0
  %6727 = zext i1 %6726 to i8
  store i8 %6727, i8* %15, align 1
  %6728 = lshr i64 %6712, 63
  %6729 = trunc i64 %6728 to i8
  store i8 %6729, i8* %16, align 1
  %6730 = lshr i64 %6679, 63
  %6731 = xor i64 %6728, %6730
  %6732 = add nuw nsw i64 %6731, %6728
  %6733 = icmp eq i64 %6732, 2
  %6734 = zext i1 %6733 to i8
  store i8 %6734, i8* %17, align 1
  %6735 = load i64, i64* %RBP.i, align 8
  %6736 = add i64 %6735, -24
  %6737 = add i64 %6678, 52
  store i64 %6737, i64* %3, align 8
  %6738 = inttoptr i64 %6736 to i32*
  %6739 = load i32, i32* %6738, align 4
  %6740 = zext i32 %6739 to i64
  store i64 %6740, i64* %RCX.i2784, align 8
  %6741 = add i64 %6735, -4
  %6742 = add i64 %6678, 55
  store i64 %6742, i64* %3, align 8
  %6743 = inttoptr i64 %6741 to i32*
  %6744 = load i32, i32* %6743, align 4
  %6745 = add i32 %6744, %6739
  %6746 = zext i32 %6745 to i64
  store i64 %6746, i64* %RCX.i2784, align 8
  %6747 = sext i32 %6745 to i64
  %6748 = shl nsw i64 %6747, 5
  store i64 %6748, i64* %R8.i1581, align 8
  %6749 = load i64, i64* %RDI.i1875, align 8
  %6750 = add i64 %6748, %6749
  store i64 %6750, i64* %RDI.i1875, align 8
  %6751 = icmp ult i64 %6750, %6749
  %6752 = icmp ult i64 %6750, %6748
  %6753 = or i1 %6751, %6752
  %6754 = zext i1 %6753 to i8
  store i8 %6754, i8* %12, align 1
  %6755 = trunc i64 %6750 to i32
  %6756 = and i32 %6755, 255
  %6757 = tail call i32 @llvm.ctpop.i32(i32 %6756)
  %6758 = trunc i32 %6757 to i8
  %6759 = and i8 %6758, 1
  %6760 = xor i8 %6759, 1
  store i8 %6760, i8* %13, align 1
  %6761 = xor i64 %6749, %6750
  %6762 = lshr i64 %6761, 4
  %6763 = trunc i64 %6762 to i8
  %6764 = and i8 %6763, 1
  store i8 %6764, i8* %14, align 1
  %6765 = icmp eq i64 %6750, 0
  %6766 = zext i1 %6765 to i8
  store i8 %6766, i8* %15, align 1
  %6767 = lshr i64 %6750, 63
  %6768 = trunc i64 %6767 to i8
  store i8 %6768, i8* %16, align 1
  %6769 = lshr i64 %6749, 63
  %6770 = lshr i64 %6747, 58
  %6771 = and i64 %6770, 1
  %6772 = xor i64 %6767, %6769
  %6773 = xor i64 %6767, %6771
  %6774 = add nuw nsw i64 %6772, %6773
  %6775 = icmp eq i64 %6774, 2
  %6776 = zext i1 %6775 to i8
  store i8 %6776, i8* %17, align 1
  %6777 = load i64, i64* %RBP.i, align 8
  %6778 = add i64 %6777, -36
  %6779 = add i64 %6678, 68
  store i64 %6779, i64* %3, align 8
  %6780 = inttoptr i64 %6778 to i32*
  %6781 = load i32, i32* %6780, align 4
  %6782 = zext i32 %6781 to i64
  store i64 %6782, i64* %RCX.i2784, align 8
  %6783 = add i64 %6777, -8
  %6784 = add i64 %6678, 71
  store i64 %6784, i64* %3, align 8
  %6785 = inttoptr i64 %6783 to i32*
  %6786 = load i32, i32* %6785, align 4
  %6787 = add i32 %6786, %6781
  %6788 = zext i32 %6787 to i64
  store i64 %6788, i64* %RCX.i2784, align 8
  %6789 = icmp ult i32 %6787, %6781
  %6790 = icmp ult i32 %6787, %6786
  %6791 = or i1 %6789, %6790
  %6792 = zext i1 %6791 to i8
  store i8 %6792, i8* %12, align 1
  %6793 = and i32 %6787, 255
  %6794 = tail call i32 @llvm.ctpop.i32(i32 %6793)
  %6795 = trunc i32 %6794 to i8
  %6796 = and i8 %6795, 1
  %6797 = xor i8 %6796, 1
  store i8 %6797, i8* %13, align 1
  %6798 = xor i32 %6786, %6781
  %6799 = xor i32 %6798, %6787
  %6800 = lshr i32 %6799, 4
  %6801 = trunc i32 %6800 to i8
  %6802 = and i8 %6801, 1
  store i8 %6802, i8* %14, align 1
  %6803 = icmp eq i32 %6787, 0
  %6804 = zext i1 %6803 to i8
  store i8 %6804, i8* %15, align 1
  %6805 = lshr i32 %6787, 31
  %6806 = trunc i32 %6805 to i8
  store i8 %6806, i8* %16, align 1
  %6807 = lshr i32 %6781, 31
  %6808 = lshr i32 %6786, 31
  %6809 = xor i32 %6805, %6807
  %6810 = xor i32 %6805, %6808
  %6811 = add nuw nsw i32 %6809, %6810
  %6812 = icmp eq i32 %6811, 2
  %6813 = zext i1 %6812 to i8
  store i8 %6813, i8* %17, align 1
  %6814 = sext i32 %6787 to i64
  store i64 %6814, i64* %R8.i1581, align 8
  %6815 = shl nsw i64 %6814, 1
  %6816 = add i64 %6750, %6815
  %6817 = add i64 %6678, 79
  store i64 %6817, i64* %3, align 8
  %6818 = inttoptr i64 %6816 to i16*
  %6819 = load i16, i16* %6818, align 2
  %6820 = zext i16 %6819 to i64
  store i64 %6820, i64* %RCX.i2784, align 8
  %6821 = zext i16 %6819 to i64
  %6822 = shl nuw nsw i64 %6821, 6
  store i64 %6822, i64* %RDI.i1875, align 8
  %6823 = load i64, i64* %RSI.i2748, align 8
  %6824 = add i64 %6822, %6823
  %6825 = add i64 %6824, 32
  %6826 = ashr i64 %6825, 6
  store i64 %6826, i64* %RSI.i2748, align 8
  %6827 = lshr i64 %6826, 63
  %6828 = load i64, i64* %RDX.i2756, align 8
  %6829 = sub i64 %6828, %6826
  %6830 = icmp ult i64 %6828, %6826
  %6831 = zext i1 %6830 to i8
  store i8 %6831, i8* %12, align 1
  %6832 = trunc i64 %6829 to i32
  %6833 = and i32 %6832, 255
  %6834 = tail call i32 @llvm.ctpop.i32(i32 %6833)
  %6835 = trunc i32 %6834 to i8
  %6836 = and i8 %6835, 1
  %6837 = xor i8 %6836, 1
  store i8 %6837, i8* %13, align 1
  %6838 = xor i64 %6826, %6828
  %6839 = xor i64 %6838, %6829
  %6840 = lshr i64 %6839, 4
  %6841 = trunc i64 %6840 to i8
  %6842 = and i8 %6841, 1
  store i8 %6842, i8* %14, align 1
  %6843 = icmp eq i64 %6829, 0
  %6844 = zext i1 %6843 to i8
  store i8 %6844, i8* %15, align 1
  %6845 = lshr i64 %6829, 63
  %6846 = trunc i64 %6845 to i8
  store i8 %6846, i8* %16, align 1
  %6847 = lshr i64 %6828, 63
  %6848 = xor i64 %6827, %6847
  %6849 = xor i64 %6845, %6847
  %6850 = add nuw nsw i64 %6849, %6848
  %6851 = icmp eq i64 %6850, 2
  %6852 = zext i1 %6851 to i8
  store i8 %6852, i8* %17, align 1
  %6853 = load i64, i64* %RBP.i, align 8
  %6854 = add i64 %6853, -232
  %6855 = load i64, i64* %RAX.i1983, align 8
  %6856 = add i64 %6678, 106
  store i64 %6856, i64* %3, align 8
  %6857 = inttoptr i64 %6854 to i64*
  store i64 %6855, i64* %6857, align 8
  %6858 = load i64, i64* %3, align 8
  %6859 = load i8, i8* %15, align 1
  %6860 = icmp ne i8 %6859, 0
  %6861 = load i8, i8* %16, align 1
  %6862 = icmp ne i8 %6861, 0
  %6863 = load i8, i8* %17, align 1
  %6864 = icmp ne i8 %6863, 0
  %6865 = xor i1 %6862, %6864
  %6866 = or i1 %6860, %6865
  %.v240 = select i1 %6866, i64 22, i64 6
  %6867 = add i64 %6858, %.v240
  store i64 %6867, i64* %3, align 8
  br i1 %6866, label %block_.L_4070aa, label %block_40709a

block_40709a:                                     ; preds = %block_.L_406ffd
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  %6868 = load i64, i64* %RBP.i, align 8
  %6869 = add i64 %6868, -240
  %6870 = add i64 %6867, 11
  store i64 %6870, i64* %3, align 8
  %6871 = inttoptr i64 %6869 to i64*
  store i64 0, i64* %6871, align 8
  %6872 = load i64, i64* %3, align 8
  %6873 = add i64 %6872, 92
  store i64 %6873, i64* %3, align 8
  br label %block_.L_407101

block_.L_4070aa:                                  ; preds = %block_.L_406ffd
  %6874 = load i64, i64* %RBP.i, align 8
  %6875 = add i64 %6874, -28
  %6876 = add i64 %6867, 4
  store i64 %6876, i64* %3, align 8
  %6877 = inttoptr i64 %6875 to i32*
  %6878 = load i32, i32* %6877, align 4
  %6879 = sext i32 %6878 to i64
  store i64 %6879, i64* %RAX.i1983, align 8
  %6880 = shl nsw i64 %6879, 2
  %6881 = add i64 %6874, -80
  %6882 = add i64 %6881, %6880
  %6883 = add i64 %6867, 8
  store i64 %6883, i64* %3, align 8
  %6884 = inttoptr i64 %6882 to i32*
  %6885 = load i32, i32* %6884, align 4
  %6886 = zext i32 %6885 to i64
  store i64 %6886, i64* %RCX.i2784, align 8
  %6887 = add i64 %6874, -36
  %6888 = add i64 %6867, 12
  store i64 %6888, i64* %3, align 8
  %6889 = inttoptr i64 %6887 to i32*
  %6890 = load i32, i32* %6889, align 4
  %6891 = sext i32 %6890 to i64
  store i64 %6891, i64* %RAX.i1983, align 8
  %6892 = shl nsw i64 %6891, 2
  %6893 = add nsw i64 %6892, -80
  %6894 = add i64 %6893, %6874
  %6895 = add i64 %6867, 16
  store i64 %6895, i64* %3, align 8
  %6896 = inttoptr i64 %6894 to i32*
  %6897 = load i32, i32* %6896, align 4
  %6898 = sub i32 %6885, %6897
  %6899 = zext i32 %6898 to i64
  store i64 %6899, i64* %RCX.i2784, align 8
  %6900 = sext i32 %6898 to i64
  store i64 %6900, i64* %RAX.i1983, align 8
  %6901 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6902 = add i64 %6901, 12600
  store i64 %6902, i64* %RDX.i2756, align 8
  %6903 = icmp ugt i64 %6901, -12601
  %6904 = zext i1 %6903 to i8
  store i8 %6904, i8* %12, align 1
  %6905 = trunc i64 %6902 to i32
  %6906 = and i32 %6905, 255
  %6907 = tail call i32 @llvm.ctpop.i32(i32 %6906)
  %6908 = trunc i32 %6907 to i8
  %6909 = and i8 %6908, 1
  %6910 = xor i8 %6909, 1
  store i8 %6910, i8* %13, align 1
  %6911 = xor i64 %6901, 16
  %6912 = xor i64 %6911, %6902
  %6913 = lshr i64 %6912, 4
  %6914 = trunc i64 %6913 to i8
  %6915 = and i8 %6914, 1
  store i8 %6915, i8* %14, align 1
  %6916 = icmp eq i64 %6902, 0
  %6917 = zext i1 %6916 to i8
  store i8 %6917, i8* %15, align 1
  %6918 = lshr i64 %6902, 63
  %6919 = trunc i64 %6918 to i8
  store i8 %6919, i8* %16, align 1
  %6920 = lshr i64 %6901, 63
  %6921 = xor i64 %6918, %6920
  %6922 = add nuw nsw i64 %6921, %6918
  %6923 = icmp eq i64 %6922, 2
  %6924 = zext i1 %6923 to i8
  store i8 %6924, i8* %17, align 1
  %6925 = load i64, i64* %RBP.i, align 8
  %6926 = add i64 %6925, -24
  %6927 = add i64 %6867, 37
  store i64 %6927, i64* %3, align 8
  %6928 = inttoptr i64 %6926 to i32*
  %6929 = load i32, i32* %6928, align 4
  %6930 = zext i32 %6929 to i64
  store i64 %6930, i64* %RCX.i2784, align 8
  %6931 = add i64 %6925, -4
  %6932 = add i64 %6867, 40
  store i64 %6932, i64* %3, align 8
  %6933 = inttoptr i64 %6931 to i32*
  %6934 = load i32, i32* %6933, align 4
  %6935 = add i32 %6934, %6929
  %6936 = zext i32 %6935 to i64
  store i64 %6936, i64* %RCX.i2784, align 8
  %6937 = sext i32 %6935 to i64
  %6938 = shl nsw i64 %6937, 5
  store i64 %6938, i64* %RSI.i2748, align 8
  %6939 = load i64, i64* %RDX.i2756, align 8
  %6940 = add i64 %6938, %6939
  store i64 %6940, i64* %RDX.i2756, align 8
  %6941 = icmp ult i64 %6940, %6939
  %6942 = icmp ult i64 %6940, %6938
  %6943 = or i1 %6941, %6942
  %6944 = zext i1 %6943 to i8
  store i8 %6944, i8* %12, align 1
  %6945 = trunc i64 %6940 to i32
  %6946 = and i32 %6945, 255
  %6947 = tail call i32 @llvm.ctpop.i32(i32 %6946)
  %6948 = trunc i32 %6947 to i8
  %6949 = and i8 %6948, 1
  %6950 = xor i8 %6949, 1
  store i8 %6950, i8* %13, align 1
  %6951 = xor i64 %6939, %6940
  %6952 = lshr i64 %6951, 4
  %6953 = trunc i64 %6952 to i8
  %6954 = and i8 %6953, 1
  store i8 %6954, i8* %14, align 1
  %6955 = icmp eq i64 %6940, 0
  %6956 = zext i1 %6955 to i8
  store i8 %6956, i8* %15, align 1
  %6957 = lshr i64 %6940, 63
  %6958 = trunc i64 %6957 to i8
  store i8 %6958, i8* %16, align 1
  %6959 = lshr i64 %6939, 63
  %6960 = lshr i64 %6937, 58
  %6961 = and i64 %6960, 1
  %6962 = xor i64 %6957, %6959
  %6963 = xor i64 %6957, %6961
  %6964 = add nuw nsw i64 %6962, %6963
  %6965 = icmp eq i64 %6964, 2
  %6966 = zext i1 %6965 to i8
  store i8 %6966, i8* %17, align 1
  %6967 = load i64, i64* %RBP.i, align 8
  %6968 = add i64 %6967, -36
  %6969 = add i64 %6867, 53
  store i64 %6969, i64* %3, align 8
  %6970 = inttoptr i64 %6968 to i32*
  %6971 = load i32, i32* %6970, align 4
  %6972 = zext i32 %6971 to i64
  store i64 %6972, i64* %RCX.i2784, align 8
  %6973 = add i64 %6967, -8
  %6974 = add i64 %6867, 56
  store i64 %6974, i64* %3, align 8
  %6975 = inttoptr i64 %6973 to i32*
  %6976 = load i32, i32* %6975, align 4
  %6977 = add i32 %6976, %6971
  %6978 = zext i32 %6977 to i64
  store i64 %6978, i64* %RCX.i2784, align 8
  %6979 = icmp ult i32 %6977, %6971
  %6980 = icmp ult i32 %6977, %6976
  %6981 = or i1 %6979, %6980
  %6982 = zext i1 %6981 to i8
  store i8 %6982, i8* %12, align 1
  %6983 = and i32 %6977, 255
  %6984 = tail call i32 @llvm.ctpop.i32(i32 %6983)
  %6985 = trunc i32 %6984 to i8
  %6986 = and i8 %6985, 1
  %6987 = xor i8 %6986, 1
  store i8 %6987, i8* %13, align 1
  %6988 = xor i32 %6976, %6971
  %6989 = xor i32 %6988, %6977
  %6990 = lshr i32 %6989, 4
  %6991 = trunc i32 %6990 to i8
  %6992 = and i8 %6991, 1
  store i8 %6992, i8* %14, align 1
  %6993 = icmp eq i32 %6977, 0
  %6994 = zext i1 %6993 to i8
  store i8 %6994, i8* %15, align 1
  %6995 = lshr i32 %6977, 31
  %6996 = trunc i32 %6995 to i8
  store i8 %6996, i8* %16, align 1
  %6997 = lshr i32 %6971, 31
  %6998 = lshr i32 %6976, 31
  %6999 = xor i32 %6995, %6997
  %7000 = xor i32 %6995, %6998
  %7001 = add nuw nsw i32 %6999, %7000
  %7002 = icmp eq i32 %7001, 2
  %7003 = zext i1 %7002 to i8
  store i8 %7003, i8* %17, align 1
  %7004 = sext i32 %6977 to i64
  store i64 %7004, i64* %RSI.i2748, align 8
  %7005 = shl nsw i64 %7004, 1
  %7006 = add i64 %6940, %7005
  %7007 = add i64 %6867, 63
  store i64 %7007, i64* %3, align 8
  %7008 = inttoptr i64 %7006 to i16*
  %7009 = load i16, i16* %7008, align 2
  %7010 = zext i16 %7009 to i64
  store i64 %7010, i64* %RCX.i2784, align 8
  %7011 = zext i16 %7009 to i64
  %7012 = shl nuw nsw i64 %7011, 6
  store i64 %7012, i64* %RDX.i2756, align 8
  %7013 = load i64, i64* %RAX.i1983, align 8
  %7014 = add i64 %7012, %7013
  %7015 = add i64 %7014, 32
  %7016 = lshr i64 %7015, 5
  %7017 = trunc i64 %7016 to i8
  %7018 = and i8 %7017, 1
  %7019 = ashr i64 %7015, 6
  store i64 %7019, i64* %RAX.i1983, align 8
  store i8 %7018, i8* %12, align 1
  %7020 = trunc i64 %7019 to i32
  %7021 = and i32 %7020, 255
  %7022 = tail call i32 @llvm.ctpop.i32(i32 %7021)
  %7023 = trunc i32 %7022 to i8
  %7024 = and i8 %7023, 1
  %7025 = xor i8 %7024, 1
  store i8 %7025, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %7026 = icmp eq i64 %7019, 0
  %7027 = zext i1 %7026 to i8
  store i8 %7027, i8* %15, align 1
  %7028 = lshr i64 %7019, 63
  %7029 = trunc i64 %7028 to i8
  store i8 %7029, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %7030 = load i64, i64* %RBP.i, align 8
  %7031 = add i64 %7030, -240
  %7032 = add i64 %6867, 87
  store i64 %7032, i64* %3, align 8
  %7033 = inttoptr i64 %7031 to i64*
  store i64 %7019, i64* %7033, align 8
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_407101

block_.L_407101:                                  ; preds = %block_.L_4070aa, %block_40709a
  %7034 = phi i64 [ %.pre165, %block_.L_4070aa ], [ %6873, %block_40709a ]
  %7035 = load i64, i64* %RBP.i, align 8
  %7036 = add i64 %7035, -240
  %7037 = add i64 %7034, 7
  store i64 %7037, i64* %3, align 8
  %7038 = inttoptr i64 %7036 to i64*
  %7039 = load i64, i64* %7038, align 8
  store i64 %7039, i64* %RAX.i1983, align 8
  %7040 = add i64 %7035, -232
  %7041 = add i64 %7034, 14
  store i64 %7041, i64* %3, align 8
  %7042 = inttoptr i64 %7040 to i64*
  %7043 = load i64, i64* %7042, align 8
  store i64 %7043, i64* %RCX.i2784, align 8
  %7044 = sub i64 %7043, %7039
  %7045 = icmp ult i64 %7043, %7039
  %7046 = zext i1 %7045 to i8
  store i8 %7046, i8* %12, align 1
  %7047 = trunc i64 %7044 to i32
  %7048 = and i32 %7047, 255
  %7049 = tail call i32 @llvm.ctpop.i32(i32 %7048)
  %7050 = trunc i32 %7049 to i8
  %7051 = and i8 %7050, 1
  %7052 = xor i8 %7051, 1
  store i8 %7052, i8* %13, align 1
  %7053 = xor i64 %7039, %7043
  %7054 = xor i64 %7053, %7044
  %7055 = lshr i64 %7054, 4
  %7056 = trunc i64 %7055 to i8
  %7057 = and i8 %7056, 1
  store i8 %7057, i8* %14, align 1
  %7058 = icmp eq i64 %7044, 0
  %7059 = zext i1 %7058 to i8
  store i8 %7059, i8* %15, align 1
  %7060 = lshr i64 %7044, 63
  %7061 = trunc i64 %7060 to i8
  store i8 %7061, i8* %16, align 1
  %7062 = lshr i64 %7043, 63
  %7063 = lshr i64 %7039, 63
  %7064 = xor i64 %7063, %7062
  %7065 = xor i64 %7060, %7062
  %7066 = add nuw nsw i64 %7065, %7064
  %7067 = icmp eq i64 %7066, 2
  %7068 = zext i1 %7067 to i8
  store i8 %7068, i8* %17, align 1
  %7069 = icmp ne i8 %7061, 0
  %7070 = xor i1 %7069, %7067
  %.v197 = select i1 %7070, i64 23, i64 50
  %7071 = add i64 %7034, %.v197
  store i64 %7071, i64* %3, align 8
  br i1 %7070, label %block_407118, label %block_.L_407133

block_407118:                                     ; preds = %block_.L_407101
  %7072 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7072, i64* %RAX.i1983, align 8
  %7073 = add i64 %7072, 72684
  %7074 = add i64 %7071, 15
  store i64 %7074, i64* %3, align 8
  %7075 = inttoptr i64 %7073 to i32*
  %7076 = load i32, i32* %7075, align 4
  %7077 = sext i32 %7076 to i64
  store i64 %7077, i64* %RAX.i1983, align 8
  %7078 = add i64 %7035, -248
  %7079 = add i64 %7071, 22
  store i64 %7079, i64* %3, align 8
  %7080 = inttoptr i64 %7078 to i64*
  store i64 %7077, i64* %7080, align 8
  %7081 = load i64, i64* %3, align 8
  %7082 = add i64 %7081, 215
  store i64 %7082, i64* %3, align 8
  br label %block_.L_407205

block_.L_407133:                                  ; preds = %block_.L_407101
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  %7083 = add i64 %7035, -28
  %7084 = add i64 %7071, 8
  store i64 %7084, i64* %3, align 8
  %7085 = inttoptr i64 %7083 to i32*
  %7086 = load i32, i32* %7085, align 4
  %7087 = sext i32 %7086 to i64
  store i64 %7087, i64* %RDX.i2756, align 8
  %7088 = shl nsw i64 %7087, 2
  %7089 = add i64 %7035, -80
  %7090 = add i64 %7089, %7088
  %7091 = add i64 %7071, 12
  store i64 %7091, i64* %3, align 8
  %7092 = inttoptr i64 %7090 to i32*
  %7093 = load i32, i32* %7092, align 4
  %7094 = zext i32 %7093 to i64
  store i64 %7094, i64* %RAX.i1983, align 8
  %7095 = add i64 %7035, -36
  %7096 = add i64 %7071, 16
  store i64 %7096, i64* %3, align 8
  %7097 = inttoptr i64 %7095 to i32*
  %7098 = load i32, i32* %7097, align 4
  %7099 = sext i32 %7098 to i64
  store i64 %7099, i64* %RDX.i2756, align 8
  %7100 = shl nsw i64 %7099, 2
  %7101 = add nsw i64 %7100, -80
  %7102 = add i64 %7101, %7035
  %7103 = add i64 %7071, 20
  store i64 %7103, i64* %3, align 8
  %7104 = inttoptr i64 %7102 to i32*
  %7105 = load i32, i32* %7104, align 4
  %7106 = sub i32 %7093, %7105
  %7107 = zext i32 %7106 to i64
  store i64 %7107, i64* %RAX.i1983, align 8
  %7108 = sext i32 %7106 to i64
  store i64 %7108, i64* %RDX.i2756, align 8
  %7109 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7110 = add i64 %7109, 12600
  store i64 %7110, i64* %RSI.i2748, align 8
  %7111 = icmp ugt i64 %7109, -12601
  %7112 = zext i1 %7111 to i8
  store i8 %7112, i8* %12, align 1
  %7113 = trunc i64 %7110 to i32
  %7114 = and i32 %7113, 255
  %7115 = tail call i32 @llvm.ctpop.i32(i32 %7114)
  %7116 = trunc i32 %7115 to i8
  %7117 = and i8 %7116, 1
  %7118 = xor i8 %7117, 1
  store i8 %7118, i8* %13, align 1
  %7119 = xor i64 %7109, 16
  %7120 = xor i64 %7119, %7110
  %7121 = lshr i64 %7120, 4
  %7122 = trunc i64 %7121 to i8
  %7123 = and i8 %7122, 1
  store i8 %7123, i8* %14, align 1
  %7124 = icmp eq i64 %7110, 0
  %7125 = zext i1 %7124 to i8
  store i8 %7125, i8* %15, align 1
  %7126 = lshr i64 %7110, 63
  %7127 = trunc i64 %7126 to i8
  store i8 %7127, i8* %16, align 1
  %7128 = lshr i64 %7109, 63
  %7129 = xor i64 %7126, %7128
  %7130 = add nuw nsw i64 %7129, %7126
  %7131 = icmp eq i64 %7130, 2
  %7132 = zext i1 %7131 to i8
  store i8 %7132, i8* %17, align 1
  %7133 = load i64, i64* %RBP.i, align 8
  %7134 = add i64 %7133, -24
  %7135 = add i64 %7071, 41
  store i64 %7135, i64* %3, align 8
  %7136 = inttoptr i64 %7134 to i32*
  %7137 = load i32, i32* %7136, align 4
  %7138 = zext i32 %7137 to i64
  store i64 %7138, i64* %RAX.i1983, align 8
  %7139 = add i64 %7133, -4
  %7140 = add i64 %7071, 44
  store i64 %7140, i64* %3, align 8
  %7141 = inttoptr i64 %7139 to i32*
  %7142 = load i32, i32* %7141, align 4
  %7143 = add i32 %7142, %7137
  %7144 = zext i32 %7143 to i64
  store i64 %7144, i64* %RAX.i1983, align 8
  %7145 = sext i32 %7143 to i64
  %7146 = shl nsw i64 %7145, 5
  store i64 %7146, i64* %RDI.i1875, align 8
  %7147 = load i64, i64* %RSI.i2748, align 8
  %7148 = add i64 %7146, %7147
  store i64 %7148, i64* %RSI.i2748, align 8
  %7149 = icmp ult i64 %7148, %7147
  %7150 = icmp ult i64 %7148, %7146
  %7151 = or i1 %7149, %7150
  %7152 = zext i1 %7151 to i8
  store i8 %7152, i8* %12, align 1
  %7153 = trunc i64 %7148 to i32
  %7154 = and i32 %7153, 255
  %7155 = tail call i32 @llvm.ctpop.i32(i32 %7154)
  %7156 = trunc i32 %7155 to i8
  %7157 = and i8 %7156, 1
  %7158 = xor i8 %7157, 1
  store i8 %7158, i8* %13, align 1
  %7159 = xor i64 %7147, %7148
  %7160 = lshr i64 %7159, 4
  %7161 = trunc i64 %7160 to i8
  %7162 = and i8 %7161, 1
  store i8 %7162, i8* %14, align 1
  %7163 = icmp eq i64 %7148, 0
  %7164 = zext i1 %7163 to i8
  store i8 %7164, i8* %15, align 1
  %7165 = lshr i64 %7148, 63
  %7166 = trunc i64 %7165 to i8
  store i8 %7166, i8* %16, align 1
  %7167 = lshr i64 %7147, 63
  %7168 = lshr i64 %7145, 58
  %7169 = and i64 %7168, 1
  %7170 = xor i64 %7165, %7167
  %7171 = xor i64 %7165, %7169
  %7172 = add nuw nsw i64 %7170, %7171
  %7173 = icmp eq i64 %7172, 2
  %7174 = zext i1 %7173 to i8
  store i8 %7174, i8* %17, align 1
  %7175 = load i64, i64* %RBP.i, align 8
  %7176 = add i64 %7175, -36
  %7177 = add i64 %7071, 57
  store i64 %7177, i64* %3, align 8
  %7178 = inttoptr i64 %7176 to i32*
  %7179 = load i32, i32* %7178, align 4
  %7180 = zext i32 %7179 to i64
  store i64 %7180, i64* %RAX.i1983, align 8
  %7181 = add i64 %7175, -8
  %7182 = add i64 %7071, 60
  store i64 %7182, i64* %3, align 8
  %7183 = inttoptr i64 %7181 to i32*
  %7184 = load i32, i32* %7183, align 4
  %7185 = add i32 %7184, %7179
  %7186 = zext i32 %7185 to i64
  store i64 %7186, i64* %RAX.i1983, align 8
  %7187 = icmp ult i32 %7185, %7179
  %7188 = icmp ult i32 %7185, %7184
  %7189 = or i1 %7187, %7188
  %7190 = zext i1 %7189 to i8
  store i8 %7190, i8* %12, align 1
  %7191 = and i32 %7185, 255
  %7192 = tail call i32 @llvm.ctpop.i32(i32 %7191)
  %7193 = trunc i32 %7192 to i8
  %7194 = and i8 %7193, 1
  %7195 = xor i8 %7194, 1
  store i8 %7195, i8* %13, align 1
  %7196 = xor i32 %7184, %7179
  %7197 = xor i32 %7196, %7185
  %7198 = lshr i32 %7197, 4
  %7199 = trunc i32 %7198 to i8
  %7200 = and i8 %7199, 1
  store i8 %7200, i8* %14, align 1
  %7201 = icmp eq i32 %7185, 0
  %7202 = zext i1 %7201 to i8
  store i8 %7202, i8* %15, align 1
  %7203 = lshr i32 %7185, 31
  %7204 = trunc i32 %7203 to i8
  store i8 %7204, i8* %16, align 1
  %7205 = lshr i32 %7179, 31
  %7206 = lshr i32 %7184, 31
  %7207 = xor i32 %7203, %7205
  %7208 = xor i32 %7203, %7206
  %7209 = add nuw nsw i32 %7207, %7208
  %7210 = icmp eq i32 %7209, 2
  %7211 = zext i1 %7210 to i8
  store i8 %7211, i8* %17, align 1
  %7212 = sext i32 %7185 to i64
  store i64 %7212, i64* %RDI.i1875, align 8
  %7213 = shl nsw i64 %7212, 1
  %7214 = add i64 %7148, %7213
  %7215 = add i64 %7071, 67
  store i64 %7215, i64* %3, align 8
  %7216 = inttoptr i64 %7214 to i16*
  %7217 = load i16, i16* %7216, align 2
  %7218 = zext i16 %7217 to i64
  store i64 %7218, i64* %RAX.i1983, align 8
  %7219 = zext i16 %7217 to i64
  %7220 = shl nuw nsw i64 %7219, 6
  store i64 %7220, i64* %RSI.i2748, align 8
  %7221 = load i64, i64* %RDX.i2756, align 8
  %7222 = add i64 %7220, %7221
  %7223 = add i64 %7222, 32
  %7224 = ashr i64 %7223, 6
  store i64 %7224, i64* %RDX.i2756, align 8
  %7225 = lshr i64 %7224, 63
  %7226 = load i64, i64* %RCX.i2784, align 8
  %7227 = sub i64 %7226, %7224
  %7228 = icmp ult i64 %7226, %7224
  %7229 = zext i1 %7228 to i8
  store i8 %7229, i8* %12, align 1
  %7230 = trunc i64 %7227 to i32
  %7231 = and i32 %7230, 255
  %7232 = tail call i32 @llvm.ctpop.i32(i32 %7231)
  %7233 = trunc i32 %7232 to i8
  %7234 = and i8 %7233, 1
  %7235 = xor i8 %7234, 1
  store i8 %7235, i8* %13, align 1
  %7236 = xor i64 %7224, %7226
  %7237 = xor i64 %7236, %7227
  %7238 = lshr i64 %7237, 4
  %7239 = trunc i64 %7238 to i8
  %7240 = and i8 %7239, 1
  store i8 %7240, i8* %14, align 1
  %7241 = icmp eq i64 %7227, 0
  %7242 = zext i1 %7241 to i8
  store i8 %7242, i8* %15, align 1
  %7243 = lshr i64 %7227, 63
  %7244 = trunc i64 %7243 to i8
  store i8 %7244, i8* %16, align 1
  %7245 = lshr i64 %7226, 63
  %7246 = xor i64 %7225, %7245
  %7247 = xor i64 %7243, %7245
  %7248 = add nuw nsw i64 %7247, %7246
  %7249 = icmp eq i64 %7248, 2
  %7250 = zext i1 %7249 to i8
  store i8 %7250, i8* %17, align 1
  %7251 = icmp ne i8 %7244, 0
  %7252 = xor i1 %7251, %7249
  %7253 = or i1 %7241, %7252
  %.v198 = select i1 %7253, i64 109, i64 93
  %7254 = add i64 %7071, %.v198
  store i64 %7254, i64* %3, align 8
  br i1 %7253, label %block_.L_4071a0, label %block_407190

block_407190:                                     ; preds = %block_.L_407133
  store i64 0, i64* %RAX.i1983, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RCX.i2784, align 8
  %7255 = load i64, i64* %RBP.i, align 8
  %7256 = add i64 %7255, -256
  %7257 = add i64 %7254, 11
  store i64 %7257, i64* %3, align 8
  %7258 = inttoptr i64 %7256 to i64*
  store i64 0, i64* %7258, align 8
  %7259 = load i64, i64* %3, align 8
  %7260 = add i64 %7259, 92
  store i64 %7260, i64* %3, align 8
  br label %block_.L_4071f7

block_.L_4071a0:                                  ; preds = %block_.L_407133
  %7261 = load i64, i64* %RBP.i, align 8
  %7262 = add i64 %7261, -28
  %7263 = add i64 %7254, 4
  store i64 %7263, i64* %3, align 8
  %7264 = inttoptr i64 %7262 to i32*
  %7265 = load i32, i32* %7264, align 4
  %7266 = sext i32 %7265 to i64
  store i64 %7266, i64* %RAX.i1983, align 8
  %7267 = shl nsw i64 %7266, 2
  %7268 = add i64 %7261, -80
  %7269 = add i64 %7268, %7267
  %7270 = add i64 %7254, 8
  store i64 %7270, i64* %3, align 8
  %7271 = inttoptr i64 %7269 to i32*
  %7272 = load i32, i32* %7271, align 4
  %7273 = zext i32 %7272 to i64
  store i64 %7273, i64* %RCX.i2784, align 8
  %7274 = add i64 %7261, -36
  %7275 = add i64 %7254, 12
  store i64 %7275, i64* %3, align 8
  %7276 = inttoptr i64 %7274 to i32*
  %7277 = load i32, i32* %7276, align 4
  %7278 = sext i32 %7277 to i64
  store i64 %7278, i64* %RAX.i1983, align 8
  %7279 = shl nsw i64 %7278, 2
  %7280 = add nsw i64 %7279, -80
  %7281 = add i64 %7280, %7261
  %7282 = add i64 %7254, 16
  store i64 %7282, i64* %3, align 8
  %7283 = inttoptr i64 %7281 to i32*
  %7284 = load i32, i32* %7283, align 4
  %7285 = sub i32 %7272, %7284
  %7286 = zext i32 %7285 to i64
  store i64 %7286, i64* %RCX.i2784, align 8
  %7287 = sext i32 %7285 to i64
  store i64 %7287, i64* %RAX.i1983, align 8
  %7288 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7289 = add i64 %7288, 12600
  store i64 %7289, i64* %RDX.i2756, align 8
  %7290 = icmp ugt i64 %7288, -12601
  %7291 = zext i1 %7290 to i8
  store i8 %7291, i8* %12, align 1
  %7292 = trunc i64 %7289 to i32
  %7293 = and i32 %7292, 255
  %7294 = tail call i32 @llvm.ctpop.i32(i32 %7293)
  %7295 = trunc i32 %7294 to i8
  %7296 = and i8 %7295, 1
  %7297 = xor i8 %7296, 1
  store i8 %7297, i8* %13, align 1
  %7298 = xor i64 %7288, 16
  %7299 = xor i64 %7298, %7289
  %7300 = lshr i64 %7299, 4
  %7301 = trunc i64 %7300 to i8
  %7302 = and i8 %7301, 1
  store i8 %7302, i8* %14, align 1
  %7303 = icmp eq i64 %7289, 0
  %7304 = zext i1 %7303 to i8
  store i8 %7304, i8* %15, align 1
  %7305 = lshr i64 %7289, 63
  %7306 = trunc i64 %7305 to i8
  store i8 %7306, i8* %16, align 1
  %7307 = lshr i64 %7288, 63
  %7308 = xor i64 %7305, %7307
  %7309 = add nuw nsw i64 %7308, %7305
  %7310 = icmp eq i64 %7309, 2
  %7311 = zext i1 %7310 to i8
  store i8 %7311, i8* %17, align 1
  %7312 = load i64, i64* %RBP.i, align 8
  %7313 = add i64 %7312, -24
  %7314 = add i64 %7254, 37
  store i64 %7314, i64* %3, align 8
  %7315 = inttoptr i64 %7313 to i32*
  %7316 = load i32, i32* %7315, align 4
  %7317 = zext i32 %7316 to i64
  store i64 %7317, i64* %RCX.i2784, align 8
  %7318 = add i64 %7312, -4
  %7319 = add i64 %7254, 40
  store i64 %7319, i64* %3, align 8
  %7320 = inttoptr i64 %7318 to i32*
  %7321 = load i32, i32* %7320, align 4
  %7322 = add i32 %7321, %7316
  %7323 = zext i32 %7322 to i64
  store i64 %7323, i64* %RCX.i2784, align 8
  %7324 = sext i32 %7322 to i64
  %7325 = shl nsw i64 %7324, 5
  store i64 %7325, i64* %RSI.i2748, align 8
  %7326 = load i64, i64* %RDX.i2756, align 8
  %7327 = add i64 %7325, %7326
  store i64 %7327, i64* %RDX.i2756, align 8
  %7328 = icmp ult i64 %7327, %7326
  %7329 = icmp ult i64 %7327, %7325
  %7330 = or i1 %7328, %7329
  %7331 = zext i1 %7330 to i8
  store i8 %7331, i8* %12, align 1
  %7332 = trunc i64 %7327 to i32
  %7333 = and i32 %7332, 255
  %7334 = tail call i32 @llvm.ctpop.i32(i32 %7333)
  %7335 = trunc i32 %7334 to i8
  %7336 = and i8 %7335, 1
  %7337 = xor i8 %7336, 1
  store i8 %7337, i8* %13, align 1
  %7338 = xor i64 %7326, %7327
  %7339 = lshr i64 %7338, 4
  %7340 = trunc i64 %7339 to i8
  %7341 = and i8 %7340, 1
  store i8 %7341, i8* %14, align 1
  %7342 = icmp eq i64 %7327, 0
  %7343 = zext i1 %7342 to i8
  store i8 %7343, i8* %15, align 1
  %7344 = lshr i64 %7327, 63
  %7345 = trunc i64 %7344 to i8
  store i8 %7345, i8* %16, align 1
  %7346 = lshr i64 %7326, 63
  %7347 = lshr i64 %7324, 58
  %7348 = and i64 %7347, 1
  %7349 = xor i64 %7344, %7346
  %7350 = xor i64 %7344, %7348
  %7351 = add nuw nsw i64 %7349, %7350
  %7352 = icmp eq i64 %7351, 2
  %7353 = zext i1 %7352 to i8
  store i8 %7353, i8* %17, align 1
  %7354 = load i64, i64* %RBP.i, align 8
  %7355 = add i64 %7354, -36
  %7356 = add i64 %7254, 53
  store i64 %7356, i64* %3, align 8
  %7357 = inttoptr i64 %7355 to i32*
  %7358 = load i32, i32* %7357, align 4
  %7359 = zext i32 %7358 to i64
  store i64 %7359, i64* %RCX.i2784, align 8
  %7360 = add i64 %7354, -8
  %7361 = add i64 %7254, 56
  store i64 %7361, i64* %3, align 8
  %7362 = inttoptr i64 %7360 to i32*
  %7363 = load i32, i32* %7362, align 4
  %7364 = add i32 %7363, %7358
  %7365 = zext i32 %7364 to i64
  store i64 %7365, i64* %RCX.i2784, align 8
  %7366 = icmp ult i32 %7364, %7358
  %7367 = icmp ult i32 %7364, %7363
  %7368 = or i1 %7366, %7367
  %7369 = zext i1 %7368 to i8
  store i8 %7369, i8* %12, align 1
  %7370 = and i32 %7364, 255
  %7371 = tail call i32 @llvm.ctpop.i32(i32 %7370)
  %7372 = trunc i32 %7371 to i8
  %7373 = and i8 %7372, 1
  %7374 = xor i8 %7373, 1
  store i8 %7374, i8* %13, align 1
  %7375 = xor i32 %7363, %7358
  %7376 = xor i32 %7375, %7364
  %7377 = lshr i32 %7376, 4
  %7378 = trunc i32 %7377 to i8
  %7379 = and i8 %7378, 1
  store i8 %7379, i8* %14, align 1
  %7380 = icmp eq i32 %7364, 0
  %7381 = zext i1 %7380 to i8
  store i8 %7381, i8* %15, align 1
  %7382 = lshr i32 %7364, 31
  %7383 = trunc i32 %7382 to i8
  store i8 %7383, i8* %16, align 1
  %7384 = lshr i32 %7358, 31
  %7385 = lshr i32 %7363, 31
  %7386 = xor i32 %7382, %7384
  %7387 = xor i32 %7382, %7385
  %7388 = add nuw nsw i32 %7386, %7387
  %7389 = icmp eq i32 %7388, 2
  %7390 = zext i1 %7389 to i8
  store i8 %7390, i8* %17, align 1
  %7391 = sext i32 %7364 to i64
  store i64 %7391, i64* %RSI.i2748, align 8
  %7392 = shl nsw i64 %7391, 1
  %7393 = add i64 %7327, %7392
  %7394 = add i64 %7254, 63
  store i64 %7394, i64* %3, align 8
  %7395 = inttoptr i64 %7393 to i16*
  %7396 = load i16, i16* %7395, align 2
  %7397 = zext i16 %7396 to i64
  store i64 %7397, i64* %RCX.i2784, align 8
  %7398 = zext i16 %7396 to i64
  %7399 = shl nuw nsw i64 %7398, 6
  store i64 %7399, i64* %RDX.i2756, align 8
  %7400 = load i64, i64* %RAX.i1983, align 8
  %7401 = add i64 %7399, %7400
  %7402 = add i64 %7401, 32
  %7403 = lshr i64 %7402, 5
  %7404 = trunc i64 %7403 to i8
  %7405 = and i8 %7404, 1
  %7406 = ashr i64 %7402, 6
  store i64 %7406, i64* %RAX.i1983, align 8
  store i8 %7405, i8* %12, align 1
  %7407 = trunc i64 %7406 to i32
  %7408 = and i32 %7407, 255
  %7409 = tail call i32 @llvm.ctpop.i32(i32 %7408)
  %7410 = trunc i32 %7409 to i8
  %7411 = and i8 %7410, 1
  %7412 = xor i8 %7411, 1
  store i8 %7412, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %7413 = icmp eq i64 %7406, 0
  %7414 = zext i1 %7413 to i8
  store i8 %7414, i8* %15, align 1
  %7415 = lshr i64 %7406, 63
  %7416 = trunc i64 %7415 to i8
  store i8 %7416, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %7417 = load i64, i64* %RBP.i, align 8
  %7418 = add i64 %7417, -256
  %7419 = add i64 %7254, 87
  store i64 %7419, i64* %3, align 8
  %7420 = inttoptr i64 %7418 to i64*
  store i64 %7406, i64* %7420, align 8
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_4071f7

block_.L_4071f7:                                  ; preds = %block_.L_4071a0, %block_407190
  %7421 = phi i64 [ %.pre166, %block_.L_4071a0 ], [ %7260, %block_407190 ]
  %7422 = load i64, i64* %RBP.i, align 8
  %7423 = add i64 %7422, -256
  %7424 = add i64 %7421, 7
  store i64 %7424, i64* %3, align 8
  %7425 = inttoptr i64 %7423 to i64*
  %7426 = load i64, i64* %7425, align 8
  store i64 %7426, i64* %RAX.i1983, align 8
  %7427 = add i64 %7422, -248
  %7428 = add i64 %7421, 14
  store i64 %7428, i64* %3, align 8
  %7429 = inttoptr i64 %7427 to i64*
  store i64 %7426, i64* %7429, align 8
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_407205

block_.L_407205:                                  ; preds = %block_.L_4071f7, %block_407118
  %7430 = phi i64 [ %.pre167, %block_.L_4071f7 ], [ %7082, %block_407118 ]
  %7431 = load i64, i64* %RBP.i, align 8
  %7432 = add i64 %7431, -248
  %7433 = add i64 %7430, 7
  store i64 %7433, i64* %3, align 8
  %7434 = inttoptr i64 %7432 to i64*
  %7435 = load i64, i64* %7434, align 8
  %7436 = and i64 %7435, 4294967295
  store i64 %7436, i64* %RCX.i2784, align 8
  %7437 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7438 = add i64 %7437, 13112
  store i64 %7438, i64* %RAX.i1983, align 8
  %7439 = icmp ugt i64 %7437, -13113
  %7440 = zext i1 %7439 to i8
  store i8 %7440, i8* %12, align 1
  %7441 = trunc i64 %7438 to i32
  %7442 = and i32 %7441, 255
  %7443 = tail call i32 @llvm.ctpop.i32(i32 %7442)
  %7444 = trunc i32 %7443 to i8
  %7445 = and i8 %7444, 1
  %7446 = xor i8 %7445, 1
  store i8 %7446, i8* %13, align 1
  %7447 = xor i64 %7437, 16
  %7448 = xor i64 %7447, %7438
  %7449 = lshr i64 %7448, 4
  %7450 = trunc i64 %7449 to i8
  %7451 = and i8 %7450, 1
  store i8 %7451, i8* %14, align 1
  %7452 = icmp eq i64 %7438, 0
  %7453 = zext i1 %7452 to i8
  store i8 %7453, i8* %15, align 1
  %7454 = lshr i64 %7438, 63
  %7455 = trunc i64 %7454 to i8
  store i8 %7455, i8* %16, align 1
  %7456 = lshr i64 %7437, 63
  %7457 = xor i64 %7454, %7456
  %7458 = add nuw nsw i64 %7457, %7454
  %7459 = icmp eq i64 %7458, 2
  %7460 = zext i1 %7459 to i8
  store i8 %7460, i8* %17, align 1
  %7461 = add i64 %7431, -24
  %7462 = add i64 %7430, 27
  store i64 %7462, i64* %3, align 8
  %7463 = inttoptr i64 %7461 to i32*
  %7464 = load i32, i32* %7463, align 4
  %7465 = sext i32 %7464 to i64
  %7466 = shl nsw i64 %7465, 6
  store i64 %7466, i64* %RDX.i2756, align 8
  %7467 = add i64 %7466, %7438
  store i64 %7467, i64* %RAX.i1983, align 8
  %7468 = icmp ult i64 %7467, %7438
  %7469 = icmp ult i64 %7467, %7466
  %7470 = or i1 %7468, %7469
  %7471 = zext i1 %7470 to i8
  store i8 %7471, i8* %12, align 1
  %7472 = trunc i64 %7467 to i32
  %7473 = and i32 %7472, 255
  %7474 = tail call i32 @llvm.ctpop.i32(i32 %7473)
  %7475 = trunc i32 %7474 to i8
  %7476 = and i8 %7475, 1
  %7477 = xor i8 %7476, 1
  store i8 %7477, i8* %13, align 1
  %7478 = xor i64 %7438, %7467
  %7479 = lshr i64 %7478, 4
  %7480 = trunc i64 %7479 to i8
  %7481 = and i8 %7480, 1
  store i8 %7481, i8* %14, align 1
  %7482 = icmp eq i64 %7467, 0
  %7483 = zext i1 %7482 to i8
  store i8 %7483, i8* %15, align 1
  %7484 = lshr i64 %7467, 63
  %7485 = trunc i64 %7484 to i8
  store i8 %7485, i8* %16, align 1
  %7486 = lshr i64 %7465, 57
  %7487 = and i64 %7486, 1
  %7488 = xor i64 %7484, %7454
  %7489 = xor i64 %7484, %7487
  %7490 = add nuw nsw i64 %7488, %7489
  %7491 = icmp eq i64 %7490, 2
  %7492 = zext i1 %7491 to i8
  store i8 %7492, i8* %17, align 1
  %7493 = load i64, i64* %RBP.i, align 8
  %7494 = add i64 %7493, -36
  %7495 = add i64 %7430, 38
  store i64 %7495, i64* %3, align 8
  %7496 = inttoptr i64 %7494 to i32*
  %7497 = load i32, i32* %7496, align 4
  %7498 = sext i32 %7497 to i64
  store i64 %7498, i64* %RDX.i2756, align 8
  %7499 = shl nsw i64 %7498, 2
  %7500 = add i64 %7499, %7467
  %7501 = load i32, i32* %ECX.i2771, align 4
  %7502 = add i64 %7430, 41
  store i64 %7502, i64* %3, align 8
  %7503 = inttoptr i64 %7500 to i32*
  store i32 %7501, i32* %7503, align 4
  %7504 = load i64, i64* %3, align 8
  %7505 = add i64 %7504, 232
  br label %block_.L_407316

block_.L_407233:                                  ; preds = %block_406dfe
  %7506 = load i64, i64* %RBP.i, align 8
  %7507 = add i64 %7506, -156
  %7508 = add i64 %5852, 7
  store i64 %7508, i64* %3, align 8
  %7509 = inttoptr i64 %7507 to i32*
  %7510 = load i32, i32* %7509, align 4
  store i8 0, i8* %12, align 1
  %7511 = and i32 %7510, 255
  %7512 = tail call i32 @llvm.ctpop.i32(i32 %7511)
  %7513 = trunc i32 %7512 to i8
  %7514 = and i8 %7513, 1
  %7515 = xor i8 %7514, 1
  store i8 %7515, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %7516 = icmp eq i32 %7510, 0
  %7517 = zext i1 %7516 to i8
  store i8 %7517, i8* %15, align 1
  %7518 = lshr i32 %7510, 31
  %7519 = trunc i32 %7518 to i8
  store i8 %7519, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v184 = select i1 %7516, i64 114, i64 13
  %7520 = add i64 %5852, %.v184
  %7521 = add i64 %7506, -28
  %7522 = add i64 %7520, 4
  store i64 %7522, i64* %3, align 8
  %7523 = inttoptr i64 %7521 to i32*
  %7524 = load i32, i32* %7523, align 4
  %7525 = sext i32 %7524 to i64
  store i64 %7525, i64* %RAX.i1983, align 8
  %7526 = shl nsw i64 %7525, 2
  %7527 = add i64 %7506, -80
  %7528 = add i64 %7527, %7526
  %7529 = add i64 %7520, 8
  store i64 %7529, i64* %3, align 8
  %7530 = inttoptr i64 %7528 to i32*
  %7531 = load i32, i32* %7530, align 4
  %7532 = zext i32 %7531 to i64
  store i64 %7532, i64* %RCX.i2784, align 8
  %7533 = add i64 %7506, -36
  %7534 = add i64 %7520, 12
  store i64 %7534, i64* %3, align 8
  %7535 = inttoptr i64 %7533 to i32*
  %7536 = load i32, i32* %7535, align 4
  %7537 = sext i32 %7536 to i64
  store i64 %7537, i64* %RAX.i1983, align 8
  %7538 = shl nsw i64 %7537, 2
  %7539 = add nsw i64 %7538, -80
  %7540 = add i64 %7539, %7506
  %7541 = add i64 %7520, 16
  store i64 %7541, i64* %3, align 8
  %7542 = inttoptr i64 %7540 to i32*
  %7543 = load i32, i32* %7542, align 4
  %7544 = add i32 %7543, %7531
  %7545 = zext i32 %7544 to i64
  store i64 %7545, i64* %RCX.i2784, align 8
  %7546 = icmp ult i32 %7544, %7531
  %7547 = icmp ult i32 %7544, %7543
  %7548 = or i1 %7546, %7547
  %7549 = zext i1 %7548 to i8
  store i8 %7549, i8* %12, align 1
  %7550 = and i32 %7544, 255
  %7551 = tail call i32 @llvm.ctpop.i32(i32 %7550)
  %7552 = trunc i32 %7551 to i8
  %7553 = and i8 %7552, 1
  %7554 = xor i8 %7553, 1
  store i8 %7554, i8* %13, align 1
  %7555 = xor i32 %7543, %7531
  %7556 = xor i32 %7555, %7544
  %7557 = lshr i32 %7556, 4
  %7558 = trunc i32 %7557 to i8
  %7559 = and i8 %7558, 1
  store i8 %7559, i8* %14, align 1
  %7560 = icmp eq i32 %7544, 0
  %7561 = zext i1 %7560 to i8
  store i8 %7561, i8* %15, align 1
  %7562 = lshr i32 %7544, 31
  %7563 = trunc i32 %7562 to i8
  store i8 %7563, i8* %16, align 1
  %7564 = lshr i32 %7531, 31
  %7565 = lshr i32 %7543, 31
  %7566 = xor i32 %7562, %7564
  %7567 = xor i32 %7562, %7565
  %7568 = add nuw nsw i32 %7566, %7567
  %7569 = icmp eq i32 %7568, 2
  %7570 = zext i1 %7569 to i8
  store i8 %7570, i8* %17, align 1
  br i1 %7516, label %block_.L_4072a5, label %block_407240

block_407240:                                     ; preds = %block_.L_407233
  %7571 = add i64 %5838, 13112
  store i64 %7571, i64* %RAX.i1983, align 8
  %7572 = icmp ugt i64 %5838, -13113
  %7573 = zext i1 %7572 to i8
  store i8 %7573, i8* %12, align 1
  %7574 = trunc i64 %7571 to i32
  %7575 = and i32 %7574, 255
  %7576 = tail call i32 @llvm.ctpop.i32(i32 %7575)
  %7577 = trunc i32 %7576 to i8
  %7578 = and i8 %7577, 1
  %7579 = xor i8 %7578, 1
  store i8 %7579, i8* %13, align 1
  %7580 = xor i64 %5838, 16
  %7581 = xor i64 %7580, %7571
  %7582 = lshr i64 %7581, 4
  %7583 = trunc i64 %7582 to i8
  %7584 = and i8 %7583, 1
  store i8 %7584, i8* %14, align 1
  %7585 = icmp eq i64 %7571, 0
  %7586 = zext i1 %7585 to i8
  store i8 %7586, i8* %15, align 1
  %7587 = lshr i64 %7571, 63
  %7588 = trunc i64 %7587 to i8
  store i8 %7588, i8* %16, align 1
  %7589 = lshr i64 %5838, 63
  %7590 = xor i64 %7587, %7589
  %7591 = add nuw nsw i64 %7590, %7587
  %7592 = icmp eq i64 %7591, 2
  %7593 = zext i1 %7592 to i8
  store i8 %7593, i8* %17, align 1
  %7594 = add i64 %7506, -24
  %7595 = add i64 %7520, 34
  store i64 %7595, i64* %3, align 8
  %7596 = inttoptr i64 %7594 to i32*
  %7597 = load i32, i32* %7596, align 4
  %7598 = sext i32 %7597 to i64
  %7599 = shl nsw i64 %7598, 6
  store i64 %7599, i64* %RDX.i2756, align 8
  %7600 = add i64 %7599, %7571
  store i64 %7600, i64* %RAX.i1983, align 8
  %7601 = icmp ult i64 %7600, %7571
  %7602 = icmp ult i64 %7600, %7599
  %7603 = or i1 %7601, %7602
  %7604 = zext i1 %7603 to i8
  store i8 %7604, i8* %12, align 1
  %7605 = trunc i64 %7600 to i32
  %7606 = and i32 %7605, 255
  %7607 = tail call i32 @llvm.ctpop.i32(i32 %7606)
  %7608 = trunc i32 %7607 to i8
  %7609 = and i8 %7608, 1
  %7610 = xor i8 %7609, 1
  store i8 %7610, i8* %13, align 1
  %7611 = xor i64 %7571, %7600
  %7612 = lshr i64 %7611, 4
  %7613 = trunc i64 %7612 to i8
  %7614 = and i8 %7613, 1
  store i8 %7614, i8* %14, align 1
  %7615 = icmp eq i64 %7600, 0
  %7616 = zext i1 %7615 to i8
  store i8 %7616, i8* %15, align 1
  %7617 = lshr i64 %7600, 63
  %7618 = trunc i64 %7617 to i8
  store i8 %7618, i8* %16, align 1
  %7619 = lshr i64 %7598, 57
  %7620 = and i64 %7619, 1
  %7621 = xor i64 %7617, %7587
  %7622 = xor i64 %7617, %7620
  %7623 = add nuw nsw i64 %7621, %7622
  %7624 = icmp eq i64 %7623, 2
  %7625 = zext i1 %7624 to i8
  store i8 %7625, i8* %17, align 1
  %7626 = load i64, i64* %RBP.i, align 8
  %7627 = add i64 %7626, -28
  %7628 = add i64 %7520, 45
  store i64 %7628, i64* %3, align 8
  %7629 = inttoptr i64 %7627 to i32*
  %7630 = load i32, i32* %7629, align 4
  %7631 = sext i32 %7630 to i64
  store i64 %7631, i64* %RDX.i2756, align 8
  %7632 = shl nsw i64 %7631, 2
  %7633 = add i64 %7632, %7600
  %7634 = load i32, i32* %ECX.i2771, align 4
  %7635 = add i64 %7520, 48
  store i64 %7635, i64* %3, align 8
  %7636 = inttoptr i64 %7633 to i32*
  store i32 %7634, i32* %7636, align 4
  %7637 = load i64, i64* %RBP.i, align 8
  %7638 = add i64 %7637, -28
  %7639 = load i64, i64* %3, align 8
  %7640 = add i64 %7639, 4
  store i64 %7640, i64* %3, align 8
  %7641 = inttoptr i64 %7638 to i32*
  %7642 = load i32, i32* %7641, align 4
  %7643 = sext i32 %7642 to i64
  store i64 %7643, i64* %RAX.i1983, align 8
  %7644 = shl nsw i64 %7643, 2
  %7645 = add i64 %7637, -80
  %7646 = add i64 %7645, %7644
  %7647 = add i64 %7639, 8
  store i64 %7647, i64* %3, align 8
  %7648 = inttoptr i64 %7646 to i32*
  %7649 = load i32, i32* %7648, align 4
  %7650 = zext i32 %7649 to i64
  store i64 %7650, i64* %RCX.i2784, align 8
  %7651 = add i64 %7637, -36
  %7652 = add i64 %7639, 12
  store i64 %7652, i64* %3, align 8
  %7653 = inttoptr i64 %7651 to i32*
  %7654 = load i32, i32* %7653, align 4
  %7655 = sext i32 %7654 to i64
  store i64 %7655, i64* %RAX.i1983, align 8
  %7656 = shl nsw i64 %7655, 2
  %7657 = add nsw i64 %7656, -80
  %7658 = add i64 %7657, %7637
  %7659 = add i64 %7639, 16
  store i64 %7659, i64* %3, align 8
  %7660 = inttoptr i64 %7658 to i32*
  %7661 = load i32, i32* %7660, align 4
  %7662 = sub i32 %7649, %7661
  %7663 = zext i32 %7662 to i64
  store i64 %7663, i64* %RCX.i2784, align 8
  %7664 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7665 = add i64 %7664, 13112
  store i64 %7665, i64* %RAX.i1983, align 8
  %7666 = icmp ugt i64 %7664, -13113
  %7667 = zext i1 %7666 to i8
  store i8 %7667, i8* %12, align 1
  %7668 = trunc i64 %7665 to i32
  %7669 = and i32 %7668, 255
  %7670 = tail call i32 @llvm.ctpop.i32(i32 %7669)
  %7671 = trunc i32 %7670 to i8
  %7672 = and i8 %7671, 1
  %7673 = xor i8 %7672, 1
  store i8 %7673, i8* %13, align 1
  %7674 = xor i64 %7664, 16
  %7675 = xor i64 %7674, %7665
  %7676 = lshr i64 %7675, 4
  %7677 = trunc i64 %7676 to i8
  %7678 = and i8 %7677, 1
  store i8 %7678, i8* %14, align 1
  %7679 = icmp eq i64 %7665, 0
  %7680 = zext i1 %7679 to i8
  store i8 %7680, i8* %15, align 1
  %7681 = lshr i64 %7665, 63
  %7682 = trunc i64 %7681 to i8
  store i8 %7682, i8* %16, align 1
  %7683 = lshr i64 %7664, 63
  %7684 = xor i64 %7681, %7683
  %7685 = add nuw nsw i64 %7684, %7681
  %7686 = icmp eq i64 %7685, 2
  %7687 = zext i1 %7686 to i8
  store i8 %7687, i8* %17, align 1
  %7688 = load i64, i64* %RBP.i, align 8
  %7689 = add i64 %7688, -24
  %7690 = add i64 %7639, 34
  store i64 %7690, i64* %3, align 8
  %7691 = inttoptr i64 %7689 to i32*
  %7692 = load i32, i32* %7691, align 4
  %7693 = sext i32 %7692 to i64
  %7694 = shl nsw i64 %7693, 6
  store i64 %7694, i64* %RDX.i2756, align 8
  %7695 = add i64 %7694, %7665
  store i64 %7695, i64* %RAX.i1983, align 8
  %7696 = icmp ult i64 %7695, %7665
  %7697 = icmp ult i64 %7695, %7694
  %7698 = or i1 %7696, %7697
  %7699 = zext i1 %7698 to i8
  store i8 %7699, i8* %12, align 1
  %7700 = trunc i64 %7695 to i32
  %7701 = and i32 %7700, 255
  %7702 = tail call i32 @llvm.ctpop.i32(i32 %7701)
  %7703 = trunc i32 %7702 to i8
  %7704 = and i8 %7703, 1
  %7705 = xor i8 %7704, 1
  store i8 %7705, i8* %13, align 1
  %7706 = xor i64 %7665, %7695
  %7707 = lshr i64 %7706, 4
  %7708 = trunc i64 %7707 to i8
  %7709 = and i8 %7708, 1
  store i8 %7709, i8* %14, align 1
  %7710 = icmp eq i64 %7695, 0
  %7711 = zext i1 %7710 to i8
  store i8 %7711, i8* %15, align 1
  %7712 = lshr i64 %7695, 63
  %7713 = trunc i64 %7712 to i8
  store i8 %7713, i8* %16, align 1
  %7714 = lshr i64 %7693, 57
  %7715 = and i64 %7714, 1
  %7716 = xor i64 %7712, %7681
  %7717 = xor i64 %7712, %7715
  %7718 = add nuw nsw i64 %7716, %7717
  %7719 = icmp eq i64 %7718, 2
  %7720 = zext i1 %7719 to i8
  store i8 %7720, i8* %17, align 1
  %7721 = add i64 %7688, -36
  %7722 = add i64 %7639, 45
  store i64 %7722, i64* %3, align 8
  %7723 = inttoptr i64 %7721 to i32*
  %7724 = load i32, i32* %7723, align 4
  %7725 = sext i32 %7724 to i64
  store i64 %7725, i64* %RDX.i2756, align 8
  %7726 = shl nsw i64 %7725, 2
  %7727 = add i64 %7726, %7695
  %7728 = load i32, i32* %ECX.i2771, align 4
  %7729 = add i64 %7639, 48
  store i64 %7729, i64* %3, align 8
  %7730 = inttoptr i64 %7727 to i32*
  store i32 %7728, i32* %7730, align 4
  %7731 = load i64, i64* %3, align 8
  %7732 = add i64 %7731, 113
  store i64 %7732, i64* %3, align 8
  br label %block_.L_407311

block_.L_4072a5:                                  ; preds = %block_.L_407233
  %7733 = add i32 %7544, 32
  %7734 = zext i32 %7733 to i64
  %7735 = shl nuw i64 %7734, 32
  %7736 = ashr i64 %7735, 37
  %7737 = lshr i64 %7736, 1
  %7738 = and i64 %7737, 4294967295
  store i64 %7738, i64* %RCX.i2784, align 8
  %7739 = add i64 %5838, 13112
  store i64 %7739, i64* %RAX.i1983, align 8
  %7740 = icmp ugt i64 %5838, -13113
  %7741 = zext i1 %7740 to i8
  store i8 %7741, i8* %12, align 1
  %7742 = trunc i64 %7739 to i32
  %7743 = and i32 %7742, 255
  %7744 = tail call i32 @llvm.ctpop.i32(i32 %7743)
  %7745 = trunc i32 %7744 to i8
  %7746 = and i8 %7745, 1
  %7747 = xor i8 %7746, 1
  store i8 %7747, i8* %13, align 1
  %7748 = xor i64 %5838, 16
  %7749 = xor i64 %7748, %7739
  %7750 = lshr i64 %7749, 4
  %7751 = trunc i64 %7750 to i8
  %7752 = and i8 %7751, 1
  store i8 %7752, i8* %14, align 1
  %7753 = icmp eq i64 %7739, 0
  %7754 = zext i1 %7753 to i8
  store i8 %7754, i8* %15, align 1
  %7755 = lshr i64 %7739, 63
  %7756 = trunc i64 %7755 to i8
  store i8 %7756, i8* %16, align 1
  %7757 = lshr i64 %5838, 63
  %7758 = xor i64 %7755, %7757
  %7759 = add nuw nsw i64 %7758, %7755
  %7760 = icmp eq i64 %7759, 2
  %7761 = zext i1 %7760 to i8
  store i8 %7761, i8* %17, align 1
  %7762 = add i64 %7506, -24
  %7763 = add i64 %7520, 40
  store i64 %7763, i64* %3, align 8
  %7764 = inttoptr i64 %7762 to i32*
  %7765 = load i32, i32* %7764, align 4
  %7766 = sext i32 %7765 to i64
  %7767 = shl nsw i64 %7766, 6
  store i64 %7767, i64* %RDX.i2756, align 8
  %7768 = add i64 %7767, %7739
  store i64 %7768, i64* %RAX.i1983, align 8
  %7769 = icmp ult i64 %7768, %7739
  %7770 = icmp ult i64 %7768, %7767
  %7771 = or i1 %7769, %7770
  %7772 = zext i1 %7771 to i8
  store i8 %7772, i8* %12, align 1
  %7773 = trunc i64 %7768 to i32
  %7774 = and i32 %7773, 255
  %7775 = tail call i32 @llvm.ctpop.i32(i32 %7774)
  %7776 = trunc i32 %7775 to i8
  %7777 = and i8 %7776, 1
  %7778 = xor i8 %7777, 1
  store i8 %7778, i8* %13, align 1
  %7779 = xor i64 %7739, %7768
  %7780 = lshr i64 %7779, 4
  %7781 = trunc i64 %7780 to i8
  %7782 = and i8 %7781, 1
  store i8 %7782, i8* %14, align 1
  %7783 = icmp eq i64 %7768, 0
  %7784 = zext i1 %7783 to i8
  store i8 %7784, i8* %15, align 1
  %7785 = lshr i64 %7768, 63
  %7786 = trunc i64 %7785 to i8
  store i8 %7786, i8* %16, align 1
  %7787 = lshr i64 %7766, 57
  %7788 = and i64 %7787, 1
  %7789 = xor i64 %7785, %7755
  %7790 = xor i64 %7785, %7788
  %7791 = add nuw nsw i64 %7789, %7790
  %7792 = icmp eq i64 %7791, 2
  %7793 = zext i1 %7792 to i8
  store i8 %7793, i8* %17, align 1
  %7794 = load i64, i64* %RBP.i, align 8
  %7795 = add i64 %7794, -28
  %7796 = add i64 %7520, 51
  store i64 %7796, i64* %3, align 8
  %7797 = inttoptr i64 %7795 to i32*
  %7798 = load i32, i32* %7797, align 4
  %7799 = sext i32 %7798 to i64
  store i64 %7799, i64* %RDX.i2756, align 8
  %7800 = shl nsw i64 %7799, 2
  %7801 = add i64 %7800, %7768
  %7802 = load i32, i32* %ECX.i2771, align 4
  %7803 = add i64 %7520, 54
  store i64 %7803, i64* %3, align 8
  %7804 = inttoptr i64 %7801 to i32*
  store i32 %7802, i32* %7804, align 4
  %7805 = load i64, i64* %RBP.i, align 8
  %7806 = add i64 %7805, -28
  %7807 = load i64, i64* %3, align 8
  %7808 = add i64 %7807, 4
  store i64 %7808, i64* %3, align 8
  %7809 = inttoptr i64 %7806 to i32*
  %7810 = load i32, i32* %7809, align 4
  %7811 = sext i32 %7810 to i64
  store i64 %7811, i64* %RAX.i1983, align 8
  %7812 = shl nsw i64 %7811, 2
  %7813 = add i64 %7805, -80
  %7814 = add i64 %7813, %7812
  %7815 = add i64 %7807, 8
  store i64 %7815, i64* %3, align 8
  %7816 = inttoptr i64 %7814 to i32*
  %7817 = load i32, i32* %7816, align 4
  %7818 = zext i32 %7817 to i64
  store i64 %7818, i64* %RCX.i2784, align 8
  %7819 = add i64 %7805, -36
  %7820 = add i64 %7807, 12
  store i64 %7820, i64* %3, align 8
  %7821 = inttoptr i64 %7819 to i32*
  %7822 = load i32, i32* %7821, align 4
  %7823 = sext i32 %7822 to i64
  store i64 %7823, i64* %RAX.i1983, align 8
  %7824 = shl nsw i64 %7823, 2
  %7825 = add nsw i64 %7824, -80
  %7826 = add i64 %7825, %7805
  %7827 = add i64 %7807, 16
  store i64 %7827, i64* %3, align 8
  %7828 = inttoptr i64 %7826 to i32*
  %7829 = load i32, i32* %7828, align 4
  %7830 = sub i32 %7817, %7829
  %7831 = add i32 %7830, 32
  %7832 = zext i32 %7831 to i64
  %7833 = shl nuw i64 %7832, 32
  %7834 = ashr i64 %7833, 37
  %7835 = lshr i64 %7834, 1
  %7836 = and i64 %7835, 4294967295
  store i64 %7836, i64* %RCX.i2784, align 8
  %7837 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7838 = add i64 %7837, 13112
  store i64 %7838, i64* %RAX.i1983, align 8
  %7839 = icmp ugt i64 %7837, -13113
  %7840 = zext i1 %7839 to i8
  store i8 %7840, i8* %12, align 1
  %7841 = trunc i64 %7838 to i32
  %7842 = and i32 %7841, 255
  %7843 = tail call i32 @llvm.ctpop.i32(i32 %7842)
  %7844 = trunc i32 %7843 to i8
  %7845 = and i8 %7844, 1
  %7846 = xor i8 %7845, 1
  store i8 %7846, i8* %13, align 1
  %7847 = xor i64 %7837, 16
  %7848 = xor i64 %7847, %7838
  %7849 = lshr i64 %7848, 4
  %7850 = trunc i64 %7849 to i8
  %7851 = and i8 %7850, 1
  store i8 %7851, i8* %14, align 1
  %7852 = icmp eq i64 %7838, 0
  %7853 = zext i1 %7852 to i8
  store i8 %7853, i8* %15, align 1
  %7854 = lshr i64 %7838, 63
  %7855 = trunc i64 %7854 to i8
  store i8 %7855, i8* %16, align 1
  %7856 = lshr i64 %7837, 63
  %7857 = xor i64 %7854, %7856
  %7858 = add nuw nsw i64 %7857, %7854
  %7859 = icmp eq i64 %7858, 2
  %7860 = zext i1 %7859 to i8
  store i8 %7860, i8* %17, align 1
  %7861 = load i64, i64* %RBP.i, align 8
  %7862 = add i64 %7861, -24
  %7863 = add i64 %7807, 40
  store i64 %7863, i64* %3, align 8
  %7864 = inttoptr i64 %7862 to i32*
  %7865 = load i32, i32* %7864, align 4
  %7866 = sext i32 %7865 to i64
  %7867 = shl nsw i64 %7866, 6
  store i64 %7867, i64* %RDX.i2756, align 8
  %7868 = add i64 %7867, %7838
  store i64 %7868, i64* %RAX.i1983, align 8
  %7869 = icmp ult i64 %7868, %7838
  %7870 = icmp ult i64 %7868, %7867
  %7871 = or i1 %7869, %7870
  %7872 = zext i1 %7871 to i8
  store i8 %7872, i8* %12, align 1
  %7873 = trunc i64 %7868 to i32
  %7874 = and i32 %7873, 255
  %7875 = tail call i32 @llvm.ctpop.i32(i32 %7874)
  %7876 = trunc i32 %7875 to i8
  %7877 = and i8 %7876, 1
  %7878 = xor i8 %7877, 1
  store i8 %7878, i8* %13, align 1
  %7879 = xor i64 %7838, %7868
  %7880 = lshr i64 %7879, 4
  %7881 = trunc i64 %7880 to i8
  %7882 = and i8 %7881, 1
  store i8 %7882, i8* %14, align 1
  %7883 = icmp eq i64 %7868, 0
  %7884 = zext i1 %7883 to i8
  store i8 %7884, i8* %15, align 1
  %7885 = lshr i64 %7868, 63
  %7886 = trunc i64 %7885 to i8
  store i8 %7886, i8* %16, align 1
  %7887 = lshr i64 %7866, 57
  %7888 = and i64 %7887, 1
  %7889 = xor i64 %7885, %7854
  %7890 = xor i64 %7885, %7888
  %7891 = add nuw nsw i64 %7889, %7890
  %7892 = icmp eq i64 %7891, 2
  %7893 = zext i1 %7892 to i8
  store i8 %7893, i8* %17, align 1
  %7894 = add i64 %7861, -36
  %7895 = add i64 %7807, 51
  store i64 %7895, i64* %3, align 8
  %7896 = inttoptr i64 %7894 to i32*
  %7897 = load i32, i32* %7896, align 4
  %7898 = sext i32 %7897 to i64
  store i64 %7898, i64* %RDX.i2756, align 8
  %7899 = shl nsw i64 %7898, 2
  %7900 = add i64 %7899, %7868
  %7901 = load i32, i32* %ECX.i2771, align 4
  %7902 = add i64 %7807, 54
  store i64 %7902, i64* %3, align 8
  %7903 = inttoptr i64 %7900 to i32*
  store i32 %7901, i32* %7903, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_407311

block_.L_407311:                                  ; preds = %block_.L_4072a5, %block_407240
  %7904 = phi i64 [ %.pre168, %block_.L_4072a5 ], [ %7732, %block_407240 ]
  %7905 = add i64 %7904, 5
  store i64 %7905, i64* %3, align 8
  br label %block_.L_407316

block_.L_407316:                                  ; preds = %block_.L_407311, %block_.L_407205
  %storemerge73 = phi i64 [ %7505, %block_.L_407205 ], [ %7905, %block_.L_407311 ]
  %7906 = load i64, i64* %RBP.i, align 8
  %7907 = add i64 %7906, -28
  %7908 = add i64 %storemerge73, 8
  store i64 %7908, i64* %3, align 8
  %7909 = inttoptr i64 %7907 to i32*
  %7910 = load i32, i32* %7909, align 4
  %7911 = add i32 %7910, 1
  %7912 = zext i32 %7911 to i64
  store i64 %7912, i64* %RAX.i1983, align 8
  %7913 = icmp eq i32 %7910, -1
  %7914 = icmp eq i32 %7911, 0
  %7915 = or i1 %7913, %7914
  %7916 = zext i1 %7915 to i8
  store i8 %7916, i8* %12, align 1
  %7917 = and i32 %7911, 255
  %7918 = tail call i32 @llvm.ctpop.i32(i32 %7917)
  %7919 = trunc i32 %7918 to i8
  %7920 = and i8 %7919, 1
  %7921 = xor i8 %7920, 1
  store i8 %7921, i8* %13, align 1
  %7922 = xor i32 %7911, %7910
  %7923 = lshr i32 %7922, 4
  %7924 = trunc i32 %7923 to i8
  %7925 = and i8 %7924, 1
  store i8 %7925, i8* %14, align 1
  %7926 = zext i1 %7914 to i8
  store i8 %7926, i8* %15, align 1
  %7927 = lshr i32 %7911, 31
  %7928 = trunc i32 %7927 to i8
  store i8 %7928, i8* %16, align 1
  %7929 = lshr i32 %7910, 31
  %7930 = xor i32 %7927, %7929
  %7931 = add nuw nsw i32 %7930, %7927
  %7932 = icmp eq i32 %7931, 2
  %7933 = zext i1 %7932 to i8
  store i8 %7933, i8* %17, align 1
  %7934 = add i64 %storemerge73, 14
  store i64 %7934, i64* %3, align 8
  store i32 %7911, i32* %7909, align 4
  %7935 = load i64, i64* %3, align 8
  %7936 = add i64 %7935, -1328
  store i64 %7936, i64* %3, align 8
  br label %block_.L_406df4

block_.L_407329:                                  ; preds = %block_.L_406df4
  %7937 = add i64 %5781, -24
  %7938 = add i64 %5809, 8
  store i64 %7938, i64* %3, align 8
  %7939 = inttoptr i64 %7937 to i32*
  %7940 = load i32, i32* %7939, align 4
  %7941 = add i32 %7940, 1
  %7942 = zext i32 %7941 to i64
  store i64 %7942, i64* %RAX.i1983, align 8
  %7943 = icmp eq i32 %7940, -1
  %7944 = icmp eq i32 %7941, 0
  %7945 = or i1 %7943, %7944
  %7946 = zext i1 %7945 to i8
  store i8 %7946, i8* %12, align 1
  %7947 = and i32 %7941, 255
  %7948 = tail call i32 @llvm.ctpop.i32(i32 %7947)
  %7949 = trunc i32 %7948 to i8
  %7950 = and i8 %7949, 1
  %7951 = xor i8 %7950, 1
  store i8 %7951, i8* %13, align 1
  %7952 = xor i32 %7941, %7940
  %7953 = lshr i32 %7952, 4
  %7954 = trunc i32 %7953 to i8
  %7955 = and i8 %7954, 1
  store i8 %7955, i8* %14, align 1
  %7956 = zext i1 %7944 to i8
  store i8 %7956, i8* %15, align 1
  %7957 = lshr i32 %7941, 31
  %7958 = trunc i32 %7957 to i8
  store i8 %7958, i8* %16, align 1
  %7959 = lshr i32 %7940, 31
  %7960 = xor i32 %7957, %7959
  %7961 = add nuw nsw i32 %7960, %7957
  %7962 = icmp eq i32 %7961, 2
  %7963 = zext i1 %7962 to i8
  store i8 %7963, i8* %17, align 1
  %7964 = add i64 %5809, 14
  store i64 %7964, i64* %3, align 8
  store i32 %7941, i32* %7939, align 4
  %7965 = load i64, i64* %3, align 8
  %7966 = add i64 %7965, -1526
  store i64 %7966, i64* %3, align 8
  br label %block_.L_406d41

block_407351:                                     ; preds = %block_406d75
  %7967 = add i64 %5421, -28
  %7968 = add i64 %5448, 7
  store i64 %7968, i64* %3, align 8
  %7969 = inttoptr i64 %7967 to i32*
  store i32 0, i32* %7969, align 4
  %SI.i63 = bitcast %union.anon* %27 to i16*
  %DI.i124 = bitcast %union.anon* %22 to i16*
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_407358

block_.L_407358:                                  ; preds = %block_.L_407495, %block_407351
  %7970 = phi i64 [ %8611, %block_.L_407495 ], [ %.pre157, %block_407351 ]
  %7971 = load i64, i64* %RBP.i, align 8
  %7972 = add i64 %7971, -28
  %7973 = add i64 %7970, 4
  store i64 %7973, i64* %3, align 8
  %7974 = inttoptr i64 %7972 to i32*
  %7975 = load i32, i32* %7974, align 4
  %7976 = add i32 %7975, -4
  %7977 = icmp ult i32 %7975, 4
  %7978 = zext i1 %7977 to i8
  store i8 %7978, i8* %12, align 1
  %7979 = and i32 %7976, 255
  %7980 = tail call i32 @llvm.ctpop.i32(i32 %7979)
  %7981 = trunc i32 %7980 to i8
  %7982 = and i8 %7981, 1
  %7983 = xor i8 %7982, 1
  store i8 %7983, i8* %13, align 1
  %7984 = xor i32 %7976, %7975
  %7985 = lshr i32 %7984, 4
  %7986 = trunc i32 %7985 to i8
  %7987 = and i8 %7986, 1
  store i8 %7987, i8* %14, align 1
  %7988 = icmp eq i32 %7976, 0
  %7989 = zext i1 %7988 to i8
  store i8 %7989, i8* %15, align 1
  %7990 = lshr i32 %7976, 31
  %7991 = trunc i32 %7990 to i8
  store i8 %7991, i8* %16, align 1
  %7992 = lshr i32 %7975, 31
  %7993 = xor i32 %7990, %7992
  %7994 = add nuw nsw i32 %7993, %7992
  %7995 = icmp eq i32 %7994, 2
  %7996 = zext i1 %7995 to i8
  store i8 %7996, i8* %17, align 1
  %7997 = icmp ne i8 %7991, 0
  %7998 = xor i1 %7997, %7995
  %.v191 = select i1 %7998, i64 10, i64 336
  %7999 = add i64 %7970, %.v191
  store i64 %7999, i64* %3, align 8
  br i1 %7998, label %block_407362, label %block_.L_4074a8

block_407362:                                     ; preds = %block_.L_407358
  %8000 = add i64 %7971, -24
  %8001 = add i64 %7999, 7
  store i64 %8001, i64* %3, align 8
  %8002 = inttoptr i64 %8000 to i32*
  store i32 0, i32* %8002, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_407369

block_.L_407369:                                  ; preds = %block_.L_407482, %block_407362
  %8003 = phi i64 [ %8581, %block_.L_407482 ], [ %.pre158, %block_407362 ]
  %8004 = load i64, i64* %RBP.i, align 8
  %8005 = add i64 %8004, -24
  %8006 = add i64 %8003, 4
  store i64 %8006, i64* %3, align 8
  %8007 = inttoptr i64 %8005 to i32*
  %8008 = load i32, i32* %8007, align 4
  %8009 = add i32 %8008, -4
  %8010 = icmp ult i32 %8008, 4
  %8011 = zext i1 %8010 to i8
  store i8 %8011, i8* %12, align 1
  %8012 = and i32 %8009, 255
  %8013 = tail call i32 @llvm.ctpop.i32(i32 %8012)
  %8014 = trunc i32 %8013 to i8
  %8015 = and i8 %8014, 1
  %8016 = xor i8 %8015, 1
  store i8 %8016, i8* %13, align 1
  %8017 = xor i32 %8009, %8008
  %8018 = lshr i32 %8017, 4
  %8019 = trunc i32 %8018 to i8
  %8020 = and i8 %8019, 1
  store i8 %8020, i8* %14, align 1
  %8021 = icmp eq i32 %8009, 0
  %8022 = zext i1 %8021 to i8
  store i8 %8022, i8* %15, align 1
  %8023 = lshr i32 %8009, 31
  %8024 = trunc i32 %8023 to i8
  store i8 %8024, i8* %16, align 1
  %8025 = lshr i32 %8008, 31
  %8026 = xor i32 %8023, %8025
  %8027 = add nuw nsw i32 %8026, %8025
  %8028 = icmp eq i32 %8027, 2
  %8029 = zext i1 %8028 to i8
  store i8 %8029, i8* %17, align 1
  %8030 = icmp ne i8 %8024, 0
  %8031 = xor i1 %8030, %8028
  %.v183 = select i1 %8031, i64 10, i64 300
  %8032 = add i64 %8003, %.v183
  store i64 %8032, i64* %3, align 8
  br i1 %8031, label %block_407373, label %block_.L_407495

block_407373:                                     ; preds = %block_.L_407369
  %8033 = add i64 %8004, -156
  %8034 = add i64 %8032, 7
  store i64 %8034, i64* %3, align 8
  %8035 = inttoptr i64 %8033 to i32*
  %8036 = load i32, i32* %8035, align 4
  %8037 = icmp eq i32 %8036, 0
  %.v192 = select i1 %8037, i64 167, i64 13
  %8038 = add i64 %8032, %.v192
  %8039 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %8040 = add i64 %8039, 13112
  store i64 %8040, i64* %RAX.i1983, align 8
  %8041 = icmp ugt i64 %8039, -13113
  %8042 = zext i1 %8041 to i8
  store i8 %8042, i8* %12, align 1
  %8043 = trunc i64 %8040 to i32
  %8044 = and i32 %8043, 255
  %8045 = tail call i32 @llvm.ctpop.i32(i32 %8044)
  %8046 = trunc i32 %8045 to i8
  %8047 = and i8 %8046, 1
  %8048 = xor i8 %8047, 1
  store i8 %8048, i8* %13, align 1
  %8049 = xor i64 %8039, 16
  %8050 = xor i64 %8049, %8040
  %8051 = lshr i64 %8050, 4
  %8052 = trunc i64 %8051 to i8
  %8053 = and i8 %8052, 1
  store i8 %8053, i8* %14, align 1
  %8054 = icmp eq i64 %8040, 0
  %8055 = zext i1 %8054 to i8
  store i8 %8055, i8* %15, align 1
  %8056 = lshr i64 %8040, 63
  %8057 = trunc i64 %8056 to i8
  store i8 %8057, i8* %16, align 1
  %8058 = lshr i64 %8039, 63
  %8059 = xor i64 %8056, %8058
  %8060 = add nuw nsw i64 %8059, %8056
  %8061 = icmp eq i64 %8060, 2
  %8062 = zext i1 %8061 to i8
  store i8 %8062, i8* %17, align 1
  %8063 = add i64 %8038, 18
  store i64 %8063, i64* %3, align 8
  %8064 = load i32, i32* %8007, align 4
  %8065 = sext i32 %8064 to i64
  %8066 = shl nsw i64 %8065, 6
  store i64 %8066, i64* %RCX.i2784, align 8
  %8067 = add i64 %8066, %8040
  store i64 %8067, i64* %RAX.i1983, align 8
  %8068 = icmp ult i64 %8067, %8040
  %8069 = icmp ult i64 %8067, %8066
  %8070 = or i1 %8068, %8069
  %8071 = zext i1 %8070 to i8
  store i8 %8071, i8* %12, align 1
  %8072 = trunc i64 %8067 to i32
  %8073 = and i32 %8072, 255
  %8074 = tail call i32 @llvm.ctpop.i32(i32 %8073)
  %8075 = trunc i32 %8074 to i8
  %8076 = and i8 %8075, 1
  %8077 = xor i8 %8076, 1
  store i8 %8077, i8* %13, align 1
  %8078 = xor i64 %8040, %8067
  %8079 = lshr i64 %8078, 4
  %8080 = trunc i64 %8079 to i8
  %8081 = and i8 %8080, 1
  store i8 %8081, i8* %14, align 1
  %8082 = icmp eq i64 %8067, 0
  %8083 = zext i1 %8082 to i8
  store i8 %8083, i8* %15, align 1
  %8084 = lshr i64 %8067, 63
  %8085 = trunc i64 %8084 to i8
  store i8 %8085, i8* %16, align 1
  %8086 = lshr i64 %8065, 57
  %8087 = and i64 %8086, 1
  %8088 = xor i64 %8084, %8056
  %8089 = xor i64 %8084, %8087
  %8090 = add nuw nsw i64 %8088, %8089
  %8091 = icmp eq i64 %8090, 2
  %8092 = zext i1 %8091 to i8
  store i8 %8092, i8* %17, align 1
  %8093 = load i64, i64* %RBP.i, align 8
  %8094 = add i64 %8093, -28
  %8095 = add i64 %8038, 29
  store i64 %8095, i64* %3, align 8
  %8096 = inttoptr i64 %8094 to i32*
  %8097 = load i32, i32* %8096, align 4
  %8098 = sext i32 %8097 to i64
  store i64 %8098, i64* %RCX.i2784, align 8
  %8099 = shl nsw i64 %8098, 2
  %8100 = add i64 %8099, %8067
  %8101 = add i64 %8038, 32
  store i64 %8101, i64* %3, align 8
  %8102 = inttoptr i64 %8100 to i32*
  %8103 = load i32, i32* %8102, align 4
  %8104 = zext i32 %8103 to i64
  store i64 %8104, i64* %RDX.i2756, align 8
  br i1 %8037, label %block_.L_40741a, label %block_407380

block_407380:                                     ; preds = %block_407373
  %8105 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %8106 = add i64 %8105, 12600
  store i64 %8106, i64* %RAX.i1983, align 8
  %8107 = icmp ugt i64 %8105, -12601
  %8108 = zext i1 %8107 to i8
  store i8 %8108, i8* %12, align 1
  %8109 = trunc i64 %8106 to i32
  %8110 = and i32 %8109, 255
  %8111 = tail call i32 @llvm.ctpop.i32(i32 %8110)
  %8112 = trunc i32 %8111 to i8
  %8113 = and i8 %8112, 1
  %8114 = xor i8 %8113, 1
  store i8 %8114, i8* %13, align 1
  %8115 = xor i64 %8105, 16
  %8116 = xor i64 %8115, %8106
  %8117 = lshr i64 %8116, 4
  %8118 = trunc i64 %8117 to i8
  %8119 = and i8 %8118, 1
  store i8 %8119, i8* %14, align 1
  %8120 = icmp eq i64 %8106, 0
  %8121 = zext i1 %8120 to i8
  store i8 %8121, i8* %15, align 1
  %8122 = lshr i64 %8106, 63
  %8123 = trunc i64 %8122 to i8
  store i8 %8123, i8* %16, align 1
  %8124 = lshr i64 %8105, 63
  %8125 = xor i64 %8122, %8124
  %8126 = add nuw nsw i64 %8125, %8122
  %8127 = icmp eq i64 %8126, 2
  %8128 = zext i1 %8127 to i8
  store i8 %8128, i8* %17, align 1
  %8129 = add i64 %8093, -24
  %8130 = add i64 %8038, 49
  store i64 %8130, i64* %3, align 8
  %8131 = inttoptr i64 %8129 to i32*
  %8132 = load i32, i32* %8131, align 4
  %8133 = zext i32 %8132 to i64
  store i64 %8133, i64* %RSI.i2748, align 8
  %8134 = add i64 %8093, -4
  %8135 = add i64 %8038, 52
  store i64 %8135, i64* %3, align 8
  %8136 = inttoptr i64 %8134 to i32*
  %8137 = load i32, i32* %8136, align 4
  %8138 = add i32 %8137, %8132
  %8139 = zext i32 %8138 to i64
  store i64 %8139, i64* %RSI.i2748, align 8
  %8140 = sext i32 %8138 to i64
  %8141 = shl nsw i64 %8140, 5
  store i64 %8141, i64* %RCX.i2784, align 8
  %8142 = load i64, i64* %RAX.i1983, align 8
  %8143 = add i64 %8141, %8142
  store i64 %8143, i64* %RAX.i1983, align 8
  %8144 = icmp ult i64 %8143, %8142
  %8145 = icmp ult i64 %8143, %8141
  %8146 = or i1 %8144, %8145
  %8147 = zext i1 %8146 to i8
  store i8 %8147, i8* %12, align 1
  %8148 = trunc i64 %8143 to i32
  %8149 = and i32 %8148, 255
  %8150 = tail call i32 @llvm.ctpop.i32(i32 %8149)
  %8151 = trunc i32 %8150 to i8
  %8152 = and i8 %8151, 1
  %8153 = xor i8 %8152, 1
  store i8 %8153, i8* %13, align 1
  %8154 = xor i64 %8142, %8143
  %8155 = lshr i64 %8154, 4
  %8156 = trunc i64 %8155 to i8
  %8157 = and i8 %8156, 1
  store i8 %8157, i8* %14, align 1
  %8158 = icmp eq i64 %8143, 0
  %8159 = zext i1 %8158 to i8
  store i8 %8159, i8* %15, align 1
  %8160 = lshr i64 %8143, 63
  %8161 = trunc i64 %8160 to i8
  store i8 %8161, i8* %16, align 1
  %8162 = lshr i64 %8142, 63
  %8163 = lshr i64 %8140, 58
  %8164 = and i64 %8163, 1
  %8165 = xor i64 %8160, %8162
  %8166 = xor i64 %8160, %8164
  %8167 = add nuw nsw i64 %8165, %8166
  %8168 = icmp eq i64 %8167, 2
  %8169 = zext i1 %8168 to i8
  store i8 %8169, i8* %17, align 1
  %8170 = load i64, i64* %RBP.i, align 8
  %8171 = add i64 %8170, -28
  %8172 = add i64 %8038, 65
  store i64 %8172, i64* %3, align 8
  %8173 = inttoptr i64 %8171 to i32*
  %8174 = load i32, i32* %8173, align 4
  %8175 = zext i32 %8174 to i64
  store i64 %8175, i64* %RSI.i2748, align 8
  %8176 = add i64 %8170, -8
  %8177 = add i64 %8038, 68
  store i64 %8177, i64* %3, align 8
  %8178 = inttoptr i64 %8176 to i32*
  %8179 = load i32, i32* %8178, align 4
  %8180 = add i32 %8179, %8174
  %8181 = zext i32 %8180 to i64
  store i64 %8181, i64* %RSI.i2748, align 8
  %8182 = icmp ult i32 %8180, %8174
  %8183 = icmp ult i32 %8180, %8179
  %8184 = or i1 %8182, %8183
  %8185 = zext i1 %8184 to i8
  store i8 %8185, i8* %12, align 1
  %8186 = and i32 %8180, 255
  %8187 = tail call i32 @llvm.ctpop.i32(i32 %8186)
  %8188 = trunc i32 %8187 to i8
  %8189 = and i8 %8188, 1
  %8190 = xor i8 %8189, 1
  store i8 %8190, i8* %13, align 1
  %8191 = xor i32 %8179, %8174
  %8192 = xor i32 %8191, %8180
  %8193 = lshr i32 %8192, 4
  %8194 = trunc i32 %8193 to i8
  %8195 = and i8 %8194, 1
  store i8 %8195, i8* %14, align 1
  %8196 = icmp eq i32 %8180, 0
  %8197 = zext i1 %8196 to i8
  store i8 %8197, i8* %15, align 1
  %8198 = lshr i32 %8180, 31
  %8199 = trunc i32 %8198 to i8
  store i8 %8199, i8* %16, align 1
  %8200 = lshr i32 %8174, 31
  %8201 = lshr i32 %8179, 31
  %8202 = xor i32 %8198, %8200
  %8203 = xor i32 %8198, %8201
  %8204 = add nuw nsw i32 %8202, %8203
  %8205 = icmp eq i32 %8204, 2
  %8206 = zext i1 %8205 to i8
  store i8 %8206, i8* %17, align 1
  %8207 = sext i32 %8180 to i64
  store i64 %8207, i64* %RCX.i2784, align 8
  %8208 = shl nsw i64 %8207, 1
  %8209 = add i64 %8143, %8208
  %8210 = add i64 %8038, 75
  store i64 %8210, i64* %3, align 8
  %8211 = inttoptr i64 %8209 to i16*
  %8212 = load i16, i16* %8211, align 2
  %8213 = zext i16 %8212 to i64
  store i64 %8213, i64* %RSI.i2748, align 8
  %8214 = load i64, i64* %RDX.i2756, align 8
  %8215 = zext i16 %8212 to i32
  %8216 = zext i16 %8212 to i64
  %8217 = trunc i64 %8214 to i32
  %8218 = add i32 %8215, %8217
  %8219 = zext i32 %8218 to i64
  store i64 %8219, i64* %RDX.i2756, align 8
  %8220 = icmp ult i32 %8218, %8217
  %8221 = icmp ult i32 %8218, %8215
  %8222 = or i1 %8220, %8221
  %8223 = zext i1 %8222 to i8
  store i8 %8223, i8* %12, align 1
  %8224 = and i32 %8218, 255
  %8225 = tail call i32 @llvm.ctpop.i32(i32 %8224)
  %8226 = trunc i32 %8225 to i8
  %8227 = and i8 %8226, 1
  %8228 = xor i8 %8227, 1
  store i8 %8228, i8* %13, align 1
  %8229 = xor i64 %8216, %8214
  %8230 = trunc i64 %8229 to i32
  %8231 = xor i32 %8230, %8218
  %8232 = lshr i32 %8231, 4
  %8233 = trunc i32 %8232 to i8
  %8234 = and i8 %8233, 1
  store i8 %8234, i8* %14, align 1
  %8235 = icmp eq i32 %8218, 0
  %8236 = zext i1 %8235 to i8
  store i8 %8236, i8* %15, align 1
  %8237 = lshr i32 %8218, 31
  %8238 = trunc i32 %8237 to i8
  store i8 %8238, i8* %16, align 1
  %8239 = lshr i32 %8217, 31
  %8240 = xor i32 %8237, %8239
  %8241 = add nuw nsw i32 %8240, %8237
  %8242 = icmp eq i32 %8241, 2
  %8243 = zext i1 %8242 to i8
  store i8 %8243, i8* %17, align 1
  %8244 = trunc i32 %8218 to i16
  store i16 %8244, i16* %DI.i124, align 2
  %8245 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %8245, i64* %RAX.i1983, align 8
  %8246 = add i64 %8245, 6424
  %8247 = add i64 %8038, 95
  store i64 %8247, i64* %3, align 8
  %8248 = inttoptr i64 %8246 to i64*
  %8249 = load i64, i64* %8248, align 8
  store i64 %8249, i64* %RAX.i1983, align 8
  %8250 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %8250, i64* %RCX.i2784, align 8
  %8251 = add i64 %8250, 156
  %8252 = add i64 %8038, 109
  store i64 %8252, i64* %3, align 8
  %8253 = inttoptr i64 %8251 to i32*
  %8254 = load i32, i32* %8253, align 4
  %8255 = zext i32 %8254 to i64
  store i64 %8255, i64* %RDX.i2756, align 8
  %8256 = load i64, i64* %RBP.i, align 8
  %8257 = add i64 %8256, -8
  %8258 = add i64 %8038, 112
  store i64 %8258, i64* %3, align 8
  %8259 = inttoptr i64 %8257 to i32*
  %8260 = load i32, i32* %8259, align 4
  %8261 = add i32 %8260, %8254
  %8262 = zext i32 %8261 to i64
  store i64 %8262, i64* %RDX.i2756, align 8
  %8263 = icmp ult i32 %8261, %8254
  %8264 = icmp ult i32 %8261, %8260
  %8265 = or i1 %8263, %8264
  %8266 = zext i1 %8265 to i8
  store i8 %8266, i8* %12, align 1
  %8267 = and i32 %8261, 255
  %8268 = tail call i32 @llvm.ctpop.i32(i32 %8267)
  %8269 = trunc i32 %8268 to i8
  %8270 = and i8 %8269, 1
  %8271 = xor i8 %8270, 1
  store i8 %8271, i8* %13, align 1
  %8272 = xor i32 %8260, %8254
  %8273 = xor i32 %8272, %8261
  %8274 = lshr i32 %8273, 4
  %8275 = trunc i32 %8274 to i8
  %8276 = and i8 %8275, 1
  store i8 %8276, i8* %14, align 1
  %8277 = icmp eq i32 %8261, 0
  %8278 = zext i1 %8277 to i8
  store i8 %8278, i8* %15, align 1
  %8279 = lshr i32 %8261, 31
  %8280 = trunc i32 %8279 to i8
  store i8 %8280, i8* %16, align 1
  %8281 = lshr i32 %8254, 31
  %8282 = lshr i32 %8260, 31
  %8283 = xor i32 %8279, %8281
  %8284 = xor i32 %8279, %8282
  %8285 = add nuw nsw i32 %8283, %8284
  %8286 = icmp eq i32 %8285, 2
  %8287 = zext i1 %8286 to i8
  store i8 %8287, i8* %17, align 1
  %8288 = add i64 %8256, -28
  %8289 = add i64 %8038, 115
  store i64 %8289, i64* %3, align 8
  %8290 = inttoptr i64 %8288 to i32*
  %8291 = load i32, i32* %8290, align 4
  %8292 = add i32 %8291, %8261
  %8293 = zext i32 %8292 to i64
  store i64 %8293, i64* %RDX.i2756, align 8
  %8294 = icmp ult i32 %8292, %8261
  %8295 = icmp ult i32 %8292, %8291
  %8296 = or i1 %8294, %8295
  %8297 = zext i1 %8296 to i8
  store i8 %8297, i8* %12, align 1
  %8298 = and i32 %8292, 255
  %8299 = tail call i32 @llvm.ctpop.i32(i32 %8298)
  %8300 = trunc i32 %8299 to i8
  %8301 = and i8 %8300, 1
  %8302 = xor i8 %8301, 1
  store i8 %8302, i8* %13, align 1
  %8303 = xor i32 %8291, %8261
  %8304 = xor i32 %8303, %8292
  %8305 = lshr i32 %8304, 4
  %8306 = trunc i32 %8305 to i8
  %8307 = and i8 %8306, 1
  store i8 %8307, i8* %14, align 1
  %8308 = icmp eq i32 %8292, 0
  %8309 = zext i1 %8308 to i8
  store i8 %8309, i8* %15, align 1
  %8310 = lshr i32 %8292, 31
  %8311 = trunc i32 %8310 to i8
  store i8 %8311, i8* %16, align 1
  %8312 = lshr i32 %8291, 31
  %8313 = xor i32 %8310, %8279
  %8314 = xor i32 %8310, %8312
  %8315 = add nuw nsw i32 %8313, %8314
  %8316 = icmp eq i32 %8315, 2
  %8317 = zext i1 %8316 to i8
  store i8 %8317, i8* %17, align 1
  %8318 = sext i32 %8292 to i64
  store i64 %8318, i64* %RCX.i2784, align 8
  %8319 = shl nsw i64 %8318, 3
  %8320 = add i64 %8249, %8319
  %8321 = add i64 %8038, 122
  store i64 %8321, i64* %3, align 8
  %8322 = inttoptr i64 %8320 to i64*
  %8323 = load i64, i64* %8322, align 8
  store i64 %8323, i64* %RAX.i1983, align 8
  %8324 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %8324, i64* %RCX.i2784, align 8
  %8325 = add i64 %8324, 152
  %8326 = add i64 %8038, 136
  store i64 %8326, i64* %3, align 8
  %8327 = inttoptr i64 %8325 to i32*
  %8328 = load i32, i32* %8327, align 4
  %8329 = zext i32 %8328 to i64
  store i64 %8329, i64* %RDX.i2756, align 8
  %8330 = load i64, i64* %RBP.i, align 8
  %8331 = add i64 %8330, -4
  %8332 = add i64 %8038, 139
  store i64 %8332, i64* %3, align 8
  %8333 = inttoptr i64 %8331 to i32*
  %8334 = load i32, i32* %8333, align 4
  %8335 = add i32 %8334, %8328
  %8336 = zext i32 %8335 to i64
  store i64 %8336, i64* %RDX.i2756, align 8
  %8337 = icmp ult i32 %8335, %8328
  %8338 = icmp ult i32 %8335, %8334
  %8339 = or i1 %8337, %8338
  %8340 = zext i1 %8339 to i8
  store i8 %8340, i8* %12, align 1
  %8341 = and i32 %8335, 255
  %8342 = tail call i32 @llvm.ctpop.i32(i32 %8341)
  %8343 = trunc i32 %8342 to i8
  %8344 = and i8 %8343, 1
  %8345 = xor i8 %8344, 1
  store i8 %8345, i8* %13, align 1
  %8346 = xor i32 %8334, %8328
  %8347 = xor i32 %8346, %8335
  %8348 = lshr i32 %8347, 4
  %8349 = trunc i32 %8348 to i8
  %8350 = and i8 %8349, 1
  store i8 %8350, i8* %14, align 1
  %8351 = icmp eq i32 %8335, 0
  %8352 = zext i1 %8351 to i8
  store i8 %8352, i8* %15, align 1
  %8353 = lshr i32 %8335, 31
  %8354 = trunc i32 %8353 to i8
  store i8 %8354, i8* %16, align 1
  %8355 = lshr i32 %8328, 31
  %8356 = lshr i32 %8334, 31
  %8357 = xor i32 %8353, %8355
  %8358 = xor i32 %8353, %8356
  %8359 = add nuw nsw i32 %8357, %8358
  %8360 = icmp eq i32 %8359, 2
  %8361 = zext i1 %8360 to i8
  store i8 %8361, i8* %17, align 1
  %8362 = add i64 %8330, -24
  %8363 = add i64 %8038, 142
  store i64 %8363, i64* %3, align 8
  %8364 = inttoptr i64 %8362 to i32*
  %8365 = load i32, i32* %8364, align 4
  %8366 = add i32 %8365, %8335
  %8367 = zext i32 %8366 to i64
  store i64 %8367, i64* %RDX.i2756, align 8
  %8368 = icmp ult i32 %8366, %8335
  %8369 = icmp ult i32 %8366, %8365
  %8370 = or i1 %8368, %8369
  %8371 = zext i1 %8370 to i8
  store i8 %8371, i8* %12, align 1
  %8372 = and i32 %8366, 255
  %8373 = tail call i32 @llvm.ctpop.i32(i32 %8372)
  %8374 = trunc i32 %8373 to i8
  %8375 = and i8 %8374, 1
  %8376 = xor i8 %8375, 1
  store i8 %8376, i8* %13, align 1
  %8377 = xor i32 %8365, %8335
  %8378 = xor i32 %8377, %8366
  %8379 = lshr i32 %8378, 4
  %8380 = trunc i32 %8379 to i8
  %8381 = and i8 %8380, 1
  store i8 %8381, i8* %14, align 1
  %8382 = icmp eq i32 %8366, 0
  %8383 = zext i1 %8382 to i8
  store i8 %8383, i8* %15, align 1
  %8384 = lshr i32 %8366, 31
  %8385 = trunc i32 %8384 to i8
  store i8 %8385, i8* %16, align 1
  %8386 = lshr i32 %8365, 31
  %8387 = xor i32 %8384, %8353
  %8388 = xor i32 %8384, %8386
  %8389 = add nuw nsw i32 %8387, %8388
  %8390 = icmp eq i32 %8389, 2
  %8391 = zext i1 %8390 to i8
  store i8 %8391, i8* %17, align 1
  %8392 = sext i32 %8366 to i64
  store i64 %8392, i64* %RCX.i2784, align 8
  %8393 = shl nsw i64 %8392, 1
  %8394 = add i64 %8323, %8393
  %8395 = load i16, i16* %DI.i124, align 2
  %8396 = add i64 %8038, 149
  store i64 %8396, i64* %3, align 8
  %8397 = inttoptr i64 %8394 to i16*
  store i16 %8395, i16* %8397, align 2
  %8398 = load i64, i64* %3, align 8
  %8399 = add i64 %8398, 109
  store i64 %8399, i64* %3, align 8
  br label %block_.L_407482

block_.L_40741a:                                  ; preds = %block_407373
  %8400 = trunc i32 %8103 to i16
  store i16 %8400, i16* %SI.i63, align 2
  %8401 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %8401, i64* %RAX.i1983, align 8
  %8402 = add i64 %8401, 6424
  %8403 = add i64 %8038, 50
  store i64 %8403, i64* %3, align 8
  %8404 = inttoptr i64 %8402 to i64*
  %8405 = load i64, i64* %8404, align 8
  store i64 %8405, i64* %RAX.i1983, align 8
  %8406 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %8406, i64* %RCX.i2784, align 8
  %8407 = add i64 %8406, 156
  %8408 = add i64 %8038, 64
  store i64 %8408, i64* %3, align 8
  %8409 = inttoptr i64 %8407 to i32*
  %8410 = load i32, i32* %8409, align 4
  %8411 = zext i32 %8410 to i64
  store i64 %8411, i64* %RDX.i2756, align 8
  %8412 = add i64 %8093, -8
  %8413 = add i64 %8038, 67
  store i64 %8413, i64* %3, align 8
  %8414 = inttoptr i64 %8412 to i32*
  %8415 = load i32, i32* %8414, align 4
  %8416 = add i32 %8415, %8410
  %8417 = zext i32 %8416 to i64
  store i64 %8417, i64* %RDX.i2756, align 8
  %8418 = icmp ult i32 %8416, %8410
  %8419 = icmp ult i32 %8416, %8415
  %8420 = or i1 %8418, %8419
  %8421 = zext i1 %8420 to i8
  store i8 %8421, i8* %12, align 1
  %8422 = and i32 %8416, 255
  %8423 = tail call i32 @llvm.ctpop.i32(i32 %8422)
  %8424 = trunc i32 %8423 to i8
  %8425 = and i8 %8424, 1
  %8426 = xor i8 %8425, 1
  store i8 %8426, i8* %13, align 1
  %8427 = xor i32 %8415, %8410
  %8428 = xor i32 %8427, %8416
  %8429 = lshr i32 %8428, 4
  %8430 = trunc i32 %8429 to i8
  %8431 = and i8 %8430, 1
  store i8 %8431, i8* %14, align 1
  %8432 = icmp eq i32 %8416, 0
  %8433 = zext i1 %8432 to i8
  store i8 %8433, i8* %15, align 1
  %8434 = lshr i32 %8416, 31
  %8435 = trunc i32 %8434 to i8
  store i8 %8435, i8* %16, align 1
  %8436 = lshr i32 %8410, 31
  %8437 = lshr i32 %8415, 31
  %8438 = xor i32 %8434, %8436
  %8439 = xor i32 %8434, %8437
  %8440 = add nuw nsw i32 %8438, %8439
  %8441 = icmp eq i32 %8440, 2
  %8442 = zext i1 %8441 to i8
  store i8 %8442, i8* %17, align 1
  %8443 = add i64 %8038, 70
  store i64 %8443, i64* %3, align 8
  %8444 = load i32, i32* %8096, align 4
  %8445 = add i32 %8444, %8416
  %8446 = zext i32 %8445 to i64
  store i64 %8446, i64* %RDX.i2756, align 8
  %8447 = icmp ult i32 %8445, %8416
  %8448 = icmp ult i32 %8445, %8444
  %8449 = or i1 %8447, %8448
  %8450 = zext i1 %8449 to i8
  store i8 %8450, i8* %12, align 1
  %8451 = and i32 %8445, 255
  %8452 = tail call i32 @llvm.ctpop.i32(i32 %8451)
  %8453 = trunc i32 %8452 to i8
  %8454 = and i8 %8453, 1
  %8455 = xor i8 %8454, 1
  store i8 %8455, i8* %13, align 1
  %8456 = xor i32 %8444, %8416
  %8457 = xor i32 %8456, %8445
  %8458 = lshr i32 %8457, 4
  %8459 = trunc i32 %8458 to i8
  %8460 = and i8 %8459, 1
  store i8 %8460, i8* %14, align 1
  %8461 = icmp eq i32 %8445, 0
  %8462 = zext i1 %8461 to i8
  store i8 %8462, i8* %15, align 1
  %8463 = lshr i32 %8445, 31
  %8464 = trunc i32 %8463 to i8
  store i8 %8464, i8* %16, align 1
  %8465 = lshr i32 %8444, 31
  %8466 = xor i32 %8463, %8434
  %8467 = xor i32 %8463, %8465
  %8468 = add nuw nsw i32 %8466, %8467
  %8469 = icmp eq i32 %8468, 2
  %8470 = zext i1 %8469 to i8
  store i8 %8470, i8* %17, align 1
  %8471 = sext i32 %8445 to i64
  store i64 %8471, i64* %RCX.i2784, align 8
  %8472 = shl nsw i64 %8471, 3
  %8473 = add i64 %8405, %8472
  %8474 = add i64 %8038, 77
  store i64 %8474, i64* %3, align 8
  %8475 = inttoptr i64 %8473 to i64*
  %8476 = load i64, i64* %8475, align 8
  store i64 %8476, i64* %RAX.i1983, align 8
  store i64 %8406, i64* %RCX.i2784, align 8
  %8477 = add i64 %8406, 152
  %8478 = add i64 %8038, 91
  store i64 %8478, i64* %3, align 8
  %8479 = inttoptr i64 %8477 to i32*
  %8480 = load i32, i32* %8479, align 4
  %8481 = zext i32 %8480 to i64
  store i64 %8481, i64* %RDX.i2756, align 8
  %8482 = load i64, i64* %RBP.i, align 8
  %8483 = add i64 %8482, -4
  %8484 = add i64 %8038, 94
  store i64 %8484, i64* %3, align 8
  %8485 = inttoptr i64 %8483 to i32*
  %8486 = load i32, i32* %8485, align 4
  %8487 = add i32 %8486, %8480
  %8488 = zext i32 %8487 to i64
  store i64 %8488, i64* %RDX.i2756, align 8
  %8489 = icmp ult i32 %8487, %8480
  %8490 = icmp ult i32 %8487, %8486
  %8491 = or i1 %8489, %8490
  %8492 = zext i1 %8491 to i8
  store i8 %8492, i8* %12, align 1
  %8493 = and i32 %8487, 255
  %8494 = tail call i32 @llvm.ctpop.i32(i32 %8493)
  %8495 = trunc i32 %8494 to i8
  %8496 = and i8 %8495, 1
  %8497 = xor i8 %8496, 1
  store i8 %8497, i8* %13, align 1
  %8498 = xor i32 %8486, %8480
  %8499 = xor i32 %8498, %8487
  %8500 = lshr i32 %8499, 4
  %8501 = trunc i32 %8500 to i8
  %8502 = and i8 %8501, 1
  store i8 %8502, i8* %14, align 1
  %8503 = icmp eq i32 %8487, 0
  %8504 = zext i1 %8503 to i8
  store i8 %8504, i8* %15, align 1
  %8505 = lshr i32 %8487, 31
  %8506 = trunc i32 %8505 to i8
  store i8 %8506, i8* %16, align 1
  %8507 = lshr i32 %8480, 31
  %8508 = lshr i32 %8486, 31
  %8509 = xor i32 %8505, %8507
  %8510 = xor i32 %8505, %8508
  %8511 = add nuw nsw i32 %8509, %8510
  %8512 = icmp eq i32 %8511, 2
  %8513 = zext i1 %8512 to i8
  store i8 %8513, i8* %17, align 1
  %8514 = add i64 %8482, -24
  %8515 = add i64 %8038, 97
  store i64 %8515, i64* %3, align 8
  %8516 = inttoptr i64 %8514 to i32*
  %8517 = load i32, i32* %8516, align 4
  %8518 = add i32 %8517, %8487
  %8519 = zext i32 %8518 to i64
  store i64 %8519, i64* %RDX.i2756, align 8
  %8520 = icmp ult i32 %8518, %8487
  %8521 = icmp ult i32 %8518, %8517
  %8522 = or i1 %8520, %8521
  %8523 = zext i1 %8522 to i8
  store i8 %8523, i8* %12, align 1
  %8524 = and i32 %8518, 255
  %8525 = tail call i32 @llvm.ctpop.i32(i32 %8524)
  %8526 = trunc i32 %8525 to i8
  %8527 = and i8 %8526, 1
  %8528 = xor i8 %8527, 1
  store i8 %8528, i8* %13, align 1
  %8529 = xor i32 %8517, %8487
  %8530 = xor i32 %8529, %8518
  %8531 = lshr i32 %8530, 4
  %8532 = trunc i32 %8531 to i8
  %8533 = and i8 %8532, 1
  store i8 %8533, i8* %14, align 1
  %8534 = icmp eq i32 %8518, 0
  %8535 = zext i1 %8534 to i8
  store i8 %8535, i8* %15, align 1
  %8536 = lshr i32 %8518, 31
  %8537 = trunc i32 %8536 to i8
  store i8 %8537, i8* %16, align 1
  %8538 = lshr i32 %8517, 31
  %8539 = xor i32 %8536, %8505
  %8540 = xor i32 %8536, %8538
  %8541 = add nuw nsw i32 %8539, %8540
  %8542 = icmp eq i32 %8541, 2
  %8543 = zext i1 %8542 to i8
  store i8 %8543, i8* %17, align 1
  %8544 = sext i32 %8518 to i64
  store i64 %8544, i64* %RCX.i2784, align 8
  %8545 = shl nsw i64 %8544, 1
  %8546 = add i64 %8476, %8545
  %8547 = load i16, i16* %SI.i63, align 2
  %8548 = add i64 %8038, 104
  store i64 %8548, i64* %3, align 8
  %8549 = inttoptr i64 %8546 to i16*
  store i16 %8547, i16* %8549, align 2
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_407482

block_.L_407482:                                  ; preds = %block_.L_40741a, %block_407380
  %8550 = phi i64 [ %.pre159, %block_.L_40741a ], [ %8399, %block_407380 ]
  %8551 = load i64, i64* %RBP.i, align 8
  %8552 = add i64 %8551, -24
  %8553 = add i64 %8550, 8
  store i64 %8553, i64* %3, align 8
  %8554 = inttoptr i64 %8552 to i32*
  %8555 = load i32, i32* %8554, align 4
  %8556 = add i32 %8555, 1
  %8557 = zext i32 %8556 to i64
  store i64 %8557, i64* %RAX.i1983, align 8
  %8558 = icmp eq i32 %8555, -1
  %8559 = icmp eq i32 %8556, 0
  %8560 = or i1 %8558, %8559
  %8561 = zext i1 %8560 to i8
  store i8 %8561, i8* %12, align 1
  %8562 = and i32 %8556, 255
  %8563 = tail call i32 @llvm.ctpop.i32(i32 %8562)
  %8564 = trunc i32 %8563 to i8
  %8565 = and i8 %8564, 1
  %8566 = xor i8 %8565, 1
  store i8 %8566, i8* %13, align 1
  %8567 = xor i32 %8556, %8555
  %8568 = lshr i32 %8567, 4
  %8569 = trunc i32 %8568 to i8
  %8570 = and i8 %8569, 1
  store i8 %8570, i8* %14, align 1
  %8571 = zext i1 %8559 to i8
  store i8 %8571, i8* %15, align 1
  %8572 = lshr i32 %8556, 31
  %8573 = trunc i32 %8572 to i8
  store i8 %8573, i8* %16, align 1
  %8574 = lshr i32 %8555, 31
  %8575 = xor i32 %8572, %8574
  %8576 = add nuw nsw i32 %8575, %8572
  %8577 = icmp eq i32 %8576, 2
  %8578 = zext i1 %8577 to i8
  store i8 %8578, i8* %17, align 1
  %8579 = add i64 %8550, 14
  store i64 %8579, i64* %3, align 8
  store i32 %8556, i32* %8554, align 4
  %8580 = load i64, i64* %3, align 8
  %8581 = add i64 %8580, -295
  store i64 %8581, i64* %3, align 8
  br label %block_.L_407369

block_.L_407495:                                  ; preds = %block_.L_407369
  %8582 = add i64 %8004, -28
  %8583 = add i64 %8032, 8
  store i64 %8583, i64* %3, align 8
  %8584 = inttoptr i64 %8582 to i32*
  %8585 = load i32, i32* %8584, align 4
  %8586 = add i32 %8585, 1
  %8587 = zext i32 %8586 to i64
  store i64 %8587, i64* %RAX.i1983, align 8
  %8588 = icmp eq i32 %8585, -1
  %8589 = icmp eq i32 %8586, 0
  %8590 = or i1 %8588, %8589
  %8591 = zext i1 %8590 to i8
  store i8 %8591, i8* %12, align 1
  %8592 = and i32 %8586, 255
  %8593 = tail call i32 @llvm.ctpop.i32(i32 %8592)
  %8594 = trunc i32 %8593 to i8
  %8595 = and i8 %8594, 1
  %8596 = xor i8 %8595, 1
  store i8 %8596, i8* %13, align 1
  %8597 = xor i32 %8586, %8585
  %8598 = lshr i32 %8597, 4
  %8599 = trunc i32 %8598 to i8
  %8600 = and i8 %8599, 1
  store i8 %8600, i8* %14, align 1
  %8601 = zext i1 %8589 to i8
  store i8 %8601, i8* %15, align 1
  %8602 = lshr i32 %8586, 31
  %8603 = trunc i32 %8602 to i8
  store i8 %8603, i8* %16, align 1
  %8604 = lshr i32 %8585, 31
  %8605 = xor i32 %8602, %8604
  %8606 = add nuw nsw i32 %8605, %8602
  %8607 = icmp eq i32 %8606, 2
  %8608 = zext i1 %8607 to i8
  store i8 %8608, i8* %17, align 1
  %8609 = add i64 %8032, 14
  store i64 %8609, i64* %3, align 8
  store i32 %8586, i32* %8584, align 4
  %8610 = load i64, i64* %3, align 8
  %8611 = add i64 %8610, -331
  store i64 %8611, i64* %3, align 8
  br label %block_.L_407358

block_.L_4074a8:                                  ; preds = %block_.L_407358
  %8612 = add i64 %7999, 5
  store i64 %8612, i64* %3, align 8
  br label %block_.L_4074ad

block_.L_4074ad:                                  ; preds = %block_406d75, %block_.L_4074a8
  %8613 = phi i64 [ %8612, %block_.L_4074a8 ], [ %5448, %block_406d75 ]
  %8614 = phi i64 [ %7971, %block_.L_4074a8 ], [ %5421, %block_406d75 ]
  %8615 = add i64 %8614, -100
  %8616 = add i64 %8613, 3
  store i64 %8616, i64* %3, align 8
  %8617 = inttoptr i64 %8615 to i32*
  %8618 = load i32, i32* %8617, align 4
  %8619 = zext i32 %8618 to i64
  store i64 %8619, i64* %RAX.i1983, align 8
  %8620 = load i64, i64* %6, align 8
  %8621 = add i64 %8620, 256
  store i64 %8621, i64* %6, align 8
  %8622 = icmp ugt i64 %8620, -257
  %8623 = zext i1 %8622 to i8
  store i8 %8623, i8* %12, align 1
  %8624 = trunc i64 %8621 to i32
  %8625 = and i32 %8624, 255
  %8626 = tail call i32 @llvm.ctpop.i32(i32 %8625)
  %8627 = trunc i32 %8626 to i8
  %8628 = and i8 %8627, 1
  %8629 = xor i8 %8628, 1
  store i8 %8629, i8* %13, align 1
  %8630 = xor i64 %8621, %8620
  %8631 = lshr i64 %8630, 4
  %8632 = trunc i64 %8631 to i8
  %8633 = and i8 %8632, 1
  store i8 %8633, i8* %14, align 1
  %8634 = icmp eq i64 %8621, 0
  %8635 = zext i1 %8634 to i8
  store i8 %8635, i8* %15, align 1
  %8636 = lshr i64 %8621, 63
  %8637 = trunc i64 %8636 to i8
  store i8 %8637, i8* %16, align 1
  %8638 = lshr i64 %8620, 63
  %8639 = xor i64 %8636, %8638
  %8640 = add nuw nsw i64 %8639, %8636
  %8641 = icmp eq i64 %8640, 2
  %8642 = zext i1 %8641 to i8
  store i8 %8642, i8* %17, align 1
  %8643 = add i64 %8613, 11
  store i64 %8643, i64* %3, align 8
  %8644 = add i64 %8620, 264
  %8645 = inttoptr i64 %8621 to i64*
  %8646 = load i64, i64* %8645, align 8
  store i64 %8646, i64* %RBP.i, align 8
  store i64 %8644, i64* %6, align 8
  %8647 = add i64 %8613, 12
  store i64 %8647, i64* %3, align 8
  %8648 = inttoptr i64 %8644 to i64*
  %8649 = load i64, i64* %8648, align 8
  store i64 %8649, i64* %3, align 8
  %8650 = add i64 %8620, 272
  store i64 %8650, i64* %6, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 256
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
define %struct.Memory* @routine_movb__al___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
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
define %struct.Memory* @routine_movl__0x4___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_addl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_addl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3738__r10____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = add i64 %3, 14136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x80__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r10____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %R10 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__r10____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__r10____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__r11____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___r11___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R11, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_addq__r11___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__r10__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__r10____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11bdc__r10____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R10, align 8
  %5 = add i64 %4, 72668
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movb__r8b__MINUS0xa9__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -169
  %6 = load i8, i8* %R8B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40639f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11c00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_movb__cl__MINUS0xa9__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -169
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xa9__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -169
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl__al___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11bdc__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72668
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x11bdc__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72668
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xf___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -16
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
define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movb__cl__MINUS0xaa__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -170
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40642f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xaa__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -170
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xaa__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -170
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_406442(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40657a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jge_.L_406500(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -13113
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
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
define %struct.Memory* @routine_jmpq_.L_406449(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl__eax__0x3338__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13112
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl__eax__0x33b8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13240
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__eax__0x3378__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13176
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__eax__0x33f8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13304
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
define %struct.Memory* @routine_jmpq_.L_406409(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movb__cl__MINUS0xab__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -171
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4065a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0xab__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -171
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xab__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -171
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4065ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406719(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jge_.L_406678(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4065c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406581(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_406bd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11afc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72444
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
define %struct.Memory* @routine_jne_.L_40677d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72400
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
define %struct.Memory* @routine_je_.L_4067a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 532
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movzbl_0x4b2380___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4924288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 2
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl_0x4b2381___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4924289
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4067be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x4b2360___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4924256
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 2
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x4b2361___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4924257
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_406808(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3338___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13113
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406914(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jne_.L_406893(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x710020___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7405600, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rdx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RAX, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40690f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6ccf90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7131024, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_406b92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jg_.L_40693c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40694f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xf423f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 999999
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -1000000
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40697f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b23a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b23a0_type* @G__0x4b23a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x9a4__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2468
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
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sign(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_406a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406b8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jge_.L_406aec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406a8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70d010___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rsi__r8_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RDI, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x68__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
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
define %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_sarl__cl___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RDI, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406ae7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d09f0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_jmpq_.L_406b88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406b3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x70d010___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RCX, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 4
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_shll__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RSI, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406b83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_jmpq_.L_406b92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406bc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_406bc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406735(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xbd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -189
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406c15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0xbd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -189
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xbd__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -189
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406c28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406d3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406c6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406c2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406d27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406ca2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406d2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406bef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xbe__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -190
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406d67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0xbe__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -190
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xbe__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -190
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406d7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40733c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jmpq_.L_406d81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_407329(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_jne_.L_407233(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x11bec__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -12601
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movslq__eax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movzwl___rdi__r8_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -33
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 5
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = ashr i64 %3, 6
  store i64 %9, i64* %RSI, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %9 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %9, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %9, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_406ea2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_406ef9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -33
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarq__0x6___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 5
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = ashr i64 %3, 6
  store i64 %9, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %9 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %9, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %9, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
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
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_406f2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x11bec__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_jmpq_.L_406ffd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rsi__rdi_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_addq__0x20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -33
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 5
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = ashr i64 %3, 6
  store i64 %9, i64* %RDX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %9 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %9, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %9, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jle_.L_406f98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406fef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx____rax__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rsi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp__rsi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movzwl___rdi__r8_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4070aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_407101(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_407133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4071a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4071f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407316(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4072a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407311(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -33
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40731b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406df4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40732e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406d41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_jne_.L_4074ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4074a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_407495(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40741a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3138___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movw__dx___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407482(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx___si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407487(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407369(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40749a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407358(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4074ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_addq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -257
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
