; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a451_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
%G__0xafc500_type = type <{ [8 x i8] }>
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
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a451 = global %G__0x57a451_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0xafc500 = global %G__0xafc500_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e0f0.reset_move_history(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4080d0.new_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @remove_stone(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %18 to i32*
  %19 = add i64 %7, -12
  %20 = load i32, i32* %EDI.i, align 4
  %21 = add i64 %10, 10
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %30 = icmp eq i32 %24, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1
  %32 = lshr i32 %24, 31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v = select i1 %30, i64 14, i64 19
  %34 = add i64 %23, %.v
  store i64 %34, i64* %3, align 8
  br i1 %30, label %block_40e169, label %block_.L_40e16e

block_40e169:                                     ; preds = %entry
  %35 = add i64 %34, 94
  store i64 %35, i64* %3, align 8
  br label %block_.L_40e1c7

block_.L_40e16e:                                  ; preds = %entry
  %RDI.i234 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i234, align 8
  %RSI.i232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 841, i64* %RSI.i232, align 8
  %RDX.i230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i230, align 8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i228 = getelementptr inbounds %union.anon, %union.anon* %36, i64 0, i32 0
  store i64 20, i64* %RAX.i228, align 8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i225 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -4
  %40 = add i64 %34, 33
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %RCX.i225, align 8
  %EAX.i222 = bitcast %union.anon* %36 to i32*
  %44 = add i64 %38, -8
  %45 = add i64 %34, 36
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 20, i32* %46, align 4
  %ECX.i219 = bitcast %union.anon* %37 to i32*
  %47 = load i32, i32* %ECX.i219, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %3, align 8
  store i64 %48, i64* %RAX.i228, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RDX.i230, align 8
  %53 = add i64 %49, 6
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %57 = load i32, i32* %EAX.i222, align 8
  %58 = sext i32 %57 to i64
  %59 = lshr i64 %58, 32
  store i64 %59, i64* %56, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -8
  %62 = add i64 %55, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %RCX.i225, align 8
  %66 = add i64 %55, 6
  store i64 %66, i64* %3, align 8
  %67 = zext i32 %57 to i64
  %68 = sext i32 %64 to i64
  %69 = shl nuw i64 %59, 32
  %70 = or i64 %69, %67
  %71 = sdiv i64 %70, %68
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %77, label %75

; <label>:75:                                     ; preds = %block_.L_40e16e
  %76 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %66, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i228, align 8
  %.pre5 = load i64, i64* %3, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit209

; <label>:77:                                     ; preds = %block_.L_40e16e
  %78 = srem i64 %70, %68
  %79 = and i64 %71, 4294967295
  store i64 %79, i64* %RAX.i228, align 8
  %80 = and i64 %78, 4294967295
  store i64 %80, i64* %RDX.i230, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit209

routine_idivl__ecx.exit209:                       ; preds = %77, %75
  %81 = phi i64 [ %.pre6, %75 ], [ %60, %77 ]
  %82 = phi i64 [ %.pre5, %75 ], [ %66, %77 ]
  %83 = phi i64 [ %.pre, %75 ], [ %79, %77 ]
  %84 = phi %struct.Memory* [ %76, %75 ], [ %2, %77 ]
  %85 = trunc i64 %83 to i32
  %86 = add i32 %85, -1
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RAX.i228, align 8
  %88 = icmp eq i32 %85, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %12, align 1
  %90 = and i32 %86, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %13, align 1
  %95 = xor i32 %86, %85
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %14, align 1
  %99 = icmp eq i32 %86, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %15, align 1
  %101 = lshr i32 %86, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %16, align 1
  %103 = lshr i32 %85, 31
  %104 = xor i32 %101, %103
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %17, align 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i203 = bitcast %union.anon* %108 to i32*
  %109 = getelementptr inbounds %union.anon, %union.anon* %108, i64 0, i32 0
  %110 = add i64 %81, -4
  %111 = add i64 %82, 7
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %109, align 8
  %115 = add i64 %81, -20
  %116 = add i64 %82, 10
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  store i32 %86, i32* %117, align 4
  %118 = load i32, i32* %R8D.i203, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %3, align 8
  store i64 %119, i64* %RAX.i228, align 8
  %121 = sext i32 %118 to i64
  %122 = lshr i64 %121, 32
  store i64 %122, i64* %56, align 8
  %123 = load i32, i32* %ECX.i219, align 4
  %124 = add i64 %120, 6
  store i64 %124, i64* %3, align 8
  %125 = sext i32 %123 to i64
  %126 = shl nuw i64 %122, 32
  %127 = or i64 %126, %119
  %128 = sdiv i64 %127, %125
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %134, label %132

; <label>:132:                                    ; preds = %routine_idivl__ecx.exit209
  %133 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %124, %struct.Memory* %84)
  %.pre7 = load i64, i64* %RDX.i230, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit193

; <label>:134:                                    ; preds = %routine_idivl__ecx.exit209
  %135 = srem i64 %127, %125
  %136 = and i64 %128, 4294967295
  store i64 %136, i64* %RAX.i228, align 8
  %137 = and i64 %135, 4294967295
  store i64 %137, i64* %RDX.i230, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit193

routine_idivl__ecx.exit193:                       ; preds = %134, %132
  %138 = phi i64 [ %.pre8, %132 ], [ %124, %134 ]
  %139 = phi i64 [ %.pre7, %132 ], [ %137, %134 ]
  %140 = phi %struct.Memory* [ %133, %132 ], [ %84, %134 ]
  %141 = trunc i64 %139 to i32
  %142 = add i32 %141, -1
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RDX.i230, align 8
  %144 = icmp eq i32 %141, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %12, align 1
  %146 = and i32 %142, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %13, align 1
  %151 = xor i32 %142, %141
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %14, align 1
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %15, align 1
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %16, align 1
  %159 = lshr i32 %141, 31
  %160 = xor i32 %157, %159
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %17, align 1
  %R9.i188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -16
  %166 = add i64 %138, 7
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %R9.i188, align 8
  %169 = add i64 %164, -24
  %170 = add i64 %138, 10
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  store i32 %142, i32* %171, align 4
  %172 = load i64, i64* %R9.i188, align 8
  %173 = load i64, i64* %3, align 8
  store i64 %172, i64* %RDX.i230, align 8
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -20
  %176 = add i64 %173, 6
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RCX.i225, align 8
  %180 = add i64 %174, -24
  %181 = add i64 %173, 10
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %109, align 8
  %185 = add i64 %173, 278232
  %186 = add i64 %173, 15
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %call2_40e1c2 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %185, %struct.Memory* %140)
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_40e1c7

