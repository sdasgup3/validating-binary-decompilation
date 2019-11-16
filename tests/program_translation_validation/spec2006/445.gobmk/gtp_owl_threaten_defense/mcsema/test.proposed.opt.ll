; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G__0x57f240_type = type <{ [8 x i8] }>
%G__0x58714f_type = type <{ [8 x i8] }>
%G__0x58777f_type = type <{ [8 x i8] }>
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
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G__0x57f240 = global %G__0x57f240_type zeroinitializer
@G__0x58714f = global %G__0x58714f_type zeroinitializer
@G__0x58777f = global %G__0x58777f_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_48c880.gtp_decode_coord(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_426140.silent_examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_417210.reading_cache_clear(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44adb0.owl_threaten_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4989f0.gtp_print_code(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48c2e0.gtp_print_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48bc30.gtp_finish_response(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @gtp_owl_threaten_defense(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i57 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -28
  store i64 %41, i64* %RSI.i57, align 8
  %RDX.i75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %42 = add i64 %7, -32
  store i64 %42, i64* %RDX.i75, align 8
  %RDI.i182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = add i64 %7, -24
  %44 = load i64, i64* %RDI.i182, align 8
  %45 = add i64 %10, 19
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -16
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RDI.i182, align 8
  %53 = add i64 %49, -41300
  %54 = add i64 %49, 9
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57, align 8
  store i64 %56, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  %call2_4969d8 = tail call %struct.Memory* @sub_48c880.gtp_decode_coord(%struct.State* %0, i64 %53, %struct.Memory* %2)
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i176 = bitcast %union.anon* %58 to i32*
  %59 = load i32, i32* %EAX.i176, align 4
  %60 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %61 = and i32 %59, 255
  %62 = tail call i32 @llvm.ctpop.i32(i32 %61)
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %66 = icmp eq i32 %59, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %30, align 1
  %68 = lshr i32 %59, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %66, i64 9, i64 34
  %70 = add i64 %60, %.v
  store i64 %70, i64* %3, align 8
  br i1 %66, label %block_4969e6, label %block_.L_4969ff

block_4969e6:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x58714f_type* @G__0x58714f to i64), i64* %RDI.i182, align 8
  %AL.i171 = bitcast %union.anon* %58 to i8*
  store i8 0, i8* %AL.i171, align 1
  %71 = add i64 %70, -45382
  %72 = add i64 %70, 17
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %6, align 8
  store i64 %71, i64* %3, align 8
  %call2_4969f2 = tail call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* nonnull %0, i64 %71, %struct.Memory* %call2_4969d8)
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -4
  %78 = load i32, i32* %EAX.i176, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %81, align 4
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 282
  store i64 %83, i64* %3, align 8
  %.pre16 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  br label %block_.L_496b14

block_.L_4969ff:                                  ; preds = %entry
  %RAX.i163 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -20
  %86 = add i64 %70, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = mul i32 %88, 20
  %90 = add i32 %89, 21
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX.i163, align 8
  %92 = icmp ugt i32 %89, -22
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %14, align 1
  %94 = and i32 %90, 253
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %21, align 1
  %99 = xor i32 %89, 16
  %100 = xor i32 %99, %90
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %104 = lshr i32 %90, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %33, align 1
  %106 = lshr i32 %89, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %104
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %39, align 1
  %111 = add i64 %84, -24
  %112 = add i64 %70, 10
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, %90
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RAX.i163, align 8
  %117 = icmp ult i32 %115, %90
  %118 = icmp ult i32 %115, %114
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = and i32 %115, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1
  %126 = xor i32 %114, %90
  %127 = xor i32 %126, %115
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %27, align 1
  %131 = icmp eq i32 %115, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %30, align 1
  %133 = lshr i32 %115, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %33, align 1
  %135 = lshr i32 %114, 31
  %136 = xor i32 %133, %104
  %137 = xor i32 %133, %135
  %138 = add nuw nsw i32 %136, %137
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %39, align 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i156 = getelementptr inbounds %union.anon, %union.anon* %141, i64 0, i32 0
  %142 = sext i32 %115 to i64
  store i64 %142, i64* %RCX.i156, align 8
  %143 = add nsw i64 %142, 12099168
  %144 = add i64 %70, 21
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i8*
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i64
  store i64 %147, i64* %RAX.i163, align 8
  %148 = zext i8 %146 to i32
  store i8 0, i8* %14, align 1
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148)
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %153 = icmp eq i8 %146, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v17 = select i1 %153, i64 30, i64 55
  %155 = add i64 %70, %.v17
  store i64 %155, i64* %3, align 8
  br i1 %153, label %block_496a1d, label %block_.L_496a36

block_496a1d:                                     ; preds = %block_.L_4969ff
  store i64 ptrtoint (%G__0x58777f_type* @G__0x58777f to i64), i64* %RDI.i182, align 8
  %AL.i145 = bitcast %union.anon* %58 to i8*
  store i8 0, i8* %AL.i145, align 1
  %156 = add i64 %155, -45437
  %157 = add i64 %155, 17
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %6, align 8
  store i64 %156, i64* %3, align 8
  %call2_496a29 = tail call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* nonnull %0, i64 %156, %struct.Memory* %call2_4969d8)
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -4
  %163 = load i32, i32* %EAX.i176, align 4
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, 3
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %166, align 4
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 227
  store i64 %168, i64* %3, align 8
  br label %block_.L_496b14

block_.L_496a36:                                  ; preds = %block_.L_4969ff
  store i64 3, i64* %RSI.i57, align 8
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -20
  %171 = add i64 %155, 9
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = mul i32 %173, 20
  %175 = add i32 %174, 21
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RAX.i163, align 8
  %177 = icmp ugt i32 %174, -22
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %14, align 1
  %179 = and i32 %175, 253
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %21, align 1
  %184 = xor i32 %174, 16
  %185 = xor i32 %184, %175
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %189 = lshr i32 %175, 31
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %33, align 1
  %191 = lshr i32 %174, 31
  %192 = xor i32 %189, %191
  %193 = add nuw nsw i32 %192, %189
  %194 = icmp eq i32 %193, 2
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %39, align 1
  %196 = add i64 %169, -24
  %197 = add i64 %155, 15
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, %175
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX.i163, align 8
  %202 = icmp ult i32 %200, %175
  %203 = icmp ult i32 %200, %199
  %204 = or i1 %202, %203
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %14, align 1
  %206 = and i32 %200, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  %211 = xor i32 %199, %175
  %212 = xor i32 %211, %200
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %27, align 1
  %216 = icmp eq i32 %200, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %30, align 1
  %218 = lshr i32 %200, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %33, align 1
  %220 = lshr i32 %199, 31
  %221 = xor i32 %218, %189
  %222 = xor i32 %218, %220
  %223 = add nuw nsw i32 %221, %222
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %39, align 1
  %226 = sext i32 %200 to i64
  store i64 %226, i64* %RCX.i156, align 8
  %227 = add nsw i64 %226, 12099168
  %228 = add i64 %155, 26
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i8*
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i64
  store i64 %231, i64* %RDI.i182, align 8
  %232 = add i64 %155, -461046
  %233 = add i64 %155, 31
  %234 = load i64, i64* %6, align 8
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %236, align 8
  store i64 %235, i64* %6, align 8
  store i64 %232, i64* %3, align 8
  %call2_496a50 = tail call %struct.Memory* @sub_426140.silent_examine_position(%struct.State* nonnull %0, i64 %232, %struct.Memory* %call2_4969d8)
  %237 = load i64, i64* %3, align 8
  %238 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %14, align 1
  %239 = trunc i64 %238 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %245 = icmp eq i64 %238, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %30, align 1
  %247 = lshr i64 %238, 63
  %248 = trunc i64 %247 to i8
  store i8 %248, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v18 = select i1 %245, i64 20, i64 15
  %249 = add i64 %237, %.v18
  store i64 %249, i64* %3, align 8
  br i1 %245, label %block_.L_496a69, label %block_496a64

block_496a64:                                     ; preds = %block_.L_496a36
  %250 = add i64 %249, -522324
  %251 = add i64 %249, 5
  %252 = load i64, i64* %6, align 8
  %253 = add i64 %252, -8
  %254 = inttoptr i64 %253 to i64*
  store i64 %251, i64* %254, align 8
  store i64 %253, i64* %6, align 8
  store i64 %250, i64* %3, align 8
  %call2_496a64 = tail call %struct.Memory* @sub_417210.reading_cache_clear(%struct.State* nonnull %0, i64 %250, %struct.Memory* %call2_496a50)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_496a69

block_.L_496a69:                                  ; preds = %block_496a64, %block_.L_496a36
  %255 = phi i64 [ %249, %block_.L_496a36 ], [ %.pre, %block_496a64 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_496a50, %block_.L_496a36 ], [ %call2_496a64, %block_496a64 ]
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -28
  store i64 %257, i64* %RSI.i57, align 8
  %258 = add i64 %256, -32
  store i64 %258, i64* %RDX.i75, align 8
  %259 = add i64 %256, -20
  %260 = add i64 %255, 12
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = mul i32 %262, 20
  %264 = add i32 %263, 21
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX.i163, align 8
  %266 = icmp ugt i32 %263, -22
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %14, align 1
  %268 = and i32 %264, 253
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = xor i32 %263, 16
  %274 = xor i32 %273, %264
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %278 = lshr i32 %264, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %33, align 1
  %280 = lshr i32 %263, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %39, align 1
  %285 = add i64 %256, -24
  %286 = add i64 %255, 18
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, %264
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX.i163, align 8
  %291 = icmp ult i32 %289, %264
  %292 = icmp ult i32 %289, %288
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i32 %288, %264
  %301 = xor i32 %300, %289
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %27, align 1
  %305 = icmp eq i32 %289, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %30, align 1
  %307 = lshr i32 %289, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %33, align 1
  %309 = lshr i32 %288, 31
  %310 = xor i32 %307, %278
  %311 = xor i32 %307, %309
  %312 = add nuw nsw i32 %310, %311
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %39, align 1
  store i64 %290, i64* %RDI.i182, align 8
  %315 = add i64 %255, -310457
  %316 = add i64 %255, 25
  %317 = load i64, i64* %6, align 8
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %316, i64* %319, align 8
  store i64 %318, i64* %6, align 8
  store i64 %315, i64* %3, align 8
  %call2_496a7d = tail call %struct.Memory* @sub_44adb0.owl_threaten_defense(%struct.State* nonnull %0, i64 %315, %struct.Memory* %MEMORY.0)
  %320 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i182, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -36
  %323 = load i32, i32* %EAX.i176, align 4
  %324 = add i64 %320, 5
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %322 to i32*
  store i32 %323, i32* %325, align 4
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, -44759
  %328 = add i64 %326, 5
  %329 = load i64, i64* %6, align 8
  %330 = add i64 %329, -8
  %331 = inttoptr i64 %330 to i64*
  store i64 %328, i64* %331, align 8
  store i64 %330, i64* %6, align 8
  store i64 %327, i64* %3, align 8
  %call2_496a87 = tail call %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* nonnull %0, i64 %327, %struct.Memory* %call2_496a7d)
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -36
  %334 = load i64, i64* %3, align 8
  %335 = add i64 %334, 3
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RDI.i182, align 8
  %339 = add i64 %334, 8036
  %340 = add i64 %334, 8
  %341 = load i64, i64* %6, align 8
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  store i64 %342, i64* %6, align 8
  store i64 %339, i64* %3, align 8
  %call2_496a8f = tail call %struct.Memory* @sub_4989f0.gtp_print_code(%struct.State* nonnull %0, i64 %339, %struct.Memory* %call2_496a87)
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -36
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 4
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %345 to i32*
  %349 = load i32, i32* %348, align 4
  store i8 0, i8* %14, align 1
  %350 = and i32 %349, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %355 = icmp eq i32 %349, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %30, align 1
  %357 = lshr i32 %349, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %359 = icmp ne i8 %358, 0
  %360 = or i1 %355, %359
  %.v19 = select i1 %360, i64 120, i64 10
  %361 = add i64 %346, %.v19
  store i64 %361, i64* %3, align 8
  br i1 %360, label %block_.L_496b0c, label %block_496a9e

