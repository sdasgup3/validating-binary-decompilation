; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xac5d28_type = type <{ [4 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57eec5_type = type <{ [8 x i8] }>
%G__0x57f043_type = type <{ [8 x i8] }>
%G__0xac5d30_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0xac5d28 = local_unnamed_addr global %G_0xac5d28_type zeroinitializer
@G_0xafdfb0 = local_unnamed_addr global %G_0xafdfb0_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G__0x57eec5 = global %G__0x57eec5_type zeroinitializer
@G__0x57f043 = global %G__0x57f043_type zeroinitializer
@G__0xac5d30 = global %G__0xac5d30_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415df0.get_move_from_stack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415cb0.mark_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @store_persistent_reading_cache(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -504
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 496
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1165 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -12
  %55 = load i32, i32* %EDX.i1165, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1162 = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i32, i32* %ECX.i1162, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1159 = bitcast %union.anon* %66 to i32*
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -20
  %69 = load i32, i32* %R8D.i1159, align 4
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %RCX.i1156 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -20
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 3
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RCX.i1156, align 8
  %80 = add i64 %73, -444
  %81 = add i64 %75, 9
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 %78, i32* %82, align 4
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -12
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i32*
  %88 = load i32, i32* %87, align 4
  store i8 0, i8* %14, align 1
  %89 = and i32 %88, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %94 = icmp eq i32 %88, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %30, align 1
  %96 = lshr i32 %88, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %94, i64 41, i64 10
  %98 = add i64 %85, %.v
  store i64 %98, i64* %3, align 8
  br i1 %94, label %block_.L_44ea5d, label %block_44ea3e

block_44ea3e:                                     ; preds = %entry
  %99 = add i64 %83, -16
  %100 = add i64 %98, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  store i8 0, i8* %14, align 1
  %103 = and i32 %102, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %108 = icmp eq i32 %102, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %30, align 1
  %110 = lshr i32 %102, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v134 = select i1 %108, i64 31, i64 10
  %112 = add i64 %98, %.v134
  store i64 %112, i64* %3, align 8
  br i1 %108, label %block_.L_44ea5d, label %block_44ea48

block_44ea48:                                     ; preds = %block_44ea3e
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1144 = getelementptr inbounds %union.anon, %union.anon* %113, i64 0, i32 0
  %114 = add i64 %112, 4
  store i64 %114, i64* %3, align 8
  %115 = load i32, i32* %101, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %RAX.i1144, align 8
  %117 = add nsw i64 %116, 12099168
  %118 = add i64 %112, 12
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i8*
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i64
  store i64 %121, i64* %RCX.i1156, align 8
  %122 = zext i8 %120 to i32
  %123 = add nsw i32 %122, -3
  %124 = icmp ult i8 %120, 3
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = xor i32 %123, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %27, align 1
  %135 = icmp eq i32 %123, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1
  %137 = lshr i32 %123, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v135 = select i1 %135, i64 26, i64 21
  %139 = add i64 %112, %.v135
  store i64 %139, i64* %3, align 8
  br i1 %135, label %block_.L_44ea62, label %block_.L_44ea5d

block_.L_44ea5d:                                  ; preds = %block_44ea48, %block_44ea3e, %entry
  %140 = phi i64 [ %139, %block_44ea48 ], [ %112, %block_44ea3e ], [ %98, %entry ]
  %141 = add i64 %140, 118
  store i64 %141, i64* %3, align 8
  br label %block_.L_44ead3

block_.L_44ea62:                                  ; preds = %block_44ea48
  %RDI.i1135 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI.i1135, align 8
  %RSI.i1133 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 369, i64* %RSI.i1133, align 8
  %RDX.i1131 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  store i64 ptrtoint (%G__0x57f043_type* @G__0x57f043 to i64), i64* %RDX.i1131, align 8
  store i64 20, i64* %RAX.i1144, align 8
  %142 = add i64 %139, 33
  store i64 %142, i64* %3, align 8
  %143 = load i32, i32* %101, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RCX.i1156, align 8
  %EAX.i1123 = bitcast %union.anon* %113 to i32*
  %145 = add i64 %83, -468
  %146 = add i64 %139, 39
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  store i32 20, i32* %147, align 4
  %148 = load i32, i32* %ECX.i1162, align 4
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* %3, align 8
  store i64 %149, i64* %RAX.i1144, align 8
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -480
  %153 = load i64, i64* %RDX.i1131, align 8
  %154 = add i64 %150, 9
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %152 to i64*
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %3, align 8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %158 = load i32, i32* %EAX.i1123, align 8
  %159 = sext i32 %158 to i64
  %160 = lshr i64 %159, 32
  store i64 %160, i64* %157, align 8
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -468
  %163 = add i64 %156, 7
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RCX.i1156, align 8
  %167 = add i64 %156, 9
  store i64 %167, i64* %3, align 8
  %168 = zext i32 %158 to i64
  %169 = sext i32 %165 to i64
  %170 = shl nuw i64 %160, 32
  %171 = or i64 %170, %168
  %172 = sdiv i64 %171, %169
  %173 = shl i64 %172, 32
  %174 = ashr exact i64 %173, 32
  %175 = icmp eq i64 %172, %174
  br i1 %175, label %178, label %176

; <label>:176:                                    ; preds = %block_.L_44ea62
  %177 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %167, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i1144, align 8
  %.pre98 = load i64, i64* %3, align 8
  %.pre99 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1109

; <label>:178:                                    ; preds = %block_.L_44ea62
  %179 = srem i64 %171, %169
  %180 = and i64 %172, 4294967295
  store i64 %180, i64* %RAX.i1144, align 8
  %181 = and i64 %179, 4294967295
  store i64 %181, i64* %RDX.i1131, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1109

routine_idivl__ecx.exit1109:                      ; preds = %178, %176
  %182 = phi i64 [ %.pre99, %176 ], [ %161, %178 ]
  %183 = phi i64 [ %.pre98, %176 ], [ %167, %178 ]
  %184 = phi i64 [ %.pre, %176 ], [ %180, %178 ]
  %185 = phi %struct.Memory* [ %177, %176 ], [ %2, %178 ]
  %186 = trunc i64 %184 to i32
  %187 = add i32 %186, -1
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i1144, align 8
  %189 = icmp eq i32 %186, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %14, align 1
  %191 = and i32 %187, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %21, align 1
  %196 = xor i32 %187, %186
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %27, align 1
  %200 = icmp eq i32 %187, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  %202 = lshr i32 %187, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %33, align 1
  %204 = lshr i32 %186, 31
  %205 = xor i32 %202, %204
  %206 = add nuw nsw i32 %205, %204
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %39, align 1
  %209 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %210 = add i64 %182, -16
  %211 = add i64 %183, 7
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %209, align 8
  %215 = add i64 %182, -484
  %216 = add i64 %183, 13
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  store i32 %187, i32* %217, align 4
  %218 = load i32, i32* %R8D.i1159, align 4
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %3, align 8
  store i64 %219, i64* %RAX.i1144, align 8
  %221 = sext i32 %218 to i64
  %222 = lshr i64 %221, 32
  store i64 %222, i64* %157, align 8
  %223 = load i32, i32* %ECX.i1162, align 4
  %224 = add i64 %220, 6
  store i64 %224, i64* %3, align 8
  %225 = sext i32 %223 to i64
  %226 = shl nuw i64 %222, 32
  %227 = or i64 %226, %219
  %228 = sdiv i64 %227, %225
  %229 = shl i64 %228, 32
  %230 = ashr exact i64 %229, 32
  %231 = icmp eq i64 %228, %230
  br i1 %231, label %234, label %232

; <label>:232:                                    ; preds = %routine_idivl__ecx.exit1109
  %233 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %224, %struct.Memory* %185)
  %.pre100 = load i64, i64* %RDX.i1131, align 8
  %.pre101 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:234:                                    ; preds = %routine_idivl__ecx.exit1109
  %235 = srem i64 %227, %225
  %236 = and i64 %228, 4294967295
  store i64 %236, i64* %RAX.i1144, align 8
  %237 = and i64 %235, 4294967295
  store i64 %237, i64* %RDX.i1131, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %234, %232
  %238 = phi i64 [ %.pre101, %232 ], [ %224, %234 ]
  %239 = phi i64 [ %.pre100, %232 ], [ %237, %234 ]
  %240 = phi %struct.Memory* [ %233, %232 ], [ %185, %234 ]
  %241 = trunc i64 %239 to i32
  %242 = add i32 %241, -1
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RDX.i1131, align 8
  %244 = icmp eq i32 %241, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %14, align 1
  %246 = and i32 %242, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %21, align 1
  %251 = xor i32 %242, %241
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %27, align 1
  %255 = icmp eq i32 %242, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %30, align 1
  %257 = lshr i32 %242, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %33, align 1
  %259 = lshr i32 %241, 31
  %260 = xor i32 %257, %259
  %261 = add nuw nsw i32 %260, %259
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %39, align 1
  %R9.i1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -480
  %266 = add i64 %238, 10
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %R9.i1088, align 8
  %269 = add i64 %264, -488
  %270 = add i64 %238, 16
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  store i32 %242, i32* %271, align 4
  %272 = load i64, i64* %R9.i1088, align 8
  %273 = load i64, i64* %3, align 8
  store i64 %272, i64* %RDX.i1131, align 8
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -484
  %276 = add i64 %273, 9
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RCX.i1156, align 8
  %280 = add i64 %274, -488
  %281 = add i64 %273, 16
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %209, align 8
  %285 = add i64 %273, 13778
  %286 = add i64 %273, 21
  %287 = load i64, i64* %6, align 8
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %286, i64* %289, align 8
  store i64 %288, i64* %6, align 8
  store i64 %285, i64* %3, align 8
  %call2_44eace = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %285, %struct.Memory* %240)
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_44ead3

block_.L_44ead3:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_44ea5d
  %290 = phi i64 [ %141, %block_.L_44ea5d ], [ %.pre102, %routine_idivl__ecx.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_44ea5d ], [ %call2_44eace, %routine_idivl__ecx.exit ]
  %291 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %292 = add i32 %291, -5
  %293 = icmp ult i32 %291, 5
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = and i32 %292, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i32 %292, %291
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %27, align 1
  %304 = icmp eq i32 %292, 0
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %30, align 1
  %306 = lshr i32 %292, 31
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %33, align 1
  %308 = lshr i32 %291, 31
  %309 = xor i32 %306, %308
  %310 = add nuw nsw i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %39, align 1
  %313 = icmp ne i8 %307, 0
  %314 = xor i1 %313, %311
  %315 = or i1 %304, %314
  %.v136 = select i1 %315, i64 19, i64 14
  %316 = add i64 %290, %.v136
  store i64 %316, i64* %3, align 8
  br i1 %315, label %block_.L_44eae6, label %block_44eae1

block_44eae1:                                     ; preds = %block_.L_44ead3
  %317 = add i64 %316, 2572
  store i64 %317, i64* %3, align 8
  br label %block_.L_44f4ed

block_.L_44eae6:                                  ; preds = %block_.L_44ead3
  %318 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %319 = add i32 %318, -100
  %320 = icmp ult i32 %318, 100
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %14, align 1
  %322 = and i32 %319, 255
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %21, align 1
  %327 = xor i32 %319, %318
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %27, align 1
  %331 = icmp eq i32 %319, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %30, align 1
  %333 = lshr i32 %319, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %33, align 1
  %335 = lshr i32 %318, 31
  %336 = xor i32 %333, %335
  %337 = add nuw nsw i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1
  %.v137 = select i1 %331, i64 14, i64 323
  %340 = add i64 %316, %.v137
  store i64 %340, i64* %3, align 8
  br i1 %331, label %block_44eaf4, label %block_.L_44eae6.block_.L_44ec29_crit_edge

block_.L_44eae6.block_.L_44ec29_crit_edge:        ; preds = %block_.L_44eae6
  %.pre131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre132 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  br label %block_.L_44ec29

block_44eaf4:                                     ; preds = %block_.L_44eae6
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -460
  %343 = add i64 %340, 10
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i32*
  store i32 -1, i32* %344, align 4
  %RAX.i1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -444
  %347 = load i64, i64* %3, align 8
  %348 = add i64 %347, 6
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %346 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RAX.i1066, align 8
  %352 = add i64 %345, -464
  %353 = add i64 %347, 12
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  store i32 %350, i32* %354, align 4
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -436
  %357 = load i64, i64* %3, align 8
  %358 = add i64 %357, 10
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %356 to i32*
  store i32 1, i32* %359, align 4
  %RDX.i1043 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_44eb14

block_.L_44eb14:                                  ; preds = %block_.L_44eb87, %block_44eaf4
  %360 = phi i64 [ %543, %block_.L_44eb87 ], [ %.pre103, %block_44eaf4 ]
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -436
  %363 = add i64 %360, 6
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX.i1066, align 8
  %367 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %368 = sub i32 %365, %367
  %369 = icmp ult i32 %365, %367
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %14, align 1
  %371 = and i32 %368, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %21, align 1
  %376 = xor i32 %367, %365
  %377 = xor i32 %376, %368
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %27, align 1
  %381 = icmp eq i32 %368, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %30, align 1
  %383 = lshr i32 %368, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1
  %385 = lshr i32 %365, 31
  %386 = lshr i32 %367, 31
  %387 = xor i32 %386, %385
  %388 = xor i32 %383, %385
  %389 = add nuw nsw i32 %388, %387
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %39, align 1
  %392 = icmp ne i8 %384, 0
  %393 = xor i1 %392, %390
  %.v192 = select i1 %393, i64 19, i64 140
  %394 = add i64 %360, %.v192
  store i64 %394, i64* %3, align 8
  br i1 %393, label %block_44eb27, label %block_.L_44eba0

block_44eb27:                                     ; preds = %block_.L_44eb14
  store i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64* %RAX.i1066, align 8
  %395 = add i64 %394, 17
  store i64 %395, i64* %3, align 8
  %396 = load i32, i32* %364, align 4
  %397 = sext i32 %396 to i64
  %398 = mul nsw i64 %397, 476
  store i64 %398, i64* %RCX.i1156, align 8
  %399 = lshr i64 %398, 63
  %400 = add i64 %398, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  store i64 %400, i64* %RAX.i1066, align 8
  %401 = icmp ult i64 %400, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  %402 = icmp ult i64 %400, %398
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %14, align 1
  %405 = trunc i64 %400 to i32
  %406 = and i32 %405, 252
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i64 %398, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  %412 = xor i64 %411, %400
  %413 = lshr i64 %412, 4
  %414 = trunc i64 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %27, align 1
  %416 = icmp eq i64 %400, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %30, align 1
  %418 = lshr i64 %400, 63
  %419 = trunc i64 %418 to i8
  store i8 %419, i8* %33, align 1
  %420 = xor i64 %418, lshr (i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64 63)
  %421 = xor i64 %418, %399
  %422 = add nuw nsw i64 %420, %421
  %423 = icmp eq i64 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %39, align 1
  %425 = add i64 %398, add (i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64 412)
  %426 = add i64 %394, 33
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDX.i1043, align 8
  %430 = add i64 %361, -464
  %431 = add i64 %394, 39
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = sub i32 %428, %433
  %435 = icmp ult i32 %428, %433
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %14, align 1
  %437 = and i32 %434, 255
  %438 = tail call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  store i8 %441, i8* %21, align 1
  %442 = xor i32 %433, %428
  %443 = xor i32 %442, %434
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %27, align 1
  %447 = icmp eq i32 %434, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %30, align 1
  %449 = lshr i32 %434, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %33, align 1
  %451 = lshr i32 %428, 31
  %452 = lshr i32 %433, 31
  %453 = xor i32 %452, %451
  %454 = xor i32 %449, %451
  %455 = add nuw nsw i32 %454, %453
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %39, align 1
  %458 = icmp ne i8 %450, 0
  %459 = xor i1 %458, %456
  %.v195 = select i1 %459, i64 45, i64 96
  %460 = add i64 %394, %.v195
  store i64 %460, i64* %3, align 8
  br i1 %459, label %block_44eb54, label %block_.L_44eb87

block_44eb54:                                     ; preds = %block_44eb27
  store i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64* %RAX.i1066, align 8
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -436
  %463 = add i64 %460, 17
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = mul nsw i64 %466, 476
  store i64 %467, i64* %RCX.i1156, align 8
  %468 = lshr i64 %467, 63
  %469 = add i64 %467, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  store i64 %469, i64* %RAX.i1066, align 8
  %470 = icmp ult i64 %469, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  %471 = icmp ult i64 %469, %467
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %14, align 1
  %474 = trunc i64 %469 to i32
  %475 = and i32 %474, 252
  %476 = tail call i32 @llvm.ctpop.i32(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  store i8 %479, i8* %21, align 1
  %480 = xor i64 %467, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  %481 = xor i64 %480, %469
  %482 = lshr i64 %481, 4
  %483 = trunc i64 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %27, align 1
  %485 = icmp eq i64 %469, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %30, align 1
  %487 = lshr i64 %469, 63
  %488 = trunc i64 %487 to i8
  store i8 %488, i8* %33, align 1
  %489 = xor i64 %487, lshr (i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64 63)
  %490 = xor i64 %487, %468
  %491 = add nuw nsw i64 %489, %490
  %492 = icmp eq i64 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %39, align 1
  %494 = add i64 %467, add (i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64 412)
  %495 = add i64 %460, 33
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RDX.i1043, align 8
  %499 = add i64 %461, -464
  %500 = add i64 %460, 39
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  store i32 %497, i32* %501, align 4
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -436
  %504 = load i64, i64* %3, align 8
  %505 = add i64 %504, 6
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RDX.i1043, align 8
  %509 = add i64 %502, -460
  %510 = add i64 %504, 12
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  store i32 %507, i32* %511, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_44eb87

block_.L_44eb87:                                  ; preds = %block_44eb27, %block_44eb54
  %512 = phi i64 [ %460, %block_44eb27 ], [ %.pre106, %block_44eb54 ]
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -436
  %515 = add i64 %512, 11
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = add i32 %517, 1
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i1066, align 8
  %520 = icmp eq i32 %517, -1
  %521 = icmp eq i32 %518, 0
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = and i32 %518, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %21, align 1
  %529 = xor i32 %518, %517
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %27, align 1
  %533 = zext i1 %521 to i8
  store i8 %533, i8* %30, align 1
  %534 = lshr i32 %518, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %33, align 1
  %536 = lshr i32 %517, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %534
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %39, align 1
  %541 = add i64 %512, 20
  store i64 %541, i64* %3, align 8
  store i32 %518, i32* %516, align 4
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, -135
  store i64 %543, i64* %3, align 8
  br label %block_.L_44eb14

block_.L_44eba0:                                  ; preds = %block_.L_44eb14
  %544 = add i64 %361, -460
  %545 = add i64 %394, 7
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, 1
  %549 = icmp ne i32 %547, -1
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %14, align 1
  %551 = and i32 %548, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %21, align 1
  %556 = xor i32 %547, 16
  %557 = xor i32 %556, %548
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %27, align 1
  %561 = icmp eq i32 %548, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %30, align 1
  %563 = lshr i32 %548, 31
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %33, align 1
  %565 = lshr i32 %547, 31
  %566 = xor i32 %565, 1
  %567 = xor i32 %563, %565
  %568 = add nuw nsw i32 %567, %566
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %39, align 1
  %.v193 = select i1 %561, i64 127, i64 13
  %571 = add i64 %394, %.v193
  store i64 %571, i64* %3, align 8
  br i1 %561, label %block_.L_44ec1f, label %block_44ebad

block_44ebad:                                     ; preds = %block_.L_44eba0
  %572 = add i64 %571, 6
  store i64 %572, i64* %3, align 8
  %573 = load i32, i32* %546, align 4
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX.i1066, align 8
  %575 = add i32 %367, -1
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RCX.i1156, align 8
  %577 = lshr i32 %575, 31
  %578 = sub i32 %573, %575
  %579 = icmp ult i32 %573, %575
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %14, align 1
  %581 = and i32 %578, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %21, align 1
  %586 = xor i32 %575, %573
  %587 = xor i32 %586, %578
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %27, align 1
  %591 = icmp eq i32 %578, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %30, align 1
  %593 = lshr i32 %578, 31
  %594 = trunc i32 %593 to i8
  store i8 %594, i8* %33, align 1
  %595 = lshr i32 %573, 31
  %596 = xor i32 %577, %595
  %597 = xor i32 %593, %595
  %598 = add nuw nsw i32 %597, %596
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %39, align 1
  %601 = icmp ne i8 %594, 0
  %602 = xor i1 %601, %599
  %.v194 = select i1 %602, i64 24, i64 92
  %603 = add i64 %571, %.v194
  store i64 %603, i64* %3, align 8
  br i1 %602, label %block_44ebc5, label %block_.L_44ec09

block_44ebc5:                                     ; preds = %block_44ebad
  store i64 476, i64* %RAX.i1066, align 8
  store i64 476, i64* %RDX.i1043, align 8
  store i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64* %RCX.i1156, align 8
  %RSI.i982 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %604 = add i64 %603, 24
  store i64 %604, i64* %3, align 8
  %605 = load i32, i32* %546, align 4
  %606 = sext i32 %605 to i64
  %607 = mul nsw i64 %606, 476
  %RDI.i978 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %608 = add i64 %607, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  store i64 %608, i64* %RDI.i978, align 8
  store i64 %576, i64* %RAX.i1066, align 8
  %609 = sext i32 %575 to i64
  %610 = mul nsw i64 %609, 476
  %611 = lshr i64 %610, 63
  %612 = load i64, i64* %RCX.i1156, align 8
  %613 = add i64 %610, %612
  store i64 %613, i64* %RCX.i1156, align 8
  %614 = icmp ult i64 %613, %612
  %615 = icmp ult i64 %613, %610
  %616 = or i1 %614, %615
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = trunc i64 %613 to i32
  %619 = and i32 %618, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %21, align 1
  %624 = xor i64 %610, %612
  %625 = xor i64 %624, %613
  %626 = lshr i64 %625, 4
  %627 = trunc i64 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %27, align 1
  %629 = icmp eq i64 %613, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i64 %613, 63
  %632 = trunc i64 %631 to i8
  store i8 %632, i8* %33, align 1
  %633 = lshr i64 %612, 63
  %634 = xor i64 %631, %633
  %635 = xor i64 %631, %611
  %636 = add nuw nsw i64 %634, %635
  %637 = icmp eq i64 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %39, align 1
  store i64 %613, i64* %RSI.i982, align 8
  %639 = add i64 %603, -318165
  %640 = add i64 %603, 68
  %641 = load i64, i64* %6, align 8
  %642 = add i64 %641, -8
  %643 = inttoptr i64 %642 to i64*
  store i64 %640, i64* %643, align 8
  store i64 %642, i64* %6, align 8
  store i64 %639, i64* %3, align 8
  %644 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %MEMORY.1)
  %.pre104 = load i64, i64* %3, align 8
  %.pre105 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  br label %block_.L_44ec09

block_.L_44ec09:                                  ; preds = %block_44ebad, %block_44ebc5
  %645 = phi i32 [ %367, %block_44ebad ], [ %.pre105, %block_44ebc5 ]
  %646 = phi i64 [ %603, %block_44ebad ], [ %.pre104, %block_44ebc5 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_44ebad ], [ %644, %block_44ebc5 ]
  %647 = add i32 %645, -1
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX.i1066, align 8
  %649 = icmp ne i32 %645, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = and i32 %647, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i32 %645, 16
  %657 = xor i32 %656, %647
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %27, align 1
  %661 = icmp eq i32 %647, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %30, align 1
  %663 = lshr i32 %647, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %33, align 1
  %665 = lshr i32 %645, 31
  %666 = xor i32 %663, %665
  %667 = xor i32 %663, 1
  %668 = add nuw nsw i32 %666, %667
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %39, align 1
  store i32 %647, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %671 = add i64 %646, 32
  store i64 %671, i64* %3, align 8
  br label %block_.L_44ec29

block_.L_44ec1f:                                  ; preds = %block_.L_44eba0
  %672 = add i64 %571, 2254
  store i64 %672, i64* %3, align 8
  br label %block_.L_44f4ed

block_.L_44ec29:                                  ; preds = %block_.L_44eae6.block_.L_44ec29_crit_edge, %block_.L_44ec09
  %RDX.i932.pre-phi = phi i64* [ %.pre132, %block_.L_44eae6.block_.L_44ec29_crit_edge ], [ %RDX.i1043, %block_.L_44ec09 ]
  %RAX.i944.pre-phi = phi i64* [ %.pre131, %block_.L_44eae6.block_.L_44ec29_crit_edge ], [ %RAX.i1066, %block_.L_44ec09 ]
  %673 = phi i32 [ %318, %block_.L_44eae6.block_.L_44ec29_crit_edge ], [ %647, %block_.L_44ec09 ]
  %674 = phi i64 [ %340, %block_.L_44eae6.block_.L_44ec29_crit_edge ], [ %671, %block_.L_44ec09 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_.L_44eae6.block_.L_44ec29_crit_edge ], [ %MEMORY.4, %block_.L_44ec09 ]
  %675 = sext i32 %673 to i64
  %676 = mul nsw i64 %675, 476
  store i64 %676, i64* %RCX.i1156, align 8
  %677 = lshr i64 %676, 63
  %678 = add i64 %676, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  store i64 %678, i64* %RAX.i944.pre-phi, align 8
  %679 = icmp ult i64 %678, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  %680 = icmp ult i64 %678, %676
  %681 = or i1 %679, %680
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %14, align 1
  %683 = trunc i64 %678 to i32
  %684 = and i32 %683, 252
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %21, align 1
  %689 = xor i64 %676, ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64)
  %690 = xor i64 %689, %678
  %691 = lshr i64 %690, 4
  %692 = trunc i64 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %27, align 1
  %694 = icmp eq i64 %678, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %30, align 1
  %696 = lshr i64 %678, 63
  %697 = trunc i64 %696 to i8
  store i8 %697, i8* %33, align 1
  %698 = xor i64 %696, lshr (i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64 63)
  %699 = xor i64 %696, %677
  %700 = add nuw nsw i64 %698, %699
  %701 = icmp eq i64 %700, 2
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %39, align 1
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -456
  %705 = add i64 %674, 35
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i64*
  store i64 %678, i64* %706, align 8
  %707 = load i64, i64* %3, align 8
  %708 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RDX.i932.pre-phi, align 8
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -456
  %712 = add i64 %707, 14
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  store i64 %714, i64* %RAX.i944.pre-phi, align 8
  %715 = add i64 %707, 16
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  store i32 %708, i32* %716, align 4
  %717 = load i64, i64* %3, align 8
  %718 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RDX.i932.pre-phi, align 8
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -456
  %722 = add i64 %717, 14
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RAX.i944.pre-phi, align 8
  %725 = add i64 %724, 404
  %726 = add i64 %717, 20
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  store i32 %718, i32* %727, align 4
  %728 = load i64, i64* %RBP.i, align 8
  %729 = add i64 %728, -20
  %730 = load i64, i64* %3, align 8
  %731 = add i64 %730, 3
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %729 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RDX.i932.pre-phi, align 8
  %735 = add i64 %728, -456
  %736 = add i64 %730, 10
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %RAX.i944.pre-phi, align 8
  %739 = add i64 %738, 408
  %740 = add i64 %730, 16
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i32*
  store i32 %733, i32* %741, align 4
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -444
  %744 = load i64, i64* %3, align 8
  %745 = add i64 %744, 6
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RDX.i932.pre-phi, align 8
  %749 = add i64 %742, -456
  %750 = add i64 %744, 13
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RAX.i944.pre-phi, align 8
  %753 = add i64 %752, 412
  %754 = add i64 %744, 19
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  store i32 %747, i32* %755, align 4
  %756 = load i64, i64* %3, align 8
  %757 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %758 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %759 = sub i32 %757, %758
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDX.i932.pre-phi, align 8
  %761 = icmp ult i32 %757, %758
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %14, align 1
  %763 = and i32 %759, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  %768 = xor i32 %758, %757
  %769 = xor i32 %768, %759
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %27, align 1
  %773 = icmp eq i32 %759, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %30, align 1
  %775 = lshr i32 %759, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %33, align 1
  %777 = lshr i32 %757, 31
  %778 = lshr i32 %758, 31
  %779 = xor i32 %778, %777
  %780 = xor i32 %775, %777
  %781 = add nuw nsw i32 %780, %779
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %39, align 1
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -456
  %786 = add i64 %756, 21
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RAX.i944.pre-phi, align 8
  %789 = add i64 %788, 416
  %790 = add i64 %756, 27
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  store i32 %759, i32* %791, align 4
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -4
  %794 = load i64, i64* %3, align 8
  %795 = add i64 %794, 3
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %793 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RDX.i932.pre-phi, align 8
  %799 = add i64 %792, -456
  %800 = add i64 %794, 10
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i944.pre-phi, align 8
  %803 = add i64 %802, 420
  %804 = add i64 %794, 16
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  store i32 %797, i32* %805, align 4
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -8
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, 3
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %807 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RDX.i932.pre-phi, align 8
  %813 = add i64 %806, -456
  %814 = add i64 %808, 10
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RAX.i944.pre-phi, align 8
  %817 = add i64 %816, 424
  %818 = add i64 %808, 16
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  store i32 %811, i32* %819, align 4
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -12
  %822 = load i64, i64* %3, align 8
  %823 = add i64 %822, 3
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %821 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RDX.i932.pre-phi, align 8
  %827 = add i64 %820, -456
  %828 = add i64 %822, 10
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %RAX.i944.pre-phi, align 8
  %831 = add i64 %830, 428
  %832 = add i64 %822, 16
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  store i32 %825, i32* %833, align 4
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -16
  %836 = load i64, i64* %3, align 8
  %837 = add i64 %836, 3
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %835 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RDX.i932.pre-phi, align 8
  %841 = add i64 %834, -456
  %842 = add i64 %836, 10
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RAX.i944.pre-phi, align 8
  %845 = add i64 %844, 432
  %846 = add i64 %836, 16
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  store i32 %839, i32* %847, align 4
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -440
  %850 = load i64, i64* %3, align 8
  %851 = add i64 %850, 10
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %849 to i32*
  store i32 0, i32* %852, align 4
  %RDI.i841 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %RSI.i813 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_44ecf8