block_.L_40e1c7:                                  ; preds = %routine_idivl__ecx.exit193, %block_40e169
  %190 = phi i64 [ %.pre9, %routine_idivl__ecx.exit193 ], [ %35, %block_40e169 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_40e1c2, %routine_idivl__ecx.exit193 ], [ %2, %block_40e169 ]
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -4
  %193 = add i64 %190, 7
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %195, -421
  %197 = icmp ult i32 %195, 421
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %12, align 1
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %13, align 1
  %204 = xor i32 %196, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %14, align 1
  %208 = icmp eq i32 %196, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %15, align 1
  %210 = lshr i32 %196, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %16, align 1
  %212 = lshr i32 %195, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %17, align 1
  %.v34 = select i1 %197, i64 13, i64 39
  %217 = add i64 %190, %.v34
  store i64 %217, i64* %3, align 8
  br i1 %197, label %block_40e1d4, label %block_.L_40e1c7.block_.L_40e1ee_crit_edge

block_.L_40e1c7.block_.L_40e1ee_crit_edge:        ; preds = %block_.L_40e1c7
  %.pre30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre32 = getelementptr inbounds %union.anon, %union.anon* %.pre30, i64 0, i32 0
  %.pre33 = bitcast %union.anon* %.pre30 to i32*
  br label %block_.L_40e1ee

