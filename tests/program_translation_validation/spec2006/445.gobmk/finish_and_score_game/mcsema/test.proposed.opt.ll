; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0x7b0568_type = type <{ [4 x i8] }>
%G_0xab0fbc_type = type <{ [4 x i8] }>
%G_0xaf3454_type = type <{ [16 x i8] }>
%G_0xb454f8_type = type <{ [4 x i8] }>
%G__0xaf2900_type = type <{ [8 x i8] }>
%G__0xaf2eb0_type = type <{ [8 x i8] }>
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
@G_0x7b0568 = local_unnamed_addr global %G_0x7b0568_type zeroinitializer
@G_0xab0fbc = local_unnamed_addr global %G_0xab0fbc_type zeroinitializer
@G_0xaf3454 = local_unnamed_addr global %G_0xaf3454_type zeroinitializer
@G_0xb454f8 = local_unnamed_addr global %G_0xb454f8_type zeroinitializer
@G__0xaf2900 = global %G__0xaf2900_type zeroinitializer
@G__0xaf2eb0 = global %G__0xaf2eb0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_407d50.store_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ea70.get_last_player(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ca0.genmove_conservative(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e310.play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406f80.aftermath_compute_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407c90.aftermath_final_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407f00.restore_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @finish_and_score_game(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -6376
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 6368
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i834 = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i834, align 4
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -28
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 0, i32* %53, align 4
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -6364
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 10
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i32*
  store i32 1, i32* %58, align 4
  %RDI.i826 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*), align 8
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RDI.i826, align 8
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -4
  %64 = add i64 %59, 10
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %60, %66
  %68 = icmp ult i32 %60, %66
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %14, align 1
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %21, align 1
  %75 = xor i32 %66, %60
  %76 = xor i32 %75, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %26, align 1
  %80 = icmp eq i32 %67, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %29, align 1
  %82 = lshr i32 %67, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %32, align 1
  %84 = lshr i32 %60, 31
  %85 = lshr i32 %66, 31
  %86 = xor i32 %85, %84
  %87 = xor i32 %82, %84
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %38, align 1
  %.v71 = select i1 %80, i64 36, i64 16
  %91 = add i64 %59, %.v71
  store i64 %91, i64* %3, align 8
  %.pre65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre66 = getelementptr inbounds %union.anon, %union.anon* %.pre65, i64 0, i32 0
  br i1 %80, label %block_.L_498b2a, label %block_498b16

block_498b16:                                     ; preds = %entry
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = load i32, i32* %65, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %.pre66, align 8
  store i32 %93, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*), align 8
  %95 = add i64 %62, -6364
  %96 = add i64 %91, 20
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 0, i32* %97, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_498b2a

block_.L_498b2a:                                  ; preds = %entry, %block_498b16
  %98 = phi i64 [ %.pre50, %block_498b16 ], [ %91, %entry ]
  %99 = phi i64 [ %.pre, %block_498b16 ], [ %62, %entry ]
  %EAX.i809.pre-phi = bitcast %union.anon* %.pre65 to i32*
  %100 = add i64 %99, -12
  %101 = add i64 %98, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i795 = getelementptr inbounds %union.anon, %union.anon* %103, i64 0, i32 0
  %RDX.i788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_498b31

block_.L_498b31:                                  ; preds = %block_.L_498bdd, %block_.L_498b2a
  %104 = phi i64 [ %479, %block_.L_498bdd ], [ %.pre51, %block_.L_498b2a ]
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -12
  %107 = add i64 %104, 3
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %.pre66, align 8
  %111 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %112 = sub i32 %109, %111
  %113 = icmp ult i32 %109, %111
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %14, align 1
  %115 = and i32 %112, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %21, align 1
  %120 = xor i32 %111, %109
  %121 = xor i32 %120, %112
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %26, align 1
  %125 = icmp eq i32 %112, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %29, align 1
  %127 = lshr i32 %112, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %32, align 1
  %129 = lshr i32 %109, 31
  %130 = lshr i32 %111, 31
  %131 = xor i32 %130, %129
  %132 = xor i32 %127, %129
  %133 = add nuw nsw i32 %132, %131
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %38, align 1
  %136 = icmp ne i8 %128, 0
  %137 = xor i1 %136, %134
  %.v72 = select i1 %137, i64 16, i64 191
  %138 = add i64 %104, %.v72
  store i64 %138, i64* %3, align 8
  br i1 %137, label %block_498b41, label %block_.L_498bf0

block_498b41:                                     ; preds = %block_.L_498b31
  %139 = add i64 %105, -16
  %140 = add i64 %138, 7
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 0, i32* %141, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_498b48

block_.L_498b48:                                  ; preds = %block_.L_498bca, %block_498b41
  %142 = phi i64 [ %449, %block_.L_498bca ], [ %.pre63, %block_498b41 ]
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -16
  %145 = add i64 %142, 3
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %.pre66, align 8
  %149 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %150 = sub i32 %147, %149
  %151 = icmp ult i32 %147, %149
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %14, align 1
  %153 = and i32 %150, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %21, align 1
  %158 = xor i32 %149, %147
  %159 = xor i32 %158, %150
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %26, align 1
  %163 = icmp eq i32 %150, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %29, align 1
  %165 = lshr i32 %150, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %32, align 1
  %167 = lshr i32 %147, 31
  %168 = lshr i32 %149, 31
  %169 = xor i32 %168, %167
  %170 = xor i32 %165, %167
  %171 = add nuw nsw i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %38, align 1
  %174 = icmp ne i8 %166, 0
  %175 = xor i1 %174, %172
  %.v70 = select i1 %175, i64 16, i64 149
  %176 = add i64 %142, %.v70
  store i64 %176, i64* %3, align 8
  br i1 %175, label %block_498b58, label %block_.L_498bdd

block_498b58:                                     ; preds = %block_.L_498b48
  store i64 ptrtoint (%G__0xaf2eb0_type* @G__0xaf2eb0 to i64), i64* %.pre66, align 8
  %177 = add i64 %143, -12
  %178 = add i64 %176, 14
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = mul i32 %180, 20
  %182 = add i32 %181, 21
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RCX.i795, align 8
  %184 = icmp ugt i32 %181, -22
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %14, align 1
  %186 = and i32 %182, 253
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %21, align 1
  %191 = xor i32 %181, 16
  %192 = xor i32 %191, %182
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %196 = lshr i32 %182, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %32, align 1
  %198 = lshr i32 %181, 31
  %199 = xor i32 %196, %198
  %200 = add nuw nsw i32 %199, %196
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %38, align 1
  %203 = add i64 %176, 20
  store i64 %203, i64* %3, align 8
  %204 = load i32, i32* %146, align 4
  %205 = add i32 %204, %182
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RCX.i795, align 8
  %207 = icmp ult i32 %205, %182
  %208 = icmp ult i32 %205, %204
  %209 = or i1 %207, %208
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %14, align 1
  %211 = and i32 %205, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  %216 = xor i32 %204, %182
  %217 = xor i32 %216, %205
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %26, align 1
  %221 = icmp eq i32 %205, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %29, align 1
  %223 = lshr i32 %205, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %32, align 1
  %225 = lshr i32 %204, 31
  %226 = xor i32 %223, %196
  %227 = xor i32 %223, %225
  %228 = add nuw nsw i32 %226, %227
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %38, align 1
  %231 = sext i32 %205 to i64
  store i64 %231, i64* %RDX.i788, align 8
  %232 = add nsw i64 %231, 12099168
  %233 = add i64 %176, 31
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i8*
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i64
  store i64 %236, i64* %RCX.i795, align 8
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -12
  %239 = add i64 %176, 35
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = mul nsw i64 %242, 76
  store i64 %243, i64* %RDX.i788, align 8
  %244 = lshr i64 %243, 63
  %245 = load i64, i64* %.pre66, align 8
  %246 = add i64 %243, %245
  store i64 %246, i64* %.pre66, align 8
  %247 = icmp ult i64 %246, %245
  %248 = icmp ult i64 %246, %243
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %14, align 1
  %251 = trunc i64 %246 to i32
  %252 = and i32 %251, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1
  %257 = xor i64 %243, %245
  %258 = xor i64 %257, %246
  %259 = lshr i64 %258, 4
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %26, align 1
  %262 = icmp eq i64 %246, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %29, align 1
  %264 = lshr i64 %246, 63
  %265 = trunc i64 %264 to i8
  store i8 %265, i8* %32, align 1
  %266 = lshr i64 %245, 63
  %267 = xor i64 %264, %266
  %268 = xor i64 %264, %244
  %269 = add nuw nsw i64 %267, %268
  %270 = icmp eq i64 %269, 2
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %38, align 1
  %272 = add i64 %237, -16
  %273 = add i64 %176, 46
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %RDX.i788, align 8
  %277 = zext i8 %235 to i32
  %278 = shl nsw i64 %276, 2
  %279 = add i64 %246, %278
  %280 = add i64 %176, 49
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sub i32 %277, %282
  %284 = icmp ult i32 %277, %282
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %14, align 1
  %286 = and i32 %283, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  %291 = xor i32 %282, %277
  %292 = xor i32 %291, %283
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %26, align 1
  %296 = icmp eq i32 %283, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %29, align 1
  %298 = lshr i32 %283, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %32, align 1
  %300 = lshr i32 %282, 31
  %301 = add nuw nsw i32 %298, %300
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %38, align 1
  %.v92 = select i1 %296, i64 114, i64 55
  %304 = add i64 %176, %.v92
  store i64 %304, i64* %3, align 8
  br i1 %296, label %block_.L_498bca, label %block_498b8f

block_498b8f:                                     ; preds = %block_498b58
  store i64 ptrtoint (%G__0xaf2eb0_type* @G__0xaf2eb0 to i64), i64* %.pre66, align 8
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -12
  %307 = add i64 %304, 14
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = mul i32 %309, 20
  %311 = add i32 %310, 21
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RCX.i795, align 8
  %313 = icmp ugt i32 %310, -22
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %14, align 1
  %315 = and i32 %311, 253
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %21, align 1
  %320 = xor i32 %310, 16
  %321 = xor i32 %320, %311
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %325 = lshr i32 %311, 31
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %32, align 1
  %327 = lshr i32 %310, 31
  %328 = xor i32 %325, %327
  %329 = add nuw nsw i32 %328, %325
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %38, align 1
  %332 = add i64 %305, -16
  %333 = add i64 %304, 20
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, %311
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RCX.i795, align 8
  %338 = icmp ult i32 %336, %311
  %339 = icmp ult i32 %336, %335
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %14, align 1
  %342 = and i32 %336, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  %347 = xor i32 %335, %311
  %348 = xor i32 %347, %336
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %26, align 1
  %352 = icmp eq i32 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %29, align 1
  %354 = lshr i32 %336, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %32, align 1
  %356 = lshr i32 %335, 31
  %357 = xor i32 %354, %325
  %358 = xor i32 %354, %356
  %359 = add nuw nsw i32 %357, %358
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %38, align 1
  %362 = sext i32 %336 to i64
  store i64 %362, i64* %RDX.i788, align 8
  %363 = add nsw i64 %362, 12099168
  %364 = add i64 %304, 31
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i8*
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i64
  store i64 %367, i64* %RCX.i795, align 8
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -12
  %370 = add i64 %304, 35
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = mul nsw i64 %373, 76
  store i64 %374, i64* %RDX.i788, align 8
  %375 = lshr i64 %374, 63
  %376 = load i64, i64* %.pre66, align 8
  %377 = add i64 %374, %376
  store i64 %377, i64* %.pre66, align 8
  %378 = icmp ult i64 %377, %376
  %379 = icmp ult i64 %377, %374
  %380 = or i1 %378, %379
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %14, align 1
  %382 = trunc i64 %377 to i32
  %383 = and i32 %382, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  %388 = xor i64 %374, %376
  %389 = xor i64 %388, %377
  %390 = lshr i64 %389, 4
  %391 = trunc i64 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %26, align 1
  %393 = icmp eq i64 %377, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %29, align 1
  %395 = lshr i64 %377, 63
  %396 = trunc i64 %395 to i8
  store i8 %396, i8* %32, align 1
  %397 = lshr i64 %376, 63
  %398 = xor i64 %395, %397
  %399 = xor i64 %395, %375
  %400 = add nuw nsw i64 %398, %399
  %401 = icmp eq i64 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %38, align 1
  %403 = add i64 %368, -16
  %404 = add i64 %304, 46
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %RDX.i788, align 8
  %408 = shl nsw i64 %407, 2
  %409 = add i64 %408, %377
  %410 = zext i8 %366 to i32
  %411 = add i64 %304, 49
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %412, align 4
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -6364
  %415 = load i64, i64* %3, align 8
  %416 = add i64 %415, 10
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %414 to i32*
  store i32 0, i32* %417, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_498bca

block_.L_498bca:                                  ; preds = %block_498b8f, %block_498b58
  %418 = phi i64 [ %.pre64, %block_498b8f ], [ %304, %block_498b58 ]
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -16
  %421 = add i64 %418, 8
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = add i32 %423, 1
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %.pre66, align 8
  %426 = icmp eq i32 %423, -1
  %427 = icmp eq i32 %424, 0
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %14, align 1
  %430 = and i32 %424, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %21, align 1
  %435 = xor i32 %424, %423
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %26, align 1
  %439 = zext i1 %427 to i8
  store i8 %439, i8* %29, align 1
  %440 = lshr i32 %424, 31
  %441 = trunc i32 %440 to i8
  store i8 %441, i8* %32, align 1
  %442 = lshr i32 %423, 31
  %443 = xor i32 %440, %442
  %444 = add nuw nsw i32 %443, %440
  %445 = icmp eq i32 %444, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %38, align 1
  %447 = add i64 %418, 14
  store i64 %447, i64* %3, align 8
  store i32 %424, i32* %422, align 4
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, -144
  store i64 %449, i64* %3, align 8
  br label %block_.L_498b48

block_.L_498bdd:                                  ; preds = %block_.L_498b48
  %450 = add i64 %143, -12
  %451 = add i64 %176, 8
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = add i32 %453, 1
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %.pre66, align 8
  %456 = icmp eq i32 %453, -1
  %457 = icmp eq i32 %454, 0
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %14, align 1
  %460 = and i32 %454, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %21, align 1
  %465 = xor i32 %454, %453
  %466 = lshr i32 %465, 4
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %26, align 1
  %469 = zext i1 %457 to i8
  store i8 %469, i8* %29, align 1
  %470 = lshr i32 %454, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %32, align 1
  %472 = lshr i32 %453, 31
  %473 = xor i32 %470, %472
  %474 = add nuw nsw i32 %473, %470
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %38, align 1
  %477 = add i64 %176, 14
  store i64 %477, i64* %3, align 8
  store i32 %454, i32* %452, align 4
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, -186
  store i64 %479, i64* %3, align 8
  br label %block_.L_498b31

block_.L_498bf0:                                  ; preds = %block_.L_498b31
  %480 = add i64 %105, -6364
  %481 = add i64 %138, 7
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  store i8 0, i8* %14, align 1
  %484 = and i32 %483, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %489 = icmp eq i32 %483, 0
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %29, align 1
  %491 = lshr i32 %483, 31
  %492 = trunc i32 %491 to i8
  store i8 %492, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v73 = select i1 %489, i64 18, i64 13
  %493 = add i64 %138, %.v73
  store i64 %493, i64* %3, align 8
  br i1 %489, label %block_.L_498c02, label %block_498bfd

block_498bfd:                                     ; preds = %block_.L_498bf0
  %494 = add i64 %493, 1479
  store i64 %494, i64* %3, align 8
  br label %block_.L_4991c4

block_.L_498c02:                                  ; preds = %block_.L_498bf0
  %495 = add i64 %105, -6360
  store i64 %495, i64* %RDI.i826, align 8
  store i32 1, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  %496 = add i64 %493, -593586
  %497 = add i64 %493, 23
  %498 = load i64, i64* %6, align 8
  %499 = add i64 %498, -8
  %500 = inttoptr i64 %499 to i64*
  store i64 %497, i64* %500, align 8
  store i64 %499, i64* %6, align 8
  store i64 %496, i64* %3, align 8
  %call2_498c14 = tail call %struct.Memory* @sub_407d50.store_board(%struct.State* nonnull %0, i64 %496, %struct.Memory* %2)
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, -565673
  %503 = add i64 %501, 5
  %504 = load i64, i64* %6, align 8
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %503, i64* %506, align 8
  store i64 %505, i64* %6, align 8
  store i64 %502, i64* %3, align 8
  %call2_498c19 = tail call %struct.Memory* @sub_40ea70.get_last_player(%struct.State* nonnull %0, i64 %502, %struct.Memory* %call2_498c14)
  %507 = load i32, i32* %EAX.i809.pre-phi, align 4
  %508 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %509 = and i32 %507, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %514 = icmp eq i32 %507, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %29, align 1
  %516 = lshr i32 %507, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v74 = select i1 %514, i64 9, i64 21
  %518 = add i64 %508, %.v74
  store i64 %518, i64* %3, align 8
  br i1 %514, label %block_498c27, label %block_.L_498c33

block_498c27:                                     ; preds = %block_.L_498c02
  %519 = load i64, i64* %RBP.i, align 8
  %520 = add i64 %519, -20
  %521 = add i64 %518, 7
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  store i32 2, i32* %522, align 4
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 20
  store i64 %524, i64* %3, align 8
  br label %block_.L_498c42

block_.L_498c33:                                  ; preds = %block_.L_498c02
  %525 = add i64 %518, -565699
  %526 = add i64 %518, 5
  %527 = load i64, i64* %6, align 8
  %528 = add i64 %527, -8
  %529 = inttoptr i64 %528 to i64*
  store i64 %526, i64* %529, align 8
  store i64 %528, i64* %6, align 8
  store i64 %525, i64* %3, align 8
  %call2_498c33 = tail call %struct.Memory* @sub_40ea70.get_last_player(%struct.State* nonnull %0, i64 %525, %struct.Memory* %call2_498c19)
  %530 = load i64, i64* %3, align 8
  %531 = load i32, i32* %EAX.i809.pre-phi, align 4
  %532 = sub i32 3, %531
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RCX.i795, align 8
  %534 = icmp ugt i32 %531, 3
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %14, align 1
  %536 = and i32 %532, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %21, align 1
  %541 = xor i32 %532, %531
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %26, align 1
  %545 = icmp eq i32 %532, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %29, align 1
  %547 = lshr i32 %532, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %32, align 1
  %549 = lshr i32 %531, 31
  %550 = add nuw nsw i32 %547, %549
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %38, align 1
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -20
  %555 = add i64 %530, 10
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  store i32 %532, i32* %556, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_498c42

block_.L_498c42:                                  ; preds = %block_.L_498c33, %block_498c27
  %557 = phi i64 [ %.pre52, %block_.L_498c33 ], [ %524, %block_498c27 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_498c33, %block_.L_498c33 ], [ %call2_498c19, %block_498c27 ]
  %558 = add i64 %557, 5
  store i64 %558, i64* %3, align 8
  %RSI.i683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i680 = getelementptr inbounds %union.anon, %union.anon* %559, i64 0, i32 0
  %AL.i625 = bitcast %union.anon* %.pre65 to i8*
  %CL.i626 = bitcast %union.anon* %103 to i8*
  %DL.i608 = bitcast %union.anon* %559 to i8*
  %.pre53 = load i64, i64* %RBP.i, align 8
  br label %block_.L_498c47

block_.L_498c47:                                  ; preds = %block_.L_498cd2, %block_.L_498c42
  %560 = phi i64 [ %828, %block_.L_498cd2 ], [ %558, %block_.L_498c42 ]
  %561 = phi i64 [ %816, %block_.L_498cd2 ], [ %.pre53, %block_.L_498c42 ]
  %562 = add i64 %561, -12
  store i64 %562, i64* %RDI.i826, align 8
  %563 = add i64 %561, -16
  store i64 %563, i64* %RSI.i683, align 8
  %564 = add i64 %561, -20
  %565 = add i64 %560, 11
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RDX.i680, align 8
  %569 = add i64 %560, -462759
  %570 = add i64 %560, 16
  %571 = load i64, i64* %6, align 8
  %572 = add i64 %571, -8
  %573 = inttoptr i64 %572 to i64*
  store i64 %570, i64* %573, align 8
  store i64 %572, i64* %6, align 8
  store i64 %569, i64* %3, align 8
  %call2_498c52 = tail call %struct.Memory* @sub_427ca0.genmove_conservative(%struct.State* nonnull %0, i64 %569, %struct.Memory* %MEMORY.4)
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -8
  %576 = load i32, i32* %EAX.i809.pre-phi, align 4
  %577 = load i64, i64* %3, align 8
  %578 = add i64 %577, 3
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %575 to i32*
  store i32 %576, i32* %579, align 4
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -12
  %582 = load i64, i64* %3, align 8
  %583 = add i64 %582, 4
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = mul i32 %585, 20
  %587 = add i32 %586, 21
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %.pre66, align 8
  %589 = icmp ugt i32 %586, -22
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %14, align 1
  %591 = and i32 %587, 253
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %21, align 1
  %596 = xor i32 %586, 16
  %597 = xor i32 %596, %587
  %598 = lshr i32 %597, 4
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %601 = lshr i32 %587, 31
  %602 = trunc i32 %601 to i8
  store i8 %602, i8* %32, align 1
  %603 = lshr i32 %586, 31
  %604 = xor i32 %601, %603
  %605 = add nuw nsw i32 %604, %601
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %38, align 1
  %608 = add i64 %580, -16
  %609 = add i64 %582, 10
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = add i32 %611, %587
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %.pre66, align 8
  %614 = icmp ult i32 %612, %587
  %615 = icmp ult i32 %612, %611
  %616 = or i1 %614, %615
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = and i32 %612, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  %623 = xor i32 %611, %587
  %624 = xor i32 %623, %612
  %625 = lshr i32 %624, 4
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  store i8 %627, i8* %26, align 1
  %628 = icmp eq i32 %612, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %29, align 1
  %630 = lshr i32 %612, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %32, align 1
  %632 = lshr i32 %611, 31
  %633 = xor i32 %630, %601
  %634 = xor i32 %630, %632
  %635 = add nuw nsw i32 %633, %634
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %38, align 1
  %638 = add i64 %580, -20
  %639 = add i64 %582, 13
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RSI.i683, align 8
  store i64 %613, i64* %RDI.i826, align 8
  %643 = add i64 %582, -567626
  %644 = add i64 %582, 20
  %645 = load i64, i64* %6, align 8
  %646 = add i64 %645, -8
  %647 = inttoptr i64 %646 to i64*
  store i64 %644, i64* %647, align 8
  store i64 %646, i64* %6, align 8
  store i64 %643, i64* %3, align 8
  %call2_498c69 = tail call %struct.Memory* @sub_40e310.play_move(%struct.State* nonnull %0, i64 %643, %struct.Memory* %MEMORY.4)
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -8
  %650 = load i64, i64* %3, align 8
  %651 = add i64 %650, 4
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652, align 4
  store i8 0, i8* %14, align 1
  %654 = and i32 %653, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %659 = icmp eq i32 %653, 0
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %29, align 1
  %661 = lshr i32 %653, 31
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %663 = icmp ne i8 %662, 0
  %.v = select i1 %663, i64 27, i64 6
  %664 = add i64 %651, %.v
  store i64 %664, i64* %3, align 8
  %665 = add i64 %648, -24
  br i1 %663, label %block_.L_498c8d, label %block_498c78

block_498c78:                                     ; preds = %block_.L_498c47
  %666 = add i64 %664, 7
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  store i32 0, i32* %667, align 4
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -28
  %670 = load i64, i64* %3, align 8
  %671 = add i64 %670, 3
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %669 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = add i32 %673, 1
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %.pre66, align 8
  %676 = icmp eq i32 %673, -1
  %677 = icmp eq i32 %674, 0
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %14, align 1
  %680 = and i32 %674, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %21, align 1
  %685 = xor i32 %674, %673
  %686 = lshr i32 %685, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %26, align 1
  %689 = zext i1 %677 to i8
  store i8 %689, i8* %29, align 1
  %690 = lshr i32 %674, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %32, align 1
  %692 = lshr i32 %673, 31
  %693 = xor i32 %690, %692
  %694 = add nuw nsw i32 %693, %690
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %38, align 1
  %697 = add i64 %670, 9
  store i64 %697, i64* %3, align 8
  store i32 %674, i32* %672, align 4
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 14
  store i64 %699, i64* %3, align 8
  br label %block_.L_498c96

block_.L_498c8d:                                  ; preds = %block_.L_498c47
  %700 = add i64 %664, 3
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %665 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = add i32 %702, 1
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %.pre66, align 8
  %705 = icmp eq i32 %702, -1
  %706 = icmp eq i32 %703, 0
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %14, align 1
  %709 = and i32 %703, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %21, align 1
  %714 = xor i32 %703, %702
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %26, align 1
  %718 = zext i1 %706 to i8
  store i8 %718, i8* %29, align 1
  %719 = lshr i32 %703, 31
  %720 = trunc i32 %719 to i8
  store i8 %720, i8* %32, align 1
  %721 = lshr i32 %702, 31
  %722 = xor i32 %719, %721
  %723 = add nuw nsw i32 %722, %719
  %724 = icmp eq i32 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %38, align 1
  %726 = add i64 %664, 9
  store i64 %726, i64* %3, align 8
  store i32 %703, i32* %701, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_498c96

block_.L_498c96:                                  ; preds = %block_.L_498c8d, %block_498c78
  %727 = phi i64 [ %.pre54, %block_.L_498c8d ], [ %699, %block_498c78 ]
  store i64 3, i64* %.pre66, align 8
  %728 = load i64, i64* %RBP.i, align 8
  %729 = add i64 %728, -20
  %730 = add i64 %727, 8
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sub i32 3, %732
  %734 = add i64 %727, 11
  store i64 %734, i64* %3, align 8
  store i32 %733, i32* %731, align 4
  %735 = load i64, i64* %3, align 8
  store i64 0, i64* %.pre66, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i626, align 1
  %736 = load i64, i64* %RBP.i, align 8
  %737 = add i64 %736, -24
  %738 = add i64 %735, 8
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  %740 = load i32, i32* %739, align 4
  %741 = add i32 %740, -2
  %742 = icmp ult i32 %740, 2
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %14, align 1
  %744 = and i32 %741, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %21, align 1
  %749 = xor i32 %741, %740
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %26, align 1
  %753 = icmp eq i32 %741, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %29, align 1
  %755 = lshr i32 %741, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %32, align 1
  %757 = lshr i32 %740, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %38, align 1
  %762 = add i64 %736, -6365
  %763 = add i64 %735, 14
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i8*
  store i8 0, i8* %764, align 1
  %765 = load i64, i64* %3, align 8
  %766 = add i64 %765, 35
  %767 = add i64 %765, 6
  %768 = load i8, i8* %32, align 1
  %769 = icmp ne i8 %768, 0
  %770 = load i8, i8* %38, align 1
  %771 = icmp ne i8 %770, 0
  %772 = xor i1 %769, %771
  %773 = select i1 %772, i64 %767, i64 %766
  store i64 %773, i64* %3, align 8
  br i1 %772, label %block_498cb5, label %block_.L_498cd2

block_498cb5:                                     ; preds = %block_.L_498c96
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -28
  %776 = add i64 %773, 3
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %.pre66, align 8
  %780 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %781 = sext i32 %780 to i64
  %782 = mul nsw i64 %781, %781
  %783 = and i64 %782, 4294967295
  store i64 %783, i64* %RCX.i795, align 8
  %784 = trunc i64 %782 to i32
  %785 = sub i32 %778, %784
  %786 = icmp ult i32 %778, %784
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %14, align 1
  %788 = and i32 %785, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788)
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %21, align 1
  %793 = xor i32 %784, %778
  %794 = xor i32 %793, %785
  %795 = lshr i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  store i8 %797, i8* %26, align 1
  %798 = icmp eq i32 %785, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %29, align 1
  %800 = lshr i32 %785, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %32, align 1
  %802 = lshr i32 %778, 31
  %803 = lshr i32 %784, 31
  %804 = xor i32 %803, %802
  %805 = xor i32 %800, %802
  %806 = add nuw nsw i32 %805, %804
  %807 = icmp eq i32 %806, 2
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %38, align 1
  %809 = icmp ne i8 %801, 0
  %810 = xor i1 %809, %807
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %DL.i608, align 1
  %812 = add i64 %774, -6365
  %813 = add i64 %773, 29
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i8*
  store i8 %811, i8* %814, align 1
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_498cd2