block_.L_44ecf8:                                  ; preds = %block_.L_44ed97, %block_.L_44ec29
  %853 = phi i64 [ %.pre107, %block_.L_44ec29 ], [ %1102, %block_.L_44ed97 ]
  %854 = load i64, i64* %RBP.i, align 8
  %855 = add i64 %854, -440
  %856 = add i64 %853, 7
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = add i32 %858, -5
  %860 = icmp ult i32 %858, 5
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %14, align 1
  %862 = and i32 %859, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %21, align 1
  %867 = xor i32 %859, %858
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %27, align 1
  %871 = icmp eq i32 %859, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %30, align 1
  %873 = lshr i32 %859, 31
  %874 = trunc i32 %873 to i8
  store i8 %874, i8* %33, align 1
  %875 = lshr i32 %858, 31
  %876 = xor i32 %873, %875
  %877 = add nuw nsw i32 %876, %875
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %39, align 1
  %880 = icmp ne i8 %874, 0
  %881 = xor i1 %880, %878
  %.v138 = select i1 %881, i64 13, i64 184
  %882 = add i64 %853, %.v138
  store i64 %882, i64* %3, align 8
  br i1 %881, label %block_44ed05, label %block_.L_44edb0

block_44ed05:                                     ; preds = %block_.L_44ecf8
  %883 = add i64 %882, 6
  store i64 %883, i64* %3, align 8
  %884 = load i32, i32* %857, align 4
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i944.pre-phi, align 8
  %886 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %887 = sub i32 %884, %886
  %888 = icmp ult i32 %884, %886
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %14, align 1
  %890 = and i32 %887, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i32 %886, %884
  %896 = xor i32 %895, %887
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %27, align 1
  %900 = icmp eq i32 %887, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %30, align 1
  %902 = lshr i32 %887, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %33, align 1
  %904 = lshr i32 %884, 31
  %905 = lshr i32 %886, 31
  %906 = xor i32 %905, %904
  %907 = xor i32 %902, %904
  %908 = add nuw nsw i32 %907, %906
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %39, align 1
  %911 = icmp ne i8 %903, 0
  %912 = xor i1 %911, %909
  %.v191 = select i1 %912, i64 19, i64 96
  %913 = add i64 %882, %.v191
  store i64 %913, i64* %3, align 8
  br i1 %912, label %block_44ed18, label %block_.L_44ed65

block_44ed18:                                     ; preds = %block_44ed05
  %914 = add i64 %913, 6
  store i64 %914, i64* %3, align 8
  %915 = load i32, i32* %857, align 4
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RDI.i841, align 8
  %917 = add i64 %854, -456
  %918 = add i64 %913, 13
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  %921 = add i64 %920, 436
  store i64 %921, i64* %RAX.i944.pre-phi, align 8
  %922 = icmp ugt i64 %920, -437
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %14, align 1
  %924 = trunc i64 %921 to i32
  %925 = and i32 %924, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %21, align 1
  %930 = xor i64 %920, 16
  %931 = xor i64 %930, %921
  %932 = lshr i64 %931, 4
  %933 = trunc i64 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %27, align 1
  %935 = icmp eq i64 %921, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %30, align 1
  %937 = lshr i64 %921, 63
  %938 = trunc i64 %937 to i8
  store i8 %938, i8* %33, align 1
  %939 = lshr i64 %920, 63
  %940 = xor i64 %937, %939
  %941 = add nuw nsw i64 %940, %937
  %942 = icmp eq i64 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %39, align 1
  %944 = add i64 %913, 26
  store i64 %944, i64* %3, align 8
  %945 = load i32, i32* %857, align 4
  %946 = sext i32 %945 to i64
  %947 = shl nsw i64 %946, 2
  store i64 %947, i64* %RCX.i1156, align 8
  %948 = add i64 %947, %921
  store i64 %948, i64* %RAX.i944.pre-phi, align 8
  %949 = icmp ult i64 %948, %921
  %950 = icmp ult i64 %948, %947
  %951 = or i1 %949, %950
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %14, align 1
  %953 = trunc i64 %948 to i32
  %954 = and i32 %953, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i64 %947, %921
  %960 = xor i64 %959, %948
  %961 = lshr i64 %960, 4
  %962 = trunc i64 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %27, align 1
  %964 = icmp eq i64 %948, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %30, align 1
  %966 = lshr i64 %948, 63
  %967 = trunc i64 %966 to i8
  store i8 %967, i8* %33, align 1
  %968 = lshr i64 %946, 61
  %969 = and i64 %968, 1
  %970 = xor i64 %966, %937
  %971 = xor i64 %966, %969
  %972 = add nuw nsw i64 %970, %971
  %973 = icmp eq i64 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %39, align 1
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -456
  %977 = add i64 %913, 40
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i64*
  %979 = load i64, i64* %978, align 8
  %980 = add i64 %979, 456
  store i64 %980, i64* %RCX.i1156, align 8
  %981 = icmp ugt i64 %979, -457
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %14, align 1
  %983 = trunc i64 %980 to i32
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  %989 = xor i64 %980, %979
  %990 = lshr i64 %989, 4
  %991 = trunc i64 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %27, align 1
  %993 = icmp eq i64 %980, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %30, align 1
  %995 = lshr i64 %980, 63
  %996 = trunc i64 %995 to i8
  store i8 %996, i8* %33, align 1
  %997 = lshr i64 %979, 63
  %998 = xor i64 %995, %997
  %999 = add nuw nsw i64 %998, %995
  %1000 = icmp eq i64 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %39, align 1
  %1002 = add i64 %975, -440
  %1003 = add i64 %913, 54
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = shl nsw i64 %1006, 2
  %1008 = add i64 %1007, %980
  store i64 %1008, i64* %RCX.i1156, align 8
  %1009 = icmp ult i64 %1008, %980
  %1010 = icmp ult i64 %1008, %1007
  %1011 = or i1 %1009, %1010
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %14, align 1
  %1013 = trunc i64 %1008 to i32
  %1014 = and i32 %1013, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %21, align 1
  %1019 = xor i64 %1007, %980
  %1020 = xor i64 %1019, %1008
  %1021 = lshr i64 %1020, 4
  %1022 = trunc i64 %1021 to i8
  %1023 = and i8 %1022, 1
  store i8 %1023, i8* %27, align 1
  %1024 = icmp eq i64 %1008, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %30, align 1
  %1026 = lshr i64 %1008, 63
  %1027 = trunc i64 %1026 to i8
  store i8 %1027, i8* %33, align 1
  %1028 = lshr i64 %1006, 61
  %1029 = and i64 %1028, 1
  %1030 = xor i64 %1026, %995
  %1031 = xor i64 %1026, %1029
  %1032 = add nuw nsw i64 %1030, %1031
  %1033 = icmp eq i64 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %39, align 1
  %1035 = load i64, i64* %RAX.i944.pre-phi, align 8
  store i64 %1035, i64* %RSI.i813, align 8
  store i64 %1008, i64* %RDX.i932.pre-phi, align 8
  %1036 = add i64 %913, -233256
  %1037 = add i64 %913, 72
  %1038 = load i64, i64* %6, align 8
  %1039 = add i64 %1038, -8
  %1040 = inttoptr i64 %1039 to i64*
  store i64 %1037, i64* %1040, align 8
  store i64 %1039, i64* %6, align 8
  store i64 %1036, i64* %3, align 8
  %call2_44ed5b = tail call %struct.Memory* @sub_415df0.get_move_from_stack(%struct.State* nonnull %0, i64 %1036, %struct.Memory* %MEMORY.5)
  %1041 = load i64, i64* %3, align 8
  %1042 = add i64 %1041, 55
  store i64 %1042, i64* %3, align 8
  br label %block_.L_44ed97

block_.L_44ed65:                                  ; preds = %block_44ed05
  %1043 = add i64 %854, -456
  %1044 = add i64 %913, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RAX.i944.pre-phi, align 8
  %1047 = add i64 %913, 14
  store i64 %1047, i64* %3, align 8
  %1048 = load i32, i32* %857, align 4
  %1049 = sext i32 %1048 to i64
  store i64 %1049, i64* %RCX.i1156, align 8
  %1050 = shl nsw i64 %1049, 2
  %1051 = add i64 %1046, 436
  %1052 = add i64 %1051, %1050
  %1053 = add i64 %913, 25
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  store i32 0, i32* %1054, align 4
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -456
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 7
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059, align 8
  store i64 %1060, i64* %RAX.i944.pre-phi, align 8
  %1061 = add i64 %1055, -440
  %1062 = add i64 %1057, 14
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = sext i32 %1064 to i64
  store i64 %1065, i64* %RCX.i1156, align 8
  %1066 = shl nsw i64 %1065, 2
  %1067 = add i64 %1060, 456
  %1068 = add i64 %1067, %1066
  %1069 = add i64 %1057, 25
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  store i32 0, i32* %1070, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_44ed97

block_.L_44ed97:                                  ; preds = %block_.L_44ed65, %block_44ed18
  %1071 = phi i64 [ %.pre127, %block_.L_44ed65 ], [ %1042, %block_44ed18 ]
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -440
  %1074 = add i64 %1071, 11
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = add i32 %1076, 1
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i944.pre-phi, align 8
  %1079 = icmp eq i32 %1076, -1
  %1080 = icmp eq i32 %1077, 0
  %1081 = or i1 %1079, %1080
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %14, align 1
  %1083 = and i32 %1077, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %21, align 1
  %1088 = xor i32 %1077, %1076
  %1089 = lshr i32 %1088, 4
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  store i8 %1091, i8* %27, align 1
  %1092 = zext i1 %1080 to i8
  store i8 %1092, i8* %30, align 1
  %1093 = lshr i32 %1077, 31
  %1094 = trunc i32 %1093 to i8
  store i8 %1094, i8* %33, align 1
  %1095 = lshr i32 %1076, 31
  %1096 = xor i32 %1093, %1095
  %1097 = add nuw nsw i32 %1096, %1093
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %39, align 1
  %1100 = add i64 %1071, 20
  store i64 %1100, i64* %3, align 8
  store i32 %1077, i32* %1075, align 4
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, -179
  store i64 %1102, i64* %3, align 8
  br label %block_.L_44ecf8

block_.L_44edb0:                                  ; preds = %block_.L_44ecf8
  %1103 = add i64 %854, -436
  %1104 = add i64 %882, 10
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  store i32 21, i32* %1105, align 4
  %CL.i768 = bitcast %union.anon* %59 to i8*
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_44edba

block_.L_44edba:                                  ; preds = %block_44edca, %block_.L_44edb0
  %1106 = phi i64 [ %1182, %block_44edca ], [ %.pre108, %block_.L_44edb0 ]
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -436
  %1109 = add i64 %1106, 10
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = add i32 %1111, -400
  %1113 = icmp ult i32 %1111, 400
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %14, align 1
  %1115 = and i32 %1112, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %21, align 1
  %1120 = xor i32 %1111, 16
  %1121 = xor i32 %1120, %1112
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %27, align 1
  %1125 = icmp eq i32 %1112, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = lshr i32 %1112, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %33, align 1
  %1129 = lshr i32 %1111, 31
  %1130 = xor i32 %1127, %1129
  %1131 = add nuw nsw i32 %1130, %1129
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %39, align 1
  %1134 = icmp ne i8 %1128, 0
  %1135 = xor i1 %1134, %1132
  %.v139 = select i1 %1135, i64 16, i64 64
  %1136 = add i64 %1106, %.v139
  store i64 %1136, i64* %3, align 8
  br i1 %1135, label %block_44edca, label %block_.L_44edfa

block_44edca:                                     ; preds = %block_.L_44edba
  %1137 = add i64 %1136, 7
  store i64 %1137, i64* %3, align 8
  %1138 = load i32, i32* %1110, align 4
  %1139 = sext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i944.pre-phi, align 8
  %1140 = add nsw i64 %1139, 11554848
  %1141 = add i64 %1136, 14
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i8*
  %1143 = load i8, i8* %1142, align 1
  store i8 %1143, i8* %CL.i768, align 1
  %1144 = add i64 %1136, 21
  store i64 %1144, i64* %3, align 8
  %1145 = load i32, i32* %1110, align 4
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RAX.i944.pre-phi, align 8
  %1147 = add nsw i64 %1146, -432
  %1148 = add i64 %1147, %1107
  %1149 = add i64 %1136, 28
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i8*
  store i8 %1143, i8* %1150, align 1
  %1151 = load i64, i64* %RBP.i, align 8
  %1152 = add i64 %1151, -436
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, 6
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1152 to i32*
  %1156 = load i32, i32* %1155, align 4
  %1157 = add i32 %1156, 1
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX.i944.pre-phi, align 8
  %1159 = icmp eq i32 %1156, -1
  %1160 = icmp eq i32 %1157, 0
  %1161 = or i1 %1159, %1160
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %14, align 1
  %1163 = and i32 %1157, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = xor i32 %1157, %1156
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  store i8 %1171, i8* %27, align 1
  %1172 = zext i1 %1160 to i8
  store i8 %1172, i8* %30, align 1
  %1173 = lshr i32 %1157, 31
  %1174 = trunc i32 %1173 to i8
  store i8 %1174, i8* %33, align 1
  %1175 = lshr i32 %1156, 31
  %1176 = xor i32 %1173, %1175
  %1177 = add nuw nsw i32 %1176, %1173
  %1178 = icmp eq i32 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %39, align 1
  %1180 = add i64 %1153, 15
  store i64 %1180, i64* %3, align 8
  store i32 %1157, i32* %1155, align 4
  %1181 = load i64, i64* %3, align 8
  %1182 = add i64 %1181, -59
  store i64 %1182, i64* %3, align 8
  br label %block_.L_44edba