block_40e1d4:                                     ; preds = %block_.L_40e1c7
  %RAX.i168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %218 = add i64 %217, 4
  store i64 %218, i64* %3, align 8
  %219 = load i32, i32* %194, align 4
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %RAX.i168, align 8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i166 = getelementptr inbounds %union.anon, %union.anon* %221, i64 0, i32 0
  %222 = add nsw i64 %220, 12099168
  %223 = add i64 %217, 12
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i8*
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i64
  store i64 %226, i64* %RCX.i166, align 8
  %ECX.i163 = bitcast %union.anon* %221 to i32*
  %227 = zext i8 %225 to i32
  %228 = add nsw i32 %227, -3
  %229 = icmp ult i8 %225, 3
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %12, align 1
  %231 = and i32 %228, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %13, align 1
  %236 = xor i32 %228, %227
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %14, align 1
  %240 = icmp eq i32 %228, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %15, align 1
  %242 = lshr i32 %228, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v37 = select i1 %240, i64 26, i64 21
  %244 = add i64 %217, %.v37
  store i64 %244, i64* %3, align 8
  br i1 %240, label %block_.L_40e1ee, label %block_40e1e9

block_40e1e9:                                     ; preds = %block_40e1d4
  %245 = add i64 %244, 94
  store i64 %245, i64* %3, align 8
  %.pre24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre25 = getelementptr inbounds %union.anon, %union.anon* %.pre24, i64 0, i32 0
  br label %block_.L_40e247

block_.L_40e1ee:                                  ; preds = %block_.L_40e1c7.block_.L_40e1ee_crit_edge, %block_40e1d4
  %ECX.i144.pre-phi = phi i32* [ %.pre33, %block_.L_40e1c7.block_.L_40e1ee_crit_edge ], [ %ECX.i163, %block_40e1d4 ]
  %RCX.i150.pre-phi = phi i64* [ %.pre32, %block_.L_40e1c7.block_.L_40e1ee_crit_edge ], [ %RCX.i166, %block_40e1d4 ]
  %246 = phi i64 [ %217, %block_.L_40e1c7.block_.L_40e1ee_crit_edge ], [ %244, %block_40e1d4 ]
  %RDI.i159 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i159, align 8
  %RSI.i157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 842, i64* %RSI.i157, align 8
  %RDX.i155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i155, align 8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i153 = getelementptr inbounds %union.anon, %union.anon* %247, i64 0, i32 0
  store i64 20, i64* %RAX.i153, align 8
  %248 = add i64 %246, 33
  store i64 %248, i64* %3, align 8
  %249 = load i32, i32* %194, align 4
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RCX.i150.pre-phi, align 8
  %EAX.i147 = bitcast %union.anon* %247 to i32*
  %251 = add i64 %191, -28
  %252 = add i64 %246, 36
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  store i32 20, i32* %253, align 4
  %254 = load i32, i32* %ECX.i144.pre-phi, align 4
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %3, align 8
  store i64 %255, i64* %RAX.i153, align 8
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -40
  %259 = load i64, i64* %RDX.i155, align 8
  %260 = add i64 %256, 6
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i64*
  store i64 %259, i64* %261, align 8
  %262 = load i64, i64* %3, align 8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %264 = load i32, i32* %EAX.i147, align 8
  %265 = sext i32 %264 to i64
  %266 = lshr i64 %265, 32
  store i64 %266, i64* %263, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -28
  %269 = add i64 %262, 4
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RCX.i150.pre-phi, align 8
  %273 = add i64 %262, 6
  store i64 %273, i64* %3, align 8
  %274 = zext i32 %264 to i64
  %275 = sext i32 %271 to i64
  %276 = shl nuw i64 %266, 32
  %277 = or i64 %276, %274
  %278 = sdiv i64 %277, %275
  %279 = shl i64 %278, 32
  %280 = ashr exact i64 %279, 32
  %281 = icmp eq i64 %278, %280
  br i1 %281, label %284, label %282

; <label>:282:                                    ; preds = %block_.L_40e1ee
  %283 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %273, %struct.Memory* %MEMORY.0)
  %.pre10 = load i64, i64* %RAX.i153, align 8
  %.pre11 = load i64, i64* %3, align 8
  %.pre12 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit134