block_.L_498cd2:                                  ; preds = %block_.L_498c96, %block_498cb5
  %815 = phi i64 [ %766, %block_.L_498c96 ], [ %.pre55, %block_498cb5 ]
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -6365
  %818 = add i64 %815, 6
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i8*
  %820 = load i8, i8* %819, align 1
  store i8 %820, i8* %AL.i625, align 1
  %821 = and i8 %820, 1
  store i8 0, i8* %14, align 1
  %822 = zext i8 %821 to i32
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i8 %821, 1
  store i8 %826, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %827 = icmp eq i8 %826, 0
  %.v75 = select i1 %827, i64 -139, i64 14
  %828 = add i64 %815, %.v75
  store i64 %828, i64* %3, align 8
  br i1 %827, label %block_.L_498c47, label %block_498ce0

block_498ce0:                                     ; preds = %block_.L_498cd2
  store i64 0, i64* %.pre66, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RSI.i683, align 8
  %829 = add i64 %816, -20
  %830 = add i64 %828, 7
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RDI.i826, align 8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %835 = bitcast %union.VectorReg* %834 to i8*
  %836 = load i32, i32* bitcast (%G_0xb454f8_type* @G_0xb454f8 to i32*), align 8
  %837 = bitcast %union.VectorReg* %834 to i32*
  store i32 %836, i32* %837, align 1
  %838 = getelementptr inbounds i8, i8* %835, i64 4
  %839 = bitcast i8* %838 to float*
  store float 0.000000e+00, float* %839, align 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %841 = bitcast i64* %840 to float*
  store float 0.000000e+00, float* %841, align 1
  %842 = getelementptr inbounds i8, i8* %835, i64 12
  %843 = bitcast i8* %842 to float*
  store float 0.000000e+00, float* %843, align 1
  %844 = add i64 %828, -597344
  %845 = add i64 %828, 21
  %846 = load i64, i64* %6, align 8
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %845, i64* %848, align 8
  store i64 %847, i64* %6, align 8
  store i64 %844, i64* %3, align 8
  %call2_498cf0 = tail call %struct.Memory* @sub_406f80.aftermath_compute_score(%struct.State* nonnull %0, i64 %844, %struct.Memory* %MEMORY.4)
  %849 = load i64, i64* %3, align 8
  %850 = bitcast %union.VectorReg* %834 to <2 x float>*
  %851 = load <2 x float>, <2 x float>* %850, align 1
  %852 = extractelement <2 x float> %851, i32 0
  store float %852, float* bitcast (%G_0xaf3454_type* @G_0xaf3454 to float*), align 8
  %853 = load i64, i64* %RBP.i, align 8
  %854 = add i64 %853, -12
  %855 = add i64 %849, 16
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i32*
  store i32 0, i32* %856, align 4
  %R8.i552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_498d05