block_.L_44edfa:                                  ; preds = %block_.L_44edba
  store i64 1, i64* %RDX.i932.pre-phi, align 8
  %1183 = add i64 %1107, -432
  store i64 %1183, i64* %RSI.i813, align 8
  %1184 = add i64 %1107, -8
  %1185 = add i64 %1136, 15
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RDI.i841, align 8
  %1189 = add i64 %1136, -233802
  %1190 = add i64 %1136, 20
  %1191 = load i64, i64* %6, align 8
  %1192 = add i64 %1191, -8
  %1193 = inttoptr i64 %1192 to i64*
  store i64 %1190, i64* %1193, align 8
  store i64 %1192, i64* %6, align 8
  store i64 %1189, i64* %3, align 8
  %call2_44ee09 = tail call %struct.Memory* @sub_415cb0.mark_string(%struct.State* nonnull %0, i64 %1189, %struct.Memory* %MEMORY.5)
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -12
  %1196 = load i64, i64* %3, align 8
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198, align 4
  store i8 0, i8* %14, align 1
  %1200 = and i32 %1199, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1205 = icmp eq i32 %1199, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %30, align 1
  %1207 = lshr i32 %1199, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v140 = select i1 %1205, i64 32, i64 10
  %1209 = add i64 %1196, %.v140
  store i64 %1209, i64* %3, align 8
  br i1 %1205, label %block_.L_44ee2e, label %block_44ee18

block_44ee18:                                     ; preds = %block_.L_44edfa
  %1210 = add i64 %1194, -16
  %1211 = add i64 %1209, 4
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  store i8 0, i8* %14, align 1
  %1214 = and i32 %1213, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1219 = icmp eq i32 %1213, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %30, align 1
  %1221 = lshr i32 %1213, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v141 = select i1 %1219, i64 22, i64 10
  %1223 = add i64 %1209, %.v141
  store i64 %1223, i64* %3, align 8
  br i1 %1219, label %block_.L_44ee2e, label %block_44ee22

block_44ee22:                                     ; preds = %block_44ee18
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %3, align 8
  %1225 = load i32, i32* %1212, align 4
  %1226 = sext i32 %1225 to i64
  store i64 %1226, i64* %RAX.i944.pre-phi, align 8
  %1227 = add nsw i64 %1226, -432
  %1228 = add i64 %1227, %1194
  %1229 = add i64 %1223, 12
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i8*
  store i8 1, i8* %1230, align 1
  %.pre109 = load i64, i64* %RBP.i, align 8
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_44ee2e

block_.L_44ee2e:                                  ; preds = %block_44ee22, %block_44ee18, %block_.L_44edfa
  %1231 = phi i64 [ %.pre110, %block_44ee22 ], [ %1223, %block_44ee18 ], [ %1209, %block_.L_44edfa ]
  %1232 = phi i64 [ %.pre109, %block_44ee22 ], [ %1194, %block_44ee18 ], [ %1194, %block_.L_44edfa ]
  %1233 = add i64 %1232, -436
  %1234 = add i64 %1231, 10
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  store i32 21, i32* %1235, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_44ee38

block_.L_44ee38:                                  ; preds = %block_.L_44efcf, %block_.L_44ee2e
  %1236 = phi i64 [ %1841, %block_.L_44efcf ], [ %.pre111, %block_.L_44ee2e ]
  %1237 = load i64, i64* %RBP.i, align 8
  %1238 = add i64 %1237, -436
  %1239 = add i64 %1236, 10
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = add i32 %1241, -400
  %1243 = icmp ult i32 %1241, 400
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %14, align 1
  %1245 = and i32 %1242, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %21, align 1
  %1250 = xor i32 %1241, 16
  %1251 = xor i32 %1250, %1242
  %1252 = lshr i32 %1251, 4
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  store i8 %1254, i8* %27, align 1
  %1255 = icmp eq i32 %1242, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %30, align 1
  %1257 = lshr i32 %1242, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %33, align 1
  %1259 = lshr i32 %1241, 31
  %1260 = xor i32 %1257, %1259
  %1261 = add nuw nsw i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %39, align 1
  %1264 = icmp ne i8 %1258, 0
  %1265 = xor i1 %1264, %1262
  %.v142 = select i1 %1265, i64 16, i64 427
  %1266 = add i64 %1236, %.v142
  store i64 %1266, i64* %3, align 8
  br i1 %1265, label %block_44ee48, label %block_.L_44efe3

block_44ee48:                                     ; preds = %block_.L_44ee38
  %1267 = add i64 %1266, 7
  store i64 %1267, i64* %3, align 8
  %1268 = load i32, i32* %1240, align 4
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RAX.i944.pre-phi, align 8
  %1270 = add nsw i64 %1269, 12099168
  %1271 = add i64 %1266, 15
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i8*
  %1273 = load i8, i8* %1272, align 1
  %1274 = zext i8 %1273 to i64
  store i64 %1274, i64* %RCX.i1156, align 8
  %1275 = zext i8 %1273 to i32
  %1276 = add nsw i32 %1275, -3
  %1277 = icmp ult i8 %1273, 3
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %14, align 1
  %1279 = and i32 %1276, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %21, align 1
  %1284 = xor i32 %1276, %1275
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %27, align 1
  %1288 = icmp eq i32 %1276, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1276, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v179 = select i1 %1288, i64 24, i64 29
  %1292 = add i64 %1266, %.v179
  store i64 %1292, i64* %3, align 8
  br i1 %1288, label %block_.L_44efcf, label %block_.L_44ee65

block_.L_44ee65:                                  ; preds = %block_44ee48
  %1293 = add i64 %1292, 7
  store i64 %1293, i64* %3, align 8
  %1294 = load i32, i32* %1240, align 4
  %1295 = sext i32 %1294 to i64
  store i64 %1295, i64* %RAX.i944.pre-phi, align 8
  %1296 = add nsw i64 %1295, -432
  %1297 = add i64 %1296, %1237
  %1298 = add i64 %1292, 15
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i8*
  %1300 = load i8, i8* %1299, align 1
  %1301 = sext i8 %1300 to i64
  %1302 = and i64 %1301, 4294967295
  store i64 %1302, i64* %RCX.i1156, align 8
  %1303 = sext i8 %1300 to i32
  store i8 0, i8* %14, align 1
  %1304 = and i32 %1303, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1309 = icmp eq i8 %1300, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %30, align 1
  %1311 = lshr i32 %1303, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %1309, i64 29, i64 24
  %1313 = add i64 %1292, %.v180
  store i64 %1313, i64* %3, align 8
  br i1 %1309, label %block_.L_44ee82, label %block_.L_44efcf

block_.L_44ee82:                                  ; preds = %block_.L_44ee65
  %1314 = add i64 %1313, 6
  store i64 %1314, i64* %3, align 8
  %1315 = load i32, i32* %1240, align 4
  %1316 = add i32 %1315, 20
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RAX.i944.pre-phi, align 8
  %1318 = icmp ugt i32 %1315, -21
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %14, align 1
  %1320 = and i32 %1316, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %21, align 1
  %1325 = xor i32 %1315, 16
  %1326 = xor i32 %1325, %1316
  %1327 = lshr i32 %1326, 4
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %27, align 1
  %1330 = icmp eq i32 %1316, 0
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %30, align 1
  %1332 = lshr i32 %1316, 31
  %1333 = trunc i32 %1332 to i8
  store i8 %1333, i8* %33, align 1
  %1334 = lshr i32 %1315, 31
  %1335 = xor i32 %1332, %1334
  %1336 = add nuw nsw i32 %1335, %1332
  %1337 = icmp eq i32 %1336, 2
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %39, align 1
  %1339 = sext i32 %1316 to i64
  store i64 %1339, i64* %RCX.i1156, align 8
  %1340 = add nsw i64 %1339, 12099168
  %1341 = add i64 %1313, 20
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i8*
  %1343 = load i8, i8* %1342, align 1
  %1344 = zext i8 %1343 to i64
  store i64 %1344, i64* %RAX.i944.pre-phi, align 8
  %1345 = zext i8 %1343 to i32
  %1346 = add nsw i32 %1345, -3
  %1347 = icmp ult i8 %1343, 3
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %14, align 1
  %1349 = and i32 %1346, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  %1354 = xor i32 %1346, %1345
  %1355 = lshr i32 %1354, 4
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  store i8 %1357, i8* %27, align 1
  %1358 = icmp eq i32 %1346, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %30, align 1
  %1360 = lshr i32 %1346, 31
  %1361 = trunc i32 %1360 to i8
  store i8 %1361, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v181 = select i1 %1358, i64 58, i64 29
  %1362 = add i64 %1313, %.v181
  store i64 %1362, i64* %3, align 8
  br i1 %1358, label %block_.L_44eebc, label %block_44ee9f

block_44ee9f:                                     ; preds = %block_.L_44ee82
  %1363 = add i64 %1362, 6
  store i64 %1363, i64* %3, align 8
  %1364 = load i32, i32* %1240, align 4
  %1365 = add i32 %1364, 20
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i944.pre-phi, align 8
  %1367 = icmp ugt i32 %1364, -21
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = and i32 %1365, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i32 %1364, 16
  %1375 = xor i32 %1374, %1365
  %1376 = lshr i32 %1375, 4
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  store i8 %1378, i8* %27, align 1
  %1379 = icmp eq i32 %1365, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %30, align 1
  %1381 = lshr i32 %1365, 31
  %1382 = trunc i32 %1381 to i8
  store i8 %1382, i8* %33, align 1
  %1383 = lshr i32 %1364, 31
  %1384 = xor i32 %1381, %1383
  %1385 = add nuw nsw i32 %1384, %1381
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %39, align 1
  %1388 = sext i32 %1365 to i64
  store i64 %1388, i64* %RCX.i1156, align 8
  %1389 = add nsw i64 %1388, -432
  %1390 = add i64 %1389, %1237
  %1391 = add i64 %1362, 20
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i8*
  %1393 = load i8, i8* %1392, align 1
  %1394 = sext i8 %1393 to i64
  %1395 = and i64 %1394, 4294967295
  store i64 %1395, i64* %RAX.i944.pre-phi, align 8
  %1396 = sext i8 %1393 to i32
  %1397 = add nsw i32 %1396, -1
  %1398 = icmp eq i8 %1393, 0
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %14, align 1
  %1400 = and i32 %1397, 255
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %21, align 1
  %1405 = xor i32 %1397, %1396
  %1406 = lshr i32 %1405, 4
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %27, align 1
  %1409 = icmp eq i32 %1397, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %30, align 1
  %1411 = lshr i32 %1397, 31
  %1412 = trunc i32 %1411 to i8
  store i8 %1412, i8* %33, align 1
  %1413 = lshr i32 %1396, 31
  %1414 = xor i32 %1411, %1413
  %1415 = add nuw nsw i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %39, align 1
  %.v182 = select i1 %1409, i64 203, i64 29
  %1418 = add i64 %1362, %.v182
  store i64 %1418, i64* %3, align 8
  br i1 %1409, label %block_.L_44ef6a, label %block_.L_44eebc

block_.L_44eebc:                                  ; preds = %block_44ee9f, %block_.L_44ee82
  %1419 = phi i64 [ %1418, %block_44ee9f ], [ %1362, %block_.L_44ee82 ]
  %1420 = add i64 %1419, 6
  store i64 %1420, i64* %3, align 8
  %1421 = load i32, i32* %1240, align 4
  %1422 = add i32 %1421, -1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RAX.i944.pre-phi, align 8
  %1424 = icmp eq i32 %1421, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %14, align 1
  %1426 = and i32 %1422, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426)
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %21, align 1
  %1431 = xor i32 %1422, %1421
  %1432 = lshr i32 %1431, 4
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %27, align 1
  %1435 = icmp eq i32 %1422, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %30, align 1
  %1437 = lshr i32 %1422, 31
  %1438 = trunc i32 %1437 to i8
  store i8 %1438, i8* %33, align 1
  %1439 = lshr i32 %1421, 31
  %1440 = xor i32 %1437, %1439
  %1441 = add nuw nsw i32 %1440, %1439
  %1442 = icmp eq i32 %1441, 2
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %39, align 1
  %1444 = sext i32 %1422 to i64
  store i64 %1444, i64* %RCX.i1156, align 8
  %1445 = add nsw i64 %1444, 12099168
  %1446 = add i64 %1419, 20
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i8*
  %1448 = load i8, i8* %1447, align 1
  %1449 = zext i8 %1448 to i64
  store i64 %1449, i64* %RAX.i944.pre-phi, align 8
  %1450 = zext i8 %1448 to i32
  %1451 = add nsw i32 %1450, -3
  %1452 = icmp ult i8 %1448, 3
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %14, align 1
  %1454 = and i32 %1451, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %21, align 1
  %1459 = xor i32 %1451, %1450
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %27, align 1
  %1463 = icmp eq i32 %1451, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %30, align 1
  %1465 = lshr i32 %1451, 31
  %1466 = trunc i32 %1465 to i8
  store i8 %1466, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %1463, i64 58, i64 29
  %1467 = add i64 %1419, %.v183
  store i64 %1467, i64* %3, align 8
  br i1 %1463, label %block_.L_44eef6, label %block_44eed9

block_44eed9:                                     ; preds = %block_.L_44eebc
  %1468 = add i64 %1467, 6
  store i64 %1468, i64* %3, align 8
  %1469 = load i32, i32* %1240, align 4
  %1470 = add i32 %1469, -1
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i944.pre-phi, align 8
  %1472 = icmp eq i32 %1469, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %14, align 1
  %1474 = and i32 %1470, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  %1479 = xor i32 %1470, %1469
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %27, align 1
  %1483 = icmp eq i32 %1470, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %30, align 1
  %1485 = lshr i32 %1470, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %33, align 1
  %1487 = lshr i32 %1469, 31
  %1488 = xor i32 %1485, %1487
  %1489 = add nuw nsw i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %39, align 1
  %1492 = sext i32 %1470 to i64
  store i64 %1492, i64* %RCX.i1156, align 8
  %1493 = add nsw i64 %1492, -432
  %1494 = add i64 %1493, %1237
  %1495 = add i64 %1467, 20
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i8*
  %1497 = load i8, i8* %1496, align 1
  %1498 = sext i8 %1497 to i64
  %1499 = and i64 %1498, 4294967295
  store i64 %1499, i64* %RAX.i944.pre-phi, align 8
  %1500 = sext i8 %1497 to i32
  %1501 = add nsw i32 %1500, -1
  %1502 = icmp eq i8 %1497, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %14, align 1
  %1504 = and i32 %1501, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %21, align 1
  %1509 = xor i32 %1501, %1500
  %1510 = lshr i32 %1509, 4
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %27, align 1
  %1513 = icmp eq i32 %1501, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %30, align 1
  %1515 = lshr i32 %1501, 31
  %1516 = trunc i32 %1515 to i8
  store i8 %1516, i8* %33, align 1
  %1517 = lshr i32 %1500, 31
  %1518 = xor i32 %1515, %1517
  %1519 = add nuw nsw i32 %1518, %1517
  %1520 = icmp eq i32 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %39, align 1
  %.v184 = select i1 %1513, i64 145, i64 29
  %1522 = add i64 %1467, %.v184
  store i64 %1522, i64* %3, align 8
  br i1 %1513, label %block_.L_44ef6a, label %block_.L_44eef6

block_.L_44eef6:                                  ; preds = %block_44eed9, %block_.L_44eebc
  %1523 = phi i64 [ %1522, %block_44eed9 ], [ %1467, %block_.L_44eebc ]
  %1524 = add i64 %1523, 6
  store i64 %1524, i64* %3, align 8
  %1525 = load i32, i32* %1240, align 4
  %1526 = add i32 %1525, -20
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RAX.i944.pre-phi, align 8
  %1528 = icmp ult i32 %1525, 20
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %14, align 1
  %1530 = and i32 %1526, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %21, align 1
  %1535 = xor i32 %1525, 16
  %1536 = xor i32 %1535, %1526
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %27, align 1
  %1540 = icmp eq i32 %1526, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = lshr i32 %1526, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %33, align 1
  %1544 = lshr i32 %1525, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %39, align 1
  %1549 = sext i32 %1526 to i64
  store i64 %1549, i64* %RCX.i1156, align 8
  %1550 = add nsw i64 %1549, 12099168
  %1551 = add i64 %1523, 20
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i8*
  %1553 = load i8, i8* %1552, align 1
  %1554 = zext i8 %1553 to i64
  store i64 %1554, i64* %RAX.i944.pre-phi, align 8
  %1555 = zext i8 %1553 to i32
  %1556 = add nsw i32 %1555, -3
  %1557 = icmp ult i8 %1553, 3
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %14, align 1
  %1559 = and i32 %1556, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  %1564 = xor i32 %1556, %1555
  %1565 = lshr i32 %1564, 4
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  store i8 %1567, i8* %27, align 1
  %1568 = icmp eq i32 %1556, 0
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %30, align 1
  %1570 = lshr i32 %1556, 31
  %1571 = trunc i32 %1570 to i8
  store i8 %1571, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v185 = select i1 %1568, i64 58, i64 29
  %1572 = add i64 %1523, %.v185
  store i64 %1572, i64* %3, align 8
  br i1 %1568, label %block_.L_44ef30, label %block_44ef13

block_44ef13:                                     ; preds = %block_.L_44eef6
  %1573 = add i64 %1572, 6
  store i64 %1573, i64* %3, align 8
  %1574 = load i32, i32* %1240, align 4
  %1575 = add i32 %1574, -20
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX.i944.pre-phi, align 8
  %1577 = icmp ult i32 %1574, 20
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %14, align 1
  %1579 = and i32 %1575, 255
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %21, align 1
  %1584 = xor i32 %1574, 16
  %1585 = xor i32 %1584, %1575
  %1586 = lshr i32 %1585, 4
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  store i8 %1588, i8* %27, align 1
  %1589 = icmp eq i32 %1575, 0
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %30, align 1
  %1591 = lshr i32 %1575, 31
  %1592 = trunc i32 %1591 to i8
  store i8 %1592, i8* %33, align 1
  %1593 = lshr i32 %1574, 31
  %1594 = xor i32 %1591, %1593
  %1595 = add nuw nsw i32 %1594, %1593
  %1596 = icmp eq i32 %1595, 2
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %39, align 1
  %1598 = sext i32 %1575 to i64
  store i64 %1598, i64* %RCX.i1156, align 8
  %1599 = add nsw i64 %1598, -432
  %1600 = add i64 %1599, %1237
  %1601 = add i64 %1572, 20
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i8*
  %1603 = load i8, i8* %1602, align 1
  %1604 = sext i8 %1603 to i64
  %1605 = and i64 %1604, 4294967295
  store i64 %1605, i64* %RAX.i944.pre-phi, align 8
  %1606 = sext i8 %1603 to i32
  %1607 = add nsw i32 %1606, -1
  %1608 = icmp eq i8 %1603, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = and i32 %1607, 255
  %1611 = tail call i32 @llvm.ctpop.i32(i32 %1610)
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  store i8 %1614, i8* %21, align 1
  %1615 = xor i32 %1607, %1606
  %1616 = lshr i32 %1615, 4
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  store i8 %1618, i8* %27, align 1
  %1619 = icmp eq i32 %1607, 0
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %30, align 1
  %1621 = lshr i32 %1607, 31
  %1622 = trunc i32 %1621 to i8
  store i8 %1622, i8* %33, align 1
  %1623 = lshr i32 %1606, 31
  %1624 = xor i32 %1621, %1623
  %1625 = add nuw nsw i32 %1624, %1623
  %1626 = icmp eq i32 %1625, 2
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %39, align 1
  %.v186 = select i1 %1619, i64 87, i64 29
  %1628 = add i64 %1572, %.v186
  store i64 %1628, i64* %3, align 8
  br i1 %1619, label %block_.L_44ef6a, label %block_.L_44ef30