; <label>:284:                                    ; preds = %block_.L_40e1ee
  %285 = srem i64 %277, %275
  %286 = and i64 %278, 4294967295
  store i64 %286, i64* %RAX.i153, align 8
  %287 = and i64 %285, 4294967295
  store i64 %287, i64* %RDX.i155, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit134

routine_idivl__ecx.exit134:                       ; preds = %284, %282
  %288 = phi i64 [ %.pre12, %282 ], [ %267, %284 ]
  %289 = phi i64 [ %.pre11, %282 ], [ %273, %284 ]
  %290 = phi i64 [ %.pre10, %282 ], [ %286, %284 ]
  %291 = phi %struct.Memory* [ %283, %282 ], [ %MEMORY.0, %284 ]
  %292 = trunc i64 %290 to i32
  %293 = add i32 %292, -1
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i153, align 8
  %295 = icmp eq i32 %292, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %12, align 1
  %297 = and i32 %293, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %13, align 1
  %302 = xor i32 %293, %292
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %14, align 1
  %306 = icmp eq i32 %293, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %15, align 1
  %308 = lshr i32 %293, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %16, align 1
  %310 = lshr i32 %292, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %310
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %17, align 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i128 = bitcast %union.anon* %315 to i32*
  %316 = getelementptr inbounds %union.anon, %union.anon* %315, i64 0, i32 0
  %317 = add i64 %288, -4
  %318 = add i64 %289, 7
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %316, align 8
  %322 = add i64 %288, -44
  %323 = add i64 %289, 10
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  store i32 %293, i32* %324, align 4
  %325 = load i32, i32* %R8D.i128, align 4
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %3, align 8
  store i64 %326, i64* %RAX.i153, align 8
  %328 = sext i32 %325 to i64
  %329 = lshr i64 %328, 32
  store i64 %329, i64* %263, align 8
  %330 = load i32, i32* %ECX.i144.pre-phi, align 4
  %331 = add i64 %327, 6
  store i64 %331, i64* %3, align 8
  %332 = sext i32 %330 to i64
  %333 = shl nuw i64 %329, 32
  %334 = or i64 %333, %326
  %335 = sdiv i64 %334, %332
  %336 = shl i64 %335, 32
  %337 = ashr exact i64 %336, 32
  %338 = icmp eq i64 %335, %337
  br i1 %338, label %341, label %339

; <label>:339:                                    ; preds = %routine_idivl__ecx.exit134
  %340 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %331, %struct.Memory* %291)
  %.pre13 = load i64, i64* %RDX.i155, align 8
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit117

; <label>:341:                                    ; preds = %routine_idivl__ecx.exit134
  %342 = srem i64 %334, %332
  %343 = and i64 %335, 4294967295
  store i64 %343, i64* %RAX.i153, align 8
  %344 = and i64 %342, 4294967295
  store i64 %344, i64* %RDX.i155, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit117

routine_idivl__ecx.exit117:                       ; preds = %341, %339
  %345 = phi i64 [ %.pre14, %339 ], [ %331, %341 ]
  %346 = phi i64 [ %.pre13, %339 ], [ %344, %341 ]
  %347 = phi %struct.Memory* [ %340, %339 ], [ %291, %341 ]
  %348 = trunc i64 %346 to i32
  %349 = add i32 %348, -1
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RDX.i155, align 8
  %351 = icmp eq i32 %348, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %12, align 1
  %353 = and i32 %349, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %13, align 1
  %358 = xor i32 %349, %348
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %14, align 1
  %362 = icmp eq i32 %349, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %15, align 1
  %364 = lshr i32 %349, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %16, align 1
  %366 = lshr i32 %348, 31
  %367 = xor i32 %364, %366
  %368 = add nuw nsw i32 %367, %366
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %17, align 1
  %R9.i112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -40
  %373 = add i64 %345, 7
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %R9.i112, align 8
  %376 = add i64 %371, -48
  %377 = add i64 %345, 10
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  store i32 %349, i32* %378, align 4
  %379 = load i64, i64* %R9.i112, align 8
  %380 = load i64, i64* %3, align 8
  store i64 %379, i64* %RDX.i155, align 8
  %381 = load i64, i64* %RBP.i, align 8
  %382 = add i64 %381, -44
  %383 = add i64 %380, 6
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RCX.i150.pre-phi, align 8
  %387 = add i64 %381, -48
  %388 = add i64 %380, 10
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %316, align 8
  %392 = add i64 %380, 278104
  %393 = add i64 %380, 15
  %394 = load i64, i64* %6, align 8
  %395 = add i64 %394, -8
  %396 = inttoptr i64 %395 to i64*
  store i64 %393, i64* %396, align 8
  store i64 %395, i64* %6, align 8
  store i64 %392, i64* %3, align 8
  %call2_40e242 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %392, %struct.Memory* %347)
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_40e247