block_496a9e:                                     ; preds = %block_.L_496a69
  store i64 ptrtoint (%G__0x57f240_type* @G__0x57f240 to i64), i64* %RDI.i182, align 8
  %AL.i85 = bitcast %union.anon* %58 to i8*
  store i8 0, i8* %AL.i85, align 1
  %362 = add i64 %361, -45150
  %363 = add i64 %361, 17
  %364 = load i64, i64* %6, align 8
  %365 = add i64 %364, -8
  %366 = inttoptr i64 %365 to i64*
  store i64 %363, i64* %366, align 8
  store i64 %365, i64* %6, align 8
  store i64 %362, i64* %3, align 8
  %call2_496aaa = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %362, %struct.Memory* %call2_496a8f)
  %367 = load i64, i64* %3, align 8
  store i64 20, i64* %RCX.i156, align 8
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -28
  %370 = add i64 %367, 8
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX.i163, align 8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %375 = sext i32 %372 to i64
  %376 = lshr i64 %375, 32
  store i64 %376, i64* %374, align 8
  %ECX.i72 = bitcast %union.anon* %141 to i32*
  %377 = add i64 %367, 11
  store i64 %377, i64* %3, align 8
  %378 = shl nuw i64 %376, 32
  %379 = or i64 %378, %373
  %380 = sdiv i64 %379, 20
  %381 = shl i64 %380, 32
  %382 = ashr exact i64 %381, 32
  %383 = icmp eq i64 %380, %382
  br i1 %383, label %386, label %384