block_.L_44ef30:                                  ; preds = %block_44ef13, %block_.L_44eef6
  %1629 = phi i64 [ %1628, %block_44ef13 ], [ %1572, %block_.L_44eef6 ]
  %1630 = add i64 %1629, 6
  store i64 %1630, i64* %3, align 8
  %1631 = load i32, i32* %1240, align 4
  %1632 = add i32 %1631, 1
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RAX.i944.pre-phi, align 8
  %1634 = icmp eq i32 %1631, -1
  %1635 = icmp eq i32 %1632, 0
  %1636 = or i1 %1634, %1635
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %14, align 1
  %1638 = and i32 %1632, 255
  %1639 = tail call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  store i8 %1642, i8* %21, align 1
  %1643 = xor i32 %1632, %1631
  %1644 = lshr i32 %1643, 4
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  store i8 %1646, i8* %27, align 1
  %1647 = zext i1 %1635 to i8
  store i8 %1647, i8* %30, align 1
  %1648 = lshr i32 %1632, 31
  %1649 = trunc i32 %1648 to i8
  store i8 %1649, i8* %33, align 1
  %1650 = lshr i32 %1631, 31
  %1651 = xor i32 %1648, %1650
  %1652 = add nuw nsw i32 %1651, %1648
  %1653 = icmp eq i32 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %39, align 1
  %1655 = sext i32 %1632 to i64
  store i64 %1655, i64* %RCX.i1156, align 8
  %1656 = add nsw i64 %1655, 12099168
  %1657 = add i64 %1629, 20
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i8*
  %1659 = load i8, i8* %1658, align 1
  %1660 = zext i8 %1659 to i64
  store i64 %1660, i64* %RAX.i944.pre-phi, align 8
  %1661 = zext i8 %1659 to i32
  %1662 = add nsw i32 %1661, -3
  %1663 = icmp ult i8 %1659, 3
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %14, align 1
  %1665 = and i32 %1662, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %21, align 1
  %1670 = xor i32 %1662, %1661
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %27, align 1
  %1674 = icmp eq i32 %1662, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %30, align 1
  %1676 = lshr i32 %1662, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %1674, i64 154, i64 29
  %1678 = add i64 %1629, %.v187
  store i64 %1678, i64* %3, align 8
  br i1 %1674, label %block_.L_44efcf, label %block_44ef4d

block_44ef4d:                                     ; preds = %block_.L_44ef30
  %1679 = add i64 %1678, 6
  store i64 %1679, i64* %3, align 8
  %1680 = load i32, i32* %1240, align 4
  %1681 = add i32 %1680, 1
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX.i944.pre-phi, align 8
  %1683 = icmp eq i32 %1680, -1
  %1684 = icmp eq i32 %1681, 0
  %1685 = or i1 %1683, %1684
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = and i32 %1681, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  %1692 = xor i32 %1681, %1680
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %27, align 1
  %1696 = zext i1 %1684 to i8
  store i8 %1696, i8* %30, align 1
  %1697 = lshr i32 %1681, 31
  %1698 = trunc i32 %1697 to i8
  store i8 %1698, i8* %33, align 1
  %1699 = lshr i32 %1680, 31
  %1700 = xor i32 %1697, %1699
  %1701 = add nuw nsw i32 %1700, %1697
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %39, align 1
  %1704 = sext i32 %1681 to i64
  store i64 %1704, i64* %RCX.i1156, align 8
  %1705 = add nsw i64 %1704, -432
  %1706 = add i64 %1705, %1237
  %1707 = add i64 %1678, 20
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i8*
  %1709 = load i8, i8* %1708, align 1
  %1710 = sext i8 %1709 to i64
  %1711 = and i64 %1710, 4294967295
  store i64 %1711, i64* %RAX.i944.pre-phi, align 8
  %1712 = sext i8 %1709 to i32
  %1713 = add nsw i32 %1712, -1
  %1714 = icmp eq i8 %1709, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %14, align 1
  %1716 = and i32 %1713, 255
  %1717 = tail call i32 @llvm.ctpop.i32(i32 %1716)
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  %1720 = xor i8 %1719, 1
  store i8 %1720, i8* %21, align 1
  %1721 = xor i32 %1713, %1712
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  store i8 %1724, i8* %27, align 1
  %1725 = icmp eq i32 %1713, 0
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %30, align 1
  %1727 = lshr i32 %1713, 31
  %1728 = trunc i32 %1727 to i8
  store i8 %1728, i8* %33, align 1
  %1729 = lshr i32 %1712, 31
  %1730 = xor i32 %1727, %1729
  %1731 = add nuw nsw i32 %1730, %1729
  %1732 = icmp eq i32 %1731, 2
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %39, align 1
  %.v188 = select i1 %1725, i64 29, i64 125
  %1734 = add i64 %1678, %.v188
  store i64 %1734, i64* %3, align 8
  br i1 %1725, label %block_.L_44ef6a, label %block_.L_44efcf

block_.L_44ef6a:                                  ; preds = %block_44ef4d, %block_44ef13, %block_44eed9, %block_44ee9f
  %1735 = phi i64 [ %1734, %block_44ef4d ], [ %1628, %block_44ef13 ], [ %1522, %block_44eed9 ], [ %1418, %block_44ee9f ]
  %1736 = add i64 %1735, 7
  store i64 %1736, i64* %3, align 8
  %1737 = load i32, i32* %1240, align 4
  %1738 = sext i32 %1737 to i64
  store i64 %1738, i64* %RAX.i944.pre-phi, align 8
  %1739 = add nsw i64 %1738, 12099168
  %1740 = add i64 %1735, 15
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i8*
  %1742 = load i8, i8* %1741, align 1
  %1743 = zext i8 %1742 to i64
  store i64 %1743, i64* %RCX.i1156, align 8
  %1744 = zext i8 %1742 to i32
  %1745 = add nsw i32 %1744, -1
  %1746 = icmp eq i8 %1742, 0
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %14, align 1
  %1748 = and i32 %1745, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %21, align 1
  %1753 = xor i32 %1745, %1744
  %1754 = lshr i32 %1753, 4
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  store i8 %1756, i8* %27, align 1
  %1757 = icmp eq i32 %1745, 0
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %30, align 1
  %1759 = lshr i32 %1745, 31
  %1760 = trunc i32 %1759 to i8
  store i8 %1760, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v189 = select i1 %1757, i64 48, i64 24
  %1761 = add i64 %1735, %.v189
  store i64 %1761, i64* %3, align 8
  br i1 %1757, label %block_.L_44ef9a, label %block_44ef82

block_44ef82:                                     ; preds = %block_.L_44ef6a
  %1762 = add i64 %1761, 7
  store i64 %1762, i64* %3, align 8
  %1763 = load i32, i32* %1240, align 4
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RAX.i944.pre-phi, align 8
  %1765 = add nsw i64 %1764, 12099168
  %1766 = add i64 %1761, 15
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i8*
  %1768 = load i8, i8* %1767, align 1
  %1769 = zext i8 %1768 to i64
  store i64 %1769, i64* %RCX.i1156, align 8
  %1770 = zext i8 %1768 to i32
  %1771 = add nsw i32 %1770, -2
  %1772 = icmp ult i8 %1768, 2
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1771, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1771, %1770
  %1780 = lshr i32 %1779, 4
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  store i8 %1782, i8* %27, align 1
  %1783 = icmp eq i32 %1771, 0
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %30, align 1
  %1785 = lshr i32 %1771, 31
  %1786 = trunc i32 %1785 to i8
  store i8 %1786, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %1783, i64 24, i64 52
  %1787 = add i64 %1761, %.v190
  store i64 %1787, i64* %3, align 8
  br i1 %1783, label %block_.L_44ef9a, label %block_.L_44efb6

block_.L_44ef9a:                                  ; preds = %block_44ef82, %block_.L_44ef6a
  %1788 = phi i64 [ %1787, %block_44ef82 ], [ %1761, %block_.L_44ef6a ]
  store i64 2, i64* %RDX.i932.pre-phi, align 8
  %1789 = add i64 %1237, -432
  store i64 %1789, i64* %RSI.i813, align 8
  %1790 = add i64 %1788, 18
  store i64 %1790, i64* %3, align 8
  %1791 = load i32, i32* %1240, align 4
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RDI.i841, align 8
  %1793 = add i64 %1788, -234218
  %1794 = add i64 %1788, 23
  %1795 = load i64, i64* %6, align 8
  %1796 = add i64 %1795, -8
  %1797 = inttoptr i64 %1796 to i64*
  store i64 %1794, i64* %1797, align 8
  store i64 %1796, i64* %6, align 8
  store i64 %1793, i64* %3, align 8
  %call2_44efac = tail call %struct.Memory* @sub_415cb0.mark_string(%struct.State* nonnull %0, i64 %1793, %struct.Memory* %call2_44ee09)
  %1798 = load i64, i64* %3, align 8
  %1799 = add i64 %1798, 20
  store i64 %1799, i64* %3, align 8
  br label %block_.L_44efc5

block_.L_44efb6:                                  ; preds = %block_44ef82
  %1800 = add i64 %1787, 7
  store i64 %1800, i64* %3, align 8
  %1801 = load i32, i32* %1240, align 4
  %1802 = sext i32 %1801 to i64
  store i64 %1802, i64* %RAX.i944.pre-phi, align 8
  %1803 = add nsw i64 %1802, -432
  %1804 = add i64 %1803, %1237
  %1805 = add i64 %1787, 15
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i8*
  store i8 2, i8* %1806, align 1
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_44efc5

block_.L_44efc5:                                  ; preds = %block_.L_44efb6, %block_.L_44ef9a
  %1807 = phi i64 [ %.pre125, %block_.L_44efb6 ], [ %1799, %block_.L_44ef9a ]
  %1808 = add i64 %1807, 5
  store i64 %1808, i64* %3, align 8
  %.pre126 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44efcf

block_.L_44efcf:                                  ; preds = %block_44ef4d, %block_44ee48, %block_.L_44ef30, %block_.L_44efc5, %block_.L_44ee65
  %1809 = phi i64 [ %1237, %block_.L_44ee65 ], [ %.pre126, %block_.L_44efc5 ], [ %1237, %block_44ef4d ], [ %1237, %block_.L_44ef30 ], [ %1237, %block_44ee48 ]
  %1810 = phi i64 [ %1313, %block_.L_44ee65 ], [ %1808, %block_.L_44efc5 ], [ %1734, %block_44ef4d ], [ %1678, %block_.L_44ef30 ], [ %1292, %block_44ee48 ]
  %.sink67 = phi i64 [ 338, %block_.L_44ee65 ], [ 5, %block_.L_44efc5 ], [ 5, %block_44ef4d ], [ 5, %block_.L_44ef30 ], [ 367, %block_44ee48 ]
  %1811 = add i64 %1810, %.sink67
  %1812 = add i64 %1809, -436
  %1813 = add i64 %1811, 6
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = add i32 %1815, 1
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RAX.i944.pre-phi, align 8
  %1818 = icmp eq i32 %1815, -1
  %1819 = icmp eq i32 %1816, 0
  %1820 = or i1 %1818, %1819
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %14, align 1
  %1822 = and i32 %1816, 255
  %1823 = tail call i32 @llvm.ctpop.i32(i32 %1822)
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = xor i8 %1825, 1
  store i8 %1826, i8* %21, align 1
  %1827 = xor i32 %1816, %1815
  %1828 = lshr i32 %1827, 4
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  store i8 %1830, i8* %27, align 1
  %1831 = zext i1 %1819 to i8
  store i8 %1831, i8* %30, align 1
  %1832 = lshr i32 %1816, 31
  %1833 = trunc i32 %1832 to i8
  store i8 %1833, i8* %33, align 1
  %1834 = lshr i32 %1815, 31
  %1835 = xor i32 %1832, %1834
  %1836 = add nuw nsw i32 %1835, %1832
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %39, align 1
  %1839 = add i64 %1811, 15
  store i64 %1839, i64* %3, align 8
  store i32 %1816, i32* %1814, align 4
  %1840 = load i64, i64* %3, align 8
  %1841 = add i64 %1840, -422
  store i64 %1841, i64* %3, align 8
  br label %block_.L_44ee38

block_.L_44efe3:                                  ; preds = %block_.L_44ee38
  %1842 = add i64 %1266, 10
  store i64 %1842, i64* %3, align 8
  store i32 21, i32* %1240, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_44efed

block_.L_44efed:                                  ; preds = %block_.L_44f083, %block_.L_44efe3
  %1843 = phi i64 [ %2037, %block_.L_44f083 ], [ %.pre112, %block_.L_44efe3 ]
  %1844 = load i64, i64* %RBP.i, align 8
  %1845 = add i64 %1844, -436
  %1846 = add i64 %1843, 10
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = add i32 %1848, -400
  %1850 = icmp ult i32 %1848, 400
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %14, align 1
  %1852 = and i32 %1849, 255
  %1853 = tail call i32 @llvm.ctpop.i32(i32 %1852)
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  store i8 %1856, i8* %21, align 1
  %1857 = xor i32 %1848, 16
  %1858 = xor i32 %1857, %1849
  %1859 = lshr i32 %1858, 4
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  store i8 %1861, i8* %27, align 1
  %1862 = icmp eq i32 %1849, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %30, align 1
  %1864 = lshr i32 %1849, 31
  %1865 = trunc i32 %1864 to i8
  store i8 %1865, i8* %33, align 1
  %1866 = lshr i32 %1848, 31
  %1867 = xor i32 %1864, %1866
  %1868 = add nuw nsw i32 %1867, %1866
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %39, align 1
  %1871 = icmp ne i8 %1865, 0
  %1872 = xor i1 %1871, %1869
  %.v143 = select i1 %1872, i64 16, i64 170
  %1873 = add i64 %1843, %.v143
  store i64 %1873, i64* %3, align 8
  br i1 %1872, label %block_44effd, label %block_.L_44f097

block_44effd:                                     ; preds = %block_.L_44efed
  %1874 = add i64 %1873, 7
  store i64 %1874, i64* %3, align 8
  %1875 = load i32, i32* %1847, align 4
  %1876 = sext i32 %1875 to i64
  store i64 %1876, i64* %RAX.i944.pre-phi, align 8
  %1877 = add nsw i64 %1876, 12099168
  %1878 = add i64 %1873, 15
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i8*
  %1880 = load i8, i8* %1879, align 1
  %1881 = zext i8 %1880 to i64
  store i64 %1881, i64* %RCX.i1156, align 8
  %1882 = zext i8 %1880 to i32
  %1883 = add nsw i32 %1882, -3
  %1884 = icmp ult i8 %1880, 3
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %14, align 1
  %1886 = and i32 %1883, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %21, align 1
  %1891 = xor i32 %1883, %1882
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %27, align 1
  %1895 = icmp eq i32 %1883, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %30, align 1
  %1897 = lshr i32 %1883, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v175 = select i1 %1895, i64 24, i64 29
  %1899 = add i64 %1873, %.v175
  store i64 %1899, i64* %3, align 8
  br i1 %1895, label %block_44f015, label %block_.L_44f01a

block_44f015:                                     ; preds = %block_44effd
  %1900 = add i64 %1899, 110
  br label %block_.L_44f083

block_.L_44f01a:                                  ; preds = %block_44effd
  %1901 = add i64 %1899, 7
  store i64 %1901, i64* %3, align 8
  %1902 = load i32, i32* %1847, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RAX.i944.pre-phi, align 8
  %1904 = add nsw i64 %1903, 12099168
  %1905 = add i64 %1899, 15
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i8*
  %1907 = load i8, i8* %1906, align 1
  %1908 = zext i8 %1907 to i64
  store i64 %1908, i64* %RCX.i1156, align 8
  %1909 = zext i8 %1907 to i32
  %1910 = add nsw i32 %1909, -1
  %1911 = icmp eq i8 %1907, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1910, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1910, %1909
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i32 %1910, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i32 %1910, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %1922, i64 48, i64 24
  %1926 = add i64 %1899, %.v176
  store i64 %1926, i64* %3, align 8
  br i1 %1922, label %block_.L_44f04a, label %block_44f032

block_44f032:                                     ; preds = %block_.L_44f01a
  %1927 = add i64 %1926, 7
  store i64 %1927, i64* %3, align 8
  %1928 = load i32, i32* %1847, align 4
  %1929 = sext i32 %1928 to i64
  store i64 %1929, i64* %RAX.i944.pre-phi, align 8
  %1930 = add nsw i64 %1929, 12099168
  %1931 = add i64 %1926, 15
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i8*
  %1933 = load i8, i8* %1932, align 1
  %1934 = zext i8 %1933 to i64
  store i64 %1934, i64* %RCX.i1156, align 8
  %1935 = zext i8 %1933 to i32
  %1936 = add nsw i32 %1935, -2
  %1937 = icmp ult i8 %1933, 2
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %14, align 1
  %1939 = and i32 %1936, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %21, align 1
  %1944 = xor i32 %1936, %1935
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  store i8 %1947, i8* %27, align 1
  %1948 = icmp eq i32 %1936, 0
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %30, align 1
  %1950 = lshr i32 %1936, 31
  %1951 = trunc i32 %1950 to i8
  store i8 %1951, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v177 = select i1 %1948, i64 24, i64 76
  %1952 = add i64 %1926, %.v177
  store i64 %1952, i64* %3, align 8
  br i1 %1948, label %block_.L_44f04a, label %block_.L_44f07e

block_.L_44f04a:                                  ; preds = %block_44f032, %block_.L_44f01a
  %1953 = phi i64 [ %1952, %block_44f032 ], [ %1926, %block_.L_44f01a ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i944.pre-phi, align 8
  %1954 = add i64 %1953, 17
  store i64 %1954, i64* %3, align 8
  %1955 = load i32, i32* %1847, align 4
  %1956 = sext i32 %1955 to i64
  %1957 = mul nsw i64 %1956, 380
  store i64 %1957, i64* %RCX.i1156, align 8
  %1958 = lshr i64 %1957, 63
  %1959 = add i64 %1957, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1959, i64* %RAX.i944.pre-phi, align 8
  %1960 = icmp ult i64 %1959, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1961 = icmp ult i64 %1959, %1957
  %1962 = or i1 %1960, %1961
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %14, align 1
  %1964 = trunc i64 %1959 to i32
  %1965 = and i32 %1964, 252
  %1966 = tail call i32 @llvm.ctpop.i32(i32 %1965)
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = xor i8 %1968, 1
  store i8 %1969, i8* %21, align 1
  %1970 = xor i64 %1957, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1971 = xor i64 %1970, %1959
  %1972 = lshr i64 %1971, 4
  %1973 = trunc i64 %1972 to i8
  %1974 = and i8 %1973, 1
  store i8 %1974, i8* %27, align 1
  %1975 = icmp eq i64 %1959, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %30, align 1
  %1977 = lshr i64 %1959, 63
  %1978 = trunc i64 %1977 to i8
  store i8 %1978, i8* %33, align 1
  %1979 = xor i64 %1977, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1980 = xor i64 %1977, %1958
  %1981 = add nuw nsw i64 %1979, %1980
  %1982 = icmp eq i64 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %39, align 1
  %1984 = add i64 %1957, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 52)
  %1985 = add i64 %1953, 31
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  store i8 0, i8* %14, align 1
  %1988 = and i32 %1987, 255
  %1989 = tail call i32 @llvm.ctpop.i32(i32 %1988)
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = xor i8 %1991, 1
  store i8 %1992, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1993 = icmp eq i32 %1987, 0
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %30, align 1
  %1995 = lshr i32 %1987, 31
  %1996 = trunc i32 %1995 to i8
  store i8 %1996, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %1993, i64 52, i64 37
  %1997 = add i64 %1953, %.v178
  store i64 %1997, i64* %3, align 8
  br i1 %1993, label %block_.L_44f07e, label %block_44f06f

block_44f06f:                                     ; preds = %block_.L_44f04a
  %1998 = add i64 %1997, 7
  store i64 %1998, i64* %3, align 8
  %1999 = load i32, i32* %1847, align 4
  %2000 = sext i32 %1999 to i64
  store i64 %2000, i64* %RAX.i944.pre-phi, align 8
  %2001 = add nsw i64 %2000, -432
  %2002 = add i64 %2001, %1844
  %2003 = add i64 %1997, 15
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i8*
  store i8 0, i8* %2004, align 1
  %.pre123 = load i64, i64* %3, align 8
  %.pre124.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44f07e

block_.L_44f07e:                                  ; preds = %block_44f032, %block_44f06f, %block_.L_44f04a
  %.pre124 = phi i64 [ %.pre124.pre, %block_44f06f ], [ %1844, %block_.L_44f04a ], [ %1844, %block_44f032 ]
  %2005 = phi i64 [ %.pre123, %block_44f06f ], [ %1997, %block_.L_44f04a ], [ %1952, %block_44f032 ]
  %2006 = add i64 %2005, 5
  store i64 %2006, i64* %3, align 8
  br label %block_.L_44f083

block_.L_44f083:                                  ; preds = %block_.L_44f07e, %block_44f015
  %2007 = phi i64 [ %1844, %block_44f015 ], [ %.pre124, %block_.L_44f07e ]
  %storemerge = phi i64 [ %1900, %block_44f015 ], [ %2006, %block_.L_44f07e ]
  %2008 = add i64 %2007, -436
  %2009 = add i64 %storemerge, 6
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i32*
  %2011 = load i32, i32* %2010, align 4
  %2012 = add i32 %2011, 1
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RAX.i944.pre-phi, align 8
  %2014 = icmp eq i32 %2011, -1
  %2015 = icmp eq i32 %2012, 0
  %2016 = or i1 %2014, %2015
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %14, align 1
  %2018 = and i32 %2012, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i32 %2012, %2011
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %27, align 1
  %2027 = zext i1 %2015 to i8
  store i8 %2027, i8* %30, align 1
  %2028 = lshr i32 %2012, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %33, align 1
  %2030 = lshr i32 %2011, 31
  %2031 = xor i32 %2028, %2030
  %2032 = add nuw nsw i32 %2031, %2028
  %2033 = icmp eq i32 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %39, align 1
  %2035 = add i64 %storemerge, 15
  store i64 %2035, i64* %3, align 8
  store i32 %2012, i32* %2010, align 4
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, -165
  store i64 %2037, i64* %3, align 8
  br label %block_.L_44efed

block_.L_44f097:                                  ; preds = %block_.L_44efed
  %2038 = add i64 %1873, 10
  store i64 %2038, i64* %3, align 8
  store i32 21, i32* %1847, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_44f0a1