block_.L_40e247:                                  ; preds = %routine_idivl__ecx.exit117, %block_40e1e9
  %ECX.i90.pre-phi = phi i32* [ %ECX.i144.pre-phi, %routine_idivl__ecx.exit117 ], [ %ECX.i163, %block_40e1e9 ]
  %RCX.i93.pre-phi = phi i64* [ %RCX.i150.pre-phi, %routine_idivl__ecx.exit117 ], [ %RCX.i166, %block_40e1e9 ]
  %RAX.i95.pre-phi = phi i64* [ %RAX.i153, %routine_idivl__ecx.exit117 ], [ %.pre25, %block_40e1e9 ]
  %.pre-phi = phi %union.anon* [ %247, %routine_idivl__ecx.exit117 ], [ %.pre24, %block_40e1e9 ]
  %397 = phi i64 [ %.pre16, %routine_idivl__ecx.exit117 ], [ %245, %block_40e1e9 ]
  %398 = phi i64 [ %.pre15, %routine_idivl__ecx.exit117 ], [ %191, %block_40e1e9 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_40e242, %routine_idivl__ecx.exit117 ], [ %MEMORY.0, %block_40e1e9 ]
  %399 = add i64 %398, -4
  %400 = add i64 %397, 4
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %RAX.i95.pre-phi, align 8
  %404 = add nsw i64 %403, 12099168
  %405 = add i64 %397, 12
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i8*
  %407 = load i8, i8* %406, align 1
  %408 = zext i8 %407 to i64
  store i64 %408, i64* %RCX.i93.pre-phi, align 8
  %409 = zext i8 %407 to i32
  %410 = add nsw i32 %409, -1
  %411 = icmp eq i8 %407, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %12, align 1
  %413 = and i32 %410, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %13, align 1
  %418 = xor i32 %410, %409
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %14, align 1
  %422 = icmp eq i32 %410, 0
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %15, align 1
  %424 = lshr i32 %410, 31
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v35 = select i1 %422, i64 42, i64 21
  %426 = add i64 %397, %.v35
  store i64 %426, i64* %3, align 8
  br i1 %422, label %block_.L_40e271, label %block_40e25c

block_40e25c:                                     ; preds = %block_.L_40e247
  %427 = add i64 %426, 4
  store i64 %427, i64* %3, align 8
  %428 = load i32, i32* %401, align 4
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %RAX.i95.pre-phi, align 8
  %430 = add nsw i64 %429, 12099168
  %431 = add i64 %426, 12
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i8*
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i64
  store i64 %434, i64* %RCX.i93.pre-phi, align 8
  %435 = zext i8 %433 to i32
  %436 = add nsw i32 %435, -2
  %437 = icmp ult i8 %433, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %12, align 1
  %439 = and i32 %436, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %13, align 1
  %444 = xor i32 %436, %435
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %14, align 1
  %448 = icmp eq i32 %436, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %15, align 1
  %450 = lshr i32 %436, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v36 = select i1 %448, i64 21, i64 26
  %452 = add i64 %426, %.v36
  store i64 %452, i64* %3, align 8
  br i1 %448, label %block_.L_40e271, label %block_.L_40e276

block_.L_40e271:                                  ; preds = %block_40e25c, %block_.L_40e247
  %453 = phi i64 [ %452, %block_40e25c ], [ %426, %block_.L_40e247 ]
  %454 = add i64 %453, 94
  store i64 %454, i64* %3, align 8
  %.pre27 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %.pre28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_40e2cf

