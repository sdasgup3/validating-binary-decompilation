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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_ZN31custom_divide_multiple_variableIlE8do_shiftElllll(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #0 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI.i, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %3, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -24
  %23 = load i64, i64* %RDX.i, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %26, align 8
  %RCX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %27 = load i64, i64* %RBP.i, align 8
  %28 = add i64 %27, -32
  %29 = load i64, i64* %RCX.i, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %28 to i64*
  store i64 %29, i64* %32, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %33 = load i64, i64* %RBP.i, align 8
  %34 = add i64 %33, -40
  %35 = load i64, i64* %R8.i, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 4
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %34 to i64*
  store i64 %35, i64* %38, align 8
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RAX.i, align 8
  %45 = ashr i64 %44, 63
  store i64 %45, i64* %RDX.i, align 8
  %46 = add i64 %39, -16
  %47 = add i64 %41, 10
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = sext i64 %49 to i128
  %51 = and i128 %50, -18446744073709551616
  %52 = zext i64 %45 to i128
  %53 = shl nuw i128 %52, 64
  %54 = zext i64 %44 to i128
  %55 = or i128 %54, %53
  %56 = zext i64 %49 to i128
  %57 = or i128 %51, %56
  %58 = sdiv i128 %55, %57
  %59 = trunc i128 %58 to i64
  %60 = and i128 %58, 18446744073709551615
  %61 = sext i64 %59 to i128
  %62 = and i128 %61, -18446744073709551616
  %63 = or i128 %62, %60
  %64 = icmp eq i128 %58, %63
  br i1 %64, label %67, label %65

; <label>:65:                                     ; preds = %entry
  %66 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %47, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  %.pre1 = load i64, i64* %RAX.i, align 8
  %.pre2 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x10__rbp_.exit

; <label>:67:                                     ; preds = %entry
  %68 = srem i128 %55, %57
  %69 = trunc i128 %68 to i64
  store i64 %59, i64* %RAX.i, align 8
  store i64 %69, i64* %RDX.i, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %71, align 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %73, align 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %75, align 1
  br label %routine_idivq_MINUS0x10__rbp_.exit

routine_idivq_MINUS0x10__rbp_.exit:               ; preds = %67, %65
  %76 = phi i64 [ %.pre2, %65 ], [ %39, %67 ]
  %77 = phi i64 [ %.pre1, %65 ], [ %59, %67 ]
  %78 = phi i64 [ %.pre, %65 ], [ %47, %67 ]
  %79 = phi %struct.Memory* [ %66, %65 ], [ %2, %67 ]
  %80 = ashr i64 %77, 63
  store i64 %80, i64* %RDX.i, align 8
  %81 = add i64 %76, -24
  %82 = add i64 %78, 6
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = sext i64 %84 to i128
  %86 = and i128 %85, -18446744073709551616
  %87 = zext i64 %80 to i128
  %88 = shl nuw i128 %87, 64
  %89 = zext i64 %77 to i128
  %90 = or i128 %89, %88
  %91 = zext i64 %84 to i128
  %92 = or i128 %86, %91
  %93 = sdiv i128 %90, %92
  %94 = trunc i128 %93 to i64
  %95 = and i128 %93, 18446744073709551615
  %96 = sext i64 %94 to i128
  %97 = and i128 %96, -18446744073709551616
  %98 = or i128 %97, %95
  %99 = icmp eq i128 %93, %98
  br i1 %99, label %102, label %100

; <label>:100:                                    ; preds = %routine_idivq_MINUS0x10__rbp_.exit
  %101 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %82, %struct.Memory* %79)
  %.pre3 = load i64, i64* %3, align 8
  %.pre4 = load i64, i64* %RAX.i, align 8
  %.pre5 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x18__rbp_.exit

; <label>:102:                                    ; preds = %routine_idivq_MINUS0x10__rbp_.exit
  %103 = srem i128 %90, %92
  %104 = trunc i128 %103 to i64
  store i64 %94, i64* %RAX.i, align 8
  store i64 %104, i64* %RDX.i, align 8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %106, align 1
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %107, align 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %108, align 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %109, align 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1
  br label %routine_idivq_MINUS0x18__rbp_.exit