; <label>:384:                                    ; preds = %block_496a9e
  %385 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %377, %struct.Memory* %call2_496aaa)
  %.pre4 = load i64, i64* %RAX.i163, align 8
  %.pre5 = load i64, i64* %3, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit73

; <label>:386:                                    ; preds = %block_496a9e
  %387 = srem i64 %379, 20
  %388 = and i64 %380, 4294967295
  store i64 %388, i64* %RAX.i163, align 8
  %389 = and i64 %387, 4294967295
  store i64 %389, i64* %RDX.i75, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit73

routine_idivl__ecx.exit73:                        ; preds = %386, %384
  %390 = phi i64 [ %.pre6, %384 ], [ %368, %386 ]
  %391 = phi i64 [ %.pre5, %384 ], [ %377, %386 ]
  %392 = phi i64 [ %.pre4, %384 ], [ %388, %386 ]
  %393 = phi %struct.Memory* [ %385, %384 ], [ %call2_496aaa, %386 ]
  %394 = trunc i64 %392 to i32
  %395 = add i32 %394, -1
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i163, align 8
  %397 = icmp eq i32 %394, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = and i32 %395, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i32 %395, %394
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %27, align 1
  %408 = icmp eq i32 %395, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %30, align 1
  %410 = lshr i32 %395, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %33, align 1
  %412 = lshr i32 %394, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %412
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %39, align 1
  %417 = add i64 %390, -28
  %418 = add i64 %391, 6
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RSI.i57, align 8
  %422 = add i64 %390, -40
  %423 = add i64 %391, 9
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 %395, i32* %424, align 4
  %ESI.i61 = bitcast %union.anon* %40 to i32*
  %425 = load i32, i32* %ESI.i61, align 4
  %426 = zext i32 %425 to i64
  %427 = load i64, i64* %3, align 8
  store i64 %426, i64* %RAX.i163, align 8
  %428 = sext i32 %425 to i64
  %429 = lshr i64 %428, 32
  store i64 %429, i64* %374, align 8
  %430 = load i32, i32* %ECX.i72, align 4
  %431 = add i64 %427, 5
  store i64 %431, i64* %3, align 8
  %432 = sext i32 %430 to i64
  %433 = shl nuw i64 %429, 32
  %434 = or i64 %433, %426
  %435 = sdiv i64 %434, %432
  %436 = shl i64 %435, 32
  %437 = ashr exact i64 %436, 32
  %438 = icmp eq i64 %435, %437
  br i1 %438, label %441, label %439