block_.L_498d05:                                  ; preds = %block_.L_498d99, %block_498ce0
  %857 = phi i64 [ %1209, %block_.L_498d99 ], [ %.pre56, %block_498ce0 ]
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -12
  %860 = add i64 %857, 3
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %.pre66, align 8
  %864 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %865 = sub i32 %862, %864
  %866 = icmp ult i32 %862, %864
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %14, align 1
  %868 = and i32 %865, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %21, align 1
  %873 = xor i32 %864, %862
  %874 = xor i32 %873, %865
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %26, align 1
  %878 = icmp eq i32 %865, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %29, align 1
  %880 = lshr i32 %865, 31
  %881 = trunc i32 %880 to i8
  store i8 %881, i8* %32, align 1
  %882 = lshr i32 %862, 31
  %883 = lshr i32 %864, 31
  %884 = xor i32 %883, %882
  %885 = xor i32 %880, %882
  %886 = add nuw nsw i32 %885, %884
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %38, align 1
  %889 = icmp ne i8 %881, 0
  %890 = xor i1 %889, %887
  %.v76 = select i1 %890, i64 16, i64 167
  %891 = add i64 %857, %.v76
  store i64 %891, i64* %3, align 8
  br i1 %890, label %block_498d15, label %block_.L_498dac

block_498d15:                                     ; preds = %block_.L_498d05
  %892 = add i64 %858, -16
  %893 = add i64 %891, 7
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  store i32 0, i32* %894, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_498d1c

block_.L_498d1c:                                  ; preds = %block_498d2c, %block_498d15
  %895 = phi i64 [ %1179, %block_498d2c ], [ %.pre62, %block_498d15 ]
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -16
  %898 = add i64 %895, 3
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %.pre66, align 8
  %902 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %903 = sub i32 %900, %902
  %904 = icmp ult i32 %900, %902
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %14, align 1
  %906 = and i32 %903, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  %911 = xor i32 %902, %900
  %912 = xor i32 %911, %903
  %913 = lshr i32 %912, 4
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %26, align 1
  %916 = icmp eq i32 %903, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %29, align 1
  %918 = lshr i32 %903, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %32, align 1
  %920 = lshr i32 %900, 31
  %921 = lshr i32 %902, 31
  %922 = xor i32 %921, %920
  %923 = xor i32 %918, %920
  %924 = add nuw nsw i32 %923, %922
  %925 = icmp eq i32 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %38, align 1
  %927 = icmp ne i8 %919, 0
  %928 = xor i1 %927, %925
  %.v69 = select i1 %928, i64 16, i64 125
  %929 = add i64 %895, %.v69
  store i64 %929, i64* %3, align 8
  br i1 %928, label %block_498d2c, label %block_.L_498d99

block_498d2c:                                     ; preds = %block_.L_498d1c
  %930 = add i64 %896, -20
  %931 = add i64 %929, 3
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RDI.i826, align 8
  %935 = add i64 %896, -12
  %936 = add i64 %929, 7
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = mul i32 %938, 20
  %940 = add i32 %939, 21
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %.pre66, align 8
  %942 = icmp ugt i32 %939, -22
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %14, align 1
  %944 = and i32 %940, 253
  %945 = tail call i32 @llvm.ctpop.i32(i32 %944)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  store i8 %948, i8* %21, align 1
  %949 = xor i32 %939, 16
  %950 = xor i32 %949, %940
  %951 = lshr i32 %950, 4
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  store i8 %953, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %954 = lshr i32 %940, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %32, align 1
  %956 = lshr i32 %939, 31
  %957 = xor i32 %954, %956
  %958 = add nuw nsw i32 %957, %954
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %38, align 1
  %961 = add i64 %929, 13
  store i64 %961, i64* %3, align 8
  %962 = load i32, i32* %899, align 4
  %963 = add i32 %962, %940
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %.pre66, align 8
  %965 = icmp ult i32 %963, %940
  %966 = icmp ult i32 %963, %962
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %14, align 1
  %969 = and i32 %963, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %21, align 1
  %974 = xor i32 %962, %940
  %975 = xor i32 %974, %963
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %26, align 1
  %979 = icmp eq i32 %963, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %29, align 1
  %981 = lshr i32 %963, 31
  %982 = trunc i32 %981 to i8
  store i8 %982, i8* %32, align 1
  %983 = lshr i32 %962, 31
  %984 = xor i32 %981, %954
  %985 = xor i32 %981, %983
  %986 = add nuw nsw i32 %984, %985
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %38, align 1
  store i64 %964, i64* %RSI.i683, align 8
  %989 = add i64 %929, -594076
  %990 = add i64 %929, 20
  %991 = load i64, i64* %6, align 8
  %992 = add i64 %991, -8
  %993 = inttoptr i64 %992 to i64*
  store i64 %990, i64* %993, align 8
  store i64 %992, i64* %6, align 8
  store i64 %989, i64* %3, align 8
  %call2_498d3b = tail call %struct.Memory* @sub_407c90.aftermath_final_status(%struct.State* nonnull %0, i64 %989, %struct.Memory* %call2_498cf0)
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -1472
  %996 = load i64, i64* %3, align 8
  store i64 %995, i64* %RCX.i795, align 8
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RDX.i680, align 8
  %997 = add i64 %994, -12
  %998 = add i64 %996, 21
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = mul nsw i64 %1001, 76
  store i64 %1002, i64* %R8.i552, align 8
  %1003 = lshr i64 %1002, 63
  %1004 = add i64 %1002, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1004, i64* %RDX.i680, align 8
  %1005 = icmp ult i64 %1004, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1006 = icmp ult i64 %1004, %1002
  %1007 = or i1 %1005, %1006
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %14, align 1
  %1009 = trunc i64 %1004 to i32
  %1010 = and i32 %1009, 252
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  %1015 = xor i64 %1002, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1016 = xor i64 %1015, %1004
  %1017 = lshr i64 %1016, 4
  %1018 = trunc i64 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %26, align 1
  %1020 = icmp eq i64 %1004, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %29, align 1
  %1022 = lshr i64 %1004, 63
  %1023 = trunc i64 %1022 to i8
  store i8 %1023, i8* %32, align 1
  %1024 = xor i64 %1022, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1025 = xor i64 %1022, %1003
  %1026 = add nuw nsw i64 %1024, %1025
  %1027 = icmp eq i64 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %38, align 1
  %1029 = add i64 %994, -16
  %1030 = add i64 %996, 32
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %R8.i552, align 8
  %1034 = shl nsw i64 %1033, 2
  %1035 = add i64 %1034, %1004
  %1036 = load i32, i32* %EAX.i809.pre-phi, align 4
  %1037 = add i64 %996, 36
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1035 to i32*
  store i32 %1036, i32* %1038, align 4
  %1039 = load i64, i64* %RBP.i, align 8
  %1040 = add i64 %1039, -12
  %1041 = load i64, i64* %3, align 8
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1040 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = mul i32 %1044, 20
  %1046 = add i32 %1045, 21
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %.pre66, align 8
  %1048 = icmp ugt i32 %1045, -22
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %14, align 1
  %1050 = and i32 %1046, 253
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %21, align 1
  %1055 = xor i32 %1045, 16
  %1056 = xor i32 %1055, %1046
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1060 = lshr i32 %1046, 31
  %1061 = trunc i32 %1060 to i8
  store i8 %1061, i8* %32, align 1
  %1062 = lshr i32 %1045, 31
  %1063 = xor i32 %1060, %1062
  %1064 = add nuw nsw i32 %1063, %1060
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %38, align 1
  %1067 = add i64 %1039, -16
  %1068 = add i64 %1041, 10
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = add i32 %1070, %1046
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %.pre66, align 8
  %1073 = icmp ult i32 %1071, %1046
  %1074 = icmp ult i32 %1071, %1070
  %1075 = or i1 %1073, %1074
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %14, align 1
  %1077 = and i32 %1071, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %21, align 1
  %1082 = xor i32 %1070, %1046
  %1083 = xor i32 %1082, %1071
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %26, align 1
  %1087 = icmp eq i32 %1071, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %29, align 1
  %1089 = lshr i32 %1071, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %32, align 1
  %1091 = lshr i32 %1070, 31
  %1092 = xor i32 %1089, %1060
  %1093 = xor i32 %1089, %1091
  %1094 = add nuw nsw i32 %1092, %1093
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %38, align 1
  %1097 = sext i32 %1071 to i64
  store i64 %1097, i64* %RDX.i680, align 8
  %1098 = add nsw i64 %1097, 12099168
  %1099 = add i64 %1041, 21
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i8*
  %1101 = load i8, i8* %1100, align 1
  %1102 = zext i8 %1101 to i64
  store i64 %1102, i64* %.pre66, align 8
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -12
  %1105 = add i64 %1041, 25
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = sext i32 %1107 to i64
  %1109 = mul nsw i64 %1108, 76
  store i64 %1109, i64* %RDX.i680, align 8
  %1110 = lshr i64 %1109, 63
  %1111 = load i64, i64* %RCX.i795, align 8
  %1112 = add i64 %1109, %1111
  store i64 %1112, i64* %RCX.i795, align 8
  %1113 = icmp ult i64 %1112, %1111
  %1114 = icmp ult i64 %1112, %1109
  %1115 = or i1 %1113, %1114
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %14, align 1
  %1117 = trunc i64 %1112 to i32
  %1118 = and i32 %1117, 255
  %1119 = tail call i32 @llvm.ctpop.i32(i32 %1118)
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  store i8 %1122, i8* %21, align 1
  %1123 = xor i64 %1109, %1111
  %1124 = xor i64 %1123, %1112
  %1125 = lshr i64 %1124, 4
  %1126 = trunc i64 %1125 to i8
  %1127 = and i8 %1126, 1
  store i8 %1127, i8* %26, align 1
  %1128 = icmp eq i64 %1112, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %29, align 1
  %1130 = lshr i64 %1112, 63
  %1131 = trunc i64 %1130 to i8
  store i8 %1131, i8* %32, align 1
  %1132 = lshr i64 %1111, 63
  %1133 = xor i64 %1130, %1132
  %1134 = xor i64 %1130, %1110
  %1135 = add nuw nsw i64 %1133, %1134
  %1136 = icmp eq i64 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %38, align 1
  %1138 = add i64 %1103, -16
  %1139 = add i64 %1041, 36
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = sext i32 %1141 to i64
  store i64 %1142, i64* %RDX.i680, align 8
  %1143 = shl nsw i64 %1142, 2
  %1144 = add i64 %1143, %1112
  %1145 = zext i8 %1101 to i32
  %1146 = add i64 %1041, 39
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1144 to i32*
  store i32 %1145, i32* %1147, align 4
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -16
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = add i32 %1153, 1
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %.pre66, align 8
  %1156 = icmp eq i32 %1153, -1
  %1157 = icmp eq i32 %1154, 0
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %14, align 1
  %1160 = and i32 %1154, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %21, align 1
  %1165 = xor i32 %1154, %1153
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %26, align 1
  %1169 = zext i1 %1157 to i8
  store i8 %1169, i8* %29, align 1
  %1170 = lshr i32 %1154, 31
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %32, align 1
  %1172 = lshr i32 %1153, 31
  %1173 = xor i32 %1170, %1172
  %1174 = add nuw nsw i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 2
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %38, align 1
  %1177 = add i64 %1150, 9
  store i64 %1177, i64* %3, align 8
  store i32 %1154, i32* %1152, align 4
  %1178 = load i64, i64* %3, align 8
  %1179 = add i64 %1178, -120
  store i64 %1179, i64* %3, align 8
  br label %block_.L_498d1c