routine_idivq_MINUS0x18__rbp_.exit:               ; preds = %102, %100
  %111 = phi i64 [ %.pre5, %100 ], [ %76, %102 ]
  %112 = phi i64 [ %.pre4, %100 ], [ %94, %102 ]
  %113 = phi i64 [ %.pre3, %100 ], [ %82, %102 ]
  %114 = phi %struct.Memory* [ %101, %100 ], [ %79, %102 ]
  %115 = ashr i64 %112, 63
  store i64 %115, i64* %RDX.i, align 8
  %116 = add i64 %111, -32
  %117 = add i64 %113, 6
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = sext i64 %119 to i128
  %121 = and i128 %120, -18446744073709551616
  %122 = zext i64 %115 to i128
  %123 = shl nuw i128 %122, 64
  %124 = zext i64 %112 to i128
  %125 = or i128 %124, %123
  %126 = zext i64 %119 to i128
  %127 = or i128 %121, %126
  %128 = sdiv i128 %125, %127
  %129 = trunc i128 %128 to i64
  %130 = and i128 %128, 18446744073709551615
  %131 = sext i64 %129 to i128
  %132 = and i128 %131, -18446744073709551616
  %133 = or i128 %132, %130
  %134 = icmp eq i128 %128, %133
  br i1 %134, label %137, label %135

; <label>:135:                                    ; preds = %routine_idivq_MINUS0x18__rbp_.exit
  %136 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %117, %struct.Memory* %114)
  %.pre6 = load i64, i64* %3, align 8
  %.pre7 = load i64, i64* %RAX.i, align 8
  %.pre8 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x20__rbp_.exit

; <label>:137:                                    ; preds = %routine_idivq_MINUS0x18__rbp_.exit
  %138 = srem i128 %125, %127
  %139 = trunc i128 %138 to i64
  store i64 %129, i64* %RAX.i, align 8
  store i64 %139, i64* %RDX.i, align 8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %140, align 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %141, align 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %142, align 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %143, align 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %144, align 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %145, align 1
  br label %routine_idivq_MINUS0x20__rbp_.exit

routine_idivq_MINUS0x20__rbp_.exit:               ; preds = %137, %135
  %146 = phi i64 [ %.pre8, %135 ], [ %111, %137 ]
  %147 = phi i64 [ %.pre7, %135 ], [ %129, %137 ]
  %148 = phi i64 [ %.pre6, %135 ], [ %117, %137 ]
  %149 = phi %struct.Memory* [ %136, %135 ], [ %114, %137 ]
  %150 = ashr i64 %147, 63
  store i64 %150, i64* %RDX.i, align 8
  %151 = add i64 %146, -40
  %152 = add i64 %148, 6
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = sext i64 %154 to i128
  %156 = and i128 %155, -18446744073709551616
  %157 = zext i64 %150 to i128
  %158 = shl nuw i128 %157, 64
  %159 = zext i64 %147 to i128
  %160 = or i128 %159, %158
  %161 = zext i64 %154 to i128
  %162 = or i128 %156, %161
  %163 = sdiv i128 %160, %162
  %164 = trunc i128 %163 to i64
  %165 = and i128 %163, 18446744073709551615
  %166 = sext i64 %164 to i128
  %167 = and i128 %166, -18446744073709551616
  %168 = or i128 %167, %165
  %169 = icmp eq i128 %163, %168
  br i1 %169, label %172, label %170

; <label>:170:                                    ; preds = %routine_idivq_MINUS0x20__rbp_.exit
  %171 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %152, %struct.Memory* %149)
  %.pre9 = load i64, i64* %3, align 8
  br label %routine_idivq_MINUS0x28__rbp_.exit

; <label>:172:                                    ; preds = %routine_idivq_MINUS0x20__rbp_.exit
  %173 = srem i128 %160, %162
  %174 = trunc i128 %173 to i64
  store i64 %164, i64* %RAX.i, align 8
  store i64 %174, i64* %RDX.i, align 8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %175, align 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %176, align 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %177, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %178, align 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %179, align 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %180, align 1
  br label %routine_idivq_MINUS0x28__rbp_.exit