block_.L_44f0a1:                                  ; preds = %block_.L_44f1fa, %block_.L_44f097
  %2039 = phi i64 [ %2566, %block_.L_44f1fa ], [ %.pre113, %block_.L_44f097 ]
  %2040 = load i64, i64* %RBP.i, align 8
  %2041 = add i64 %2040, -436
  %2042 = add i64 %2039, 10
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i32*
  %2044 = load i32, i32* %2043, align 4
  %2045 = add i32 %2044, -400
  %2046 = icmp ult i32 %2044, 400
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %14, align 1
  %2048 = and i32 %2045, 255
  %2049 = tail call i32 @llvm.ctpop.i32(i32 %2048)
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  %2052 = xor i8 %2051, 1
  store i8 %2052, i8* %21, align 1
  %2053 = xor i32 %2044, 16
  %2054 = xor i32 %2053, %2045
  %2055 = lshr i32 %2054, 4
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  store i8 %2057, i8* %27, align 1
  %2058 = icmp eq i32 %2045, 0
  %2059 = zext i1 %2058 to i8
  store i8 %2059, i8* %30, align 1
  %2060 = lshr i32 %2045, 31
  %2061 = trunc i32 %2060 to i8
  store i8 %2061, i8* %33, align 1
  %2062 = lshr i32 %2044, 31
  %2063 = xor i32 %2060, %2062
  %2064 = add nuw nsw i32 %2063, %2062
  %2065 = icmp eq i32 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %39, align 1
  %2067 = icmp ne i8 %2061, 0
  %2068 = xor i1 %2067, %2065
  %.v144 = select i1 %2068, i64 16, i64 365
  %2069 = add i64 %2039, %.v144
  store i64 %2069, i64* %3, align 8
  br i1 %2068, label %block_44f0b1, label %block_.L_44f20e

block_44f0b1:                                     ; preds = %block_.L_44f0a1
  %2070 = add i64 %2069, 7
  store i64 %2070, i64* %3, align 8
  %2071 = load i32, i32* %2043, align 4
  %2072 = sext i32 %2071 to i64
  store i64 %2072, i64* %RAX.i944.pre-phi, align 8
  %2073 = add nsw i64 %2072, 12099168
  %2074 = add i64 %2069, 15
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i8*
  %2076 = load i8, i8* %2075, align 1
  %2077 = zext i8 %2076 to i64
  store i64 %2077, i64* %RCX.i1156, align 8
  %2078 = zext i8 %2076 to i32
  %2079 = add nsw i32 %2078, -1
  %2080 = icmp eq i8 %2076, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = and i32 %2079, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i32 %2079, %2078
  %2088 = lshr i32 %2087, 4
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  store i8 %2090, i8* %27, align 1
  %2091 = icmp eq i32 %2079, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %30, align 1
  %2093 = lshr i32 %2079, 31
  %2094 = trunc i32 %2093 to i8
  store i8 %2094, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v164 = select i1 %2091, i64 72, i64 24
  %2095 = add i64 %2069, %.v164
  store i64 %2095, i64* %3, align 8
  br i1 %2091, label %block_.L_44f0f9, label %block_44f0c9

block_44f0c9:                                     ; preds = %block_44f0b1
  %2096 = add i64 %2095, 7
  store i64 %2096, i64* %3, align 8
  %2097 = load i32, i32* %2043, align 4
  %2098 = sext i32 %2097 to i64
  store i64 %2098, i64* %RAX.i944.pre-phi, align 8
  %2099 = add nsw i64 %2098, 12099168
  %2100 = add i64 %2095, 15
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i8*
  %2102 = load i8, i8* %2101, align 1
  %2103 = zext i8 %2102 to i64
  store i64 %2103, i64* %RCX.i1156, align 8
  %2104 = zext i8 %2102 to i32
  %2105 = add nsw i32 %2104, -2
  %2106 = icmp ult i8 %2102, 2
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %14, align 1
  %2108 = and i32 %2105, 255
  %2109 = tail call i32 @llvm.ctpop.i32(i32 %2108)
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  store i8 %2112, i8* %21, align 1
  %2113 = xor i32 %2105, %2104
  %2114 = lshr i32 %2113, 4
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  store i8 %2116, i8* %27, align 1
  %2117 = icmp eq i32 %2105, 0
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %30, align 1
  %2119 = lshr i32 %2105, 31
  %2120 = trunc i32 %2119 to i8
  store i8 %2120, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v165 = select i1 %2117, i64 48, i64 24
  %2121 = add i64 %2095, %.v165
  store i64 %2121, i64* %3, align 8
  br i1 %2117, label %block_.L_44f0f9, label %block_44f0e1

block_44f0e1:                                     ; preds = %block_44f0c9
  %2122 = add i64 %2121, 7
  store i64 %2122, i64* %3, align 8
  %2123 = load i32, i32* %2043, align 4
  %2124 = sext i32 %2123 to i64
  store i64 %2124, i64* %RAX.i944.pre-phi, align 8
  %2125 = add nsw i64 %2124, -432
  %2126 = add i64 %2125, %2040
  %2127 = add i64 %2121, 15
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i8*
  %2129 = load i8, i8* %2128, align 1
  %2130 = sext i8 %2129 to i64
  %2131 = and i64 %2130, 4294967295
  store i64 %2131, i64* %RCX.i1156, align 8
  %2132 = sext i8 %2129 to i32
  store i8 0, i8* %14, align 1
  %2133 = and i32 %2132, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2138 = icmp eq i8 %2129, 0
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %30, align 1
  %2140 = lshr i32 %2132, 31
  %2141 = trunc i32 %2140 to i8
  store i8 %2141, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v166 = select i1 %2138, i64 29, i64 24
  %2142 = add i64 %2121, %.v166
  store i64 %2142, i64* %3, align 8
  br i1 %2138, label %block_.L_44f0fe, label %block_.L_44f0f9

block_.L_44f0f9:                                  ; preds = %block_44f0e1, %block_44f0c9, %block_44f0b1
  %2143 = phi i64 [ %2142, %block_44f0e1 ], [ %2121, %block_44f0c9 ], [ %2095, %block_44f0b1 ]
  %2144 = add i64 %2143, 257
  br label %block_.L_44f1fa

block_.L_44f0fe:                                  ; preds = %block_44f0e1
  %2145 = add i64 %2142, 6
  store i64 %2145, i64* %3, align 8
  %2146 = load i32, i32* %2043, align 4
  %2147 = add i32 %2146, 20
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RAX.i944.pre-phi, align 8
  %2149 = icmp ugt i32 %2146, -21
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %14, align 1
  %2151 = and i32 %2147, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %21, align 1
  %2156 = xor i32 %2146, 16
  %2157 = xor i32 %2156, %2147
  %2158 = lshr i32 %2157, 4
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %27, align 1
  %2161 = icmp eq i32 %2147, 0
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %30, align 1
  %2163 = lshr i32 %2147, 31
  %2164 = trunc i32 %2163 to i8
  store i8 %2164, i8* %33, align 1
  %2165 = lshr i32 %2146, 31
  %2166 = xor i32 %2163, %2165
  %2167 = add nuw nsw i32 %2166, %2163
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %39, align 1
  %2170 = sext i32 %2147 to i64
  store i64 %2170, i64* %RCX.i1156, align 8
  %2171 = add nsw i64 %2170, 12099168
  %2172 = add i64 %2142, 20
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i8*
  %2174 = load i8, i8* %2173, align 1
  %2175 = zext i8 %2174 to i64
  store i64 %2175, i64* %RAX.i944.pre-phi, align 8
  %2176 = zext i8 %2174 to i32
  store i8 0, i8* %14, align 1
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2181 = icmp eq i8 %2174, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v167 = select i1 %2181, i64 29, i64 58
  %2183 = add i64 %2142, %.v167
  store i64 %2183, i64* %3, align 8
  br i1 %2181, label %block_44f11b, label %block_.L_44f138

block_44f11b:                                     ; preds = %block_.L_44f0fe
  %2184 = add i64 %2183, 6
  store i64 %2184, i64* %3, align 8
  %2185 = load i32, i32* %2043, align 4
  %2186 = add i32 %2185, 20
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i944.pre-phi, align 8
  %2188 = icmp ugt i32 %2185, -21
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %14, align 1
  %2190 = and i32 %2186, 255
  %2191 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  %2195 = xor i32 %2185, 16
  %2196 = xor i32 %2195, %2186
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %27, align 1
  %2200 = icmp eq i32 %2186, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %30, align 1
  %2202 = lshr i32 %2186, 31
  %2203 = trunc i32 %2202 to i8
  store i8 %2203, i8* %33, align 1
  %2204 = lshr i32 %2185, 31
  %2205 = xor i32 %2202, %2204
  %2206 = add nuw nsw i32 %2205, %2202
  %2207 = icmp eq i32 %2206, 2
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %39, align 1
  %2209 = sext i32 %2186 to i64
  store i64 %2209, i64* %RCX.i1156, align 8
  %2210 = add nsw i64 %2209, -432
  %2211 = add i64 %2210, %2040
  %2212 = add i64 %2183, 20
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i8*
  %2214 = load i8, i8* %2213, align 1
  %2215 = sext i8 %2214 to i64
  %2216 = and i64 %2215, 4294967295
  store i64 %2216, i64* %RAX.i944.pre-phi, align 8
  %2217 = sext i8 %2214 to i32
  %2218 = add nsw i32 %2217, -2
  %2219 = icmp ult i8 %2214, 2
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %14, align 1
  %2221 = and i32 %2218, 255
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  %2226 = xor i32 %2218, %2217
  %2227 = lshr i32 %2226, 4
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  store i8 %2229, i8* %27, align 1
  %2230 = icmp eq i32 %2218, 0
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %30, align 1
  %2232 = lshr i32 %2218, 31
  %2233 = trunc i32 %2232 to i8
  store i8 %2233, i8* %33, align 1
  %2234 = lshr i32 %2217, 31
  %2235 = xor i32 %2232, %2234
  %2236 = add nuw nsw i32 %2235, %2234
  %2237 = icmp eq i32 %2236, 2
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %39, align 1
  %.v174 = select i1 %2230, i64 203, i64 29
  %2239 = add i64 %2183, %.v174
  store i64 %2239, i64* %3, align 8
  br i1 %2230, label %block_.L_44f1e6, label %block_.L_44f138

block_.L_44f138:                                  ; preds = %block_.L_44f0fe, %block_44f11b
  %2240 = phi i64 [ %2239, %block_44f11b ], [ %2183, %block_.L_44f0fe ]
  %2241 = add i64 %2240, 6
  store i64 %2241, i64* %3, align 8
  %2242 = load i32, i32* %2043, align 4
  %2243 = add i32 %2242, -1
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RAX.i944.pre-phi, align 8
  %2245 = icmp eq i32 %2242, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %14, align 1
  %2247 = and i32 %2243, 255
  %2248 = tail call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  store i8 %2251, i8* %21, align 1
  %2252 = xor i32 %2243, %2242
  %2253 = lshr i32 %2252, 4
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %27, align 1
  %2256 = icmp eq i32 %2243, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %30, align 1
  %2258 = lshr i32 %2243, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %33, align 1
  %2260 = lshr i32 %2242, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2260
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %39, align 1
  %2265 = sext i32 %2243 to i64
  store i64 %2265, i64* %RCX.i1156, align 8
  %2266 = add nsw i64 %2265, 12099168
  %2267 = add i64 %2240, 20
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i8*
  %2269 = load i8, i8* %2268, align 1
  %2270 = zext i8 %2269 to i64
  store i64 %2270, i64* %RAX.i944.pre-phi, align 8
  %2271 = zext i8 %2269 to i32
  store i8 0, i8* %14, align 1
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2276 = icmp eq i8 %2269, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v168 = select i1 %2276, i64 29, i64 58
  %2278 = add i64 %2240, %.v168
  store i64 %2278, i64* %3, align 8
  br i1 %2276, label %block_44f155, label %block_.L_44f172

block_44f155:                                     ; preds = %block_.L_44f138
  %2279 = add i64 %2278, 6
  store i64 %2279, i64* %3, align 8
  %2280 = load i32, i32* %2043, align 4
  %2281 = add i32 %2280, -1
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RAX.i944.pre-phi, align 8
  %2283 = icmp eq i32 %2280, 0
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %14, align 1
  %2285 = and i32 %2281, 255
  %2286 = tail call i32 @llvm.ctpop.i32(i32 %2285)
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = xor i8 %2288, 1
  store i8 %2289, i8* %21, align 1
  %2290 = xor i32 %2281, %2280
  %2291 = lshr i32 %2290, 4
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  store i8 %2293, i8* %27, align 1
  %2294 = icmp eq i32 %2281, 0
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %30, align 1
  %2296 = lshr i32 %2281, 31
  %2297 = trunc i32 %2296 to i8
  store i8 %2297, i8* %33, align 1
  %2298 = lshr i32 %2280, 31
  %2299 = xor i32 %2296, %2298
  %2300 = add nuw nsw i32 %2299, %2298
  %2301 = icmp eq i32 %2300, 2
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %39, align 1
  %2303 = sext i32 %2281 to i64
  store i64 %2303, i64* %RCX.i1156, align 8
  %2304 = add nsw i64 %2303, -432
  %2305 = add i64 %2304, %2040
  %2306 = add i64 %2278, 20
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i8*
  %2308 = load i8, i8* %2307, align 1
  %2309 = sext i8 %2308 to i64
  %2310 = and i64 %2309, 4294967295
  store i64 %2310, i64* %RAX.i944.pre-phi, align 8
  %2311 = sext i8 %2308 to i32
  %2312 = add nsw i32 %2311, -2
  %2313 = icmp ult i8 %2308, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %14, align 1
  %2315 = and i32 %2312, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %21, align 1
  %2320 = xor i32 %2312, %2311
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %27, align 1
  %2324 = icmp eq i32 %2312, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %30, align 1
  %2326 = lshr i32 %2312, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %33, align 1
  %2328 = lshr i32 %2311, 31
  %2329 = xor i32 %2326, %2328
  %2330 = add nuw nsw i32 %2329, %2328
  %2331 = icmp eq i32 %2330, 2
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %39, align 1
  %.v173 = select i1 %2324, i64 145, i64 29
  %2333 = add i64 %2278, %.v173
  store i64 %2333, i64* %3, align 8
  br i1 %2324, label %block_.L_44f1e6, label %block_.L_44f172

block_.L_44f172:                                  ; preds = %block_.L_44f138, %block_44f155
  %2334 = phi i64 [ %2333, %block_44f155 ], [ %2278, %block_.L_44f138 ]
  %2335 = add i64 %2334, 6
  store i64 %2335, i64* %3, align 8
  %2336 = load i32, i32* %2043, align 4
  %2337 = add i32 %2336, -20
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RAX.i944.pre-phi, align 8
  %2339 = icmp ult i32 %2336, 20
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %14, align 1
  %2341 = and i32 %2337, 255
  %2342 = tail call i32 @llvm.ctpop.i32(i32 %2341)
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  %2345 = xor i8 %2344, 1
  store i8 %2345, i8* %21, align 1
  %2346 = xor i32 %2336, 16
  %2347 = xor i32 %2346, %2337
  %2348 = lshr i32 %2347, 4
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  store i8 %2350, i8* %27, align 1
  %2351 = icmp eq i32 %2337, 0
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %30, align 1
  %2353 = lshr i32 %2337, 31
  %2354 = trunc i32 %2353 to i8
  store i8 %2354, i8* %33, align 1
  %2355 = lshr i32 %2336, 31
  %2356 = xor i32 %2353, %2355
  %2357 = add nuw nsw i32 %2356, %2355
  %2358 = icmp eq i32 %2357, 2
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %39, align 1
  %2360 = sext i32 %2337 to i64
  store i64 %2360, i64* %RCX.i1156, align 8
  %2361 = add nsw i64 %2360, 12099168
  %2362 = add i64 %2334, 20
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i8*
  %2364 = load i8, i8* %2363, align 1
  %2365 = zext i8 %2364 to i64
  store i64 %2365, i64* %RAX.i944.pre-phi, align 8
  %2366 = zext i8 %2364 to i32
  store i8 0, i8* %14, align 1
  %2367 = tail call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  store i8 %2370, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2371 = icmp eq i8 %2364, 0
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v169 = select i1 %2371, i64 29, i64 58
  %2373 = add i64 %2334, %.v169
  store i64 %2373, i64* %3, align 8
  br i1 %2371, label %block_44f18f, label %block_.L_44f1ac

block_44f18f:                                     ; preds = %block_.L_44f172
  %2374 = add i64 %2373, 6
  store i64 %2374, i64* %3, align 8
  %2375 = load i32, i32* %2043, align 4
  %2376 = add i32 %2375, -20
  %2377 = zext i32 %2376 to i64
  store i64 %2377, i64* %RAX.i944.pre-phi, align 8
  %2378 = icmp ult i32 %2375, 20
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %14, align 1
  %2380 = and i32 %2376, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380)
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %21, align 1
  %2385 = xor i32 %2375, 16
  %2386 = xor i32 %2385, %2376
  %2387 = lshr i32 %2386, 4
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  store i8 %2389, i8* %27, align 1
  %2390 = icmp eq i32 %2376, 0
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %30, align 1
  %2392 = lshr i32 %2376, 31
  %2393 = trunc i32 %2392 to i8
  store i8 %2393, i8* %33, align 1
  %2394 = lshr i32 %2375, 31
  %2395 = xor i32 %2392, %2394
  %2396 = add nuw nsw i32 %2395, %2394
  %2397 = icmp eq i32 %2396, 2
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %39, align 1
  %2399 = sext i32 %2376 to i64
  store i64 %2399, i64* %RCX.i1156, align 8
  %2400 = add nsw i64 %2399, -432
  %2401 = add i64 %2400, %2040
  %2402 = add i64 %2373, 20
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i8*
  %2404 = load i8, i8* %2403, align 1
  %2405 = sext i8 %2404 to i64
  %2406 = and i64 %2405, 4294967295
  store i64 %2406, i64* %RAX.i944.pre-phi, align 8
  %2407 = sext i8 %2404 to i32
  %2408 = add nsw i32 %2407, -2
  %2409 = icmp ult i8 %2404, 2
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %14, align 1
  %2411 = and i32 %2408, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %21, align 1
  %2416 = xor i32 %2408, %2407
  %2417 = lshr i32 %2416, 4
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  store i8 %2419, i8* %27, align 1
  %2420 = icmp eq i32 %2408, 0
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %30, align 1
  %2422 = lshr i32 %2408, 31
  %2423 = trunc i32 %2422 to i8
  store i8 %2423, i8* %33, align 1
  %2424 = lshr i32 %2407, 31
  %2425 = xor i32 %2422, %2424
  %2426 = add nuw nsw i32 %2425, %2424
  %2427 = icmp eq i32 %2426, 2
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %39, align 1
  %.v172 = select i1 %2420, i64 87, i64 29
  %2429 = add i64 %2373, %.v172
  store i64 %2429, i64* %3, align 8
  br i1 %2420, label %block_.L_44f1e6, label %block_.L_44f1ac

block_.L_44f1ac:                                  ; preds = %block_.L_44f172, %block_44f18f
  %2430 = phi i64 [ %2429, %block_44f18f ], [ %2373, %block_.L_44f172 ]
  %2431 = add i64 %2430, 6
  store i64 %2431, i64* %3, align 8
  %2432 = load i32, i32* %2043, align 4
  %2433 = add i32 %2432, 1
  %2434 = zext i32 %2433 to i64
  store i64 %2434, i64* %RAX.i944.pre-phi, align 8
  %2435 = icmp eq i32 %2432, -1
  %2436 = icmp eq i32 %2433, 0
  %2437 = or i1 %2435, %2436
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %14, align 1
  %2439 = and i32 %2433, 255
  %2440 = tail call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  store i8 %2443, i8* %21, align 1
  %2444 = xor i32 %2433, %2432
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  store i8 %2447, i8* %27, align 1
  %2448 = zext i1 %2436 to i8
  store i8 %2448, i8* %30, align 1
  %2449 = lshr i32 %2433, 31
  %2450 = trunc i32 %2449 to i8
  store i8 %2450, i8* %33, align 1
  %2451 = lshr i32 %2432, 31
  %2452 = xor i32 %2449, %2451
  %2453 = add nuw nsw i32 %2452, %2449
  %2454 = icmp eq i32 %2453, 2
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %39, align 1
  %2456 = sext i32 %2433 to i64
  store i64 %2456, i64* %RCX.i1156, align 8
  %2457 = add nsw i64 %2456, 12099168
  %2458 = add i64 %2430, 20
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i8*
  %2460 = load i8, i8* %2459, align 1
  %2461 = zext i8 %2460 to i64
  store i64 %2461, i64* %RAX.i944.pre-phi, align 8
  %2462 = zext i8 %2460 to i32
  store i8 0, i8* %14, align 1
  %2463 = tail call i32 @llvm.ctpop.i32(i32 %2462)
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = xor i8 %2465, 1
  store i8 %2466, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2467 = icmp eq i8 %2460, 0
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v170 = select i1 %2467, i64 29, i64 73
  %2469 = add i64 %2430, %.v170
  store i64 %2469, i64* %3, align 8
  br i1 %2467, label %block_44f1c9, label %block_.L_44f1f5