block_.L_498d99:                                  ; preds = %block_.L_498d1c
  %1180 = add i64 %896, -12
  %1181 = add i64 %929, 8
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = add i32 %1183, 1
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %.pre66, align 8
  %1186 = icmp eq i32 %1183, -1
  %1187 = icmp eq i32 %1184, 0
  %1188 = or i1 %1186, %1187
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %14, align 1
  %1190 = and i32 %1184, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %21, align 1
  %1195 = xor i32 %1184, %1183
  %1196 = lshr i32 %1195, 4
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  store i8 %1198, i8* %26, align 1
  %1199 = zext i1 %1187 to i8
  store i8 %1199, i8* %29, align 1
  %1200 = lshr i32 %1184, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %32, align 1
  %1202 = lshr i32 %1183, 31
  %1203 = xor i32 %1200, %1202
  %1204 = add nuw nsw i32 %1203, %1200
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %38, align 1
  %1207 = add i64 %929, 14
  store i64 %1207, i64* %3, align 8
  store i32 %1184, i32* %1182, align 4
  %1208 = load i64, i64* %3, align 8
  %1209 = add i64 %1208, -162
  store i64 %1209, i64* %3, align 8
  br label %block_.L_498d05

block_.L_498dac:                                  ; preds = %block_.L_498d05
  %1210 = add i64 %858, -6360
  store i64 %1210, i64* %RDI.i826, align 8
  %1211 = add i64 %891, -593580
  %1212 = add i64 %891, 12
  %1213 = load i64, i64* %6, align 8
  %1214 = add i64 %1213, -8
  %1215 = inttoptr i64 %1214 to i64*
  store i64 %1212, i64* %1215, align 8
  store i64 %1214, i64* %6, align 8
  store i64 %1211, i64* %3, align 8
  %call2_498db3 = tail call %struct.Memory* @sub_407f00.restore_board(%struct.State* nonnull %0, i64 %1211, %struct.Memory* %call2_498cf0)
  %1216 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -12
  %1219 = add i64 %1216, 18
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i32*
  store i32 0, i32* %1220, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_498dca

block_.L_498dca:                                  ; preds = %block_.L_4991b1, %block_.L_498dac
  %1221 = phi i64 [ %2563, %block_.L_4991b1 ], [ %.pre57, %block_.L_498dac ]
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -12
  %1224 = add i64 %1221, 3
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %.pre66, align 8
  %1228 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1229 = sub i32 %1226, %1228
  %1230 = icmp ult i32 %1226, %1228
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %14, align 1
  %1232 = and i32 %1229, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  %1237 = xor i32 %1228, %1226
  %1238 = xor i32 %1237, %1229
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %26, align 1
  %1242 = icmp eq i32 %1229, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %29, align 1
  %1244 = lshr i32 %1229, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %32, align 1
  %1246 = lshr i32 %1226, 31
  %1247 = lshr i32 %1228, 31
  %1248 = xor i32 %1247, %1246
  %1249 = xor i32 %1244, %1246
  %1250 = add nuw nsw i32 %1249, %1248
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %38, align 1
  %1253 = icmp ne i8 %1245, 0
  %1254 = xor i1 %1253, %1251
  %.v77 = select i1 %1254, i64 16, i64 1018
  %1255 = add i64 %1221, %.v77
  store i64 %1255, i64* %3, align 8
  br i1 %1254, label %block_498dda, label %block_.L_4991c4.loopexit

block_498dda:                                     ; preds = %block_.L_498dca
  %1256 = add i64 %1222, -16
  %1257 = add i64 %1255, 7
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  store i32 0, i32* %1258, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_498de1

block_.L_498de1:                                  ; preds = %block_.L_4991a3, %block_498dda
  %1259 = phi i64 [ %2533, %block_.L_4991a3 ], [ %.pre58, %block_498dda ]
  %1260 = load i64, i64* %RBP.i, align 8
  %1261 = add i64 %1260, -16
  %1262 = add i64 %1259, 3
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %.pre66, align 8
  %1266 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1267 = sub i32 %1264, %1266
  %1268 = icmp ult i32 %1264, %1266
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %14, align 1
  %1270 = and i32 %1267, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %21, align 1
  %1275 = xor i32 %1266, %1264
  %1276 = xor i32 %1275, %1267
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %26, align 1
  %1280 = icmp eq i32 %1267, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %29, align 1
  %1282 = lshr i32 %1267, 31
  %1283 = trunc i32 %1282 to i8
  store i8 %1283, i8* %32, align 1
  %1284 = lshr i32 %1264, 31
  %1285 = lshr i32 %1266, 31
  %1286 = xor i32 %1285, %1284
  %1287 = xor i32 %1282, %1284
  %1288 = add nuw nsw i32 %1287, %1286
  %1289 = icmp eq i32 %1288, 2
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %38, align 1
  %1291 = icmp ne i8 %1283, 0
  %1292 = xor i1 %1291, %1289
  %.v68 = select i1 %1292, i64 16, i64 976
  %1293 = add i64 %1259, %.v68
  store i64 %1293, i64* %3, align 8
  br i1 %1292, label %block_498df1, label %block_.L_4991b1

block_498df1:                                     ; preds = %block_.L_498de1
  %1294 = add i64 %1260, -1472
  store i64 %1294, i64* %.pre66, align 8
  %1295 = add i64 %1260, -12
  %1296 = add i64 %1293, 11
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = mul i32 %1298, 20
  %1300 = add i32 %1299, 21
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RCX.i795, align 8
  %1302 = icmp ugt i32 %1299, -22
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %14, align 1
  %1304 = and i32 %1300, 253
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %21, align 1
  %1309 = xor i32 %1299, 16
  %1310 = xor i32 %1309, %1300
  %1311 = lshr i32 %1310, 4
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1314 = lshr i32 %1300, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %32, align 1
  %1316 = lshr i32 %1299, 31
  %1317 = xor i32 %1314, %1316
  %1318 = add nuw nsw i32 %1317, %1314
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %38, align 1
  %1321 = add i64 %1293, 17
  store i64 %1321, i64* %3, align 8
  %1322 = load i32, i32* %1263, align 4
  %1323 = add i32 %1322, %1300
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RCX.i795, align 8
  %1325 = icmp ult i32 %1323, %1300
  %1326 = icmp ult i32 %1323, %1322
  %1327 = or i1 %1325, %1326
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %14, align 1
  %1329 = and i32 %1323, 255
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %21, align 1
  %1334 = xor i32 %1322, %1300
  %1335 = xor i32 %1334, %1323
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %26, align 1
  %1339 = icmp eq i32 %1323, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %29, align 1
  %1341 = lshr i32 %1323, 31
  %1342 = trunc i32 %1341 to i8
  store i8 %1342, i8* %32, align 1
  %1343 = lshr i32 %1322, 31
  %1344 = xor i32 %1341, %1314
  %1345 = xor i32 %1341, %1343
  %1346 = add nuw nsw i32 %1344, %1345
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %38, align 1
  %1349 = sext i32 %1323 to i64
  store i64 %1349, i64* %RDX.i680, align 8
  %1350 = add nsw i64 %1349, 12099168
  %1351 = add i64 %1293, 28
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i8*
  %1353 = load i8, i8* %1352, align 1
  %1354 = zext i8 %1353 to i64
  store i64 %1354, i64* %RCX.i795, align 8
  %1355 = load i64, i64* %RBP.i, align 8
  %1356 = add i64 %1355, -12
  %1357 = add i64 %1293, 32
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = mul nsw i64 %1360, 76
  store i64 %1361, i64* %RDX.i680, align 8
  %1362 = lshr i64 %1361, 63
  %1363 = load i64, i64* %.pre66, align 8
  %1364 = add i64 %1361, %1363
  store i64 %1364, i64* %.pre66, align 8
  %1365 = icmp ult i64 %1364, %1363
  %1366 = icmp ult i64 %1364, %1361
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = trunc i64 %1364 to i32
  %1370 = and i32 %1369, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i64 %1361, %1363
  %1376 = xor i64 %1375, %1364
  %1377 = lshr i64 %1376, 4
  %1378 = trunc i64 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %26, align 1
  %1380 = icmp eq i64 %1364, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %29, align 1
  %1382 = lshr i64 %1364, 63
  %1383 = trunc i64 %1382 to i8
  store i8 %1383, i8* %32, align 1
  %1384 = lshr i64 %1363, 63
  %1385 = xor i64 %1382, %1384
  %1386 = xor i64 %1382, %1362
  %1387 = add nuw nsw i64 %1385, %1386
  %1388 = icmp eq i64 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %38, align 1
  %1390 = add i64 %1355, -16
  %1391 = add i64 %1293, 43
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RDX.i680, align 8
  %1395 = zext i8 %1353 to i32
  %1396 = shl nsw i64 %1394, 2
  %1397 = add i64 %1364, %1396
  %1398 = add i64 %1293, 46
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = sub i32 %1395, %1400
  %1402 = icmp ult i32 %1395, %1400
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %14, align 1
  %1404 = and i32 %1401, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %21, align 1
  %1409 = xor i32 %1400, %1395
  %1410 = xor i32 %1409, %1401
  %1411 = lshr i32 %1410, 4
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  store i8 %1413, i8* %26, align 1
  %1414 = icmp eq i32 %1401, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %29, align 1
  %1416 = lshr i32 %1401, 31
  %1417 = trunc i32 %1416 to i8
  store i8 %1417, i8* %32, align 1
  %1418 = lshr i32 %1400, 31
  %1419 = add nuw nsw i32 %1416, %1418
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %38, align 1
  %.v78 = select i1 %1414, i64 52, i64 57
  %1422 = add i64 %1293, %.v78
  store i64 %1422, i64* %3, align 8
  br i1 %1414, label %block_498e25, label %block_.L_498e2a

block_498e25:                                     ; preds = %block_498df1
  %1423 = add i64 %1422, 894
  br label %block_.L_4991a3