block_.L_40e276:                                  ; preds = %block_40e25c
  %RDI.i77 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i77, align 8
  %RSI.i75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 843, i64* %RSI.i75, align 8
  %RDX.i73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a451_type* @G__0x57a451 to i64), i64* %RDX.i73, align 8
  store i64 20, i64* %RAX.i95.pre-phi, align 8
  %455 = add i64 %452, 33
  store i64 %455, i64* %3, align 8
  %456 = load i32, i32* %401, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RCX.i93.pre-phi, align 8
  %EAX.i65 = bitcast %union.anon* %.pre-phi to i32*
  %458 = add i64 %398, -52
  %459 = add i64 %452, 36
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 20, i32* %460, align 4
  %461 = load i32, i32* %ECX.i90.pre-phi, align 4
  %462 = zext i32 %461 to i64
  %463 = load i64, i64* %3, align 8
  store i64 %462, i64* %RAX.i95.pre-phi, align 8
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -64
  %466 = load i64, i64* %RDX.i73, align 8
  %467 = add i64 %463, 6
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %465 to i64*
  store i64 %466, i64* %468, align 8
  %469 = load i64, i64* %3, align 8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %471 = load i32, i32* %EAX.i65, align 8
  %472 = sext i32 %471 to i64
  %473 = lshr i64 %472, 32
  store i64 %473, i64* %470, align 8
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -52
  %476 = add i64 %469, 4
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RCX.i93.pre-phi, align 8
  %480 = add i64 %469, 6
  store i64 %480, i64* %3, align 8
  %481 = zext i32 %471 to i64
  %482 = sext i32 %478 to i64
  %483 = shl nuw i64 %473, 32
  %484 = or i64 %483, %481
  %485 = sdiv i64 %484, %482
  %486 = shl i64 %485, 32
  %487 = ashr exact i64 %486, 32
  %488 = icmp eq i64 %485, %487
  br i1 %488, label %491, label %489

; <label>:489:                                    ; preds = %block_.L_40e276
  %490 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %480, %struct.Memory* %MEMORY.2)
  %.pre17 = load i64, i64* %RAX.i95.pre-phi, align 8
  %.pre18 = load i64, i64* %3, align 8
  %.pre19 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit51

; <label>:491:                                    ; preds = %block_.L_40e276
  %492 = srem i64 %484, %482
  %493 = and i64 %485, 4294967295
  store i64 %493, i64* %RAX.i95.pre-phi, align 8
  %494 = and i64 %492, 4294967295
  store i64 %494, i64* %RDX.i73, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit51

routine_idivl__ecx.exit51:                        ; preds = %491, %489
  %495 = phi i64 [ %.pre19, %489 ], [ %474, %491 ]
  %496 = phi i64 [ %.pre18, %489 ], [ %480, %491 ]
  %497 = phi i64 [ %.pre17, %489 ], [ %493, %491 ]
  %498 = phi %struct.Memory* [ %490, %489 ], [ %MEMORY.2, %491 ]
  %499 = trunc i64 %497 to i32
  %500 = add i32 %499, -1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX.i95.pre-phi, align 8
  %502 = icmp eq i32 %499, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %12, align 1
  %504 = and i32 %500, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %13, align 1
  %509 = xor i32 %500, %499
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %14, align 1
  %513 = icmp eq i32 %500, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %15, align 1
  %515 = lshr i32 %500, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %16, align 1
  %517 = lshr i32 %499, 31
  %518 = xor i32 %515, %517
  %519 = add nuw nsw i32 %518, %517
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %17, align 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i45 = bitcast %union.anon* %522 to i32*
  %523 = getelementptr inbounds %union.anon, %union.anon* %522, i64 0, i32 0
  %524 = add i64 %495, -4
  %525 = add i64 %496, 7
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %523, align 8
  %529 = add i64 %495, -68
  %530 = add i64 %496, 10
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  store i32 %500, i32* %531, align 4
  %532 = load i32, i32* %R8D.i45, align 4
  %533 = zext i32 %532 to i64
  %534 = load i64, i64* %3, align 8
  store i64 %533, i64* %RAX.i95.pre-phi, align 8
  %535 = add i64 %534, 4
  store i64 %535, i64* %3, align 8
  %536 = sext i32 %532 to i64
  %537 = lshr i64 %536, 32
  store i64 %537, i64* %470, align 8
  %538 = load i32, i32* %ECX.i90.pre-phi, align 4
  %539 = add i64 %534, 6
  store i64 %539, i64* %3, align 8
  %540 = sext i32 %538 to i64
  %541 = shl nuw i64 %537, 32
  %542 = or i64 %541, %533
  %543 = sdiv i64 %542, %540
  %544 = shl i64 %543, 32
  %545 = ashr exact i64 %544, 32
  %546 = icmp eq i64 %543, %545
  br i1 %546, label %549, label %547