; <label>:439:                                    ; preds = %routine_idivl__ecx.exit73
  %440 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %431, %struct.Memory* %393)
  %.pre7 = load i64, i64* %RDX.i75, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit55

; <label>:441:                                    ; preds = %routine_idivl__ecx.exit73
  %442 = srem i64 %434, %432
  %443 = and i64 %435, 4294967295
  store i64 %443, i64* %RAX.i163, align 8
  %444 = and i64 %442, 4294967295
  store i64 %444, i64* %RDX.i75, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit55

routine_idivl__ecx.exit55:                        ; preds = %441, %439
  %445 = phi i64 [ %.pre8, %439 ], [ %431, %441 ]
  %446 = phi i64 [ %.pre7, %439 ], [ %444, %441 ]
  %447 = phi %struct.Memory* [ %440, %439 ], [ %393, %441 ]
  %448 = trunc i64 %446 to i32
  %449 = add i32 %448, -1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX.i75, align 8
  %451 = icmp eq i32 %448, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %449, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i32 %449, %448
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %27, align 1
  %462 = icmp eq i32 %449, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %30, align 1
  %464 = lshr i32 %449, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %33, align 1
  %466 = lshr i32 %448, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %39, align 1
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -40
  %473 = add i64 %445, 6
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RDI.i182, align 8
  store i64 %450, i64* %RSI.i57, align 8
  %477 = add i64 %445, -42984
  %478 = add i64 %445, 13
  %479 = load i64, i64* %6, align 8
  %480 = add i64 %479, -8
  %481 = inttoptr i64 %480 to i64*
  store i64 %478, i64* %481, align 8
  store i64 %480, i64* %6, align 8
  store i64 %477, i64* %3, align 8
  %call2_496ad0 = tail call %struct.Memory* @sub_48c2e0.gtp_print_vertex(%struct.State* nonnull %0, i64 %477, %struct.Memory* %447)
  %482 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57f240_type* @G__0x57f240 to i64), i64* %RDI.i182, align 8
  store i8 0, i8* %AL.i85, align 1
  %483 = add i64 %482, -45205
  %484 = add i64 %482, 17
  %485 = load i64, i64* %6, align 8
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %6, align 8
  store i64 %483, i64* %3, align 8
  %call2_496ae1 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %483, %struct.Memory* %call2_496ad0)
  %488 = load i64, i64* %3, align 8
  store i64 20, i64* %RCX.i156, align 8
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -32
  %491 = add i64 %488, 8
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX.i163, align 8
  %495 = sext i32 %493 to i64
  %496 = lshr i64 %495, 32
  store i64 %496, i64* %374, align 8
  %497 = add i64 %488, 11
  store i64 %497, i64* %3, align 8
  %498 = shl nuw i64 %496, 32
  %499 = or i64 %498, %494
  %500 = sdiv i64 %499, 20
  %501 = shl i64 %500, 32
  %502 = ashr exact i64 %501, 32
  %503 = icmp eq i64 %500, %502
  br i1 %503, label %506, label %504