block_.L_498e2a:                                  ; preds = %block_498df1
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -12
  %1426 = add i64 %1422, 4
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = mul i32 %1428, 20
  %1430 = add i32 %1429, 21
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %.pre66, align 8
  %1432 = icmp ugt i32 %1429, -22
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %14, align 1
  %1434 = and i32 %1430, 253
  %1435 = tail call i32 @llvm.ctpop.i32(i32 %1434)
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = xor i8 %1437, 1
  store i8 %1438, i8* %21, align 1
  %1439 = xor i32 %1429, 16
  %1440 = xor i32 %1439, %1430
  %1441 = lshr i32 %1440, 4
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  store i8 %1443, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1444 = lshr i32 %1430, 31
  %1445 = trunc i32 %1444 to i8
  store i8 %1445, i8* %32, align 1
  %1446 = lshr i32 %1429, 31
  %1447 = xor i32 %1444, %1446
  %1448 = add nuw nsw i32 %1447, %1444
  %1449 = icmp eq i32 %1448, 2
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %38, align 1
  %1451 = add i64 %1424, -16
  %1452 = add i64 %1422, 10
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = add i32 %1454, %1430
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %.pre66, align 8
  %1457 = icmp ult i32 %1455, %1430
  %1458 = icmp ult i32 %1455, %1454
  %1459 = or i1 %1457, %1458
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %14, align 1
  %1461 = and i32 %1455, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %21, align 1
  %1466 = xor i32 %1454, %1430
  %1467 = xor i32 %1466, %1455
  %1468 = lshr i32 %1467, 4
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  store i8 %1470, i8* %26, align 1
  %1471 = icmp eq i32 %1455, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %29, align 1
  %1473 = lshr i32 %1455, 31
  %1474 = trunc i32 %1473 to i8
  store i8 %1474, i8* %32, align 1
  %1475 = lshr i32 %1454, 31
  %1476 = xor i32 %1473, %1444
  %1477 = xor i32 %1473, %1475
  %1478 = add nuw nsw i32 %1476, %1477
  %1479 = icmp eq i32 %1478, 2
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %38, align 1
  %1481 = sext i32 %1455 to i64
  store i64 %1481, i64* %RCX.i795, align 8
  %1482 = add nsw i64 %1481, 12099168
  %1483 = add i64 %1422, 21
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i8*
  %1485 = load i8, i8* %1484, align 1
  %1486 = zext i8 %1485 to i64
  store i64 %1486, i64* %.pre66, align 8
  %1487 = zext i8 %1485 to i32
  store i8 0, i8* %14, align 1
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1492 = icmp eq i8 %1485, 0
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v79 = select i1 %1492, i64 30, i64 288
  %1494 = add i64 %1422, %.v79
  store i64 %1494, i64* %3, align 8
  br i1 %1492, label %block_498e48, label %block_.L_498f4a

block_498e48:                                     ; preds = %block_.L_498e2a
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1495 = load i64, i64* %RBP.i, align 8
  %1496 = add i64 %1495, -12
  %1497 = add i64 %1494, 14
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = sext i32 %1499 to i64
  %1501 = mul nsw i64 %1500, 76
  store i64 %1501, i64* %RCX.i795, align 8
  %1502 = lshr i64 %1501, 63
  %1503 = add i64 %1501, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1503, i64* %.pre66, align 8
  %1504 = icmp ult i64 %1503, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1505 = icmp ult i64 %1503, %1501
  %1506 = or i1 %1504, %1505
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %14, align 1
  %1508 = trunc i64 %1503 to i32
  %1509 = and i32 %1508, 252
  %1510 = tail call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  store i8 %1513, i8* %21, align 1
  %1514 = xor i64 %1501, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1515 = xor i64 %1514, %1503
  %1516 = lshr i64 %1515, 4
  %1517 = trunc i64 %1516 to i8
  %1518 = and i8 %1517, 1
  store i8 %1518, i8* %26, align 1
  %1519 = icmp eq i64 %1503, 0
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %29, align 1
  %1521 = lshr i64 %1503, 63
  %1522 = trunc i64 %1521 to i8
  store i8 %1522, i8* %32, align 1
  %1523 = xor i64 %1521, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1524 = xor i64 %1521, %1502
  %1525 = add nuw nsw i64 %1523, %1524
  %1526 = icmp eq i64 %1525, 2
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %38, align 1
  %1528 = add i64 %1495, -16
  %1529 = add i64 %1494, 25
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = sext i32 %1531 to i64
  store i64 %1532, i64* %RCX.i795, align 8
  %1533 = shl nsw i64 %1532, 2
  %1534 = add i64 %1533, %1503
  %1535 = add i64 %1494, 29
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = add i32 %1537, -1
  %1539 = icmp eq i32 %1537, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %14, align 1
  %1541 = and i32 %1538, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541)
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %21, align 1
  %1546 = xor i32 %1538, %1537
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %26, align 1
  %1550 = icmp eq i32 %1538, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %29, align 1
  %1552 = lshr i32 %1538, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %32, align 1
  %1554 = lshr i32 %1537, 31
  %1555 = xor i32 %1552, %1554
  %1556 = add nuw nsw i32 %1555, %1554
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %38, align 1
  %.v88 = select i1 %1550, i64 70, i64 35
  %1559 = add i64 %1494, %.v88
  store i64 %1559, i64* %3, align 8
  br i1 %1550, label %block_.L_498e8e, label %block_498e6b

block_498e6b:                                     ; preds = %block_498e48
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1560 = load i64, i64* %RBP.i, align 8
  %1561 = add i64 %1560, -12
  %1562 = add i64 %1559, 14
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = sext i32 %1564 to i64
  %1566 = mul nsw i64 %1565, 76
  store i64 %1566, i64* %RCX.i795, align 8
  %1567 = lshr i64 %1566, 63
  %1568 = add i64 %1566, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1568, i64* %.pre66, align 8
  %1569 = icmp ult i64 %1568, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1570 = icmp ult i64 %1568, %1566
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %14, align 1
  %1573 = trunc i64 %1568 to i32
  %1574 = and i32 %1573, 252
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %21, align 1
  %1579 = xor i64 %1566, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1580 = xor i64 %1579, %1568
  %1581 = lshr i64 %1580, 4
  %1582 = trunc i64 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %26, align 1
  %1584 = icmp eq i64 %1568, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %29, align 1
  %1586 = lshr i64 %1568, 63
  %1587 = trunc i64 %1586 to i8
  store i8 %1587, i8* %32, align 1
  %1588 = xor i64 %1586, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1589 = xor i64 %1586, %1567
  %1590 = add nuw nsw i64 %1588, %1589
  %1591 = icmp eq i64 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %38, align 1
  %1593 = add i64 %1560, -16
  %1594 = add i64 %1559, 25
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i32*
  %1596 = load i32, i32* %1595, align 4
  %1597 = sext i32 %1596 to i64
  store i64 %1597, i64* %RCX.i795, align 8
  %1598 = shl nsw i64 %1597, 2
  %1599 = add i64 %1598, %1568
  %1600 = add i64 %1559, 29
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = add i32 %1602, -7
  %1604 = icmp ult i32 %1602, 7
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %14, align 1
  %1606 = and i32 %1603, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %21, align 1
  %1611 = xor i32 %1603, %1602
  %1612 = lshr i32 %1611, 4
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %26, align 1
  %1615 = icmp eq i32 %1603, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %29, align 1
  %1617 = lshr i32 %1603, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %32, align 1
  %1619 = lshr i32 %1602, 31
  %1620 = xor i32 %1617, %1619
  %1621 = add nuw nsw i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %38, align 1
  %.v89 = select i1 %1615, i64 35, i64 72
  %1624 = add i64 %1559, %.v89
  store i64 %1624, i64* %3, align 8
  br i1 %1615, label %block_.L_498e8e, label %block_.L_498eb3

block_.L_498e8e:                                  ; preds = %block_498e6b, %block_498e48
  %1625 = phi i64 [ %1624, %block_498e6b ], [ %1559, %block_498e48 ]
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1626 = load i64, i64* %RBP.i, align 8
  %1627 = add i64 %1626, -12
  %1628 = add i64 %1625, 14
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  %1631 = sext i32 %1630 to i64
  %1632 = mul nsw i64 %1631, 76
  store i64 %1632, i64* %RCX.i795, align 8
  %1633 = lshr i64 %1632, 63
  %1634 = add i64 %1632, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1634, i64* %.pre66, align 8
  %1635 = icmp ult i64 %1634, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1636 = icmp ult i64 %1634, %1632
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %14, align 1
  %1639 = trunc i64 %1634 to i32
  %1640 = and i32 %1639, 252
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %21, align 1
  %1645 = xor i64 %1632, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1646 = xor i64 %1645, %1634
  %1647 = lshr i64 %1646, 4
  %1648 = trunc i64 %1647 to i8
  %1649 = and i8 %1648, 1
  store i8 %1649, i8* %26, align 1
  %1650 = icmp eq i64 %1634, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %29, align 1
  %1652 = lshr i64 %1634, 63
  %1653 = trunc i64 %1652 to i8
  store i8 %1653, i8* %32, align 1
  %1654 = xor i64 %1652, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1655 = xor i64 %1652, %1633
  %1656 = add nuw nsw i64 %1654, %1655
  %1657 = icmp eq i64 %1656, 2
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %38, align 1
  %1659 = add i64 %1626, -16
  %1660 = add i64 %1625, 25
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = sext i32 %1662 to i64
  store i64 %1663, i64* %RCX.i795, align 8
  %1664 = shl nsw i64 %1663, 2
  %1665 = add i64 %1664, %1634
  %1666 = add i64 %1625, 32
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  store i32 15, i32* %1667, align 4
  %1668 = load i64, i64* %3, align 8
  %1669 = add i64 %1668, 151
  br label %block_.L_498f45

block_.L_498eb3:                                  ; preds = %block_498e6b
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1670 = load i64, i64* %RBP.i, align 8
  %1671 = add i64 %1670, -12
  %1672 = add i64 %1624, 14
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = sext i32 %1674 to i64
  %1676 = mul nsw i64 %1675, 76
  store i64 %1676, i64* %RCX.i795, align 8
  %1677 = lshr i64 %1676, 63
  %1678 = add i64 %1676, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1678, i64* %.pre66, align 8
  %1679 = icmp ult i64 %1678, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1680 = icmp ult i64 %1678, %1676
  %1681 = or i1 %1679, %1680
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %14, align 1
  %1683 = trunc i64 %1678 to i32
  %1684 = and i32 %1683, 252
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %21, align 1
  %1689 = xor i64 %1676, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1690 = xor i64 %1689, %1678
  %1691 = lshr i64 %1690, 4
  %1692 = trunc i64 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %26, align 1
  %1694 = icmp eq i64 %1678, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %29, align 1
  %1696 = lshr i64 %1678, 63
  %1697 = trunc i64 %1696 to i8
  store i8 %1697, i8* %32, align 1
  %1698 = xor i64 %1696, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1699 = xor i64 %1696, %1677
  %1700 = add nuw nsw i64 %1698, %1699
  %1701 = icmp eq i64 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %38, align 1
  %1703 = add i64 %1670, -16
  %1704 = add i64 %1624, 25
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = sext i32 %1706 to i64
  store i64 %1707, i64* %RCX.i795, align 8
  %1708 = shl nsw i64 %1707, 2
  %1709 = add i64 %1708, %1678
  %1710 = add i64 %1624, 29
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  store i8 0, i8* %14, align 1
  %1713 = and i32 %1712, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1718 = icmp eq i32 %1712, 0
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %29, align 1
  %1720 = lshr i32 %1712, 31
  %1721 = trunc i32 %1720 to i8
  store i8 %1721, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %1718, i64 35, i64 141
  %1722 = add i64 %1624, %.v90
  store i64 %1722, i64* %3, align 8
  br i1 %1718, label %block_498ed6, label %block_.L_498f40

block_498ed6:                                     ; preds = %block_.L_498eb3
  %1723 = load i64, i64* %RBP.i, align 8
  %1724 = add i64 %1723, -1472
  store i64 %1724, i64* %.pre66, align 8
  %1725 = add i64 %1723, -12
  %1726 = add i64 %1722, 11
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = sext i32 %1728 to i64
  %1730 = mul nsw i64 %1729, 76
  store i64 %1730, i64* %RCX.i795, align 8
  %1731 = lshr i64 %1730, 63
  %1732 = add i64 %1730, %1724
  store i64 %1732, i64* %.pre66, align 8
  %1733 = icmp ult i64 %1732, %1724
  %1734 = icmp ult i64 %1732, %1730
  %1735 = or i1 %1733, %1734
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %14, align 1
  %1737 = trunc i64 %1732 to i32
  %1738 = and i32 %1737, 255
  %1739 = tail call i32 @llvm.ctpop.i32(i32 %1738)
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  store i8 %1742, i8* %21, align 1
  %1743 = xor i64 %1730, %1724
  %1744 = xor i64 %1743, %1732
  %1745 = lshr i64 %1744, 4
  %1746 = trunc i64 %1745 to i8
  %1747 = and i8 %1746, 1
  store i8 %1747, i8* %26, align 1
  %1748 = icmp eq i64 %1732, 0
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %29, align 1
  %1750 = lshr i64 %1732, 63
  %1751 = trunc i64 %1750 to i8
  store i8 %1751, i8* %32, align 1
  %1752 = lshr i64 %1724, 63
  %1753 = xor i64 %1750, %1752
  %1754 = xor i64 %1750, %1731
  %1755 = add nuw nsw i64 %1753, %1754
  %1756 = icmp eq i64 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %38, align 1
  %1758 = add i64 %1723, -16
  %1759 = add i64 %1722, 22
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = sext i32 %1761 to i64
  store i64 %1762, i64* %RCX.i795, align 8
  %1763 = shl nsw i64 %1762, 2
  %1764 = add i64 %1763, %1732
  %1765 = add i64 %1722, 26
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = add i32 %1767, -2
  %1769 = icmp ult i32 %1767, 2
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %14, align 1
  %1771 = and i32 %1768, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %21, align 1
  %1776 = xor i32 %1768, %1767
  %1777 = lshr i32 %1776, 4
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  store i8 %1779, i8* %26, align 1
  %1780 = icmp eq i32 %1768, 0
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %29, align 1
  %1782 = lshr i32 %1768, 31
  %1783 = trunc i32 %1782 to i8
  store i8 %1783, i8* %32, align 1
  %1784 = lshr i32 %1767, 31
  %1785 = xor i32 %1782, %1784
  %1786 = add nuw nsw i32 %1785, %1784
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %38, align 1
  %.v91 = select i1 %1780, i64 32, i64 69
  %1789 = add i64 %1722, %.v91
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1790 = load i64, i64* %RBP.i, align 8
  %1791 = add i64 %1790, -12
  %1792 = add i64 %1789, 14
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i32*
  %1794 = load i32, i32* %1793, align 4
  %1795 = sext i32 %1794 to i64
  %1796 = mul nsw i64 %1795, 76
  store i64 %1796, i64* %RCX.i795, align 8
  %1797 = lshr i64 %1796, 63
  %1798 = add i64 %1796, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1798, i64* %.pre66, align 8
  %1799 = icmp ult i64 %1798, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1800 = icmp ult i64 %1798, %1796
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = trunc i64 %1798 to i32
  %1804 = and i32 %1803, 252
  %1805 = tail call i32 @llvm.ctpop.i32(i32 %1804)
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  store i8 %1808, i8* %21, align 1
  %1809 = xor i64 %1796, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1810 = xor i64 %1809, %1798
  %1811 = lshr i64 %1810, 4
  %1812 = trunc i64 %1811 to i8
  %1813 = and i8 %1812, 1
  store i8 %1813, i8* %26, align 1
  %1814 = icmp eq i64 %1798, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %29, align 1
  %1816 = lshr i64 %1798, 63
  %1817 = trunc i64 %1816 to i8
  store i8 %1817, i8* %32, align 1
  %1818 = xor i64 %1816, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1819 = xor i64 %1816, %1797
  %1820 = add nuw nsw i64 %1818, %1819
  %1821 = icmp eq i64 %1820, 2
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %38, align 1
  %1823 = add i64 %1790, -16
  %1824 = add i64 %1789, 25
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  %1826 = load i32, i32* %1825, align 4
  %1827 = sext i32 %1826 to i64
  store i64 %1827, i64* %RCX.i795, align 8
  %1828 = shl nsw i64 %1827, 2
  %1829 = add i64 %1828, %1798
  %1830 = add i64 %1789, 32
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  br i1 %1780, label %block_498ef6, label %block_.L_498f1b