; <label>:547:                                    ; preds = %routine_idivl__ecx.exit51
  %548 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %539, %struct.Memory* %498)
  %.pre20 = load i64, i64* %RDX.i73, align 8
  %.pre21 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:549:                                    ; preds = %routine_idivl__ecx.exit51
  %550 = srem i64 %542, %540
  %551 = and i64 %543, 4294967295
  store i64 %551, i64* %RAX.i95.pre-phi, align 8
  %552 = and i64 %550, 4294967295
  store i64 %552, i64* %RDX.i73, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %549, %547
  %553 = phi i64 [ %.pre21, %547 ], [ %539, %549 ]
  %554 = phi i64 [ %.pre20, %547 ], [ %552, %549 ]
  %555 = phi %struct.Memory* [ %548, %547 ], [ %498, %549 ]
  %556 = trunc i64 %554 to i32
  %557 = add i32 %556, -1
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RDX.i73, align 8
  %559 = icmp eq i32 %556, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %12, align 1
  %561 = and i32 %557, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %13, align 1
  %566 = xor i32 %557, %556
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %14, align 1
  %570 = icmp eq i32 %557, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %15, align 1
  %572 = lshr i32 %557, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %16, align 1
  %574 = lshr i32 %556, 31
  %575 = xor i32 %572, %574
  %576 = add nuw nsw i32 %575, %574
  %577 = icmp eq i32 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %17, align 1
  %R9.i31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -64
  %581 = add i64 %553, 7
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %R9.i31, align 8
  %584 = add i64 %579, -72
  %585 = add i64 %553, 10
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  store i32 %557, i32* %586, align 4
  %587 = load i64, i64* %R9.i31, align 8
  %588 = load i64, i64* %3, align 8
  store i64 %587, i64* %RDX.i73, align 8
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -68
  %591 = add i64 %588, 6
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RCX.i93.pre-phi, align 8
  %595 = add i64 %589, -72
  %596 = add i64 %588, 10
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %523, align 8
  %600 = add i64 %588, 277968
  %601 = add i64 %588, 15
  %602 = load i64, i64* %6, align 8
  %603 = add i64 %602, -8
  %604 = inttoptr i64 %603 to i64*
  store i64 %601, i64* %604, align 8
  store i64 %603, i64* %6, align 8
  store i64 %600, i64* %3, align 8
  %call2_40e2ca = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %600, %struct.Memory* %555)
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40e2cf