block_44f1c9:                                     ; preds = %block_.L_44f1ac
  %2470 = add i64 %2469, 6
  store i64 %2470, i64* %3, align 8
  %2471 = load i32, i32* %2043, align 4
  %2472 = add i32 %2471, 1
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RAX.i944.pre-phi, align 8
  %2474 = icmp eq i32 %2471, -1
  %2475 = icmp eq i32 %2472, 0
  %2476 = or i1 %2474, %2475
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %14, align 1
  %2478 = and i32 %2472, 255
  %2479 = tail call i32 @llvm.ctpop.i32(i32 %2478)
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  store i8 %2482, i8* %21, align 1
  %2483 = xor i32 %2472, %2471
  %2484 = lshr i32 %2483, 4
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  store i8 %2486, i8* %27, align 1
  %2487 = zext i1 %2475 to i8
  store i8 %2487, i8* %30, align 1
  %2488 = lshr i32 %2472, 31
  %2489 = trunc i32 %2488 to i8
  store i8 %2489, i8* %33, align 1
  %2490 = lshr i32 %2471, 31
  %2491 = xor i32 %2488, %2490
  %2492 = add nuw nsw i32 %2491, %2488
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %39, align 1
  %2495 = sext i32 %2472 to i64
  store i64 %2495, i64* %RCX.i1156, align 8
  %2496 = add nsw i64 %2495, -432
  %2497 = add i64 %2496, %2040
  %2498 = add i64 %2469, 20
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i8*
  %2500 = load i8, i8* %2499, align 1
  %2501 = sext i8 %2500 to i64
  %2502 = and i64 %2501, 4294967295
  store i64 %2502, i64* %RAX.i944.pre-phi, align 8
  %2503 = sext i8 %2500 to i32
  %2504 = add nsw i32 %2503, -2
  %2505 = icmp ult i8 %2500, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %14, align 1
  %2507 = and i32 %2504, 255
  %2508 = tail call i32 @llvm.ctpop.i32(i32 %2507)
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  store i8 %2511, i8* %21, align 1
  %2512 = xor i32 %2504, %2503
  %2513 = lshr i32 %2512, 4
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  store i8 %2515, i8* %27, align 1
  %2516 = icmp eq i32 %2504, 0
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %30, align 1
  %2518 = lshr i32 %2504, 31
  %2519 = trunc i32 %2518 to i8
  store i8 %2519, i8* %33, align 1
  %2520 = lshr i32 %2503, 31
  %2521 = xor i32 %2518, %2520
  %2522 = add nuw nsw i32 %2521, %2520
  %2523 = icmp eq i32 %2522, 2
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %39, align 1
  %.v171 = select i1 %2516, i64 29, i64 44
  %2525 = add i64 %2469, %.v171
  store i64 %2525, i64* %3, align 8
  br i1 %2516, label %block_.L_44f1e6, label %block_.L_44f1f5

block_.L_44f1e6:                                  ; preds = %block_44f1c9, %block_44f18f, %block_44f155, %block_44f11b
  %2526 = phi i64 [ %2525, %block_44f1c9 ], [ %2429, %block_44f18f ], [ %2333, %block_44f155 ], [ %2239, %block_44f11b ]
  %2527 = add i64 %2526, 7
  store i64 %2527, i64* %3, align 8
  %2528 = load i32, i32* %2043, align 4
  %2529 = sext i32 %2528 to i64
  store i64 %2529, i64* %RAX.i944.pre-phi, align 8
  %2530 = add nsw i64 %2529, -432
  %2531 = add i64 %2530, %2040
  %2532 = add i64 %2526, 15
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i8*
  store i8 3, i8* %2533, align 1
  %.pre121 = load i64, i64* %3, align 8
  %.pre122.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44f1f5

block_.L_44f1f5:                                  ; preds = %block_44f1c9, %block_.L_44f1ac, %block_.L_44f1e6
  %.pre122 = phi i64 [ %.pre122.pre, %block_.L_44f1e6 ], [ %2040, %block_44f1c9 ], [ %2040, %block_.L_44f1ac ]
  %2534 = phi i64 [ %.pre121, %block_.L_44f1e6 ], [ %2525, %block_44f1c9 ], [ %2469, %block_.L_44f1ac ]
  %2535 = add i64 %2534, 5
  store i64 %2535, i64* %3, align 8
  br label %block_.L_44f1fa

block_.L_44f1fa:                                  ; preds = %block_.L_44f1f5, %block_.L_44f0f9
  %2536 = phi i64 [ %2040, %block_.L_44f0f9 ], [ %.pre122, %block_.L_44f1f5 ]
  %storemerge64 = phi i64 [ %2144, %block_.L_44f0f9 ], [ %2535, %block_.L_44f1f5 ]
  %2537 = add i64 %2536, -436
  %2538 = add i64 %storemerge64, 6
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = add i32 %2540, 1
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RAX.i944.pre-phi, align 8
  %2543 = icmp eq i32 %2540, -1
  %2544 = icmp eq i32 %2541, 0
  %2545 = or i1 %2543, %2544
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %14, align 1
  %2547 = and i32 %2541, 255
  %2548 = tail call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  store i8 %2551, i8* %21, align 1
  %2552 = xor i32 %2541, %2540
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %27, align 1
  %2556 = zext i1 %2544 to i8
  store i8 %2556, i8* %30, align 1
  %2557 = lshr i32 %2541, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %33, align 1
  %2559 = lshr i32 %2540, 31
  %2560 = xor i32 %2557, %2559
  %2561 = add nuw nsw i32 %2560, %2557
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  %2564 = add i64 %storemerge64, 15
  store i64 %2564, i64* %3, align 8
  store i32 %2541, i32* %2539, align 4
  %2565 = load i64, i64* %3, align 8
  %2566 = add i64 %2565, -360
  store i64 %2566, i64* %3, align 8
  br label %block_.L_44f0a1

block_.L_44f20e:                                  ; preds = %block_.L_44f0a1
  %2567 = add i64 %2069, 10
  store i64 %2567, i64* %3, align 8
  store i32 21, i32* %2043, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_44f218

block_.L_44f218:                                  ; preds = %block_.L_44f3d2, %block_.L_44f20e
  %2568 = phi i64 [ %3298, %block_.L_44f3d2 ], [ %.pre114, %block_.L_44f20e ]
  %2569 = load i64, i64* %RBP.i, align 8
  %2570 = add i64 %2569, -436
  %2571 = add i64 %2568, 10
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = add i32 %2573, -400
  %2575 = icmp ult i32 %2573, 400
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %14, align 1
  %2577 = and i32 %2574, 255
  %2578 = tail call i32 @llvm.ctpop.i32(i32 %2577)
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  %2581 = xor i8 %2580, 1
  store i8 %2581, i8* %21, align 1
  %2582 = xor i32 %2573, 16
  %2583 = xor i32 %2582, %2574
  %2584 = lshr i32 %2583, 4
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  store i8 %2586, i8* %27, align 1
  %2587 = icmp eq i32 %2574, 0
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %30, align 1
  %2589 = lshr i32 %2574, 31
  %2590 = trunc i32 %2589 to i8
  store i8 %2590, i8* %33, align 1
  %2591 = lshr i32 %2573, 31
  %2592 = xor i32 %2589, %2591
  %2593 = add nuw nsw i32 %2592, %2591
  %2594 = icmp eq i32 %2593, 2
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %39, align 1
  %2596 = icmp ne i8 %2590, 0
  %2597 = xor i1 %2596, %2594
  %.v145 = select i1 %2597, i64 16, i64 462
  %2598 = add i64 %2568, %.v145
  store i64 %2598, i64* %3, align 8
  br i1 %2597, label %block_44f228, label %block_.L_44f3e6

block_44f228:                                     ; preds = %block_.L_44f218
  %2599 = add i64 %2598, 7
  store i64 %2599, i64* %3, align 8
  %2600 = load i32, i32* %2572, align 4
  %2601 = sext i32 %2600 to i64
  store i64 %2601, i64* %RAX.i944.pre-phi, align 8
  %2602 = add nsw i64 %2601, 12099168
  %2603 = add i64 %2598, 15
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i8*
  %2605 = load i8, i8* %2604, align 1
  %2606 = zext i8 %2605 to i64
  store i64 %2606, i64* %RCX.i1156, align 8
  %2607 = zext i8 %2605 to i32
  %2608 = add nsw i32 %2607, -3
  %2609 = icmp ult i8 %2605, 3
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %14, align 1
  %2611 = and i32 %2608, 255
  %2612 = tail call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  store i8 %2615, i8* %21, align 1
  %2616 = xor i32 %2608, %2607
  %2617 = lshr i32 %2616, 4
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  store i8 %2619, i8* %27, align 1
  %2620 = icmp eq i32 %2608, 0
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %30, align 1
  %2622 = lshr i32 %2608, 31
  %2623 = trunc i32 %2622 to i8
  store i8 %2623, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v150 = select i1 %2620, i64 24, i64 29
  %2624 = add i64 %2598, %.v150
  store i64 %2624, i64* %3, align 8
  br i1 %2620, label %block_.L_44f3d2, label %block_.L_44f245

block_.L_44f245:                                  ; preds = %block_44f228
  %2625 = add i64 %2624, 7
  store i64 %2625, i64* %3, align 8
  %2626 = load i32, i32* %2572, align 4
  %2627 = sext i32 %2626 to i64
  store i64 %2627, i64* %RAX.i944.pre-phi, align 8
  %2628 = add nsw i64 %2627, -432
  %2629 = add i64 %2628, %2569
  %2630 = add i64 %2624, 15
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i8*
  %2632 = load i8, i8* %2631, align 1
  %2633 = sext i8 %2632 to i64
  %2634 = and i64 %2633, 4294967295
  store i64 %2634, i64* %RCX.i1156, align 8
  %2635 = sext i8 %2632 to i32
  store i8 0, i8* %14, align 1
  %2636 = and i32 %2635, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2641 = icmp eq i8 %2632, 0
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %30, align 1
  %2643 = lshr i32 %2635, 31
  %2644 = trunc i32 %2643 to i8
  store i8 %2644, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v151 = select i1 %2641, i64 29, i64 24
  %2645 = add i64 %2624, %.v151
  store i64 %2645, i64* %3, align 8
  br i1 %2641, label %block_.L_44f262, label %block_.L_44f3d2

block_.L_44f262:                                  ; preds = %block_.L_44f245
  %2646 = add i64 %2645, 6
  store i64 %2646, i64* %3, align 8
  %2647 = load i32, i32* %2572, align 4
  %2648 = add i32 %2647, 20
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RAX.i944.pre-phi, align 8
  %2650 = icmp ugt i32 %2647, -21
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %14, align 1
  %2652 = and i32 %2648, 255
  %2653 = tail call i32 @llvm.ctpop.i32(i32 %2652)
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  %2656 = xor i8 %2655, 1
  store i8 %2656, i8* %21, align 1
  %2657 = xor i32 %2647, 16
  %2658 = xor i32 %2657, %2648
  %2659 = lshr i32 %2658, 4
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  store i8 %2661, i8* %27, align 1
  %2662 = icmp eq i32 %2648, 0
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %30, align 1
  %2664 = lshr i32 %2648, 31
  %2665 = trunc i32 %2664 to i8
  store i8 %2665, i8* %33, align 1
  %2666 = lshr i32 %2647, 31
  %2667 = xor i32 %2664, %2666
  %2668 = add nuw nsw i32 %2667, %2664
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %39, align 1
  %2671 = sext i32 %2648 to i64
  store i64 %2671, i64* %RCX.i1156, align 8
  %2672 = add nsw i64 %2671, 12099168
  %2673 = add i64 %2645, 20
  store i64 %2673, i64* %3, align 8
  %2674 = inttoptr i64 %2672 to i8*
  %2675 = load i8, i8* %2674, align 1
  %2676 = zext i8 %2675 to i64
  store i64 %2676, i64* %RAX.i944.pre-phi, align 8
  %2677 = zext i8 %2675 to i32
  %2678 = add nsw i32 %2677, -3
  %2679 = icmp ult i8 %2675, 3
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %14, align 1
  %2681 = and i32 %2678, 255
  %2682 = tail call i32 @llvm.ctpop.i32(i32 %2681)
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = xor i8 %2684, 1
  store i8 %2685, i8* %21, align 1
  %2686 = xor i32 %2678, %2677
  %2687 = lshr i32 %2686, 4
  %2688 = trunc i32 %2687 to i8
  %2689 = and i8 %2688, 1
  store i8 %2689, i8* %27, align 1
  %2690 = icmp eq i32 %2678, 0
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %30, align 1
  %2692 = lshr i32 %2678, 31
  %2693 = trunc i32 %2692 to i8
  store i8 %2693, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v152 = select i1 %2690, i64 87, i64 29
  %2694 = add i64 %2645, %.v152
  store i64 %2694, i64* %3, align 8
  br i1 %2690, label %block_.L_44f2b9, label %block_44f27f

block_44f27f:                                     ; preds = %block_.L_44f262
  %2695 = add i64 %2694, 6
  store i64 %2695, i64* %3, align 8
  %2696 = load i32, i32* %2572, align 4
  %2697 = add i32 %2696, 20
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RAX.i944.pre-phi, align 8
  %2699 = icmp ugt i32 %2696, -21
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %14, align 1
  %2701 = and i32 %2697, 255
  %2702 = tail call i32 @llvm.ctpop.i32(i32 %2701)
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = xor i8 %2704, 1
  store i8 %2705, i8* %21, align 1
  %2706 = xor i32 %2696, 16
  %2707 = xor i32 %2706, %2697
  %2708 = lshr i32 %2707, 4
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  store i8 %2710, i8* %27, align 1
  %2711 = icmp eq i32 %2697, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %30, align 1
  %2713 = lshr i32 %2697, 31
  %2714 = trunc i32 %2713 to i8
  store i8 %2714, i8* %33, align 1
  %2715 = lshr i32 %2696, 31
  %2716 = xor i32 %2713, %2715
  %2717 = add nuw nsw i32 %2716, %2713
  %2718 = icmp eq i32 %2717, 2
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %39, align 1
  %2720 = sext i32 %2697 to i64
  store i64 %2720, i64* %RCX.i1156, align 8
  %2721 = add nsw i64 %2720, -432
  %2722 = add i64 %2721, %2569
  %2723 = add i64 %2694, 20
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i8*
  %2725 = load i8, i8* %2724, align 1
  %2726 = sext i8 %2725 to i64
  %2727 = and i64 %2726, 4294967295
  store i64 %2727, i64* %RAX.i944.pre-phi, align 8
  %2728 = sext i8 %2725 to i32
  store i8 0, i8* %14, align 1
  %2729 = and i32 %2728, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2734 = icmp eq i8 %2725, 0
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %30, align 1
  %2736 = lshr i32 %2728, 31
  %2737 = trunc i32 %2736 to i8
  store i8 %2737, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2738 = icmp ne i8 %2737, 0
  %2739 = or i1 %2734, %2738
  %.v153 = select i1 %2739, i64 58, i64 29
  %2740 = add i64 %2694, %.v153
  store i64 %2740, i64* %3, align 8
  br i1 %2739, label %block_.L_44f2b9, label %block_44f29c

block_44f29c:                                     ; preds = %block_44f27f
  %2741 = add i64 %2740, 6
  store i64 %2741, i64* %3, align 8
  %2742 = load i32, i32* %2572, align 4
  %2743 = add i32 %2742, 20
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RAX.i944.pre-phi, align 8
  %2745 = icmp ugt i32 %2742, -21
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %14, align 1
  %2747 = and i32 %2743, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %21, align 1
  %2752 = xor i32 %2742, 16
  %2753 = xor i32 %2752, %2743
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %27, align 1
  %2757 = icmp eq i32 %2743, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %30, align 1
  %2759 = lshr i32 %2743, 31
  %2760 = trunc i32 %2759 to i8
  store i8 %2760, i8* %33, align 1
  %2761 = lshr i32 %2742, 31
  %2762 = xor i32 %2759, %2761
  %2763 = add nuw nsw i32 %2762, %2759
  %2764 = icmp eq i32 %2763, 2
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %39, align 1
  %2766 = sext i32 %2743 to i64
  store i64 %2766, i64* %RCX.i1156, align 8
  %2767 = add nsw i64 %2766, -432
  %2768 = add i64 %2767, %2569
  %2769 = add i64 %2740, 20
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i8*
  %2771 = load i8, i8* %2770, align 1
  %2772 = sext i8 %2771 to i64
  %2773 = and i64 %2772, 4294967295
  store i64 %2773, i64* %RAX.i944.pre-phi, align 8
  %2774 = sext i8 %2771 to i32
  %2775 = add nsw i32 %2774, -4
  %2776 = icmp ult i8 %2771, 4
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %14, align 1
  %2778 = and i32 %2775, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %21, align 1
  %2783 = xor i32 %2775, %2774
  %2784 = lshr i32 %2783, 4
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %27, align 1
  %2787 = icmp eq i32 %2775, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %30, align 1
  %2789 = lshr i32 %2775, 31
  %2790 = trunc i32 %2789 to i8
  store i8 %2790, i8* %33, align 1
  %2791 = lshr i32 %2774, 31
  %2792 = xor i32 %2789, %2791
  %2793 = add nuw nsw i32 %2792, %2791
  %2794 = icmp eq i32 %2793, 2
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %39, align 1
  %2796 = icmp ne i8 %2790, 0
  %2797 = xor i1 %2796, %2794
  %.v154 = select i1 %2797, i64 290, i64 29
  %2798 = add i64 %2740, %.v154
  store i64 %2798, i64* %3, align 8
  br i1 %2797, label %block_.L_44f3be, label %block_.L_44f2b9

block_.L_44f2b9:                                  ; preds = %block_44f29c, %block_44f27f, %block_.L_44f262
  %2799 = phi i64 [ %2798, %block_44f29c ], [ %2740, %block_44f27f ], [ %2694, %block_.L_44f262 ]
  %2800 = add i64 %2799, 6
  store i64 %2800, i64* %3, align 8
  %2801 = load i32, i32* %2572, align 4
  %2802 = add i32 %2801, -1
  %2803 = zext i32 %2802 to i64
  store i64 %2803, i64* %RAX.i944.pre-phi, align 8
  %2804 = icmp eq i32 %2801, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %14, align 1
  %2806 = and i32 %2802, 255
  %2807 = tail call i32 @llvm.ctpop.i32(i32 %2806)
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  %2810 = xor i8 %2809, 1
  store i8 %2810, i8* %21, align 1
  %2811 = xor i32 %2802, %2801
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  store i8 %2814, i8* %27, align 1
  %2815 = icmp eq i32 %2802, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %30, align 1
  %2817 = lshr i32 %2802, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %33, align 1
  %2819 = lshr i32 %2801, 31
  %2820 = xor i32 %2817, %2819
  %2821 = add nuw nsw i32 %2820, %2819
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %39, align 1
  %2824 = sext i32 %2802 to i64
  store i64 %2824, i64* %RCX.i1156, align 8
  %2825 = add nsw i64 %2824, 12099168
  %2826 = add i64 %2799, 20
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i8*
  %2828 = load i8, i8* %2827, align 1
  %2829 = zext i8 %2828 to i64
  store i64 %2829, i64* %RAX.i944.pre-phi, align 8
  %2830 = zext i8 %2828 to i32
  %2831 = add nsw i32 %2830, -3
  %2832 = icmp ult i8 %2828, 3
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %14, align 1
  %2834 = and i32 %2831, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %21, align 1
  %2839 = xor i32 %2831, %2830
  %2840 = lshr i32 %2839, 4
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  store i8 %2842, i8* %27, align 1
  %2843 = icmp eq i32 %2831, 0
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %30, align 1
  %2845 = lshr i32 %2831, 31
  %2846 = trunc i32 %2845 to i8
  store i8 %2846, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v155 = select i1 %2843, i64 87, i64 29
  %2847 = add i64 %2799, %.v155
  store i64 %2847, i64* %3, align 8
  br i1 %2843, label %block_.L_44f310, label %block_44f2d6

block_44f2d6:                                     ; preds = %block_.L_44f2b9
  %2848 = add i64 %2847, 6
  store i64 %2848, i64* %3, align 8
  %2849 = load i32, i32* %2572, align 4
  %2850 = add i32 %2849, -1
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RAX.i944.pre-phi, align 8
  %2852 = icmp eq i32 %2849, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %14, align 1
  %2854 = and i32 %2850, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %21, align 1
  %2859 = xor i32 %2850, %2849
  %2860 = lshr i32 %2859, 4
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  store i8 %2862, i8* %27, align 1
  %2863 = icmp eq i32 %2850, 0
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %30, align 1
  %2865 = lshr i32 %2850, 31
  %2866 = trunc i32 %2865 to i8
  store i8 %2866, i8* %33, align 1
  %2867 = lshr i32 %2849, 31
  %2868 = xor i32 %2865, %2867
  %2869 = add nuw nsw i32 %2868, %2867
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %39, align 1
  %2872 = sext i32 %2850 to i64
  store i64 %2872, i64* %RCX.i1156, align 8
  %2873 = add nsw i64 %2872, -432
  %2874 = add i64 %2873, %2569
  %2875 = add i64 %2847, 20
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i8*
  %2877 = load i8, i8* %2876, align 1
  %2878 = sext i8 %2877 to i64
  %2879 = and i64 %2878, 4294967295
  store i64 %2879, i64* %RAX.i944.pre-phi, align 8
  %2880 = sext i8 %2877 to i32
  store i8 0, i8* %14, align 1
  %2881 = and i32 %2880, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2886 = icmp eq i8 %2877, 0
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %30, align 1
  %2888 = lshr i32 %2880, 31
  %2889 = trunc i32 %2888 to i8
  store i8 %2889, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2890 = icmp ne i8 %2889, 0
  %2891 = or i1 %2886, %2890
  %.v156 = select i1 %2891, i64 58, i64 29
  %2892 = add i64 %2847, %.v156
  store i64 %2892, i64* %3, align 8
  br i1 %2891, label %block_.L_44f310, label %block_44f2f3