block_498ef6:                                     ; preds = %block_498ed6
  store i32 14, i32* %1831, align 4
  %1832 = load i64, i64* %3, align 8
  %1833 = add i64 %1832, 37
  store i64 %1833, i64* %3, align 8
  br label %block_.L_498f3b

block_.L_498f1b:                                  ; preds = %block_498ed6
  store i32 13, i32* %1831, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_498f3b

block_.L_498f3b:                                  ; preds = %block_.L_498f1b, %block_498ef6
  %1834 = phi i64 [ %.pre59, %block_.L_498f1b ], [ %1833, %block_498ef6 ]
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %3, align 8
  br label %block_.L_498f40

block_.L_498f40:                                  ; preds = %block_.L_498eb3, %block_.L_498f3b
  %1836 = phi i64 [ %1835, %block_.L_498f3b ], [ %1722, %block_.L_498eb3 ]
  %1837 = add i64 %1836, 5
  store i64 %1837, i64* %3, align 8
  br label %block_.L_498f45

block_.L_498f45:                                  ; preds = %block_.L_498f40, %block_.L_498e8e
  %storemerge27 = phi i64 [ %1669, %block_.L_498e8e ], [ %1837, %block_.L_498f40 ]
  %1838 = add i64 %storemerge27, 601
  br label %block_.L_49919e

block_.L_498f4a:                                  ; preds = %block_.L_498e2a
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -12
  %1841 = add i64 %1494, 4
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = mul i32 %1843, 20
  %1845 = add i32 %1844, 21
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %.pre66, align 8
  %1847 = icmp ugt i32 %1844, -22
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %14, align 1
  %1849 = and i32 %1845, 253
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %21, align 1
  %1854 = xor i32 %1844, 16
  %1855 = xor i32 %1854, %1845
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1859 = lshr i32 %1845, 31
  %1860 = trunc i32 %1859 to i8
  store i8 %1860, i8* %32, align 1
  %1861 = lshr i32 %1844, 31
  %1862 = xor i32 %1859, %1861
  %1863 = add nuw nsw i32 %1862, %1859
  %1864 = icmp eq i32 %1863, 2
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %38, align 1
  %1866 = add i64 %1839, -16
  %1867 = add i64 %1494, 10
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = add i32 %1869, %1845
  %1871 = zext i32 %1870 to i64
  store i64 %1871, i64* %.pre66, align 8
  %1872 = icmp ult i32 %1870, %1845
  %1873 = icmp ult i32 %1870, %1869
  %1874 = or i1 %1872, %1873
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %14, align 1
  %1876 = and i32 %1870, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i32 %1869, %1845
  %1882 = xor i32 %1881, %1870
  %1883 = lshr i32 %1882, 4
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %26, align 1
  %1886 = icmp eq i32 %1870, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %29, align 1
  %1888 = lshr i32 %1870, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %32, align 1
  %1890 = lshr i32 %1869, 31
  %1891 = xor i32 %1888, %1859
  %1892 = xor i32 %1888, %1890
  %1893 = add nuw nsw i32 %1891, %1892
  %1894 = icmp eq i32 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %38, align 1
  %1896 = sext i32 %1870 to i64
  store i64 %1896, i64* %RCX.i795, align 8
  %1897 = add nsw i64 %1896, 12099168
  %1898 = add i64 %1494, 21
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i8*
  %1900 = load i8, i8* %1899, align 1
  %1901 = zext i8 %1900 to i64
  store i64 %1901, i64* %.pre66, align 8
  %1902 = zext i8 %1900 to i32
  %1903 = add nsw i32 %1902, -2
  %1904 = icmp ult i8 %1900, 2
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %14, align 1
  %1906 = and i32 %1903, 255
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %21, align 1
  %1911 = xor i32 %1903, %1902
  %1912 = lshr i32 %1911, 4
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  store i8 %1914, i8* %26, align 1
  %1915 = icmp eq i32 %1903, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %29, align 1
  %1917 = lshr i32 %1903, 31
  %1918 = trunc i32 %1917 to i8
  store i8 %1918, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v80 = select i1 %1915, i64 30, i64 293
  %1919 = add i64 %1494, %.v80
  store i64 %1919, i64* %3, align 8
  br i1 %1915, label %block_498f68, label %block_.L_49906f

block_498f68:                                     ; preds = %block_.L_498f4a
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1920 = load i64, i64* %RBP.i, align 8
  %1921 = add i64 %1920, -12
  %1922 = add i64 %1919, 14
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = sext i32 %1924 to i64
  %1926 = mul nsw i64 %1925, 76
  store i64 %1926, i64* %RCX.i795, align 8
  %1927 = lshr i64 %1926, 63
  %1928 = add i64 %1926, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1928, i64* %.pre66, align 8
  %1929 = icmp ult i64 %1928, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1930 = icmp ult i64 %1928, %1926
  %1931 = or i1 %1929, %1930
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %14, align 1
  %1933 = trunc i64 %1928 to i32
  %1934 = and i32 %1933, 252
  %1935 = tail call i32 @llvm.ctpop.i32(i32 %1934)
  %1936 = trunc i32 %1935 to i8
  %1937 = and i8 %1936, 1
  %1938 = xor i8 %1937, 1
  store i8 %1938, i8* %21, align 1
  %1939 = xor i64 %1926, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1940 = xor i64 %1939, %1928
  %1941 = lshr i64 %1940, 4
  %1942 = trunc i64 %1941 to i8
  %1943 = and i8 %1942, 1
  store i8 %1943, i8* %26, align 1
  %1944 = icmp eq i64 %1928, 0
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %29, align 1
  %1946 = lshr i64 %1928, 63
  %1947 = trunc i64 %1946 to i8
  store i8 %1947, i8* %32, align 1
  %1948 = xor i64 %1946, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %1949 = xor i64 %1946, %1927
  %1950 = add nuw nsw i64 %1948, %1949
  %1951 = icmp eq i64 %1950, 2
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %38, align 1
  %1953 = add i64 %1920, -16
  %1954 = add i64 %1919, 25
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = sext i32 %1956 to i64
  store i64 %1957, i64* %RCX.i795, align 8
  %1958 = shl nsw i64 %1957, 2
  %1959 = add i64 %1958, %1928
  %1960 = add i64 %1919, 29
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = add i32 %1962, -14
  %1964 = icmp ult i32 %1962, 14
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %14, align 1
  %1966 = and i32 %1963, 255
  %1967 = tail call i32 @llvm.ctpop.i32(i32 %1966)
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %21, align 1
  %1971 = xor i32 %1963, %1962
  %1972 = lshr i32 %1971, 4
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  store i8 %1974, i8* %26, align 1
  %1975 = icmp eq i32 %1963, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %29, align 1
  %1977 = lshr i32 %1963, 31
  %1978 = trunc i32 %1977 to i8
  store i8 %1978, i8* %32, align 1
  %1979 = lshr i32 %1962, 31
  %1980 = xor i32 %1977, %1979
  %1981 = add nuw nsw i32 %1980, %1979
  %1982 = icmp eq i32 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %38, align 1
  %.v85 = select i1 %1975, i64 35, i64 72
  %1984 = add i64 %1919, %.v85
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %1985 = load i64, i64* %RBP.i, align 8
  %1986 = add i64 %1985, -12
  %1987 = add i64 %1984, 14
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = sext i32 %1989 to i64
  %1991 = mul nsw i64 %1990, 76
  store i64 %1991, i64* %RCX.i795, align 8
  %1992 = lshr i64 %1991, 63
  %1993 = add i64 %1991, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %1993, i64* %.pre66, align 8
  %1994 = icmp ult i64 %1993, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %1995 = icmp ult i64 %1993, %1991
  %1996 = or i1 %1994, %1995
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %14, align 1
  %1998 = trunc i64 %1993 to i32
  %1999 = and i32 %1998, 252
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %21, align 1
  %2004 = xor i64 %1991, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2005 = xor i64 %2004, %1993
  %2006 = lshr i64 %2005, 4
  %2007 = trunc i64 %2006 to i8
  %2008 = and i8 %2007, 1
  store i8 %2008, i8* %26, align 1
  %2009 = icmp eq i64 %1993, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %29, align 1
  %2011 = lshr i64 %1993, 63
  %2012 = trunc i64 %2011 to i8
  store i8 %2012, i8* %32, align 1
  %2013 = xor i64 %2011, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2014 = xor i64 %2011, %1992
  %2015 = add nuw nsw i64 %2013, %2014
  %2016 = icmp eq i64 %2015, 2
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %38, align 1
  %2018 = add i64 %1985, -16
  %2019 = add i64 %1984, 25
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = sext i32 %2021 to i64
  store i64 %2022, i64* %RCX.i795, align 8
  %2023 = shl nsw i64 %2022, 2
  %2024 = add i64 %2023, %1993
  br i1 %1975, label %block_498f8b, label %block_.L_498fb0

block_498f8b:                                     ; preds = %block_498f68
  %2025 = add i64 %1984, 32
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  store i32 0, i32* %2026, align 4
  %2027 = load i64, i64* %3, align 8
  %2028 = add i64 %2027, 191
  br label %block_.L_49906a

block_.L_498fb0:                                  ; preds = %block_498f68
  %2029 = add i64 %1984, 29
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2024 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = add i32 %2031, -15
  %2033 = icmp ult i32 %2031, 15
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %14, align 1
  %2035 = and i32 %2032, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %21, align 1
  %2040 = xor i32 %2032, %2031
  %2041 = lshr i32 %2040, 4
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  store i8 %2043, i8* %26, align 1
  %2044 = icmp eq i32 %2032, 0
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %29, align 1
  %2046 = lshr i32 %2032, 31
  %2047 = trunc i32 %2046 to i8
  store i8 %2047, i8* %32, align 1
  %2048 = lshr i32 %2031, 31
  %2049 = xor i32 %2046, %2048
  %2050 = add nuw nsw i32 %2049, %2048
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %38, align 1
  %.v86 = select i1 %2044, i64 35, i64 72
  %2053 = add i64 %1984, %.v86
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %2054 = add i64 %2053, 14
  store i64 %2054, i64* %3, align 8
  %2055 = load i32, i32* %1988, align 4
  %2056 = sext i32 %2055 to i64
  %2057 = mul nsw i64 %2056, 76
  store i64 %2057, i64* %RCX.i795, align 8
  %2058 = lshr i64 %2057, 63
  %2059 = add i64 %2057, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %2059, i64* %.pre66, align 8
  %2060 = icmp ult i64 %2059, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2061 = icmp ult i64 %2059, %2057
  %2062 = or i1 %2060, %2061
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %14, align 1
  %2064 = trunc i64 %2059 to i32
  %2065 = and i32 %2064, 252
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %21, align 1
  %2070 = xor i64 %2057, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2071 = xor i64 %2070, %2059
  %2072 = lshr i64 %2071, 4
  %2073 = trunc i64 %2072 to i8
  %2074 = and i8 %2073, 1
  store i8 %2074, i8* %26, align 1
  %2075 = icmp eq i64 %2059, 0
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %29, align 1
  %2077 = lshr i64 %2059, 63
  %2078 = trunc i64 %2077 to i8
  store i8 %2078, i8* %32, align 1
  %2079 = xor i64 %2077, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2080 = xor i64 %2077, %2058
  %2081 = add nuw nsw i64 %2079, %2080
  %2082 = icmp eq i64 %2081, 2
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %38, align 1
  %2084 = load i64, i64* %RBP.i, align 8
  %2085 = add i64 %2084, -16
  %2086 = add i64 %2053, 25
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = sext i32 %2088 to i64
  store i64 %2089, i64* %RCX.i795, align 8
  %2090 = shl nsw i64 %2089, 2
  %2091 = add i64 %2090, %2059
  br i1 %2044, label %block_498fd3, label %block_.L_498ff8