block_.L_40e2cf:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_40e271
  %RDX.i.pre-phi = phi i64* [ %470, %routine_idivl__ecx.exit ], [ %.pre29, %block_.L_40e271 ]
  %RSI.i.pre-phi = phi i64* [ %RSI.i75, %routine_idivl__ecx.exit ], [ %.pre28, %block_.L_40e271 ]
  %RDI.i.pre-phi = phi i64* [ %RDI.i77, %routine_idivl__ecx.exit ], [ %.pre27, %block_.L_40e271 ]
  %605 = phi i64 [ %.pre23, %routine_idivl__ecx.exit ], [ %398, %block_.L_40e271 ]
  %606 = phi i64 [ %.pre22, %routine_idivl__ecx.exit ], [ %454, %block_.L_40e271 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_40e2ca, %routine_idivl__ecx.exit ], [ %MEMORY.2, %block_.L_40e271 ]
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i.pre-phi, align 8
  %607 = add i64 %605, -4
  %608 = add i64 %606, 13
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RSI.i.pre-phi, align 8
  %612 = add i64 %606, 17
  store i64 %612, i64* %3, align 8
  %613 = load i32, i32* %609, align 4
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %RAX.i95.pre-phi, align 8
  %615 = add nsw i64 %614, 12099168
  %616 = add i64 %606, 25
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i8*
  %618 = load i8, i8* %617, align 1
  %619 = zext i8 %618 to i64
  store i64 %619, i64* %RDX.i.pre-phi, align 8
  %620 = add i64 %606, 108705
  %621 = add i64 %606, 30
  %622 = load i64, i64* %6, align 8
  %623 = add i64 %622, -8
  %624 = inttoptr i64 %623 to i64*
  store i64 %621, i64* %624, align 8
  store i64 %623, i64* %6, align 8
  store i64 %620, i64* %3, align 8
  %call2_40e2e8 = tail call %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* nonnull %0, i64 %620, %struct.Memory* %MEMORY.4)
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -4
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 4
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %626 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  store i64 %631, i64* %RAX.i95.pre-phi, align 8
  %632 = add nsw i64 %631, 12099168
  %633 = add i64 %627, 12
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i8*
  store i8 0, i8* %634, align 1
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, -521
  %637 = add i64 %635, 5
  %638 = load i64, i64* %6, align 8
  %639 = add i64 %638, -8
  %640 = inttoptr i64 %639 to i64*
  store i64 %637, i64* %640, align 8
  store i64 %639, i64* %6, align 8
  store i64 %636, i64* %3, align 8
  %call2_40e2f9 = tail call %struct.Memory* @sub_40e0f0.reset_move_history(%struct.State* nonnull %0, i64 %636, %struct.Memory* %call2_40e2e8)
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, -25134
  %643 = add i64 %641, 5
  %644 = load i64, i64* %6, align 8
  %645 = add i64 %644, -8
  %646 = inttoptr i64 %645 to i64*
  store i64 %643, i64* %646, align 8
  store i64 %645, i64* %6, align 8
  store i64 %642, i64* %3, align 8
  %call2_40e2fe = tail call %struct.Memory* @sub_4080d0.new_position(%struct.State* nonnull %0, i64 %642, %struct.Memory* %call2_40e2f9)
  %647 = load i64, i64* %6, align 8
  %648 = load i64, i64* %3, align 8
  %649 = add i64 %647, 80
  store i64 %649, i64* %6, align 8
  %650 = icmp ugt i64 %647, -81
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %12, align 1
  %652 = trunc i64 %649 to i32
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %13, align 1
  %658 = xor i64 %647, 16
  %659 = xor i64 %658, %649
  %660 = lshr i64 %659, 4
  %661 = trunc i64 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %14, align 1
  %663 = icmp eq i64 %649, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %15, align 1
  %665 = lshr i64 %649, 63
  %666 = trunc i64 %665 to i8
  store i8 %666, i8* %16, align 1
  %667 = lshr i64 %647, 63
  %668 = xor i64 %665, %667
  %669 = add nuw nsw i64 %668, %665
  %670 = icmp eq i64 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %17, align 1
  %672 = add i64 %648, 5
  store i64 %672, i64* %3, align 8
  %673 = add i64 %647, 88
  %674 = inttoptr i64 %649 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RBP.i, align 8
  store i64 %673, i64* %6, align 8
  %676 = add i64 %648, 6
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %673 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %3, align 8
  %679 = add i64 %647, 96
  store i64 %679, i64* %6, align 8
  ret %struct.Memory* %call2_40e2fe
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40e16e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40e1c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x349___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 841, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_40e1ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_je_.L_40e1ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40e247(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x34a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 842, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a49b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_je_.L_40e271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40e276(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40e2cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x34b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 843, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a451___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a451_type* @G__0x57a451 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
define %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.hashdata_invert_stone(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__0xb89e60___rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.reset_move_history(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.new_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