routine_idivq_MINUS0x28__rbp_.exit:               ; preds = %172, %170
  %181 = phi i64 [ %.pre9, %170 ], [ %152, %172 ]
  %182 = phi %struct.Memory* [ %171, %170 ], [ %149, %172 ]
  %183 = add i64 %181, 1
  store i64 %183, i64* %3, align 8
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %RBP.i, align 8
  store i64 %185, i64* %6, align 8
  %188 = add i64 %181, 2
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %185 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %3, align 8
  %191 = add i64 %184, 16
  store i64 %191, i64* %6, align 8
  ret %struct.Memory* %182
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

define %struct.Memory* @routine_idivq_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sext i64 %12 to i128
  %14 = and i128 %13, -18446744073709551616
  %15 = zext i64 %10 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %8 to i128
  %18 = or i128 %16, %17
  %19 = zext i64 %12 to i128
  %20 = or i128 %14, %19
  %21 = sdiv i128 %18, %20
  %22 = trunc i128 %21 to i64
  %23 = and i128 %21, 18446744073709551615
  %24 = sext i64 %22 to i128
  %25 = and i128 %24, -18446744073709551616
  %26 = or i128 %25, %23
  %27 = icmp eq i128 %21, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %block_400488
  %29 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:30:                                     ; preds = %block_400488
  %31 = srem i128 %18, %20
  %32 = trunc i128 %31 to i64
  store i64 %22, i64* %7, align 8
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %28
  %39 = phi %struct.Memory* [ %29, %28 ], [ %2, %30 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_idivq_MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sext i64 %12 to i128
  %14 = and i128 %13, -18446744073709551616
  %15 = zext i64 %10 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %8 to i128
  %18 = or i128 %16, %17
  %19 = zext i64 %12 to i128
  %20 = or i128 %14, %19
  %21 = sdiv i128 %18, %20
  %22 = trunc i128 %21 to i64
  %23 = and i128 %21, 18446744073709551615
  %24 = sext i64 %22 to i128
  %25 = and i128 %24, -18446744073709551616
  %26 = or i128 %25, %23
  %27 = icmp eq i128 %21, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %block_400488
  %29 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:30:                                     ; preds = %block_400488
  %31 = srem i128 %18, %20
  %32 = trunc i128 %31 to i64
  store i64 %22, i64* %7, align 8
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %28
  %39 = phi %struct.Memory* [ %29, %28 ], [ %2, %30 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_idivq_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sext i64 %12 to i128
  %14 = and i128 %13, -18446744073709551616
  %15 = zext i64 %10 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %8 to i128
  %18 = or i128 %16, %17
  %19 = zext i64 %12 to i128
  %20 = or i128 %14, %19
  %21 = sdiv i128 %18, %20
  %22 = trunc i128 %21 to i64
  %23 = and i128 %21, 18446744073709551615
  %24 = sext i64 %22 to i128
  %25 = and i128 %24, -18446744073709551616
  %26 = or i128 %25, %23
  %27 = icmp eq i128 %21, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %block_400488
  %29 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:30:                                     ; preds = %block_400488
  %31 = srem i128 %18, %20
  %32 = trunc i128 %31 to i64
  store i64 %22, i64* %7, align 8
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %28
  %39 = phi %struct.Memory* [ %29, %28 ], [ %2, %30 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_idivq_MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sext i64 %12 to i128
  %14 = and i128 %13, -18446744073709551616
  %15 = zext i64 %10 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %8 to i128
  %18 = or i128 %16, %17
  %19 = zext i64 %12 to i128
  %20 = or i128 %14, %19
  %21 = sdiv i128 %18, %20
  %22 = trunc i128 %21 to i64
  %23 = and i128 %21, 18446744073709551615
  %24 = sext i64 %22 to i128
  %25 = and i128 %24, -18446744073709551616
  %26 = or i128 %25, %23
  %27 = icmp eq i128 %21, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %block_400488
  %29 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:30:                                     ; preds = %block_400488
  %31 = srem i128 %18, %20
  %32 = trunc i128 %31 to i64
  store i64 %22, i64* %7, align 8
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %28
  %39 = phi %struct.Memory* [ %29, %28 ], [ %2, %30 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

attributes #0 = { alwaysinline }
attributes #1 = { norecurse nounwind }