block_498fd3:                                     ; preds = %block_.L_498fb0
  %2092 = add i64 %2053, 32
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i32*
  store i32 7, i32* %2093, align 4
  %2094 = load i64, i64* %3, align 8
  %2095 = add i64 %2094, 114
  br label %block_.L_499065

block_.L_498ff8:                                  ; preds = %block_.L_498fb0
  %2096 = add i64 %2053, 29
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2091 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = add i32 %2098, -13
  %2100 = icmp ult i32 %2098, 13
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %14, align 1
  %2102 = and i32 %2099, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %21, align 1
  %2107 = xor i32 %2099, %2098
  %2108 = lshr i32 %2107, 4
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %26, align 1
  %2111 = icmp eq i32 %2099, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %29, align 1
  %2113 = lshr i32 %2099, 31
  %2114 = trunc i32 %2113 to i8
  store i8 %2114, i8* %32, align 1
  %2115 = lshr i32 %2098, 31
  %2116 = xor i32 %2113, %2115
  %2117 = add nuw nsw i32 %2116, %2115
  %2118 = icmp eq i32 %2117, 2
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %38, align 1
  %.v87 = select i1 %2111, i64 35, i64 72
  %2120 = add i64 %2053, %.v87
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %2121 = add i64 %2084, -12
  %2122 = add i64 %2120, 14
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = sext i32 %2124 to i64
  %2126 = mul nsw i64 %2125, 76
  store i64 %2126, i64* %RCX.i795, align 8
  %2127 = lshr i64 %2126, 63
  %2128 = add i64 %2126, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %2128, i64* %.pre66, align 8
  %2129 = icmp ult i64 %2128, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2130 = icmp ult i64 %2128, %2126
  %2131 = or i1 %2129, %2130
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %14, align 1
  %2133 = trunc i64 %2128 to i32
  %2134 = and i32 %2133, 252
  %2135 = tail call i32 @llvm.ctpop.i32(i32 %2134)
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = xor i8 %2137, 1
  store i8 %2138, i8* %21, align 1
  %2139 = xor i64 %2126, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2140 = xor i64 %2139, %2128
  %2141 = lshr i64 %2140, 4
  %2142 = trunc i64 %2141 to i8
  %2143 = and i8 %2142, 1
  store i8 %2143, i8* %26, align 1
  %2144 = icmp eq i64 %2128, 0
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %29, align 1
  %2146 = lshr i64 %2128, 63
  %2147 = trunc i64 %2146 to i8
  store i8 %2147, i8* %32, align 1
  %2148 = xor i64 %2146, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2149 = xor i64 %2146, %2127
  %2150 = add nuw nsw i64 %2148, %2149
  %2151 = icmp eq i64 %2150, 2
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %38, align 1
  %2153 = load i64, i64* %RBP.i, align 8
  %2154 = add i64 %2153, -16
  %2155 = add i64 %2120, 25
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2154 to i32*
  %2157 = load i32, i32* %2156, align 4
  %2158 = sext i32 %2157 to i64
  store i64 %2158, i64* %RCX.i795, align 8
  %2159 = shl nsw i64 %2158, 2
  %2160 = add i64 %2159, %2128
  %2161 = add i64 %2120, 32
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  br i1 %2111, label %block_49901b, label %block_.L_499040

block_49901b:                                     ; preds = %block_.L_498ff8
  store i32 1, i32* %2162, align 4
  %2163 = load i64, i64* %3, align 8
  %2164 = add i64 %2163, 37
  store i64 %2164, i64* %3, align 8
  br label %block_.L_499060

block_.L_499040:                                  ; preds = %block_.L_498ff8
  store i32 0, i32* %2162, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_499060

block_.L_499060:                                  ; preds = %block_.L_499040, %block_49901b
  %2165 = phi i64 [ %.pre60, %block_.L_499040 ], [ %2164, %block_49901b ]
  %2166 = add i64 %2165, 5
  store i64 %2166, i64* %3, align 8
  br label %block_.L_499065

block_.L_499065:                                  ; preds = %block_.L_499060, %block_498fd3
  %storemerge31 = phi i64 [ %2095, %block_498fd3 ], [ %2166, %block_.L_499060 ]
  %2167 = add i64 %storemerge31, 5
  store i64 %2167, i64* %3, align 8
  br label %block_.L_49906a

block_.L_49906a:                                  ; preds = %block_.L_499065, %block_498f8b
  %storemerge29 = phi i64 [ %2028, %block_498f8b ], [ %2167, %block_.L_499065 ]
  %2168 = add i64 %storemerge29, 303
  br label %block_.L_499199

block_.L_49906f:                                  ; preds = %block_.L_498f4a
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -12
  %2171 = add i64 %1919, 4
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = mul i32 %2173, 20
  %2175 = add i32 %2174, 21
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %.pre66, align 8
  %2177 = icmp ugt i32 %2174, -22
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %14, align 1
  %2179 = and i32 %2175, 253
  %2180 = tail call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  store i8 %2183, i8* %21, align 1
  %2184 = xor i32 %2174, 16
  %2185 = xor i32 %2184, %2175
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  store i8 %2188, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2189 = lshr i32 %2175, 31
  %2190 = trunc i32 %2189 to i8
  store i8 %2190, i8* %32, align 1
  %2191 = lshr i32 %2174, 31
  %2192 = xor i32 %2189, %2191
  %2193 = add nuw nsw i32 %2192, %2189
  %2194 = icmp eq i32 %2193, 2
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %38, align 1
  %2196 = add i64 %2169, -16
  %2197 = add i64 %1919, 10
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = add i32 %2199, %2175
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %.pre66, align 8
  %2202 = icmp ult i32 %2200, %2175
  %2203 = icmp ult i32 %2200, %2199
  %2204 = or i1 %2202, %2203
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %14, align 1
  %2206 = and i32 %2200, 255
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %21, align 1
  %2211 = xor i32 %2199, %2175
  %2212 = xor i32 %2211, %2200
  %2213 = lshr i32 %2212, 4
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %26, align 1
  %2216 = icmp eq i32 %2200, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %29, align 1
  %2218 = lshr i32 %2200, 31
  %2219 = trunc i32 %2218 to i8
  store i8 %2219, i8* %32, align 1
  %2220 = lshr i32 %2199, 31
  %2221 = xor i32 %2218, %2189
  %2222 = xor i32 %2218, %2220
  %2223 = add nuw nsw i32 %2221, %2222
  %2224 = icmp eq i32 %2223, 2
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %38, align 1
  %2226 = sext i32 %2200 to i64
  store i64 %2226, i64* %RCX.i795, align 8
  %2227 = add nsw i64 %2226, 12099168
  %2228 = add i64 %1919, 21
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i8*
  %2230 = load i8, i8* %2229, align 1
  %2231 = zext i8 %2230 to i64
  store i64 %2231, i64* %.pre66, align 8
  %2232 = zext i8 %2230 to i32
  %2233 = add nsw i32 %2232, -1
  %2234 = icmp eq i8 %2230, 0
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %14, align 1
  %2236 = and i32 %2233, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1
  %2241 = xor i32 %2233, %2232
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %26, align 1
  %2245 = icmp eq i32 %2233, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %29, align 1
  %2247 = lshr i32 %2233, 31
  %2248 = trunc i32 %2247 to i8
  store i8 %2248, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v81 = select i1 %2245, i64 30, i64 293
  %2249 = add i64 %1919, %.v81
  store i64 %2249, i64* %3, align 8
  br i1 %2245, label %block_49908d, label %block_.L_499194

block_49908d:                                     ; preds = %block_.L_49906f
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %2250 = load i64, i64* %RBP.i, align 8
  %2251 = add i64 %2250, -12
  %2252 = add i64 %2249, 14
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = sext i32 %2254 to i64
  %2256 = mul nsw i64 %2255, 76
  store i64 %2256, i64* %RCX.i795, align 8
  %2257 = lshr i64 %2256, 63
  %2258 = add i64 %2256, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %2258, i64* %.pre66, align 8
  %2259 = icmp ult i64 %2258, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2260 = icmp ult i64 %2258, %2256
  %2261 = or i1 %2259, %2260
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %14, align 1
  %2263 = trunc i64 %2258 to i32
  %2264 = and i32 %2263, 252
  %2265 = tail call i32 @llvm.ctpop.i32(i32 %2264)
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = xor i8 %2267, 1
  store i8 %2268, i8* %21, align 1
  %2269 = xor i64 %2256, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2270 = xor i64 %2269, %2258
  %2271 = lshr i64 %2270, 4
  %2272 = trunc i64 %2271 to i8
  %2273 = and i8 %2272, 1
  store i8 %2273, i8* %26, align 1
  %2274 = icmp eq i64 %2258, 0
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %29, align 1
  %2276 = lshr i64 %2258, 63
  %2277 = trunc i64 %2276 to i8
  store i8 %2277, i8* %32, align 1
  %2278 = xor i64 %2276, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2279 = xor i64 %2276, %2257
  %2280 = add nuw nsw i64 %2278, %2279
  %2281 = icmp eq i64 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %38, align 1
  %2283 = add i64 %2250, -16
  %2284 = add i64 %2249, 25
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2283 to i32*
  %2286 = load i32, i32* %2285, align 4
  %2287 = sext i32 %2286 to i64
  store i64 %2287, i64* %RCX.i795, align 8
  %2288 = shl nsw i64 %2287, 2
  %2289 = add i64 %2288, %2258
  %2290 = add i64 %2249, 29
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  %2292 = load i32, i32* %2291, align 4
  %2293 = add i32 %2292, -13
  %2294 = icmp ult i32 %2292, 13
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %14, align 1
  %2296 = and i32 %2293, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %21, align 1
  %2301 = xor i32 %2293, %2292
  %2302 = lshr i32 %2301, 4
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  store i8 %2304, i8* %26, align 1
  %2305 = icmp eq i32 %2293, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %29, align 1
  %2307 = lshr i32 %2293, 31
  %2308 = trunc i32 %2307 to i8
  store i8 %2308, i8* %32, align 1
  %2309 = lshr i32 %2292, 31
  %2310 = xor i32 %2307, %2309
  %2311 = add nuw nsw i32 %2310, %2309
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %38, align 1
  %.v82 = select i1 %2305, i64 35, i64 72
  %2314 = add i64 %2249, %.v82
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -12
  %2317 = add i64 %2314, 14
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = sext i32 %2319 to i64
  %2321 = mul nsw i64 %2320, 76
  store i64 %2321, i64* %RCX.i795, align 8
  %2322 = lshr i64 %2321, 63
  %2323 = add i64 %2321, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %2323, i64* %.pre66, align 8
  %2324 = icmp ult i64 %2323, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2325 = icmp ult i64 %2323, %2321
  %2326 = or i1 %2324, %2325
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %14, align 1
  %2328 = trunc i64 %2323 to i32
  %2329 = and i32 %2328, 252
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %21, align 1
  %2334 = xor i64 %2321, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2335 = xor i64 %2334, %2323
  %2336 = lshr i64 %2335, 4
  %2337 = trunc i64 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %26, align 1
  %2339 = icmp eq i64 %2323, 0
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %29, align 1
  %2341 = lshr i64 %2323, 63
  %2342 = trunc i64 %2341 to i8
  store i8 %2342, i8* %32, align 1
  %2343 = xor i64 %2341, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2344 = xor i64 %2341, %2322
  %2345 = add nuw nsw i64 %2343, %2344
  %2346 = icmp eq i64 %2345, 2
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %38, align 1
  %2348 = add i64 %2315, -16
  %2349 = add i64 %2314, 25
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = sext i32 %2351 to i64
  store i64 %2352, i64* %RCX.i795, align 8
  %2353 = shl nsw i64 %2352, 2
  %2354 = add i64 %2353, %2323
  br i1 %2305, label %block_4990b0, label %block_.L_4990d5

block_4990b0:                                     ; preds = %block_49908d
  %2355 = add i64 %2314, 32
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  store i32 0, i32* %2356, align 4
  %2357 = load i64, i64* %3, align 8
  %2358 = add i64 %2357, 191
  br label %block_.L_49918f

block_.L_4990d5:                                  ; preds = %block_49908d
  %2359 = add i64 %2314, 29
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2354 to i32*
  %2361 = load i32, i32* %2360, align 4
  %2362 = add i32 %2361, -15
  %2363 = icmp ult i32 %2361, 15
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %14, align 1
  %2365 = and i32 %2362, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  store i8 %2369, i8* %21, align 1
  %2370 = xor i32 %2362, %2361
  %2371 = lshr i32 %2370, 4
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  store i8 %2373, i8* %26, align 1
  %2374 = icmp eq i32 %2362, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %29, align 1
  %2376 = lshr i32 %2362, 31
  %2377 = trunc i32 %2376 to i8
  store i8 %2377, i8* %32, align 1
  %2378 = lshr i32 %2361, 31
  %2379 = xor i32 %2376, %2378
  %2380 = add nuw nsw i32 %2379, %2378
  %2381 = icmp eq i32 %2380, 2
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %38, align 1
  %.v83 = select i1 %2374, i64 35, i64 72
  %2383 = add i64 %2314, %.v83
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %2384 = add i64 %2383, 14
  store i64 %2384, i64* %3, align 8
  %2385 = load i32, i32* %2318, align 4
  %2386 = sext i32 %2385 to i64
  %2387 = mul nsw i64 %2386, 76
  store i64 %2387, i64* %RCX.i795, align 8
  %2388 = lshr i64 %2387, 63
  %2389 = add i64 %2387, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %2389, i64* %.pre66, align 8
  %2390 = icmp ult i64 %2389, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2391 = icmp ult i64 %2389, %2387
  %2392 = or i1 %2390, %2391
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %14, align 1
  %2394 = trunc i64 %2389 to i32
  %2395 = and i32 %2394, 252
  %2396 = tail call i32 @llvm.ctpop.i32(i32 %2395)
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = xor i8 %2398, 1
  store i8 %2399, i8* %21, align 1
  %2400 = xor i64 %2387, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2401 = xor i64 %2400, %2389
  %2402 = lshr i64 %2401, 4
  %2403 = trunc i64 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %26, align 1
  %2405 = icmp eq i64 %2389, 0
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %29, align 1
  %2407 = lshr i64 %2389, 63
  %2408 = trunc i64 %2407 to i8
  store i8 %2408, i8* %32, align 1
  %2409 = xor i64 %2407, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2410 = xor i64 %2407, %2388
  %2411 = add nuw nsw i64 %2409, %2410
  %2412 = icmp eq i64 %2411, 2
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %38, align 1
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -16
  %2416 = add i64 %2383, 25
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = sext i32 %2418 to i64
  store i64 %2419, i64* %RCX.i795, align 8
  %2420 = shl nsw i64 %2419, 2
  %2421 = add i64 %2420, %2389
  br i1 %2374, label %block_4990f8, label %block_.L_49911d