; <label>:504:                                    ; preds = %routine_idivl__ecx.exit55
  %505 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %497, %struct.Memory* %call2_496ae1)
  %.pre9 = load i64, i64* %RAX.i163, align 8
  %.pre10 = load i64, i64* %3, align 8
  %.pre11 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit32

; <label>:506:                                    ; preds = %routine_idivl__ecx.exit55
  %507 = srem i64 %499, 20
  %508 = and i64 %500, 4294967295
  store i64 %508, i64* %RAX.i163, align 8
  %509 = and i64 %507, 4294967295
  store i64 %509, i64* %RDX.i75, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit32

routine_idivl__ecx.exit32:                        ; preds = %506, %504
  %510 = phi i64 [ %.pre11, %504 ], [ %489, %506 ]
  %511 = phi i64 [ %.pre10, %504 ], [ %497, %506 ]
  %512 = phi i64 [ %.pre9, %504 ], [ %508, %506 ]
  %513 = phi %struct.Memory* [ %505, %504 ], [ %call2_496ae1, %506 ]
  %514 = trunc i64 %512 to i32
  %515 = add i32 %514, -1
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX.i163, align 8
  %517 = icmp eq i32 %514, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %14, align 1
  %519 = and i32 %515, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %21, align 1
  %524 = xor i32 %515, %514
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %27, align 1
  %528 = icmp eq i32 %515, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %30, align 1
  %530 = lshr i32 %515, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %33, align 1
  %532 = lshr i32 %514, 31
  %533 = xor i32 %530, %532
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %537 = add i64 %510, -32
  %538 = add i64 %511, 6
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RSI.i57, align 8
  %542 = add i64 %510, -44
  %543 = add i64 %511, 9
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  store i32 %515, i32* %544, align 4
  %545 = load i32, i32* %ESI.i61, align 4
  %546 = zext i32 %545 to i64
  %547 = load i64, i64* %3, align 8
  store i64 %546, i64* %RAX.i163, align 8
  %548 = sext i32 %545 to i64
  %549 = lshr i64 %548, 32
  store i64 %549, i64* %374, align 8
  %550 = load i32, i32* %ECX.i72, align 4
  %551 = add i64 %547, 5
  store i64 %551, i64* %3, align 8
  %552 = sext i32 %550 to i64
  %553 = shl nuw i64 %549, 32
  %554 = or i64 %553, %546
  %555 = sdiv i64 %554, %552
  %556 = shl i64 %555, 32
  %557 = ashr exact i64 %556, 32
  %558 = icmp eq i64 %555, %557
  br i1 %558, label %561, label %559