block_44f2f3:                                     ; preds = %block_44f2d6
  %2893 = add i64 %2892, 6
  store i64 %2893, i64* %3, align 8
  %2894 = load i32, i32* %2572, align 4
  %2895 = add i32 %2894, -1
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RAX.i944.pre-phi, align 8
  %2897 = icmp eq i32 %2894, 0
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %14, align 1
  %2899 = and i32 %2895, 255
  %2900 = tail call i32 @llvm.ctpop.i32(i32 %2899)
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = xor i8 %2902, 1
  store i8 %2903, i8* %21, align 1
  %2904 = xor i32 %2895, %2894
  %2905 = lshr i32 %2904, 4
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  store i8 %2907, i8* %27, align 1
  %2908 = icmp eq i32 %2895, 0
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %30, align 1
  %2910 = lshr i32 %2895, 31
  %2911 = trunc i32 %2910 to i8
  store i8 %2911, i8* %33, align 1
  %2912 = lshr i32 %2894, 31
  %2913 = xor i32 %2910, %2912
  %2914 = add nuw nsw i32 %2913, %2912
  %2915 = icmp eq i32 %2914, 2
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %39, align 1
  %2917 = sext i32 %2895 to i64
  store i64 %2917, i64* %RCX.i1156, align 8
  %2918 = add nsw i64 %2917, -432
  %2919 = add i64 %2918, %2569
  %2920 = add i64 %2892, 20
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i8*
  %2922 = load i8, i8* %2921, align 1
  %2923 = sext i8 %2922 to i64
  %2924 = and i64 %2923, 4294967295
  store i64 %2924, i64* %RAX.i944.pre-phi, align 8
  %2925 = sext i8 %2922 to i32
  %2926 = add nsw i32 %2925, -4
  %2927 = icmp ult i8 %2922, 4
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %14, align 1
  %2929 = and i32 %2926, 255
  %2930 = tail call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  store i8 %2933, i8* %21, align 1
  %2934 = xor i32 %2926, %2925
  %2935 = lshr i32 %2934, 4
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  store i8 %2937, i8* %27, align 1
  %2938 = icmp eq i32 %2926, 0
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %30, align 1
  %2940 = lshr i32 %2926, 31
  %2941 = trunc i32 %2940 to i8
  store i8 %2941, i8* %33, align 1
  %2942 = lshr i32 %2925, 31
  %2943 = xor i32 %2940, %2942
  %2944 = add nuw nsw i32 %2943, %2942
  %2945 = icmp eq i32 %2944, 2
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %39, align 1
  %2947 = icmp ne i8 %2941, 0
  %2948 = xor i1 %2947, %2945
  %.v157 = select i1 %2948, i64 203, i64 29
  %2949 = add i64 %2892, %.v157
  store i64 %2949, i64* %3, align 8
  br i1 %2948, label %block_.L_44f3be, label %block_.L_44f310

block_.L_44f310:                                  ; preds = %block_44f2f3, %block_44f2d6, %block_.L_44f2b9
  %2950 = phi i64 [ %2949, %block_44f2f3 ], [ %2892, %block_44f2d6 ], [ %2847, %block_.L_44f2b9 ]
  %2951 = add i64 %2950, 6
  store i64 %2951, i64* %3, align 8
  %2952 = load i32, i32* %2572, align 4
  %2953 = add i32 %2952, -20
  %2954 = zext i32 %2953 to i64
  store i64 %2954, i64* %RAX.i944.pre-phi, align 8
  %2955 = icmp ult i32 %2952, 20
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %14, align 1
  %2957 = and i32 %2953, 255
  %2958 = tail call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  store i8 %2961, i8* %21, align 1
  %2962 = xor i32 %2952, 16
  %2963 = xor i32 %2962, %2953
  %2964 = lshr i32 %2963, 4
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  store i8 %2966, i8* %27, align 1
  %2967 = icmp eq i32 %2953, 0
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %30, align 1
  %2969 = lshr i32 %2953, 31
  %2970 = trunc i32 %2969 to i8
  store i8 %2970, i8* %33, align 1
  %2971 = lshr i32 %2952, 31
  %2972 = xor i32 %2969, %2971
  %2973 = add nuw nsw i32 %2972, %2971
  %2974 = icmp eq i32 %2973, 2
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %39, align 1
  %2976 = sext i32 %2953 to i64
  store i64 %2976, i64* %RCX.i1156, align 8
  %2977 = add nsw i64 %2976, 12099168
  %2978 = add i64 %2950, 20
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i8*
  %2980 = load i8, i8* %2979, align 1
  %2981 = zext i8 %2980 to i64
  store i64 %2981, i64* %RAX.i944.pre-phi, align 8
  %2982 = zext i8 %2980 to i32
  %2983 = add nsw i32 %2982, -3
  %2984 = icmp ult i8 %2980, 3
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %14, align 1
  %2986 = and i32 %2983, 255
  %2987 = tail call i32 @llvm.ctpop.i32(i32 %2986)
  %2988 = trunc i32 %2987 to i8
  %2989 = and i8 %2988, 1
  %2990 = xor i8 %2989, 1
  store i8 %2990, i8* %21, align 1
  %2991 = xor i32 %2983, %2982
  %2992 = lshr i32 %2991, 4
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  store i8 %2994, i8* %27, align 1
  %2995 = icmp eq i32 %2983, 0
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %30, align 1
  %2997 = lshr i32 %2983, 31
  %2998 = trunc i32 %2997 to i8
  store i8 %2998, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v158 = select i1 %2995, i64 87, i64 29
  %2999 = add i64 %2950, %.v158
  store i64 %2999, i64* %3, align 8
  br i1 %2995, label %block_.L_44f367, label %block_44f32d

block_44f32d:                                     ; preds = %block_.L_44f310
  %3000 = add i64 %2999, 6
  store i64 %3000, i64* %3, align 8
  %3001 = load i32, i32* %2572, align 4
  %3002 = add i32 %3001, -20
  %3003 = zext i32 %3002 to i64
  store i64 %3003, i64* %RAX.i944.pre-phi, align 8
  %3004 = icmp ult i32 %3001, 20
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %14, align 1
  %3006 = and i32 %3002, 255
  %3007 = tail call i32 @llvm.ctpop.i32(i32 %3006)
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  store i8 %3010, i8* %21, align 1
  %3011 = xor i32 %3001, 16
  %3012 = xor i32 %3011, %3002
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  store i8 %3015, i8* %27, align 1
  %3016 = icmp eq i32 %3002, 0
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %30, align 1
  %3018 = lshr i32 %3002, 31
  %3019 = trunc i32 %3018 to i8
  store i8 %3019, i8* %33, align 1
  %3020 = lshr i32 %3001, 31
  %3021 = xor i32 %3018, %3020
  %3022 = add nuw nsw i32 %3021, %3020
  %3023 = icmp eq i32 %3022, 2
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %39, align 1
  %3025 = sext i32 %3002 to i64
  store i64 %3025, i64* %RCX.i1156, align 8
  %3026 = add nsw i64 %3025, -432
  %3027 = add i64 %3026, %2569
  %3028 = add i64 %2999, 20
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i8*
  %3030 = load i8, i8* %3029, align 1
  %3031 = sext i8 %3030 to i64
  %3032 = and i64 %3031, 4294967295
  store i64 %3032, i64* %RAX.i944.pre-phi, align 8
  %3033 = sext i8 %3030 to i32
  store i8 0, i8* %14, align 1
  %3034 = and i32 %3033, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3039 = icmp eq i8 %3030, 0
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %30, align 1
  %3041 = lshr i32 %3033, 31
  %3042 = trunc i32 %3041 to i8
  store i8 %3042, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3043 = icmp ne i8 %3042, 0
  %3044 = or i1 %3039, %3043
  %.v159 = select i1 %3044, i64 58, i64 29
  %3045 = add i64 %2999, %.v159
  store i64 %3045, i64* %3, align 8
  br i1 %3044, label %block_.L_44f367, label %block_44f34a

block_44f34a:                                     ; preds = %block_44f32d
  %3046 = add i64 %3045, 6
  store i64 %3046, i64* %3, align 8
  %3047 = load i32, i32* %2572, align 4
  %3048 = add i32 %3047, -20
  %3049 = zext i32 %3048 to i64
  store i64 %3049, i64* %RAX.i944.pre-phi, align 8
  %3050 = icmp ult i32 %3047, 20
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %14, align 1
  %3052 = and i32 %3048, 255
  %3053 = tail call i32 @llvm.ctpop.i32(i32 %3052)
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  store i8 %3056, i8* %21, align 1
  %3057 = xor i32 %3047, 16
  %3058 = xor i32 %3057, %3048
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  store i8 %3061, i8* %27, align 1
  %3062 = icmp eq i32 %3048, 0
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %30, align 1
  %3064 = lshr i32 %3048, 31
  %3065 = trunc i32 %3064 to i8
  store i8 %3065, i8* %33, align 1
  %3066 = lshr i32 %3047, 31
  %3067 = xor i32 %3064, %3066
  %3068 = add nuw nsw i32 %3067, %3066
  %3069 = icmp eq i32 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %39, align 1
  %3071 = sext i32 %3048 to i64
  store i64 %3071, i64* %RCX.i1156, align 8
  %3072 = add nsw i64 %3071, -432
  %3073 = add i64 %3072, %2569
  %3074 = add i64 %3045, 20
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i8*
  %3076 = load i8, i8* %3075, align 1
  %3077 = sext i8 %3076 to i64
  %3078 = and i64 %3077, 4294967295
  store i64 %3078, i64* %RAX.i944.pre-phi, align 8
  %3079 = sext i8 %3076 to i32
  %3080 = add nsw i32 %3079, -4
  %3081 = icmp ult i8 %3076, 4
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %14, align 1
  %3083 = and i32 %3080, 255
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %21, align 1
  %3088 = xor i32 %3080, %3079
  %3089 = lshr i32 %3088, 4
  %3090 = trunc i32 %3089 to i8
  %3091 = and i8 %3090, 1
  store i8 %3091, i8* %27, align 1
  %3092 = icmp eq i32 %3080, 0
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %30, align 1
  %3094 = lshr i32 %3080, 31
  %3095 = trunc i32 %3094 to i8
  store i8 %3095, i8* %33, align 1
  %3096 = lshr i32 %3079, 31
  %3097 = xor i32 %3094, %3096
  %3098 = add nuw nsw i32 %3097, %3096
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %39, align 1
  %3101 = icmp ne i8 %3095, 0
  %3102 = xor i1 %3101, %3099
  %.v160 = select i1 %3102, i64 116, i64 29
  %3103 = add i64 %3045, %.v160
  store i64 %3103, i64* %3, align 8
  br i1 %3102, label %block_.L_44f3be, label %block_.L_44f367

block_.L_44f367:                                  ; preds = %block_44f34a, %block_44f32d, %block_.L_44f310
  %3104 = phi i64 [ %3103, %block_44f34a ], [ %3045, %block_44f32d ], [ %2999, %block_.L_44f310 ]
  %3105 = add i64 %3104, 6
  store i64 %3105, i64* %3, align 8
  %3106 = load i32, i32* %2572, align 4
  %3107 = add i32 %3106, 1
  %3108 = zext i32 %3107 to i64
  store i64 %3108, i64* %RAX.i944.pre-phi, align 8
  %3109 = icmp eq i32 %3106, -1
  %3110 = icmp eq i32 %3107, 0
  %3111 = or i1 %3109, %3110
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %14, align 1
  %3113 = and i32 %3107, 255
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %21, align 1
  %3118 = xor i32 %3107, %3106
  %3119 = lshr i32 %3118, 4
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  store i8 %3121, i8* %27, align 1
  %3122 = zext i1 %3110 to i8
  store i8 %3122, i8* %30, align 1
  %3123 = lshr i32 %3107, 31
  %3124 = trunc i32 %3123 to i8
  store i8 %3124, i8* %33, align 1
  %3125 = lshr i32 %3106, 31
  %3126 = xor i32 %3123, %3125
  %3127 = add nuw nsw i32 %3126, %3123
  %3128 = icmp eq i32 %3127, 2
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %39, align 1
  %3130 = sext i32 %3107 to i64
  store i64 %3130, i64* %RCX.i1156, align 8
  %3131 = add nsw i64 %3130, 12099168
  %3132 = add i64 %3104, 20
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i8*
  %3134 = load i8, i8* %3133, align 1
  %3135 = zext i8 %3134 to i64
  store i64 %3135, i64* %RAX.i944.pre-phi, align 8
  %3136 = zext i8 %3134 to i32
  %3137 = add nsw i32 %3136, -3
  %3138 = icmp ult i8 %3134, 3
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %14, align 1
  %3140 = and i32 %3137, 255
  %3141 = tail call i32 @llvm.ctpop.i32(i32 %3140)
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = xor i8 %3143, 1
  store i8 %3144, i8* %21, align 1
  %3145 = xor i32 %3137, %3136
  %3146 = lshr i32 %3145, 4
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  store i8 %3148, i8* %27, align 1
  %3149 = icmp eq i32 %3137, 0
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %30, align 1
  %3151 = lshr i32 %3137, 31
  %3152 = trunc i32 %3151 to i8
  store i8 %3152, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v161 = select i1 %3149, i64 102, i64 29
  %3153 = add i64 %3104, %.v161
  store i64 %3153, i64* %3, align 8
  br i1 %3149, label %block_.L_44f3d2, label %block_44f384

block_44f384:                                     ; preds = %block_.L_44f367
  %3154 = add i64 %3153, 6
  store i64 %3154, i64* %3, align 8
  %3155 = load i32, i32* %2572, align 4
  %3156 = add i32 %3155, 1
  %3157 = zext i32 %3156 to i64
  store i64 %3157, i64* %RAX.i944.pre-phi, align 8
  %3158 = icmp eq i32 %3155, -1
  %3159 = icmp eq i32 %3156, 0
  %3160 = or i1 %3158, %3159
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %14, align 1
  %3162 = and i32 %3156, 255
  %3163 = tail call i32 @llvm.ctpop.i32(i32 %3162)
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  %3166 = xor i8 %3165, 1
  store i8 %3166, i8* %21, align 1
  %3167 = xor i32 %3156, %3155
  %3168 = lshr i32 %3167, 4
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %27, align 1
  %3171 = zext i1 %3159 to i8
  store i8 %3171, i8* %30, align 1
  %3172 = lshr i32 %3156, 31
  %3173 = trunc i32 %3172 to i8
  store i8 %3173, i8* %33, align 1
  %3174 = lshr i32 %3155, 31
  %3175 = xor i32 %3172, %3174
  %3176 = add nuw nsw i32 %3175, %3172
  %3177 = icmp eq i32 %3176, 2
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %39, align 1
  %3179 = sext i32 %3156 to i64
  store i64 %3179, i64* %RCX.i1156, align 8
  %3180 = add nsw i64 %3179, -432
  %3181 = add i64 %3180, %2569
  %3182 = add i64 %3153, 20
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i8*
  %3184 = load i8, i8* %3183, align 1
  %3185 = sext i8 %3184 to i64
  %3186 = and i64 %3185, 4294967295
  store i64 %3186, i64* %RAX.i944.pre-phi, align 8
  %3187 = sext i8 %3184 to i32
  store i8 0, i8* %14, align 1
  %3188 = and i32 %3187, 255
  %3189 = tail call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3193 = icmp eq i8 %3184, 0
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %30, align 1
  %3195 = lshr i32 %3187, 31
  %3196 = trunc i32 %3195 to i8
  store i8 %3196, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3197 = icmp ne i8 %3196, 0
  %3198 = or i1 %3193, %3197
  %.v162 = select i1 %3198, i64 73, i64 29
  %3199 = add i64 %3153, %.v162
  store i64 %3199, i64* %3, align 8
  br i1 %3198, label %block_.L_44f3d2, label %block_44f3a1

block_44f3a1:                                     ; preds = %block_44f384
  %3200 = add i64 %3199, 6
  store i64 %3200, i64* %3, align 8
  %3201 = load i32, i32* %2572, align 4
  %3202 = add i32 %3201, 1
  %3203 = zext i32 %3202 to i64
  store i64 %3203, i64* %RAX.i944.pre-phi, align 8
  %3204 = icmp eq i32 %3201, -1
  %3205 = icmp eq i32 %3202, 0
  %3206 = or i1 %3204, %3205
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %14, align 1
  %3208 = and i32 %3202, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %21, align 1
  %3213 = xor i32 %3202, %3201
  %3214 = lshr i32 %3213, 4
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  store i8 %3216, i8* %27, align 1
  %3217 = zext i1 %3205 to i8
  store i8 %3217, i8* %30, align 1
  %3218 = lshr i32 %3202, 31
  %3219 = trunc i32 %3218 to i8
  store i8 %3219, i8* %33, align 1
  %3220 = lshr i32 %3201, 31
  %3221 = xor i32 %3218, %3220
  %3222 = add nuw nsw i32 %3221, %3218
  %3223 = icmp eq i32 %3222, 2
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %39, align 1
  %3225 = sext i32 %3202 to i64
  store i64 %3225, i64* %RCX.i1156, align 8
  %3226 = add nsw i64 %3225, -432
  %3227 = add i64 %3226, %2569
  %3228 = add i64 %3199, 20
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to i8*
  %3230 = load i8, i8* %3229, align 1
  %3231 = sext i8 %3230 to i64
  %3232 = and i64 %3231, 4294967295
  store i64 %3232, i64* %RAX.i944.pre-phi, align 8
  %3233 = sext i8 %3230 to i32
  %3234 = add nsw i32 %3233, -4
  %3235 = icmp ult i8 %3230, 4
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %14, align 1
  %3237 = and i32 %3234, 255
  %3238 = tail call i32 @llvm.ctpop.i32(i32 %3237)
  %3239 = trunc i32 %3238 to i8
  %3240 = and i8 %3239, 1
  %3241 = xor i8 %3240, 1
  store i8 %3241, i8* %21, align 1
  %3242 = xor i32 %3234, %3233
  %3243 = lshr i32 %3242, 4
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  store i8 %3245, i8* %27, align 1
  %3246 = icmp eq i32 %3234, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %30, align 1
  %3248 = lshr i32 %3234, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %33, align 1
  %3250 = lshr i32 %3233, 31
  %3251 = xor i32 %3248, %3250
  %3252 = add nuw nsw i32 %3251, %3250
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %39, align 1
  %3255 = icmp ne i8 %3249, 0
  %3256 = xor i1 %3255, %3253
  %.v163 = select i1 %3256, i64 29, i64 44
  %3257 = add i64 %3199, %.v163
  store i64 %3257, i64* %3, align 8
  br i1 %3256, label %block_.L_44f3be, label %block_.L_44f3d2

block_.L_44f3be:                                  ; preds = %block_44f3a1, %block_44f34a, %block_44f2f3, %block_44f29c
  %3258 = phi i64 [ %3257, %block_44f3a1 ], [ %3103, %block_44f34a ], [ %2949, %block_44f2f3 ], [ %2798, %block_44f29c ]
  %3259 = add i64 %3258, 7
  store i64 %3259, i64* %3, align 8
  %3260 = load i32, i32* %2572, align 4
  %3261 = sext i32 %3260 to i64
  store i64 %3261, i64* %RAX.i944.pre-phi, align 8
  %3262 = add nsw i64 %3261, -432
  %3263 = add i64 %3262, %2569
  %3264 = add i64 %3258, 15
  store i64 %3264, i64* %3, align 8
  %3265 = inttoptr i64 %3263 to i8*
  store i8 4, i8* %3265, align 1
  %.pre119 = load i64, i64* %3, align 8
  %.pre120 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44f3d2

block_.L_44f3d2:                                  ; preds = %block_44f228, %block_.L_44f367, %block_44f384, %block_.L_44f3be, %block_44f3a1, %block_.L_44f245
  %3266 = phi i64 [ %2569, %block_.L_44f245 ], [ %2569, %block_44f3a1 ], [ %.pre120, %block_.L_44f3be ], [ %2569, %block_44f384 ], [ %2569, %block_.L_44f367 ], [ %2569, %block_44f228 ]
  %3267 = phi i64 [ %2645, %block_.L_44f245 ], [ %3257, %block_44f3a1 ], [ %.pre119, %block_.L_44f3be ], [ %3199, %block_44f384 ], [ %3153, %block_.L_44f367 ], [ %2624, %block_44f228 ]
  %.sink69 = phi i64 [ 373, %block_.L_44f245 ], [ 5, %block_44f3a1 ], [ 5, %block_.L_44f3be ], [ 5, %block_44f384 ], [ 5, %block_.L_44f367 ], [ 402, %block_44f228 ]
  %3268 = add i64 %3267, %.sink69
  %3269 = add i64 %3266, -436
  %3270 = add i64 %3268, 6
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i32*
  %3272 = load i32, i32* %3271, align 4
  %3273 = add i32 %3272, 1
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RAX.i944.pre-phi, align 8
  %3275 = icmp eq i32 %3272, -1
  %3276 = icmp eq i32 %3273, 0
  %3277 = or i1 %3275, %3276
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %14, align 1
  %3279 = and i32 %3273, 255
  %3280 = tail call i32 @llvm.ctpop.i32(i32 %3279)
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = xor i8 %3282, 1
  store i8 %3283, i8* %21, align 1
  %3284 = xor i32 %3273, %3272
  %3285 = lshr i32 %3284, 4
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  store i8 %3287, i8* %27, align 1
  %3288 = zext i1 %3276 to i8
  store i8 %3288, i8* %30, align 1
  %3289 = lshr i32 %3273, 31
  %3290 = trunc i32 %3289 to i8
  store i8 %3290, i8* %33, align 1
  %3291 = lshr i32 %3272, 31
  %3292 = xor i32 %3289, %3291
  %3293 = add nuw nsw i32 %3292, %3289
  %3294 = icmp eq i32 %3293, 2
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %39, align 1
  %3296 = add i64 %3268, 15
  store i64 %3296, i64* %3, align 8
  store i32 %3273, i32* %3271, align 4
  %3297 = load i64, i64* %3, align 8
  %3298 = add i64 %3297, -457
  store i64 %3298, i64* %3, align 8
  br label %block_.L_44f218