block_4990f8:                                     ; preds = %block_.L_4990d5
  %2422 = add i64 %2383, 32
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i32*
  store i32 7, i32* %2423, align 4
  %2424 = load i64, i64* %3, align 8
  %2425 = add i64 %2424, 114
  br label %block_.L_49918a

block_.L_49911d:                                  ; preds = %block_.L_4990d5
  %2426 = add i64 %2383, 29
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2421 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = add i32 %2428, -14
  %2430 = icmp ult i32 %2428, 14
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %14, align 1
  %2432 = and i32 %2429, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %21, align 1
  %2437 = xor i32 %2429, %2428
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %26, align 1
  %2441 = icmp eq i32 %2429, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %29, align 1
  %2443 = lshr i32 %2429, 31
  %2444 = trunc i32 %2443 to i8
  store i8 %2444, i8* %32, align 1
  %2445 = lshr i32 %2428, 31
  %2446 = xor i32 %2443, %2445
  %2447 = add nuw nsw i32 %2446, %2445
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %38, align 1
  %.v84 = select i1 %2441, i64 35, i64 72
  %2450 = add i64 %2383, %.v84
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %.pre66, align 8
  %2451 = add i64 %2414, -12
  %2452 = add i64 %2450, 14
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = sext i32 %2454 to i64
  %2456 = mul nsw i64 %2455, 76
  store i64 %2456, i64* %RCX.i795, align 8
  %2457 = lshr i64 %2456, 63
  %2458 = add i64 %2456, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  store i64 %2458, i64* %.pre66, align 8
  %2459 = icmp ult i64 %2458, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2460 = icmp ult i64 %2458, %2456
  %2461 = or i1 %2459, %2460
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %14, align 1
  %2463 = trunc i64 %2458 to i32
  %2464 = and i32 %2463, 252
  %2465 = tail call i32 @llvm.ctpop.i32(i32 %2464)
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %21, align 1
  %2469 = xor i64 %2456, ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64)
  %2470 = xor i64 %2469, %2458
  %2471 = lshr i64 %2470, 4
  %2472 = trunc i64 %2471 to i8
  %2473 = and i8 %2472, 1
  store i8 %2473, i8* %26, align 1
  %2474 = icmp eq i64 %2458, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %29, align 1
  %2476 = lshr i64 %2458, 63
  %2477 = trunc i64 %2476 to i8
  store i8 %2477, i8* %32, align 1
  %2478 = xor i64 %2476, lshr (i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64 63)
  %2479 = xor i64 %2476, %2457
  %2480 = add nuw nsw i64 %2478, %2479
  %2481 = icmp eq i64 %2480, 2
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %38, align 1
  %2483 = load i64, i64* %RBP.i, align 8
  %2484 = add i64 %2483, -16
  %2485 = add i64 %2450, 25
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  %2487 = load i32, i32* %2486, align 4
  %2488 = sext i32 %2487 to i64
  store i64 %2488, i64* %RCX.i795, align 8
  %2489 = shl nsw i64 %2488, 2
  %2490 = add i64 %2489, %2458
  %2491 = add i64 %2450, 32
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  br i1 %2441, label %block_499140, label %block_.L_499165

block_499140:                                     ; preds = %block_.L_49911d
  store i32 1, i32* %2492, align 4
  %2493 = load i64, i64* %3, align 8
  %2494 = add i64 %2493, 37
  store i64 %2494, i64* %3, align 8
  br label %block_.L_499185

block_.L_499165:                                  ; preds = %block_.L_49911d
  store i32 0, i32* %2492, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_499185

block_.L_499185:                                  ; preds = %block_.L_499165, %block_499140
  %2495 = phi i64 [ %.pre61, %block_.L_499165 ], [ %2494, %block_499140 ]
  %2496 = add i64 %2495, 5
  store i64 %2496, i64* %3, align 8
  br label %block_.L_49918a

block_.L_49918a:                                  ; preds = %block_.L_499185, %block_4990f8
  %storemerge33 = phi i64 [ %2425, %block_4990f8 ], [ %2496, %block_.L_499185 ]
  %2497 = add i64 %storemerge33, 5
  store i64 %2497, i64* %3, align 8
  br label %block_.L_49918f

block_.L_49918f:                                  ; preds = %block_.L_49918a, %block_4990b0
  %storemerge32 = phi i64 [ %2358, %block_4990b0 ], [ %2497, %block_.L_49918a ]
  %2498 = add i64 %storemerge32, 5
  store i64 %2498, i64* %3, align 8
  br label %block_.L_499194

block_.L_499194:                                  ; preds = %block_.L_49906f, %block_.L_49918f
  %2499 = phi i64 [ %2498, %block_.L_49918f ], [ %2249, %block_.L_49906f ]
  %2500 = add i64 %2499, 5
  store i64 %2500, i64* %3, align 8
  br label %block_.L_499199

block_.L_499199:                                  ; preds = %block_.L_499194, %block_.L_49906a
  %storemerge30 = phi i64 [ %2168, %block_.L_49906a ], [ %2500, %block_.L_499194 ]
  %2501 = add i64 %storemerge30, 5
  store i64 %2501, i64* %3, align 8
  br label %block_.L_49919e

block_.L_49919e:                                  ; preds = %block_.L_499199, %block_.L_498f45
  %storemerge28 = phi i64 [ %1838, %block_.L_498f45 ], [ %2501, %block_.L_499199 ]
  %2502 = add i64 %storemerge28, 5
  store i64 %2502, i64* %3, align 8
  br label %block_.L_4991a3

block_.L_4991a3:                                  ; preds = %block_.L_49919e, %block_498e25
  %storemerge = phi i64 [ %1423, %block_498e25 ], [ %2502, %block_.L_49919e ]
  %2503 = load i64, i64* %RBP.i, align 8
  %2504 = add i64 %2503, -16
  %2505 = add i64 %storemerge, 3
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = add i32 %2507, 1
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %.pre66, align 8
  %2510 = icmp eq i32 %2507, -1
  %2511 = icmp eq i32 %2508, 0
  %2512 = or i1 %2510, %2511
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %14, align 1
  %2514 = and i32 %2508, 255
  %2515 = tail call i32 @llvm.ctpop.i32(i32 %2514)
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  store i8 %2518, i8* %21, align 1
  %2519 = xor i32 %2508, %2507
  %2520 = lshr i32 %2519, 4
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  store i8 %2522, i8* %26, align 1
  %2523 = zext i1 %2511 to i8
  store i8 %2523, i8* %29, align 1
  %2524 = lshr i32 %2508, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %32, align 1
  %2526 = lshr i32 %2507, 31
  %2527 = xor i32 %2524, %2526
  %2528 = add nuw nsw i32 %2527, %2524
  %2529 = icmp eq i32 %2528, 2
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %38, align 1
  %2531 = add i64 %storemerge, 9
  store i64 %2531, i64* %3, align 8
  store i32 %2508, i32* %2506, align 4
  %2532 = load i64, i64* %3, align 8
  %2533 = add i64 %2532, -971
  store i64 %2533, i64* %3, align 8
  br label %block_.L_498de1

block_.L_4991b1:                                  ; preds = %block_.L_498de1
  %2534 = add i64 %1260, -12
  %2535 = add i64 %1293, 8
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = add i32 %2537, 1
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %.pre66, align 8
  %2540 = icmp eq i32 %2537, -1
  %2541 = icmp eq i32 %2538, 0
  %2542 = or i1 %2540, %2541
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %14, align 1
  %2544 = and i32 %2538, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %21, align 1
  %2549 = xor i32 %2538, %2537
  %2550 = lshr i32 %2549, 4
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  store i8 %2552, i8* %26, align 1
  %2553 = zext i1 %2541 to i8
  store i8 %2553, i8* %29, align 1
  %2554 = lshr i32 %2538, 31
  %2555 = trunc i32 %2554 to i8
  store i8 %2555, i8* %32, align 1
  %2556 = lshr i32 %2537, 31
  %2557 = xor i32 %2554, %2556
  %2558 = add nuw nsw i32 %2557, %2554
  %2559 = icmp eq i32 %2558, 2
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %38, align 1
  %2561 = add i64 %1293, 14
  store i64 %2561, i64* %3, align 8
  store i32 %2538, i32* %2536, align 4
  %2562 = load i64, i64* %3, align 8
  %2563 = add i64 %2562, -1013
  store i64 %2563, i64* %3, align 8
  br label %block_.L_498dca

block_.L_4991c4.loopexit:                         ; preds = %block_.L_498dca
  br label %block_.L_4991c4

block_.L_4991c4:                                  ; preds = %block_.L_4991c4.loopexit, %block_498bfd
  %2564 = phi i64 [ %494, %block_498bfd ], [ %1255, %block_.L_4991c4.loopexit ]
  %MEMORY.26 = phi %struct.Memory* [ %2, %block_498bfd ], [ %call2_498db3, %block_.L_4991c4.loopexit ]
  %2565 = load i64, i64* %6, align 8
  %2566 = add i64 %2565, 6368
  store i64 %2566, i64* %6, align 8
  %2567 = icmp ugt i64 %2565, -6369
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %14, align 1
  %2569 = trunc i64 %2566 to i32
  %2570 = and i32 %2569, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  %2575 = xor i64 %2566, %2565
  %2576 = lshr i64 %2575, 4
  %2577 = trunc i64 %2576 to i8
  %2578 = and i8 %2577, 1
  store i8 %2578, i8* %26, align 1
  %2579 = icmp eq i64 %2566, 0
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %29, align 1
  %2581 = lshr i64 %2566, 63
  %2582 = trunc i64 %2581 to i8
  store i8 %2582, i8* %32, align 1
  %2583 = lshr i64 %2565, 63
  %2584 = xor i64 %2581, %2583
  %2585 = add nuw nsw i64 %2584, %2581
  %2586 = icmp eq i64 %2585, 2
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %38, align 1
  %2588 = add i64 %2564, 8
  store i64 %2588, i64* %3, align 8
  %2589 = add i64 %2565, 6376
  %2590 = inttoptr i64 %2566 to i64*
  %2591 = load i64, i64* %2590, align 8
  store i64 %2591, i64* %RBP.i, align 8
  store i64 %2589, i64* %6, align 8
  %2592 = add i64 %2564, 9
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2589 to i64*
  %2594 = load i64, i64* %2593, align 8
  store i64 %2594, i64* %3, align 8
  %2595 = add i64 %2565, 6384
  store i64 %2595, i64* %6, align 8
  ret %struct.Memory* %MEMORY.26
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
define %struct.Memory* @routine_subq__0x18e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -6368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 6368
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
define %struct.Memory* @routine_movl__0x1__MINUS0x18dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7b0568___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_je_.L_498b2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__eax__0x7b0568(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7b0568_type* @G_0x7b0568 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_498bf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_498bdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xaf2eb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2eb0_type* @G__0xaf2eb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_498bca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_498bcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_498b48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498be2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_498b31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6364
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
define %struct.Memory* @routine_je_.L_498c02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4991c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18d8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xab0fbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.store_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.get_last_player(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_498c33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498c42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_498c47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.genmove_conservative(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.play_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jl_.L_498c8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_498c96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movb__cl__MINUS0x18dd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6365
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_498cd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
define %struct.Memory* @routine_setl__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x18dd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6365
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x18dd__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6365
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
define %struct.Memory* @routine_jne_.L_498c47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb454f8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb454f8_type* @G_0xb454f8 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.aftermath_compute_score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0xaf3454(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0xaf3454_type* @G_0xaf3454 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_498dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_498d99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.aftermath_final_status(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x5c0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xaf2900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x4c___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_498d1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498d9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498d05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.restore_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0xab0fbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4991c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4991b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x5c0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498e2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4991a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498f4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xaf2900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2900_type* @G__0xaf2900 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp eq i32 %10, 0
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_498e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -7
  %12 = icmp ult i32 %10, 7
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498eb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xf____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 15, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498f45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498f40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -2
  %12 = icmp ult i32 %10, 2
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498f1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xe____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 14, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498f3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 13, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498f40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49919e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_49906f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xe____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -14
  %12 = icmp ult i32 %10, 14
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498fb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49906a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -15
  %12 = icmp ult i32 %10, 15
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_498ff8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 7, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499065(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -13
  %12 = icmp ult i32 %10, 13
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_499040(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499060(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_499194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4990d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49918f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_49911d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49918a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_499165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_499185(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498de1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4991b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_498dca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -6369
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