; <label>:559:                                    ; preds = %routine_idivl__ecx.exit32
  %560 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %551, %struct.Memory* %513)
  %.pre12 = load i64, i64* %RDX.i75, align 8
  %.pre13 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:561:                                    ; preds = %routine_idivl__ecx.exit32
  %562 = srem i64 %554, %552
  %563 = and i64 %555, 4294967295
  store i64 %563, i64* %RAX.i163, align 8
  %564 = and i64 %562, 4294967295
  store i64 %564, i64* %RDX.i75, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %561, %559
  %565 = phi i64 [ %.pre13, %559 ], [ %551, %561 ]
  %566 = phi i64 [ %.pre12, %559 ], [ %564, %561 ]
  %567 = phi %struct.Memory* [ %560, %559 ], [ %513, %561 ]
  %568 = trunc i64 %566 to i32
  %569 = add i32 %568, -1
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RDX.i75, align 8
  %571 = icmp eq i32 %568, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %14, align 1
  %573 = and i32 %569, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %21, align 1
  %578 = xor i32 %569, %568
  %579 = lshr i32 %578, 4
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %27, align 1
  %582 = icmp eq i32 %569, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %30, align 1
  %584 = lshr i32 %569, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %33, align 1
  %586 = lshr i32 %568, 31
  %587 = xor i32 %584, %586
  %588 = add nuw nsw i32 %587, %586
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %39, align 1
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -44
  %593 = add i64 %565, 6
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RDI.i182, align 8
  store i64 %570, i64* %RSI.i57, align 8
  %597 = add i64 %565, -43039
  %598 = add i64 %565, 13
  %599 = load i64, i64* %6, align 8
  %600 = add i64 %599, -8
  %601 = inttoptr i64 %600 to i64*
  store i64 %598, i64* %601, align 8
  store i64 %600, i64* %6, align 8
  store i64 %597, i64* %3, align 8
  %call2_496b07 = tail call %struct.Memory* @sub_48c2e0.gtp_print_vertex(%struct.State* nonnull %0, i64 %597, %struct.Memory* %567)
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_496b0c