block_.L_44f3e6:                                  ; preds = %block_.L_44f218
  %3299 = add i64 %2569, -440
  %3300 = add i64 %2598, 10
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i32*
  store i32 0, i32* %3301, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_44f3f0

block_.L_44f3f0:                                  ; preds = %block_44f403, %block_.L_44f3e6
  %3302 = phi i64 [ %3386, %block_44f403 ], [ %.pre115, %block_.L_44f3e6 ]
  %3303 = load i64, i64* %RBP.i, align 8
  %3304 = add i64 %3303, -440
  %3305 = add i64 %3302, 6
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i32*
  %3307 = load i32, i32* %3306, align 4
  %3308 = zext i32 %3307 to i64
  store i64 %3308, i64* %RAX.i944.pre-phi, align 8
  %3309 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3310 = sub i32 %3307, %3309
  %3311 = icmp ult i32 %3307, %3309
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %14, align 1
  %3313 = and i32 %3310, 255
  %3314 = tail call i32 @llvm.ctpop.i32(i32 %3313)
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  store i8 %3317, i8* %21, align 1
  %3318 = xor i32 %3309, %3307
  %3319 = xor i32 %3318, %3310
  %3320 = lshr i32 %3319, 4
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  store i8 %3322, i8* %27, align 1
  %3323 = icmp eq i32 %3310, 0
  %3324 = zext i1 %3323 to i8
  store i8 %3324, i8* %30, align 1
  %3325 = lshr i32 %3310, 31
  %3326 = trunc i32 %3325 to i8
  store i8 %3326, i8* %33, align 1
  %3327 = lshr i32 %3307, 31
  %3328 = lshr i32 %3309, 31
  %3329 = xor i32 %3328, %3327
  %3330 = xor i32 %3325, %3327
  %3331 = add nuw nsw i32 %3330, %3329
  %3332 = icmp eq i32 %3331, 2
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %39, align 1
  %3334 = icmp ne i8 %3326, 0
  %3335 = xor i1 %3334, %3332
  %.v146 = select i1 %3335, i64 19, i64 69
  %3336 = add i64 %3302, %.v146
  store i64 %3336, i64* %3, align 8
  br i1 %3335, label %block_44f403, label %block_.L_44f435

block_44f403:                                     ; preds = %block_.L_44f3f0
  %3337 = add i64 %3303, -456
  %3338 = add i64 %3336, 7
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to i64*
  %3340 = load i64, i64* %3339, align 8
  store i64 %3340, i64* %RAX.i944.pre-phi, align 8
  %3341 = add i64 %3336, 14
  store i64 %3341, i64* %3, align 8
  %3342 = load i32, i32* %3306, align 4
  %3343 = sext i32 %3342 to i64
  store i64 %3343, i64* %RCX.i1156, align 8
  %3344 = shl nsw i64 %3343, 2
  %3345 = add i64 %3340, 436
  %3346 = add i64 %3345, %3344
  %3347 = add i64 %3336, 22
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3346 to i32*
  %3349 = load i32, i32* %3348, align 4
  %3350 = sext i32 %3349 to i64
  store i64 %3350, i64* %RAX.i944.pre-phi, align 8
  %3351 = add nsw i64 %3350, -432
  %3352 = add i64 %3351, %3303
  %3353 = add i64 %3336, 30
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3352 to i8*
  store i8 5, i8* %3354, align 1
  %3355 = load i64, i64* %RBP.i, align 8
  %3356 = add i64 %3355, -440
  %3357 = load i64, i64* %3, align 8
  %3358 = add i64 %3357, 6
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3356 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = add i32 %3360, 1
  %3362 = zext i32 %3361 to i64
  store i64 %3362, i64* %RAX.i944.pre-phi, align 8
  %3363 = icmp eq i32 %3360, -1
  %3364 = icmp eq i32 %3361, 0
  %3365 = or i1 %3363, %3364
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %14, align 1
  %3367 = and i32 %3361, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  %3372 = xor i32 %3361, %3360
  %3373 = lshr i32 %3372, 4
  %3374 = trunc i32 %3373 to i8
  %3375 = and i8 %3374, 1
  store i8 %3375, i8* %27, align 1
  %3376 = zext i1 %3364 to i8
  store i8 %3376, i8* %30, align 1
  %3377 = lshr i32 %3361, 31
  %3378 = trunc i32 %3377 to i8
  store i8 %3378, i8* %33, align 1
  %3379 = lshr i32 %3360, 31
  %3380 = xor i32 %3377, %3379
  %3381 = add nuw nsw i32 %3380, %3377
  %3382 = icmp eq i32 %3381, 2
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %39, align 1
  %3384 = add i64 %3357, 15
  store i64 %3384, i64* %3, align 8
  store i32 %3361, i32* %3359, align 4
  %3385 = load i64, i64* %3, align 8
  %3386 = add i64 %3385, -64
  store i64 %3386, i64* %3, align 8
  br label %block_.L_44f3f0

block_.L_44f435:                                  ; preds = %block_.L_44f3f0
  %3387 = add i64 %3303, -436
  %3388 = add i64 %3336, 10
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  store i32 21, i32* %3389, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_44f43f

block_.L_44f43f:                                  ; preds = %block_.L_44f4c8, %block_.L_44f435
  %3390 = phi i64 [ %3539, %block_.L_44f4c8 ], [ %.pre116, %block_.L_44f435 ]
  %3391 = load i64, i64* %RBP.i, align 8
  %3392 = add i64 %3391, -436
  %3393 = add i64 %3390, 10
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = add i32 %3395, -400
  %3397 = icmp ult i32 %3395, 400
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %14, align 1
  %3399 = and i32 %3396, 255
  %3400 = tail call i32 @llvm.ctpop.i32(i32 %3399)
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  store i8 %3403, i8* %21, align 1
  %3404 = xor i32 %3395, 16
  %3405 = xor i32 %3404, %3396
  %3406 = lshr i32 %3405, 4
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  store i8 %3408, i8* %27, align 1
  %3409 = icmp eq i32 %3396, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %30, align 1
  %3411 = lshr i32 %3396, 31
  %3412 = trunc i32 %3411 to i8
  store i8 %3412, i8* %33, align 1
  %3413 = lshr i32 %3395, 31
  %3414 = xor i32 %3411, %3413
  %3415 = add nuw nsw i32 %3414, %3413
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %39, align 1
  %3418 = icmp ne i8 %3412, 0
  %3419 = xor i1 %3418, %3416
  %.v147 = select i1 %3419, i64 16, i64 157
  %3420 = add i64 %3390, %.v147
  store i64 %3420, i64* %3, align 8
  br i1 %3419, label %block_44f44f, label %block_.L_44f4dc

block_44f44f:                                     ; preds = %block_.L_44f43f
  %3421 = add i64 %3420, 7
  store i64 %3421, i64* %3, align 8
  %3422 = load i32, i32* %3394, align 4
  %3423 = sext i32 %3422 to i64
  store i64 %3423, i64* %RAX.i944.pre-phi, align 8
  %3424 = add nsw i64 %3423, 12099168
  %3425 = add i64 %3420, 15
  store i64 %3425, i64* %3, align 8
  %3426 = inttoptr i64 %3424 to i8*
  %3427 = load i8, i8* %3426, align 1
  %3428 = zext i8 %3427 to i64
  store i64 %3428, i64* %RCX.i1156, align 8
  %3429 = zext i8 %3427 to i32
  %3430 = add nsw i32 %3429, -3
  %3431 = icmp ult i8 %3427, 3
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %14, align 1
  %3433 = and i32 %3430, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %21, align 1
  %3438 = xor i32 %3430, %3429
  %3439 = lshr i32 %3438, 4
  %3440 = trunc i32 %3439 to i8
  %3441 = and i8 %3440, 1
  store i8 %3441, i8* %27, align 1
  %3442 = icmp eq i32 %3430, 0
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %30, align 1
  %3444 = lshr i32 %3430, 31
  %3445 = trunc i32 %3444 to i8
  store i8 %3445, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v148 = select i1 %3442, i64 24, i64 29
  %3446 = add i64 %3420, %.v148
  store i64 %3446, i64* %3, align 8
  br i1 %3442, label %block_44f467, label %block_.L_44f46c

block_44f467:                                     ; preds = %block_44f44f
  %3447 = add i64 %3446, 97
  store i64 %3447, i64* %3, align 8
  br label %block_.L_44f4c8

block_.L_44f46c:                                  ; preds = %block_44f44f
  %3448 = add i64 %3446, 7
  store i64 %3448, i64* %3, align 8
  %3449 = load i32, i32* %3394, align 4
  %3450 = sext i32 %3449 to i64
  store i64 %3450, i64* %RAX.i944.pre-phi, align 8
  %3451 = add nsw i64 %3450, -432
  %3452 = add i64 %3451, %3391
  %3453 = add i64 %3446, 15
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i8*
  %3455 = load i8, i8* %3454, align 1
  %3456 = sext i8 %3455 to i64
  %3457 = and i64 %3456, 4294967295
  store i64 %3457, i64* %RCX.i1156, align 8
  %3458 = sext i8 %3455 to i32
  store i8 0, i8* %14, align 1
  %3459 = and i32 %3458, 255
  %3460 = tail call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  store i8 %3463, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3464 = icmp eq i8 %3455, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %30, align 1
  %3466 = lshr i32 %3458, 31
  %3467 = trunc i32 %3466 to i8
  store i8 %3467, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v149 = select i1 %3464, i64 50, i64 24
  %3468 = add i64 %3446, %.v149
  store i64 %3468, i64* %3, align 8
  br i1 %3464, label %block_.L_44f49e, label %block_44f484

block_44f484:                                     ; preds = %block_.L_44f46c
  %3469 = add i64 %3468, 7
  store i64 %3469, i64* %3, align 8
  %3470 = load i32, i32* %3394, align 4
  %3471 = sext i32 %3470 to i64
  store i64 %3471, i64* %RAX.i944.pre-phi, align 8
  %3472 = add nsw i64 %3471, 12099168
  %3473 = add i64 %3468, 15
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i8*
  %3475 = load i8, i8* %3474, align 1
  %3476 = zext i8 %3475 to i64
  store i64 %3476, i64* %RCX.i1156, align 8
  %3477 = add i64 %3391, -492
  %3478 = zext i8 %3475 to i32
  %3479 = add i64 %3468, 21
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3477 to i32*
  store i32 %3478, i32* %3480, align 4
  %3481 = load i64, i64* %3, align 8
  %3482 = add i64 %3481, 21
  br label %block_.L_44f4ae

block_.L_44f49e:                                  ; preds = %block_.L_44f46c
  store i64 3, i64* %RAX.i944.pre-phi, align 8
  %3483 = add i64 %3391, -492
  %3484 = add i64 %3468, 11
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i32*
  store i32 3, i32* %3485, align 4
  %3486 = load i64, i64* %3, align 8
  %3487 = add i64 %3486, 5
  store i64 %3487, i64* %3, align 8
  br label %block_.L_44f4ae

block_.L_44f4ae:                                  ; preds = %block_.L_44f49e, %block_44f484
  %storemerge65 = phi i64 [ %3482, %block_44f484 ], [ %3487, %block_.L_44f49e ]
  %3488 = load i64, i64* %RBP.i, align 8
  %3489 = add i64 %3488, -492
  %3490 = add i64 %storemerge65, 6
  store i64 %3490, i64* %3, align 8
  %3491 = inttoptr i64 %3489 to i32*
  %3492 = load i32, i32* %3491, align 4
  %3493 = zext i32 %3492 to i64
  store i64 %3493, i64* %RAX.i944.pre-phi, align 8
  %3494 = trunc i32 %3492 to i8
  store i8 %3494, i8* %CL.i768, align 1
  %3495 = add i64 %3488, -456
  %3496 = add i64 %storemerge65, 15
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3495 to i64*
  %3498 = load i64, i64* %3497, align 8
  store i64 %3498, i64* %RDX.i932.pre-phi, align 8
  %3499 = add i64 %3488, -436
  %3500 = add i64 %storemerge65, 22
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  %3502 = load i32, i32* %3501, align 4
  %3503 = sext i32 %3502 to i64
  store i64 %3503, i64* %RSI.i813, align 8
  %3504 = add nsw i64 %3503, 4
  %3505 = add i64 %3504, %3498
  %3506 = add i64 %storemerge65, 26
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i8*
  store i8 %3494, i8* %3507, align 1
  %.pre117 = load i64, i64* %RBP.i, align 8
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_44f4c8

block_.L_44f4c8:                                  ; preds = %block_.L_44f4ae, %block_44f467
  %3508 = phi i64 [ %.pre118, %block_.L_44f4ae ], [ %3447, %block_44f467 ]
  %3509 = phi i64 [ %.pre117, %block_.L_44f4ae ], [ %3391, %block_44f467 ]
  %3510 = add i64 %3509, -436
  %3511 = add i64 %3508, 6
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3510 to i32*
  %3513 = load i32, i32* %3512, align 4
  %3514 = add i32 %3513, 1
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RAX.i944.pre-phi, align 8
  %3516 = icmp eq i32 %3513, -1
  %3517 = icmp eq i32 %3514, 0
  %3518 = or i1 %3516, %3517
  %3519 = zext i1 %3518 to i8
  store i8 %3519, i8* %14, align 1
  %3520 = and i32 %3514, 255
  %3521 = tail call i32 @llvm.ctpop.i32(i32 %3520)
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = xor i8 %3523, 1
  store i8 %3524, i8* %21, align 1
  %3525 = xor i32 %3514, %3513
  %3526 = lshr i32 %3525, 4
  %3527 = trunc i32 %3526 to i8
  %3528 = and i8 %3527, 1
  store i8 %3528, i8* %27, align 1
  %3529 = zext i1 %3517 to i8
  store i8 %3529, i8* %30, align 1
  %3530 = lshr i32 %3514, 31
  %3531 = trunc i32 %3530 to i8
  store i8 %3531, i8* %33, align 1
  %3532 = lshr i32 %3513, 31
  %3533 = xor i32 %3530, %3532
  %3534 = add nuw nsw i32 %3533, %3530
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %39, align 1
  %3537 = add i64 %3508, 15
  store i64 %3537, i64* %3, align 8
  store i32 %3514, i32* %3512, align 4
  %3538 = load i64, i64* %3, align 8
  %3539 = add i64 %3538, -152
  store i64 %3539, i64* %3, align 8
  br label %block_.L_44f43f

block_.L_44f4dc:                                  ; preds = %block_.L_44f43f
  %3540 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %3541 = add i32 %3540, 1
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RAX.i944.pre-phi, align 8
  %3543 = icmp eq i32 %3540, -1
  %3544 = icmp eq i32 %3541, 0
  %3545 = or i1 %3543, %3544
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %14, align 1
  %3547 = and i32 %3541, 255
  %3548 = tail call i32 @llvm.ctpop.i32(i32 %3547)
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = xor i8 %3550, 1
  store i8 %3551, i8* %21, align 1
  %3552 = xor i32 %3541, %3540
  %3553 = lshr i32 %3552, 4
  %3554 = trunc i32 %3553 to i8
  %3555 = and i8 %3554, 1
  store i8 %3555, i8* %27, align 1
  %3556 = zext i1 %3544 to i8
  store i8 %3556, i8* %30, align 1
  %3557 = lshr i32 %3541, 31
  %3558 = trunc i32 %3557 to i8
  store i8 %3558, i8* %33, align 1
  %3559 = lshr i32 %3540, 31
  %3560 = xor i32 %3557, %3559
  %3561 = add nuw nsw i32 %3560, %3557
  %3562 = icmp eq i32 %3561, 2
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %39, align 1
  %3564 = add i64 %3420, 17
  store i64 %3564, i64* %3, align 8
  store i32 %3541, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  br label %block_.L_44f4ed

block_.L_44f4ed:                                  ; preds = %block_.L_44f4dc, %block_.L_44ec1f, %block_44eae1
  %3565 = phi i64 [ %3564, %block_.L_44f4dc ], [ %672, %block_.L_44ec1f ], [ %317, %block_44eae1 ]
  %MEMORY.42 = phi %struct.Memory* [ %call2_44ee09, %block_.L_44f4dc ], [ %MEMORY.1, %block_.L_44ec1f ], [ %MEMORY.1, %block_44eae1 ]
  %3566 = load i64, i64* %6, align 8
  %3567 = add i64 %3566, 496
  store i64 %3567, i64* %6, align 8
  %3568 = icmp ugt i64 %3566, -497
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %14, align 1
  %3570 = trunc i64 %3567 to i32
  %3571 = and i32 %3570, 255
  %3572 = tail call i32 @llvm.ctpop.i32(i32 %3571)
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  %3575 = xor i8 %3574, 1
  store i8 %3575, i8* %21, align 1
  %3576 = xor i64 %3566, 16
  %3577 = xor i64 %3576, %3567
  %3578 = lshr i64 %3577, 4
  %3579 = trunc i64 %3578 to i8
  %3580 = and i8 %3579, 1
  store i8 %3580, i8* %27, align 1
  %3581 = icmp eq i64 %3567, 0
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %30, align 1
  %3583 = lshr i64 %3567, 63
  %3584 = trunc i64 %3583 to i8
  store i8 %3584, i8* %33, align 1
  %3585 = lshr i64 %3566, 63
  %3586 = xor i64 %3583, %3585
  %3587 = add nuw nsw i64 %3586, %3583
  %3588 = icmp eq i64 %3587, 2
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %39, align 1
  %3590 = add i64 %3565, 8
  store i64 %3590, i64* %3, align 8
  %3591 = add i64 %3566, 504
  %3592 = inttoptr i64 %3567 to i64*
  %3593 = load i64, i64* %3592, align 8
  store i64 %3593, i64* %RBP.i, align 8
  store i64 %3591, i64* %6, align 8
  %3594 = add i64 %3565, 9
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3591 to i64*
  %3596 = load i64, i64* %3595, align 8
  store i64 %3596, i64* %3, align 8
  %3597 = add i64 %3566, 512
  store i64 %3597, i64* %6, align 8
  ret %struct.Memory* %MEMORY.42
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
define %struct.Memory* @routine_subq__0x1f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -496
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 496
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
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -444
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_44ea5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_je_.L_44ea62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44ead3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x171___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 369, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57f043___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f043_type* @G__0x57f043 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -468
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
define %struct.Memory* @routine_movq__rdx__MINUS0x1e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -468
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
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -484
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_movq_MINUS0x1e0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -488
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %5, 5
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_44eae6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44f4ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__0xac5d28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %6 = add i32 %5, -100
  %7 = icmp ult i32 %5, 100
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44ec29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -444
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -464
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_cmpl_0xac5d28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_44eba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xac5d30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_imulq__0x1dc___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 476
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
define %struct.Memory* @routine_movl_0x19c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 412
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
define %struct.Memory* @routine_cmpl_MINUS0x1d0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -464
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
define %struct.Memory* @routine_jge_.L_44eb87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -464
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_movl__edx__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -460
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44eb8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44eb14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44ec1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xac5d28___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_44ec09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1dc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 476, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xac5d30___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac5d30_type* @G__0xac5d30 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1cc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -460
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
define %struct.Memory* @routine_imulq__0x1dc___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 476
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xac5d28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xac5d28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ec24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ec29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xac5d28___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac5d28_type* @G_0xac5d28 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0xafdfb0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x194__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 404
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__edx__0x198__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 408
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -444
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
define %struct.Memory* @routine_movl__edx__0x19c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 412
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb8b854___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xb54ce4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movl__edx__0x1a0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 416
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__edx__0x1a4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 420
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__edx__0x1a8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 424
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__edx__0x1ac__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 428
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__0x1b0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 432
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jge_.L_44edb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_cmpl_0xb54ce4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_44ed65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_addq__0x1b4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 436
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -437
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
define %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 456
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -457
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
define %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
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
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_move_from_stack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44ed97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x1b4__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 436
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x1c8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 456
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ed9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ecf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
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
define %struct.Memory* @routine_jge_.L_44edfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_movb_0xb05020___rax_1____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 11554848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -432
  %7 = add i64 %6, %5
  %8 = load i8, i8* %CL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44edba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1b0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_callq_.mark_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44ee2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44efe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44ee65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44efcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_44ee82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_44eebc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_44ef6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44eef6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44ef30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44efca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44efca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_44ef9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_44efb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_jmpq_.L_44efc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 2, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44efca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ee38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44f097(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f01a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44f083(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44f04a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f07e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
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
define %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_je_.L_44f07e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 0, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44efed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44f20e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44f0f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44f0fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44f1fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_44f138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_je_.L_44f1e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f172(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f1ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f1f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x3__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 3, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44f0a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44f3e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f245(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44f3d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44f262(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44f2b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_44f2b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -4
  %8 = icmp ult i32 %4, 4
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
define %struct.Memory* @routine_jl_.L_44f3be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44f310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_44f310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44f367(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_44f367(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44f3cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_44f3cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44f3cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x4__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 4, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44f218(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44f435(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x1b4__rax__rcx_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 436
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5__MINUS0x1b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -432
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 5, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44f3f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44f4dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44f46c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44f4c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44f49e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -492
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44f4ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_movb__cl__0x4__rdx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 4
  %7 = add i64 %6, %5
  %8 = load i8, i8* %CL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44f43f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 496
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -497
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