block_.L_496b0c:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_496a69
  %602 = phi i64 [ %361, %block_.L_496a69 ], [ %.pre14, %routine_idivl__ecx.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_496a8f, %block_.L_496a69 ], [ %call2_496b07, %routine_idivl__ecx.exit ]
  %603 = add i64 %602, -44764
  %604 = add i64 %602, 5
  %605 = load i64, i64* %6, align 8
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %607, align 8
  store i64 %606, i64* %6, align 8
  store i64 %603, i64* %3, align 8
  %call2_496b0c = tail call %struct.Memory* @sub_48bc30.gtp_finish_response(%struct.State* nonnull %0, i64 %603, %struct.Memory* %MEMORY.1)
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -4
  %610 = load i32, i32* %EAX.i176, align 4
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 3
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %609 to i32*
  store i32 %610, i32* %613, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_496b14

block_.L_496b14:                                  ; preds = %block_.L_496b0c, %block_496a1d, %block_4969e6
  %RAX.i.pre-phi = phi i64* [ %RAX.i163, %block_.L_496b0c ], [ %RAX.i163, %block_496a1d ], [ %.pre16, %block_4969e6 ]
  %614 = phi i64 [ %.pre15, %block_.L_496b0c ], [ %168, %block_496a1d ], [ %83, %block_4969e6 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_496b0c, %block_.L_496b0c ], [ %call2_496a29, %block_496a1d ], [ %call2_4969f2, %block_4969e6 ]
  %615 = load i64, i64* %RBP.i, align 8
  %616 = add i64 %615, -4
  %617 = add i64 %614, 3
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RAX.i.pre-phi, align 8
  %621 = load i64, i64* %6, align 8
  %622 = add i64 %621, 48
  store i64 %622, i64* %6, align 8
  %623 = icmp ugt i64 %621, -49
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %14, align 1
  %625 = trunc i64 %622 to i32
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  %631 = xor i64 %621, 16
  %632 = xor i64 %631, %622
  %633 = lshr i64 %632, 4
  %634 = trunc i64 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %27, align 1
  %636 = icmp eq i64 %622, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %30, align 1
  %638 = lshr i64 %622, 63
  %639 = trunc i64 %638 to i8
  store i8 %639, i8* %33, align 1
  %640 = lshr i64 %621, 63
  %641 = xor i64 %638, %640
  %642 = add nuw nsw i64 %641, %638
  %643 = icmp eq i64 %642, 2
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %39, align 1
  %645 = add i64 %614, 8
  store i64 %645, i64* %3, align 8
  %646 = add i64 %621, 56
  %647 = inttoptr i64 %622 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %RBP.i, align 8
  store i64 %646, i64* %6, align 8
  %649 = add i64 %614, 9
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %646 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %3, align 8
  %652 = add i64 %621, 64
  store i64 %652, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_decode_coord(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4969ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58714f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58714f_type* @G__0x58714f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_failure(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_496b14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_496a36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58777f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58777f_type* @G__0x58777f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.silent_examine_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_496a69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.reading_cache_clear(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.owl_threaten_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.gtp_start_response(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.gtp_print_code(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jle_.L_496b0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f240___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f240_type* @G__0x57f240 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_printf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_print_vertex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_callq_.gtp_finish_response(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
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
